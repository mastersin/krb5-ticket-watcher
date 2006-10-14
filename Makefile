#############################################################################
# Makefile for building: krb5-ticket-watcher
# Generated by qmake (1.07a) (Qt 3.3.4) on: Sat Oct 14 16:46:07 2006
# Project:  krb5-ticket-watcher.pro
# Template: app
# Command: $(QMAKE) -o Makefile krb5-ticket-watcher.pro
#############################################################################

####### Compiler, tools and options

CC       = gcc
CXX      = g++
LEX      = flex
YACC     = yacc
CFLAGS   = -pipe -O2 -fmessage-length=0 -Wall -D_FORTIFY_SOURCE=2 -g -DUSE_LIB64_PATHES -Wall -W -O2 -fmessage-length=0 -Wall -D_FORTIFY_SOURCE=2 -g -DUSE_LIB64_PATHES  -DDEBUG -DQT_NO_DEBUG -DQT_SHARED -DQT_TABLET_SUPPORT -DQT_THREAD_SUPPORT
CXXFLAGS = -pipe -O2 -fmessage-length=0 -Wall -D_FORTIFY_SOURCE=2 -g -DUSE_LIB64_PATHES -Wall -W -O2 -fmessage-length=0 -Wall -D_FORTIFY_SOURCE=2 -g -DUSE_LIB64_PATHES  -DDEBUG -DQT_NO_DEBUG -DQT_SHARED -DQT_TABLET_SUPPORT -DQT_THREAD_SUPPORT
LEXFLAGS = 
YACCFLAGS= -d
INCPATH  = -I/usr/lib/qt3/mkspecs/default -I. -I/usr/include -I$(QTDIR)/include
LINK     = g++
LFLAGS   = 
LIBS     = $(SUBLIBS) -L/usr/lib64/ -L$(QTDIR)/lib64/ -L/usr/X11R6/lib64/ -lkrb5 -lcom_err -lqt-mt -lXext -lX11 -lm
AR       = ar cqs
RANLIB   = 
MOC      = $(QTDIR)/bin/moc
UIC      = $(QTDIR)/bin/uic
QMAKE    = qmake
TAR      = tar -cf
GZIP     = gzip -9f
COPY     = cp -f
COPY_FILE= $(COPY)
COPY_DIR = $(COPY) -r
INSTALL_FILE= $(COPY_FILE)
INSTALL_DIR = $(COPY_DIR)
DEL_FILE = rm -f
SYMLINK  = ln -sf
DEL_DIR  = rmdir
MOVE     = mv -f
CHK_DIR_EXISTS= test -d
MKDIR    = mkdir -p

####### Output directory

OBJECTS_DIR = ./

####### Files

HEADERS = src/trayicon.h \
		src/krb5ticketwatcher.h
SOURCES = src/main.cpp \
		src/trayicon.cpp \
		src/trayicon_x11.cpp \
		src/krb5ticketwatcher.cpp
OBJECTS = main.o \
		trayicon.o \
		trayicon_x11.o \
		krb5ticketwatcher.o \
		pwdialog.o \
		pwchangedialog.o \
		mainwidget.o \
		kinitdialog.o
FORMS = src/pwdialog.ui \
		src/pwchangedialog.ui \
		src/mainwidget.ui \
		src/kinitdialog.ui
UICDECLS = src/pwdialog.h \
		src/pwchangedialog.h \
		src/mainwidget.h \
		src/kinitdialog.h
UICIMPLS = src/pwdialog.cpp \
		src/pwchangedialog.cpp \
		src/mainwidget.cpp \
		src/kinitdialog.cpp
SRCMOC   = src/moc_trayicon.cpp \
		src/moc_krb5ticketwatcher.cpp \
		src/moc_pwdialog.cpp \
		src/moc_pwchangedialog.cpp \
		src/moc_mainwidget.cpp \
		src/moc_kinitdialog.cpp
OBJMOC = moc_trayicon.o \
		moc_krb5ticketwatcher.o \
		moc_pwdialog.o \
		moc_pwchangedialog.o \
		moc_mainwidget.o \
		moc_kinitdialog.o
DIST	   = po/*.po \
		po/Makefile \
		Changes \
		News \
		COPYING \
		krb5-ticket-watcher.pro
QMAKE_TARGET = krb5-ticket-watcher
DESTDIR  = 
TARGET   = krb5-ticket-watcher

first: all
####### Implicit rules

.SUFFIXES: .c .o .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o $@ $<

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(UICDECLS) $(OBJECTS) $(OBJMOC)  qm
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJMOC) $(OBJCOMP) $(LIBS)

mocables: $(SRCMOC)
uicables: $(UICDECLS) $(UICIMPLS)

$(MOC): 
	( cd $(QTDIR)/src/moc && $(MAKE) )

Makefile: krb5-ticket-watcher.pro  /usr/lib/qt3/mkspecs/default/qmake.conf /usr/lib/qt3/lib64/libqt-mt.prl
	$(QMAKE) -o Makefile krb5-ticket-watcher.pro
qmake: 
	@$(QMAKE) -o Makefile krb5-ticket-watcher.pro

dist: 
	@mkdir -p .tmp/krb5-ticket-watcher && $(COPY_FILE) --parents $(SOURCES) $(HEADERS) $(FORMS) $(DIST) .tmp/krb5-ticket-watcher/ && $(COPY_FILE) --parents src/mainwidget.ui.h .tmp/krb5-ticket-watcher/ && ( cd `dirname .tmp/krb5-ticket-watcher` && $(TAR) krb5-ticket-watcher.tar krb5-ticket-watcher && $(GZIP) krb5-ticket-watcher.tar ) && $(MOVE) `dirname .tmp/krb5-ticket-watcher`/krb5-ticket-watcher.tar.gz . && $(DEL_FILE) -r .tmp/krb5-ticket-watcher

mocclean:
	-$(DEL_FILE) $(OBJMOC)
	-$(DEL_FILE) $(SRCMOC)

uiclean:
	-$(DEL_FILE) $(UICIMPLS) $(UICDECLS)

yaccclean:
lexclean:
clean: mocclean uiclean
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) src/*~ krb5-ticket-watcher-0.1.1.tar.bz2 krb5-ticket-watcher
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) $(TARGET)


qm:
	make -C po/ all

pot:
	make -C po/ pot

dist-bzip2:
	@mkdir -p .tmp/krb5-ticket-watcher-0.1.1 && $(COPY_FILE) --parents $(SOURCES) $(HEADERS) $(FORMS) $(DIST) .tmp/krb5-ticket-watcher-0.1.1/ && $(COPY_FILE) --parents src/mainwidget.ui.h .tmp/krb5-ticket-watcher-0.1.1/ && ( cd `dirname .tmp/krb5-ticket-watcher-0.1.1` && $(TAR) krb5-ticket-watcher-0.1.1.tar krb5-ticket-watcher-0.1.1 && bzip2 krb5-ticket-watcher-0.1.1.tar ) && $(MOVE) `dirname .tmp/krb5-ticket-watcher-0.1.1`/krb5-ticket-watcher-0.1.1.tar.bz2 . && $(DEL_FILE) -r .tmp/krb5-ticket-watcher-0.1.1

FORCE:

####### Compile

main.o: src/main.cpp src/krb5ticketwatcher.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o src/main.cpp

trayicon.o: src/trayicon.cpp src/trayicon.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o trayicon.o src/trayicon.cpp

trayicon_x11.o: src/trayicon_x11.cpp src/trayicon.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o trayicon_x11.o src/trayicon_x11.cpp

krb5ticketwatcher.o: src/krb5ticketwatcher.cpp src/trayicon.h \
		src/krb5ticketwatcher.h \
		src/mainwidget.h \
		src/pwdialog.h \
		src/pwchangedialog.h \
		src/kinitdialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o krb5ticketwatcher.o src/krb5ticketwatcher.cpp

src/pwdialog.h: src/pwdialog.ui 
	$(UIC) src/pwdialog.ui -o src/pwdialog.h

src/pwdialog.cpp: src/pwdialog.h src/pwdialog.ui 
	$(UIC) src/pwdialog.ui -i pwdialog.h -o src/pwdialog.cpp

src/pwchangedialog.h: src/pwchangedialog.ui 
	$(UIC) src/pwchangedialog.ui -o src/pwchangedialog.h

src/pwchangedialog.cpp: src/pwchangedialog.h src/pwchangedialog.ui 
	$(UIC) src/pwchangedialog.ui -i pwchangedialog.h -o src/pwchangedialog.cpp

src/mainwidget.h: src/mainwidget.ui 
	$(UIC) src/mainwidget.ui -o src/mainwidget.h

src/mainwidget.cpp: src/mainwidget.h src/mainwidget.ui src/mainwidget.ui.h 
	$(UIC) src/mainwidget.ui -i mainwidget.h -o src/mainwidget.cpp

src/kinitdialog.h: src/kinitdialog.ui 
	$(UIC) src/kinitdialog.ui -o src/kinitdialog.h

src/kinitdialog.cpp: src/kinitdialog.h src/kinitdialog.ui 
	$(UIC) src/kinitdialog.ui -i kinitdialog.h -o src/kinitdialog.cpp

pwdialog.o: src/pwdialog.cpp src/pwdialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o pwdialog.o src/pwdialog.cpp

pwchangedialog.o: src/pwchangedialog.cpp src/pwchangedialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o pwchangedialog.o src/pwchangedialog.cpp

mainwidget.o: src/mainwidget.cpp src/mainwidget.ui.h \
		src/mainwidget.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwidget.o src/mainwidget.cpp

kinitdialog.o: src/kinitdialog.cpp src/kinitdialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o kinitdialog.o src/kinitdialog.cpp

moc_trayicon.o: src/moc_trayicon.cpp  src/trayicon.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_trayicon.o src/moc_trayicon.cpp

moc_krb5ticketwatcher.o: src/moc_krb5ticketwatcher.cpp  src/krb5ticketwatcher.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_krb5ticketwatcher.o src/moc_krb5ticketwatcher.cpp

moc_pwdialog.o: src/moc_pwdialog.cpp  src/pwdialog.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_pwdialog.o src/moc_pwdialog.cpp

moc_pwchangedialog.o: src/moc_pwchangedialog.cpp  src/pwchangedialog.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_pwchangedialog.o src/moc_pwchangedialog.cpp

moc_mainwidget.o: src/moc_mainwidget.cpp  src/mainwidget.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwidget.o src/moc_mainwidget.cpp

moc_kinitdialog.o: src/moc_kinitdialog.cpp  src/kinitdialog.h 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_kinitdialog.o src/moc_kinitdialog.cpp

src/moc_trayicon.cpp: $(MOC) src/trayicon.h
	$(MOC) src/trayicon.h -o src/moc_trayicon.cpp

src/moc_krb5ticketwatcher.cpp: $(MOC) src/krb5ticketwatcher.h
	$(MOC) src/krb5ticketwatcher.h -o src/moc_krb5ticketwatcher.cpp

src/moc_pwdialog.cpp: $(MOC) src/pwdialog.h
	$(MOC) src/pwdialog.h -o src/moc_pwdialog.cpp

src/moc_pwchangedialog.cpp: $(MOC) src/pwchangedialog.h
	$(MOC) src/pwchangedialog.h -o src/moc_pwchangedialog.cpp

src/moc_mainwidget.cpp: $(MOC) src/mainwidget.h
	$(MOC) src/mainwidget.h -o src/moc_mainwidget.cpp

src/moc_kinitdialog.cpp: $(MOC) src/kinitdialog.h
	$(MOC) src/kinitdialog.h -o src/moc_kinitdialog.cpp

####### Install

install_translations: all 
	@$(CHK_DIR_EXISTS) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/" || $(MKDIR) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/"
	-$(INSTALL_FILE) "po/krb5-ticket-watcher.de.qm" "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/"
	-$(INSTALL_FILE) "po/krb5-ticket-watcher.en.qm" "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/"
	-$(INSTALL_FILE) "po/krb5-ticket-watcher.qm" "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/"


uninstall_translations: 
	-$(DEL_FILE) -r "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/krb5-ticket-watcher.de.qm"
	-$(DEL_FILE) -r "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/krb5-ticket-watcher.en.qm"
	-$(DEL_FILE) -r "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/krb5-ticket-watcher.qm"
	-$(DEL_DIR) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/krb5-ticket-watcher/locales/"


install_desktop: all 
	@$(CHK_DIR_EXISTS) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/applications/" || $(MKDIR) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/applications/"
	-$(INSTALL_FILE) "krb5-ticket-watcher.desktop" "$(INSTALL_ROOT)$(DESTDIR)/usr/share/applications/"


uninstall_desktop: 
	-$(DEL_FILE) -r "$(INSTALL_ROOT)$(DESTDIR)/usr/share/applications/krb5-ticket-watcher.desktop"
	-$(DEL_DIR) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/applications/"


install_documentation: all 
	@$(CHK_DIR_EXISTS) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/" || $(MKDIR) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/"
	-$(INSTALL_FILE) "COPYING" "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/"
	-$(INSTALL_FILE) "Changes" "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/"
	-$(INSTALL_FILE) "News" "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/"


uninstall_documentation: 
	-$(DEL_FILE) -r "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/COPYING"
	-$(DEL_FILE) -r "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/Changes"
	-$(DEL_FILE) -r "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/News"
	-$(DEL_DIR) "$(INSTALL_ROOT)$(DESTDIR)/usr/share/doc/packages/krb5-ticket-watcher/"


install: install_translations install_desktop install_documentation  

uninstall: uninstall_translations uninstall_desktop uninstall_documentation  

