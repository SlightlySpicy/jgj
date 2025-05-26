FROM nginx:1.25.3-alpine

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 删除默认配置（可选，根据需要保留）
RUN rm -f /etc/nginx/conf.d/default.conf

# 保留目录结构（确保挂载目录存在）
RUN mkdir -p /etc/nginx/conf.d/

# 不再复制配置文件，改为挂载

# 保留静态文件目录（如果需要挂载静态文件）
RUN mkdir -p /usr/local/cjjgj/

# 暴露端口
EXPOSE 8084 8085

# 启动命令
CMD ["nginx", "-g", "daemon off;"]
