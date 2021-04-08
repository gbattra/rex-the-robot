#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gattra/Projects/Unity/rex-the-robot/ROS/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gattra/Projects/Unity/rex-the-robot/ROS/install/lib/python3/dist-packages:/home/gattra/Projects/Unity/rex-the-robot/ROS/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gattra/Projects/Unity/rex-the-robot/ROS/build" \
    "/usr/bin/python3" \
    "/home/gattra/Projects/Unity/rex-the-robot/ROS/src/roborex/setup.py" \
    egg_info --egg-base /home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex \
    build --build-base "/home/gattra/Projects/Unity/rex-the-robot/ROS/build/roborex" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/gattra/Projects/Unity/rex-the-robot/ROS/install" --install-scripts="/home/gattra/Projects/Unity/rex-the-robot/ROS/install/bin"
