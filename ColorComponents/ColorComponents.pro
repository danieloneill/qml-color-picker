TEMPLATE = lib
CONFIG += qt plugin qmltypes
QT += qml quick
TARGET  = ColorComponents

TARGET = $$qtLibraryTarget($$TARGET)
uri = org.astorije.ColorComponents

QML_IMPORT_NAME = $$uri
QML_IMPORT_MAJOR_VERSION = 1

HEADERS += colorcomponents.h \
        colorcomponentsplugin.h

SOURCES += colorcomponents.cpp \
        colorcomponentsplugin.cpp

symbian {
 include($$QT_SOURCE_TREE/examples/symbianpkgrules.pri)
 TARGET.EPOCALLOWDLLDATA = 1
}

DISTFILES = qmldir
OTHER_FILES = qmldir

!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$OUT_PWD/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmldir.files = qmldir colorcomponents_metatypes.json plugins.qmltypes
unix|win32 {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    qmldir.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmldir
}

