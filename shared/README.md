# Shared resources

Chỉ đặt tại đây các tài nguyên thực sự dùng chung giữa nhiều cell:

- symbol do nhóm tự tạo;
- waveform/input sequence chuẩn;
- subcircuit/helper cần dùng lại;
- testbench fragment dùng chung.

Không sao chép model SKY130A vào repository. Model phải được tham chiếu từ `$PDKPATH` để tránh lệch phiên bản PDK.
