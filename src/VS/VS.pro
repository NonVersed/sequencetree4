## Generated by HaiQ on Tue May 27 2008

TEMPLATE =	app
CONFIG -= app_bundle
QT += widgets

OBJECTS_DIR =	./build
MOC_DIR =   	./build
DESTDIR =   	../../bin

# added debug
CONFIG	+= 	qt release console debug

HEADERS +=
SOURCES += vsmain.cpp
FORMS +=

HEADERS += vsmainwindow.h vssequenceview.h vsphantomview.h vspropertyeditor.h
SOURCES += vsmainwindow.cpp vssequenceview.cpp vsphantomview.cpp vspropertyeditor.cpp
FORMS += vsmainwindow.ui vssequenceview.ui vsphantomview.ui

HEADERS += run_virtual_scan.h
SOURCES += run_virtual_scan.cpp

HEADERS += vsabstractscanner.h vsevents.h vsobjectstate.h vsobjecttransformation.h vsphantom.h vsktermlist.h vsktermscanner.h
SOURCES += vsabstractscanner.cpp vsobjectstate.cpp vsobjecttransformation.cpp vsphantom.cpp vsktermlist.cpp vsktermscanner.cpp

INCLUDEPATH += ../../simulator
DEPENDPATH += ../../simulator
VPATH += ../../simulator
HEADERS += stsimscannerblocklist.h
SOURCES += stsimscannerblocklist.cpp

INCLUDEPATH += ../meta
DEPENDPATH += ../meta
VPATH += ../meta
HEADERS += stcommon.h
HEADERS += stmetasequencesimulator.h stmetasequence.h stmetanode.h stmetaclass.h
SOURCES += stmetasequencesimulator.cpp stmetasequence.cpp stmetanode.cpp stmetaclass.cpp

INCLUDEPATH += ../../code/framework
DEPENDPATH += ../../code/framework
VPATH += ../../code/framework
HEADERS += slist.h sstring.h stresources.h
SOURCES += slist.cpp sstring.cpp stresources.cpp

INCLUDEPATH += ../shared
DEPENDPATH += ../shared
VPATH += ../shared
HEADERS += mda.h complex.h chainlinkglobal.h #simulation_sequence.h
SOURCES += mda.cpp complex.cpp #simulation_sequence.cpp

INCLUDEPATH += ../gui
DEPENDPATH += ../gui
VPATH += ../gui
HEADERS += distribute_raw_data.h stringchooserdlg.h stconfigurationdlg.h
SOURCES += distribute_raw_data.cpp stringchooserdlg.cpp stconfigurationdlg.cpp
HEADERS += stglobalview.h stcompilelog.h
SOURCES += stglobalview.cpp stcompilelog.cpp
FORMS += stglobalview.ui stringchooserdlg.ui stconfigurationdlg.ui

INCLUDEPATH += ./phantoms
DEPENDPATH += ./phantoms
VPATH += ./phantoms
HEADERS += basicphantoms.h
SOURCES += basicphantoms.cpp
HEADERS += kspacefunction.h basickspacefunctions.h vsbasicphantoms.h
SOURCES += kspacefunction.cpp basickspacefunctions.cpp vsbasicphantoms.cpp

HEADERS += vsphantomplugin.h
SOURCES += vsphantomplugin.cpp

RESOURCES += ../gui/st4.qrc
RC_FILE += vs.rc

win32: LIBS += -L../../bin -lgsl
unix: LIBS += -L../../bin -lgsl -lgslcblas
