TEMPLATE = app
VERSION = 1.00
TARGET = qt-box-editor-$${VERSION}

DEPENDPATH += ./ \
    resource/images \
    resource

INCLUDEPATH += ./ \
    src/include \
    src

OBJECTS_DIR += temp
MOC_DIR += temp
UI_DIR += temp
RCC_DIR += temp
DEFINES += VERSION=\\\"$${VERSION}\\\"

SOURCES += src/main.cpp \
    src/MainWindow.cpp \
    src/ChildWidget.cpp

HEADERS += src/include/MainWindow.h \
    src/include/ChildWidget.h

RESOURCES = resources/application.qrc

win32: {
    DESTDIR = ./win32
    DIR_SEPARATOR = \
    CONFIG += static release embed_manifest_exe
    TMAKE_CXXFLAGS += -DQT_NODLL 
    TMAKE_CXXFLAGS += -fno-exceptions -fno-rtti
}