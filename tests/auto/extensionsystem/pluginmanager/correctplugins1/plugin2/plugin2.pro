TEMPLATE = lib

SOURCES += plugin2.cpp
HEADERS += plugin2.h
DEFINES += PLUGIN2_LIBRARY

DISTFILES = $$PWD/plugin.json

QTC_LIB_DEPENDS += extensionsystem
include(../../../../qttest.pri)

TARGET = $$qtLibraryName(plugin2)
CONFIG -= debug_and_release_target

macx {
    QMAKE_LFLAGS_SONAME = -Wl,-install_name,$${OUT_PWD}/
}
