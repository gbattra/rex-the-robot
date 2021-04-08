// Auto-generated. Do not edit!

// (in-package roborex.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class JointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.translation = null;
      this.angle = null;
      this.upper_bound = null;
      this.lower_bound = null;
      this.axis = null;
    }
    else {
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('upper_bound')) {
        this.upper_bound = initObj.upper_bound
      }
      else {
        this.upper_bound = 0.0;
      }
      if (initObj.hasOwnProperty('lower_bound')) {
        this.lower_bound = initObj.lower_bound
      }
      else {
        this.lower_bound = 0.0;
      }
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointState
    // Serialize message field [translation]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.translation, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [upper_bound]
    bufferOffset = _serializer.float32(obj.upper_bound, buffer, bufferOffset);
    // Serialize message field [lower_bound]
    bufferOffset = _serializer.float32(obj.lower_bound, buffer, bufferOffset);
    // Serialize message field [axis]
    bufferOffset = _serializer.int32(obj.axis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointState
    let len;
    let data = new JointState(null);
    // Deserialize message field [translation]
    data.translation = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [upper_bound]
    data.upper_bound = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lower_bound]
    data.lower_bound = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [axis]
    data.axis = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roborex/JointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b23171072f01fcca9054b0dc16f96450';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new JointState(null);
    if (msg.translation !== undefined) {
      resolved.translation = geometry_msgs.msg.Point.Resolve(msg.translation)
    }
    else {
      resolved.translation = new geometry_msgs.msg.Point()
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.upper_bound !== undefined) {
      resolved.upper_bound = msg.upper_bound;
    }
    else {
      resolved.upper_bound = 0.0
    }

    if (msg.lower_bound !== undefined) {
      resolved.lower_bound = msg.lower_bound;
    }
    else {
      resolved.lower_bound = 0.0
    }

    if (msg.axis !== undefined) {
      resolved.axis = msg.axis;
    }
    else {
      resolved.axis = 0
    }

    return resolved;
    }
};

module.exports = JointState;
