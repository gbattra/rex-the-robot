using System;
using System.Collections;
using System.Collections.Generic;
using Unity.MLAgents;
using Unity.MLAgents.Sensors;
using UnityEngine;
using Random = UnityEngine.Random;

public class MobileBaseAgent : Agent
{
    [SerializeField] private GameObject target;
    [SerializeField] private Rigidbody rb;
    [SerializeField] private MobileBaseController mobileBaseController;
    [SerializeField] private GameObject mobileBase;

    private float _startDistance;
    private float _distance;
    private float _timeElapsed;
    private float _timeout = 15.0f;
    private float _threshold = 1.0f;
    private float _reward = 0.0f;

    public override void OnEpisodeBegin()
    {
        _reward = 0.0f;
        _timeElapsed = 0.0f;
        _distance = 0.0f;
        mobileBaseController.collided = false;
        target.transform.localPosition = new Vector3(
            Random.Range(-4.0f, 2.5f),
            0.2f,
            Random.Range(-4.0f, 2.5f));
        mobileBase.transform.localPosition = new Vector3(
            Random.Range(-4.0f, 2.5f),
            0.4f,
            Random.Range(-4.0f, 2.5f));
        
        var mRot = mobileBase.transform.localRotation;
        mRot.y = Random.rotation.y;
        mobileBase.transform.localRotation = mRot;
        
        rb.velocity = Vector3.zero;

        _startDistance = Mathf.Abs(Vector3.Distance(mobileBase.transform.localPosition, target.transform.localPosition));
    }

    public override void CollectObservations(VectorSensor sensor)
    {
        Vector3 mpos = mobileBase.transform.localPosition;
        Vector3 tpos = target.transform.localPosition;
        float angleTarget = Mathf.Atan2(tpos.z - mpos.z, tpos.x - mpos.x);
        
        Vector3 pos_d = mpos + mobileBase.transform.forward.normalized;
        float angleMobileBase = Mathf.Atan2(pos_d.z - mpos.z, pos_d.x - mpos.x);
        
        var dist = Vector3.Distance(mobileBase.transform.localPosition, target.transform.localPosition);
        
        sensor.AddObservation(mpos);
        sensor.AddObservation(tpos);
        sensor.AddObservation(angleMobileBase);
        sensor.AddObservation(angleTarget);
        sensor.AddObservation(dist);
    }

    public override void OnActionReceived(float[] vectorAction)
    {
        var velocityCmd = vectorAction[0];
        var angleCmd = vectorAction[1];
        mobileBaseController.angleCmd = angleCmd * mobileBaseController.maxSteerAngle;
        mobileBaseController.velocityCmd = velocityCmd;

        if (mobileBaseController.collided)
        {
            EndEpisode();
        }

        _distance = Mathf.Abs(Vector3.Distance(mobileBase.transform.localPosition, target.transform.localPosition));
        if (_distance <= _threshold)
        {
            SetReward(1.0f);
            EndEpisode();
        }

        _timeElapsed += Time.deltaTime;
        if (_timeElapsed > _timeout)
        {
            EndEpisode();
        }
    }
}
