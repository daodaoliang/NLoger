QT += core
QT -= gui

CONFIG += c++11

TARGET = Example
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp

# 引入日志
include($PWD/../../NLogger/NLogger_inc.pri)

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
