# 选择构建镜像的基础源镜像
FROM node

# 在镜像中创建一个文件夹，用于存放项目
RUN mkdir -p /home/Service

# 指定该目录作为工作目录
WORKDIR /home/Service

# 把本机当前目录下的所有文件拷贝到镜像的/home/Service目录下
COPY . /home/Service

# 使用npm安装项目需要的依赖
RUN npm install

# 暴露项目监听端口给主机，因此外部可以访问
EXPOSE 8888

# 运行npm run start命令
CMD [ "npm", "start" ]