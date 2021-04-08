// Auto-generated. Do not edit!

// (in-package niryo_moveit.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NiryoMoveitJoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_00 = null;
      this.joint_01 = null;
      this.joint_02 = null;
      this.joint_03 = null;
      this.joint_04 = null;
      this.joint_05 = null;
      this.pick_pose = null;
      this.place_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_00')) {
        this.joint_00 = initObj.joint_00
      }
      else {
        this.joint_00 = 0.0;
      }
      if (initObj.hasOwnProperty('joint_01')) {
        this.joint_01 = initObj.joint_01
      }
      else {
        this.joint_01 = 0.0;
      }
      if (initObj.hasOwnProperty('joint_02')) {
        this.joint_02 = initObj.joint_02
      }
      else {
        this.joint_02 = 0.0;
      }
      if (initObj.hasOwnProperty('joint_03')) {
        this.joint_03 = initObj.joint_03
      }
      else {
        this.joint_03 = 0.0;
      }
      if (initObj.hasOwnProperty('joint_04')) {
        this.joint_04 = initObj.joint_04
      }
      else {
        this.joint_04 = 0.0;
      }
      if (initObj.hasOwnProperty('joint_05')) {
        this.joint_05 = initObj.joint_05
      }
      else {
        this.joint_05 = 0.0;
      }
      if (initObj.hasOwnProperty('pick_pose')) {
        this.pick_pose = initObj.pick_pose
      }
      else {
        this.pick_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('place_pose')) {
        this.place_pose = initObj.place_pose
      }
      else {
        this.place_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NiryoMoveitJoints
    // Serialize message field [joint_00]
    bufferOffset = _serializer.float64(obj.joint_00, buffer, bufferOffset);
    // Serialize message field [joint_01]
    bufferOffset = _serializer.float64(obj.joint_01, buffer, bufferOffset);
    // Serialize message field [joint_02]
    bufferOffset = _serializer.float64(obj.joint_02, buffer, bufferOffset);
    // Serialize message field [joint_03]
    bufferOffset = _serializer.float64(obj.joint_03, buffer, bufferOffset);
    // Serialize message field [joint_04]
    bufferOffset = _serializer.float64(obj.joint_04, buffer, bufferOffset);
    // Serialize message field [joint_05]
    bufferOffset = _serializer.float64(obj.joint_05, buffer, bufferOffset);
    // Serialize message field [pick_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pick_pose, buffer, bufferOffset);
    // Serialize message field [place_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.place_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NiryoMoveitJoints
    let len;
    let data = new NiryoMoveitJoints(null);
    // Deserialize message field [joint_00]
    data.joint_00 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_01]
    data.joint_01 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_02]
    data.joint_02 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_03]
    data.joint_03 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_04]
    data.joint_04 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint_05]
    data.joint_05 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pick_pose]
    data.pick_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [place_pose]
    data.place_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 160;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_moveit/NiryoMoveitJoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb9a754ca01417c49ae5e00219146bda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 joint_00
    float64 joint_01
    float64 joint_02
    float64 joint_03
    float64 joint_04
    float64 joint_05
    geometry_msgs/Pose pick_pose
    geometry_msgs/Pose place_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NiryoMoveitJoints(null);
    if (msg.joint_00 !== undefined) {
      resolved.joint_00 = msg.joint_00;
    }
    else {
      resolved.joint_00 = 0.0
    }

    if (msg.joint_01 !== undefined) {
      resolved.joint_01 = msg.joint_01;
    }
    else {
      resolved.joint_01 = 0.0
    }

    if (msg.joint_02 !== undefined) {
      resolved.joint_02 = msg.joint_02;
    }
    else {
      resolved.joint_02 = 0.0
    }

    if (msg.joint_03 !== undefined) {
      resolved.joint_03 = msg.joint_03;
    }
    else {
      resolved.joint_03 = 0.0
    }

    if (msg.joint_04 !== undefined) {
      resolved.joint_04 = msg.joint_04;
    }
    else {
      resolved.joint_04 = 0.0
    }

    if (msg.joint_05 !== undefined) {
      resolved.joint_05 = msg.joint_05;
    }
    else {
      resolved.joint_05 = 0.0
    }

    if (msg.pick_pose !== undefined) {
      resolved.pick_pose = geometry_msgs.msg.Pose.Resolve(msg.pick_pose)
    }
    else {
      resolved.pick_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.place_pose !== undefined) {
      resolved.place_pose = geometry_msgs.msg.Pose.Resolve(msg.place_pose)
    }
    else {
      resolved.place_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = NiryoMoveitJoints;
