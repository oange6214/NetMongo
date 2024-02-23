# 使用官方MongoDB映像作為基礎映像
FROM mongo:latest


# 將本地文件拷貝到容器內部，可選操作，根據您的需求
# COPY ./mongod.conf /etc/mongod.conf


# 定義環境變量（可選）
# ENV MONGO_INITDB_ROOT_USERNAME=admin
# ENV MONGO_INITDB_ROOT_PASSWORD=12345678

# 將容器暴露的端口
EXPOSE 27017


# 啟動MongoDB服務
CMD ["mongod"]