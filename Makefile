MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
CXXFLAGS      = -pipe -std=c++11 -O2 -Wall -W -D_REENTRANT -fPIE $(DEFINES)
INCPATH       = -I/software/common/qt-5.0.1/mkspecs/linux-g++ -I. -I. -I/software/common/qt-5.0.1/include -I/software/common/qt-5.0.1/include/QtWidgets -I/software/common/qt-5.0.1/include/QtGui -I/software/common/qt-5.0.1/include/QtCore -I. -I.
LINK          = g++
LFLAGS        = -Wl,-O1 -Wl,-rpath,/software/common/qt-5.0.1/lib
LIBS          = $(SUBLIBS) -L/software/common/qt-5.0.1/lib -lQt5Widgets -lQt5Gui -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /software/common/qt-5.0.1/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = boggleboard.cpp \
		boggleplayer.cpp \
		boggleutil.cpp \
		main.cpp \
		mainwindow.cpp \
		moc_mainwindow.cpp
OBJECTS       = boggleboard.o \
		boggleplayer.o \
		boggleutil.o \
		main.o \
		mainwindow.o \
		moc_mainwindow.o
DIST          = /software/common/qt-5.0.1/mkspecs/features/spec_pre.prf \
		/software/common/qt-5.0.1/mkspecs/common/shell-unix.conf \
		/software/common/qt-5.0.1/mkspecs/common/unix.conf \
		/software/common/qt-5.0.1/mkspecs/common/linux.conf \
		/software/common/qt-5.0.1/mkspecs/common/gcc-base.conf \
		/software/common/qt-5.0.1/mkspecs/common/gcc-base-unix.conf \
		/software/common/qt-5.0.1/mkspecs/common/g++-base.conf \
		/software/common/qt-5.0.1/mkspecs/common/g++-unix.conf \
		/software/common/qt-5.0.1/mkspecs/qconfig.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_bootstrap.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_clucene.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_concurrent.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_core.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_dbus.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_declarative.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_designer.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_designercomponents.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_gui.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_help.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_multimedia.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_network.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_opengl.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_platformsupport.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_printsupport.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qml.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qmldevtools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qmltest.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_quick.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_quickparticles.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_script.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_scripttools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_sql.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_svg.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_testlib.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_uitools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_v8.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_widgets.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_xml.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/software/common/qt-5.0.1/mkspecs/features/qt_functions.prf \
		/software/common/qt-5.0.1/mkspecs/features/qt_config.prf \
		/software/common/qt-5.0.1/mkspecs/linux-g++/qmake.conf \
		/software/common/qt-5.0.1/mkspecs/features/spec_post.prf \
		/software/common/qt-5.0.1/mkspecs/features/exclusive_builds.prf \
		/software/common/qt-5.0.1/mkspecs/features/default_pre.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/default_pre.prf \
		/software/common/qt-5.0.1/mkspecs/features/release.prf \
		/software/common/qt-5.0.1/mkspecs/features/default_post.prf \
		/software/common/qt-5.0.1/mkspecs/features/shared.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/gdb_dwarf_index.prf \
		/software/common/qt-5.0.1/mkspecs/features/warn_on.prf \
		/software/common/qt-5.0.1/mkspecs/features/qt.prf \
		/software/common/qt-5.0.1/mkspecs/features/resources.prf \
		/software/common/qt-5.0.1/mkspecs/features/moc.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/opengl.prf \
		/software/common/qt-5.0.1/mkspecs/features/uic.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/thread.prf \
		/software/common/qt-5.0.1/mkspecs/features/wayland-scanner.prf \
		/software/common/qt-5.0.1/mkspecs/features/testcase_targets.prf \
		/software/common/qt-5.0.1/mkspecs/features/exceptions.prf \
		/software/common/qt-5.0.1/mkspecs/features/yacc.prf \
		/software/common/qt-5.0.1/mkspecs/features/lex.prf \
		pa4-cyc059-gus011.pro \
		pa4-cyc059-gus011.pro
QMAKE_TARGET  = pa4-cyc059-gus011
DESTDIR       = 
TARGET        = pa4-cyc059-gus011


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: pa4-cyc059-gus011.pro /software/common/qt-5.0.1/mkspecs/linux-g++/qmake.conf /software/common/qt-5.0.1/mkspecs/features/spec_pre.prf \
		/software/common/qt-5.0.1/mkspecs/common/shell-unix.conf \
		/software/common/qt-5.0.1/mkspecs/common/unix.conf \
		/software/common/qt-5.0.1/mkspecs/common/linux.conf \
		/software/common/qt-5.0.1/mkspecs/common/gcc-base.conf \
		/software/common/qt-5.0.1/mkspecs/common/gcc-base-unix.conf \
		/software/common/qt-5.0.1/mkspecs/common/g++-base.conf \
		/software/common/qt-5.0.1/mkspecs/common/g++-unix.conf \
		/software/common/qt-5.0.1/mkspecs/qconfig.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_bootstrap.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_clucene.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_concurrent.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_core.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_dbus.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_declarative.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_designer.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_designercomponents.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_gui.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_help.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_multimedia.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_network.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_opengl.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_platformsupport.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_printsupport.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qml.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qmldevtools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qmltest.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_quick.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_quickparticles.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_script.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_scripttools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_sql.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_svg.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_testlib.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_uitools.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_v8.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_widgets.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_xml.pri \
		/software/common/qt-5.0.1/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/software/common/qt-5.0.1/mkspecs/features/qt_functions.prf \
		/software/common/qt-5.0.1/mkspecs/features/qt_config.prf \
		/software/common/qt-5.0.1/mkspecs/linux-g++/qmake.conf \
		/software/common/qt-5.0.1/mkspecs/features/spec_post.prf \
		/software/common/qt-5.0.1/mkspecs/features/exclusive_builds.prf \
		/software/common/qt-5.0.1/mkspecs/features/default_pre.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/default_pre.prf \
		/software/common/qt-5.0.1/mkspecs/features/release.prf \
		/software/common/qt-5.0.1/mkspecs/features/default_post.prf \
		/software/common/qt-5.0.1/mkspecs/features/shared.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/gdb_dwarf_index.prf \
		/software/common/qt-5.0.1/mkspecs/features/warn_on.prf \
		/software/common/qt-5.0.1/mkspecs/features/qt.prf \
		/software/common/qt-5.0.1/mkspecs/features/resources.prf \
		/software/common/qt-5.0.1/mkspecs/features/moc.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/opengl.prf \
		/software/common/qt-5.0.1/mkspecs/features/uic.prf \
		/software/common/qt-5.0.1/mkspecs/features/unix/thread.prf \
		/software/common/qt-5.0.1/mkspecs/features/wayland-scanner.prf \
		/software/common/qt-5.0.1/mkspecs/features/testcase_targets.prf \
		/software/common/qt-5.0.1/mkspecs/features/exceptions.prf \
		/software/common/qt-5.0.1/mkspecs/features/yacc.prf \
		/software/common/qt-5.0.1/mkspecs/features/lex.prf \
		pa4-cyc059-gus011.pro \
		/software/common/qt-5.0.1/lib/libQt5Widgets.prl \
		/software/common/qt-5.0.1/lib/libQt5Gui.prl \
		/software/common/qt-5.0.1/lib/libQt5Core.prl
	$(QMAKE) -o Makefile pa4-cyc059-gus011.pro
/software/common/qt-5.0.1/mkspecs/features/spec_pre.prf:
/software/common/qt-5.0.1/mkspecs/common/shell-unix.conf:
/software/common/qt-5.0.1/mkspecs/common/unix.conf:
/software/common/qt-5.0.1/mkspecs/common/linux.conf:
/software/common/qt-5.0.1/mkspecs/common/gcc-base.conf:
/software/common/qt-5.0.1/mkspecs/common/gcc-base-unix.conf:
/software/common/qt-5.0.1/mkspecs/common/g++-base.conf:
/software/common/qt-5.0.1/mkspecs/common/g++-unix.conf:
/software/common/qt-5.0.1/mkspecs/qconfig.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_bootstrap.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_clucene.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_concurrent.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_core.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_dbus.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_declarative.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_designer.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_designercomponents.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_gui.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_help.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_multimedia.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_multimediawidgets.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_network.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_opengl.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_platformsupport.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_printsupport.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qml.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qmldevtools.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qmltest.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_qtmultimediaquicktools.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_quick.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_quickparticles.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_script.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_scripttools.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_sql.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_svg.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_testlib.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_uitools.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_v8.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_widgets.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_xml.pri:
/software/common/qt-5.0.1/mkspecs/modules/qt_lib_xmlpatterns.pri:
/software/common/qt-5.0.1/mkspecs/features/qt_functions.prf:
/software/common/qt-5.0.1/mkspecs/features/qt_config.prf:
/software/common/qt-5.0.1/mkspecs/linux-g++/qmake.conf:
/software/common/qt-5.0.1/mkspecs/features/spec_post.prf:
/software/common/qt-5.0.1/mkspecs/features/exclusive_builds.prf:
/software/common/qt-5.0.1/mkspecs/features/default_pre.prf:
/software/common/qt-5.0.1/mkspecs/features/unix/default_pre.prf:
/software/common/qt-5.0.1/mkspecs/features/release.prf:
/software/common/qt-5.0.1/mkspecs/features/default_post.prf:
/software/common/qt-5.0.1/mkspecs/features/shared.prf:
/software/common/qt-5.0.1/mkspecs/features/unix/gdb_dwarf_index.prf:
/software/common/qt-5.0.1/mkspecs/features/warn_on.prf:
/software/common/qt-5.0.1/mkspecs/features/qt.prf:
/software/common/qt-5.0.1/mkspecs/features/resources.prf:
/software/common/qt-5.0.1/mkspecs/features/moc.prf:
/software/common/qt-5.0.1/mkspecs/features/unix/opengl.prf:
/software/common/qt-5.0.1/mkspecs/features/uic.prf:
/software/common/qt-5.0.1/mkspecs/features/unix/thread.prf:
/software/common/qt-5.0.1/mkspecs/features/wayland-scanner.prf:
/software/common/qt-5.0.1/mkspecs/features/testcase_targets.prf:
/software/common/qt-5.0.1/mkspecs/features/exceptions.prf:
/software/common/qt-5.0.1/mkspecs/features/yacc.prf:
/software/common/qt-5.0.1/mkspecs/features/lex.prf:
pa4-cyc059-gus011.pro:
/software/common/qt-5.0.1/lib/libQt5Widgets.prl:
/software/common/qt-5.0.1/lib/libQt5Gui.prl:
/software/common/qt-5.0.1/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile pa4-cyc059-gus011.pro

qmake_all: FORCE

dist: 
	@test -d .tmp/pa4-cyc059-gus0111.0.0 || $(MKDIR) .tmp/pa4-cyc059-gus0111.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/pa4-cyc059-gus0111.0.0/ && $(COPY_FILE) --parents baseboggleplayer.h boggleboard.h boggleplayer.h boggleutil.h mainwindow.h StopWatch.hpp ui_mainwindow.h ui_mainwindow.hpp .tmp/pa4-cyc059-gus0111.0.0/ && $(COPY_FILE) --parents boggleboard.cpp boggleplayer.cpp boggleutil.cpp main.cpp mainwindow.cpp perftest.cpp unittest.cpp .tmp/pa4-cyc059-gus0111.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/pa4-cyc059-gus0111.0.0/ && (cd `dirname .tmp/pa4-cyc059-gus0111.0.0` && $(TAR) pa4-cyc059-gus0111.0.0.tar pa4-cyc059-gus0111.0.0 && $(COMPRESS) pa4-cyc059-gus0111.0.0.tar) && $(MOVE) `dirname .tmp/pa4-cyc059-gus0111.0.0`/pa4-cyc059-gus0111.0.0.tar.gz . && $(DEL_FILE) -r .tmp/pa4-cyc059-gus0111.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_wayland-server-header_make_all:
compiler_wayland-server-header_clean:
compiler_wayland-client-header_make_all:
compiler_wayland-client-header_clean:
compiler_moc_header_make_all: moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp
moc_mainwindow.cpp: boggleboard.h \
		boggleplayer.h \
		baseboggleplayer.h \
		boggleutil.h \
		/software/common/qt-5.0.1/include/QtWidgets/QLabel \
		/software/common/qt-5.0.1/include/QtWidgets/qlabel.h \
		/software/common/qt-5.0.1/include/QtWidgets/qframe.h \
		/software/common/qt-5.0.1/include/QtWidgets/qwidget.h \
		/software/common/qt-5.0.1/include/QtGui/qwindowdefs.h \
		/software/common/qt-5.0.1/include/QtCore/qglobal.h \
		/software/common/qt-5.0.1/include/QtCore/qconfig.h \
		/software/common/qt-5.0.1/include/QtCore/qfeatures.h \
		/software/common/qt-5.0.1/include/QtCore/qsystemdetection.h \
		/software/common/qt-5.0.1/include/QtCore/qcompilerdetection.h \
		/software/common/qt-5.0.1/include/QtCore/qprocessordetection.h \
		/software/common/qt-5.0.1/include/QtCore/qlogging.h \
		/software/common/qt-5.0.1/include/QtCore/qflags.h \
		/software/common/qt-5.0.1/include/QtCore/qtypeinfo.h \
		/software/common/qt-5.0.1/include/QtCore/qtypetraits.h \
		/software/common/qt-5.0.1/include/QtCore/qsysinfo.h \
		/software/common/qt-5.0.1/include/QtCore/qobjectdefs.h \
		/software/common/qt-5.0.1/include/QtCore/qnamespace.h \
		/software/common/qt-5.0.1/include/QtCore/qobjectdefs_impl.h \
		/software/common/qt-5.0.1/include/QtGui/qwindowdefs_win.h \
		/software/common/qt-5.0.1/include/QtCore/qobject.h \
		/software/common/qt-5.0.1/include/QtCore/qstring.h \
		/software/common/qt-5.0.1/include/QtCore/qchar.h \
		/software/common/qt-5.0.1/include/QtCore/qbytearray.h \
		/software/common/qt-5.0.1/include/QtCore/qrefcount.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qbasicatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_bootstrap.h \
		/software/common/qt-5.0.1/include/QtCore/qgenericatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_msvc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_integrity.h \
		/software/common/qt-5.0.1/include/QtCore/qoldbasicatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_vxworks.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_power.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_alpha.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv7.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv6.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv5.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_bfin.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_ia64.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_mips.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_s390.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_sh4a.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_sparc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_x86.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_cxx11.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_gcc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_unix.h \
		/software/common/qt-5.0.1/include/QtCore/qarraydata.h \
		/software/common/qt-5.0.1/include/QtCore/qstringbuilder.h \
		/software/common/qt-5.0.1/include/QtCore/qlist.h \
		/software/common/qt-5.0.1/include/QtCore/qalgorithms.h \
		/software/common/qt-5.0.1/include/QtCore/qiterator.h \
		/software/common/qt-5.0.1/include/QtCore/qcoreevent.h \
		/software/common/qt-5.0.1/include/QtCore/qscopedpointer.h \
		/software/common/qt-5.0.1/include/QtCore/qmetatype.h \
		/software/common/qt-5.0.1/include/QtCore/qvarlengtharray.h \
		/software/common/qt-5.0.1/include/QtCore/qcontainerfwd.h \
		/software/common/qt-5.0.1/include/QtCore/qisenum.h \
		/software/common/qt-5.0.1/include/QtCore/qobject_impl.h \
		/software/common/qt-5.0.1/include/QtCore/qmargins.h \
		/software/common/qt-5.0.1/include/QtGui/qpaintdevice.h \
		/software/common/qt-5.0.1/include/QtCore/qrect.h \
		/software/common/qt-5.0.1/include/QtCore/qsize.h \
		/software/common/qt-5.0.1/include/QtCore/qpoint.h \
		/software/common/qt-5.0.1/include/QtGui/qpalette.h \
		/software/common/qt-5.0.1/include/QtGui/qcolor.h \
		/software/common/qt-5.0.1/include/QtGui/qrgb.h \
		/software/common/qt-5.0.1/include/QtCore/qstringlist.h \
		/software/common/qt-5.0.1/include/QtCore/qdatastream.h \
		/software/common/qt-5.0.1/include/QtCore/qiodevice.h \
		/software/common/qt-5.0.1/include/QtCore/qpair.h \
		/software/common/qt-5.0.1/include/QtCore/qregexp.h \
		/software/common/qt-5.0.1/include/QtCore/qstringmatcher.h \
		/software/common/qt-5.0.1/include/QtGui/qbrush.h \
		/software/common/qt-5.0.1/include/QtCore/qvector.h \
		/software/common/qt-5.0.1/include/QtGui/qmatrix.h \
		/software/common/qt-5.0.1/include/QtGui/qpolygon.h \
		/software/common/qt-5.0.1/include/QtGui/qregion.h \
		/software/common/qt-5.0.1/include/QtCore/qline.h \
		/software/common/qt-5.0.1/include/QtGui/qtransform.h \
		/software/common/qt-5.0.1/include/QtGui/qpainterpath.h \
		/software/common/qt-5.0.1/include/QtGui/qimage.h \
		/software/common/qt-5.0.1/include/QtGui/qpixmap.h \
		/software/common/qt-5.0.1/include/QtCore/qsharedpointer.h \
		/software/common/qt-5.0.1/include/QtCore/qshareddata.h \
		/software/common/qt-5.0.1/include/QtCore/qsharedpointer_impl.h \
		/software/common/qt-5.0.1/include/QtCore/qhash.h \
		/software/common/qt-5.0.1/include/QtGui/qfont.h \
		/software/common/qt-5.0.1/include/QtGui/qfontmetrics.h \
		/software/common/qt-5.0.1/include/QtGui/qfontinfo.h \
		/software/common/qt-5.0.1/include/QtWidgets/qsizepolicy.h \
		/software/common/qt-5.0.1/include/QtGui/qcursor.h \
		/software/common/qt-5.0.1/include/QtGui/qkeysequence.h \
		/software/common/qt-5.0.1/include/QtGui/qevent.h \
		/software/common/qt-5.0.1/include/QtCore/qvariant.h \
		/software/common/qt-5.0.1/include/QtCore/qmap.h \
		/software/common/qt-5.0.1/include/QtCore/qdebug.h \
		/software/common/qt-5.0.1/include/QtCore/qtextstream.h \
		/software/common/qt-5.0.1/include/QtCore/qlocale.h \
		/software/common/qt-5.0.1/include/QtCore/qset.h \
		/software/common/qt-5.0.1/include/QtCore/qcontiguouscache.h \
		/software/common/qt-5.0.1/include/QtCore/qurl.h \
		/software/common/qt-5.0.1/include/QtCore/qurlquery.h \
		/software/common/qt-5.0.1/include/QtCore/qfile.h \
		/software/common/qt-5.0.1/include/QtCore/qfiledevice.h \
		/software/common/qt-5.0.1/include/QtGui/qvector2d.h \
		/software/common/qt-5.0.1/include/QtGui/qtouchdevice.h \
		/software/common/qt-5.0.1/include/QtWidgets/QMainWindow \
		/software/common/qt-5.0.1/include/QtWidgets/qmainwindow.h \
		/software/common/qt-5.0.1/include/QtWidgets/qtabwidget.h \
		/software/common/qt-5.0.1/include/QtGui/qicon.h \
		mainwindow.h
	/software/common/qt-5.0.1/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

compiler_wayland-code_make_all:
compiler_wayland-code_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui
	/software/common/qt-5.0.1/bin/uic mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

boggleboard.o: boggleboard.cpp boggleboard.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o boggleboard.o boggleboard.cpp

boggleplayer.o: boggleplayer.cpp boggleplayer.h \
		baseboggleplayer.h \
		boggleutil.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o boggleplayer.o boggleplayer.cpp

boggleutil.o: boggleutil.cpp boggleutil.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o boggleutil.o boggleutil.cpp

main.o: main.cpp /software/common/qt-5.0.1/include/QtWidgets/QApplication \
		/software/common/qt-5.0.1/include/QtWidgets/qapplication.h \
		/software/common/qt-5.0.1/include/QtCore/qcoreapplication.h \
		/software/common/qt-5.0.1/include/QtCore/qobject.h \
		/software/common/qt-5.0.1/include/QtCore/qobjectdefs.h \
		/software/common/qt-5.0.1/include/QtCore/qnamespace.h \
		/software/common/qt-5.0.1/include/QtCore/qglobal.h \
		/software/common/qt-5.0.1/include/QtCore/qconfig.h \
		/software/common/qt-5.0.1/include/QtCore/qfeatures.h \
		/software/common/qt-5.0.1/include/QtCore/qsystemdetection.h \
		/software/common/qt-5.0.1/include/QtCore/qcompilerdetection.h \
		/software/common/qt-5.0.1/include/QtCore/qprocessordetection.h \
		/software/common/qt-5.0.1/include/QtCore/qlogging.h \
		/software/common/qt-5.0.1/include/QtCore/qflags.h \
		/software/common/qt-5.0.1/include/QtCore/qtypeinfo.h \
		/software/common/qt-5.0.1/include/QtCore/qtypetraits.h \
		/software/common/qt-5.0.1/include/QtCore/qsysinfo.h \
		/software/common/qt-5.0.1/include/QtCore/qobjectdefs_impl.h \
		/software/common/qt-5.0.1/include/QtCore/qstring.h \
		/software/common/qt-5.0.1/include/QtCore/qchar.h \
		/software/common/qt-5.0.1/include/QtCore/qbytearray.h \
		/software/common/qt-5.0.1/include/QtCore/qrefcount.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qbasicatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_bootstrap.h \
		/software/common/qt-5.0.1/include/QtCore/qgenericatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_msvc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_integrity.h \
		/software/common/qt-5.0.1/include/QtCore/qoldbasicatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_vxworks.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_power.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_alpha.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv7.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv6.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv5.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_bfin.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_ia64.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_mips.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_s390.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_sh4a.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_sparc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_x86.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_cxx11.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_gcc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_unix.h \
		/software/common/qt-5.0.1/include/QtCore/qarraydata.h \
		/software/common/qt-5.0.1/include/QtCore/qstringbuilder.h \
		/software/common/qt-5.0.1/include/QtCore/qlist.h \
		/software/common/qt-5.0.1/include/QtCore/qalgorithms.h \
		/software/common/qt-5.0.1/include/QtCore/qiterator.h \
		/software/common/qt-5.0.1/include/QtCore/qcoreevent.h \
		/software/common/qt-5.0.1/include/QtCore/qscopedpointer.h \
		/software/common/qt-5.0.1/include/QtCore/qmetatype.h \
		/software/common/qt-5.0.1/include/QtCore/qvarlengtharray.h \
		/software/common/qt-5.0.1/include/QtCore/qcontainerfwd.h \
		/software/common/qt-5.0.1/include/QtCore/qisenum.h \
		/software/common/qt-5.0.1/include/QtCore/qobject_impl.h \
		/software/common/qt-5.0.1/include/QtCore/qeventloop.h \
		/software/common/qt-5.0.1/include/QtGui/qwindowdefs.h \
		/software/common/qt-5.0.1/include/QtGui/qwindowdefs_win.h \
		/software/common/qt-5.0.1/include/QtCore/qpoint.h \
		/software/common/qt-5.0.1/include/QtCore/qsize.h \
		/software/common/qt-5.0.1/include/QtGui/qcursor.h \
		/software/common/qt-5.0.1/include/QtWidgets/qdesktopwidget.h \
		/software/common/qt-5.0.1/include/QtWidgets/qwidget.h \
		/software/common/qt-5.0.1/include/QtCore/qmargins.h \
		/software/common/qt-5.0.1/include/QtGui/qpaintdevice.h \
		/software/common/qt-5.0.1/include/QtCore/qrect.h \
		/software/common/qt-5.0.1/include/QtGui/qpalette.h \
		/software/common/qt-5.0.1/include/QtGui/qcolor.h \
		/software/common/qt-5.0.1/include/QtGui/qrgb.h \
		/software/common/qt-5.0.1/include/QtCore/qstringlist.h \
		/software/common/qt-5.0.1/include/QtCore/qdatastream.h \
		/software/common/qt-5.0.1/include/QtCore/qiodevice.h \
		/software/common/qt-5.0.1/include/QtCore/qpair.h \
		/software/common/qt-5.0.1/include/QtCore/qregexp.h \
		/software/common/qt-5.0.1/include/QtCore/qstringmatcher.h \
		/software/common/qt-5.0.1/include/QtGui/qbrush.h \
		/software/common/qt-5.0.1/include/QtCore/qvector.h \
		/software/common/qt-5.0.1/include/QtGui/qmatrix.h \
		/software/common/qt-5.0.1/include/QtGui/qpolygon.h \
		/software/common/qt-5.0.1/include/QtGui/qregion.h \
		/software/common/qt-5.0.1/include/QtCore/qline.h \
		/software/common/qt-5.0.1/include/QtGui/qtransform.h \
		/software/common/qt-5.0.1/include/QtGui/qpainterpath.h \
		/software/common/qt-5.0.1/include/QtGui/qimage.h \
		/software/common/qt-5.0.1/include/QtGui/qpixmap.h \
		/software/common/qt-5.0.1/include/QtCore/qsharedpointer.h \
		/software/common/qt-5.0.1/include/QtCore/qshareddata.h \
		/software/common/qt-5.0.1/include/QtCore/qsharedpointer_impl.h \
		/software/common/qt-5.0.1/include/QtCore/qhash.h \
		/software/common/qt-5.0.1/include/QtGui/qfont.h \
		/software/common/qt-5.0.1/include/QtGui/qfontmetrics.h \
		/software/common/qt-5.0.1/include/QtGui/qfontinfo.h \
		/software/common/qt-5.0.1/include/QtWidgets/qsizepolicy.h \
		/software/common/qt-5.0.1/include/QtGui/qkeysequence.h \
		/software/common/qt-5.0.1/include/QtGui/qevent.h \
		/software/common/qt-5.0.1/include/QtCore/qvariant.h \
		/software/common/qt-5.0.1/include/QtCore/qmap.h \
		/software/common/qt-5.0.1/include/QtCore/qdebug.h \
		/software/common/qt-5.0.1/include/QtCore/qtextstream.h \
		/software/common/qt-5.0.1/include/QtCore/qlocale.h \
		/software/common/qt-5.0.1/include/QtCore/qset.h \
		/software/common/qt-5.0.1/include/QtCore/qcontiguouscache.h \
		/software/common/qt-5.0.1/include/QtCore/qurl.h \
		/software/common/qt-5.0.1/include/QtCore/qurlquery.h \
		/software/common/qt-5.0.1/include/QtCore/qfile.h \
		/software/common/qt-5.0.1/include/QtCore/qfiledevice.h \
		/software/common/qt-5.0.1/include/QtGui/qvector2d.h \
		/software/common/qt-5.0.1/include/QtGui/qtouchdevice.h \
		/software/common/qt-5.0.1/include/QtGui/qguiapplication.h \
		/software/common/qt-5.0.1/include/QtGui/qinputmethod.h \
		mainwindow.h \
		boggleboard.h \
		boggleplayer.h \
		baseboggleplayer.h \
		boggleutil.h \
		/software/common/qt-5.0.1/include/QtWidgets/QLabel \
		/software/common/qt-5.0.1/include/QtWidgets/qlabel.h \
		/software/common/qt-5.0.1/include/QtWidgets/qframe.h \
		/software/common/qt-5.0.1/include/QtWidgets/QMainWindow \
		/software/common/qt-5.0.1/include/QtWidgets/qmainwindow.h \
		/software/common/qt-5.0.1/include/QtWidgets/qtabwidget.h \
		/software/common/qt-5.0.1/include/QtGui/qicon.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		boggleboard.h \
		boggleplayer.h \
		baseboggleplayer.h \
		boggleutil.h \
		/software/common/qt-5.0.1/include/QtWidgets/QLabel \
		/software/common/qt-5.0.1/include/QtWidgets/qlabel.h \
		/software/common/qt-5.0.1/include/QtWidgets/qframe.h \
		/software/common/qt-5.0.1/include/QtWidgets/qwidget.h \
		/software/common/qt-5.0.1/include/QtGui/qwindowdefs.h \
		/software/common/qt-5.0.1/include/QtCore/qglobal.h \
		/software/common/qt-5.0.1/include/QtCore/qconfig.h \
		/software/common/qt-5.0.1/include/QtCore/qfeatures.h \
		/software/common/qt-5.0.1/include/QtCore/qsystemdetection.h \
		/software/common/qt-5.0.1/include/QtCore/qcompilerdetection.h \
		/software/common/qt-5.0.1/include/QtCore/qprocessordetection.h \
		/software/common/qt-5.0.1/include/QtCore/qlogging.h \
		/software/common/qt-5.0.1/include/QtCore/qflags.h \
		/software/common/qt-5.0.1/include/QtCore/qtypeinfo.h \
		/software/common/qt-5.0.1/include/QtCore/qtypetraits.h \
		/software/common/qt-5.0.1/include/QtCore/qsysinfo.h \
		/software/common/qt-5.0.1/include/QtCore/qobjectdefs.h \
		/software/common/qt-5.0.1/include/QtCore/qnamespace.h \
		/software/common/qt-5.0.1/include/QtCore/qobjectdefs_impl.h \
		/software/common/qt-5.0.1/include/QtGui/qwindowdefs_win.h \
		/software/common/qt-5.0.1/include/QtCore/qobject.h \
		/software/common/qt-5.0.1/include/QtCore/qstring.h \
		/software/common/qt-5.0.1/include/QtCore/qchar.h \
		/software/common/qt-5.0.1/include/QtCore/qbytearray.h \
		/software/common/qt-5.0.1/include/QtCore/qrefcount.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qbasicatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_bootstrap.h \
		/software/common/qt-5.0.1/include/QtCore/qgenericatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_msvc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_integrity.h \
		/software/common/qt-5.0.1/include/QtCore/qoldbasicatomic.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_vxworks.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_power.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_alpha.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv7.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv6.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_armv5.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_bfin.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_ia64.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_mips.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_s390.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_sh4a.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_sparc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_x86.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_cxx11.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_gcc.h \
		/software/common/qt-5.0.1/include/QtCore/qatomic_unix.h \
		/software/common/qt-5.0.1/include/QtCore/qarraydata.h \
		/software/common/qt-5.0.1/include/QtCore/qstringbuilder.h \
		/software/common/qt-5.0.1/include/QtCore/qlist.h \
		/software/common/qt-5.0.1/include/QtCore/qalgorithms.h \
		/software/common/qt-5.0.1/include/QtCore/qiterator.h \
		/software/common/qt-5.0.1/include/QtCore/qcoreevent.h \
		/software/common/qt-5.0.1/include/QtCore/qscopedpointer.h \
		/software/common/qt-5.0.1/include/QtCore/qmetatype.h \
		/software/common/qt-5.0.1/include/QtCore/qvarlengtharray.h \
		/software/common/qt-5.0.1/include/QtCore/qcontainerfwd.h \
		/software/common/qt-5.0.1/include/QtCore/qisenum.h \
		/software/common/qt-5.0.1/include/QtCore/qobject_impl.h \
		/software/common/qt-5.0.1/include/QtCore/qmargins.h \
		/software/common/qt-5.0.1/include/QtGui/qpaintdevice.h \
		/software/common/qt-5.0.1/include/QtCore/qrect.h \
		/software/common/qt-5.0.1/include/QtCore/qsize.h \
		/software/common/qt-5.0.1/include/QtCore/qpoint.h \
		/software/common/qt-5.0.1/include/QtGui/qpalette.h \
		/software/common/qt-5.0.1/include/QtGui/qcolor.h \
		/software/common/qt-5.0.1/include/QtGui/qrgb.h \
		/software/common/qt-5.0.1/include/QtCore/qstringlist.h \
		/software/common/qt-5.0.1/include/QtCore/qdatastream.h \
		/software/common/qt-5.0.1/include/QtCore/qiodevice.h \
		/software/common/qt-5.0.1/include/QtCore/qpair.h \
		/software/common/qt-5.0.1/include/QtCore/qregexp.h \
		/software/common/qt-5.0.1/include/QtCore/qstringmatcher.h \
		/software/common/qt-5.0.1/include/QtGui/qbrush.h \
		/software/common/qt-5.0.1/include/QtCore/qvector.h \
		/software/common/qt-5.0.1/include/QtGui/qmatrix.h \
		/software/common/qt-5.0.1/include/QtGui/qpolygon.h \
		/software/common/qt-5.0.1/include/QtGui/qregion.h \
		/software/common/qt-5.0.1/include/QtCore/qline.h \
		/software/common/qt-5.0.1/include/QtGui/qtransform.h \
		/software/common/qt-5.0.1/include/QtGui/qpainterpath.h \
		/software/common/qt-5.0.1/include/QtGui/qimage.h \
		/software/common/qt-5.0.1/include/QtGui/qpixmap.h \
		/software/common/qt-5.0.1/include/QtCore/qsharedpointer.h \
		/software/common/qt-5.0.1/include/QtCore/qshareddata.h \
		/software/common/qt-5.0.1/include/QtCore/qsharedpointer_impl.h \
		/software/common/qt-5.0.1/include/QtCore/qhash.h \
		/software/common/qt-5.0.1/include/QtGui/qfont.h \
		/software/common/qt-5.0.1/include/QtGui/qfontmetrics.h \
		/software/common/qt-5.0.1/include/QtGui/qfontinfo.h \
		/software/common/qt-5.0.1/include/QtWidgets/qsizepolicy.h \
		/software/common/qt-5.0.1/include/QtGui/qcursor.h \
		/software/common/qt-5.0.1/include/QtGui/qkeysequence.h \
		/software/common/qt-5.0.1/include/QtGui/qevent.h \
		/software/common/qt-5.0.1/include/QtCore/qvariant.h \
		/software/common/qt-5.0.1/include/QtCore/qmap.h \
		/software/common/qt-5.0.1/include/QtCore/qdebug.h \
		/software/common/qt-5.0.1/include/QtCore/qtextstream.h \
		/software/common/qt-5.0.1/include/QtCore/qlocale.h \
		/software/common/qt-5.0.1/include/QtCore/qset.h \
		/software/common/qt-5.0.1/include/QtCore/qcontiguouscache.h \
		/software/common/qt-5.0.1/include/QtCore/qurl.h \
		/software/common/qt-5.0.1/include/QtCore/qurlquery.h \
		/software/common/qt-5.0.1/include/QtCore/qfile.h \
		/software/common/qt-5.0.1/include/QtCore/qfiledevice.h \
		/software/common/qt-5.0.1/include/QtGui/qvector2d.h \
		/software/common/qt-5.0.1/include/QtGui/qtouchdevice.h \
		/software/common/qt-5.0.1/include/QtWidgets/QMainWindow \
		/software/common/qt-5.0.1/include/QtWidgets/qmainwindow.h \
		/software/common/qt-5.0.1/include/QtWidgets/qtabwidget.h \
		/software/common/qt-5.0.1/include/QtGui/qicon.h \
		ui_mainwindow.h \
		/software/common/qt-5.0.1/include/QtCore/QVariant \
		/software/common/qt-5.0.1/include/QtWidgets/QAction \
		/software/common/qt-5.0.1/include/QtWidgets/qaction.h \
		/software/common/qt-5.0.1/include/QtWidgets/qactiongroup.h \
		/software/common/qt-5.0.1/include/QtWidgets/QApplication \
		/software/common/qt-5.0.1/include/QtWidgets/qapplication.h \
		/software/common/qt-5.0.1/include/QtCore/qcoreapplication.h \
		/software/common/qt-5.0.1/include/QtCore/qeventloop.h \
		/software/common/qt-5.0.1/include/QtWidgets/qdesktopwidget.h \
		/software/common/qt-5.0.1/include/QtGui/qguiapplication.h \
		/software/common/qt-5.0.1/include/QtGui/qinputmethod.h \
		/software/common/qt-5.0.1/include/QtWidgets/QButtonGroup \
		/software/common/qt-5.0.1/include/QtWidgets/qbuttongroup.h \
		/software/common/qt-5.0.1/include/QtWidgets/QGridLayout \
		/software/common/qt-5.0.1/include/QtWidgets/qgridlayout.h \
		/software/common/qt-5.0.1/include/QtWidgets/qlayout.h \
		/software/common/qt-5.0.1/include/QtWidgets/qlayoutitem.h \
		/software/common/qt-5.0.1/include/QtWidgets/qboxlayout.h \
		/software/common/qt-5.0.1/include/QtWidgets/QGroupBox \
		/software/common/qt-5.0.1/include/QtWidgets/qgroupbox.h \
		/software/common/qt-5.0.1/include/QtWidgets/QHBoxLayout \
		/software/common/qt-5.0.1/include/QtWidgets/QHeaderView \
		/software/common/qt-5.0.1/include/QtWidgets/qheaderview.h \
		/software/common/qt-5.0.1/include/QtWidgets/qabstractitemview.h \
		/software/common/qt-5.0.1/include/QtWidgets/qabstractscrollarea.h \
		/software/common/qt-5.0.1/include/QtCore/qabstractitemmodel.h \
		/software/common/qt-5.0.1/include/QtCore/qitemselectionmodel.h \
		/software/common/qt-5.0.1/include/QtWidgets/qabstractitemdelegate.h \
		/software/common/qt-5.0.1/include/QtWidgets/qstyleoption.h \
		/software/common/qt-5.0.1/include/QtWidgets/qabstractspinbox.h \
		/software/common/qt-5.0.1/include/QtGui/qvalidator.h \
		/software/common/qt-5.0.1/include/QtWidgets/qslider.h \
		/software/common/qt-5.0.1/include/QtWidgets/qabstractslider.h \
		/software/common/qt-5.0.1/include/QtWidgets/qstyle.h \
		/software/common/qt-5.0.1/include/QtWidgets/qtabbar.h \
		/software/common/qt-5.0.1/include/QtWidgets/qrubberband.h \
		/software/common/qt-5.0.1/include/QtWidgets/QLineEdit \
		/software/common/qt-5.0.1/include/QtWidgets/qlineedit.h \
		/software/common/qt-5.0.1/include/QtGui/qtextcursor.h \
		/software/common/qt-5.0.1/include/QtGui/qtextformat.h \
		/software/common/qt-5.0.1/include/QtGui/qpen.h \
		/software/common/qt-5.0.1/include/QtGui/qtextoption.h \
		/software/common/qt-5.0.1/include/QtWidgets/QListWidget \
		/software/common/qt-5.0.1/include/QtWidgets/qlistwidget.h \
		/software/common/qt-5.0.1/include/QtWidgets/qlistview.h \
		/software/common/qt-5.0.1/include/QtWidgets/QMenu \
		/software/common/qt-5.0.1/include/QtWidgets/qmenu.h \
		/software/common/qt-5.0.1/include/QtWidgets/QMenuBar \
		/software/common/qt-5.0.1/include/QtWidgets/qmenubar.h \
		/software/common/qt-5.0.1/include/QtWidgets/QPushButton \
		/software/common/qt-5.0.1/include/QtWidgets/qpushbutton.h \
		/software/common/qt-5.0.1/include/QtWidgets/qabstractbutton.h \
		/software/common/qt-5.0.1/include/QtWidgets/QStatusBar \
		/software/common/qt-5.0.1/include/QtWidgets/qstatusbar.h \
		/software/common/qt-5.0.1/include/QtWidgets/QToolBar \
		/software/common/qt-5.0.1/include/QtWidgets/qtoolbar.h \
		/software/common/qt-5.0.1/include/QtWidgets/QWidget \
		/software/common/qt-5.0.1/include/QtWidgets/QMessageBox \
		/software/common/qt-5.0.1/include/QtWidgets/qmessagebox.h \
		/software/common/qt-5.0.1/include/QtWidgets/qdialog.h \
		/software/common/qt-5.0.1/include/QtGui/QResizeEvent
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

perftest.o: perftest.cpp boggleplayer.h \
		baseboggleplayer.h \
		boggleutil.h \
		StopWatch.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o perftest.o perftest.cpp

unittest.o: unittest.cpp boggleplayer.h \
		baseboggleplayer.h \
		boggleutil.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o unittest.o unittest.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

