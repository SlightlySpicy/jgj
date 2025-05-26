# Redis Dockerfile
FROM redis:7.2.3-alpine

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 复制自定义配置文件
COPY redis.conf /usr/local/etc/redis/redis.conf

# 挂载数据卷
VOLUME /data

# 暴露Redis端口
EXPOSE 6379

# 容器启动时执行的命令
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
    
