QT += core
QT -= gui

TARGET = DetectAndTrack_test
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    vibe/vibeDetect.cpp \
    vibe/vibe.cpp \
    kcf/tracker.cpp \
    kcf/kcftracker.cpp \
    kcf/fhog.cpp \
    detection/tophat.cpp \
    detection/tagEdgeExtraction.cpp \
    detection/detection.cpp \
    detection/dataAssociation.cpp \
    detection/libyolo.c \
    darknet/src/utils.c \
    darknet/src/tree.c \
    darknet/src/softmax_layer.c \
    darknet/src/shortcut_layer.c \
    darknet/src/route_layer.c \
    darknet/src/rnn_layer.c \
    darknet/src/reorg_layer.c \
    darknet/src/region_layer.c \
    darknet/src/parser.c \
    darknet/src/option_list.c \
    darknet/src/normalization_layer.c \
    darknet/src/network.c \
    darknet/src/maxpool_layer.c \
    darknet/src/matrix.c \
    darknet/src/lstm_layer.c \
    darknet/src/local_layer.c \
    darknet/src/list.c \
    darknet/src/layer.c \
    darknet/src/image.c \
    darknet/src/im2col.c \
    darknet/src/gru_layer.c \
    darknet/src/gemm.c \
    darknet/src/dropout_layer.c \
    darknet/src/detection_layer.c \
    darknet/src/demo.c \
    darknet/src/deconvolutional_layer.c \
    darknet/src/data.c \
    darknet/src/cuda.c \
    darknet/src/crop_layer.c \
    darknet/src/crnn_layer.c \
    darknet/src/cost_layer.c \
    darknet/src/convolutional_layer.c \
    darknet/src/connected_layer.c \
    darknet/src/compare.c \
    darknet/src/col2im.c \
    darknet/src/box.c \
    darknet/src/blas.c \
    darknet/src/batchnorm_layer.c \
    darknet/src/avgpool_layer.c \
    darknet/src/activations.c \
    darknet/src/activation_layer.c \
    codebook/codebook.cpp \
    socket.cpp

HEADERS += \
    vibe/vibe.h \
    kcf/tracker.h \
    kcf/recttools.hpp \
    kcf/labdata.hpp \
    kcf/kcftracker.hpp \
    kcf/fhog.hpp \
    kcf/ffttools.hpp \
    detection/libyolo.h \
    detection/detection.h \
    detection/dataAssociation.h \
    darknet/src/utils.h \
    darknet/src/tree.h \
    darknet/src/stb_image_write.h \
    darknet/src/stb_image.h \
    darknet/src/softmax_layer.h \
    darknet/src/shortcut_layer.h \
    darknet/src/route_layer.h \
    darknet/src/rnn_layer.h \
    darknet/src/reorg_layer.h \
    darknet/src/region_layer.h \
    darknet/src/parser.h \
    darknet/src/option_list.h \
    darknet/src/normalization_layer.h \
    darknet/src/network.h \
    darknet/src/maxpool_layer.h \
    darknet/src/matrix.h \
    darknet/src/lstm_layer.h \
    darknet/src/local_layer.h \
    darknet/src/list.h \
    darknet/src/layer.h \
    darknet/src/image.h \
    darknet/src/im2col.h \
    darknet/src/gru_layer.h \
    darknet/src/gemm.h \
    darknet/src/dropout_layer.h \
    darknet/src/detection_layer.h \
    darknet/src/demo.h \
    darknet/src/deconvolutional_layer.h \
    darknet/src/data.h \
    darknet/src/cuda.h \
    darknet/src/crop_layer.h \
    darknet/src/crnn_layer.h \
    darknet/src/cost_layer.h \
    darknet/src/convolutional_layer.h \
    darknet/src/connected_layer.h \
    darknet/src/col2im.h \
    darknet/src/classifier.h \
    darknet/src/box.h \
    darknet/src/blas.h \
    darknet/src/batchnorm_layer.h \
    darknet/src/avgpool_layer.h \
    darknet/src/activations.h \
    darknet/src/activation_layer.h \
    darknet/include/darknet.h \
    codebook/codebook.h \
    socket.h

DISTFILES += \
    darknet/src/network_kernels.cu \
    darknet/src/maxpool_layer_kernels.cu \
    darknet/src/im2col_kernels.cu \
    darknet/src/dropout_layer_kernels.cu \
    darknet/src/deconvolutional_kernels.cu \
    darknet/src/crop_layer_kernels.cu \
    darknet/src/convolutional_kernels.cu \
    darknet/src/col2im_kernels.cu \
    darknet/src/blas_kernels.cu \
    darknet/src/avgpool_layer_kernels.cu \
    darknet/src/activation_kernels.cu

INCLUDEPATH += /usr/local/include \
               /usr/local/include/opencv \
               /usr/local/include/opencv2

LIBS += /usr/local/lib/libopencv_highgui.so \
        /usr/local/lib/libopencv_core.so    \
        /usr/local/lib/libopencv_imgproc.so \
         /usr/local/lib/libopencv_imgcodecs.so  \
         /usr/local/lib/libopencv_videoio.so
