# 🐳 Docker Container Demo - K30IT

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Linux](https://img.shields.io/badge/Alpine_Linux-%230D597F.svg?style=for-the-badge&logo=alpine-linux&logoColor=white)
![Status](https://img.shields.io/badge/Status-Stable-success?style=for-the-badge)

> Dự án demo triển khai ứng dụng Web tĩnh (Static Web) trên nền tảng **Docker Container**, minh họa cho bài học **Chương 7: Dịch vụ Container** thuộc môn học **Các nền tảng phát triển phần mềm**.

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
