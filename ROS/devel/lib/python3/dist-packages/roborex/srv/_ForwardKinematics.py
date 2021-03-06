# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roborex/ForwardKinematicsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import roborex.msg

class ForwardKinematicsRequest(genpy.Message):
  _md5sum = "4bd8ee6fdb9197be2ea12b6fefb0462c"
  _type = "roborex/ForwardKinematicsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """JointState[] joints

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
"""
  __slots__ = ['joints']
  _slot_types = ['roborex/JointState[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joints

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ForwardKinematicsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.joints is None:
        self.joints = []
    else:
      self.joints = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.joints)
      buff.write(_struct_I.pack(length))
      for val1 in self.joints:
        _v1 = val1.translation
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3fi().pack(_x.angle, _x.upper_bound, _x.lower_bound, _x.axis))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.joints is None:
        self.joints = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joints = []
      for i in range(0, length):
        val1 = roborex.msg.JointState()
        _v2 = val1.translation
        _x = _v2
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 16
        (_x.angle, _x.upper_bound, _x.lower_bound, _x.axis,) = _get_struct_3fi().unpack(str[start:end])
        self.joints.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.joints)
      buff.write(_struct_I.pack(length))
      for val1 in self.joints:
        _v3 = val1.translation
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1
        buff.write(_get_struct_3fi().pack(_x.angle, _x.upper_bound, _x.lower_bound, _x.axis))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.joints is None:
        self.joints = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joints = []
      for i in range(0, length):
        val1 = roborex.msg.JointState()
        _v4 = val1.translation
        _x = _v4
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _x = val1
        start = end
        end += 16
        (_x.angle, _x.upper_bound, _x.lower_bound, _x.axis,) = _get_struct_3fi().unpack(str[start:end])
        self.joints.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3fi = None
def _get_struct_3fi():
    global _struct_3fi
    if _struct_3fi is None:
        _struct_3fi = struct.Struct("<3fi")
    return _struct_3fi
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roborex/ForwardKinematicsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class ForwardKinematicsResponse(genpy.Message):
  _md5sum = "f4b4e41b93b97f9307dacbb0795153e4"
  _type = "roborex/ForwardKinematicsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Pose target

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
"""
  __slots__ = ['target']
  _slot_types = ['geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       target

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ForwardKinematicsResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.target is None:
        self.target = geometry_msgs.msg.Pose()
    else:
      self.target = geometry_msgs.msg.Pose()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_7d().pack(_x.target.position.x, _x.target.position.y, _x.target.position.z, _x.target.orientation.x, _x.target.orientation.y, _x.target.orientation.z, _x.target.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.target is None:
        self.target = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.target.position.x, _x.target.position.y, _x.target.position.z, _x.target.orientation.x, _x.target.orientation.y, _x.target.orientation.z, _x.target.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7d().pack(_x.target.position.x, _x.target.position.y, _x.target.position.z, _x.target.orientation.x, _x.target.orientation.y, _x.target.orientation.z, _x.target.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.target is None:
        self.target = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.target.position.x, _x.target.position.y, _x.target.position.z, _x.target.orientation.x, _x.target.orientation.y, _x.target.orientation.z, _x.target.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
class ForwardKinematics(object):
  _type          = 'roborex/ForwardKinematics'
  _md5sum = 'f0117f65ce6a9862c9734b997e4a7382'
  _request_class  = ForwardKinematicsRequest
  _response_class = ForwardKinematicsResponse
