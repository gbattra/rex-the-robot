//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Roborex
{
    public class InverseKinematicsRequest : Message
    {
        public const string RosMessageName = "roborex/InverseKinematics";

        public ArmPose init_arm_pose;
        public Geometry.Pose wrist_target;
        public Geometry.Pose eff_target;

        public InverseKinematicsRequest()
        {
            this.init_arm_pose = new ArmPose();
            this.wrist_target = new Geometry.Pose();
            this.eff_target = new Geometry.Pose();
        }

        public InverseKinematicsRequest(ArmPose init_arm_pose, Geometry.Pose wrist_target, Geometry.Pose eff_target)
        {
            this.init_arm_pose = init_arm_pose;
            this.wrist_target = wrist_target;
            this.eff_target = eff_target;
        }
        public override List<byte[]> SerializationStatements()
        {
            var listOfSerializations = new List<byte[]>();
            listOfSerializations.AddRange(init_arm_pose.SerializationStatements());
            listOfSerializations.AddRange(wrist_target.SerializationStatements());
            listOfSerializations.AddRange(eff_target.SerializationStatements());

            return listOfSerializations;
        }

        public override int Deserialize(byte[] data, int offset)
        {
            offset = this.init_arm_pose.Deserialize(data, offset);
            offset = this.wrist_target.Deserialize(data, offset);
            offset = this.eff_target.Deserialize(data, offset);

            return offset;
        }

        public override string ToString()
        {
            return "InverseKinematicsRequest: " +
            "\ninit_arm_pose: " + init_arm_pose.ToString() +
            "\nwrist_target: " + wrist_target.ToString() +
            "\neff_target: " + eff_target.ToString();
        }
    }
}
