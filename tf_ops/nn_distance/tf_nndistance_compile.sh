#!/usr/bin/env bash
# /usr/local/cuda-10.0/bin/nvcc tf_nndistance_g.cu -o tf_nndistance_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
# #g++ -std=c++11 tf_nndistance.cpp tf_nndistance_g.cu.o -o tf_nndistance_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0
# g++ -std=c++11 tf_nndistance.cpp tf_nndistance_g.cu.o -o tf_nndistance_so.so -shared -fPIC \
# -I /home/zengrui/anaconda3/envs/tf1.12/lib/python3.6/site-packages/tensorflow/include \
# -I /usr/local/cuda-10.0/include \
# -I /home/zengrui/anaconda3/envs/tf1.12/lib/python3.6/site-packages/tensorflow/include/external/nsync/public -lcudart \
# -L /usr/local/cuda-10.0/lib64/ \
# -L/home/zengrui/anaconda3/envs/tf1.12/lib/python3.6/site-packages/tensorflow -ltensorflow_framework -O2 \
# -D_GLIBCXX_USE_CXX11_ABI=1


nvcc tf_nndistance_g.cu -o tf_nndistance_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC
g++ -std=c++11 tf_nndistance.cpp tf_nndistance_g.cu.o -o tf_nndistance_so.so -shared -fPIC \
--I /usr/local/cuda-9.0/include \
-I /usr/local/lib/python2.7/dist-packages/tensorflow/include \
-I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public \
-L /usr/local/cuda-9.0/lib64 -lcudart \
-L /usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework \
-D_GLIBCXX_USE_CXX11_ABI=1