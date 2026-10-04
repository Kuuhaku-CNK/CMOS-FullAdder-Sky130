# Phạm vi đồ án

## In scope

- Inverter làm cell kiểm chứng quy trình.
- Một Full Adder Static CMOS transistor-level.
- Một Full Adder dùng Transmission Gate.
- Schematic và pre-layout simulation.
- Custom layout.
- DRC, LVS và parasitic extraction.
- Post-layout simulation.
- Đánh giá chức năng, delay, power, energy/PDP, area và PVT.
- Báo cáo so sánh công bằng giữa hai kiến trúc.

## Ngoài phạm vi mặc định

Các mục sau chỉ thực hiện nếu phần bắt buộc đã ổn định:

- tapeout;
- padframe/chip top;
- place-and-route tự động toàn chip;
- characterization thành Liberty standard cell hoàn chỉnh;
- Monte Carlo/mismatch quy mô lớn;
- electromigration hoặc sign-off reliability nâng cao.

## Tiêu chí hoàn thành tối thiểu

1. Hai kiến trúc đúng bảng chân trị ở schematic.
2. Hai layout DRC clean.
3. Hai layout LVS match schematic.
4. Có post-layout simulation từ extracted netlist.
5. Các phép đo dùng cùng điều kiện đã khóa.
6. Có bảng so sánh và phân tích nguyên nhân, không chỉ liệt kê số liệu.
