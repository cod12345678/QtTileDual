HEADERS += board.h \
    cell.h \
    tilingwidget.h \
    osutils.h \
    tilingstrategy.h
SOURCES += main.cpp \
    cell.cpp \
    board.cpp \
    tilingwidget.cpp
TARGET.EPOCHEAPSIZE = 0x200000 \
    0xA00000

# install
target.path = $$[QT_INSTALL_EXAMPLES]/graphicsview/elasticnodes
sources.files = $$SOURCES \
    $$HEADERS \
    $$RESOURCES \
    $$FORMS \
    elasticnodes.pro
sources.path = $$[QT_INSTALL_EXAMPLES]/graphicsview/elasticnodes
INSTALLS += target \
    sources
symbian { 
    TARGET.UID3 = 0xA000A642
    include($$QT_SOURCE_TREE/examples/symbianpkgrules.pri)
}
