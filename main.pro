TEMPLATE = lib

PROTOS = $$files(protobuf/*.proto)
include(protobuf.pri)

SOURCES = test.cc

INSTALLS += headers
headers.path = /usr/include
headers.CONFIG = no_check_exist
headers.files = $${PROTOBUF_HEADERS}
