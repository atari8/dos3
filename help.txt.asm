; da65 V2.14 - Git b926301
; Created:    2014-12-26 16:45:00
; Input file: HELP.TXT
; Page:       1


        .setcpu "6502"

	.macro  Inverse       Arg
		.repeat .strlen(Arg), I
			.scope
				Ch = .strat(Arg, I)
				.byte Ch | $80
			.endscope
		.endrep
	.endmacro

; ----------------------------------------------------------------------------
L0228           := $0228
L2020           := $2020
L202E           := $202E
L2031           := $2031
L2032           := $2032
L2033           := $2033
L2034           := $2034
L2036           := $2036
L2037           := $2037
L2041           := $2041
L2043           := $2043
L2044           := $2044
L2045           := $2045
L2047           := $2047
L2049           := $2049
L204C           := $204C
L204D           := $204D
L204E           := $204E
L2050           := $2050
L2052           := $2052
L2053           := $2053
L2054           := $2054
L2058           := $2058
L2059           := $2059
L2061           := $2061
L2065           := $2065
L206C           := $206C
L2070           := $2070
L2074           := $2074
L2079           := $2079
L209B           := $209B
L2865           := $2865
L2C35           := $2C35
L2C58           := $2C58
L2D33           := $2D33
L2D65           := $2D65
L2E32           := $2E32
L2E45           := $2E45
L2E65           := $2E65
L2E79           := $2E79
L3120           := $3120
L3144           := $3144
L3228           := $3228
L3320           := $3320
L3420           := $3420
L3A43           := $3A43
L3A45           := $3A45
L3A50           := $3A50
L3B65           := $3B65
L4120           := $4120
L4142           := $4142
L4143           := $4143
L414D           := $414D
L4152           := $4152
L4153           := $4153
L4154           := $4154
L4320           := $4320
L4420           := $4420
L4428           := $4428
L4445           := $4445
L4542           := $4542
L4548           := $4548
L454D           := $454D
L4552           := $4552
L4920           := $4920
L4944           := $4944
L4946           := $4946
L4957           := $4957
L4D28           := $4D28
L4D43           := $4D43
L4D46           := $4D46
L4E49           := $4E49
L4E4F           := $4E4F
L4F20           := $4F20
L4F43           := $4F43
L4F44           := $4F44
L4F4E           := $4F4E
L4F54           := $4F54
L5020           := $5020
L5041           := $5041
L5220           := $5220
L5244           := $5244
L5245           := $5245
L524F           := $524F
L5345           := $5345
L5420           := $5420
L5441           := $5441
L5453           := $5453
L554D           := $554D
L5552           := $5552
L5720           := $5720
L5928           := $5928
L8E13           := $8E13
L8E39           := $8E39
L9B31           := $9B31
L9B32           := $9B32
L9B34           := $9B34
L9B36           := $9B36
L9B37           := $9B37
L9B4E           := $9B4E
L9B59           := $9B59
L9B61           := $9B61
L9B65           := $9B65
LE902           := $E902
LFF01           := $FF01
; ----------------------------------------------------------------------------

	.SEGMENT	"SEG1H"

	.word	$FFFF
	.word	$5E60
	.word	$8E04

; ----------------------------------------------------------------------------

	.SEGMENT	"SEG1"

        .byte   $4F                             ; 5E60 4F                       O
        brk                                     ; 5E61 00                       .
        .byte   $FF                             ; 5E62 FF                       .
        sbc     $5901,y                         ; 5E63 F9 01 59                 ..Y
        ora     ($92,x)                         ; 5E66 01 92                    ..
        ora     ($1A,x)                         ; 5E68 01 1A                    ..
        ora     ($FF,x)                         ; 5E6A 01 FF                    ..
        sbc     $01                             ; 5E6C E5 01                    ..
        .byte   $89                             ; 5E6E 89                       .
        ora     ($5E,x)                         ; 5E6F 01 5E                    .^
        ora     ($FF,x)                         ; 5E71 01 FF                    ..
        bmi     L5E77                           ; 5E73 30 02                    0.
        .byte   $FF                             ; 5E75 FF                       .
        .byte   $0B                             ; 5E76 0B                       .
L5E77:  .byte   $02                             ; 5E77 02                       .
        .byte   $FF                             ; 5E78 FF                       .
        ora     ($02),y                         ; 5E79 11 02                    ..
        .byte   $FF                             ; 5E7B FF                       .
        .byte   $17                             ; 5E7C 17                       .
        .byte   $02                             ; 5E7D 02                       .
        .byte   $FF                             ; 5E7E FF                       .
        cpx     LFF01                           ; 5E7F EC 01 FF                 ...
        .byte   $1C                             ; 5E82 1C                       .
        .byte   $02                             ; 5E83 02                       .
        .byte   $FF                             ; 5E84 FF                       .
        .byte   $C3                             ; 5E85 C3                       .
        ora     ($FF,x)                         ; 5E86 01 FF                    ..
        jmp     LFF01                           ; 5E88 4C 01 FF                 L..

; ----------------------------------------------------------------------------
        cmp     ($01,x)                         ; 5E8B C1 01                    ..
        .byte   $FF                             ; 5E8D FF                       .
        .byte   $B2                             ; 5E8E B2                       .
        ora     ($FF,x)                         ; 5E8F 01 FF                    ..
        ora     $02,x                           ; 5E91 15 02                    ..
        .byte   $FF                             ; 5E93 FF                       .
        .byte   $72                             ; 5E94 72                       r
        ora     ($F9,x)                         ; 5E95 01 F9                    ..
        .byte   $01                             ; 5E97 01                       .
L5E98:  .byte   $FF                             ; 5E98 FF                       .
        ldx     LFF01                           ; 5E99 AE 01 FF                 ...
        .byte   $FA                             ; 5E9C FA                       .
        ora     ($65,x)                         ; 5E9D 01 65                    .e
        ora     ($A0,x)                         ; 5E9F 01 A0                    ..
        ora     ($C2,x)                         ; 5EA1 01 C2                    ..
        ora     ($EC,x)                         ; 5EA3 01 EC                    ..
        ora     ($C2,x)                         ; 5EA5 01 C2                    ..
L5EA7:  ora     ($FF,x)                         ; 5EA7 01 FF                    ..
        .byte   $02
	Inverse "Copy/Append"
	.byte	$16
	.byte	"Help Screen       1 of 4",$9B,$9B
	.byte	"1. Press C to"
	.byte	$02
	Inverse	"COPY"
	.byte	$16
	.byte	"or"
        .byte   $02
	Inverse	"APPEND"
	.byte	$16
	.byte	"files.",$9B
	.byte	"   COPYing creates a duplicate file",$9B
	.byte	"   on the same or another disk.",$9B
	.byte	"   APPENDing copies a file and joins",$9B
	.byte	"   it to another file.  PRESS C WITH",$9B
	.byte	"   DOS DISK IN DRIVE 1.",$9B,$9B
	.byte	"Note: Use COPY to write DOS files",$9B
	.byte	"onto other disks as needed.",$9B,$9B
	.byte	"2."
	.byte	$02
	Inverse	"Append (Y/N)?"
	.byte	$16
	.byte	"Press Y to append",$9B
	.byte	"   (join) two or more files.  If you",$9B
	.byte	"   press N or RETURN, DOS will copy",$9B
	.byte	"   without appending.",$9B,$9B
	.byte	"You can COPY or APPEND using one or",$9B
	.byte	"two disks and one or two drives.",$9B
	.byte	$02
	Inverse	"Copy/Append"
	.byte	$16
	.byte	"Help Screen       2 of 4",$9B,$9B
	.byte	"3."
	.byte	$02
	Inverse	"Source device?"
	.byte	$16
	.byte	"Specify",$9B
	.byte	"   device with source file(s).  Dn:=",$9B
	.byte	"   drive no., E:=screen, C:=cassette.",$9B,$9B
        .byte   $34                             ; 612F 34                       4
        rol     $D302                           ; 6130 2E 02 D3                 ...
        .byte   $EF                             ; 6133 EF                       .
        sbc     $F2,x                           ; 6134 F5 F2                    ..
        .byte   $E3                             ; 6136 E3                       .
        sbc     $A0                             ; 6137 E5 A0                    ..
        inc     $E9                             ; 6139 E6 E9                    ..
        cpx     $EEE5                           ; 613B EC E5 EE                 ...
        sbc     ($ED,x)                         ; 613E E1 ED                    ..
        sbc     $BF                             ; 6140 E5 BF                    ..
        .byte   $16                             ; 6142 16                       .
L6143:  eor     $6E                             ; 6143 45 6E                    En
        .byte   $74                             ; 6145 74                       t
        adc     $72                             ; 6146 65 72                    er
        jsr     L6966                           ; 6148 20 66 69                  fi
	.byte	"len"

; ----------------------------------------------------------------------------
        adc     ($6D,x)                         ; 614E 61 6D                    am
        adc     $2E                             ; 6150 65 2E                    e.
        .byte   $9B                             ; 6152 9B                       .
        jsr     L2020                           ; 6153 20 20 20                    
        .byte   $57                             ; 6156 57                       W
        adc     #$6C                            ; 6157 69 6C                    il
        .byte   $64                             ; 6159 64                       d
        .byte   $63                             ; 615A 63                       c
        adc     ($72,x)                         ; 615B 61 72                    ar
        .byte   $64                             ; 615D 64                       d
        .byte   $73                             ; 615E 73                       s
        jsr     L6163                           ; 615F 20 63 61                  ca
        .byte   $6E                             ; 6162 6E                       n
L6163:  .byte   $20                             ; 6163 20                        
L6164:  .byte   $62                             ; 6164 62                       b
L6165:  adc     $20                             ; 6165 65 20                    e 
        .byte   $75                             ; 6167 75                       u
L6168:  .byte   $73                             ; 6168 73                       s
        adc     $64                             ; 6169 65 64                    ed
        .byte   $2E                             ; 616B 2E                       .
L616C:  .byte   $9B                             ; 616C 9B                       .
L616D:  .byte   $9B                             ; 616D 9B                       .
L616E:  .byte   $35                             ; 616E 35                       5
L616F:  .byte   $2E                             ; 616F 2E                       .
L6170:  .byte   $02                             ; 6170 02                       .
        cpy     $E5                             ; 6171 C4 E5                    ..
L6173:  .byte   $F3                             ; 6173 F3                       .
        .byte   $F4                             ; 6174 F4                       .
        .byte   $E9                             ; 6175 E9                       .
L6176:  inc     $F4E1                           ; 6176 EE E1 F4                 ...
        sbc     #$EF                            ; 6179 E9 EF                    ..
        inc     $E4A0                           ; 617B EE A0 E4                 ...
        sbc     $F6                             ; 617E E5 F6                    ..
        sbc     #$E3                            ; 6180 E9 E3                    ..
        sbc     $BF                             ; 6182 E5 BF                    ..
        asl     $9B,x                           ; 6184 16 9B                    ..
	.byte	"   Specify device to receive file(s)",$9B
	.byte	"   or with file(s) to be appended.",$9B
	.byte	"   D"
        ror     $3D3A                           ; 61D2 6E 3A 3D                 n:=
        .byte   $64                             ; 61D5 64                       d
        .byte   $72                             ; 61D6 72                       r
        adc     #$76                            ; 61D7 69 76                    iv
        adc     $20                             ; 61D9 65 20                    e 
        ror     $2E6F                           ; 61DB 6E 6F 2E                 no.
        bit     $4520                           ; 61DE 2C 20 45                 , E
        .byte   $3A                             ; 61E1 3A                       :
	.byte	"=sc"
        .byte   $72                             ; 61E5 72                       r
        adc     $65                             ; 61E6 65 65                    ee
        .byte   $6E                             ; 61E8 6E                       n
        .byte   $2C                             ; 61E9 2C                       ,
L61EA:  jsr     L3A50                           ; 61EA 20 50 3A                  P:
        and     L209B,x                         ; 61ED 3D 9B 20                 =. 
        .byte   $20                             ; 61F0 20                        
	.byte	" pr"
        adc     #$6E                            ; 61F4 69 6E                    in
        .byte   $74                             ; 61F6 74                       t
        adc     $72                             ; 61F7 65 72                    er
L61F9:  rol     $029B                           ; 61F9 2E 9B 02                 ...
        .byte   $C3                             ; 61FC C3                       .
        .byte   $EF                             ; 61FD EF                       .
        beq     L61F9                           ; 61FE F0 F9                    ..
        .byte   $AF                             ; 6200 AF                       .
        cmp     ($F0,x)                         ; 6201 C1 F0                    ..
        beq     L61EA                           ; 6203 F0 E5                    ..
        inc     $16E4                           ; 6205 EE E4 16                 ...
        pha                                     ; 6208 48                       H
        adc     $6C                             ; 6209 65 6C                    el
        bvs     L622D                           ; 620B 70 20                    p 
        .byte   $53                             ; 620D 53                       S
        .byte   $63                             ; 620E 63                       c
        .byte   $72                             ; 620F 72                       r
        adc     $65                             ; 6210 65 65                    ee
        ror     L2020                           ; 6212 6E 20 20                 n  
        jsr     L2020                           ; 6215 20 20 20                    
        jsr     L3320                           ; 6218 20 20 33                   3
        jsr     L666F                           ; 621B 20 6F 66                  of
        .byte   $20                             ; 621E 20                        
        .byte   $34                             ; 621F 34                       4
L6220:  .byte   $9B                             ; 6220 9B                       .
        .byte   $9B                             ; 6221 9B                       .
        rol     $2E,x                           ; 6222 36 2E                    6.
        .byte   $02                             ; 6224 02                       .
        cpy     $E5                             ; 6225 C4 E5                    ..
L6227:  .byte   $F3                             ; 6227 F3                       .
L6228:  .byte   $F4                             ; 6228 F4                       .
        sbc     #$EE                            ; 6229 E9 EE                    ..
        sbc     ($F4,x)                         ; 622B E1 F4                    ..
L622D:  sbc     #$EF                            ; 622D E9 EF                    ..
        inc     $E6A0                           ; 622F EE A0 E6                 ...
        sbc     #$EC                            ; 6232 E9 EC                    ..
        sbc     $EE                             ; 6234 E5 EE                    ..
        sbc     ($ED,x)                         ; 6236 E1 ED                    ..
        sbc     $BF                             ; 6238 E5 BF                    ..
        asl     $28,x                           ; 623A 16 28                    .(
        .byte   $57                             ; 623C 57                       W
        adc     #$6C                            ; 623D 69 6C                    il
        .byte   $64                             ; 623F 64                       d
        .byte   $63                             ; 6240 63                       c
        adc     ($72,x)                         ; 6241 61 72                    ar
        .byte   $64                             ; 6243 64                       d
        .byte   $73                             ; 6244 73                       s
        .byte   $9B                             ; 6245 9B                       .
        jsr     L2020                           ; 6246 20 20 20                    
        .byte   $63                             ; 6249 63                       c
        adc     ($6E,x)                         ; 624A 61 6E                    an
        jsr     L6562                           ; 624C 20 62 65                  be
        jsr     L7375                           ; 624F 20 75 73                  us
        adc     $64                             ; 6252 65 64                    ed
        rol     $2029                           ; 6254 2E 29 20                 .) 
        .byte	" If appending, use",$9B
        jsr     L2020                           ; 626A 20 20 20                    
        adc     $78                             ; 626D 65 78                    ex
        adc     #$73                            ; 626F 69 73                    is
        .byte   $74                             ; 6271 74                       t
        adc     #$6E                            ; 6272 69 6E                    in
        .byte   $67                             ; 6274 67                       g
        jsr     L616E                           ; 6275 20 6E 61                  na
        adc     L2E65                           ; 6278 6D 65 2E                 me.
        jsr     L4920                           ; 627B 20 20 49                   I
        ror     $20                             ; 627E 66 20                    f 
        .byte   $63                             ; 6280 63                       c
        .byte   $6F                             ; 6281 6F                       o
        bvs     L62FD                           ; 6282 70 79                    py
        adc     #$6E                            ; 6284 69 6E                    in
        .byte   $67                             ; 6286 67                       g
	.byte	" on"
        .byte   $74                             ; 628A 74                       t
        .byte   $6F                             ; 628B 6F                       o
        .byte   $9B                             ; 628C 9B                       .
	.byte	"   same disk, choose new filename.",$9B,$9B
	.byte	"Note: DOS does not allow duplicate",$9B
        .byte	"filen"
        adc     ($6D,x)                         ; 62D9 61 6D                    am
        adc     $73                             ; 62DB 65 73                    es
        .byte	" on"
        jsr     L2061                           ; 62E0 20 61 20                  a 
        .byte   $73                             ; 62E3 73                       s
        adc     #$6E                            ; 62E4 69 6E                    in
        .byte   $67                             ; 62E6 67                       g
        jmp     (L2065)                         ; 62E7 6C 65 20                 le 

; ----------------------------------------------------------------------------
        .byte   $64                             ; 62EA 64                       d
        adc     #$73                            ; 62EB 69 73                    is
        .byte   $6B                             ; 62ED 6B                       k
        rol     $9B9B                           ; 62EE 2E 9B 9B                 ...
        .byte   $37                             ; 62F1 37                       7
        rol     $C102                           ; 62F2 2E 02 C1                 ...
        .byte   $F2                             ; 62F5 F2                       .
        sbc     $A0                             ; 62F6 E5 A0                    ..
        .byte   $F3                             ; 62F8 F3                       .
        .byte   $EF                             ; 62F9 EF                       .
        sbc     $F2,x                           ; 62FA F5 F2                    ..
        .byte   $E3                             ; 62FC E3                       .
L62FD:  sbc     $A0                             ; 62FD E5 A0                    ..
        sbc     ($EE,x)                         ; 62FF E1 EE                    ..
        cpx     $A0                             ; 6301 E4 A0                    ..
        cpx     $E5                             ; 6303 E4 E5                    ..
        .byte   $F3                             ; 6305 F3                       .
        .byte   $F4                             ; 6306 F4                       .
        sbc     #$EE                            ; 6307 E9 EE                    ..
        sbc     ($F4,x)                         ; 6309 E1 F4                    ..
        sbc     #$EF                            ; 630B E9 EF                    ..
        inc     $F4A0                           ; 630D EE A0 F4                 ...
        inx                                     ; 6310 E8                       .
        sbc     $16                             ; 6311 E5 16                    ..
        .byte   $9B                             ; 6313 9B                       .
	.byte	"  "
	.byte	$02
        .byte   $F3                             ; 6317 F3                       .
        sbc     ($ED,x)                         ; 6318 E1 ED                    ..
        sbc     $A0                             ; 631A E5 A0                    ..
        cpx     $E9                             ; 631C E4 E9                    ..
        .byte   $F3                             ; 631E F3                       .
        .byte   $EB                             ; 631F EB                       .
L6320:  ldy     #$A8                            ; 6320 A0 A8                    ..
        cmp     $CEAF,y                         ; 6322 D9 AF CE                 ...
        lda     #$BF                            ; 6325 A9 BF                    ..
	.byte	$16
	.byte	"Press Y to",$9B
	.byte	"   copy/append files on same disk.",$9B
	.byte	"   Press N to copy/append files on",$9B
	.byte	"   different disks.",$9B
	.byte	$02
        .byte   $C3                             ; 638E C3                       .
        .byte   $EF                             ; 638F EF                       .
	.byte	$F0,$F9
        .byte   $AF                             ; 6392 AF                       .
        cmp     ($F0,x)                         ; 6393 C1 F0                    ..
	.byte	$F0,$E5
        inc     $16E4                           ; 6397 EE E4 16                 ...
	.byte	"Help Screen       4 of 4",$9B
L63B3:  .byte   $9B                             ; 63B3 9B                       .
L63B4:  sec                                     ; 63B4 38                       8
        rol     $C302                           ; 63B5 2E 02 C3                 ...
        .byte   $EF                             ; 63B8 EF                       .
        beq     L63B4                           ; 63B9 F0 F9                    ..
        .byte   $AF                             ; 63BB AF                       .
        cmp     ($F0,x)                         ; 63BC C1 F0                    ..
        .byte   $F0                             ; 63BE F0                       .
L63BF:  sbc     $EE                             ; 63BF E5 EE                    ..
        cpx     $A0                             ; 63C1 E4 A0                    ..
        sbc     ($EC,x)                         ; 63C3 E1 EC                    ..
        cpx     $F3A0                           ; 63C5 EC A0 F3                 ...
	.byte	$F0,$E5
        .byte   $E3                             ; 63CA E3                       .
        sbc     #$E6                            ; 63CB E9 E6                    ..
        sbc     #$E5                            ; 63CD E9 E5                    ..
        cpx     $A0                             ; 63CF E4 A0                    ..
        .byte   $E6                             ; 63D1 E6                       .
L63D2:  sbc     #$EC                            ; 63D2 E9 EC                    ..
        sbc     $F3                             ; 63D4 E5 F3                    ..
        asl     $9B,x                           ; 63D6 16 9B                    ..
	.byte	"  "
	.byte	$02
        tay                                     ; 63DB A8                       .
        cmp     $CEAF,y                         ; 63DC D9 AF CE                 ...
        lda     #$BF                            ; 63DF A9 BF                    ..
	.byte	$16
	.byte	" Press Y to copy/append all",$9B
	.byte	"   files in source filename.  Press N",$9B
        jsr     L2020                           ; 6424 20 20 20                    
        .byte   $6F                             ; 6427 6F                       o
L6428:  .byte   $72                             ; 6428 72                       r
        jsr     L4552                           ; 6429 20 52 45                  RE
        .byte   $54                             ; 642C 54                       T
        eor     $52,x                           ; 642D 55 52                    UR
	.byte	"N t"
        .byte   $6F                             ; 6432 6F                       o
        jsr     L6F63                           ; 6433 20 63 6F                  co
        bvs     L64B1                           ; 6436 70 79                    py
        .byte   $2F                             ; 6438 2F                       /
        adc     ($70,x)                         ; 6439 61 70                    ap
        bvs     L64A2                           ; 643B 70 65                    pe
        ror     $2064                           ; 643D 6E 64 20                 nd 
        ror     $69                             ; 6440 66 69                    fi
        jmp     (L7365)                         ; 6442 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" on"
        adc     $9B                             ; 6448 65 9B                    e.
        jsr     L2020                           ; 644A 20 20 20                    
        adc     ($74,x)                         ; 644D 61 74                    at
        jsr     L2061                           ; 644F 20 61 20                  a 
        .byte   $74                             ; 6452 74                       t
        adc     #$6D                            ; 6453 69 6D                    im
        adc     $2E                             ; 6455 65 2E                    e.
L6457:  .byte   $9B                             ; 6457 9B                       .
        .byte   $9B                             ; 6458 9B                       .
        and     L202E,y                         ; 6459 39 2E 20                 9. 
L645C:  eor     #$66                            ; 645C 49 66                    If
	.byte	" pr"
L6461:  .byte   $6F                             ; 6461 6F                       o
        .byte   $63                             ; 6462 63                       c
        adc     $73                             ; 6463 65 73                    es
L6465:  .byte   $73                             ; 6465 73                       s
        adc     #$6E                            ; 6466 69 6E                    in
        .byte   $67                             ; 6468 67                       g
L6469:  .byte   $20                             ; 6469 20                        
        .byte   $66                             ; 646A 66                       f
L646B:  adc     #$6C                            ; 646B 69 6C                    il
        adc     $73                             ; 646D 65 73                    es
        .byte	" one by one,",$9B
	.byte	"   DOS gives you a Y/N option for",$9B
        jsr     L2020                           ; 649E 20 20 20                    
        .byte   $65                             ; 64A1 65                       e
L64A2:  adc     ($63,x)                         ; 64A2 61 63                    ac
        pla                                     ; 64A4 68                       h
        rol     $029B                           ; 64A5 2E 9B 02                 ...
        cmp     ($E3,x)                         ; 64A8 C1 E3                    ..
        .byte   $E3                             ; 64AA E3                       .
        sbc     $F3                             ; 64AB E5 F3                    ..
        .byte   $F3                             ; 64AD F3                       .
        ldy     #$C4                            ; 64AE A0 C4                    ..
        .byte   $CF                             ; 64B0 CF                       .
L64B1:  .byte   $D3                             ; 64B1 D3                       .
        ldy     #$B2                            ; 64B2 A0 B2                    ..
	.byte	$16
	.byte	"Help Screen      1 of 3",$9B,$9B
	.byte	"1. Press A to access a DOS2-formatted",$9B
        jsr     L2020                           ; 64F4 20 20 20                    
        .byte   $64                             ; 64F7 64                       d
        adc     #$73                            ; 64F8 69 73                    is
        .byte   $6B                             ; 64FA 6B                       k
        .byte	" an"
        .byte   $64                             ; 64FE 64                       d
        jsr     L6F63                           ; 64FF 20 63 6F                  co
        ror     L6576                           ; 6502 6E 76 65                 nve
        .byte   $72                             ; 6505 72                       r
        .byte   $74                             ; 6506 74                       t
        .byte	" on"
        adc     $20                             ; 650A 65 20                    e 
        .byte   $6F                             ; 650C 6F                       o
        .byte   $72                             ; 650D 72                       r
        jsr     L6F6D                           ; 650E 20 6D 6F                  mo
        .byte   $72                             ; 6511 72                       r
        adc     $20                             ; 6512 65 20                    e 
        ror     $69                             ; 6514 66 69                    fi
        jmp     (L7365)                         ; 6516 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 6519 9B                       .
        jsr     L2020                           ; 651A 20 20 20                    
        .byte   $6F                             ; 651D 6F                       o
        .byte   $6E                             ; 651E 6E                       n
        .byte   $74                             ; 651F 74                       t
L6520:  .byte   $6F                             ; 6520 6F                       o
        jsr     L2061                           ; 6521 20 61 20                  a 
        .byte   $44                             ; 6524 44                       D
        .byte   $4F                             ; 6525 4F                       O
        .byte   $53                             ; 6526 53                       S
        jsr     L2D33                           ; 6527 20 33 2D                  3-
        ror     $6F                             ; 652A 66 6F                    fo
        .byte   $72                             ; 652C 72                       r
	.byte	"mat"
        .byte   $74                             ; 6530 74                       t
        adc     $64                             ; 6531 65 64                    ed
        jsr     L6964                           ; 6533 20 64 69                  di
        .byte   $73                             ; 6536 73                       s
        .byte   $6B                             ; 6537 6B                       k
        rol     L5020                           ; 6538 2E 20 50                 . P
        .byte   $52                             ; 653B 52                       R
        eor     $53                             ; 653C 45 53                    ES
        .byte   $53                             ; 653E 53                       S
        .byte   $9B                             ; 653F 9B                       .
        jsr     L2020                           ; 6540 20 20 20                    
        eor     ($20,x)                         ; 6543 41 20                    A 
        .byte   $57                             ; 6545 57                       W
        eor     #$54                            ; 6546 49 54                    IT
L6548:  pha                                     ; 6548 48                       H
        jsr     L4F44                           ; 6549 20 44 4F                  DO
        .byte   $53                             ; 654C 53                       S
L654D:  jsr     L4944                           ; 654D 20 44 49                  DI
        .byte   $53                             ; 6550 53                       S
        .byte   $4B                             ; 6551 4B                       K
        jsr     L4E49                           ; 6552 20 49 4E                  IN
        jsr     L5244                           ; 6555 20 44 52                  DR
        eor     #$56                            ; 6558 49 56                    IV
        eor     $20                             ; 655A 45 20                    E 
        and     ($2E),y                         ; 655C 31 2E                    1.
        .byte   $9B                             ; 655E 9B                       .
        .byte   $9B                             ; 655F 9B                       .
        .byte   $32                             ; 6560 32                       2
        .byte   $2E                             ; 6561 2E                       .
L6562:  .byte   $02                             ; 6562 02                       .
        .byte   $D3                             ; 6563 D3                       .
L6564:  .byte   $EF                             ; 6564 EF                       .
L6565:  sbc     $F2,x                           ; 6565 F5 F2                    ..
L6567:  .byte   $E3                             ; 6567 E3                       .
L6568:  sbc     $A0                             ; 6568 E5 A0                    ..
        .byte   $E4                             ; 656A E4                       .
L656B:  .byte   $F2                             ; 656B F2                       .
L656C:  .byte   $E9                             ; 656C E9                       .
L656D:  .byte   $F6                             ; 656D F6                       .
L656E:  sbc     $A0                             ; 656E E5 A0                    ..
L6570:  .byte   $EE                             ; 6570 EE                       .
        .byte   $F5                             ; 6571 F5                       .
L6572:  .byte   $ED                             ; 6572 ED                       .
L6573:  .byte   $E2                             ; 6573 E2                       .
L6574:  .byte   $E5                             ; 6574 E5                       .
L6575:  .byte   $F2                             ; 6575 F2                       .
L6576:  .byte   $BF                             ; 6576 BF                       .
	.byte	$16
	.byte	"Enter no. of",$9B
        jsr     L2020                           ; 6585 20 20 20                    
        .byte   $64                             ; 6588 64                       d
        .byte   $72                             ; 6589 72                       r
        adc     #$76                            ; 658A 69 76                    iv
        adc     $20                             ; 658C 65 20                    e 
        .byte   $77                             ; 658E 77                       w
        adc     #$74                            ; 658F 69 74                    it
        pla                                     ; 6591 68                       h
        jsr     L4F44                           ; 6592 20 44 4F                  DO
        .byte   $53                             ; 6595 53                       S
        jsr     L2032                           ; 6596 20 32 20                  2 
        .byte   $64                             ; 6599 64                       d
        adc     #$73                            ; 659A 69 73                    is
        .byte   $6B                             ; 659C 6B                       k
        rol     $9B9B                           ; 659D 2E 9B 9B                 ...
        .byte   $33                             ; 65A0 33                       3
        rol     $C402                           ; 65A1 2E 02 C4                 ...
        .byte   $CF                             ; 65A4 CF                       .
        .byte   $D3                             ; 65A5 D3                       .
        ldy     #$B2                            ; 65A6 A0 B2                    ..
        ldy     #$E6                            ; 65A8 A0 E6                    ..
        sbc     #$EC                            ; 65AA E9 EC                    ..
        sbc     $EE                             ; 65AC E5 EE                    ..
        sbc     ($ED,x)                         ; 65AE E1 ED                    ..
        sbc     $BF                             ; 65B0 E5 BF                    ..
	.byte	$16
	.byte	"Wildcards are OK.",$9B,$9B
	.byte	"You cannot get a file index from the",$9B
	.byte	"DOS 2 disk.  But you can see the name",$9B
	.byte	"of each file on the disk, if you",$9B,$9B
	.byte	"   (a) select Dn:*.* as filespec, and",$9B
        jsr     L2020                           ; 6659 20 20 20                    
        plp                                     ; 665C 28                       (
        .byte   $62                             ; 665D 62                       b
        and     #$20                            ; 665E 29 20                    ) 
        adc     $73,x                           ; 6660 75 73                    us
        adc     $20                             ; 6662 65 20                    e 
        .byte   $52                             ; 6664 52                       R
L6665:  eor     $54                             ; 6665 45 54                    ET
        eor     $52,x                           ; 6667 55 52                    UR
	.byte	"N r"
        adc     $73                             ; 666C 65 73                    es
        .byte   $70                             ; 666E 70                       p
L666F:  .byte   $6F                             ; 666F 6F                       o
        ror     L6573                           ; 6670 6E 73 65                 nse
	.byte	" in"
        jsr     L5453                           ; 6676 20 53 54                  ST
        eor     $50                             ; 6679 45 50                    EP
        jsr     L9B37                           ; 667B 20 37 9B                  7.
        jsr     L2020                           ; 667E 20 20 20                    
        jsr     L2020                           ; 6681 20 20 20                    
        jsr     L6861                           ; 6684 20 61 68                  ah
        adc     $61                             ; 6687 65 61                    ea
        .byte   $64                             ; 6689 64                       d
        rol     $029B                           ; 668A 2E 9B 02                 ...
        cmp     ($E3,x)                         ; 668D C1 E3                    ..
        .byte   $E3                             ; 668F E3                       .
        sbc     $F3                             ; 6690 E5 F3                    ..
        .byte   $F3                             ; 6692 F3                       .
        ldy     #$C4                            ; 6693 A0 C4                    ..
        .byte   $CF                             ; 6695 CF                       .
        .byte   $D3                             ; 6696 D3                       .
        ldy     #$B2                            ; 6697 A0 B2                    ..
        asl     $48,x                           ; 6699 16 48                    .H
L669B:  adc     $6C                             ; 669B 65 6C                    el
        bvs     L66BF                           ; 669D 70 20                    p 
        .byte   $53                             ; 669F 53                       S
        .byte   $63                             ; 66A0 63                       c
        .byte   $72                             ; 66A1 72                       r
        adc     $65                             ; 66A2 65 65                    ee
        ror     L2020                           ; 66A4 6E 20 20                 n  
        jsr     L2020                           ; 66A7 20 20 20                    
        jsr     L2032                           ; 66AA 20 32 20                  2 
        .byte   $6F                             ; 66AD 6F                       o
        ror     $20                             ; 66AE 66 20                    f 
        .byte   $33                             ; 66B0 33                       3
        .byte   $9B                             ; 66B1 9B                       .
        .byte   $9B                             ; 66B2 9B                       .
        .byte   $34                             ; 66B3 34                       4
        rol     $C402                           ; 66B4 2E 02 C4                 ...
L66B7:  sbc     $F3                             ; 66B7 E5 F3                    ..
        .byte   $F4                             ; 66B9 F4                       .
        sbc     #$EE                            ; 66BA E9 EE                    ..
        sbc     ($F4,x)                         ; 66BC E1 F4                    ..
        .byte   $E9                             ; 66BE E9                       .
L66BF:  .byte   $EF                             ; 66BF EF                       .
        inc     $E4A0                           ; 66C0 EE A0 E4                 ...
        .byte   $F2                             ; 66C3 F2                       .
        sbc     #$F6                            ; 66C4 E9 F6                    ..
        sbc     $A0                             ; 66C6 E5 A0                    ..
        inc     $EDF5                           ; 66C8 EE F5 ED                 ...
        .byte   $E2                             ; 66CB E2                       .
        sbc     $F2                             ; 66CC E5 F2                    ..
        .byte   $BF                             ; 66CE BF                       .
	.byte	$16
	.byte	"Enter",$9B
	.byte	"   no. of drive with DOS 3 disk. You",$9B
	.byte	"   can use the same or another drive.",$9B,$9B
        and     $2E,x                           ; 6722 35 2E                    5.
        .byte   $02                             ; 6724 02                       .
        cpy     $CF                             ; 6725 C4 CF                    ..
        .byte   $D3                             ; 6727 D3                       .
        ldy     #$B3                            ; 6728 A0 B3                    ..
        ldy     #$E6                            ; 672A A0 E6                    ..
        sbc     #$EC                            ; 672C E9 EC                    ..
        sbc     $F3                             ; 672E E5 F3                    ..
	.byte	$F0,$E5
        .byte   $E3                             ; 6732 E3                       .
        ldy     #$BF                            ; 6733 A0 BF                    ..
        asl     $59,x                           ; 6735 16 59                    .Y
        .byte   $6F                             ; 6737 6F                       o
        adc     $20,x                           ; 6738 75 20                    u 
        .byte   $63                             ; 673A 63                       c
        adc     ($6E,x)                         ; 673B 61 6E                    an
        jsr     L7375                           ; 673D 20 75 73                  us
        adc     $20                             ; 6740 65 20                    e 
	.byte	"new",$9B
        jsr     L2020                           ; 6746 20 20 20                    
        .byte   $6F                             ; 6749 6F                       o
        .byte   $72                             ; 674A 72                       r
	.byte	" th"
        adc     $20                             ; 674E 65 20                    e 
        .byte   $73                             ; 6750 73                       s
        adc     ($6D,x)                         ; 6751 61 6D                    am
        adc     $20                             ; 6753 65 20                    e 
        ror     $69                             ; 6755 66 69                    fi
        .byte	"len"

; ----------------------------------------------------------------------------
        adc     ($6D,x)                         ; 675A 61 6D                    am
        adc     $73                             ; 675C 65 73                    es
        rol     L2020                           ; 675E 2E 20 20                 .  
        .byte   $57                             ; 6761 57                       W
        adc     #$6C                            ; 6762 69 6C                    il
        .byte   $64                             ; 6764 64                       d
        .byte   $63                             ; 6765 63                       c
        adc     ($72,x)                         ; 6766 61 72                    ar
        .byte   $64                             ; 6768 64                       d
L6769:  .byte   $73                             ; 6769 73                       s
        .byte   $9B                             ; 676A 9B                       .
        jsr     L2020                           ; 676B 20 20 20                    
        .byte   $63                             ; 676E 63                       c
        adc     ($6E,x)                         ; 676F 61 6E                    an
        jsr     L6C61                           ; 6771 20 61 6C                  al
        .byte   $73                             ; 6774 73                       s
        .byte   $6F                             ; 6775 6F                       o
        jsr     L6562                           ; 6776 20 62 65                  be
        jsr     L7375                           ; 6779 20 75 73                  us
        adc     $64                             ; 677C 65 64                    ed
        rol     $9B9B                           ; 677E 2E 9B 9B                 ...
        rol     $2E,x                           ; 6781 36 2E                    6.
        .byte   $02                             ; 6783 02                       .
        cmp     ($F2,x)                         ; 6784 C1 F2                    ..
        sbc     $A0                             ; 6786 E5 A0                    ..
        .byte   $F3                             ; 6788 F3                       .
        .byte   $EF                             ; 6789 EF                       .
        sbc     $F2,x                           ; 678A F5 F2                    ..
        .byte   $E3                             ; 678C E3                       .
        sbc     $A0                             ; 678D E5 A0                    ..
        sbc     ($EE,x)                         ; 678F E1 EE                    ..
        cpx     $A0                             ; 6791 E4 A0                    ..
        cpx     $E5                             ; 6793 E4 E5                    ..
        .byte   $F3                             ; 6795 F3                       .
        .byte   $F4                             ; 6796 F4                       .
        sbc     #$EE                            ; 6797 E9 EE                    ..
        sbc     ($F4,x)                         ; 6799 E1 F4                    ..
        sbc     #$EF                            ; 679B E9 EF                    ..
        inc     $F4A0                           ; 679D EE A0 F4                 ...
        inx                                     ; 67A0 E8                       .
        sbc     $16                             ; 67A1 E5 16                    ..
        .byte   $9B                             ; 67A3 9B                       .
	.byte	"  "
	.byte	$02
        .byte   $F3                             ; 67A7 F3                       .
        sbc     ($ED,x)                         ; 67A8 E1 ED                    ..
        sbc     $A0                             ; 67AA E5 A0                    ..
        cpx     $E9                             ; 67AC E4 E9                    ..
        .byte   $F3                             ; 67AE F3                       .
        .byte   $EB                             ; 67AF EB                       .
        ldy     #$A8                            ; 67B0 A0 A8                    ..
        cmp     $CEAF,y                         ; 67B2 D9 AF CE                 ...
        lda     #$BF                            ; 67B5 A9 BF                    ..
        asl     $50,x                           ; 67B7 16 50                    .P
        .byte   $72                             ; 67B9 72                       r
        adc     $73                             ; 67BA 65 73                    es
        .byte   $73                             ; 67BC 73                       s
        jsr     L2059                           ; 67BD 20 59 20                  Y 
        .byte   $74                             ; 67C0 74                       t
        .byte   $6F                             ; 67C1 6F                       o
        .byte   $9B                             ; 67C2 9B                       .
        jsr     L2020                           ; 67C3 20 20 20                    
        .byte   $63                             ; 67C6 63                       c
        .byte   $6F                             ; 67C7 6F                       o
        ror     L6576                           ; 67C8 6E 76 65                 nve
        .byte   $72                             ; 67CB 72                       r
        .byte   $74                             ; 67CC 74                       t
        jsr     L6966                           ; 67CD 20 66 69                  fi
        jmp     (L7365)                         ; 67D0 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" on"
        jsr     L6173                           ; 67D6 20 73 61                  sa
        adc     L2065                           ; 67D9 6D 65 20                 me 
        .byte   $64                             ; 67DC 64                       d
        adc     #$73                            ; 67DD 69 73                    is
        .byte   $6B                             ; 67DF 6B                       k
        rol     L209B                           ; 67E0 2E 9B 20                 .. 
        jsr     L5020                           ; 67E3 20 20 50                   P
        .byte   $72                             ; 67E6 72                       r
        adc     $73                             ; 67E7 65 73                    es
        .byte   $73                             ; 67E9 73                       s
        jsr     L204E                           ; 67EA 20 4E 20                  N 
        .byte   $74                             ; 67ED 74                       t
        .byte   $6F                             ; 67EE 6F                       o
        jsr     L6F63                           ; 67EF 20 63 6F                  co
        ror     L6576                           ; 67F2 6E 76 65                 nve
        .byte   $72                             ; 67F5 72                       r
        .byte   $74                             ; 67F6 74                       t
        jsr     L6966                           ; 67F7 20 66 69                  fi
        jmp     (L7365)                         ; 67FA 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" on"
        .byte   $9B                             ; 6800 9B                       .
        jsr     L2020                           ; 6801 20 20 20                    
        .byte   $64                             ; 6804 64                       d
        adc     #$66                            ; 6805 69 66                    if
        ror     $65                             ; 6807 66 65                    fe
        .byte   $72                             ; 6809 72                       r
        adc     $6E                             ; 680A 65 6E                    en
        .byte   $74                             ; 680C 74                       t
        jsr     L6964                           ; 680D 20 64 69                  di
        .byte   $73                             ; 6810 73                       s
        .byte   $6B                             ; 6811 6B                       k
        .byte   $73                             ; 6812 73                       s
        rol     $029B                           ; 6813 2E 9B 02                 ...
        cmp     ($E3,x)                         ; 6816 C1 E3                    ..
        .byte   $E3                             ; 6818 E3                       .
        sbc     $F3                             ; 6819 E5 F3                    ..
        .byte   $F3                             ; 681B F3                       .
        ldy     #$C4                            ; 681C A0 C4                    ..
        .byte   $CF                             ; 681E CF                       .
        .byte   $D3                             ; 681F D3                       .
        ldy     #$B2                            ; 6820 A0 B2                    ..
        asl     $48,x                           ; 6822 16 48                    .H
        adc     $6C                             ; 6824 65 6C                    el
        bvs     L6848                           ; 6826 70 20                    p 
        .byte   $53                             ; 6828 53                       S
        .byte   $63                             ; 6829 63                       c
        .byte   $72                             ; 682A 72                       r
        adc     $65                             ; 682B 65 65                    ee
        ror     L2020                           ; 682D 6E 20 20                 n  
        jsr     L2020                           ; 6830 20 20 20                    
L6833:  jsr     L2033                           ; 6833 20 33 20                  3 
        .byte   $6F                             ; 6836 6F                       o
        ror     $20                             ; 6837 66 20                    f 
        .byte   $33                             ; 6839 33                       3
        .byte   $9B                             ; 683A 9B                       .
        .byte   $9B                             ; 683B 9B                       .
        .byte   $37                             ; 683C 37                       7
        rol     $C302                           ; 683D 2E 02 C3                 ...
        .byte   $EF                             ; 6840 EF                       .
        .byte   $EE                             ; 6841 EE                       .
        .byte   $F6                             ; 6842 F6                       .
L6843:  sbc     $F2                             ; 6843 E5 F2                    ..
        .byte   $F4                             ; 6845 F4                       .
        ldy     #$E1                            ; 6846 A0 E1                    ..
L6848:  cpx     $A0EC                           ; 6848 EC EC A0                 ...
        .byte   $F3                             ; 684B F3                       .
        beq     L6833                           ; 684C F0 E5                    ..
        .byte   $E3                             ; 684E E3                       .
        sbc     #$E6                            ; 684F E9 E6                    ..
        sbc     #$E5                            ; 6851 E9 E5                    ..
        cpx     $A0                             ; 6853 E4 A0                    ..
        inc     $E9                             ; 6855 E6 E9                    ..
L6857:  cpx     $F3E5                           ; 6857 EC E5 F3                 ...
        ldy     #$A8                            ; 685A A0 A8                    ..
        cmp     $CEAF,y                         ; 685C D9 AF CE                 ...
        lda     #$BF                            ; 685F A9 BF                    ..
L6861:  .byte   $9B                             ; 6861 9B                       .
	.byte	"   Press Y to convert files auto-",$9B
	.byte	"   matically. Press N or RETURN to",$9B
        jsr     L2020                           ; 68A7 20 20 20                    
        .byte   $63                             ; 68AA 63                       c
        .byte   $6F                             ; 68AB 6F                       o
        ror     L6576                           ; 68AC 6E 76 65                 nve
        .byte   $72                             ; 68AF 72                       r
        .byte   $74                             ; 68B0 74                       t
        jsr     L6966                           ; 68B1 20 66 69                  fi
        jmp     (L7365)                         ; 68B4 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" on"
        adc     $20                             ; 68BA 65 20                    e 
        adc     ($74,x)                         ; 68BC 61 74                    at
        jsr     L2061                           ; 68BE 20 61 20                  a 
        .byte   $74                             ; 68C1 74                       t
        adc     #$6D                            ; 68C2 69 6D                    im
        adc     $2E                             ; 68C4 65 2E                    e.
        jsr     L4420                           ; 68C6 20 20 44                   D
        .byte   $4F                             ; 68C9 4F                       O
        .byte   $53                             ; 68CA 53                       S
        .byte   $9B                             ; 68CB 9B                       .
	.byte	"   gives you a Y/N option on each.",$9B,$9B
	.byte	"Remember: Using RETURN on Step 7 with",$9B
        adc     ($20,x)                         ; 6916 61 20                    a 
        .byte   $53                             ; 6918 53                       S
        .byte   $6F                             ; 6919 6F                       o
        adc     $72,x                           ; 691A 75 72                    ur
        .byte   $63                             ; 691C 63                       c
        adc     $20                             ; 691D 65 20                    e 
        .byte   $46                             ; 691F 46                       F
L6920:  adc     #$6C                            ; 6920 69 6C                    il
        adc     $73                             ; 6922 65 73                    es
        bvs     L698B                           ; 6924 70 65                    pe
        .byte   $63                             ; 6926 63                       c
        jsr     L666F                           ; 6927 20 6F 66                  of
        jsr     L6E44                           ; 692A 20 44 6E                  Dn
        .byte   $3A                             ; 692D 3A                       :
        rol     a                               ; 692E 2A                       *
        rol     $202A                           ; 692F 2E 2A 20                 .* 
        .byte   $63                             ; 6932 63                       c
        adc     ($75,x)                         ; 6933 61 75                    au
        .byte   $73                             ; 6935 73                       s
        adc     $73                             ; 6936 65 73                    es
        .byte   $9B                             ; 6938 9B                       .
        .byte   $44                             ; 6939 44                       D
        .byte   $4F                             ; 693A 4F                       O
        .byte   $53                             ; 693B 53                       S
        jsr     L6F74                           ; 693C 20 74 6F                  to
	.byte	" sh"
        .byte   $6F                             ; 6942 6F                       o
        .byte   $77                             ; 6943 77                       w
        jsr     L6F79                           ; 6944 20 79 6F                  yo
        adc     $20,x                           ; 6947 75 20                    u 
        .byte   $74                             ; 6949 74                       t
        pla                                     ; 694A 68                       h
        adc     $20                             ; 694B 65 20                    e 
	.byte	"nam"
        adc     $73                             ; 6950 65 73                    es
        jsr     L666F                           ; 6952 20 6F 66                  of
        jsr     L6C61                           ; 6955 20 61 6C                  al
        jmp     (L669B)                         ; 6958 6C 9B 66                 l.f

; ----------------------------------------------------------------------------
        adc     #$6C                            ; 695B 69 6C                    il
        adc     $73                             ; 695D 65 73                    es
        .byte	" on"
L6962:  .byte   $20                             ; 6962 20                        
        .byte   $74                             ; 6963 74                       t
L6964:  pla                                     ; 6964 68                       h
        .byte   $65                             ; 6965 65                       e
L6966:  .byte   $20                             ; 6966 20                        
L6967:  .byte   $44                             ; 6967 44                       D
        .byte   $4F                             ; 6968 4F                       O
        .byte   $53                             ; 6969 53                       S
        .byte   $20                             ; 696A 20                        
        .byte   $32                             ; 696B 32                       2
L696C:  jsr     L6964                           ; 696C 20 64 69                  di
        .byte   $73                             ; 696F 73                       s
        .byte   $6B                             ; 6970 6B                       k
        .byte   $2E                             ; 6971 2E                       .
        .byte   $9B                             ; 6972 9B                       .
L6973:  .byte   $02                             ; 6973 02                       .
L6974:  cpy     $F5                             ; 6974 C4 F5                    ..
        .byte   $F0                             ; 6976 F0                       .
L6977:  cpx     $E3E9                           ; 6977 EC E9 E3                 ...
        sbc     ($F4,x)                         ; 697A E1 F4                    ..
        sbc     $16                             ; 697C E5 16                    ..
        pha                                     ; 697E 48                       H
        adc     $6C                             ; 697F 65 6C                    el
	.byte	"p "
        .byte   $53                             ; 6983 53                       S
        .byte   $63                             ; 6984 63                       c
        .byte   $72                             ; 6985 72                       r
        adc     $65                             ; 6986 65 65                    ee
        ror     L2020                           ; 6988 6E 20 20                 n  
L698B:  jsr     L2020                           ; 698B 20 20 20                    
        jsr     L2020                           ; 698E 20 20 20                    
        jsr     L2031                           ; 6991 20 31 20                  1 
        .byte   $6F                             ; 6994 6F                       o
        ror     $20                             ; 6995 66 20                    f 
        and     ($9B),y                         ; 6997 31 9B                    1.
        .byte   $9B                             ; 6999 9B                       .
	.byte	"1. Press D to copy all files in same",$9B
	.byte	"   location onto a new disk--to make",$9B
	.byte	"   an exact ",$22,"logical",$22," duplicate disk.",$9B
	.byte	" "
        jsr     L5020                           ; 6A0B 20 20 50                   P
        .byte   $52                             ; 6A0E 52                       R
        eor     $53                             ; 6A0F 45 53                    ES
        .byte   $53                             ; 6A11 53                       S
        jsr     L2044                           ; 6A12 20 44 20                  D 
        .byte   $57                             ; 6A15 57                       W
        eor     #$54                            ; 6A16 49 54                    IT
        pha                                     ; 6A18 48                       H
        jsr     L4F44                           ; 6A19 20 44 4F                  DO
        .byte   $53                             ; 6A1C 53                       S
        jsr     L4944                           ; 6A1D 20 44 49                  DI
        .byte   $53                             ; 6A20 53                       S
        .byte   $4B                             ; 6A21 4B                       K
        jsr     L4E49                           ; 6A22 20 49 4E                  IN
L6A25:  jsr     L5244                           ; 6A25 20 44 52                  DR
        eor     #$56                            ; 6A28 49 56                    IV
        eor     $20                             ; 6A2A 45 20                    E 
        and     ($2E),y                         ; 6A2C 31 2E                    1.
        .byte   $9B                             ; 6A2E 9B                       .
        .byte   $9B                             ; 6A2F 9B                       .
        .byte   $32                             ; 6A30 32                       2
        rol     $D302                           ; 6A31 2E 02 D3                 ...
        .byte   $EF                             ; 6A34 EF                       .
        sbc     $F2,x                           ; 6A35 F5 F2                    ..
        .byte   $E3                             ; 6A37 E3                       .
        sbc     $A0                             ; 6A38 E5 A0                    ..
        cpx     $F2                             ; 6A3A E4 F2                    ..
        sbc     #$F6                            ; 6A3C E9 F6                    ..
        sbc     $A0                             ; 6A3E E5 A0                    ..
        inc     $EDF5                           ; 6A40 EE F5 ED                 ...
        .byte   $E2                             ; 6A43 E2                       .
        sbc     $F2                             ; 6A44 E5 F2                    ..
        .byte   $BF                             ; 6A46 BF                       .
	.byte	$16
	.byte	"Enter no. of",$9B
	.byte	"   drive with original. "
        .byte   $02                             ; 6A6D 02                       .
        .byte   $C3                             ; 6A6E C3                       .
        cmp     ($D5,x)                         ; 6A6F C1 D5                    ..
        .byte   $D4                             ; 6A71 D4                       .
        cmp     #$CF                            ; 6A72 C9 CF                    ..
        dec     $16BA                           ; 6A74 CE BA 16                 ...
	.byte	"PUT",$9B
	.byte	"   WRITE-PROTECT TAB ON ORIGINAL.",$9B,$9B
        .byte   $33                             ; 6A9E 33                       3
        rol     $C402                           ; 6A9F 2E 02 C4                 ...
        sbc     $F3                             ; 6AA2 E5 F3                    ..
        .byte   $F4                             ; 6AA4 F4                       .
        sbc     #$EE                            ; 6AA5 E9 EE                    ..
        sbc     ($F4,x)                         ; 6AA7 E1 F4                    ..
        sbc     #$EF                            ; 6AA9 E9 EF                    ..
        inc     $E4A0                           ; 6AAB EE A0 E4                 ...
        .byte   $F2                             ; 6AAE F2                       .
        sbc     #$F6                            ; 6AAF E9 F6                    ..
        sbc     $A0                             ; 6AB1 E5 A0                    ..
        inc     $EDF5                           ; 6AB3 EE F5 ED                 ...
        .byte   $E2                             ; 6AB6 E2                       .
        sbc     $F2                             ; 6AB7 E5 F2                    ..
        .byte   $BF                             ; 6AB9 BF                       .
        asl     $45,x                           ; 6ABA 16 45                    .E
        ror     L6574                           ; 6ABC 6E 74 65                 nte
        .byte   $72                             ; 6ABF 72                       r
        .byte   $9B                             ; 6AC0 9B                       .
	.byte	"   no. of drive with new disk. You",$9B
	.byte	"   can use the same or another drive.",$9B,$9B
        .byte   $34                             ; 6B0B 34                       4
        rol     $C102                           ; 6B0C 2E 02 C1                 ...
        .byte   $F2                             ; 6B0F F2                       .
        sbc     $A0                             ; 6B10 E5 A0                    ..
        .byte   $F3                             ; 6B12 F3                       .
        .byte   $EF                             ; 6B13 EF                       .
        sbc     $F2,x                           ; 6B14 F5 F2                    ..
        .byte   $E3                             ; 6B16 E3                       .
        sbc     $A0                             ; 6B17 E5 A0                    ..
        sbc     ($EE,x)                         ; 6B19 E1 EE                    ..
        cpx     $A0                             ; 6B1B E4 A0                    ..
        cpx     $E5                             ; 6B1D E4 E5                    ..
        .byte   $F3                             ; 6B1F F3                       .
L6B20:  .byte   $F4                             ; 6B20 F4                       .
        sbc     #$EE                            ; 6B21 E9 EE                    ..
        sbc     ($F4,x)                         ; 6B23 E1 F4                    ..
        sbc     #$EF                            ; 6B25 E9 EF                    ..
        inc     $F4A0                           ; 6B27 EE A0 F4                 ...
        inx                                     ; 6B2A E8                       .
        sbc     $16                             ; 6B2B E5 16                    ..
        .byte   $9B                             ; 6B2D 9B                       .
	.byte	"  "
	.byte	$02
        .byte   $F3                             ; 6B31 F3                       .
        sbc     ($ED,x)                         ; 6B32 E1 ED                    ..
        sbc     $A0                             ; 6B34 E5 A0                    ..
        cpx     $E9                             ; 6B36 E4 E9                    ..
        .byte   $F3                             ; 6B38 F3                       .
        .byte   $EB                             ; 6B39 EB                       .
        ldy     #$A8                            ; 6B3A A0 A8                    ..
        cmp     $CEAF,y                         ; 6B3C D9 AF CE                 ...
        lda     #$BF                            ; 6B3F A9 BF                    ..
        asl     $50,x                           ; 6B41 16 50                    .P
        .byte   $72                             ; 6B43 72                       r
        adc     $73                             ; 6B44 65 73                    es
        .byte   $73                             ; 6B46 73                       s
        jsr     L2059                           ; 6B47 20 59 20                  Y 
        .byte   $74                             ; 6B4A 74                       t
        .byte   $6F                             ; 6B4B 6F                       o
        .byte   $9B                             ; 6B4C 9B                       .
	.byte	"   duplicate files on same disk.",$9B
	.byte	"   Press N to duplicate files on",$9B
        jsr     L2020                           ; 6B8F 20 20 20                    
        .byte   $64                             ; 6B92 64                       d
        adc     #$66                            ; 6B93 69 66                    if
        ror     $65                             ; 6B95 66 65                    fe
        .byte   $72                             ; 6B97 72                       r
        adc     $6E                             ; 6B98 65 6E                    en
        .byte   $74                             ; 6B9A 74                       t
        jsr     L6964                           ; 6B9B 20 64 69                  di
        .byte   $73                             ; 6B9E 73                       s
        .byte   $6B                             ; 6B9F 6B                       k
        .byte   $73                             ; 6BA0 73                       s
        rol     $029B                           ; 6BA1 2E 9B 02                 ...
        dec     $E9                             ; 6BA4 C6 E9                    ..
        cpx     $A0E5                           ; 6BA6 EC E5 A0                 ...
        cmp     #$EE                            ; 6BA9 C9 EE                    ..
        cpx     $E5                             ; 6BAB E4 E5                    ..
        sed                                     ; 6BAD F8                       .
	.byte	$16
	.byte	"Help Screen        1 of 1",$9B,$9B
	.byte	"1. Press F to select this function.",$9B
	.byte	" "
        jsr     L5420                           ; 6BEF 20 20 54                   T
        pla                                     ; 6BF2 68                       h
        adc     $20                             ; 6BF3 65 20                    e 
        adc     #$6E                            ; 6BF5 69 6E                    in
        .byte   $64                             ; 6BF7 64                       d
        adc     $78                             ; 6BF8 65 78                    ex
        jsr     L6574                           ; 6BFA 20 74 65                  te
	.byte	"lls"
        jsr     L6F79                           ; 6C00 20 79 6F                  yo
        adc     $20,x                           ; 6C03 75 20                    u 
        .byte   $77                             ; 6C05 77                       w
        pla                                     ; 6C06 68                       h
        adc     #$63                            ; 6C07 69 63                    ic
        pla                                     ; 6C09 68                       h
        jsr     L6966                           ; 6C0A 20 66 69                  fi
        jmp     (L7365)                         ; 6C0D 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 6C10 9B                       .
        jsr     L2020                           ; 6C11 20 20 20                    
        adc     ($72,x)                         ; 6C14 61 72                    ar
L6C16:  adc     $20                             ; 6C16 65 20                    e 
        .byte   $6F                             ; 6C18 6F                       o
        ror     L7920                           ; 6C19 6E 20 79                 n y
        .byte   $6F                             ; 6C1C 6F                       o
        adc     $72,x                           ; 6C1D 75 72                    ur
        jsr     L6964                           ; 6C1F 20 64 69                  di
L6C22:  .byte   $73                             ; 6C22 73                       s
        .byte   $6B                             ; 6C23 6B                       k
        rol     $9B9B                           ; 6C24 2E 9B 9B                 ...
        .byte   $32                             ; 6C27 32                       2
        rol     $C602                           ; 6C28 2E 02 C6                 ...
        sbc     #$EC                            ; 6C2B E9 EC                    ..
        sbc     $F3                             ; 6C2D E5 F3                    ..
        beq     L6C16                           ; 6C2F F0 E5                    ..
        .byte   $E3                             ; 6C31 E3                       .
        .byte   $BF                             ; 6C32 BF                       .
        asl     $53,x                           ; 6C33 16 53                    .S
        bvs     L6C9C                           ; 6C35 70 65                    pe
        .byte   $63                             ; 6C37 63                       c
        adc     #$66                            ; 6C38 69 66                    if
	.byte	"y f"
        adc     #$6C                            ; 6C3D 69 6C                    il
        adc     $73                             ; 6C3F 65 73                    es
        jsr     L6F79                           ; 6C41 20 79 6F                  yo
        adc     $20,x                           ; 6C44 75 20                    u 
        adc     ($72,x)                         ; 6C46 61 72                    ar
        adc     $9B                             ; 6C48 65 9B                    e.
        jsr     L2020                           ; 6C4A 20 20 20                    
        jmp     (L6F6F)                         ; 6C4D 6C 6F 6F                 loo

; ----------------------------------------------------------------------------
        .byte   $6B                             ; 6C50 6B                       k
        adc     #$6E                            ; 6C51 69 6E                    in
        .byte   $67                             ; 6C53 67                       g
        jsr     L6F66                           ; 6C54 20 66 6F                  fo
        .byte   $72                             ; 6C57 72                       r
        rol     L2020                           ; 6C58 2E 20 20                 .  
        .byte   $54                             ; 6C5B 54                       T
        .byte   $6F                             ; 6C5C 6F                       o
        jsr     L6573                           ; 6C5D 20 73 65                  se
        .byte   $65                             ; 6C60 65                       e
L6C61:  .byte   $20                             ; 6C61 20                        
L6C62:  adc     ($6C,x)                         ; 6C62 61 6C                    al
	.byte	"l f"

; ----------------------------------------------------------------------------
L6C67:  adc     #$6C                            ; 6C67 69 6C                    il
        adc     $73                             ; 6C69 65 73                    es
        .byte	" on"
        .byte   $9B                             ; 6C6E 9B                       .
L6C6F:  .byte   $20                             ; 6C6F 20                        
	.byte	"  d"
        adc     #$73                            ; 6C73 69 73                    is
        .byte   $6B                             ; 6C75 6B                       k
        bit     L7020                           ; 6C76 2C 20 70                 , p
        .byte   $72                             ; 6C79 72                       r
        adc     $73                             ; 6C7A 65 73                    es
        .byte   $73                             ; 6C7C 73                       s
        jsr     L4552                           ; 6C7D 20 52 45                  RE
        .byte   $54                             ; 6C80 54                       T
        eor     $52,x                           ; 6C81 55 52                    UR
        lsr     L202E                           ; 6C83 4E 2E 20                 N. 
        jsr     L3144                           ; 6C86 20 44 31                  D1
        .byte   $3A                             ; 6C89 3A                       :
        rol     a                               ; 6C8A 2A                       *
        rol     $202A                           ; 6C8B 2E 2A 20                 .* 
        adc     #$73                            ; 6C8E 69 73                    is
	.byte	" th"
        adc     $9B                             ; 6C93 65 9B                    e.
        jsr     L2020                           ; 6C95 20 20 20                    
        .byte   $64                             ; 6C98 64                       d
        adc     $66                             ; 6C99 65 66                    ef
        .byte   $61                             ; 6C9B 61                       a
L6C9C:  adc     $6C,x                           ; 6C9C 75 6C                    ul
        .byte   $74                             ; 6C9E 74                       t
L6C9F:  jsr     L6572                           ; 6C9F 20 72 65                  re
        .byte   $73                             ; 6CA2 73                       s
        bvs     L6D14                           ; 6CA3 70 6F                    po
        ror     L6573                           ; 6CA5 6E 73 65                 nse
        rol     $9B9B                           ; 6CA8 2E 9B 9B                 ...
        .byte   $33                             ; 6CAB 33                       3
        rol     $C402                           ; 6CAC 2E 02 C4                 ...
        sbc     #$F3                            ; 6CAF E9 F3                    ..
        beq     L6C9F                           ; 6CB1 F0 EC                    ..
        sbc     ($F9,x)                         ; 6CB3 E1 F9                    ..
        ldy     #$E4                            ; 6CB5 A0 E4                    ..
        sbc     $F6                             ; 6CB7 E5 F6                    ..
        sbc     #$E3                            ; 6CB9 E9 E3                    ..
        sbc     $BF                             ; 6CBB E5 BF                    ..
	.byte	$16
	.byte	"Press E: or RETURN",$9B
	.byte	"   to list Index on screen.  Press P:",$9B
        jsr     L2020                           ; 6CF7 20 20 20                    
        .byte   $74                             ; 6CFA 74                       t
        .byte   $6F                             ; 6CFB 6F                       o
	.byte	" pr"
        adc     #$6E                            ; 6CFF 69 6E                    in
        .byte   $74                             ; 6D01 74                       t
        jsr     L6E49                           ; 6D02 20 49 6E                  In
        .byte   $64                             ; 6D05 64                       d
        adc     $78                             ; 6D06 65 78                    ex
        rol     L2020                           ; 6D08 2E 20 20                 .  
        eor     #$6E                            ; 6D0B 49 6E                    In
        .byte   $64                             ; 6D0D 64                       d
        adc     $78                             ; 6D0E 65 78                    ex
        jsr     L696C                           ; 6D10 20 6C 69                  li
        .byte   $73                             ; 6D13 73                       s
L6D14:  .byte   $74                             ; 6D14 74                       t
        .byte   $73                             ; 6D15 73                       s
L6D16:  jsr     L6966                           ; 6D16 20 66 69                  fi
        jmp     (L2D65)                         ; 6D19 6C 65 2D                 le-

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 6D1C 9B                       .
        jsr     L2020                           ; 6D1D 20 20 20                    
	.byte	"nam"
        adc     $73                             ; 6D23 65 73                    es
        bit     L6520                           ; 6D25 2C 20 65                 , e
        sei                                     ; 6D28 78                       x
        .byte   $74                             ; 6D29 74                       t
        adc     $6E                             ; 6D2A 65 6E                    en
        .byte   $64                             ; 6D2C 64                       d
        adc     $72                             ; 6D2D 65 72                    er
        .byte   $73                             ; 6D2F 73                       s
	.byte	", f"
        adc     #$6C                            ; 6D33 69 6C                    il
        adc     $20                             ; 6D35 65 20                    e 
        .byte   $73                             ; 6D37 73                       s
        adc     #$7A                            ; 6D38 69 7A                    iz
        adc     $73                             ; 6D3A 65 73                    es
	.byte	" in",$9B
	.byte	"   blocks and number of free blocks",$9B
	.byte	"   left.",$9B,$9B
        .byte   $34                             ; 6D6E 34                       4
        rol     L4920                           ; 6D6F 2E 20 49                 . I
        ror     $20                             ; 6D72 66 20                    f 
        .byte   $6C                             ; 6D74 6C                       l
L6D75:  adc     #$73                            ; 6D75 69 73                    is
        .byte   $74                             ; 6D77 74                       t
        jsr     L7865                           ; 6D78 20 65 78                  ex
        .byte   $63                             ; 6D7B 63                       c
        adc     $65                             ; 6D7C 65 65                    ee
        .byte   $64                             ; 6D7E 64                       d
        .byte   $73                             ; 6D7F 73                       s
        .byte	" on"
        adc     $20                             ; 6D83 65 20                    e 
        .byte   $73                             ; 6D85 73                       s
        .byte   $63                             ; 6D86 63                       c
        .byte   $72                             ; 6D87 72                       r
        adc     $65                             ; 6D88 65 65                    ee
        ror     $202C                           ; 6D8A 6E 2C 20                 n, 
        bvs     L6E01                           ; 6D8D 70 72                    pr
        adc     $73                             ; 6D8F 65 73                    es
        .byte   $73                             ; 6D91 73                       s
        .byte   $9B                             ; 6D92 9B                       .
        jsr     L2020                           ; 6D93 20 20 20                    
        .byte   $52                             ; 6D96 52                       R
        eor     $54                             ; 6D97 45 54                    ET
        eor     $52,x                           ; 6D99 55 52                    UR
	.byte	"N f"
        .byte   $6F                             ; 6D9E 6F                       o
        .byte   $72                             ; 6D9F 72                       r
        jsr     L6F6D                           ; 6DA0 20 6D 6F                  mo
        .byte   $72                             ; 6DA3 72                       r
        adc     $20                             ; 6DA4 65 20                    e 
        ror     $69                             ; 6DA6 66 69                    fi
        jmp     (L7365)                         ; 6DA8 6C 65 73                 les

; ----------------------------------------------------------------------------
        rol     $9B9B                           ; 6DAB 2E 9B 9B                 ...
        .byte   $02                             ; 6DAE 02                       .
        cmp     $F2                             ; 6DAF C5 F2                    ..
        sbc     ($F3,x)                         ; 6DB1 E1 F3                    ..
        sbc     $16                             ; 6DB3 E5 16                    ..
        pha                                     ; 6DB5 48                       H
        adc     $6C                             ; 6DB6 65 6C                    el
        .byte	"p "
        .byte   $53                             ; 6DBA 53                       S
        .byte   $63                             ; 6DBB 63                       c
        .byte   $72                             ; 6DBC 72                       r
        adc     $65                             ; 6DBD 65 65                    ee
        ror     L2020                           ; 6DBF 6E 20 20                 n  
        jsr     L2020                           ; 6DC2 20 20 20                    
        jsr     L2020                           ; 6DC5 20 20 20                    
        jsr     L2020                           ; 6DC8 20 20 20                    
        jsr     L3120                           ; 6DCB 20 20 31                   1
        jsr     L666F                           ; 6DCE 20 6F 66                  of
        jsr     L9B31                           ; 6DD1 20 31 9B                  1.
        .byte   $9B                             ; 6DD4 9B                       .
	.byte	"1. Press E to delete one or more",$9B
        jsr     L2020                           ; 6DF6 20 20 20                    
        ror     $69                             ; 6DF9 66 69                    fi
        jmp     (L7365)                         ; 6DFB 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" fr"
L6E01:  .byte   $6F                             ; 6E01 6F                       o
        adc     L7920                           ; 6E02 6D 20 79                 m y
        .byte   $6F                             ; 6E05 6F                       o
        adc     $72,x                           ; 6E06 75 72                    ur
        jsr     L6964                           ; 6E08 20 64 69                  di
        .byte   $73                             ; 6E0B 73                       s
        .byte   $6B                             ; 6E0C 6B                       k
        rol     L2020                           ; 6E0D 2E 20 20                 .  
        plp                                     ; 6E10 28                       (
        .byte   $44                             ; 6E11 44                       D
        .byte   $4F                             ; 6E12 4F                       O
        .byte   $53                             ; 6E13 53                       S
        .byte   $9B                             ; 6E14 9B                       .
        jsr     L2020                           ; 6E15 20 20 20                    
        .byte   $77                             ; 6E18 77                       w
        adc     #$6C                            ; 6E19 69 6C                    il
        jmp     (L6E20)                         ; 6E1B 6C 20 6E                 l n

; ----------------------------------------------------------------------------
        .byte   $6F                             ; 6E1E 6F                       o
        .byte   $74                             ; 6E1F 74                       t
L6E20:  .byte	" er"
        adc     ($73,x)                         ; 6E23 61 73                    as
        adc     $20                             ; 6E25 65 20                    e 
	.byte	"Pr"
L6E29:  .byte   $6F                             ; 6E29 6F                       o
        .byte   $74                             ; 6E2A 74                       t
        adc     $63                             ; 6E2B 65 63                    ec
        .byte   $74                             ; 6E2D 74                       t
        adc     $64                             ; 6E2E 65 64                    ed
        jsr     L6966                           ; 6E30 20 66 69                  fi
        jmp     (L7365)                         ; 6E33 6C 65 73                 les

; ----------------------------------------------------------------------------
        rol     $9B29                           ; 6E36 2E 29 9B                 .).
        .byte   $9B                             ; 6E39 9B                       .
        .byte   $32                             ; 6E3A 32                       2
        rol     $C602                           ; 6E3B 2E 02 C6                 ...
        sbc     #$EC                            ; 6E3E E9 EC                    ..
        .byte   $E5                             ; 6E40 E5                       .
L6E41:  .byte   $F3                             ; 6E41 F3                       .
        beq     L6E29                           ; 6E42 F0 E5                    ..
L6E44:  .byte   $E3                             ; 6E44 E3                       .
        .byte   $BF                             ; 6E45 BF                       .
        asl     $53,x                           ; 6E46 16 53                    .S
        .byte   $70                             ; 6E48 70                       p
L6E49:  adc     $63                             ; 6E49 65 63                    ec
        adc     #$66                            ; 6E4B 69 66                    if
	.byte	"y f"
        adc     #$6C                            ; 6E50 69 6C                    il
        adc     $73                             ; 6E52 65 73                    es
        .byte   $20                             ; 6E54 20                        
L6E55:  .byte   $74                             ; 6E55 74                       t
        .byte   $6F                             ; 6E56 6F                       o
        jsr     L6564                           ; 6E57 20 64 65                  de
	.byte	"let"
        adc     $2E                             ; 6E5D 65 2E                    e.
        .byte   $9B                             ; 6E5F 9B                       .
	.byte	"   Wildcards can be used. "
	.byte	$02
        .byte   $C3                             ; 6E7B C3                       .
        cmp     ($D5,x)                         ; 6E7C C1 D5                    ..
        .byte   $D4                             ; 6E7E D4                       .
        cmp     #$CF                            ; 6E7F C9 CF                    ..
        dec     $16BA                           ; 6E81 CE BA 16                 ...
        .byte   $9B                             ; 6E84 9B                       .
	.byte	"   ERASED FILES CANNOT BE RECOVERED.",$9B,$9B
        .byte   $33                             ; 6EAB 33                       3
        rol     $C502                           ; 6EAC 2E 02 C5                 ...
        .byte   $F2                             ; 6EAF F2                       .
        sbc     ($F3,x)                         ; 6EB0 E1 F3                    ..
        sbc     $A0                             ; 6EB2 E5 A0                    ..
        sbc     ($EC,x)                         ; 6EB4 E1 EC                    ..
        cpx     $F3A0                           ; 6EB6 EC A0 F3                 ...
	.byte	$F0,$E5
        .byte   $E3                             ; 6EBB E3                       .
        sbc     #$E6                            ; 6EBC E9 E6                    ..
        sbc     #$E5                            ; 6EBE E9 E5                    ..
        cpx     $A0                             ; 6EC0 E4 A0                    ..
        inc     $E9                             ; 6EC2 E6 E9                    ..
        cpx     $F3E5                           ; 6EC4 EC E5 F3                 ...
        ldy     #$A8                            ; 6EC7 A0 A8                    ..
        cmp     $CEAF,y                         ; 6EC9 D9 AF CE                 ...
        lda     #$BF                            ; 6ECC A9 BF                    ..
        asl     $9B,x                           ; 6ECE 16 9B                    ..
        jsr     L2020                           ; 6ED0 20 20 20                    
	.byte	"Pr"
        adc     $73                             ; 6ED5 65 73                    es
        .byte   $73                             ; 6ED7 73                       s
        jsr     L2059                           ; 6ED8 20 59 20                  Y 
        .byte   $74                             ; 6EDB 74                       t
        .byte   $6F                             ; 6EDC 6F                       o
        jsr     L6564                           ; 6EDD 20 64 65                  de
	.byte	"let"
        adc     $20                             ; 6EE3 65 20                    e 
        adc     ($6C,x)                         ; 6EE5 61 6C                    al
	.byte	"l f"
        adc     #$6C                            ; 6EEA 69 6C                    il
        adc     $73                             ; 6EEC 65 73                    es
        jsr     L616E                           ; 6EEE 20 6E 61                  na
        adc     L6465                           ; 6EF1 6D 65 64                 med
        .byte   $9B                             ; 6EF4 9B                       .
	.byte	"   by filespec.  Press N or RETURN to",$9B
	.byte	"   erase files one at a time.",$9B,$9B
        .byte   $34                             ; 6F3A 34                       4
        rol     L4920                           ; 6F3B 2E 20 49                 . I
        ror     $20                             ; 6F3E 66 20                    f 
        adc     $72                             ; 6F40 65 72                    er
        adc     ($73,x)                         ; 6F42 61 73                    as
        adc     #$6E                            ; 6F44 69 6E                    in
        .byte   $67                             ; 6F46 67                       g
	.byte	" one by one, DOS gives",$9B
        jsr     L2020                           ; 6F5E 20 20 20                    
        .byte   $79                             ; 6F61 79                       y
        .byte   $6F                             ; 6F62 6F                       o
L6F63:  .byte   $75                             ; 6F63 75                       u
L6F64:  .byte   $20                             ; 6F64 20                        
        .byte   $61                             ; 6F65 61                       a
L6F66:  .byte   $20                             ; 6F66 20                        
L6F67:  eor     $4E2F,y                         ; 6F67 59 2F 4E                 Y/N
        .byte   $20                             ; 6F6A 20                        
        .byte   $6F                             ; 6F6B 6F                       o
L6F6C:  .byte   $70                             ; 6F6C 70                       p
L6F6D:  .byte   $74                             ; 6F6D 74                       t
L6F6E:  .byte   $69                             ; 6F6E 69                       i
L6F6F:  .byte   $6F                             ; 6F6F 6F                       o
	.byte	"n f"
L6F73:  .byte   $6F                             ; 6F73 6F                       o
L6F74:  .byte   $72                             ; 6F74 72                       r
        jsr     L6165                           ; 6F75 20 65 61                  ea
        .byte   $63                             ; 6F78 63                       c
L6F79:  pla                                     ; 6F79 68                       h
L6F7A:  jsr     L6966                           ; 6F7A 20 66 69                  fi
        jmp     (L2E65)                         ; 6F7D 6C 65 2E                 le.

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 6F80 9B                       .
	.byte	"   Erased filenames should no longer",$9B
        jsr     L2020                           ; 6FA6 20 20 20                    
        adc     ($70,x)                         ; 6FA9 61 70                    ap
        bvs     L7012                           ; 6FAB 70 65                    pe
        adc     ($72,x)                         ; 6FAD 61 72                    ar
	.byte	" in"
        .byte   $20                             ; 6FB2 20                        
        .byte   $66                             ; 6FB3 66                       f
L6FB4:  adc     #$6C                            ; 6FB4 69 6C                    il
        adc     $20                             ; 6FB6 65 20                    e 
        adc     #$6E                            ; 6FB8 69 6E                    in
        .byte   $64                             ; 6FBA 64                       d
        adc     $78                             ; 6FBB 65 78                    ex
        rol     $029B                           ; 6FBD 2E 9B 02                 ...
        bne     L6FB4                           ; 6FC0 D0 F2                    ..
        .byte   $EF                             ; 6FC2 EF                       .
        .byte   $F4                             ; 6FC3 F4                       .
        sbc     $E3                             ; 6FC4 E5 E3                    ..
        .byte   $F4                             ; 6FC6 F4                       .
	.byte	$16
	.byte	"Help Screen           1 of 1",$9B,$9B
	.byte	"1. Press P to write-protect files.",$9B
	.byte	"   P"
        .byte   $72                             ; 700D 72                       r
        .byte   $6F                             ; 700E 6F                       o
        .byte   $74                             ; 700F 74                       t
        adc     $63                             ; 7010 65 63                    ec
L7012:  .byte   $74                             ; 7012 74                       t
        adc     $64                             ; 7013 65 64                    ed
        jsr     L6966                           ; 7015 20 66 69                  fi
        jmp     (L7365)                         ; 7018 6C 65 73                 les

; ----------------------------------------------------------------------------
        jsr     L6163                           ; 701B 20 63 61                  ca
        .byte   $6E                             ; 701E 6E                       n
        .byte   $6E                             ; 701F 6E                       n
L7020:  .byte   $6F                             ; 7020 6F                       o
        .byte   $74                             ; 7021 74                       t
        jsr     L6562                           ; 7022 20 62 65                  be
	.byte	" wr"
        adc     #$74                            ; 7028 69 74                    it
        .byte   $74                             ; 702A 74                       t
        adc     $6E                             ; 702B 65 6E                    en
        .byte   $9B                             ; 702D 9B                       .
	.byte	"   to, erased, renamed, or appended.",$9B,$9B
	.byte	"2."
	.byte	$02
	.byte	$C6
        sbc     #$EC                            ; 7058 E9 EC                    ..
        sbc     $F3                             ; 705A E5 F3                    ..
	.byte	$F0,$E5
        .byte   $E3                             ; 705E E3                       .
        .byte   $BF                             ; 705F BF                       .
        .byte   $16                             ; 7060 16                       .
	.byte	"Specify files to",$9B
        .byte   $20                             ; 7072 20                        
L7073:  jsr     L7020                           ; 7073 20 20 70                   p
        .byte   $72                             ; 7076 72                       r
        .byte   $6F                             ; 7077 6F                       o
        .byte   $74                             ; 7078 74                       t
        adc     $63                             ; 7079 65 63                    ec
        .byte   $74                             ; 707B 74                       t
        rol     L5720                           ; 707C 2E 20 57                 . W
        adc     #$6C                            ; 707F 69 6C                    il
        .byte   $64                             ; 7081 64                       d
        .byte   $63                             ; 7082 63                       c
        adc     ($72,x)                         ; 7083 61 72                    ar
        .byte   $64                             ; 7085 64                       d
        .byte   $73                             ; 7086 73                       s
        jsr     L6163                           ; 7087 20 63 61                  ca
        ror     L6220                           ; 708A 6E 20 62                 n b
L708D:  adc     $20                             ; 708D 65 20                    e 
        adc     $73,x                           ; 708F 75 73                    us
        adc     $64                             ; 7091 65 64                    ed
        rol     $9B9B                           ; 7093 2E 9B 9B                 ...
        .byte   $33                             ; 7096 33                       3
        rol     $D002                           ; 7097 2E 02 D0                 ...
        .byte   $F2                             ; 709A F2                       .
        .byte   $EF                             ; 709B EF                       .
        .byte   $F4                             ; 709C F4                       .
        sbc     $E3                             ; 709D E5 E3                    ..
        .byte   $F4                             ; 709F F4                       .
        ldy     #$E1                            ; 70A0 A0 E1                    ..
        cpx     $A0EC                           ; 70A2 EC EC A0                 ...
        .byte   $F3                             ; 70A5 F3                       .
        beq     L708D                           ; 70A6 F0 E5                    ..
        .byte   $E3                             ; 70A8 E3                       .
        sbc     #$E6                            ; 70A9 E9 E6                    ..
        sbc     #$E5                            ; 70AB E9 E5                    ..
        cpx     $A0                             ; 70AD E4 A0                    ..
        inc     $E9                             ; 70AF E6 E9                    ..
        .byte   $EC                             ; 70B1 EC                       .
L70B2:  sbc     $F3                             ; 70B2 E5 F3                    ..
        ldy     #$A8                            ; 70B4 A0 A8                    ..
        cmp     $CEAF,y                         ; 70B6 D9 AF CE                 ...
        lda     #$BF                            ; 70B9 A9 BF                    ..
        .byte   $9B                             ; 70BB 9B                       .
	.byte	"   Press Y to protect all files named",$9B
	.byte	"   by filespec.  Press N or RETURN to",$9B
	.byte	"   protect files one at a time.",$9B,$9B
	.byte	"4. If protecting files one at a time,",$9B
	.byte	"   DOS shows you each filename and",$9B
	.byte	"   gives you a Y/N option.  Check",$9B
	.byte	"   File Index.  Protected files have",$9B
	.byte	"   (*) in front of filename.",$9B
	.byte	$02
	Inverse	"Rename"
	.byte	$16
	.byte	"Help Screen            1 of 1",$9B,$9B
	.byte	"1. Press R to change the filename or",$9B
	.byte	"   extender of one or more files.",$9B,$9B
	.byte	"2."
	.byte	$02
	Inverse	"Old Filespec?"
	.byte	$16
	.byte	"Enter filespec to be",$9B
	.byte	"   renamed. Wildcards can be used.",$9B,$9B
        .byte   $33                             ; 728F 33                       3
        rol     $CE02                           ; 7290 2E 02 CE                 ...
        sbc     $F7                             ; 7293 E5 F7                    ..
        ldy     #$C6                            ; 7295 A0 C6                    ..
        sbc     #$EC                            ; 7297 E9 EC                    ..
        sbc     $F3                             ; 7299 E5 F3                    ..
	.byte	$F0,$E5
        .byte   $E3                             ; 729D E3                       .
        .byte   $BF                             ; 729E BF                       .
        asl     $45,x                           ; 729F 16 45                    .E
        ror     L6574                           ; 72A1 6E 74 65                 nte
        .byte   $72                             ; 72A4 72                       r
	.byte	" th"
        adc     $20                             ; 72A8 65 20                    e 
	.byte	"new"
        jsr     L6966                           ; 72AD 20 66 69                  fi
        jmp     (L2D65)                         ; 72B0 6C 65 2D                 le-

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 72B3 9B                       .
        jsr     L2020                           ; 72B4 20 20 20                    
        .byte   $73                             ; 72B7 73                       s
        bvs     L731F                           ; 72B8 70 65                    pe
        .byte   $63                             ; 72BA 63                       c
        rol     L2020                           ; 72BB 2E 20 20                 .  
        .byte   $44                             ; 72BE 44                       D
        .byte   $4F                             ; 72BF 4F                       O
        .byte   $53                             ; 72C0 53                       S
        jsr     L6977                           ; 72C1 20 77 69                  wi
        jmp     (L206C)                         ; 72C4 6C 6C 20                 ll 

; ----------------------------------------------------------------------------
        .byte   $6E                             ; 72C7 6E                       n
L72C8:  .byte   $6F                             ; 72C8 6F                       o
        .byte   $74                             ; 72C9 74                       t
        jsr     L6C61                           ; 72CA 20 61 6C                  al
	.byte	"low",$9B
	.byte	"   duplicate filenames on a disk.",$9B,$9B
        .byte   $34                             ; 72F4 34                       4
        rol     $D202                           ; 72F5 2E 02 D2                 ...
        sbc     $EE                             ; 72F8 E5 EE                    ..
        sbc     ($ED,x)                         ; 72FA E1 ED                    ..
        sbc     $A0                             ; 72FC E5 A0                    ..
        sbc     ($EC,x)                         ; 72FE E1 EC                    ..
        cpx     $F3A0                           ; 7300 EC A0 F3                 ...
	.byte	$F0,$E5
        .byte   $E3                             ; 7305 E3                       .
        sbc     #$E6                            ; 7306 E9 E6                    ..
        sbc     #$E5                            ; 7308 E9 E5                    ..
        cpx     $A0                             ; 730A E4 A0                    ..
        inc     $E9                             ; 730C E6 E9                    ..
        cpx     $F3E5                           ; 730E EC E5 F3                 ...
        ldy     #$A8                            ; 7311 A0 A8                    ..
        cmp     $CEAF,y                         ; 7313 D9 AF CE                 ...
        lda     #$BF                            ; 7316 A9 BF                    ..
        asl     $9B,x                           ; 7318 16 9B                    ..
        jsr     L2020                           ; 731A 20 20 20                    
	.byte	"Pr"
L731F:  .byte   $65                             ; 731F 65                       e
L7320:  .byte   $73                             ; 7320 73                       s
        .byte   $73                             ; 7321 73                       s
        jsr     L2059                           ; 7322 20 59 20                  Y 
        .byte   $74                             ; 7325 74                       t
        .byte   $6F                             ; 7326 6F                       o
        jsr     L6572                           ; 7327 20 72 65                  re
	.byte	"nam"
        adc     $20                             ; 732D 65 20                    e 
        adc     ($6C,x)                         ; 732F 61 6C                    al
	.byte	"l f"
        adc     #$6C                            ; 7334 69 6C                    il
        adc     $73                             ; 7336 65 73                    es
        .byte	" in"
        jsr     L6C6F                           ; 733B 20 6F 6C                  ol
        .byte   $64                             ; 733E 64                       d
        .byte   $9B                             ; 733F 9B                       .
        jsr     L2020                           ; 7340 20 20 20                    
        ror     $69                             ; 7343 66 69                    fi
        jmp     (L7365)                         ; 7345 6C 65 73                 les

; ----------------------------------------------------------------------------
	.byte	"pe"
        .byte   $63                             ; 734A 63                       c
        rol     L2020                           ; 734B 2E 20 20                 .  
        bvc     L73C2                           ; 734E 50 72                    Pr
        adc     $73                             ; 7350 65 73                    es
        .byte   $73                             ; 7352 73                       s
        .byte   $20                             ; 7353 20                        
        .byte   $4E                             ; 7354 4E                       N
L7355:  .byte	" or"
        jsr     L4552                           ; 7358 20 52 45                  RE
        .byte   $54                             ; 735B 54                       T
        eor     $52,x                           ; 735C 55 52                    UR
	.byte	"N t"
L7361:  .byte   $6F                             ; 7361 6F                       o
        .byte   $9B                             ; 7362 9B                       .
        .byte   $20                             ; 7363 20                        
L7364:  .byte   $20                             ; 7364 20                        
L7365:  jsr     L6572                           ; 7365 20 72 65                  re
        .byte   $6E                             ; 7368 6E                       n
L7369:  adc     ($6D,x)                         ; 7369 61 6D                    am
        .byte   $65                             ; 736B 65                       e
	.byte	" on"
L736F:  adc     $20                             ; 736F 65 20                    e 
        adc     ($74,x)                         ; 7371 61 74                    at
        .byte   $20                             ; 7373 20                        
L7374:  .byte   $61                             ; 7374 61                       a
L7375:  jsr     L6974                           ; 7375 20 74 69                  ti
        adc     L2E65                           ; 7378 6D 65 2E                 me.
        .byte   $9B                             ; 737B 9B                       .
        .byte   $9B                             ; 737C 9B                       .
	.byte	"5. If renaming one at a time, DOS",$9B
	.byte	"   gives you a Y/N option on each.",$9B
L73C2:  .byte   $02                             ; 73C2 02                       .
        cmp     $EE,x                           ; 73C3 D5 EE                    ..
	.byte	$F0,$F2
        .byte   $EF                             ; 73C7 EF                       .
        .byte   $F4                             ; 73C8 F4                       .
        sbc     $E3                             ; 73C9 E5 E3                    ..
        .byte   $F4                             ; 73CB F4                       .
	.byte	$16
	.byte	"Help Screen         1 of 1",$9B,$9B
	.byte	"1. Press U to select this function.",$9B
	.byte	"   UNPROTECT erases the protected",$9B
        jsr     L2020                           ; 742F 20 20 20                    
        .byte   $73                             ; 7432 73                       s
        .byte   $74                             ; 7433 74                       t
        adc     ($74,x)                         ; 7434 61 74                    at
        adc     $73,x                           ; 7436 75 73                    us
        jsr     L666F                           ; 7438 20 6F 66                  of
        .byte	" on"
        .byte   $65                             ; 743E 65                       e
L743F:  .byte	" or"
        jsr     L6F6D                           ; 7442 20 6D 6F                  mo
        .byte   $72                             ; 7445 72                       r
        adc     $20                             ; 7446 65 20                    e 
        ror     $69                             ; 7448 66 69                    fi
        jmp     (L7365)                         ; 744A 6C 65 73                 les

; ----------------------------------------------------------------------------
        rol     $9B9B                           ; 744D 2E 9B 9B                 ...
        .byte   $32                             ; 7450 32                       2
        .byte   $2E                             ; 7451 2E                       .
        .byte   $02                             ; 7452 02                       .
L7453:  dec     $E9                             ; 7453 C6 E9                    ..
        cpx     $F3E5                           ; 7455 EC E5 F3                 ...
        beq     L743F                           ; 7458 F0 E5                    ..
        .byte   $E3                             ; 745A E3                       .
        .byte   $BF                             ; 745B BF                       .
	.byte	$16
	.byte	"Specify files to unpro-",$9B
	.byte	"   tect.  Wildcards can be used.",$9B,$9B
        .byte   $33                             ; 7497 33                       3
        .byte   $2E                             ; 7498 2E                       .
L7499:  .byte   $02                             ; 7499 02                       .
        cmp     $EE,x                           ; 749A D5 EE                    ..
	.byte	$F0,$F2
        .byte   $EF                             ; 749E EF                       .
        .byte   $F4                             ; 749F F4                       .
        sbc     $E3                             ; 74A0 E5 E3                    ..
        .byte   $F4                             ; 74A2 F4                       .
        ldy     #$E1                            ; 74A3 A0 E1                    ..
        cpx     $A0EC                           ; 74A5 EC EC A0                 ...
        .byte   $F3                             ; 74A8 F3                       .
	.byte	$F0,$E5
        .byte   $E3                             ; 74AB E3                       .
        sbc     #$E6                            ; 74AC E9 E6                    ..
        sbc     #$E5                            ; 74AE E9 E5                    ..
        cpx     $A0                             ; 74B0 E4 A0                    ..
        inc     $E9                             ; 74B2 E6 E9                    ..
        cpx     $F3E5                           ; 74B4 EC E5 F3                 ...
        asl     $9B,x                           ; 74B7 16 9B                    ..
	.byte	"  "
	.byte	$02
        tay                                     ; 74BC A8                       .
        cmp     $CEAF,y                         ; 74BD D9 AF CE                 ...
        lda     #$BF                            ; 74C0 A9 BF                    ..
        asl     $20,x                           ; 74C2 16 20                    . 
        .byte   $50                             ; 74C4 50                       P
L74C5:  .byte   $72                             ; 74C5 72                       r
        adc     $73                             ; 74C6 65 73                    es
        .byte   $73                             ; 74C8 73                       s
        jsr     L2059                           ; 74C9 20 59 20                  Y 
        .byte   $74                             ; 74CC 74                       t
        .byte   $6F                             ; 74CD 6F                       o
        .byte	" unprotect all",$9B
	.byte	"   files named by filespec.  Press N",$9B
	.byte	"   or RETURN to unprotect one by one.",$9B,$9B
        .byte   $34                             ; 7529 34                       4
        rol     L4920                           ; 752A 2E 20 49                 . I
        ror     $20                             ; 752D 66 20                    f 
        adc     $6E,x                           ; 752F 75 6E                    un
        bvs     L75A5                           ; 7531 70 72                    pr
        .byte   $6F                             ; 7533 6F                       o
        .byte   $74                             ; 7534 74                       t
        adc     $63                             ; 7535 65 63                    ec
        .byte   $74                             ; 7537 74                       t
        adc     #$6E                            ; 7538 69 6E                    in
        .byte   $67                             ; 753A 67                       g
        jsr     L6966                           ; 753B 20 66 69                  fi
        jmp     (L7365)                         ; 753E 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" one at a",$9B
	.byte	"   time, DOS shows you each filename",$9B
L7570:  .byte   $20                             ; 7570 20                        
        .byte   $20                             ; 7571 20                        
L7572:  .byte   $20                             ; 7572 20                        
L7573:  .byte   $61                             ; 7573 61                       a
L7574:  ror     $2064                           ; 7574 6E 64 20                 nd 
        .byte   $67                             ; 7577 67                       g
        adc     #$76                            ; 7578 69 76                    iv
        adc     $73                             ; 757A 65 73                    es
        jsr     L6F79                           ; 757C 20 79 6F                  yo
        adc     $20,x                           ; 757F 75 20                    u 
        adc     ($20,x)                         ; 7581 61 20                    a 
        eor     $4E2F,y                         ; 7583 59 2F 4E                 Y/N
        .byte   $20                             ; 7586 20                        
        .byte   $6F                             ; 7587 6F                       o
L7588:  bvs     L75FE                           ; 7588 70 74                    pt
        adc     #$6F                            ; 758A 69 6F                    io
        ror     L202E                           ; 758C 6E 2E 20                 n. 
        jsr     L6843                           ; 758F 20 43 68                  Ch
        adc     $63                             ; 7592 65 63                    ec
        .byte   $6B                             ; 7594 6B                       k
        .byte   $9B                             ; 7595 9B                       .
        jsr     L2020                           ; 7596 20 20 20                    
        lsr     $69                             ; 7599 46 69                    Fi
        jmp     (L2065)                         ; 759B 6C 65 20                 le 

; ----------------------------------------------------------------------------
        eor     #$6E                            ; 759E 49 6E                    In
        .byte   $64                             ; 75A0 64                       d
        adc     $78                             ; 75A1 65 78                    ex
        .byte   $2E                             ; 75A3 2E                       .
        .byte   $20                             ; 75A4 20                        
L75A5:  jsr     L6E55                           ; 75A5 20 55 6E                  Un
        bvs     L761C                           ; 75A8 70 72                    pr
        .byte   $6F                             ; 75AA 6F                       o
        .byte   $74                             ; 75AB 74                       t
        adc     $63                             ; 75AC 65 63                    ec
        .byte   $74                             ; 75AE 74                       t
        adc     $64                             ; 75AF 65 64                    ed
        jsr     L6966                           ; 75B1 20 66 69                  fi
        jmp     (L7365)                         ; 75B4 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 75B7 9B                       .
        jsr     L2020                           ; 75B8 20 20 20                    
        jmp     (L736F)                         ; 75BB 6C 6F 73                 los

; ----------------------------------------------------------------------------
        adc     $20                             ; 75BE 65 20                    e 
        .byte   $74                             ; 75C0 74                       t
        pla                                     ; 75C1 68                       h
        adc     $20                             ; 75C2 65 20                    e 
        plp                                     ; 75C4 28                       (
        rol     a                               ; 75C5 2A                       *
        and     #$20                            ; 75C6 29 20                    ) 
        adc     #$6E                            ; 75C8 69 6E                    in
        .byte	" fr"
        .byte   $6F                             ; 75CD 6F                       o
        ror     L2074                           ; 75CE 6E 74 20                 nt 
        .byte   $6F                             ; 75D1 6F                       o
        ror     $20                             ; 75D2 66 20                    f 
        ror     $69                             ; 75D4 66 69                    fi
        .byte	"len"

; ----------------------------------------------------------------------------
        adc     ($6D,x)                         ; 75D9 61 6D                    am
        adc     $2E                             ; 75DB 65 2E                    e.
        .byte   $9B                             ; 75DD 9B                       .
        .byte   $02                             ; 75DE 02                       .
        .byte   $D3                             ; 75DF D3                       .
        sbc     ($F6,x)                         ; 75E0 E1 F6                    ..
        sbc     $16                             ; 75E2 E5 16                    ..
        pha                                     ; 75E4 48                       H
        adc     $6C                             ; 75E5 65 6C                    el
        bvs     L7609                           ; 75E7 70 20                    p 
        .byte   $53                             ; 75E9 53                       S
        .byte   $63                             ; 75EA 63                       c
        .byte   $72                             ; 75EB 72                       r
        adc     $65                             ; 75EC 65 65                    ee
        ror     L2020                           ; 75EE 6E 20 20                 n  
        jsr     L2020                           ; 75F1 20 20 20                    
        jsr     L2020                           ; 75F4 20 20 20                    
        jsr     L2020                           ; 75F7 20 20 20                    
        jsr     L2020                           ; 75FA 20 20 20                    
        .byte   $31                             ; 75FD 31                       1
L75FE:  jsr     L666F                           ; 75FE 20 6F 66                  of
        jsr     L9B31                           ; 7601 20 31 9B                  1.
        .byte   $9B                             ; 7604 9B                       .
        and     ($2E),y                         ; 7605 31 2E                    1.
        .byte   $20                             ; 7607 20                        
        .byte   $50                             ; 7608 50                       P
L7609:  .byte   $72                             ; 7609 72                       r
        adc     $73                             ; 760A 65 73                    es
        .byte   $73                             ; 760C 73                       s
        jsr     L2053                           ; 760D 20 53 20                  S 
        .byte   $74                             ; 7610 74                       t
        .byte   $6F                             ; 7611 6F                       o
	.byte	" wr"
        adc     #$74                            ; 7615 69 74                    it
        adc     $20                             ; 7617 65 20                    e 
        adc     ($20,x)                         ; 7619 61 20                    a 
        .byte   $73                             ; 761B 73                       s
L761C:  adc     $6C                             ; 761C 65 6C                    el
        adc     $63                             ; 761E 65 63                    ec
        .byte   $74                             ; 7620 74                       t
        adc     $64                             ; 7621 65 64                    ed
        jsr     L656D                           ; 7623 20 6D 65                  me
        .byte	"mor"
        adc     L209B,y                         ; 7629 79 9B 20                 y. 
	.byte	"  a"
        .byte   $72                             ; 762F 72                       r
        adc     $61                             ; 7630 65 61                    ea
        .byte	" onto disk. "
	.byte	$02
        .byte   $D3                             ; 763F D3                       .
        sbc     ($F6,x)                         ; 7640 E1 F6                    ..
        sbc     $16                             ; 7642 E5 16                    ..
        .byte   $77                             ; 7644 77                       w
        .byte   $6F                             ; 7645 6F                       o
        .byte   $72                             ; 7646 72                       r
        .byte   $6B                             ; 7647 6B                       k
        .byte   $73                             ; 7648 73                       s
        jsr     L4E4F                           ; 7649 20 4F 4E                  ON
        jmp     L9B59                           ; 764C 4C 59 9B                 LY.
	.byte	"   with binary format programs.",$9B,$9B
        .byte   $32                             ; 7670 32                       2
        rol     $C602                           ; 7671 2E 02 C6                 ...
        sbc     #$EC                            ; 7674 E9 EC                    ..
        sbc     $F3                             ; 7676 E5 F3                    ..
	.byte	$F0,$E5
        .byte   $E3                             ; 767A E3                       .
        .byte   $BF                             ; 767B BF                       .
        asl     $45,x                           ; 767C 16 45                    .E
        ror     L6574                           ; 767E 6E 74 65                 nte
        .byte   $72                             ; 7681 72                       r
        jsr     L2061                           ; 7682 20 61 20                  a 
        adc     $6E,x                           ; 7685 75 6E                    un
        adc     #$71                            ; 7687 69 71                    iq
        adc     $65,x                           ; 7689 75 65                    ue
        jsr     L6966                           ; 768B 20 66 69                  fi
        jmp     (L7365)                         ; 768E 6C 65 73                 les

; ----------------------------------------------------------------------------
        bvs     L76F8                           ; 7691 70 65                    pe
        .byte   $63                             ; 7693 63                       c
	.byte	".",$9B
	.byte	"   Wildcards are invalid input.",$9B,$9B
        .byte   $33                             ; 76B7 33                       3
        rol     $D302                           ; 76B8 2E 02 D3                 ...
        .byte   $F4                             ; 76BB F4                       .
        sbc     ($F2,x)                         ; 76BC E1 F2                    ..
        .byte   $F4                             ; 76BE F4                       .
        ldy     #$E1                            ; 76BF A0 E1                    ..
        cpx     $E4                             ; 76C1 E4 E4                    ..
        .byte   $F2                             ; 76C3 F2                       .
        .byte   $BF                             ; 76C4 BF                       .
        .byte   $AF                             ; 76C5 AF                       .
        cmp     $EE                             ; 76C6 C5 EE                    ..
        cpx     $A0                             ; 76C8 E4 A0                    ..
        sbc     ($E4,x)                         ; 76CA E1 E4                    ..
        cpx     $F2                             ; 76CC E4 F2                    ..
        .byte   $BF                             ; 76CE BF                       .
	.byte	$16
	.byte	"Enter start",$9B
        jsr     L2020                           ; 76DC 20 20 20                    
        adc     ($6E,x)                         ; 76DF 61 6E                    an
        .byte   $64                             ; 76E1 64                       d
        .byte	" en"
        .byte   $64                             ; 76E5 64                       d
        jsr     L6461                           ; 76E6 20 61 64                  ad
        .byte   $64                             ; 76E9 64                       d
        .byte   $72                             ; 76EA 72                       r
        adc     $73                             ; 76EB 65 73                    es
        .byte   $73                             ; 76ED 73                       s
        adc     $73                             ; 76EE 65 73                    es
        .byte	" in"
        .byte   $20                             ; 76F3 20                        
L76F4:  pla                                     ; 76F4 68                       h
        adc     $78                             ; 76F5 65 78                    ex
        .byte   $2E                             ; 76F7 2E                       .
L76F8:  .byte   $9B                             ; 76F8 9B                       .
        .byte   $9B                             ; 76F9 9B                       .
        .byte   $34                             ; 76FA 34                       4
        rol     $CF02                           ; 76FB 2E 02 CF                 ...
        beq     L76F4                           ; 76FE F0 F4                    ..
        sbc     #$EF                            ; 7700 E9 EF                    ..
        inc     $ECE1                           ; 7702 EE E1 EC                 ...
        ldy     #$C9                            ; 7705 A0 C9                    ..
        .byte   $CE                             ; 7707 CE                       .
L7708:  cmp     #$D4                            ; 7708 C9 D4                    ..
        ldy     #$E1                            ; 770A A0 E1                    ..
        cpx     $E4                             ; 770C E4 E4                    ..
        .byte   $F2                             ; 770E F2                       .
        .byte   $BF                             ; 770F BF                       .
        .byte   $AF                             ; 7710 AF                       .
        .byte   $CF                             ; 7711 CF                       .
        beq     L7708                           ; 7712 F0 F4                    ..
        sbc     #$EF                            ; 7714 E9 EF                    ..
        inc     $ECE1                           ; 7716 EE E1 EC                 ...
        ldy     #$D2                            ; 7719 A0 D2                    ..
        cmp     $CE,x                           ; 771B D5 CE                    ..
        ldy     #$9B                            ; 771D A0 9B                    ..
        .byte   $20                             ; 771F 20                        
L7720:  jsr     $E102                           ; 7720 20 02 E1                  ..
        cpx     $E4                             ; 7723 E4 E4                    ..
        .byte   $F2                             ; 7725 F2                       .
        .byte   $BF                             ; 7726 BF                       .
        .byte   $16                             ; 7727 16                       .
L7728:  eor     $6E                             ; 7728 45 6E                    En
        .byte   $74                             ; 772A 74                       t
        adc     $72                             ; 772B 65 72                    er
        jsr     L6461                           ; 772D 20 61 64                  ad
        .byte   $64                             ; 7730 64                       d
        .byte   $72                             ; 7731 72                       r
        adc     $73                             ; 7732 65 73                    es
        .byte   $73                             ; 7734 73                       s
        jsr     L666F                           ; 7735 20 6F 66                  of
        .byte	" in"
        adc     #$74                            ; 773B 69 74                    it
        .byte   $9B                             ; 773D 9B                       .
	.byte	"   program.  Enter run address to",$9B
	.byte	"   load-and-go.  Press RETURN to",$9B
	.byte	"   bypass init and run options.",$9B
        .byte   $02                             ; 77A1 02                       .
        .byte   $C7                             ; 77A2 C7                       .
        .byte   $EF                             ; 77A3 EF                       .
        ldy     #$E1                            ; 77A4 A0 E1                    ..
        .byte   $F4                             ; 77A6 F4                       .
        ldy     #$C8                            ; 77A7 A0 C8                    ..
        sbc     $F8                             ; 77A9 E5 F8                    ..
        ldy     #$E1                            ; 77AB A0 E1                    ..
        cpx     $E4                             ; 77AD E4 E4                    ..
        .byte   $F2                             ; 77AF F2                       .
	.byte	$16
	.byte	"Help Screen    1 of 1",$9B,$9B
	.byte	"1. Press G to enter RUN addr for",$9B
	.byte	"   assembly language program in RAM.",$9B,$9B
	.byte	"You will need to use GO if you SAVEd",$9B
        .byte	"your program file with no RUN addr.",$9B,$9B
        .byte   $32                             ; 7859 32                       2
        rol     $D202                           ; 785A 2E 02 D2                 ...
        sbc     $EE,x                           ; 785D F5 EE                    ..
        ldy     #$E1                            ; 785F A0 E1                    ..
        cpx     $E4                             ; 7861 E4 E4                    ..
        .byte   $F2                             ; 7863 F2                       .
        .byte   $A0                             ; 7864 A0                       .
L7865:  tay                                     ; 7865 A8                       .
        iny                                     ; 7866 C8                       .
        cmp     $D8                             ; 7867 C5 D8                    ..
        lda     #$BF                            ; 7869 A9 BF                    ..
        asl     $45,x                           ; 786B 16 45                    .E
        ror     L6574                           ; 786D 6E 74 65                 nte
        .byte   $72                             ; 7870 72                       r
        .byte   $20                             ; 7871 20                        
L7872:  pla                                     ; 7872 68                       h
        adc     $78                             ; 7873 65 78                    ex
        jsr     L5552                           ; 7875 20 52 55                  RU
        lsr     L209B                           ; 7878 4E 9B 20                 N. 
	.byte	"  a"
        .byte   $64                             ; 787E 64                       d
        .byte   $64                             ; 787F 64                       d
        .byte   $72                             ; 7880 72                       r
        rol     $9B20                           ; 7881 2E 20 9B                 . .
        .byte   $9B                             ; 7884 9B                       .
	.byte	"  "
	.byte	$02
        .byte   $C3                             ; 7888 C3                       .
        cmp     ($D5,x)                         ; 7889 C1 D5                    ..
        .byte   $D4                             ; 788B D4                       .
        cmp     #$CF                            ; 788C C9 CF                    ..
        dec     $16BA                           ; 788E CE BA 16                 ...
        eor     ($44,x)                         ; 7891 41 44                    AD
        .byte   $44                             ; 7893 44                       D
        .byte   $52                             ; 7894 52                       R
        jsr     L554D                           ; 7895 20 4D 55                  MU
        .byte   $53                             ; 7898 53                       S
        .byte   $54                             ; 7899 54                       T
        jsr     L4F43                           ; 789A 20 43 4F                  CO
        lsr     L4154                           ; 789D 4E 54 41                 NTA
        eor     #$4E                            ; 78A0 49 4E                    IN
        .byte   $9B                             ; 78A2 9B                       .
        jsr     L2020                           ; 78A3 20 20 20                    
        eor     $58                             ; 78A6 45 58                    EX
        eor     $43                             ; 78A8 45 43                    EC
        eor     $54,x                           ; 78AA 55 54                    UT
        eor     ($42,x)                         ; 78AC 41 42                    AB
        jmp     L2045                           ; 78AE 4C 45 20                 LE 

; ----------------------------------------------------------------------------
        .byte   $43                             ; 78B1 43                       C
        .byte   $4F                             ; 78B2 4F                       O
        .byte   $44                             ; 78B3 44                       D
        eor     $2E                             ; 78B4 45 2E                    E.
        jsr     L4F20                           ; 78B6 20 20 4F                   O
        .byte   $54                             ; 78B9 54                       T
        pha                                     ; 78BA 48                       H
        eor     $52                             ; 78BB 45 52                    ER
        .byte   $57                             ; 78BD 57                       W
        eor     #$53                            ; 78BE 49 53                    IS
        eor     $2C                             ; 78C0 45 2C                    E,
        .byte   $9B                             ; 78C2 9B                       .
        jsr     L2020                           ; 78C3 20 20 20                    
        eor     $52                             ; 78C6 45 52                    ER
        .byte   $52                             ; 78C8 52                       R
        .byte   $4F                             ; 78C9 4F                       O
        .byte   $52                             ; 78CA 52                       R
        .byte   $53                             ; 78CB 53                       S
        jsr     L4552                           ; 78CC 20 52 45                  RE
        eor     ($55),y                         ; 78CF 51 55                    QU
        eor     #$52                            ; 78D1 49 52                    IR
        eor     #$4E                            ; 78D3 49 4E                    IN
        .byte   $47                             ; 78D5 47                       G
        jsr     L4552                           ; 78D6 20 52 45                  RE
        .byte   $42                             ; 78D9 42                       B
        .byte   $4F                             ; 78DA 4F                       O
        .byte   $4F                             ; 78DB 4F                       O
        .byte   $54                             ; 78DC 54                       T
        jsr     L414D                           ; 78DD 20 4D 41                  MA
        eor     L209B,y                         ; 78E0 59 9B 20                 Y. 
        jsr     L5220                           ; 78E3 20 20 52                   R
        eor     $53                             ; 78E6 45 53                    ES
        eor     $4C,x                           ; 78E8 55 4C                    UL
        .byte   $54                             ; 78EA 54                       T
        rol     $029B                           ; 78EB 2E 9B 02                 ...
        cpy     $E1EF                           ; 78EE CC EF E1                 ...
        cpx     $16                             ; 78F1 E4 16                    ..
        pha                                     ; 78F3 48                       H
        adc     $6C                             ; 78F4 65 6C                    el
        bvs     L7918                           ; 78F6 70 20                    p 
        .byte   $53                             ; 78F8 53                       S
        .byte   $63                             ; 78F9 63                       c
        .byte   $72                             ; 78FA 72                       r
        adc     $65                             ; 78FB 65 65                    ee
        ror     L2020                           ; 78FD 6E 20 20                 n  
        jsr     L2020                           ; 7900 20 20 20                    
        jsr     L2020                           ; 7903 20 20 20                    
        jsr     L2020                           ; 7906 20 20 20                    
        jsr     L2020                           ; 7909 20 20 20                    
        and     ($20),y                         ; 790C 31 20                    1 
        .byte   $6F                             ; 790E 6F                       o
        ror     $20                             ; 790F 66 20                    f 
        and     ($9B),y                         ; 7911 31 9B                    1.
        .byte   $9B                             ; 7913 9B                       .
        and     ($2E),y                         ; 7914 31 2E                    1.
        .byte   $20                             ; 7916 20                        
        .byte   $50                             ; 7917 50                       P
L7918:  .byte   $72                             ; 7918 72                       r
        adc     $73                             ; 7919 65 73                    es
        .byte   $73                             ; 791B 73                       s
        jsr     L204C                           ; 791C 20 4C 20                  L 
        .byte   $74                             ; 791F 74                       t
L7920:  .byte   $6F                             ; 7920 6F                       o
        jsr     L6F6C                           ; 7921 20 6C 6F                  lo
        adc     ($64,x)                         ; 7924 61 64                    ad
        .byte	" in"
        .byte   $74                             ; 7929 74                       t
        .byte   $6F                             ; 792A 6F                       o
        jsr     L6573                           ; 792B 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 7931 74                       t
        adc     $64                             ; 7932 65 64                    ed
        .byte   $9B                             ; 7934 9B                       .
        jsr     L2020                           ; 7935 20 20 20                    
	.byte	"mem"
        .byte   $6F                             ; 793B 6F                       o
        .byte   $72                             ; 793C 72                       r
	.byte	"y a"
        .byte   $72                             ; 7940 72                       r
        adc     $61                             ; 7941 65 61                    ea
        jsr     L2061                           ; 7943 20 61 20                  a 
	.byte	"pr"
        adc     $76                             ; 7948 65 76                    ev
        adc     #$6F                            ; 794A 69 6F                    io
        adc     $73,x                           ; 794C 75 73                    us
        jmp     (L2079)                         ; 794E 6C 79 20                 ly 

; ----------------------------------------------------------------------------
        .byte   $73                             ; 7951 73                       s
        adc     ($76,x)                         ; 7952 61 76                    av
        adc     $64                             ; 7954 65 64                    ed
        .byte   $9B                             ; 7956 9B                       .
	.byte	"   assembly language program.",$9B,$9B
        .byte   $32                             ; 7976 32                       2
        rol     $C602                           ; 7977 2E 02 C6                 ...
        sbc     #$EC                            ; 797A E9 EC                    ..
        sbc     $F3                             ; 797C E5 F3                    ..
	.byte	$F0,$E5
        .byte   $E3                             ; 7980 E3                       .
        .byte   $BF                             ; 7981 BF                       .
        asl     $45,x                           ; 7982 16 45                    .E
        ror     L6574                           ; 7984 6E 74 65                 nte
        .byte   $72                             ; 7987 72                       r
        jsr     L6966                           ; 7988 20 66 69                  fi
        jmp     (L7365)                         ; 798B 6C 65 73                 les

; ----------------------------------------------------------------------------
        bvs     L79F5                           ; 798E 70 65                    pe
        .byte   $63                             ; 7990 63                       c
        jsr     L666F                           ; 7991 20 6F 66                  of
        jsr     L6966                           ; 7994 20 66 69                  fi
        jmp     (L9B65)                         ; 7997 6C 65 9B                 le.
	.byte	"   to be loaded.  Wildcards are OK.",$9B
	.byte	"   If wildcards are used, DOS shows",$9B
        jsr     L2020                           ; 79E2 20 20 20                    
        .byte	"you"
        jsr     L6165                           ; 79E8 20 65 61                  ea
        .byte   $63                             ; 79EB 63                       c
        pla                                     ; 79EC 68                       h
        jsr     L6966                           ; 79ED 20 66 69                  fi
        .byte	"len"

; ----------------------------------------------------------------------------
        adc     ($6D,x)                         ; 79F3 61 6D                    am
L79F5:  adc     $20                             ; 79F5 65 20                    e 
        adc     ($6E,x)                         ; 79F7 61 6E                    an
        .byte   $64                             ; 79F9 64                       d
        jsr     L7361                           ; 79FA 20 61 73                  as
        .byte   $6B                             ; 79FD 6B                       k
        .byte   $73                             ; 79FE 73                       s
        jsr     L6F79                           ; 79FF 20 79 6F                  yo
        adc     $9B,x                           ; 7A02 75 9B                    u.
        jsr     L2020                           ; 7A04 20 20 20                    
        .byte   $77                             ; 7A07 77                       w
        pla                                     ; 7A08 68                       h
        adc     #$63                            ; 7A09 69 63                    ic
        pla                                     ; 7A0B 68                       h
        jsr     L6966                           ; 7A0C 20 66 69                  fi
        jmp     (L2065)                         ; 7A0F 6C 65 20                 le 

; ----------------------------------------------------------------------------
        .byte   $74                             ; 7A12 74                       t
        .byte   $6F                             ; 7A13 6F                       o
        jsr     L6F6C                           ; 7A14 20 6C 6F                  lo
        adc     ($64,x)                         ; 7A17 61 64                    ad
        rol     $9B9B                           ; 7A19 2E 9B 9B                 ...
        .byte   $33                             ; 7A1C 33                       3
        rol     L4120                           ; 7A1D 2E 20 41                 . A
        ror     $74                             ; 7A20 66 74                    ft
        adc     $72                             ; 7A22 65 72                    er
        jsr     L6573                           ; 7A24 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 7A2A 74                       t
        adc     #$6E                            ; 7A2B 69 6E                    in
        .byte   $67                             ; 7A2D 67                       g
        jsr     L6966                           ; 7A2E 20 66 69                  fi
        jmp     (L2065)                         ; 7A31 6C 65 20                 le 

; ----------------------------------------------------------------------------
        .byte   $74                             ; 7A34 74                       t
        .byte   $6F                             ; 7A35 6F                       o
        jsr     L6562                           ; 7A36 20 62 65                  be
        jsr     L6F6C                           ; 7A39 20 6C 6F                  lo
        adc     ($64,x)                         ; 7A3C 61 64                    ad
        adc     $64                             ; 7A3E 65 64                    ed
        bit     L209B                           ; 7A40 2C 9B 20                 ,. 
        jsr     L4420                           ; 7A43 20 20 44                   D
        .byte   $4F                             ; 7A46 4F                       O
        .byte   $53                             ; 7A47 53                       S
        jsr     L7361                           ; 7A48 20 61 73                  as
        .byte   $6B                             ; 7A4B 6B                       k
        .byte   $73                             ; 7A4C 73                       s
        .byte   $02                             ; 7A4D 02                       .
        .byte   $D2                             ; 7A4E D2                       .
        sbc     $EE,x                           ; 7A4F F5 EE                    ..
        ldy     #$F4                            ; 7A51 A0 F4                    ..
        inx                                     ; 7A53 E8                       .
        sbc     #$F3                            ; 7A54 E9 F3                    ..
        ldy     #$E6                            ; 7A56 A0 E6                    ..
        sbc     #$EC                            ; 7A58 E9 EC                    ..
        sbc     $A0                             ; 7A5A E5 A0                    ..
        tay                                     ; 7A5C A8                       .
        cmp     $CEAF,y                         ; 7A5D D9 AF CE                 ...
        lda     #$BF                            ; 7A60 A9 BF                    ..
        asl     $9B,x                           ; 7A62 16 9B                    ..
	.byte	"   Press Y to run the file.  Press N",$9B
        jsr     L2020                           ; 7A89 20 20 20                    
        .byte   $6F                             ; 7A8C 6F                       o
        .byte   $72                             ; 7A8D 72                       r
        jsr     L4552                           ; 7A8E 20 52 45                  RE
        .byte   $54                             ; 7A91 54                       T
        eor     $52,x                           ; 7A92 55 52                    UR
        lsr     L6920                           ; 7A94 4E 20 69                 N i
        ror     $20                             ; 7A97 66 20                    f 
	.byte	"not"
        jsr     L6F74                           ; 7A9C 20 74 6F                  to
        jsr     L7572                           ; 7A9F 20 72 75                  ru
	.byte	"n t"
        pla                                     ; 7AA5 68                       h
        adc     $20                             ; 7AA6 65 20                    e 
        ror     $69                             ; 7AA8 66 69                    fi
        jmp     (L2E65)                         ; 7AAA 6C 65 2E                 le.

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 7AAD 9B                       .
        .byte   $02                             ; 7AAE 02                       .
        cmp     $F3,x                           ; 7AAF D5 F3                    ..
        sbc     $F2                             ; 7AB1 E5 F2                    ..
        lda     $E5C4                           ; 7AB3 AD C4 E5                 ...
        inc     $E9                             ; 7AB6 E6 E9                    ..
        inc     $E4E5                           ; 7AB8 EE E5 E4                 ...
	.byte	$16
	.byte	"Help Screen      1 of 1",$9B,$9B
	.byte	"1. Press X to select a program you",$9B
        jsr     L2020                           ; 7AF8 20 20 20                    
        pla                                     ; 7AFB 68                       h
        adc     ($76,x)                         ; 7AFC 61 76                    av
        adc     $20                             ; 7AFE 65 20                    e 
        .byte   $77                             ; 7B00 77                       w
        .byte   $72                             ; 7B01 72                       r
        adc     #$74                            ; 7B02 69 74                    it
        .byte   $74                             ; 7B04 74                       t
        adc     $6E                             ; 7B05 65 6E                    en
        .byte	" in assembly language",$9B
	.byte	"   and stored with SAVE.",$9B,$9B
        .byte   $32                             ; 7B37 32                       2
        rol     L4120                           ; 7B38 2E 20 41                 . A
        ror     $74                             ; 7B3B 66 74                    ft
        adc     $72                             ; 7B3D 65 72                    er
	.byte	" pr"
        adc     $73                             ; 7B42 65 73                    es
        .byte   $73                             ; 7B44 73                       s
        adc     #$6E                            ; 7B45 69 6E                    in
        .byte   $67                             ; 7B47 67                       g
        jsr     L2C58                           ; 7B48 20 58 2C                  X,
        jsr     L6F79                           ; 7B4B 20 79 6F                  yo
        adc     $20,x                           ; 7B4E 75 20                    u 
        .byte   $63                             ; 7B50 63                       c
        adc     ($6E,x)                         ; 7B51 61 6E                    an
	.byte	" (a"
        and     #$20                            ; 7B56 29 20                    ) 
        .byte   $74                             ; 7B58 74                       t
        adc     L6570,y                         ; 7B59 79 70 65                 ype
        .byte   $9B                             ; 7B5C 9B                       .
	.byte	"   in filespec and press RETURN or",$9B
        jsr     L2020                           ; 7B80 20 20 20                    
        plp                                     ; 7B83 28                       (
        .byte   $62                             ; 7B84 62                       b
        and     #$20                            ; 7B85 29 20                    ) 
        bvs     L7BFB                           ; 7B87 70 72                    pr
        adc     $73                             ; 7B89 65 73                    es
        .byte   $73                             ; 7B8B 73                       s
        jsr     L4552                           ; 7B8C 20 52 45                  RE
        .byte   $54                             ; 7B8F 54                       T
        eor     $52,x                           ; 7B90 55 52                    UR
	.byte	"N a"
        ror     $2064                           ; 7B95 6E 64 20                 nd 
	.byte	"let"
        jsr     L4F44                           ; 7B9B 20 44 4F                  DO
        .byte   $53                             ; 7B9E 53                       S
	.byte	" sh"
        .byte   $6F                             ; 7BA2 6F                       o
        .byte   $77                             ; 7BA3 77                       w
        .byte   $9B                             ; 7BA4 9B                       .
	.byte	"   filenames on"
        jsr     L3144                           ; 7BB4 20 44 31                  D1
        .byte   $3A                             ; 7BB7 3A                       :
        jsr     L6977                           ; 7BB8 20 77 69                  wi
        .byte   $74                             ; 7BBB 74                       t
        pla                                     ; 7BBC 68                       h
        jsr     L4D43                           ; 7BBD 20 43 4D                  CM
        .byte   $44                             ; 7BC0 44                       D
        .byte   $9B                             ; 7BC1 9B                       .
        jsr     L2020                           ; 7BC2 20 20 20                    
        adc     $78                             ; 7BC5 65 78                    ex
        .byte   $74                             ; 7BC7 74                       t
        adc     $6E                             ; 7BC8 65 6E                    en
        .byte   $64                             ; 7BCA 64                       d
        adc     $72                             ; 7BCB 65 72                    er
        .byte   $73                             ; 7BCD 73                       s
        .byte   $2E                             ; 7BCE 2E                       .
L7BCF:  jsr     L4920                           ; 7BCF 20 20 49                   I
        ror     $20                             ; 7BD2 66 20                    f 
	.byte	"method"
        jsr     L6228                           ; 7BDA 20 28 62                  (b
        and     #$20                            ; 7BDD 29 20                    ) 
        adc     #$73                            ; 7BDF 69 73                    is
        jsr     L7375                           ; 7BE1 20 75 73                  us
        adc     $64                             ; 7BE4 65 64                    ed
        bit     L209B                           ; 7BE6 2C 9B 20                 ,. 
        jsr     L7020                           ; 7BE9 20 20 70                   p
        .byte   $72                             ; 7BEC 72                       r
        adc     $73                             ; 7BED 65 73                    es
        .byte   $73                             ; 7BEF 73                       s
        jsr     L2058                           ; 7BF0 20 58 20                  X 
        .byte   $77                             ; 7BF3 77                       w
        adc     #$74                            ; 7BF4 69 74                    it
        pla                                     ; 7BF6 68                       h
        jsr     L6F79                           ; 7BF7 20 79 6F                  yo
        .byte   $75                             ; 7BFA 75                       u
L7BFB:  .byte   $72                             ; 7BFB 72                       r
	.byte	" pr"
        .byte   $6F                             ; 7BFF 6F                       o
        .byte   $67                             ; 7C00 67                       g
        .byte   $72                             ; 7C01 72                       r
        adc     ($6D,x)                         ; 7C02 61 6D                    am
        jsr     L6964                           ; 7C04 20 64 69                  di
        .byte   $73                             ; 7C07 73                       s
        .byte   $6B                             ; 7C08 6B                       k
	.byte	" in"
        .byte   $9B                             ; 7C0C 9B                       .
        jsr     L2020                           ; 7C0D 20 20 20                    
        .byte   $64                             ; 7C10 64                       d
        .byte   $72                             ; 7C11 72                       r
        adc     #$76                            ; 7C12 69 76                    iv
        adc     $20                             ; 7C14 65 20                    e 
        and     ($2E),y                         ; 7C16 31 2E                    1.
        .byte   $9B                             ; 7C18 9B                       .
        .byte   $9B                             ; 7C19 9B                       .
        eor     ($66,x)                         ; 7C1A 41 66                    Af
        .byte   $74                             ; 7C1C 74                       t
        adc     $72                             ; 7C1D 65 72                    er
        jsr     L4F44                           ; 7C1F 20 44 4F                  DO
        .byte   $53                             ; 7C22 53                       S
        jsr     L6F6C                           ; 7C23 20 6C 6F                  lo
        adc     ($64,x)                         ; 7C26 61 64                    ad
        .byte   $73                             ; 7C28 73                       s
	.byte	" in the command file",$9B
	.byte	"you may remove your program disk.",$9B
	.byte	$02
        cmp     $EDE5                           ; 7C61 CD E5 ED                 ...
        ldy     #$D3                            ; 7C64 A0 D3                    ..
        sbc     ($F6,x)                         ; 7C66 E1 F6                    ..
        sbc     $16                             ; 7C68 E5 16                    ..
	.byte	"Help Screen          1 of 1",$9B,$9B
	.byte	"1. Press M to select MEM SAVE option.",$9B
        jsr     L2020                           ; 7CAD 20 20 20                    
        .byte   $57                             ; 7CB0 57                       W
        pla                                     ; 7CB1 68                       h
        adc     $6E                             ; 7CB2 65 6E                    en
        jsr     L454D                           ; 7CB4 20 4D 45                  ME
        eor     $5320                           ; 7CB7 4D 20 53                 M S
        eor     ($56,x)                         ; 7CBA 41 56                    AV
        eor     $20                             ; 7CBC 45 20                    E 
        adc     #$73                            ; 7CBE 69 73                    is
	.byte	" active, you can",$9B
	.byte	"   use a part of memory usually used",$9B
        jsr     L2020                           ; 7CF6 20 20 20                    
        .byte   $62                             ; 7CF9 62                       b
        adc     L2020,y                         ; 7CFA 79 20 20                 y  
        .byte   $44                             ; 7CFD 44                       D
        .byte   $4F                             ; 7CFE 4F                       O
        .byte   $53                             ; 7CFF 53                       S
	.byte	".",$9B
	.byte	"When using DOS with MEM SAVE on, the",$9B
        .byte   $63                             ; 7D27 63                       c
        .byte   $6F                             ; 7D28 6F                       o
        ror     L6574                           ; 7D29 6E 74 65                 nte
        ror     L7374                           ; 7D2C 6E 74 73                 nts
        jsr     L666F                           ; 7D2F 20 6F 66                  of
        jsr     L6F6C                           ; 7D32 20 6C 6F                  lo
        .byte   $77                             ; 7D35 77                       w
        adc     $72                             ; 7D36 65 72                    er
        jsr     L656D                           ; 7D38 20 6D 65                  me
        .byte   $6D                             ; 7D3B 6D                       m
        .byte   $6F                             ; 7D3C 6F                       o
L7D3D:  .byte   $72                             ; 7D3D 72                       r
	.byte	"y a"
        .byte   $72                             ; 7D41 72                       r
        adc     $20                             ; 7D42 65 20                    e 
        .byte   $73                             ; 7D44 73                       s
        adc     ($76,x)                         ; 7D45 61 76                    av
        adc     $64                             ; 7D47 65 64                    ed
        jsr     L6F74                           ; 7D49 20 74 6F                  to
        .byte   $9B                             ; 7D4C 9B                       .
        .byte   $64                             ; 7D4D 64                       d
        adc     #$73                            ; 7D4E 69 73                    is
        .byte   $6B                             ; 7D50 6B                       k
	.byte	" in"
        jsr     L454D                           ; 7D54 20 4D 45                  ME
        eor     $532E                           ; 7D57 4D 2E 53                 M.S
        eor     ($56,x)                         ; 7D5A 41 56                    AV
        jsr     L6966                           ; 7D5C 20 66 69                  fi
        jmp     (L2E65)                         ; 7D5F 6C 65 2E                 le.

; ----------------------------------------------------------------------------
        jsr     L5720                           ; 7D62 20 20 57                   W
        pla                                     ; 7D65 68                       h
        adc     $6E                             ; 7D66 65 6E                    en
        jsr     L454D                           ; 7D68 20 4D 45                  ME
        eor     $5320                           ; 7D6B 4D 20 53                 M S
        eor     ($56,x)                         ; 7D6E 41 56                    AV
        eor     $9B                             ; 7D70 45 9B                    E.
        adc     #$73                            ; 7D72 69 73                    is
        jsr     L666F                           ; 7D74 20 6F 66                  of
        ror     $2C                             ; 7D77 66 2C                    f,
        jsr     L4F44                           ; 7D79 20 44 4F                  DO
        .byte   $53                             ; 7D7C 53                       S
        jsr     L616D                           ; 7D7D 20 6D 61                  ma
        adc     $2220,y                         ; 7D80 79 20 22                 y "
        .byte   $6F                             ; 7D83 6F                       o
        ror     $65,x                           ; 7D84 76 65                    ve
        .byte   $72                             ; 7D86 72                       r
        .byte   $77                             ; 7D87 77                       w
        .byte   $72                             ; 7D88 72                       r
        adc     #$74                            ; 7D89 69 74                    it
        adc     $22                             ; 7D8B 65 22                    e"
        jsr     L6F73                           ; 7D8D 20 73 6F                  so
        adc     L2065                           ; 7D90 6D 65 20                 me 
        .byte   $6F                             ; 7D93 6F                       o
        ror     $9B                             ; 7D94 66 9B                    f.
        .byte	"you"
        .byte   $72                             ; 7D99 72                       r
        jsr     L6164                           ; 7D9A 20 64 61                  da
        .byte   $74                             ; 7D9D 74                       t
        adc     ($20,x)                         ; 7D9E 61 20                    a 
        adc     #$6E                            ; 7DA0 69 6E                    in
        jsr     L656D                           ; 7DA2 20 6D 65                  me
        .byte	"mor"
        adc     $9B2E,y                         ; 7DA8 79 2E 9B                 y..
        .byte   $9B                             ; 7DAB 9B                       .
        .byte   $32                             ; 7DAC 32                       2
        rol     $D502                           ; 7DAD 2E 02 D5                 ...
        .byte   $F3                             ; 7DB0 F3                       .
        sbc     $A0                             ; 7DB1 E5 A0                    ..
        cmp     $CDC5                           ; 7DB3 CD C5 CD                 ...
        ldy     #$D3                            ; 7DB6 A0 D3                    ..
        cmp     ($D6,x)                         ; 7DB8 C1 D6                    ..
        cmp     $A0                             ; 7DBA C5 A0                    ..
        tay                                     ; 7DBC A8                       .
        cmp     $CEAF,y                         ; 7DBD D9 AF CE                 ...
        lda     #$BF                            ; 7DC0 A9 BF                    ..
        asl     $50,x                           ; 7DC2 16 50                    .P
        .byte   $72                             ; 7DC4 72                       r
        adc     $73                             ; 7DC5 65 73                    es
        .byte   $73                             ; 7DC7 73                       s
        jsr     L2059                           ; 7DC8 20 59 20                  Y 
        .byte   $74                             ; 7DCB 74                       t
        .byte   $6F                             ; 7DCC 6F                       o
        .byte   $9B                             ; 7DCD 9B                       .
	.byte	"   turn on MEM SAVE.  Press N to turn",$9B
	.byte	"   o"
        ror     $66                             ; 7DF8 66 66                    ff
        jsr     L454D                           ; 7DFA 20 4D 45                  ME
        eor     $5320                           ; 7DFD 4D 20 53                 M S
        eor     ($56,x)                         ; 7E00 41 56                    AV
        eor     $2E                             ; 7E02 45 2E                    E.
        jsr     L5020                           ; 7E04 20 20 50                   P
        .byte   $72                             ; 7E07 72                       r
        adc     $73                             ; 7E08 65 73                    es
        .byte   $73                             ; 7E0A 73                       s
        jsr     L4552                           ; 7E0B 20 52 45                  RE
        .byte   $54                             ; 7E0E 54                       T
        eor     $52,x                           ; 7E0F 55 52                    UR
	.byte	"N t"
        .byte   $6F                             ; 7E14 6F                       o
        .byte   $9B                             ; 7E15 9B                       .
        jsr     L2020                           ; 7E16 20 20 20                    
        jmp     (L6165)                         ; 7E19 6C 65 61                 lea

; ----------------------------------------------------------------------------
        ror     $65,x                           ; 7E1C 76 65                    ve
        jsr     L454D                           ; 7E1E 20 4D 45                  ME
        eor     $5320                           ; 7E21 4D 20 53                 M S
        eor     ($56,x)                         ; 7E24 41 56                    AV
        eor     $20                             ; 7E26 45 20                    E 
        adc     ($73,x)                         ; 7E28 61 73                    as
        jsr     L7369                           ; 7E2A 20 69 73                  is
        rol     $9B9B                           ; 7E2D 2E 9B 9B                 ...
        .byte   $33                             ; 7E30 33                       3
        rol     L4320                           ; 7E31 2E 20 43                 . C
        pla                                     ; 7E34 68                       h
        adc     $63                             ; 7E35 65 63                    ec
        .byte   $6B                             ; 7E37 6B                       k
        jsr     L4F44                           ; 7E38 20 44 4F                  DO
        .byte   $53                             ; 7E3B 53                       S
        jsr     L656D                           ; 7E3C 20 6D 65                  me
        ror     $3A75                           ; 7E3F 6E 75 3A                 nu:
        jsr     L6857                           ; 7E42 20 57 68                  Wh
        adc     $6E                             ; 7E45 65 6E                    en
        jsr     L454D                           ; 7E47 20 4D 45                  ME
        eor     $5320                           ; 7E4A 4D 20 53                 M S
        eor     ($56,x)                         ; 7E4D 41 56                    AV
        eor     $20                             ; 7E4F 45 20                    E 
        .byte   $6F                             ; 7E51 6F                       o
        ror     $9B2C                           ; 7E52 6E 2C 9B                 n,.
	.byte	"   the name has a dot: Mem"
	Inverse	"."
	.byte	"save",$9B
	.byte	$02
	Inverse	"Init Disk"
	.byte	$16
	.byte	"Help Screen         1 of 2",$9B,$9B
	.byte	"1. WITH DOS DISK IN DRIVE 1,",$9B
	.byte	"   press I to initialize disk.",$9B,$9B
	.byte	$02
	Inverse	"CAUTION:"
	.byte	$16
	.byte	"Initializing a disk erases",$9B
	.byte	" all data on the disk.",$9B,$9B
	.byte	"2."
	.byte	$02
	Inverse	"Format disk in drive (1-8)?"
	.byte	$16
	.byte	$9B
	.byte	"   Enter no. of drive with disk",$9B
	.byte	"   to be initialized.  NEVER INIT",$9B
	.byte	"   YOUR DOS DISK.",$9B,$9B
	.byte	"3."
	.byte	$02
	Inverse	"Format type?"
	.byte	$16
	.byte	"Press 1 for single",$9B
	.byte	"   density format; press 2 for",$9B
	.byte	"   double density format.",$9B
	.byte	$02
	Inverse	"Init Disk"
	.byte	$16
	.byte	"Help Screen         2 of 2",$9B,$9B
	.byte	"4."
	.byte	$02
	Inverse	"Write FMS.SYS file (Y/N)?"
	.byte	$16
	.byte	"This",$9B
	.byte	"   file lets you boot the system from",$9B
	.byte	"   this disk.  Press Y to write file;",$9B
	.byte	"   press N or RETURN to format only.",$9B,$9B
	.byte	"5."
	.byte	$02
	Inverse	"Modify FMS parameters (Y/N)?"
	.byte	$16
	.byte	"This",$9B
	.byte	"   lets you increase usable memory.",$9B
	.byte	"   Press Y to modify; press N or",$9B
	.byte	"   RETURN to bypass modification.",$9B,$9B
	.byte	"If you press Y for Step 5, answer:",$9B
	.byte	"  a) Start address of FMS buffers?",$9B
	.byte	"  b) Number of FMS buffers (2-16)?",$9B
	.byte	"  c) Verify write-commands (Y/N)?",$9B,$9B
	.byte	"DOS asks you to confirm init values.",$9B
	.byte	$02
        .byte   $D4                             ; 81E1 D4                       .
        .byte   $EF                             ; 81E2 EF                       .
        ldy     #$C3                            ; 81E3 A0 C3                    ..
        sbc     ($F2,x)                         ; 81E5 E1 F2                    ..
        .byte   $F4                             ; 81E7 F4                       .
        .byte   $F2                             ; 81E8 F2                       .
        sbc     #$E4                            ; 81E9 E9 E4                    ..
        .byte   $E7                             ; 81EB E7                       .
        sbc     $16                             ; 81EC E5 16                    ..
	.byte	"Help Screen      1 of 1",$9B,$9B
        .byte	"1. Press T to select function.  TO",$9B
	.byte	"   CARTRIDGE passes control from DOS",$9B
	.byte	"   to inserted cartridge.",$9B,$9B
	.byte	"   (a)If BASIC cart. is inserted, the",$9B
	.byte	"      screen displays a READY prompt.",$9B,$9B
	.byte	"   (b)If ASSEMBLER EDITOR is inserted",$9B
	.byte	"      screen displays an EDIT prompt.",$9B,$9B
	.byte	"   (c)If you have not inserted cart.,",$9B
	.byte	"      screen displays NO CARTRIDGE.",$9B,$9B
	.byte	"2. If you get message (c), press",$9B
	.byte	"   ESC to return to DOS menu.",$9B
	.byte	"General Information            1 of 6",$9B,$9B
	.byte	"The DOS commands allow you to store,",$9B
	.byte	"retrieve, and manage your disk files.",$9B,$9B
	.byte	"1. To select a menu function, press",$9B
	.byte	"   the first letter of the command",$9B
	.byte	"   name. ("
	.byte	$02
	Inverse	"E"
	.byte	"rase ... press"
	.byte	$02
	Inverse	"E"
	.byte	", etc.)",$9B,$9B
	.byte	"DOS prompts you to supply the data",$9B
	.byte	"needed to execute a command.  When",$9B
	.byte	"response is complete, press RETURN.",$9B,$9B
	.byte	"2. To get Help on any DOS function,",$9B
	.byte	"   press ATARI or HELP key instead",$9B
	.byte	"   of typing in requested data.",$9B,$9B
	.byte	"3. To break out of any DOS function,",$9B
	.byte	"   press ESC key for the DOS menu.",$9B
	.byte	"General Information            2 of 6",$9B,$9B
	.byte	"Some DOS commands are stored on the",$9B
	.byte	"DOS disk and are loaded into the",$9B
	.byte	"computer when selected.",$9B,$9B
	.byte	"Thus, keep DOS disk in drive 1 when",$9B
	.byte	"selecting:",$9B,$9B
	.byte	"1."
	.byte	$02
	Inverse	"C"
	.byte	"opy/Append",$9B
	.byte	"2."
	.byte	$02
	Inverse	"D"
	.byte	"uplicate",$9B
	.byte	"3."
	.byte	$02
	Inverse "I"
	.byte	"nit disk",$9B
	.byte	"4."
	.byte	$02
	Inverse	"A"
	.byte	"ccess DOS 2",$9B
	.byte	"5."
	.byte	$02
	Inverse	"X"
	.byte	"-user-defined",$9B
	.byte	"6."
	.byte	$02
	Inverse	"H"
	.byte	"elp",$9B,$9B
	.byte	"These files are stored on the DOS",$9B
	.byte	"disk to leave you more available",$9B
	.byte	"memory in your computer.",$9B
	.byte	"General Information            3 of 6",$9B,$9B
	.byte	"DOS asks you for data such as:",$9B,$9B
	.byte	"1."
	.byte	$02
	Inverse	"Filename?"
	.byte	$16
	.byte	"The full name of your",$9B
	.byte	"   file. (MYFILE.BAS)",$9B,$9B
	.byte	"2."
	.byte	$02
	Inverse	"Filespec?"
	.byte	$16
	.byte	"The filename plus the",$9B
	.byte	"   drive ID. (D1:MYFILE.BAS)",$9B,$9B
	.byte	"Wildcards can be used for 1 and 2.",$9B
	.byte	"   *=Any combination of characters.",$9B
	.byte	"   ?=Any single character.",$9B,$9B
	.byte	"3."
	.byte	$02
	Inverse	"Device:"
	.byte	$16
	.byte	"Dn:=drive no.; E:=screen;",$9B
	.byte	"   P:=printer; C:=cassette.",$9B,$9B
	.byte	"4."
	.byte	$02
	Inverse	"Source--?"
	.byte	$16
	.byte	"From which--?",$9B
	.byte	"  "
	.byte	$02
	Inverse	"Destination--?"
	.byte	$16
	.byte	"To which--?",$9B
	.byte	"General Information            4 of 6",$9B,$9B
	.byte	"Answers to prompts sometimes appear",$9B
	.byte	"highlighted (Drive number?"
	Inverse	"1"
	.byte	"). DOS",$9B
	.byte	"picks these preset values (defaults)",$9B
	.byte	"for you when you press RETURN.",$9B,$9B
	.byte	"The default filespec is D1:*.* (all",$9B
	.byte	"files on the disk in drive 1).",$9B,$9B
	.byte	"When using wildcards, DOS asks you",$9B
	.byte	"if you want to act on all files:",$9B
	Inverse	"<function> all specified files (Y/N)?"
	.byte	$9B,$9B
	.byte	"Press Y to process all files auto-",$9B
	.byte	"matically.  Press N or RETURN to",$9B
	.byte	"process files one at a time.",$9B
	.byte	"General Information            5 of 6",$9B,$9B
	.byte	"As noted in the previous screens,",$9B
	.byte	"the RETURN key is used:",$9B,$9B
	.byte	"   (a) to signal the end of your",$9B
	.byte	"       response to a prompt, and",$9B
	.byte	"   (b) to select the default value",$9B
	.byte	"       in response to a prompt.",$9B,$9B
	.byte	"There are two more points to note:",$9B,$9B
	.byte	"1. When in doubt, RETURN is safe. If",$9B
	.byte	"   you answer RETURN to a prompt, DOS",$9B
	.byte	"   never does anything to your files.",$9B,$9B
	.byte	"2. When DOS asks"
	.byte	$02
	Inverse	"<function> all spec-"
	.byte	$9B
	.byte	"  "
	.byte	$02
	Inverse	"ified files (Y/N)?"
	.byte	$16
	.byte	"Press RETURN",$9B
	.byte	"   to see each filename in filespec.",$9B
	.byte	"General Information            6 of 6",$9B,$9B
	.byte	"You know about using HELP or ATARI,",$9B
	.byte	"ESC, and RETURN keys.  But there are",$9B
	.byte	"four other special uses for the",$9B
	.byte	"following keys:",$9B,$9B
	.byte	"1.",$02
	Inverse	"SHIFT-CLEAR"
	.byte	$16
	.byte	"causes a DOS function",$9B
	.byte	"   to restart from the first prompt",$9B
	.byte	"   for data.",$9B,$9B
	.byte	"2.",$02
	Inverse "SHIFT-DELETE"
	.byte	$16
	.byte	"deletes your response",$9B
	.byte	"   to the current prompt only.",$9B,$9B
	.byte	"3."
	.byte	$02
	Inverse	"BACK SPACE"
	.byte	$16
	.byte	"erases the character",$9B
	.byte	"   preceeding the cursor.",$9B,$9B
	.byte	"4."
	.byte	$02
	Inverse	"CTRL-->/CTRL<--"
	.byte	$16
	.byte	"move the cursor",$9B
	.byte	"   without erasing any characters.",$9B
	.byte	"830831V3"

; ----------------------------------------------------------------------------

	.SEGMENT	"SEG2H"

	.word	$02E0
	.word	$02E1
	
; ----------------------------------------------------------------------------

	.SEGMENT	"SEG2"

	.word	$0000
	
