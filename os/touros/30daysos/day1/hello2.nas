; 采用标准FAT12 格式

DB 0xeb, 0x4e, 0x90
; 启动区名字 8 byte 内任意 **不足 8 需要补全
; 8 bytes = 8 characters (in ASCII Code)
; In general, 1 byte = 1 ASCII character. 2 bytes = 1 UTF-16 character.
DB "TINYOS  "
; 单个扇区 sector 大小 必须是 512 bytes
DW 512
; 簇 cluster 大小 必须为 1 个扇区
DB 1
; FAT 起始位置
DW 1
DB 2 
DW 224
DW 2880
DB 0xf0
DW 9
DW 18
DW 2
DD 0 
DD 2880
DB 0,0,0x29
DD 0xffffffff
DB "TINYOS     "
DB "FAT12   "
; 空出 18 bytes
RESB 18

; Body
DB 0xb8, 0x00, 0x00, 0x8e, 0xd0, 0xbc, 0x00, 0x7c
DB 0x8e, 0xd8, 0x8e, 0xc0, 0xbe, 0x74, 0x7c, 0x8a
DB 0x04, 0x83, 0xc6, 0x01, 0x3c, 0x00, 0x74, 0x09
DB 0xb4, 0x0e, 0xbb, 0x0f, 0x00, 0xcd, 0x10, 0xeb ;; 0x03->0x0e
DB 0xee, 0xf4, 0xeb, 0xfd

; Display

; Newline
DB 0x0a, 0x0a
DB "Good Morning"
DB 0x0a
DB 0 

; RESB 0x1fe-$
RESB 0x1fe-($-$$)
DB 0x55, 0xaa

DB 0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00
RESB 4600
DB 0xf0, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00
RESB 1469432
