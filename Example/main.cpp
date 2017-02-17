#include <QCoreApplication>
#include "logmanager.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
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
    return a.exec();
}
