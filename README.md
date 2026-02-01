# 🐳 Docker Container Demo - K30IT

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Linux](https://img.shields.io/badge/Alpine_Linux-%230D597F.svg?style=for-the-badge&logo=alpine-linux&logoColor=white)
![Status](https://img.shields.io/badge/Status-Stable-success?style=for-the-badge)

> Dự án demo triển khai ứng dụng Web tĩnh (Static Web) trên nền tảng **Docker Container**,thuộc môn học **Các nền tảng phát triển phần mềm**.

---

## 📑 Mục lục
- [Giới thiệu](#-giới-thiệu)
- [Công nghệ sử dụng](#-công-nghệ-sử-dụng)
- [Cấu trúc dự án](#-cấu-trúc-dự-án)
- [Hướng dẫn cài đặt & Sử dụng](#-hướng-dẫn-cài-đặt--sử-dụng)
- [Minh chứng kỹ thuật](#-minh-chứng-kỹ-thuật)
- [Tác giả](#-tác-giả)

---

## 📖 Giới thiệu

Dự án này mô phỏng việc đóng gói (Containerization) một ứng dụng web đơn giản thành một **Docker Image**. Mục tiêu là chứng minh các đặc tính cốt lõi của Container:
1.  **Isolation (Sự cô lập):** Ứng dụng chạy độc lập với môi trường Host.
2.  **Portability (Tính di động):** "Build once, Run anywhere".
3.  **Lightweight (Nhẹ):** Sử dụng Alpine Linux để tối ưu tài nguyên.

---

## 🛠 Công nghệ sử dụng

| Thành phần | Mô tả |
| :--- | :--- |
| **Docker** | Platform để đóng gói và chạy ứng dụng trong Container. |
| **Nginx** | Web Server hiệu năng cao, dùng để phục vụ file tĩnh. |
| **Alpine Linux** | Hệ điều hành siêu nhẹ (chỉ khoảng 5MB) làm nền tảng. |
| **HTML5/CSS3** | Giao diện người dùng phong cách Glassmorphism/Portal. |

---
## 📂 Cấu trúc dự án

```text
docker-demo-k30/
├── Dockerfile       # File cấu hình ("Công thức" đóng gói Image)
├── index.html       # Mã nguồn giao diện Web Portal
└── README.md        # Tài liệu hướng dẫn sử dụng (File này)
---
## 🚀 Hướng dẫn cài đặt & Sử dụng
Yêu cầu máy tính đã cài đặt Docker Desktop.

Bước 1: Clone dự án về máy
Mở Terminal và chạy lệnh sau:

Bash
git clone [https://github.com/NTP010205/docker-demo-k30.git](https://github.com/NTP010205/docker-demo-k30.git)
cd docker-demo-k30
Bước 2: Build Docker Image
Đóng gói mã nguồn thành Image với tên docker-portal-light:v1:

Bash
docker build -t docker-portal-light:v1 .
Bước 3: Khởi chạy Container
Chạy ứng dụng ở chế độ nền (detached), ánh xạ cổng 80 của Container ra cổng 8888 của máy thật:

Bash
docker run -d -p 8888:80 --name demo-container docker-portal-light:v1
Bước 4: Truy cập ứng dụng
Mở trình duyệt và truy cập địa chỉ:

http://localhost:8888
---
## 👨‍💻 Minh chứng kỹ thuật (Dành cho Demo)
Để kiểm tra trạng thái hoạt động của Container, bạn có thể sử dụng các lệnh sau trong Terminal:

1. Kiểm tra Container đang chạy:

Bash
docker ps
2. Xem nhật ký truy cập (Real-time Logs): (Gõ lệnh này và F5 trình duyệt để thấy log nhảy liên tục)

Bash
docker logs -f demo-container
3. Dừng và xóa Container:

Bash
docker rm -f demo-container
---
## 👤 Tác giả
Sinh viên thực hiện:
Họ tên: Nguyễn Thành Phát
MSSV: 2474802016639
Lớp: K30CNTT07 - Nhóm On Nine Could
Trường: Đại học Văn Lang (VLU)

© 2026 Docker Demo Project. Built with ❤️ and Docker.
