using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MobileBaseController : MonoBehaviour
{
    public float velocityCmd;
    public float angleCmd;
    public bool heuristic = true;
    public bool collided;
    
    private float _horizontalInput;
    private float _verticalInput;
    private float _steeringAngle;
    private float _brakeForce;

    [SerializeField] public float maxSteerAngle = 30;
    [SerializeField] public float motorForce = 10;
    [SerializeField] public float brakeForce = 10;

    [SerializeField] private WheelCollider frontLeftWheelC;
    [SerializeField] private WheelCollider frontRightWheelC;
    [SerializeField] private WheelCollider backLeftWheelC;
    [SerializeField] private WheelCollider backRightWheelC;

    [SerializeField] private Transform frontLeftWheelT;
    [SerializeField] private Transform frontRightWheelT;
    [SerializeField] private Transform backLeftWheelT;
    [SerializeField] private Transform backRightWheelT;

    public void Update()
    {
        GetInput();
        if (velocityCmd == 0)
        {
            _brakeForce = brakeForce;
        }
        else
        {
            _brakeForce = 0;
        }
    }

    public void FixedUpdate()
    {
        if (heuristic)
        {
            SteerHeuristic();
            AccelerateHeuristic();
        }
        else
        {
            SteerCmdVel();
            AccelerateCmdVel();
            BrakeCmdVel();
        }
        UpdateWheelPoses();
    }

    private void GetInput()
    {
        _horizontalInput = Input.GetAxis("Horizontal");
        _verticalInput = Input.GetAxis("Vertical");
    }

    private void SteerCmdVel()
    {
        frontLeftWheelC.steerAngle = Mathf.Clamp(-angleCmd, -maxSteerAngle, maxSteerAngle);
        frontRightWheelC.steerAngle = Mathf.Clamp(-angleCmd, -maxSteerAngle, maxSteerAngle);
    }

    private void AccelerateCmdVel()
    {
        frontLeftWheelC.motorTorque = motorForce * Mathf.Clamp(velocityCmd, 0f, 1f) * Time.deltaTime;
        backLeftWheelC.motorTorque = motorForce * Mathf.Clamp(velocityCmd, 0f, 1f) * Time.deltaTime;
        frontRightWheelC.motorTorque = motorForce * Mathf.Clamp(velocityCmd, 0f, 1f) * Time.deltaTime;
        backRightWheelC.motorTorque = motorForce * Mathf.Clamp(velocityCmd, 0f, 1f) * Time.deltaTime;
    }

    private void BrakeCmdVel()
    {
        frontLeftWheelC.brakeTorque = _brakeForce * Time.deltaTime;
        backLeftWheelC.brakeTorque = _brakeForce * Time.deltaTime;
        frontRightWheelC.brakeTorque = _brakeForce * Time.deltaTime;
        backRightWheelC.brakeTorque = _brakeForce * Time.deltaTime;
    }

    private void SteerHeuristic()
    {
        _steeringAngle = maxSteerAngle * _horizontalInput;
        frontLeftWheelC.steerAngle = _steeringAngle;
        frontRightWheelC.steerAngle = _steeringAngle;
    }

    private void AccelerateHeuristic()
    {
        frontLeftWheelC.motorTorque = motorForce * _verticalInput * Time.deltaTime;
        backLeftWheelC.motorTorque = motorForce * _verticalInput * Time.deltaTime;
        frontRightWheelC.motorTorque = motorForce * _verticalInput * Time.deltaTime;
        backRightWheelC.motorTorque = motorForce * _verticalInput * Time.deltaTime;
    }

    private void UpdateWheelPoses()
    {
        UpdateWheelPose(frontLeftWheelC, frontLeftWheelT);
        UpdateWheelPose(frontRightWheelC, frontRightWheelT);
        UpdateWheelPose(backLeftWheelC, backLeftWheelT);
        UpdateWheelPose(backRightWheelC, backRightWheelT);
    }

    private void UpdateWheelPose(WheelCollider col, Transform trfm)
    {
        Vector3 pos = trfm.position;
        Quaternion quat = trfm.rotation;
        
        col.GetWorldPose(out pos, out quat);
        trfm.rotation = quat;
    }

    public void OnCollisionEnter(Collision other)
    {
        if (other.collider.CompareTag("Wall") || other.collider.CompareTag("dropbox"))
            collided = true;
    }
}
