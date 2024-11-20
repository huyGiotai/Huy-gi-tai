CREATE DATABASE MobileShop;
USE MobileShop;

-- Tạo bảng Sản phẩm
CREATE TABLE SanPham (
    id INT IDENTITY(1,1) PRIMARY KEY, -- ID tự động tăng
    tenSP NVARCHAR(100) NOT NULL,
    gia DECIMAL(10, 2) NOT NULL,
    hangSX NVARCHAR(50) NOT NULL
);

-- Tạo bảng Khách hàng
CREATE TABLE KhachHang (
    id INT IDENTITY(1,1) PRIMARY KEY,
    tenKH NVARCHAR(100) NOT NULL,
    diachi NVARCHAR(MAX) NOT NULL,
    sdt NVARCHAR(15) NOT NULL
);

-- Tạo bảng Đơn hàng
CREATE TABLE DonHang (
    id INT IDENTITY(1,1) PRIMARY KEY,
    khachhangid INT NOT NULL,
    sanphamid INT NOT NULL,
    soluong INT NOT NULL,
    ngaymua DATE NOT NULL,
    FOREIGN KEY (khachhangid) REFERENCES KhachHang(id),
    FOREIGN KEY (sanphamid) REFERENCES SanPham(id)
);

-- Tạo bảng Người dùng
CREATE TABLE NguoiDung (
    id INT IDENTITY(1,1) PRIMARY KEY,
    tendangnhap NVARCHAR(50) UNIQUE NOT NULL,
    matkhau NVARCHAR(100) NOT NULL
);
