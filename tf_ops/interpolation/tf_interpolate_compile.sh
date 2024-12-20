#!/usr/bin/env bash
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /home/lirh/anaconda3/envs/tensorflow3/lib/python3.6/site-packages/tensorflow/include  -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /home/lirh/anaconda3/envs/tensorflow3/lib/python2.7/site-packages/tensorflow/include  -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC \
-I /usr/local/cuda-9.0/include \
-I /usr/local/lib/python2.7/dist-packages/tensorflow/include \
-I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public \
-L /usr/local/cuda-9.0/lib64 -lcudart \
-L /usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework \
-D_GLIBCXX_USE_CXX11_ABI=0