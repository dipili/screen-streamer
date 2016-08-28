QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = screen-streamer
TEMPLATE = app

GSTREAMER_PATH=D:/gstreamer/1.0/x86

INCLUDEPATH += \
    $${GSTREAMER_PATH}/include \
    $${GSTREAMER_PATH}/include/gstreamer-1.0 \
    $${GSTREAMER_PATH}/lib/glib-2.0/include \
    $${GSTREAMER_PATH}/include/glib-2.0 \
    $${GSTREAMER_PATH}/include/libxml2 \
    $${GSTREAMER_PATH}/lib/gstreamer-1.0/include

LIBS += \
    -L$${GSTREAMER_PATH}/lib \
    -L$${GSTREAMER_PATH}/gst/rtsp-server

LIBS += \
    -lglib-2.0 \
    -lgstreamer-1.0 \
    -lgobject-2.0 \
#    -lgtk-x11-2.0 \
    -lgstrtsp-1.0 \
    -lgstapp-1.0 \
    -lstdc++ \
    -lgstrtspserver-1.0

SOURCES += main.cpp\
        MainWindow.cpp

HEADERS  += MainWindow.h

FORMS    += MainWindow.ui
