# Hướng dẫn Git và GitHub cho nhóm

Tài liệu thực hành dành cho thành viên mới dùng Git trong đồ án CMOS Full Adder.

Repository:

```text
https://github.com/Kuuhaku-CNK/CMOS-FullAdder-Sky130
```

## 1. Những điều cần nhớ

- **Git** quản lý lịch sử file trên máy; **GitHub** lưu repository và hỗ trợ pull request/review.
- `main` là nhánh ổn định, không làm trực tiếp trên `main`.
- Mỗi nhiệm vụ dùng một branch riêng và được đưa vào `main` bằng pull request.
- Không để hai người sửa cùng một file `.sch` hoặc `.mag` cùng lúc.
- Chạy Git trong **Windows PowerShell**; chạy tool EDA trong **IIC-OSIC-TOOLS**.
- Không dùng `push --force`, `reset --hard` hoặc `clean -fd` nếu chưa hỏi nhóm trưởng.
- Không commit password, token, PDK, raw waveform lớn hoặc file tạm.

Các khái niệm cơ bản:

| Thuật ngữ | Ý nghĩa |
|---|---|
| Repository | Thư mục dự án được Git quản lý |
| Commit | Một mốc lịch sử có tác giả và mô tả |
| Branch | Nhánh làm việc độc lập |
| `main` | Nhánh ổn định chung |
| `origin` | Repository của nhóm trên GitHub |
| Clone | Tải repository về máy lần đầu |
| Pull | Lấy commit mới từ GitHub |
| Push | Gửi commit lên GitHub |
| Pull request (PR) | Đề nghị nhập một branch vào `main` |
| Conflict | Git không thể tự ghép hai thay đổi |

Quy trình tổng quát:

```text
pull main → tạo branch → chỉnh sửa → add → commit → push
→ mở PR → review → squash merge → cập nhật main
```

## 2. Thiết lập lần đầu cho thành viên mới

### 2.1. Chuẩn bị

Thành viên phải:

1. Cài Git, WSL2, Docker Desktop và IIC-OSIC-TOOLS.
2. Dùng image `hpretl/iic-osic-tools:2026.09`.
3. Có tài khoản GitHub và xác minh email.
4. Gửi GitHub username cho nhóm trưởng.
5. Chấp nhận lời mời collaborator trước khi clone private repo.

Kiểm tra Git trong PowerShell:

```powershell
git --version
```

Nếu chưa có Git:

```powershell
winget install --id Git.Git -e --source winget
```

Đóng và mở lại PowerShell sau khi cài.

### 2.2. Cấu hình danh tính

Dùng tên riêng và email đã xác minh trên GitHub:

```powershell
git config --global user.name "<Tên hiển thị>"
git config --global user.email "<Email GitHub>"
git config --global init.defaultBranch main
git config --global fetch.prune true
```

Kiểm tra:

```powershell
git config --global --get user.name
git config --global --get user.email
```

Không dùng chung danh tính Git giữa các thành viên.

### 2.3. Clone vào đúng thư mục

Repository phải nằm dưới `eda\designs` để Docker mount được:

```powershell
New-Item -ItemType Directory -Force "$HOME\eda\designs" | Out-Null
cd "$HOME\eda\designs"

git clone "https://github.com/Kuuhaku-CNK/CMOS-FullAdder-Sky130.git"
cd ".\CMOS-FullAdder-Sky130"
```

Khi trình duyệt đăng nhập xuất hiện, đăng nhập tài khoản GitHub đã được mời. Không gửi password/token cho người khác.

Cấu hình cho riêng repo:

```powershell
git config core.autocrlf false
git config pull.ff only
git config fetch.prune true
```

Kiểm tra:

```powershell
git branch --show-current
git remote -v
git status
git log --oneline -3
```

Kết quả phải có branch `main`, remote `origin` đúng URL và working tree clean.

### 2.4. Kiểm tra trong container

Hai đường dẫn sau là cùng một repository:

```text
Windows: C:\Users\<username>\eda\designs\CMOS-FullAdder-Sky130
Docker:  /foss/designs/CMOS-FullAdder-Sky130
```

Trong terminal IIC-OSIC-TOOLS:

```bash
cd /foss/designs/CMOS-FullAdder-Sky130
source .designinit
bash scripts/check_environment.sh
```

Kết quả cuối phải là `Environment check: PASS`.

## 3. Quy trình làm việc mỗi nhiệm vụ

### Bước 1 — Đồng bộ `main`

Đóng Xschem/Magic/KLayout rồi chạy:

```powershell
cd "$HOME\eda\designs\CMOS-FullAdder-Sky130"
git status
git switch main
git pull --ff-only
```

Chỉ tiếp tục khi working tree clean.

### Bước 2 — Tạo branch

```powershell
git switch -c <loai>/<mo-ta-ngan>
```

Ví dụ:

```powershell
git switch -c schematic/inverter-testbench
git switch -c layout/inverter-first-pass
git switch -c verify/inverter-lvs
git switch -c sim/static-adder-tt
git switch -c docs/week-02-review
```

Tiền tố chuẩn: `schematic/`, `sim/`, `layout/`, `verify/`, `script/`, `docs/`, `fix/`.

### Bước 3 — Kiểm tra và stage

```powershell
git status
git diff
```

Ưu tiên stage từng file:

```powershell
git add "cells/inverter/xschem/inverter.sch"
git add "cells/inverter/sim/inverter_tb.sch"
git diff --staged
```

Nếu stage nhầm nhưng muốn giữ nội dung:

```powershell
git restore --staged "<file>"
```

Chỉ dùng `git add .` sau khi đã đọc `git status`.

### Bước 4 — Commit và push

```powershell
git commit -m "<type>: <mô tả ngắn>"
git push -u origin HEAD
```

Ví dụ commit tốt:

```powershell
git commit -m "schematic: add inverter testbench"
git commit -m "layout: complete inverter DRC-clean layout"
git commit -m "verify: add inverter LVS evidence"
```

Tránh message mơ hồ như `update`, `done`, `final`.

Sau lần push đầu, những lần tiếp theo chỉ cần:

```powershell
git push
```

### Bước 5 — Pull request, review và merge

Trên GitHub:

1. Chọn **Pull requests → New pull request**.
2. Base là `main`; compare là branch vừa push.
3. Ghi mục tiêu, thay đổi, cách kiểm tra và kết quả.
4. Chọn một thành viên khác làm reviewer.

Mẫu mô tả:

```markdown
## Mục tiêu
## Thay đổi chính
## Cách kiểm tra lại
## Kết quả
- Simulation:
- DRC:
- LVS:
- PEX:
## Vấn đề còn lại
```

Reviewer kiểm tra phạm vi, file thừa, khả năng tái chạy và bằng chứng kỹ thuật. Nếu cần sửa, tiếp tục commit/push trên cùng branch; PR tự cập nhật.

Sau khi được approve:

1. Chọn **Squash and merge**.
2. Xóa branch trên GitHub.
3. Cập nhật máy:

```powershell
git switch main
git pull --ff-only
git branch -d <branch-da-merge>
git fetch --prune
```

## 4. Quy tắc riêng cho file EDA

- Trước khi sửa `.sch`/`.mag`, thông báo và nhận ownership của file.
- Không để hai người chỉnh cùng một file song song.
- Đóng tool trước `switch`, `pull` hoặc merge.
- Sau khi merge file EDA, mở lại bằng tool và chạy kiểm tra tương ứng.

Nên commit:

- `.sch`, `.sym`, `.mag` nguồn;
- testbench và script;
- cấu hình DRC/LVS/PEX/PVT;
- CSV tổng hợp, hình báo cáo và tài liệu.

Không nên commit:

- raw waveform/log tạm;
- cache/backup editor;
- model hoặc PDK từ `/foss/pdks`;
- password/token;
- GDS trung gian không cần thiết.

## 5. Xử lý conflict

```powershell
git status
git diff --name-only --diff-filter=U
```

Với Markdown/script: chỉnh nội dung giữa các marker `<<<<<<<`, `=======`, `>>>>>>>`, xóa marker rồi:

```powershell
git add "<file>"
git commit
git push
```

Với `.sch`, `.mag` hoặc `.gds`:

1. Không giải quyết máy móc bằng editor text.
2. Nếu chưa chắc, chạy `git merge --abort`.
3. Hai tác giả thống nhất phiên bản nền.
4. Một người áp dụng lại thay đổi bằng Xschem/Magic.
5. Chạy lại simulation hoặc DRC/LVS trước khi commit.

Không dùng `push --force` để vượt conflict.

## 6. Lỗi thường gặp

### `Repository not found`

Kiểm tra lời mời collaborator, GitHub account đang đăng nhập và `git remote -v`.

### Push bị `non-fast-forward`

Không force push:

```powershell
git fetch origin
git status
git merge origin/<ten-branch>
```

Nếu lỗi trên `main`, dừng và hỏi nhóm trưởng.

### Pull báo local changes sẽ bị ghi đè

Chạy `git status` và `git diff`, rồi commit vào branch riêng trước khi pull. Không dùng `reset --hard`.

### Branch chưa có upstream

```powershell
git push -u origin HEAD
```

### Detached HEAD

Nếu `git branch --show-current` không trả về tên branch, dừng commit và chạy:

```powershell
git switch <ten-branch>
```

### `dubious ownership`

Thường do copy `.git` từ tài khoản khác. Thành viên nên clone lại bằng tài khoản Windows của mình; không thêm wildcard `safe.directory '*'`.

### LF/CRLF

Repo đã có `.gitattributes`. Đặt cho riêng repo:

```powershell
git config core.autocrlf false
```

## 7. Khôi phục an toàn

Unstage nhưng giữ nội dung:

```powershell
git restore --staged "<file>"
```

Commit sai đã push: tạo commit đảo ngược, không reset lịch sử:

```powershell
git revert <commit-hash>
git push
```

`git restore <file>` sẽ xóa thay đổi chưa commit. Chỉ dùng sau khi đọc `git diff` và sao lưu file cần giữ.

Muốn sao lưu công việc chưa xong, commit WIP trên branch cá nhân; không merge WIP vào `main`:

```powershell
git add "<cac-file-lien-quan>"
git commit -m "wip: save inverter progress"
git push -u origin HEAD
```

## 8. Bài onboarding cho thành viên mới

```powershell
git switch main
git pull --ff-only
git switch -c docs/onboarding-<github-username>
```

Tạo `docs/onboarding/<github-username>.md`:

```markdown
# Onboarding — <username>
- Git version:
- Docker image: hpretl/iic-osic-tools:2026.09
- PDK: sky130A
- Environment check: PASS/FAIL
- Ngày hoàn thành:
- Vấn đề gặp phải:
```

Commit và push:

```powershell
git add "docs/onboarding/<github-username>.md"
git commit -m "docs: add <username> onboarding check"
git push -u origin HEAD
```

Mở PR, nhờ thành viên khác review và squash merge.

## 9. Cheat sheet

```powershell
# Kiểm tra
git status
git diff
git diff --staged
git log --oneline --graph --decorate --all -10

# Đồng bộ và branch
git switch main
git pull --ff-only
git switch -c <branch-moi>
git fetch --prune

# Commit và push
git add "<file>"
git commit -m "<type>: <mo-ta>"
git push -u origin HEAD
```

## 10. Khi nào phải dừng và hỏi nhóm?

Dừng khi:

- lệnh yêu cầu `--force`;
- định dùng `reset --hard` hoặc `clean -fd`;
- conflict trong `.sch`, `.mag` hoặc `.gds`;
- pull/push lỗi trên `main`;
- không biết mình đang ở branch nào;
- sắp xóa branch nhưng chưa chắc đã merge;
- PDK, raw output lớn hoặc credential xuất hiện trong `git status`.

## 11. Tài liệu tham khảo

- Git Book: <https://git-scm.com/book/en/v2>
- GitHub Git guide: <https://docs.github.com/en/get-started/using-git/about-git>
- GitHub pull requests: <https://docs.github.com/en/pull-requests/collaborating-with-pull-requests>
- GitHub merge conflicts: <https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts>
