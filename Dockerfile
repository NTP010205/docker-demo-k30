# Bước 1: Chọn Image nền (Base Image) là Nginx bản nhẹ nhất (alpine)
FROM nginx:alpine

# Bước 2: Sao chép file html từ máy máy tính vào thư mục mặc định của Nginx trong Container
COPY index.html /usr/share/nginx/html/index.html

# Bước 3: Thông báo Container sẽ chạy ở cổng 80
EXPOSE 80

# (Nginx sẽ tự động chạy khi container khởi động, không cần lệnh CMD thêm)