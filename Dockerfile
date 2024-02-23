# 使用官方 MongoDB 映像作為基礎映像
FROM mongo:latest

# 將本地文檔案複製到容器內部（可選）
# COPY ./mongod.conf /etc/mongod.conf

# 定義環境變量（可選）
# ENV MONGO_INITDB_ROOT_USERNAME=admin
# ENV MONGO_INITDB_ROOT_PASSWORD=12345678

# 將容器暴露的端口
EXPOSE 27017

# 啟動 MongoDB 服務
CMD ["mongod"]