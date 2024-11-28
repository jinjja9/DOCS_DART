# BUỔI 1: FLUTTER && GIT NÂNG CAO

[Flutter](https://flutterawesome.com/)

## I. Flutter là gì, tại sao lại có flutter 

### 1. Flutter là gì? 

[Flutter là gì? ](https://glints.com/vn/blog/flutter-la-gi/#flutter_la_gi)

[Flutter là gì?? ](https://www.topcv.vn/flutter-la-gi#flutter-la-gi)

`Flutter` là một `framework` mã nguồn mở dành cho di động được phát hành vào tháng 5 năm 2017 bởi Google. Nói một cách dễ hiểu, Flutter cho phép bạn tạo một ứng dụng di động chỉ với một codebase trên iOS và Android bằng một ngôn ngữ lập trình và một cơ sở mã duy nhất.

`Flutter` bao gồm `hai` phần quan trọng:

- **SDK** (Bộ công cụ phát triển phần mềm): Là một tập hợp các công cụ giúp bạn phát triển các ứng dụng của mình. 

- **Framework** (Thư viện giao diện người dùng dựa trên các tiện ích con): Tập hợp các phần giao diện người dùng mà bạn có thể tái sử dụng (nút, đầu vào văn bản, thanh trượt, v.v.), từ đó có thể cá nhân hóa cho nhu cầu của riêng mình.

Ngôn ngữ: `Dart`

- Ngôn ngữ này được tạo ra bởi Google vào tháng 10 năm 2011
- Dart tập trung vào phát triển giao diện người dùng và bạn có thể sử dụng nó để tạo các ứng dụng web và di động.

### 2. Tại sao có Flutter? 

Flutter ra đời để giải quyết một số hạn chế trong việc phát triển ứng dụng đa nền tảng, nhằm cung cấp một giải pháp phát triển ứng dụng với các lợi ích sau:

- **Đa nền tảng từ một mã nguồn**: Flutter cho phép phát triển ứng dụng trên nhiều nền tảng (iOS, Android, web, máy tính để bàn) chỉ từ một mã nguồn duy nhất, giúp tiết kiệm thời gian và chi phí.

- **Hiệu suất cao**: Sử dụng ngôn ngữ Dart và biên dịch AOT trực tiếp thành mã máy, Flutter đạt hiệu suất gần như ứng dụng gốc, không cần cầu nối như React Native.

- **Giao diện đẹp và linh hoạt**: Flutter có thư viện widget phong phú và dễ tùy chỉnh, cho phép tạo giao diện sáng tạo, linh hoạt.

- **Hot Reload:** Cho phép cập nhật mã ngay lập tức vào ứng dụng, tăng tốc độ thử nghiệm và phát triển.

- **Hỗ trợ cộng đồng mạnh mẽ:** Google và cộng đồng cung cấp nhiều thư viện và plugin, mở rộng chức năng của Flutter.

## II. Sự khác biệt giữa framework và library

[framework và library](https://topdev.vn/blog/framework-la-gi-su-khac-biet-giua-framework-va-library/)


>**Library (thư viện)** trong lập trình là một tập hợp các hàm, phương thức hoặc đoạn mã được xây dựng sẵn, cho phép linh hoạt sử dụng mà không cần tuân theo cấu trúc cố định.

>Khác với thư viện, **framework** không chỉ cung cấp các hàm và phương thức mà còn định nghĩa luồng điều khiển và cấu trúc tổng thể của ứng dụng. Khi sử dụng framework, lập trình viên phải tuân theo các quy tắc và cấu trúc mà framework đề ra.

### 1. Về khái niệm

**Library**

-   Library là một tập hợp các functions, gồm các Class được viết sẵn và có thể tái sử dụng. 

-   Mỗi function hoặc class phục vụ cho một công việc cụ thể nào đó.

**Framework**

-   Framework là tập hợp các library đã được đóng gói, nhằm hỗ trợ quá trình phát triển ứng dụng dựa trên framework đó. 

-   Đồng thời, nó cũng cung cấp các nguyên tắc, cấu trúc trong ứng dụng buộc người dùng phải tuân thủ theo.

### 2. Về định nghĩa

`Framework` được xem là một khung chương trình, người dùng bổ sung code và tuân theo quy tắc để tạo ra ứng dụng. 

Còn `library` chỉ cung cấp các chức năng tiện ích hay các Class để sử dụng trong quá trình xây dựng ứng dụng.

### 3. Về cách thức hoạt động

**Đối với framework**

-   Framework hoạt động chủ động. 

-   Do đó, nó có thể đưa ra các quyết định gọi hoặc bị gọi bởi các library hay ứng dụng nào đó.

-   Để sử dụng được framework, cũng như các functions mà nó cung cấp, bạn cần thay đổi cấu trúc code của dự án dựa trên các quy tắc của framework đó.

**Đối với library**

-   Library hoạt động bị động.

-   Nên nó chỉ được gọi khi nào chúng ta cần dùng tới.

-   Với library,có thể dễ dàng sử dụng trực tiếp các functions mà không phải mất thời gian thay đổi cấu trúc của code trong project.

### 4. Mục đích hoạt động

`Framework` hoạt động nhằm mục đích cung cấp khả năng phát triển nhanh chóng hơn cho các ứng dụng.

`library` được tạo ra nhằm mục đích hỗ trợ cho nhà phát triển mã và trình biên dịch mã trong quá trình xây dựng và chạy ứng dụng.

## III. Cơ bản về React Native

[React Native](https://topdev.vn/blog/react-native/) là một framework mã nguồn mở được phát triển bởi Facebook, sử dụng ngôn ngữ lập trình JavaScript và React để phát triển ứng dụng di động. React Native sử dụng các thành phần giao diện người dùng native.

## IV. So sánh Flutter và React Native

### 1. Điểm tương đồng giữa Flutter và React Native 

-   [Cả hai đều được thiết kế để phát triển cross-platform app](https://topdev.vn/blog/flutter-vs-react-native/?utm_source=google&utm_medium=cpc&utm_campaign=pmax-branding&utm_content=performance&gad_source=1&gclid=EAIaIQobChMI8a3Unq_diQMVmtEWBR1PNSNXEAAYASAAEgJbSvD_BwE#co-ban-ve-react-native)

-   Cả hai framework được hỗ trợ bởi các cộng đồng công nghệ khổng lồ
*(React Native được cung cấp bởi Facebook còn Flutter là SDK nguồn mở của Google )*

-   Nguồn mở, miễn phí và nhanh chóng

-   Hỗ trợ UI và Native Experience tuyệt vời

-   Hot reloading và sửa đổi nhanh

### 2. Điểm khác nhau giữa Flutter và React Native 


### So sánh React Native và Flutter

| Tiêu chí                  | React Native                                                                                   | Flutter                                                                                  |
|---------------------------|------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| **Ngôn ngữ & Công cụ**    | JavaScript/TypeScript; phức tạp khi thiết lập và dùng thư viện ngoài                          | Dart; dễ học, công cụ đơn giản hơn                                                      |
| **Tính năng**             | Cần thư viện ngoài cho nhiều tính năng; cộng đồng hỗ trợ tốt                                  | Nhiều tính năng sẵn có (Material Design, Cupertino), không cần thư viện phụ             |
| **Giao diện người dùng**  | Dùng UI native của từng nền tảng, dễ tùy biến nhưng có thể thiếu nhất quán                    | Dùng engine đồ họa riêng, giao diện nhất quán trên mọi nền tảng                          |
| **Hiệu suất**             | Tốt nhưng phụ thuộc vào JavaScript Bridge                                                    | Cao nhờ engine riêng, nhưng tiêu thụ bộ nhớ cao hơn                                      |
| **Công cụ & Trải nghiệm** | Expo tiện lợi, cộng đồng và thư viện phong phú                                                | Tích hợp tốt với VS Code, hot reload mạnh mẽ, công cụ dễ dùng                            |
| **Trải nghiệm phát triển**| Có thể gặp khó khăn khi dùng nhiều thư viện ngoài                                             | Mượt mà, ít lỗi, công cụ hỗ trợ tốt                                                     |
| **Document**              | Tài liệu phong phú nhưng chưa trực quan như Flutter                                          | Tài liệu chi tiết, dễ đọc và rõ ràng                                                    |
| **Mức độ phổ biến**       | Phổ biến hơn, nhiều nhà phát triển quen thuộc                                                 | Mới hơn, đang thu hút cộng đồng                                                         |
| **Cộng đồng & Hỗ trợ**    | Cộng đồng lớn, hỗ trợ tốt trên GitHub, Stack Overflow                                         | Cộng đồng nhỏ hơn, nhưng phát triển nhanh chóng                                         |
| **Cơ hội nghề nghiệp**    | Cơ hội việc làm nhiều hơn                                                                     | Cơ hội ít hơn hiện tại, nhưng tăng trưởng trong tương lai                                |


## V. GIT nâng cao


### 1. Git Merge

- `Cách làm`: Sử dụng lệnh git merge để hợp nhất nhánh feature vào nhánh main mà không thay đổi lịch sử các commit hiện có.

- `Kết quả`: Tạo ra một commit mới (merge commit) trên nhánh main, giữ nguyên toàn bộ lịch sử của cả hai nhánh. Điều này giúp giữ được trạng thái commit của từng nhánh mà không ảnh hưởng đến các commit cũ.

- `Ưu điểm:` Dễ dàng, an toàn, và không thay đổi lịch sử các commit.

- `Nhược điểm`: Làm cho lịch sử commit phức tạp và khó theo dõi, đặc biệt khi nhánh main thay đổi liên tục.

Hợp nhất nhánh `feature` vào nhánh `main`

```bash
git checkout feature
git merge main
```


![alt text](image.png)


### 2. Git Rebase:

- `Cách làm`: Sử dụng lệnh git rebase để nối các commit từ nhánh feature lên “ngọn” của nhánh main.

- `Kết quả`: Viết lại lịch sử commit của nhánh feature thành một chuỗi commit nối tiếp nhau trên nhánh main, tạo ra một lịch sử tuyến tính.

- `Ưu điểm`: Lịch sử commit "sạch" và dễ theo dõi, thuận tiện cho việc sử dụng các lệnh như git log, git bisect.

- `Nhược điểm`: Có rủi ro khi viết lại lịch sử commit, dễ gây lỗi nếu không tuân thủ "nguyên tắc an toàn". Ngoài ra, rebase không giữ lại ngữ cảnh của commit merge, làm mất thông tin về thời điểm tích hợp nhánh.

[git merge && git](https://200lab.io/blog/git-rebase-vs-git-merge/?srsltid=AfmBOorz9ltg1fenWerFq2Zh_IhILNBI-0MORVDzKMniO7IPURiJ66yM)

### 3.  Git reset

![alt text](image-1.png)

[Git reset](https://viblo.asia/p/hieu-co-ban-ve-git-reset-git-revert-git-rebase-Rk74aDNrVeO) được sử dụng để di chuyển HEAD (con trỏ chỉ đến commit hiện tại) trỏ đến một commit cụ thể.

Tổng quát:

```
git reset <commit>
```

trong đó `commit` là mã của 1 commit bất kỳ.

### 4. Git revert

![alt text](image-2.png)
Git revert được sử dụng để tạo một commit mới, loại bỏ các thay đổi đã được thực hiện trong một hoặc nhiều commit trước đó, và áp dụng các thay đổi đó vào nhánh hiện tại.

Cú pháp
```
git revert <commit>
```
trong đó <commit> là mã của 1 commit bất kỳ. 

### 5. git cherry-pick

[git cherry-pick](https://viblo.asia/p/git-nang-cao-git-cherry-pick-RQqKLQ9pZ7z) là một lệnh trong Git dùng để sao chép một hoặc nhiều commit cụ thể từ một nhánh khác và áp dụng vào nhánh hiện tại. Nó cho phép bạn chọn lọc những commit riêng lẻ mà bạn muốn áp dụng mà không cần hợp nhất toàn bộ nhánh.


### 6. git ignore

[Gitignore](https://topdev.vn/blog/gitignore-la-gi/?utm_source=google&utm_medium=cpc&utm_campaign=pmax-branding&utm_content=performance&gad_source=1&gclid=EAIaIQobChMImN-MgpPeiQMVDF0PAh27DwVfEAAYASAAEgLFGvD_BwE) là liệt kê những file mà mình không mong muốn cho vào git hoặc hiểu nôm na là Git sẽ bỏ qua những file đó đi.