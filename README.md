# How to use


## 1. build image

docker build -t="arc3dimg" git@github.com:Arc3D/TerriaMapRuntimeImage.git#main

## 2. run container

docker run -itd --name arc3d -p 3001:3001 -v ~/projects/TerriaMap:/root/TerriaMap arc3dimg:latest /bin/bash

~/projects/TerriaMap是本机中代码的位置

## 3. build (optional)

如果上述代码中没有完整的包的话，需要进入到容器中，进行安装或者铁手
docker exec -it arc3d /bin/bash
yarn install

## 4. run arc3d

docker exec -d arc3d sh /root/TerriaMapEnv/run.sh