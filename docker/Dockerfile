FROM ros:melodic-ros-base

RUN sudo apt-get update && sudo apt-get install -y vim iputils-ping net-tools python-pip ros-melodic-robot-state-publisher ros-melodic-moveit ros-melodic-rosbridge-suite ros-melodic-joy ros-melodic-ros-control ros-melodic-ros-controllers ros-melodic-tf2-web-republisher dos2unix

RUN sudo -H pip install rospkg jsonpickle

ENV ROS_WORKSPACE=/catkin_ws

RUN mkdir $ROS_WORKSPACE
RUN mkdir $ROS_WORKSPACE/src

COPY ./docker/set-up-workspace /setup.sh
COPY docker/entrypoint /

RUN /bin/bash -c "find $ROS_WORKSPACE -type f -print0 | xargs -0 dos2unix"

RUN chmod +x /setup.sh && /setup.sh && rm /setup.sh
RUN chmod +x /entrypoint

WORKDIR $ROS_WORKSPACE

ENTRYPOINT ["/entrypoint"]
