# Nginx Dockerfile
FROM nginx:1.25.3-alpine

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 复制自定义配置文件
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/ /etc/nginx/conf.d/

# 复制静态文件
COPY www/ /usr/share/nginx/html/

# 暴露HTTP和HTTPS端口
EXPOSE 80 443

# 容器启动时执行的命令
CMD ["nginx", "-g", "daemon off;"]
    
