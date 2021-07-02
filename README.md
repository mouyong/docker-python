## 添加部署相关程序

```
git subtree add -P deploy/ https://github.com/mouyong/docker-python.git master

cp deploy/Dockerfile .
cp deploy/docker-entrypoint.sh .
```

## 构建镜像

```
docker build -t flask-app .
```

## 检查构建出来的镜像

```
docker image ls
```

## 启动镜像

```
docker run -itd --name app -P 80:80 flask-app:latest 
```
