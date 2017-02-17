# 日志组件使用说明

[TOC]

## 0.如何添加项目

* 首先拷贝源码到你的工程文件目录;
* 在你的项目 pro文件中添加:

```c
# import dll file
include($$PWD/../NLogger/NLogger_inc.pri)
```

**具体的路径请按照你的项目情况进行修改**

## 1. 测试用例

```
    LogManager logInstance;
    logInstance.InitLog("./log","daodaoliang");
    qDebug()<<"test";
    qDebug()<<logInstance.getLogFilePath();
    qWarning() << "Use qWarning";
    qCritical() << "Use qCritical";
    LOG_TRACE() << "Use LOG_DEBUG";
    LOG_DEBUG() << "Use LOG_DEBUG";
    LOG_INFO() << "Use LOG_INFO";
    LOG_WARNING() << "Use Warning";
    LOG_ERROR() << "Use LOG_ERROR";
```

## 2. 组件路线图



## 3. changelog

V 1.0.1.0 在cutelogger 开源项目发展来;
V 1.0.2.0 重新封装了对外接口;

