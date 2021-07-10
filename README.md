## Dự án đánh giá điểm rèn luyện

### Giới thiệu
Hệ thống đánh giá điểm rèn luyện là hệ thống website hỗ trợ việc tổng kết, đánh giá quá trình quá trình học tập của sinh viên mỗi kỳ học của sinh viên
### Phân tích & thiết kế hệ thống
https://docs.google.com/document/d/1p9qzpVb7mb3BblCY_-S3xeniVUqoSTJD/edit#

### Cách chạy hệ thống

cấu hình ```application.properties``` file:
```
spring.datasource.username=DB_USERNAME
spring.datasource.password=DB_PASSWORD
spring.datasource.url=jdbc:DB_TYPE://DB_HOST/DB_NAME
server.port=PORT
```
import file cơ sở dữ liệu `point.sql` có trong thư mục
