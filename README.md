# CMOS Full Adder — SKY130A

Đồ án thiết kế transistor-level, layout và đánh giá post-layout cho mạch cộng đầy đủ 1-bit trên công nghệ SKY130A.

## Mục tiêu

Nhóm thiết kế và so sánh hai kiến trúc:

1. Static CMOS Full Adder.
2. Transmission-Gate Full Adder.

Hai kiến trúc phải được đánh giá trong cùng điều kiện về nguồn, input slew, tải đầu ra và PVT. Các chỉ tiêu chính gồm:

- tính đúng chức năng với tám tổ hợp `A`, `B`, `Cin`;
- `tpLH`, `tpHL` và worst-case propagation delay;
- công suất tĩnh và công suất động;
- năng lượng mỗi phép cộng và PDP;
- diện tích layout và số transistor;
- độ bền vững qua các góc PVT;
- chênh lệch giữa pre-layout và post-layout.

## Môi trường chuẩn

- IIC-OSIC-TOOLS image: `hpretl/iic-osic-tools:2026.09`
- PDK: `sky130A`
- Schematic: Xschem
- Simulation: ngspice
- Layout/DRC/PEX: Magic
- LVS: Netgen
- GDS inspection: KLayout

## Bắt đầu làm việc

Trên Windows, mở Docker Desktop rồi chạy:

```powershell
docker start iic-osic-tools_xvnc
Start-Process "http://localhost/vnc.html?password=abc123"
```

Trong terminal IIC-OSIC-TOOLS:

```bash
cd /foss/designs/CMOS-FullAdder-Sky130
source .designinit
bash scripts/check_environment.sh
```

Trước mỗi phiên làm việc:

```bash
git switch main
git pull --ff-only
git switch -c <loai>/<mo-ta-ngan>
```

Ví dụ:

```bash
git switch -c schematic/inverter-testbench
git switch -c layout/static-full-adder
git switch -c verify/pvt-tt-ss-ff
git switch -c docs/week-02-review
```

Không làm trực tiếp trên `main`. Xem [CONTRIBUTING.md](CONTRIBUTING.md) trước khi commit.

## Cấu trúc repository

```text
CMOS-FullAdder-Sky130/
├── .designinit                  # Cấu hình SKY130A dùng chung
├── cells/
│   ├── inverter/               # Cell thử nghiệm bắt buộc
│   ├── full_adder_static_cmos/ # Kiến trúc Static CMOS
│   └── full_adder_tg/          # Kiến trúc Transmission Gate
├── config/                     # Điều kiện đo và ma trận PVT
├── docs/                       # Phạm vi, quyết định và review hằng tuần
├── report/                     # Hình, bảng và tài liệu báo cáo
├── results/                    # Bảng tổng hợp so sánh cuối
├── scripts/                    # Script kiểm tra và tự động hóa
└── shared/                     # Testbench, symbol và tài nguyên dùng chung
```

Mỗi cell sử dụng cùng cấu trúc:

```text
cell-name/
├── xschem/   # .sch và .sym
├── sim/      # testbench, control script và netlist cần lưu
├── magic/    # .mag và script layout/DRC
├── pex/      # cấu hình/netlist post-layout cần lưu
└── results/  # CSV, plot và tóm tắt kết quả đã chọn lọc
```

## Thành viên

- Nhóm trưởng: `Kuuhaku-CNK`
- Collaborator: `ltmhuy` `KendySpas`

## Trạng thái ban đầu

- [ ] Inverter schematic và pre-layout simulation
- [ ] Inverter layout DRC clean
- [ ] Inverter LVS match
- [ ] Inverter PEX và post-layout simulation
- [ ] Chốt điều kiện đo chung
- [ ] Static CMOS Full Adder
- [ ] Transmission-Gate Full Adder
- [ ] So sánh PVT và tổng hợp báo cáo
