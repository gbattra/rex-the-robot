//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.Roborex
{
    public class StartSystemRequest : Message
    {
        public const string RosMessageName = "roborex/StartSystem";

        public bool start;

        public StartSystemRequest()
        {
            this.start = false;
        }

        public StartSystemRequest(bool start)
        {
            this.start = start;
        }
        public override List<byte[]> SerializationStatements()
        {
            var listOfSerializations = new List<byte[]>();
            listOfSerializations.Add(BitConverter.GetBytes(this.start));

            return listOfSerializations;
        }

        public override int Deserialize(byte[] data, int offset)
        {
            this.start = BitConverter.ToBoolean(data, offset);
            offset += 1;

            return offset;
        }

        public override string ToString()
        {
            return "StartSystemRequest: " +
            "\nstart: " + start.ToString();
        }
    }
}
