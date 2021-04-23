// Auto-generated. Do not edit!

// (in-package roborex.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartSystemRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartSystemRequest
    // Serialize message field [start]
    bufferOffset = _serializer.bool(obj.start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartSystemRequest
    let len;
    let data = new StartSystemRequest(null);
    // Deserialize message field [start]
    data.start = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborex/StartSystemRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '676aa7bfb3ec2071e814f2368dfd5fb5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartSystemRequest(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = false
    }

    return resolved;
    }
};

class StartSystemResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.succeeded = null;
    }
    else {
      if (initObj.hasOwnProperty('succeeded')) {
        this.succeeded = initObj.succeeded
      }
      else {
        this.succeeded = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartSystemResponse
    // Serialize message field [succeeded]
    bufferOffset = _serializer.bool(obj.succeeded, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartSystemResponse
    let len;
    let data = new StartSystemResponse(null);
    // Deserialize message field [succeeded]
    data.succeeded = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roborex/StartSystemResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95e696a0d10686913abb262e0b4cbbcf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool succeeded
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartSystemResponse(null);
    if (msg.succeeded !== undefined) {
      resolved.succeeded = msg.succeeded;
    }
    else {
      resolved.succeeded = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StartSystemRequest,
  Response: StartSystemResponse,
  md5sum() { return 'fef68d53bc3842fbc6d3b74baf134cd5'; },
  datatype() { return 'roborex/StartSystem'; }
};
