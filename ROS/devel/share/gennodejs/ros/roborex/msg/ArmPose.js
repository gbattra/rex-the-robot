// Auto-generated. Do not edit!

// (in-package roborex.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointState = require('./JointState.js');

//-----------------------------------------------------------

class ArmPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.world_joint = null;
      this.base_joint = null;
      this.shoulder_joint = null;
      this.elbow_joint = null;
      this.wrist_joint = null;
      this.eff_joint = null;
      this.right_gripper_joint = null;
      this.left_gripper_joint = null;
    }
    else {
      if (initObj.hasOwnProperty('world_joint')) {
        this.world_joint = initObj.world_joint
      }
      else {
        this.world_joint = new JointState();
      }
      if (initObj.hasOwnProperty('base_joint')) {
        this.base_joint = initObj.base_joint
      }
      else {
        this.base_joint = new JointState();
      }
      if (initObj.hasOwnProperty('shoulder_joint')) {
        this.shoulder_joint = initObj.shoulder_joint
      }
      else {
        this.shoulder_joint = new JointState();
      }
      if (initObj.hasOwnProperty('elbow_joint')) {
        this.elbow_joint = initObj.elbow_joint
      }
      else {
        this.elbow_joint = new JointState();
      }
      if (initObj.hasOwnProperty('wrist_joint')) {
        this.wrist_joint = initObj.wrist_joint
      }
      else {
        this.wrist_joint = new JointState();
      }
      if (initObj.hasOwnProperty('eff_joint')) {
        this.eff_joint = initObj.eff_joint
      }
      else {
        this.eff_joint = new JointState();
      }
      if (initObj.hasOwnProperty('right_gripper_joint')) {
        this.right_gripper_joint = initObj.right_gripper_joint
      }
      else {
        this.right_gripper_joint = false;
      }
      if (initObj.hasOwnProperty('left_gripper_joint')) {
        this.left_gripper_joint = initObj.left_gripper_joint
      }
      else {
        this.left_gripper_joint = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmPose
    // Serialize message field [world_joint]
    bufferOffset = JointState.serialize(obj.world_joint, buffer, bufferOffset);
    // Serialize message field [base_joint]
    bufferOffset = JointState.serialize(obj.base_joint, buffer, bufferOffset);
    // Serialize message field [shoulder_joint]
    bufferOffset = JointState.serialize(obj.shoulder_joint, buffer, bufferOffset);
    // Serialize message field [elbow_joint]
    bufferOffset = JointState.serialize(obj.elbow_joint, buffer, bufferOffset);
    // Serialize message field [wrist_joint]
    bufferOffset = JointState.serialize(obj.wrist_joint, buffer, bufferOffset);
    // Serialize message field [eff_joint]
    bufferOffset = JointState.serialize(obj.eff_joint, buffer, bufferOffset);
    // Serialize message field [right_gripper_joint]
    bufferOffset = _serializer.bool(obj.right_gripper_joint, buffer, bufferOffset);
    // Serialize message field [left_gripper_joint]
    bufferOffset = _serializer.bool(obj.left_gripper_joint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmPose
    let len;
    let data = new ArmPose(null);
    // Deserialize message field [world_joint]
    data.world_joint = JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_joint]
    data.base_joint = JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [shoulder_joint]
    data.shoulder_joint = JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [elbow_joint]
    data.elbow_joint = JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [wrist_joint]
    data.wrist_joint = JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [eff_joint]
    data.eff_joint = JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_gripper_joint]
    data.right_gripper_joint = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_gripper_joint]
    data.left_gripper_joint = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 242;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborex/ArmPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55be2a66674559ab0f6efa20a2ea72ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    JointState world_joint
    JointState base_joint
    JointState shoulder_joint
    JointState elbow_joint
    JointState wrist_joint
    JointState eff_joint
    bool right_gripper_joint
    bool left_gripper_joint
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
    const resolved = new ArmPose(null);
    if (msg.world_joint !== undefined) {
      resolved.world_joint = JointState.Resolve(msg.world_joint)
    }
    else {
      resolved.world_joint = new JointState()
    }

    if (msg.base_joint !== undefined) {
      resolved.base_joint = JointState.Resolve(msg.base_joint)
    }
    else {
      resolved.base_joint = new JointState()
    }

    if (msg.shoulder_joint !== undefined) {
      resolved.shoulder_joint = JointState.Resolve(msg.shoulder_joint)
    }
    else {
      resolved.shoulder_joint = new JointState()
    }

    if (msg.elbow_joint !== undefined) {
      resolved.elbow_joint = JointState.Resolve(msg.elbow_joint)
    }
    else {
      resolved.elbow_joint = new JointState()
    }

    if (msg.wrist_joint !== undefined) {
      resolved.wrist_joint = JointState.Resolve(msg.wrist_joint)
    }
    else {
      resolved.wrist_joint = new JointState()
    }

    if (msg.eff_joint !== undefined) {
      resolved.eff_joint = JointState.Resolve(msg.eff_joint)
    }
    else {
      resolved.eff_joint = new JointState()
    }

    if (msg.right_gripper_joint !== undefined) {
      resolved.right_gripper_joint = msg.right_gripper_joint;
    }
    else {
      resolved.right_gripper_joint = false
    }

    if (msg.left_gripper_joint !== undefined) {
      resolved.left_gripper_joint = msg.left_gripper_joint;
    }
    else {
      resolved.left_gripper_joint = false
    }

    return resolved;
    }
};

module.exports = ArmPose;
