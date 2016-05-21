TEMPLATE = subdirs

SUBDIRS = protobuf main

main.depends = protobuf
main.file = main.pro
protobuf.file = protobuf.pro

#CONFIG += ordered
