#ifndef NLOGGER_GLOBAL_H
#define NLOGGER_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(NLOGGER_LIBRARY)
    #  define NLOGGERSHARED_EXPORT Q_DECL_EXPORT
#else
    #if defined(Q_OS_WIN32)
        #  define NLOGGERSHARED_EXPORT
    #else
        #  define NLOGGERSHARED_EXPORT Q_DECL_IMPORT
    #endif
#endif

#endif // CUTELOGGER_GLOBAL_H
