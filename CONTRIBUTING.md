# Quy trình cộng tác

## Nguyên tắc

1. `main` phải luôn ở trạng thái có thể chạy lại được.
2. Không push trực tiếp lên `main`; mọi thay đổi đi qua branch và pull request.
3. Một pull request chỉ giải quyết một mục tiêu rõ ràng.
4. Người tạo pull request không tự merge trước khi có ít nhất một thành viên review.
5. Không merge schematic/layout nếu chưa kèm bằng chứng kiểm tra phù hợp.
6. Không commit file raw lớn, file tạm hoặc output có thể tái tạo tự động.

## Bắt đầu một công việc

```bash
git switch main
git pull --ff-only
git switch -c <loai>/<mo-ta-ngan>
```

Các tiền tố branch:

- `schematic/`: schematic, symbol hoặc testbench Xschem;
- `sim/`: mô phỏng, measurement và sweep;
- `layout/`: layout Magic/KLayout;
- `verify/`: DRC, LVS, PEX hoặc PVT;
- `script/`: tự động hóa;
- `docs/`: tài liệu và báo cáo;
- `fix/`: sửa lỗi đã xác định.

## Trước khi commit

```bash
git status
git diff --check
bash scripts/check_environment.sh
```

Ngoài ra cần kiểm tra theo loại thay đổi:

| Loại thay đổi | Bằng chứng tối thiểu |
|---|---|
| Schematic | Screenshot và kết quả tám vector hoặc test phù hợp |
| Layout | DRC clean hoặc danh sách lỗi còn lại có giải thích |
| LVS | Log/tóm tắt cho thấy circuits match |
| PEX | Netlist được tạo và post-layout simulation chạy được |
| Measurement | Điều kiện VDD, temperature, corner, load, slew và cách đo |

## Commit message

Dùng dạng:

```text
<type>: <mô tả ngắn ở thể chủ động>
```

Ví dụ:

```text
schematic: add inverter transient testbench
layout: complete inverter DRC-clean layout
verify: add inverter LVS evidence
sim: measure static adder TT delay and power
docs: record week 2 review decisions
```

## Push và tạo pull request

```bash
git add <cac-file-can-commit>
git commit -m "<type>: <mo-ta>"
git push -u origin HEAD
```

Trong pull request cần ghi:

- mục tiêu;
- file chính đã thay đổi;
- cách chạy lại;
- kết quả kiểm tra;
- screenshot/log/CSV liên quan;
- vấn đề còn tồn tại.

## Quy tắc xử lý file EDA

- Không để hai người đồng thời sửa cùng một file `.sch` hoặc `.mag`.
- Trước khi sửa một cell, thông báo trong nhóm và nhận ownership của cell/branch đó.
- Không giải quyết conflict `.sch`/`.mag` bằng cách chọn toàn bộ một phía mà không mở tool kiểm tra lại.
- Sau conflict, phải mở lại schematic/layout và chạy lại simulation hoặc DRC/LVS tương ứng.
- Chỉ commit GDS cuối hoặc milestone quan trọng; GDS là file binary và không merge được theo dòng.

## Review cuối tuần

Mỗi thành viên dùng template tại `docs/WEEKLY_REVIEW_TEMPLATE.md`, trình bày:

- đã học gì;
- đã làm gì;
- bằng chứng kết quả;
- lỗi/chặn hiện tại;
- kế hoạch tuần sau;
- điều cần người khác review.
