//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Roborex
{
    public class BasePose : Message
    {
        public const string RosMessageName = "roborex/BasePose";

        public float x;
        public float y;
        public float z;
        public float angle;

        public BasePose()
        {
            this.x = 0.0f;
            this.y = 0.0f;
            this.z = 0.0f;
            this.angle = 0.0f;
        }

        public BasePose(float x, float y, float z, float angle)
        {
            this.x = x;
            this.y = y;
            this.z = z;
            this.angle = angle;
        }
        public override List<byte[]> SerializationStatements()
        {
            var listOfSerializations = new List<byte[]>();
            listOfSerializations.Add(BitConverter.GetBytes(this.x));
            listOfSerializations.Add(BitConverter.GetBytes(this.y));
            listOfSerializations.Add(BitConverter.GetBytes(this.z));
            listOfSerializations.Add(BitConverter.GetBytes(this.angle));

            return listOfSerializations;
        }

        public override int Deserialize(byte[] data, int offset)
        {
            this.x = BitConverter.ToSingle(data, offset);
            offset += 4;
            this.y = BitConverter.ToSingle(data, offset);
            offset += 4;
            this.z = BitConverter.ToSingle(data, offset);
            offset += 4;
            this.angle = BitConverter.ToSingle(data, offset);
            offset += 4;

            return offset;
        }

        public override string ToString()
        {
            return "BasePose: " +
            "\nx: " + x.ToString() +
            "\ny: " + y.ToString() +
            "\nz: " + z.ToString() +
            "\nangle: " + angle.ToString();
        }
    }
}
