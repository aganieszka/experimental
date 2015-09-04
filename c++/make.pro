QT += qml quick

HEADERS += piechart.h
SOURCES += piechart.cpp \
           main.cpp

#RESOURCES += chapter1-basics.qrc

DESTPATH = ~/experimental/c++
target.path = $$DESTPATH
qml.files = *.qml
qml.path = $$DESTPATH

INSTALLS += target qml
