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

let Trajectory = require('../msg/Trajectory.js');

//-----------------------------------------------------------

class TrajectoryPlannerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_pose = null;
      this.target = null;
      this.gripper_offset = null;
      this.eff_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_pose')) {
        this.arm_pose = initObj.arm_pose
      }
      else {
        this.arm_pose = new ArmPose();
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('gripper_offset')) {
        this.gripper_offset = initObj.gripper_offset
      }
      else {
        this.gripper_offset = 0.0;
      }
      if (initObj.hasOwnProperty('eff_offset')) {
        this.eff_offset = initObj.eff_offset
      }
      else {
        this.eff_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPlannerRequest
    // Serialize message field [arm_pose]
    bufferOffset = ArmPose.serialize(obj.arm_pose, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [gripper_offset]
    bufferOffset = _serializer.float32(obj.gripper_offset, buffer, bufferOffset);
    // Serialize message field [eff_offset]
    bufferOffset = _serializer.float32(obj.eff_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPlannerRequest
    let len;
    let data = new TrajectoryPlannerRequest(null);
    // Deserialize message field [arm_pose]
    data.arm_pose = ArmPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [gripper_offset]
    data.gripper_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eff_offset]
    data.eff_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 306;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborex/TrajectoryPlannerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11abd7ff07e1b32ddf4046f6d912966a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmPose arm_pose
    geometry_msgs/Pose target
    float32 gripper_offset
    float32 eff_offset
    
    ================================================================================
    MSG: roborex/ArmPose
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
    const resolved = new TrajectoryPlannerRequest(null);
    if (msg.arm_pose !== undefined) {
      resolved.arm_pose = ArmPose.Resolve(msg.arm_pose)
    }
    else {
      resolved.arm_pose = new ArmPose()
    }

    if (msg.target !== undefined) {
      resolved.target = geometry_msgs.msg.Pose.Resolve(msg.target)
    }
    else {
      resolved.target = new geometry_msgs.msg.Pose()
    }

    if (msg.gripper_offset !== undefined) {
      resolved.gripper_offset = msg.gripper_offset;
    }
    else {
      resolved.gripper_offset = 0.0
    }

    if (msg.eff_offset !== undefined) {
      resolved.eff_offset = msg.eff_offset;
    }
    else {
      resolved.eff_offset = 0.0
    }

    return resolved;
    }
};

class TrajectoryPlannerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPlannerResponse
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPlannerResponse
    let len;
    let data = new TrajectoryPlannerResponse(null);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajectories.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborex/TrajectoryPlannerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6925e298eddcfe19023891d0737531cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Trajectory[] trajectories
    
    ================================================================================
    MSG: roborex/Trajectory
    ArmPose[] poses
    ================================================================================
    MSG: roborex/ArmPose
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
    const resolved = new TrajectoryPlannerResponse(null);
    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = Trajectory.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TrajectoryPlannerRequest,
  Response: TrajectoryPlannerResponse,
  md5sum() { return '4aa618f0a078989468a6ecb720f101da'; },
  datatype() { return 'roborex/TrajectoryPlanner'; }
};
