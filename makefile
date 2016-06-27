SRC = src/jsmpeg-vnc.c src/encoder.c src/grabber.c src/server.c

INC = -Isrc/ -Isrc/libwebsockets/

ZLIB = $(shell pkg-config --cflags --libs libz)

LIBWEBSOCKETS = src/libwebsockets/libwebsockets.a

FFMPEG = $(shell pkg-config --cflags --libs libavcodec libavutil libswscale)

X11 = $(shell pkg-config --cflags --libs x11)

OUT = -o bin/jsmpeg-vnc
VER= -std=c11

jsmpeg-vnc-linux: src/jsmpeg-vnc.c
	gcc ${OUT} ${SRC} ${INC} ${LIB_DIRS} ${FFMPEG} ${X11} ${ZLIB} ${LIBWEBSOCKETS} ${VER}
