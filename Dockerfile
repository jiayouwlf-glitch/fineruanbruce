FROM nginx:alpine

# 复制首页导航
COPY 服务区系统导航.html /usr/share/nginx/html/index.html

# 复制所有Demo系统
COPY 服务区智能问答Demo.html /usr/share/nginx/html/
COPY 服务区区长秘书大模型Demo.html /usr/share/nginx/html/
COPY 服务区绩效考核大模型Demo.html /usr/share/nginx/html/
COPY 服务区预警指挥调度Demo.html /usr/share/nginx/html/

# 复制nginx配置
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露端口
EXPOSE 80

# 健康检查
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/health || exit 1

# 启动nginx
CMD ["nginx", "-g", "daemon off;"]