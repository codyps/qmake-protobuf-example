TEMPLATE = lib

PROTOS = $$files(protobuf/*.proto)
include(protobuf.pri)

TARGET = qt-test

SOURCES = test.cc

LIBS += $$OUT_PWD/liblocal-protobuf.a

INSTALLS += headers
headers.path = /usr/include
headers.CONFIG = no_check_exist
headers.files = $${PROTOBUF_HEADERS}
