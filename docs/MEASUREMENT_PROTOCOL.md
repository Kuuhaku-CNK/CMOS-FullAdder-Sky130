# Measurement protocol

Tài liệu này là hợp đồng đo chung. Không so sánh hai kiến trúc trước khi các mục `TBD` được cả nhóm chốt.

## Điều kiện chung

| Tham số | Giá trị | Trạng thái |
|---|---:|---|
| Device flavor | TBD | Chốt sau inverter |
| Nominal VDD | TBD | Chốt sau inverter |
| Input slew | TBD | Chốt sau inverter |
| Sum load | TBD | Chốt sau inverter |
| Cout load | TBD | Chốt sau inverter |
| Nominal temperature | TBD | Chốt trước benchmark |
| Measurement threshold | 50% VDD đề xuất | Cần xác nhận |
| Simulation step/maxstep | TBD | Chốt trước benchmark |

## Delay

- Đo `tpLH` và `tpHL` từ thời điểm input liên quan đi qua ngưỡng đến khi output đi qua ngưỡng.
- Ghi rõ input transition gây ra phép đo.
- Dùng worst-case hợp lệ trong tập vector đã xác định.
- Không dùng khác input slew hoặc output load giữa hai kiến trúc.

## Power và energy

- Tách rõ static power và dynamic/average power.
- Nguồn kích thích phải bao phủ cùng sequence và cùng thời gian đo.
- Loại bỏ hoặc ghi rõ khoảng khởi tạo.
- Ghi quy ước dấu dòng nguồn.
- PDP dùng cùng định nghĩa delay cho cả hai kiến trúc.

## PVT

Mức tối thiểu:

- Process: TT, SS, FF.
- Voltage: thấp, danh định, cao quanh VDD đã chọn.
- Temperature: thấp, phòng và cao.

SF/FS chỉ thêm nếu tiến độ cho phép. Mọi run phải ghi đầy đủ corner, VDD, temperature, input slew, output load và netlist source (`schematic` hoặc `pex`).

## Post-layout

- Cùng testbench logic với pre-layout.
- Không thay kích thước transistor giữa hai lần đo.
- Lưu extraction command/config và log.
- Báo cáo cả số tuyệt đối và phần trăm thay đổi pre-layout → post-layout.
