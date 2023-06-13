// Auto-generated. Do not edit!

// (in-package control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EncoderData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.en_ext1 = null;
      this.en_ext2 = null;
      this.en_ext3 = null;
      this.en_in1 = null;
      this.en_in2 = null;
      this.en_in3 = null;
      this.en_in4 = null;
    }
    else {
      if (initObj.hasOwnProperty('en_ext1')) {
        this.en_ext1 = initObj.en_ext1
      }
      else {
        this.en_ext1 = 0.0;
      }
      if (initObj.hasOwnProperty('en_ext2')) {
        this.en_ext2 = initObj.en_ext2
      }
      else {
        this.en_ext2 = 0.0;
      }
      if (initObj.hasOwnProperty('en_ext3')) {
        this.en_ext3 = initObj.en_ext3
      }
      else {
        this.en_ext3 = 0.0;
      }
      if (initObj.hasOwnProperty('en_in1')) {
        this.en_in1 = initObj.en_in1
      }
      else {
        this.en_in1 = 0.0;
      }
      if (initObj.hasOwnProperty('en_in2')) {
        this.en_in2 = initObj.en_in2
      }
      else {
        this.en_in2 = 0.0;
      }
      if (initObj.hasOwnProperty('en_in3')) {
        this.en_in3 = initObj.en_in3
      }
      else {
        this.en_in3 = 0.0;
      }
      if (initObj.hasOwnProperty('en_in4')) {
        this.en_in4 = initObj.en_in4
      }
      else {
        this.en_in4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncoderData
    // Serialize message field [en_ext1]
    bufferOffset = _serializer.float32(obj.en_ext1, buffer, bufferOffset);
    // Serialize message field [en_ext2]
    bufferOffset = _serializer.float32(obj.en_ext2, buffer, bufferOffset);
    // Serialize message field [en_ext3]
    bufferOffset = _serializer.float32(obj.en_ext3, buffer, bufferOffset);
    // Serialize message field [en_in1]
    bufferOffset = _serializer.float32(obj.en_in1, buffer, bufferOffset);
    // Serialize message field [en_in2]
    bufferOffset = _serializer.float32(obj.en_in2, buffer, bufferOffset);
    // Serialize message field [en_in3]
    bufferOffset = _serializer.float32(obj.en_in3, buffer, bufferOffset);
    // Serialize message field [en_in4]
    bufferOffset = _serializer.float32(obj.en_in4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncoderData
    let len;
    let data = new EncoderData(null);
    // Deserialize message field [en_ext1]
    data.en_ext1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [en_ext2]
    data.en_ext2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [en_ext3]
    data.en_ext3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [en_in1]
    data.en_in1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [en_in2]
    data.en_in2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [en_in3]
    data.en_in3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [en_in4]
    data.en_in4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control/EncoderData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23ea1aec3b3aed5da94835b8bde1468c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 en_ext1
    float32 en_ext2
    float32 en_ext3
    float32 en_in1
    float32 en_in2
    float32 en_in3
    float32 en_in4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncoderData(null);
    if (msg.en_ext1 !== undefined) {
      resolved.en_ext1 = msg.en_ext1;
    }
    else {
      resolved.en_ext1 = 0.0
    }

    if (msg.en_ext2 !== undefined) {
      resolved.en_ext2 = msg.en_ext2;
    }
    else {
      resolved.en_ext2 = 0.0
    }

    if (msg.en_ext3 !== undefined) {
      resolved.en_ext3 = msg.en_ext3;
    }
    else {
      resolved.en_ext3 = 0.0
    }

    if (msg.en_in1 !== undefined) {
      resolved.en_in1 = msg.en_in1;
    }
    else {
      resolved.en_in1 = 0.0
    }

    if (msg.en_in2 !== undefined) {
      resolved.en_in2 = msg.en_in2;
    }
    else {
      resolved.en_in2 = 0.0
    }

    if (msg.en_in3 !== undefined) {
      resolved.en_in3 = msg.en_in3;
    }
    else {
      resolved.en_in3 = 0.0
    }

    if (msg.en_in4 !== undefined) {
      resolved.en_in4 = msg.en_in4;
    }
    else {
      resolved.en_in4 = 0.0
    }

    return resolved;
    }
};

module.exports = EncoderData;
