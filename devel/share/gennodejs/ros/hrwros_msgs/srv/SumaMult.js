// Auto-generated. Do not edit!

// (in-package hrwros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SumaMultRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = 0.0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SumaMultRequest
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float64(obj.b, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = _serializer.float64(obj.c, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float64(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SumaMultRequest
    let len;
    let data = new SumaMultRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/SumaMultRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5c1b8d0c23e6e29f5d8d9fbdb957dac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 a		
    float64 b
    float64 c
    float64 d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SumaMultRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = 0.0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    return resolved;
    }
};

class SumaMultResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.suma = null;
      this.mult = null;
    }
    else {
      if (initObj.hasOwnProperty('suma')) {
        this.suma = initObj.suma
      }
      else {
        this.suma = 0.0;
      }
      if (initObj.hasOwnProperty('mult')) {
        this.mult = initObj.mult
      }
      else {
        this.mult = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SumaMultResponse
    // Serialize message field [suma]
    bufferOffset = _serializer.float64(obj.suma, buffer, bufferOffset);
    // Serialize message field [mult]
    bufferOffset = _serializer.float64(obj.mult, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SumaMultResponse
    let len;
    let data = new SumaMultResponse(null);
    // Deserialize message field [suma]
    data.suma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mult]
    data.mult = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hrwros_msgs/SumaMultResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '875f0fb7e775efc0969a3d1a2fe732ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 suma	
    float64 mult
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SumaMultResponse(null);
    if (msg.suma !== undefined) {
      resolved.suma = msg.suma;
    }
    else {
      resolved.suma = 0.0
    }

    if (msg.mult !== undefined) {
      resolved.mult = msg.mult;
    }
    else {
      resolved.mult = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SumaMultRequest,
  Response: SumaMultResponse,
  md5sum() { return 'e9e24fd947294769c45ffd94755c4345'; },
  datatype() { return 'hrwros_msgs/SumaMult'; }
};
