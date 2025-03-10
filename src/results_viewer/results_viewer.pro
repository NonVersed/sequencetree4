## Generated by HaiQ on Sat May 31 2008

TEMPLATE =	app
CONFIG -= app_bundle
QT += widgets

OBJECTS_DIR =	./build
MOC_DIR =   	./build
DESTDIR =   	../../bin

# added debug
CONFIG += qt release console debug

HEADERS +=
SOURCES += rvmain.cpp
FORMS +=

HEADERS += rvmainwindow.h rvfileview.h
SOURCES += rvmainwindow.cpp rvfileview.cpp
FORMS += rvmainwindow.ui rvfileview.ui

INCLUDEPATH += ../shared
DEPENDPATH += ../shared
VPATH += ../shared
HEADERS += stcommon.h mda.h complex.h
SOURCES += mda.cpp complex.cpp

INCLUDEPATH += viewmda
DEPENDPATH += viewmda
VPATH += viewmda
HEADERS += viewmdamodel.h viewmdawidget2d.h viewmdawidget1d.h viewmdawidget.h brightnesstool.h fftw_library.h apply_fft.h fftw3.h
SOURCES += viewmdamodel.cpp viewmdawidget2d.cpp viewmdawidget1d.cpp viewmdawidget.cpp brightnesstool.cpp fftw_library.cpp apply_fft.cpp
FORMS += viewmdawidget.ui brightnesstool.ui
LIBS += -L../../bin -lfftw3

HEADERS += export_to_imagej.h
SOURCES += export_to_imagej.cpp

CHAINLINKDIR=$$(CHAINLINK_DIR) #CHAINLINK_DIR environment variable must be set
isEmpty(CHAINLINKDIR) {
	message("To use chainlink, you must set the CHAINLINK_DIR environment variable")
}
!exists($$CHAINLINKDIR/src/chainlinkplugin.pri) {
	message(File does not exist: $$CHAINLINKDIR/src/chainlinkplugin.pri)
}
exists($$CHAINLINKDIR/src/chainlinkplugin.pri) {
	INCLUDEPATH += $$CHAINLINKDIR/src/chainlinkcoreplugin $$CHAINLINKDIR/src/chainlinkcoreinterface
	DEPENDPATH += $$CHAINLINKDIR/src/chainlinkcoreplugin $$CHAINLINKDIR/src/chainlinkcoreinterface
	DEFINES += CHAINLINK_FOUND
}

RESOURCES += ../gui/st4.qrc
RC_FILE += results_viewer.rc

