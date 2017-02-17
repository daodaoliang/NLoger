#include "logmanager.h"
#include <ConsoleAppender.h>
#include <RollingFileAppender.h>

LogManager::LogManager()
{
    m_format = "%{time}{dd-MM-yyyy, HH:mm:ss.zzz} [%{type:-7}] [%{file:-25} %{line}] %{message}\n";
}

void LogManager::initConsoleAppender(){
    m_consoleAppender = new ConsoleAppender;
    m_consoleAppender->setFormat(m_format);
    logger->registerAppender(m_consoleAppender);
}

void LogManager::initRollingFileAppender(){
    m_rollingFileAppender = new RollingFileAppender(m_logPath);
    m_rollingFileAppender->setFormat(m_format);
    m_rollingFileAppender->setLogFilesLimit(5);
    m_rollingFileAppender->setDatePattern(RollingFileAppender::DailyRollover);
    logger->registerAppender(m_rollingFileAppender);
}

void LogManager:: InitLog(const QString &filePath, const QString &fileName, bool isDebug){
    setLogFilePath(filePath, fileName);
    if(isDebug) this->initConsoleAppender();
    this->initRollingFileAppender();
}

QString LogManager::getLogFilePath(){
    return m_logPath;
}

void LogManager::setLogFilePath(const QString &filePath, const QString &fileName)
{
    QDir tempDir;
    if (!tempDir.exists(filePath)){
        tempDir.mkpath(filePath);
    }
    m_logPath = filePath + QString("/%1.log").arg(fileName);
    qDebug()<<m_logPath;
}

LogManager::~LogManager()
{
}
