QT       -= gui

TARGET =  NLogger
TEMPLATE = lib

DEFINES += NLOGGER_LIBRARY

# 引入源文件
include($$PWD/NLogger_src.pri)

# 引入版本信息
RC_FILE += ./NLogger_resource.rc

# 定义输出路径
win32{
    CONFIG += debug_and_release
    CONFIG(release, debug|release) {
            target_path = ./build_/dist
        } else {
            target_path = ./build_/debug
        }
        DESTDIR = ../bin
        MOC_DIR = $$target_path/moc
        RCC_DIR = $$target_path/rcc
        OBJECTS_DIR = $$target_path/obj
}

# 输出编译套件信息
message(Qt version: $$[QT_VERSION])
message(Qt is installed in $$[QT_INSTALL_PREFIX])
message(the NLogger will create in folder: $$target_path)


