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

echo_and_run cd "/home/irman/Documents/Tubes/Prog/src/rosserial/rosserial_arduino"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/irman/Documents/Tubes/Prog/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/irman/Documents/Tubes/Prog/install/lib/python3/dist-packages:/home/irman/Documents/Tubes/Prog/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/irman/Documents/Tubes/Prog/build" \
    "/usr/bin/python3" \
    "/home/irman/Documents/Tubes/Prog/src/rosserial/rosserial_arduino/setup.py" \
     \
    build --build-base "/home/irman/Documents/Tubes/Prog/build/rosserial/rosserial_arduino" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/irman/Documents/Tubes/Prog/install" --install-scripts="/home/irman/Documents/Tubes/Prog/install/bin"
