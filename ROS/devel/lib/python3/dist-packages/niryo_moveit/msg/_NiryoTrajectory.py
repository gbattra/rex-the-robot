# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from niryo_moveit/NiryoTrajectory.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import moveit_msgs.msg
import std_msgs.msg
import trajectory_msgs.msg

class NiryoTrajectory(genpy.Message):
  _md5sum = "054c09e62210d7faad2f9fffdad07b57"
  _type = "niryo_moveit/NiryoTrajectory"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """moveit_msgs/RobotTrajectory[] trajectory
================================================================================
MSG: moveit_msgs/RobotTrajectory
trajectory_msgs/JointTrajectory joint_trajectory
trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
"""
  __slots__ = ['trajectory']
  _slot_types = ['moveit_msgs/RobotTrajectory[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       trajectory

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NiryoTrajectory, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.trajectory is None:
        self.trajectory = []
    else:
      self.trajectory = []

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
      length = len(self.trajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory:
        _v1 = val1.joint_trajectory
        _v2 = _v1.header
        _x = _v2.seq
        buff.write(_get_struct_I().pack(_x))
        _v3 = _v2.stamp
        _x = _v3
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v2.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v1.joint_names)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.joint_names:
          length = len(val3)
          if python3 or type(val3) == unicode:
            val3 = val3.encode('utf-8')
            length = len(val3)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val3))
        length = len(_v1.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v1.points:
          length = len(val3.positions)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(struct.Struct(pattern).pack(*val3.positions))
          length = len(val3.velocities)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(struct.Struct(pattern).pack(*val3.velocities))
          length = len(val3.accelerations)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(struct.Struct(pattern).pack(*val3.accelerations))
          length = len(val3.effort)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(struct.Struct(pattern).pack(*val3.effort))
          _v4 = val3.time_from_start
          _x = _v4
          buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v5 = val1.multi_dof_joint_trajectory
        _v6 = _v5.header
        _x = _v6.seq
        buff.write(_get_struct_I().pack(_x))
        _v7 = _v6.stamp
        _x = _v7
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v6.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v5.joint_names)
        buff.write(_struct_I.pack(length))
        for val3 in _v5.joint_names:
          length = len(val3)
          if python3 or type(val3) == unicode:
            val3 = val3.encode('utf-8')
            length = len(val3)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val3))
        length = len(_v5.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v5.points:
          length = len(val3.transforms)
          buff.write(_struct_I.pack(length))
          for val4 in val3.transforms:
            _v8 = val4.translation
            _x = _v8
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
            _v9 = val4.rotation
            _x = _v9
            buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          length = len(val3.velocities)
          buff.write(_struct_I.pack(length))
          for val4 in val3.velocities:
            _v10 = val4.linear
            _x = _v10
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
            _v11 = val4.angular
            _x = _v11
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          length = len(val3.accelerations)
          buff.write(_struct_I.pack(length))
          for val4 in val3.accelerations:
            _v12 = val4.linear
            _x = _v12
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
            _v13 = val4.angular
            _x = _v13
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v14 = val3.time_from_start
          _x = _v14
          buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.trajectory is None:
        self.trajectory = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory = []
      for i in range(0, length):
        val1 = moveit_msgs.msg.RobotTrajectory()
        _v15 = val1.joint_trajectory
        _v16 = _v15.header
        start = end
        end += 4
        (_v16.seq,) = _get_struct_I().unpack(str[start:end])
        _v17 = _v16.stamp
        _x = _v17
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v16.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v15.joint_names = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val3 = str[start:end]
          _v15.joint_names.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v15.points = []
        for i in range(0, length):
          val3 = trajectory_msgs.msg.JointTrajectoryPoint()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.positions = s.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.velocities = s.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.accelerations = s.unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.effort = s.unpack(str[start:end])
          _v18 = val3.time_from_start
          _x = _v18
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
          _v15.points.append(val3)
        _v19 = val1.multi_dof_joint_trajectory
        _v20 = _v19.header
        start = end
        end += 4
        (_v20.seq,) = _get_struct_I().unpack(str[start:end])
        _v21 = _v20.stamp
        _x = _v21
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v20.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v20.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v19.joint_names = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val3 = str[start:end]
          _v19.joint_names.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v19.points = []
        for i in range(0, length):
          val3 = trajectory_msgs.msg.MultiDOFJointTrajectoryPoint()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val3.transforms = []
          for i in range(0, length):
            val4 = geometry_msgs.msg.Transform()
            _v22 = val4.translation
            _x = _v22
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            _v23 = val4.rotation
            _x = _v23
            start = end
            end += 32
            (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
            val3.transforms.append(val4)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val3.velocities = []
          for i in range(0, length):
            val4 = geometry_msgs.msg.Twist()
            _v24 = val4.linear
            _x = _v24
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            _v25 = val4.angular
            _x = _v25
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            val3.velocities.append(val4)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val3.accelerations = []
          for i in range(0, length):
            val4 = geometry_msgs.msg.Twist()
            _v26 = val4.linear
            _x = _v26
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            _v27 = val4.angular
            _x = _v27
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            val3.accelerations.append(val4)
          _v28 = val3.time_from_start
          _x = _v28
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
          _v19.points.append(val3)
        self.trajectory.append(val1)
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
      length = len(self.trajectory)
      buff.write(_struct_I.pack(length))
      for val1 in self.trajectory:
        _v29 = val1.joint_trajectory
        _v30 = _v29.header
        _x = _v30.seq
        buff.write(_get_struct_I().pack(_x))
        _v31 = _v30.stamp
        _x = _v31
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v30.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v29.joint_names)
        buff.write(_struct_I.pack(length))
        for val3 in _v29.joint_names:
          length = len(val3)
          if python3 or type(val3) == unicode:
            val3 = val3.encode('utf-8')
            length = len(val3)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val3))
        length = len(_v29.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v29.points:
          length = len(val3.positions)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(val3.positions.tostring())
          length = len(val3.velocities)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(val3.velocities.tostring())
          length = len(val3.accelerations)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(val3.accelerations.tostring())
          length = len(val3.effort)
          buff.write(_struct_I.pack(length))
          pattern = '<%sd'%length
          buff.write(val3.effort.tostring())
          _v32 = val3.time_from_start
          _x = _v32
          buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v33 = val1.multi_dof_joint_trajectory
        _v34 = _v33.header
        _x = _v34.seq
        buff.write(_get_struct_I().pack(_x))
        _v35 = _v34.stamp
        _x = _v35
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v34.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(_v33.joint_names)
        buff.write(_struct_I.pack(length))
        for val3 in _v33.joint_names:
          length = len(val3)
          if python3 or type(val3) == unicode:
            val3 = val3.encode('utf-8')
            length = len(val3)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val3))
        length = len(_v33.points)
        buff.write(_struct_I.pack(length))
        for val3 in _v33.points:
          length = len(val3.transforms)
          buff.write(_struct_I.pack(length))
          for val4 in val3.transforms:
            _v36 = val4.translation
            _x = _v36
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
            _v37 = val4.rotation
            _x = _v37
            buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
          length = len(val3.velocities)
          buff.write(_struct_I.pack(length))
          for val4 in val3.velocities:
            _v38 = val4.linear
            _x = _v38
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
            _v39 = val4.angular
            _x = _v39
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          length = len(val3.accelerations)
          buff.write(_struct_I.pack(length))
          for val4 in val3.accelerations:
            _v40 = val4.linear
            _x = _v40
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
            _v41 = val4.angular
            _x = _v41
            buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
          _v42 = val3.time_from_start
          _x = _v42
          buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
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
      if self.trajectory is None:
        self.trajectory = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.trajectory = []
      for i in range(0, length):
        val1 = moveit_msgs.msg.RobotTrajectory()
        _v43 = val1.joint_trajectory
        _v44 = _v43.header
        start = end
        end += 4
        (_v44.seq,) = _get_struct_I().unpack(str[start:end])
        _v45 = _v44.stamp
        _x = _v45
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v44.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v44.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v43.joint_names = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val3 = str[start:end]
          _v43.joint_names.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v43.points = []
        for i in range(0, length):
          val3 = trajectory_msgs.msg.JointTrajectoryPoint()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.positions = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.velocities = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.accelerations = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          pattern = '<%sd'%length
          start = end
          s = struct.Struct(pattern)
          end += s.size
          val3.effort = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
          _v46 = val3.time_from_start
          _x = _v46
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
          _v43.points.append(val3)
        _v47 = val1.multi_dof_joint_trajectory
        _v48 = _v47.header
        start = end
        end += 4
        (_v48.seq,) = _get_struct_I().unpack(str[start:end])
        _v49 = _v48.stamp
        _x = _v49
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v48.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v48.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v47.joint_names = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val3 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val3 = str[start:end]
          _v47.joint_names.append(val3)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v47.points = []
        for i in range(0, length):
          val3 = trajectory_msgs.msg.MultiDOFJointTrajectoryPoint()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val3.transforms = []
          for i in range(0, length):
            val4 = geometry_msgs.msg.Transform()
            _v50 = val4.translation
            _x = _v50
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            _v51 = val4.rotation
            _x = _v51
            start = end
            end += 32
            (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
            val3.transforms.append(val4)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val3.velocities = []
          for i in range(0, length):
            val4 = geometry_msgs.msg.Twist()
            _v52 = val4.linear
            _x = _v52
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            _v53 = val4.angular
            _x = _v53
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            val3.velocities.append(val4)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val3.accelerations = []
          for i in range(0, length):
            val4 = geometry_msgs.msg.Twist()
            _v54 = val4.linear
            _x = _v54
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            _v55 = val4.angular
            _x = _v55
            start = end
            end += 24
            (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
            val3.accelerations.append(val4)
          _v56 = val3.time_from_start
          _x = _v56
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
          _v47.points.append(val3)
        self.trajectory.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
