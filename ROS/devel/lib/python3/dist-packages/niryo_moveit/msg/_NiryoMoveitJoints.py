# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from niryo_moveit/NiryoMoveitJoints.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class NiryoMoveitJoints(genpy.Message):
  _md5sum = "eb9a754ca01417c49ae5e00219146bda"
  _type = "niryo_moveit/NiryoMoveitJoints"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 joint_00
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
"""
  __slots__ = ['joint_00','joint_01','joint_02','joint_03','joint_04','joint_05','pick_pose','place_pose']
  _slot_types = ['float64','float64','float64','float64','float64','float64','geometry_msgs/Pose','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joint_00,joint_01,joint_02,joint_03,joint_04,joint_05,pick_pose,place_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NiryoMoveitJoints, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.joint_00 is None:
        self.joint_00 = 0.
      if self.joint_01 is None:
        self.joint_01 = 0.
      if self.joint_02 is None:
        self.joint_02 = 0.
      if self.joint_03 is None:
        self.joint_03 = 0.
      if self.joint_04 is None:
        self.joint_04 = 0.
      if self.joint_05 is None:
        self.joint_05 = 0.
      if self.pick_pose is None:
        self.pick_pose = geometry_msgs.msg.Pose()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.Pose()
    else:
      self.joint_00 = 0.
      self.joint_01 = 0.
      self.joint_02 = 0.
      self.joint_03 = 0.
      self.joint_04 = 0.
      self.joint_05 = 0.
      self.pick_pose = geometry_msgs.msg.Pose()
      self.place_pose = geometry_msgs.msg.Pose()

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
      buff.write(_get_struct_20d().pack(_x.joint_00, _x.joint_01, _x.joint_02, _x.joint_03, _x.joint_04, _x.joint_05, _x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.pick_pose is None:
        self.pick_pose = geometry_msgs.msg.Pose()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 160
      (_x.joint_00, _x.joint_01, _x.joint_02, _x.joint_03, _x.joint_04, _x.joint_05, _x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w,) = _get_struct_20d().unpack(str[start:end])
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
      buff.write(_get_struct_20d().pack(_x.joint_00, _x.joint_01, _x.joint_02, _x.joint_03, _x.joint_04, _x.joint_05, _x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w))
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
      if self.pick_pose is None:
        self.pick_pose = geometry_msgs.msg.Pose()
      if self.place_pose is None:
        self.place_pose = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 160
      (_x.joint_00, _x.joint_01, _x.joint_02, _x.joint_03, _x.joint_04, _x.joint_05, _x.pick_pose.position.x, _x.pick_pose.position.y, _x.pick_pose.position.z, _x.pick_pose.orientation.x, _x.pick_pose.orientation.y, _x.pick_pose.orientation.z, _x.pick_pose.orientation.w, _x.place_pose.position.x, _x.place_pose.position.y, _x.place_pose.position.z, _x.place_pose.orientation.x, _x.place_pose.orientation.y, _x.place_pose.orientation.z, _x.place_pose.orientation.w,) = _get_struct_20d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_20d = None
def _get_struct_20d():
    global _struct_20d
    if _struct_20d is None:
        _struct_20d = struct.Struct("<20d")
    return _struct_20d
