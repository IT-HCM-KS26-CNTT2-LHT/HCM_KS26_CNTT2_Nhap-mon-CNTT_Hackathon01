# BÀI LÀM – HACKATHON 01

- **Mã đề:** 15
- **Họ tên:** 
- **Lớp:** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
pwd
move-item ".\Studio Anh Website FINAL" ".\studio-anh-website"
cd ./studio-anh-website
mkdir docs , media , data , logs , backup
move-item ".\Logo Studio Anh.PNG" ".\Logo_Studio_Anh.PNG"
move-item ".\Bang Gia Goi.txt" ".\Bang_Gia_Goi.txt"
move-item ".\Lich Chup Thang 5.xlsx" "Lich_Chup_Thang_5.xlsx"
move-item ".\Lich_Chup_Thang_5.xlsx" ".\data\Lich_Chup_Thang_5.xlsx"
move-item ".\Studio.log" ".\logs\Studio.log"
copy-item "..\bai_lam.md" ".\"
pwd
get-childitem -force
move-item ".\Bang_Gia_Goi.txt" ".\docs\Bang_Gia_Goi.txt"
move-item ".\Logo_Studio_Anh.PNG" ".\media\Logo_Studio_Anh.PNG"
rm *.tmp
get-childitem -force .\logs\

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
(Dán kết quả vào đây – xoá dòng này)

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
# Ghi lệnh vào đây (xoá dòng này)
get-content ".\logs\Studio.log" | select-string "ERROR" > .\logs\daily_report.txt
get-content .\logs\daily_report.txt -head 2

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
(Dán kết quả vào đây – xoá dòng này)
2026-05-28 07:29:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:44:30 [ERROR] Tai anh len may chu that bai
```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] Heading 1: tên dự án
- [ ] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [ ] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [ ] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [ ] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [ ] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
# Ghi lệnh vào đây (xoá dòng này)
notepad .\auto_report.ps1

```

### Kết quả hiển thị

```text
(Dán kết quả vào đây – xoá dòng này)
echo "=== TONG HOP LOG ===" > .\logs\auto_report.txt
get-content ".\logs\Studio.log" | select-string "ERROR" >> .\logs\auto_report.txt
echo "DEM DONG : " >> .\logs\auto_report.txt
(get-content ".\logs\Studio.log" | select-string "ERROR").Count >> .\logs\auto_report.txt

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
(get-content ".\logs\Studio.log" | select-string "ERROR").Count >> .\logs\auto_report.txt

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
(Dán kết quả vào đây – xoá dòng này)
7
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng (xoá dòng này)
./auto_report.ps1

```

### Nội dung file logs/tong_hop.txt

```text
(Dán kết quả vào đây – xoá dòng này)

=== TONG HOP LOG ===

2026-05-28 07:29:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:44:30 [ERROR] Tai anh len may chu that bai
2026-05-28 07:47:30 [ERROR] Het thoi gian cho (timeout)
2026-05-28 07:50:30 [ERROR] Khong tim thay trang /album-moi (404)
2026-05-28 08:11:30 [ERROR] Khong tim thay trang /album-moi (404)
2026-05-28 08:14:30 [ERROR] Het thoi gian cho (timeout)
2026-05-28 08:17:30 [ERROR] Tai anh len may chu that bai


DEM DONG : 
7

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/lich_chup_thang_5.xlsx`, không cần ghi vào đây.
