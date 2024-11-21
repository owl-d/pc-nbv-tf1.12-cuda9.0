#!/usr/bin/env bash
#/bin/bash
nvcc tf_grouping_g.cu -o tf_grouping_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
g++ -std=c++11 tf_grouping.cpp tf_grouping_g.cu.o -o tf_grouping_so.so -shared -fPIC \
-I /usr/local/cuda-9.0/include \
-I /usr/local/lib/python2.7/dist-packages/tensorflow/include \
-I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public \
-L /usr/local/cuda-9.0/lib64 -lcudart \
-L /usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework \
-D_GLIBCXX_USE_CXX11_ABI=1
#g++ -std=c++11 tf_grouping.cpp tf_grouping_g.cu.o -o tf_grouping_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0

