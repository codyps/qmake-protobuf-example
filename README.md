# Qmake & Protobuf

> ***WARNING: you don't want to do this. Use cmake instead and save yourself a lot
of trouble. 'qmake' is almost completely broken for handling generated
source+headers that include other generated source/headers.***


There exist several examples of using protoc to generate protobuf `*.pb.{c,h}` files in `qmake`. Unfortunately, all the ones I've come across so far fail to properly handle dependencies of the form `source.c -> protoA.pb.h -> protoB.pb.h` which occurs when `import` is used in the `.proto` files.

The example in this repo shows the only way I've found of handling those dependencies properly in qmake by using 3 seperate `.pro` files for a single project (essentially, splitting protobuf from the remainder of the source).

It still doesn't appear to be perfect due to some interesting choices in how qmake selects it's output directory (`protoA.pb.o` will end up in `.` instead of `protobuf`, but it should be workable.
