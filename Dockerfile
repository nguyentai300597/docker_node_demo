# Sử dụng Node.js base image
FROM node:18

# Tạo thư mục app trong container
WORKDIR /usr/src/app

# Copy package.json và cài đặt phụ thuộc
COPY package*.json ./
RUN npm install

# Copy toàn bộ mã nguồn
COPY . .

# Mở cổng cho server
EXPOSE 3000

# Lệnh chạy server
CMD [ "node", "server.js" ]
