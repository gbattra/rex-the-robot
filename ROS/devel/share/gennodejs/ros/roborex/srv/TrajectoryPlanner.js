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
      this.grasp_trajectory = null;
      this.release_trajectory = null;
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
      if (initObj.hasOwnProperty('grasp_trajectory')) {
        this.grasp_trajectory = initObj.grasp_trajectory
      }
      else {
        this.grasp_trajectory = false;
      }
      if (initObj.hasOwnProperty('release_trajectory')) {
        this.release_trajectory = initObj.release_trajectory
      }
      else {
        this.release_trajectory = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPlannerRequest
    // Serialize message field [arm_pose]
    bufferOffset = ArmPose.serialize(obj.arm_pose, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [grasp_trajectory]
    bufferOffset = _serializer.bool(obj.grasp_trajectory, buffer, bufferOffset);
    // Serialize message field [release_trajectory]
    bufferOffset = _serializer.bool(obj.release_trajectory, buffer, bufferOffset);
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
    // Deserialize message field [grasp_trajectory]
    data.grasp_trajectory = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [release_trajectory]
    data.release_trajectory = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 418;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborex/TrajectoryPlannerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bac259c1bc1ea5c349be865d7f376a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmPose arm_pose
    geometry_msgs/Pose target
    bool grasp_trajectory
    bool release_trajectory
    
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

    if (msg.grasp_trajectory !== undefined) {
      resolved.grasp_trajectory = msg.grasp_trajectory;
    }
    else {
      resolved.grasp_trajectory = false
    }

    if (msg.release_trajectory !== undefined) {
      resolved.release_trajectory = msg.release_trajectory;
    }
    else {
      resolved.release_trajectory = false
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
    return '8815e9c3c7e5428d6d83e942eb0b7216';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Trajectory[] trajectories
    
    ================================================================================
    MSG: roborex/Trajectory
    ArmPose[] poses
    int32 id
    
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
  md5sum() { return '367c998270ed8c4c22d2346f6cade297'; },
  datatype() { return 'roborex/TrajectoryPlanner'; }
};
