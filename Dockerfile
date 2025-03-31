# 使用官方 nginx 镜像作为基础镜像
FROM nginx:alpine

# 将静态文件复制到 nginx 的默认静态文件目录
COPY . /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 80

# 使用 nginx 的默认启动命令
CMD ["nginx", "-g", "daemon off;"] 