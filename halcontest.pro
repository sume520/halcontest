#-------------------------------------------------
#
# Project created by QtCreator 2017-12-07T12:08:18
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = halcontest
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui




win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64/ -lhalcon
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64/ -lhalcon
else:unix: LIBS += -L$$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64/ -lhalcon

INCLUDEPATH += $$PWD/../../../MVTec/HALCON-13.0/include
DEPENDPATH += $$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64/ -lhalconcpp
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64/ -lhalconcpp
else:unix: LIBS += -L$$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64/ -lhalconcpp

INCLUDEPATH += $$PWD/../../../MVTec/HALCON-13.0/include/halconcpp
DEPENDPATH += $$PWD/../../../MVTec/HALCON-13.0/lib/x64-win64


