INCLUDEPATH += $$PWD/inc/

HEADERS += \
    $$PWD/inc/NLogger_global.h \
    $$PWD/inc/RollingFileAppender.h \
    $$PWD/inc/Logger.h \
    $$PWD/inc/FileAppender.h \
    $$PWD/inc/ConsoleAppender.h \
    $$PWD/inc/AbstractStringAppender.h \
    $$PWD/inc/AbstractAppender.h \
    $$PWD/inc/logmanager.h

SOURCES += \
    $$PWD/src/RollingFileAppender.cpp \
    $$PWD/src/Logger.cpp \
    $$PWD/src/FileAppender.cpp \
    $$PWD/src/ConsoleAppender.cpp \
    $$PWD/src/AbstractStringAppender.cpp \
    $$PWD/src/AbstractAppender.cpp \
    $$PWD/src/logmanager.cpp

win32 {
    SOURCES += $$PWD/src/OutputDebugAppender.cpp
    HEADERS += $$PWD/inc/OutputDebugAppender.h
}
