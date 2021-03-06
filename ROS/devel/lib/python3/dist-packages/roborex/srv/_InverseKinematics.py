# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roborex/InverseKinematicsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import roborex.msg

class InverseKinematicsRequest(genpy.Message):
  _md5sum = "4140866b5a3a83d68264f18d4f2f7c78"
  _type = "roborex/InverseKinematicsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """ArmPose init_arm_pose
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
"""
  __slots__ = ['init_arm_pose','wrist_target','eff_target']
  _slot_types = ['roborex/ArmPose','geometry_msgs/Pose','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       init_arm_pose,wrist_target,eff_target

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InverseKinematicsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.init_arm_pose is None:
        self.init_arm_pose = roborex.msg.ArmPose()
      if self.wrist_target is None:
        self.wrist_target = geometry_msgs.msg.Pose()
      if self.eff_target is None:
        self.eff_target = geometry_msgs.msg.Pose()
    else:
      self.init_arm_pose = roborex.msg.ArmPose()
      self.wrist_target = geometry_msgs.msg.Pose()
      self.eff_target = geometry_msgs.msg.Pose()

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
      buff.write(_get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d().pack(_x.init_arm_pose.world_joint.translation.x, _x.init_arm_pose.world_joint.translation.y, _x.init_arm_pose.world_joint.translation.z, _x.init_arm_pose.world_joint.angle, _x.init_arm_pose.world_joint.upper_bound, _x.init_arm_pose.world_joint.lower_bound, _x.init_arm_pose.world_joint.axis, _x.init_arm_pose.base_joint.translation.x, _x.init_arm_pose.base_joint.translation.y, _x.init_arm_pose.base_joint.translation.z, _x.init_arm_pose.base_joint.angle, _x.init_arm_pose.base_joint.upper_bound, _x.init_arm_pose.base_joint.lower_bound, _x.init_arm_pose.base_joint.axis, _x.init_arm_pose.shoulder_joint.translation.x, _x.init_arm_pose.shoulder_joint.translation.y, _x.init_arm_pose.shoulder_joint.translation.z, _x.init_arm_pose.shoulder_joint.angle, _x.init_arm_pose.shoulder_joint.upper_bound, _x.init_arm_pose.shoulder_joint.lower_bound, _x.init_arm_pose.shoulder_joint.axis, _x.init_arm_pose.elbow_joint.translation.x, _x.init_arm_pose.elbow_joint.translation.y, _x.init_arm_pose.elbow_joint.translation.z, _x.init_arm_pose.elbow_joint.angle, _x.init_arm_pose.elbow_joint.upper_bound, _x.init_arm_pose.elbow_joint.lower_bound, _x.init_arm_pose.elbow_joint.axis, _x.init_arm_pose.wrist_joint.translation.x, _x.init_arm_pose.wrist_joint.translation.y, _x.init_arm_pose.wrist_joint.translation.z, _x.init_arm_pose.wrist_joint.angle, _x.init_arm_pose.wrist_joint.upper_bound, _x.init_arm_pose.wrist_joint.lower_bound, _x.init_arm_pose.wrist_joint.axis, _x.init_arm_pose.eff_joint.translation.x, _x.init_arm_pose.eff_joint.translation.y, _x.init_arm_pose.eff_joint.translation.z, _x.init_arm_pose.eff_joint.angle, _x.init_arm_pose.eff_joint.upper_bound, _x.init_arm_pose.eff_joint.lower_bound, _x.init_arm_pose.eff_joint.axis, _x.init_arm_pose.gripper_offset_joint.translation.x, _x.init_arm_pose.gripper_offset_joint.translation.y, _x.init_arm_pose.gripper_offset_joint.translation.z, _x.init_arm_pose.gripper_offset_joint.angle, _x.init_arm_pose.gripper_offset_joint.upper_bound, _x.init_arm_pose.gripper_offset_joint.lower_bound, _x.init_arm_pose.gripper_offset_joint.axis, _x.init_arm_pose.right_gripper_joint.translation.x, _x.init_arm_pose.right_gripper_joint.translation.y, _x.init_arm_pose.right_gripper_joint.translation.z, _x.init_arm_pose.right_gripper_joint.angle, _x.init_arm_pose.right_gripper_joint.upper_bound, _x.init_arm_pose.right_gripper_joint.lower_bound, _x.init_arm_pose.right_gripper_joint.axis, _x.init_arm_pose.left_gripper_joint.translation.x, _x.init_arm_pose.left_gripper_joint.translation.y, _x.init_arm_pose.left_gripper_joint.translation.z, _x.init_arm_pose.left_gripper_joint.angle, _x.init_arm_pose.left_gripper_joint.upper_bound, _x.init_arm_pose.left_gripper_joint.lower_bound, _x.init_arm_pose.left_gripper_joint.axis, _x.wrist_target.position.x, _x.wrist_target.position.y, _x.wrist_target.position.z, _x.wrist_target.orientation.x, _x.wrist_target.orientation.y, _x.wrist_target.orientation.z, _x.wrist_target.orientation.w, _x.eff_target.position.x, _x.eff_target.position.y, _x.eff_target.position.z, _x.eff_target.orientation.x, _x.eff_target.orientation.y, _x.eff_target.orientation.z, _x.eff_target.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.init_arm_pose is None:
        self.init_arm_pose = roborex.msg.ArmPose()
      if self.wrist_target is None:
        self.wrist_target = geometry_msgs.msg.Pose()
      if self.eff_target is None:
        self.eff_target = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 472
      (_x.init_arm_pose.world_joint.translation.x, _x.init_arm_pose.world_joint.translation.y, _x.init_arm_pose.world_joint.translation.z, _x.init_arm_pose.world_joint.angle, _x.init_arm_pose.world_joint.upper_bound, _x.init_arm_pose.world_joint.lower_bound, _x.init_arm_pose.world_joint.axis, _x.init_arm_pose.base_joint.translation.x, _x.init_arm_pose.base_joint.translation.y, _x.init_arm_pose.base_joint.translation.z, _x.init_arm_pose.base_joint.angle, _x.init_arm_pose.base_joint.upper_bound, _x.init_arm_pose.base_joint.lower_bound, _x.init_arm_pose.base_joint.axis, _x.init_arm_pose.shoulder_joint.translation.x, _x.init_arm_pose.shoulder_joint.translation.y, _x.init_arm_pose.shoulder_joint.translation.z, _x.init_arm_pose.shoulder_joint.angle, _x.init_arm_pose.shoulder_joint.upper_bound, _x.init_arm_pose.shoulder_joint.lower_bound, _x.init_arm_pose.shoulder_joint.axis, _x.init_arm_pose.elbow_joint.translation.x, _x.init_arm_pose.elbow_joint.translation.y, _x.init_arm_pose.elbow_joint.translation.z, _x.init_arm_pose.elbow_joint.angle, _x.init_arm_pose.elbow_joint.upper_bound, _x.init_arm_pose.elbow_joint.lower_bound, _x.init_arm_pose.elbow_joint.axis, _x.init_arm_pose.wrist_joint.translation.x, _x.init_arm_pose.wrist_joint.translation.y, _x.init_arm_pose.wrist_joint.translation.z, _x.init_arm_pose.wrist_joint.angle, _x.init_arm_pose.wrist_joint.upper_bound, _x.init_arm_pose.wrist_joint.lower_bound, _x.init_arm_pose.wrist_joint.axis, _x.init_arm_pose.eff_joint.translation.x, _x.init_arm_pose.eff_joint.translation.y, _x.init_arm_pose.eff_joint.translation.z, _x.init_arm_pose.eff_joint.angle, _x.init_arm_pose.eff_joint.upper_bound, _x.init_arm_pose.eff_joint.lower_bound, _x.init_arm_pose.eff_joint.axis, _x.init_arm_pose.gripper_offset_joint.translation.x, _x.init_arm_pose.gripper_offset_joint.translation.y, _x.init_arm_pose.gripper_offset_joint.translation.z, _x.init_arm_pose.gripper_offset_joint.angle, _x.init_arm_pose.gripper_offset_joint.upper_bound, _x.init_arm_pose.gripper_offset_joint.lower_bound, _x.init_arm_pose.gripper_offset_joint.axis, _x.init_arm_pose.right_gripper_joint.translation.x, _x.init_arm_pose.right_gripper_joint.translation.y, _x.init_arm_pose.right_gripper_joint.translation.z, _x.init_arm_pose.right_gripper_joint.angle, _x.init_arm_pose.right_gripper_joint.upper_bound, _x.init_arm_pose.right_gripper_joint.lower_bound, _x.init_arm_pose.right_gripper_joint.axis, _x.init_arm_pose.left_gripper_joint.translation.x, _x.init_arm_pose.left_gripper_joint.translation.y, _x.init_arm_pose.left_gripper_joint.translation.z, _x.init_arm_pose.left_gripper_joint.angle, _x.init_arm_pose.left_gripper_joint.upper_bound, _x.init_arm_pose.left_gripper_joint.lower_bound, _x.init_arm_pose.left_gripper_joint.axis, _x.wrist_target.position.x, _x.wrist_target.position.y, _x.wrist_target.position.z, _x.wrist_target.orientation.x, _x.wrist_target.orientation.y, _x.wrist_target.orientation.z, _x.wrist_target.orientation.w, _x.eff_target.position.x, _x.eff_target.position.y, _x.eff_target.position.z, _x.eff_target.orientation.x, _x.eff_target.orientation.y, _x.eff_target.orientation.z, _x.eff_target.orientation.w,) = _get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d().unpack(str[start:end])
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
      buff.write(_get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d().pack(_x.init_arm_pose.world_joint.translation.x, _x.init_arm_pose.world_joint.translation.y, _x.init_arm_pose.world_joint.translation.z, _x.init_arm_pose.world_joint.angle, _x.init_arm_pose.world_joint.upper_bound, _x.init_arm_pose.world_joint.lower_bound, _x.init_arm_pose.world_joint.axis, _x.init_arm_pose.base_joint.translation.x, _x.init_arm_pose.base_joint.translation.y, _x.init_arm_pose.base_joint.translation.z, _x.init_arm_pose.base_joint.angle, _x.init_arm_pose.base_joint.upper_bound, _x.init_arm_pose.base_joint.lower_bound, _x.init_arm_pose.base_joint.axis, _x.init_arm_pose.shoulder_joint.translation.x, _x.init_arm_pose.shoulder_joint.translation.y, _x.init_arm_pose.shoulder_joint.translation.z, _x.init_arm_pose.shoulder_joint.angle, _x.init_arm_pose.shoulder_joint.upper_bound, _x.init_arm_pose.shoulder_joint.lower_bound, _x.init_arm_pose.shoulder_joint.axis, _x.init_arm_pose.elbow_joint.translation.x, _x.init_arm_pose.elbow_joint.translation.y, _x.init_arm_pose.elbow_joint.translation.z, _x.init_arm_pose.elbow_joint.angle, _x.init_arm_pose.elbow_joint.upper_bound, _x.init_arm_pose.elbow_joint.lower_bound, _x.init_arm_pose.elbow_joint.axis, _x.init_arm_pose.wrist_joint.translation.x, _x.init_arm_pose.wrist_joint.translation.y, _x.init_arm_pose.wrist_joint.translation.z, _x.init_arm_pose.wrist_joint.angle, _x.init_arm_pose.wrist_joint.upper_bound, _x.init_arm_pose.wrist_joint.lower_bound, _x.init_arm_pose.wrist_joint.axis, _x.init_arm_pose.eff_joint.translation.x, _x.init_arm_pose.eff_joint.translation.y, _x.init_arm_pose.eff_joint.translation.z, _x.init_arm_pose.eff_joint.angle, _x.init_arm_pose.eff_joint.upper_bound, _x.init_arm_pose.eff_joint.lower_bound, _x.init_arm_pose.eff_joint.axis, _x.init_arm_pose.gripper_offset_joint.translation.x, _x.init_arm_pose.gripper_offset_joint.translation.y, _x.init_arm_pose.gripper_offset_joint.translation.z, _x.init_arm_pose.gripper_offset_joint.angle, _x.init_arm_pose.gripper_offset_joint.upper_bound, _x.init_arm_pose.gripper_offset_joint.lower_bound, _x.init_arm_pose.gripper_offset_joint.axis, _x.init_arm_pose.right_gripper_joint.translation.x, _x.init_arm_pose.right_gripper_joint.translation.y, _x.init_arm_pose.right_gripper_joint.translation.z, _x.init_arm_pose.right_gripper_joint.angle, _x.init_arm_pose.right_gripper_joint.upper_bound, _x.init_arm_pose.right_gripper_joint.lower_bound, _x.init_arm_pose.right_gripper_joint.axis, _x.init_arm_pose.left_gripper_joint.translation.x, _x.init_arm_pose.left_gripper_joint.translation.y, _x.init_arm_pose.left_gripper_joint.translation.z, _x.init_arm_pose.left_gripper_joint.angle, _x.init_arm_pose.left_gripper_joint.upper_bound, _x.init_arm_pose.left_gripper_joint.lower_bound, _x.init_arm_pose.left_gripper_joint.axis, _x.wrist_target.position.x, _x.wrist_target.position.y, _x.wrist_target.position.z, _x.wrist_target.orientation.x, _x.wrist_target.orientation.y, _x.wrist_target.orientation.z, _x.wrist_target.orientation.w, _x.eff_target.position.x, _x.eff_target.position.y, _x.eff_target.position.z, _x.eff_target.orientation.x, _x.eff_target.orientation.y, _x.eff_target.orientation.z, _x.eff_target.orientation.w))
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
      if self.init_arm_pose is None:
        self.init_arm_pose = roborex.msg.ArmPose()
      if self.wrist_target is None:
        self.wrist_target = geometry_msgs.msg.Pose()
      if self.eff_target is None:
        self.eff_target = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 472
      (_x.init_arm_pose.world_joint.translation.x, _x.init_arm_pose.world_joint.translation.y, _x.init_arm_pose.world_joint.translation.z, _x.init_arm_pose.world_joint.angle, _x.init_arm_pose.world_joint.upper_bound, _x.init_arm_pose.world_joint.lower_bound, _x.init_arm_pose.world_joint.axis, _x.init_arm_pose.base_joint.translation.x, _x.init_arm_pose.base_joint.translation.y, _x.init_arm_pose.base_joint.translation.z, _x.init_arm_pose.base_joint.angle, _x.init_arm_pose.base_joint.upper_bound, _x.init_arm_pose.base_joint.lower_bound, _x.init_arm_pose.base_joint.axis, _x.init_arm_pose.shoulder_joint.translation.x, _x.init_arm_pose.shoulder_joint.translation.y, _x.init_arm_pose.shoulder_joint.translation.z, _x.init_arm_pose.shoulder_joint.angle, _x.init_arm_pose.shoulder_joint.upper_bound, _x.init_arm_pose.shoulder_joint.lower_bound, _x.init_arm_pose.shoulder_joint.axis, _x.init_arm_pose.elbow_joint.translation.x, _x.init_arm_pose.elbow_joint.translation.y, _x.init_arm_pose.elbow_joint.translation.z, _x.init_arm_pose.elbow_joint.angle, _x.init_arm_pose.elbow_joint.upper_bound, _x.init_arm_pose.elbow_joint.lower_bound, _x.init_arm_pose.elbow_joint.axis, _x.init_arm_pose.wrist_joint.translation.x, _x.init_arm_pose.wrist_joint.translation.y, _x.init_arm_pose.wrist_joint.translation.z, _x.init_arm_pose.wrist_joint.angle, _x.init_arm_pose.wrist_joint.upper_bound, _x.init_arm_pose.wrist_joint.lower_bound, _x.init_arm_pose.wrist_joint.axis, _x.init_arm_pose.eff_joint.translation.x, _x.init_arm_pose.eff_joint.translation.y, _x.init_arm_pose.eff_joint.translation.z, _x.init_arm_pose.eff_joint.angle, _x.init_arm_pose.eff_joint.upper_bound, _x.init_arm_pose.eff_joint.lower_bound, _x.init_arm_pose.eff_joint.axis, _x.init_arm_pose.gripper_offset_joint.translation.x, _x.init_arm_pose.gripper_offset_joint.translation.y, _x.init_arm_pose.gripper_offset_joint.translation.z, _x.init_arm_pose.gripper_offset_joint.angle, _x.init_arm_pose.gripper_offset_joint.upper_bound, _x.init_arm_pose.gripper_offset_joint.lower_bound, _x.init_arm_pose.gripper_offset_joint.axis, _x.init_arm_pose.right_gripper_joint.translation.x, _x.init_arm_pose.right_gripper_joint.translation.y, _x.init_arm_pose.right_gripper_joint.translation.z, _x.init_arm_pose.right_gripper_joint.angle, _x.init_arm_pose.right_gripper_joint.upper_bound, _x.init_arm_pose.right_gripper_joint.lower_bound, _x.init_arm_pose.right_gripper_joint.axis, _x.init_arm_pose.left_gripper_joint.translation.x, _x.init_arm_pose.left_gripper_joint.translation.y, _x.init_arm_pose.left_gripper_joint.translation.z, _x.init_arm_pose.left_gripper_joint.angle, _x.init_arm_pose.left_gripper_joint.upper_bound, _x.init_arm_pose.left_gripper_joint.lower_bound, _x.init_arm_pose.left_gripper_joint.axis, _x.wrist_target.position.x, _x.wrist_target.position.y, _x.wrist_target.position.z, _x.wrist_target.orientation.x, _x.wrist_target.orientation.y, _x.wrist_target.orientation.z, _x.wrist_target.orientation.w, _x.eff_target.position.x, _x.eff_target.position.y, _x.eff_target.position.z, _x.eff_target.orientation.x, _x.eff_target.orientation.y, _x.eff_target.orientation.z, _x.eff_target.orientation.w,) = _get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d = None
def _get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d():
    global _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d
    if _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d is None:
        _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d = struct.Struct("<3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d")
    return _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi14d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roborex/InverseKinematicsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import roborex.msg

class InverseKinematicsResponse(genpy.Message):
  _md5sum = "422537529a33b8efa70e31bd2c9b1dcf"
  _type = "roborex/InverseKinematicsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """ArmPose arm_pose

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
"""
  __slots__ = ['arm_pose']
  _slot_types = ['roborex/ArmPose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       arm_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InverseKinematicsResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.arm_pose is None:
        self.arm_pose = roborex.msg.ArmPose()
    else:
      self.arm_pose = roborex.msg.ArmPose()

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
      buff.write(_get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi().pack(_x.arm_pose.world_joint.translation.x, _x.arm_pose.world_joint.translation.y, _x.arm_pose.world_joint.translation.z, _x.arm_pose.world_joint.angle, _x.arm_pose.world_joint.upper_bound, _x.arm_pose.world_joint.lower_bound, _x.arm_pose.world_joint.axis, _x.arm_pose.base_joint.translation.x, _x.arm_pose.base_joint.translation.y, _x.arm_pose.base_joint.translation.z, _x.arm_pose.base_joint.angle, _x.arm_pose.base_joint.upper_bound, _x.arm_pose.base_joint.lower_bound, _x.arm_pose.base_joint.axis, _x.arm_pose.shoulder_joint.translation.x, _x.arm_pose.shoulder_joint.translation.y, _x.arm_pose.shoulder_joint.translation.z, _x.arm_pose.shoulder_joint.angle, _x.arm_pose.shoulder_joint.upper_bound, _x.arm_pose.shoulder_joint.lower_bound, _x.arm_pose.shoulder_joint.axis, _x.arm_pose.elbow_joint.translation.x, _x.arm_pose.elbow_joint.translation.y, _x.arm_pose.elbow_joint.translation.z, _x.arm_pose.elbow_joint.angle, _x.arm_pose.elbow_joint.upper_bound, _x.arm_pose.elbow_joint.lower_bound, _x.arm_pose.elbow_joint.axis, _x.arm_pose.wrist_joint.translation.x, _x.arm_pose.wrist_joint.translation.y, _x.arm_pose.wrist_joint.translation.z, _x.arm_pose.wrist_joint.angle, _x.arm_pose.wrist_joint.upper_bound, _x.arm_pose.wrist_joint.lower_bound, _x.arm_pose.wrist_joint.axis, _x.arm_pose.eff_joint.translation.x, _x.arm_pose.eff_joint.translation.y, _x.arm_pose.eff_joint.translation.z, _x.arm_pose.eff_joint.angle, _x.arm_pose.eff_joint.upper_bound, _x.arm_pose.eff_joint.lower_bound, _x.arm_pose.eff_joint.axis, _x.arm_pose.gripper_offset_joint.translation.x, _x.arm_pose.gripper_offset_joint.translation.y, _x.arm_pose.gripper_offset_joint.translation.z, _x.arm_pose.gripper_offset_joint.angle, _x.arm_pose.gripper_offset_joint.upper_bound, _x.arm_pose.gripper_offset_joint.lower_bound, _x.arm_pose.gripper_offset_joint.axis, _x.arm_pose.right_gripper_joint.translation.x, _x.arm_pose.right_gripper_joint.translation.y, _x.arm_pose.right_gripper_joint.translation.z, _x.arm_pose.right_gripper_joint.angle, _x.arm_pose.right_gripper_joint.upper_bound, _x.arm_pose.right_gripper_joint.lower_bound, _x.arm_pose.right_gripper_joint.axis, _x.arm_pose.left_gripper_joint.translation.x, _x.arm_pose.left_gripper_joint.translation.y, _x.arm_pose.left_gripper_joint.translation.z, _x.arm_pose.left_gripper_joint.angle, _x.arm_pose.left_gripper_joint.upper_bound, _x.arm_pose.left_gripper_joint.lower_bound, _x.arm_pose.left_gripper_joint.axis))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.arm_pose is None:
        self.arm_pose = roborex.msg.ArmPose()
      end = 0
      _x = self
      start = end
      end += 360
      (_x.arm_pose.world_joint.translation.x, _x.arm_pose.world_joint.translation.y, _x.arm_pose.world_joint.translation.z, _x.arm_pose.world_joint.angle, _x.arm_pose.world_joint.upper_bound, _x.arm_pose.world_joint.lower_bound, _x.arm_pose.world_joint.axis, _x.arm_pose.base_joint.translation.x, _x.arm_pose.base_joint.translation.y, _x.arm_pose.base_joint.translation.z, _x.arm_pose.base_joint.angle, _x.arm_pose.base_joint.upper_bound, _x.arm_pose.base_joint.lower_bound, _x.arm_pose.base_joint.axis, _x.arm_pose.shoulder_joint.translation.x, _x.arm_pose.shoulder_joint.translation.y, _x.arm_pose.shoulder_joint.translation.z, _x.arm_pose.shoulder_joint.angle, _x.arm_pose.shoulder_joint.upper_bound, _x.arm_pose.shoulder_joint.lower_bound, _x.arm_pose.shoulder_joint.axis, _x.arm_pose.elbow_joint.translation.x, _x.arm_pose.elbow_joint.translation.y, _x.arm_pose.elbow_joint.translation.z, _x.arm_pose.elbow_joint.angle, _x.arm_pose.elbow_joint.upper_bound, _x.arm_pose.elbow_joint.lower_bound, _x.arm_pose.elbow_joint.axis, _x.arm_pose.wrist_joint.translation.x, _x.arm_pose.wrist_joint.translation.y, _x.arm_pose.wrist_joint.translation.z, _x.arm_pose.wrist_joint.angle, _x.arm_pose.wrist_joint.upper_bound, _x.arm_pose.wrist_joint.lower_bound, _x.arm_pose.wrist_joint.axis, _x.arm_pose.eff_joint.translation.x, _x.arm_pose.eff_joint.translation.y, _x.arm_pose.eff_joint.translation.z, _x.arm_pose.eff_joint.angle, _x.arm_pose.eff_joint.upper_bound, _x.arm_pose.eff_joint.lower_bound, _x.arm_pose.eff_joint.axis, _x.arm_pose.gripper_offset_joint.translation.x, _x.arm_pose.gripper_offset_joint.translation.y, _x.arm_pose.gripper_offset_joint.translation.z, _x.arm_pose.gripper_offset_joint.angle, _x.arm_pose.gripper_offset_joint.upper_bound, _x.arm_pose.gripper_offset_joint.lower_bound, _x.arm_pose.gripper_offset_joint.axis, _x.arm_pose.right_gripper_joint.translation.x, _x.arm_pose.right_gripper_joint.translation.y, _x.arm_pose.right_gripper_joint.translation.z, _x.arm_pose.right_gripper_joint.angle, _x.arm_pose.right_gripper_joint.upper_bound, _x.arm_pose.right_gripper_joint.lower_bound, _x.arm_pose.right_gripper_joint.axis, _x.arm_pose.left_gripper_joint.translation.x, _x.arm_pose.left_gripper_joint.translation.y, _x.arm_pose.left_gripper_joint.translation.z, _x.arm_pose.left_gripper_joint.angle, _x.arm_pose.left_gripper_joint.upper_bound, _x.arm_pose.left_gripper_joint.lower_bound, _x.arm_pose.left_gripper_joint.axis,) = _get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi().unpack(str[start:end])
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
      buff.write(_get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi().pack(_x.arm_pose.world_joint.translation.x, _x.arm_pose.world_joint.translation.y, _x.arm_pose.world_joint.translation.z, _x.arm_pose.world_joint.angle, _x.arm_pose.world_joint.upper_bound, _x.arm_pose.world_joint.lower_bound, _x.arm_pose.world_joint.axis, _x.arm_pose.base_joint.translation.x, _x.arm_pose.base_joint.translation.y, _x.arm_pose.base_joint.translation.z, _x.arm_pose.base_joint.angle, _x.arm_pose.base_joint.upper_bound, _x.arm_pose.base_joint.lower_bound, _x.arm_pose.base_joint.axis, _x.arm_pose.shoulder_joint.translation.x, _x.arm_pose.shoulder_joint.translation.y, _x.arm_pose.shoulder_joint.translation.z, _x.arm_pose.shoulder_joint.angle, _x.arm_pose.shoulder_joint.upper_bound, _x.arm_pose.shoulder_joint.lower_bound, _x.arm_pose.shoulder_joint.axis, _x.arm_pose.elbow_joint.translation.x, _x.arm_pose.elbow_joint.translation.y, _x.arm_pose.elbow_joint.translation.z, _x.arm_pose.elbow_joint.angle, _x.arm_pose.elbow_joint.upper_bound, _x.arm_pose.elbow_joint.lower_bound, _x.arm_pose.elbow_joint.axis, _x.arm_pose.wrist_joint.translation.x, _x.arm_pose.wrist_joint.translation.y, _x.arm_pose.wrist_joint.translation.z, _x.arm_pose.wrist_joint.angle, _x.arm_pose.wrist_joint.upper_bound, _x.arm_pose.wrist_joint.lower_bound, _x.arm_pose.wrist_joint.axis, _x.arm_pose.eff_joint.translation.x, _x.arm_pose.eff_joint.translation.y, _x.arm_pose.eff_joint.translation.z, _x.arm_pose.eff_joint.angle, _x.arm_pose.eff_joint.upper_bound, _x.arm_pose.eff_joint.lower_bound, _x.arm_pose.eff_joint.axis, _x.arm_pose.gripper_offset_joint.translation.x, _x.arm_pose.gripper_offset_joint.translation.y, _x.arm_pose.gripper_offset_joint.translation.z, _x.arm_pose.gripper_offset_joint.angle, _x.arm_pose.gripper_offset_joint.upper_bound, _x.arm_pose.gripper_offset_joint.lower_bound, _x.arm_pose.gripper_offset_joint.axis, _x.arm_pose.right_gripper_joint.translation.x, _x.arm_pose.right_gripper_joint.translation.y, _x.arm_pose.right_gripper_joint.translation.z, _x.arm_pose.right_gripper_joint.angle, _x.arm_pose.right_gripper_joint.upper_bound, _x.arm_pose.right_gripper_joint.lower_bound, _x.arm_pose.right_gripper_joint.axis, _x.arm_pose.left_gripper_joint.translation.x, _x.arm_pose.left_gripper_joint.translation.y, _x.arm_pose.left_gripper_joint.translation.z, _x.arm_pose.left_gripper_joint.angle, _x.arm_pose.left_gripper_joint.upper_bound, _x.arm_pose.left_gripper_joint.lower_bound, _x.arm_pose.left_gripper_joint.axis))
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
      if self.arm_pose is None:
        self.arm_pose = roborex.msg.ArmPose()
      end = 0
      _x = self
      start = end
      end += 360
      (_x.arm_pose.world_joint.translation.x, _x.arm_pose.world_joint.translation.y, _x.arm_pose.world_joint.translation.z, _x.arm_pose.world_joint.angle, _x.arm_pose.world_joint.upper_bound, _x.arm_pose.world_joint.lower_bound, _x.arm_pose.world_joint.axis, _x.arm_pose.base_joint.translation.x, _x.arm_pose.base_joint.translation.y, _x.arm_pose.base_joint.translation.z, _x.arm_pose.base_joint.angle, _x.arm_pose.base_joint.upper_bound, _x.arm_pose.base_joint.lower_bound, _x.arm_pose.base_joint.axis, _x.arm_pose.shoulder_joint.translation.x, _x.arm_pose.shoulder_joint.translation.y, _x.arm_pose.shoulder_joint.translation.z, _x.arm_pose.shoulder_joint.angle, _x.arm_pose.shoulder_joint.upper_bound, _x.arm_pose.shoulder_joint.lower_bound, _x.arm_pose.shoulder_joint.axis, _x.arm_pose.elbow_joint.translation.x, _x.arm_pose.elbow_joint.translation.y, _x.arm_pose.elbow_joint.translation.z, _x.arm_pose.elbow_joint.angle, _x.arm_pose.elbow_joint.upper_bound, _x.arm_pose.elbow_joint.lower_bound, _x.arm_pose.elbow_joint.axis, _x.arm_pose.wrist_joint.translation.x, _x.arm_pose.wrist_joint.translation.y, _x.arm_pose.wrist_joint.translation.z, _x.arm_pose.wrist_joint.angle, _x.arm_pose.wrist_joint.upper_bound, _x.arm_pose.wrist_joint.lower_bound, _x.arm_pose.wrist_joint.axis, _x.arm_pose.eff_joint.translation.x, _x.arm_pose.eff_joint.translation.y, _x.arm_pose.eff_joint.translation.z, _x.arm_pose.eff_joint.angle, _x.arm_pose.eff_joint.upper_bound, _x.arm_pose.eff_joint.lower_bound, _x.arm_pose.eff_joint.axis, _x.arm_pose.gripper_offset_joint.translation.x, _x.arm_pose.gripper_offset_joint.translation.y, _x.arm_pose.gripper_offset_joint.translation.z, _x.arm_pose.gripper_offset_joint.angle, _x.arm_pose.gripper_offset_joint.upper_bound, _x.arm_pose.gripper_offset_joint.lower_bound, _x.arm_pose.gripper_offset_joint.axis, _x.arm_pose.right_gripper_joint.translation.x, _x.arm_pose.right_gripper_joint.translation.y, _x.arm_pose.right_gripper_joint.translation.z, _x.arm_pose.right_gripper_joint.angle, _x.arm_pose.right_gripper_joint.upper_bound, _x.arm_pose.right_gripper_joint.lower_bound, _x.arm_pose.right_gripper_joint.axis, _x.arm_pose.left_gripper_joint.translation.x, _x.arm_pose.left_gripper_joint.translation.y, _x.arm_pose.left_gripper_joint.translation.z, _x.arm_pose.left_gripper_joint.angle, _x.arm_pose.left_gripper_joint.upper_bound, _x.arm_pose.left_gripper_joint.lower_bound, _x.arm_pose.left_gripper_joint.axis,) = _get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi = None
def _get_struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi():
    global _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi
    if _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi is None:
        _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi = struct.Struct("<3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi")
    return _struct_3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi3d3fi
class InverseKinematics(object):
  _type          = 'roborex/InverseKinematics'
  _md5sum = 'c44e167c0184aca769254292f802c4b0'
  _request_class  = InverseKinematicsRequest
  _response_class = InverseKinematicsResponse
