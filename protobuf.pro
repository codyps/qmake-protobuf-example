TEMPLATE = lib
CONFIG += staticlib
TARGET = local-protobuf

PROTOS = $$files(protobuf/*.proto)
include(protobuf.pri)
