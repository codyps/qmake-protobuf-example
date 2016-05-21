TEMPLATE = lib
CONFIG += staticlib

PROTOS = $$files(protobuf/*.proto)
include(protobuf.pri)
