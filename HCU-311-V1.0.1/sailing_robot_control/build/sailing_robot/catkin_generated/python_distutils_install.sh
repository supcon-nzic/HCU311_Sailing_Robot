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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/root/HCU-311/sailing_robot_control/src/sailing_robot"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/HCU-311/sailing_robot_control/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/HCU-311/sailing_robot_control/install/lib/python2.7/dist-packages:/root/HCU-311/sailing_robot_control/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/HCU-311/sailing_robot_control/build" \
    "/usr/bin/python" \
    "/root/HCU-311/sailing_robot_control/src/sailing_robot/setup.py" \
    build --build-base "/root/HCU-311/sailing_robot_control/build/sailing_robot" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/root/HCU-311/sailing_robot_control/install" --install-scripts="/root/HCU-311/sailing_robot_control/install/bin"
