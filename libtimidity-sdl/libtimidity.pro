#
#  Project file for the Qt Creator IDE
#

TEMPLATE = lib
CONFIG  -= qt
CONFIG  += staticlib

TARGET = timidity
INSTALLINCLUDES = $$PWD/include/*
INSTALLINCLUDESTO = timidity
include($$PWD/../audio_codec_common.pri)

exists($$PWD/../../../_common/lib_destdir.pri):{
    include($$PWD/../../../_common/lib_destdir.pri)
    INCLUDEPATH += $$PWD/../../_builds/$$TARGETOS/include/
    LIBS += -L$$PWD/../../_builds/$$TARGETOS/lib/
}

INCLUDEPATH += $$PWD $$PWD/include
LIBS += -lSDL2

HEADERS += \
    include/timidity.h \
    src/common.h \
    src/instrum.h \
    src/mix.h \
    src/options.h \
    src/output.h \
    src/playmidi.h \
    src/readmidi.h \
    src/resample.h \
    src/tables.h

SOURCES += \
    src/common.c \
    src/instrum.c \
    src/mix.c \
    src/output.c \
    src/playmidi.c \
    src/readmidi.c \
    src/resample.c \
    src/tables.c \
    src/timidity.c
