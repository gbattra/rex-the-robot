// Auto-generated. Do not edit!

// (in-package roborex.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ArmPose = require('../msg/ArmPose.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class InverseKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.init_arm_pose = null;
      this.wrist_target = null;
      this.eff_target = null;
    }
    else {
      if (initObj.hasOwnProperty('init_arm_pose')) {
        this.init_arm_pose = initObj.init_arm_pose
      }
      else {
        this.init_arm_pose = new ArmPose();
      }
      if (initObj.hasOwnProperty('wrist_target')) {
        this.wrist_target = initObj.wrist_target
      }
      else {
        this.wrist_target = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('eff_target')) {
        this.eff_target = initObj.eff_target
      }
      else {
        this.eff_target = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsRequest
    // Serialize message field [init_arm_pose]
    bufferOffset = ArmPose.serialize(obj.init_arm_pose, buffer, bufferOffset);
    // Serialize message field [wrist_target]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.wrist_target, buffer, bufferOffset);
    // Serialize message field [eff_target]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.eff_target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsRequest
    let len;
    let data = new InverseKinematicsRequest(null);
    // Deserialize message field [init_arm_pose]
    data.init_arm_pose = ArmPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [wrist_target]
    data.wrist_target = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [eff_target]
    data.eff_target = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 472;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborex/InverseKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4140866b5a3a83d68264f18d4f2f7c78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmPose init_arm_pose
    geometry_msgs/Pose wrist_target
    geometry_msgs/Pose eff_target
    
    ================================================================================
    MSG: roborex/ArmPose
    JointState world_joint
    JointState base_joint
    JointState shoulder_joint
    JointState elbow_joint
    JointState wrist_joint
    JointState eff_joint
    JointState gripper_offset_joint
    JointState right_gripper_joint
    JointState left_gripper_joint
    ================================================================================
    MSG: roborex/JointState
    geometry_msgs/Point translation
    float32 angle
    float32 upper_bound
    float32 lower_bound
    int32 axis
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
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
    const resolved = new InverseKinematicsRequest(null);
    if (msg.init_arm_pose !== undefined) {
      resolved.init_arm_pose = ArmPose.Resolve(msg.init_arm_pose)
    }
    else {
      resolved.init_arm_pose = new ArmPose()
    }

    if (msg.wrist_target !== undefined) {
      resolved.wrist_target = geometry_msgs.msg.Pose.Resolve(msg.wrist_target)
    }
    else {
      resolved.wrist_target = new geometry_msgs.msg.Pose()
    }

    if (msg.eff_target !== undefined) {
      resolved.eff_target = geometry_msgs.msg.Pose.Resolve(msg.eff_target)
    }
    else {
      resolved.eff_target = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class InverseKinematicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_pose')) {
        this.arm_pose = initObj.arm_pose
      }
      else {
        this.arm_pose = new ArmPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsResponse
    // Serialize message field [arm_pose]
    bufferOffset = ArmPose.serialize(obj.arm_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsResponse
    let len;
    let data = new InverseKinematicsResponse(null);
    // Deserialize message field [arm_pose]
    data.arm_pose = ArmPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 360;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborex/InverseKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '422537529a33b8efa70e31bd2c9b1dcf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmPose arm_pose
    
    ================================================================================
    MSG: roborex/ArmPose
    JointState world_joint
    JointState base_joint
    JointState shoulder_joint
    JointState elbow_joint
    JointState wrist_joint
    JointState eff_joint
    JointState gripper_offset_joint
    JointState right_gripper_joint
    JointState left_gripper_joint
    ================================================================================
    MSG: roborex/JointState
    geometry_msgs/Point translation
    float32 angle
    float32 upper_bound
    float32 lower_bound
    int32 axis
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverseKinematicsResponse(null);
    if (msg.arm_pose !== undefined) {
      resolved.arm_pose = ArmPose.Resolve(msg.arm_pose)
    }
    else {
      resolved.arm_pose = new ArmPose()
    }

    return resolved;
    }
};

module.exports = {
  Request: InverseKinematicsRequest,
  Response: InverseKinematicsResponse,
  md5sum() { return 'c44e167c0184aca769254292f802c4b0'; },
  datatype() { return 'roborex/InverseKinematics'; }
};
