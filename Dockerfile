# 使用官方 nginx 镜像作为基础镜像
FROM nginx:alpine

# 将静态文件复制到 nginx 的默认静态文件目录
COPY . /usr/share/nginx/html/

# 创建存放 SSL 证书的目录
RUN mkdir -p /etc/nginx/ssl

# 复制 Nginx 配置文件
COPY nginx.conf /etc/nginx/nginx.conf

# 暴露 80 和 443 端口
EXPOSE 80 443

# 使用 nginx 的默认启动命令
CMD ["nginx", "-g", "daemon off;"] 