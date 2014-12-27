; da65 V2.14 - Git b926301
; Created:    2014-12-26 16:45:00
; Input file: HELP.TXT
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0220           := $0220
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
        .byte   $02                             ; 5EA9 02                       .
        .byte   $C3                             ; 5EAA C3                       .
        .byte   $EF                             ; 5EAB EF                       .
        beq     L5EA7                           ; 5EAC F0 F9                    ..
        .byte   $AF                             ; 5EAE AF                       .
L5EAF:  cmp     ($F0,x)                         ; 5EAF C1 F0                    ..
        beq     L5E98                           ; 5EB1 F0 E5                    ..
        inc     $16E4                           ; 5EB3 EE E4 16                 ...
        pha                                     ; 5EB6 48                       H
        adc     $6C                             ; 5EB7 65 6C                    el
        bvs     L5EDB                           ; 5EB9 70 20                    p 
L5EBB:  .byte   $53                             ; 5EBB 53                       S
        .byte   $63                             ; 5EBC 63                       c
        .byte   $72                             ; 5EBD 72                       r
        adc     $65                             ; 5EBE 65 65                    ee
        ror     L2020                           ; 5EC0 6E 20 20                 n  
        jsr     L2020                           ; 5EC3 20 20 20                    
        jsr     L3120                           ; 5EC6 20 20 31                   1
        jsr     L666F                           ; 5EC9 20 6F 66                  of
        jsr     L9B34                           ; 5ECC 20 34 9B                  4.
        .byte   $9B                             ; 5ECF 9B                       .
        and     ($2E),y                         ; 5ED0 31 2E                    1.
        jsr     L7250                           ; 5ED2 20 50 72                  Pr
        adc     $73                             ; 5ED5 65 73                    es
        .byte   $73                             ; 5ED7 73                       s
        jsr     L2043                           ; 5ED8 20 43 20                  C 
L5EDB:  .byte   $74                             ; 5EDB 74                       t
        .byte   $6F                             ; 5EDC 6F                       o
        .byte   $02                             ; 5EDD 02                       .
        .byte   $C3                             ; 5EDE C3                       .
        .byte   $CF                             ; 5EDF CF                       .
        bne     L5EBB                           ; 5EE0 D0 D9                    ..
        asl     $6F,x                           ; 5EE2 16 6F                    .o
        .byte   $72                             ; 5EE4 72                       r
        .byte   $02                             ; 5EE5 02                       .
        cmp     ($D0,x)                         ; 5EE6 C1 D0                    ..
        bne     L5EAF                           ; 5EE8 D0 C5                    ..
        dec     $16C4                           ; 5EEA CE C4 16                 ...
        ror     $69                             ; 5EED 66 69                    fi
        jmp     (L7365)                         ; 5EEF 6C 65 73                 les

; ----------------------------------------------------------------------------
	.byte	".",$9B
	.byte	"   COPYing creates a duplicate file",$9B
	.byte	"   on the same or another disk.",$9B
	.byte	"   APPENDing copies a file and joins",$9B
	.byte	"   it to another file.  PRESS C WITH",$9B
        jsr     L2020                           ; 5F82 20 20 20                    
        .byte   $44                             ; 5F85 44                       D
        .byte   $4F                             ; 5F86 4F                       O
        .byte   $53                             ; 5F87 53                       S
        jsr     L4944                           ; 5F88 20 44 49                  DI
        .byte   $53                             ; 5F8B 53                       S
        .byte   $4B                             ; 5F8C 4B                       K
        .byte   $20                             ; 5F8D 20                        
L5F8E:  eor     #$4E                            ; 5F8E 49 4E                    IN
        jsr     L5244                           ; 5F90 20 44 52                  DR
        eor     #$56                            ; 5F93 49 56                    IV
        eor     $20                             ; 5F95 45 20                    E 
        and     ($2E),y                         ; 5F97 31 2E                    1.
        .byte   $9B                             ; 5F99 9B                       .
        .byte   $9B                             ; 5F9A 9B                       .
	.byte	"Note: Use COPY to write DOS files",$9B
        .byte   $6F                             ; 5FBD 6F                       o
        ror     L6F74                           ; 5FBE 6E 74 6F                 nto
        jsr     L746F                           ; 5FC1 20 6F 74                  ot
        pla                                     ; 5FC4 68                       h
        adc     $72                             ; 5FC5 65 72                    er
        jsr     L6964                           ; 5FC7 20 64 69                  di
        .byte   $73                             ; 5FCA 73                       s
        .byte   $6B                             ; 5FCB 6B                       k
        .byte   $73                             ; 5FCC 73                       s
        jsr     L7361                           ; 5FCD 20 61 73                  as
L5FD0:  jsr     L656E                           ; 5FD0 20 6E 65                  ne
        adc     $64                             ; 5FD3 65 64                    ed
        adc     $64                             ; 5FD5 65 64                    ed
        rol     $9B9B                           ; 5FD7 2E 9B 9B                 ...
        .byte   $32                             ; 5FDA 32                       2
        rol     $C102                           ; 5FDB 2E 02 C1                 ...
        beq     L5FD0                           ; 5FDE F0 F0                    ..
        sbc     $EE                             ; 5FE0 E5 EE                    ..
        cpx     $A0                             ; 5FE2 E4 A0                    ..
        tay                                     ; 5FE4 A8                       .
        cmp     $CEAF,y                         ; 5FE5 D9 AF CE                 ...
        lda     #$BF                            ; 5FE8 A9 BF                    ..
	.byte	$16
	.byte	"Press Y to append",$9B
	.byte	"   (join) two or more files.  If you",$9B
	.byte	"   pr"
        adc     $73                             ; 6027 65 73                    es
        .byte   $73                             ; 6029 73                       s
        jsr     L204E                           ; 602A 20 4E 20                  N 
        .byte   $6F                             ; 602D 6F                       o
        .byte   $72                             ; 602E 72                       r
        jsr     L4552                           ; 602F 20 52 45                  RE
        .byte   $54                             ; 6032 54                       T
        eor     $52,x                           ; 6033 55 52                    UR
        lsr     $202C                           ; 6035 4E 2C 20                 N, 
        .byte   $44                             ; 6038 44                       D
        .byte   $4F                             ; 6039 4F                       O
        .byte   $53                             ; 603A 53                       S
        jsr     L6977                           ; 603B 20 77 69                  wi
        jmp     (L206C)                         ; 603E 6C 6C 20                 ll 

; ----------------------------------------------------------------------------
        .byte   $63                             ; 6041 63                       c
        .byte   $6F                             ; 6042 6F                       o
        bvs     L60BE                           ; 6043 70 79                    py
        .byte   $9B                             ; 6045 9B                       .
        jsr     L2020                           ; 6046 20 20 20                    
        .byte   $77                             ; 6049 77                       w
        adc     #$74                            ; 604A 69 74                    it
        pla                                     ; 604C 68                       h
        .byte   $6F                             ; 604D 6F                       o
        adc     $74,x                           ; 604E 75 74                    ut
        jsr     L7061                           ; 6050 20 61 70                  ap
        bvs     L60BA                           ; 6053 70 65                    pe
        ror     L6964                           ; 6055 6E 64 69                 ndi
        ror     $2E67                           ; 6058 6E 67 2E                 ng.
        .byte   $9B                             ; 605B 9B                       .
        .byte   $9B                             ; 605C 9B                       .
	.byte	"You can COPY or APPEND using one or",$9B
	.byte	"two disks and one or two drives.",$9B
	.byte	$02
        .byte   $C3                             ; 60A3 C3                       .
        .byte   $EF                             ; 60A4 EF                       .
	.byte	$F0,$F9
        .byte   $AF                             ; 60A7 AF                       .
        cmp     ($F0,x)                         ; 60A8 C1 F0                    ..
	.byte	$F0,$E5
        inc     $16E4                           ; 60AC EE E4 16                 ...
        pha                                     ; 60AF 48                       H
        adc     $6C                             ; 60B0 65 6C                    el
        bvs     L60D4                           ; 60B2 70 20                    p 
        .byte   $53                             ; 60B4 53                       S
        .byte   $63                             ; 60B5 63                       c
L60B6:  .byte   $72                             ; 60B6 72                       r
        adc     $65                             ; 60B7 65 65                    ee
        .byte   $6E                             ; 60B9 6E                       n
L60BA:  jsr     L2020                           ; 60BA 20 20 20                    
        .byte   $20                             ; 60BD 20                        
L60BE:  jsr     L2020                           ; 60BE 20 20 20                    
        .byte   $32                             ; 60C1 32                       2
L60C2:  jsr     L666F                           ; 60C2 20 6F 66                  of
        jsr     L9B34                           ; 60C5 20 34 9B                  4.
        .byte   $9B                             ; 60C8 9B                       .
        .byte   $33                             ; 60C9 33                       3
        rol     $D302                           ; 60CA 2E 02 D3                 ...
        .byte   $EF                             ; 60CD EF                       .
        sbc     $F2,x                           ; 60CE F5 F2                    ..
        .byte   $E3                             ; 60D0 E3                       .
        sbc     $A0                             ; 60D1 E5 A0                    ..
        .byte   $E4                             ; 60D3 E4                       .
L60D4:  sbc     $F6                             ; 60D4 E5 F6                    ..
        sbc     #$E3                            ; 60D6 E9 E3                    ..
        sbc     $BF                             ; 60D8 E5 BF                    ..
	.byte	$16
	.byte	"Specify",$9B
	.byte	"   device with source file(s).  Dn:=",$9B
        jsr     L2020                           ; 6108 20 20 20                    
        .byte   $64                             ; 610B 64                       d
        .byte   $72                             ; 610C 72                       r
        adc     #$76                            ; 610D 69 76                    iv
        adc     $20                             ; 610F 65 20                    e 
        ror     $2E6F                           ; 6111 6E 6F 2E                 no.
        bit     $4520                           ; 6114 2C 20 45                 , E
        .byte   $3A                             ; 6117 3A                       :
	.byte	"=sc"
        .byte   $72                             ; 611B 72                       r
        adc     $65                             ; 611C 65 65                    ee
        .byte   $6E                             ; 611E 6E                       n
        .byte   $2C                             ; 611F 2C                       ,
L6120:  jsr     L3A43                           ; 6120 20 43 3A                  C:
        and     L6163,x                         ; 6123 3D 63 61                 =ca
        .byte   $73                             ; 6126 73                       s
        .byte   $73                             ; 6127 73                       s
L6128:  adc     $74                             ; 6128 65 74                    et
        .byte   $74                             ; 612A 74                       t
        adc     $2E                             ; 612B 65 2E                    e.
        .byte   $9B                             ; 612D 9B                       .
        .byte   $9B                             ; 612E 9B                       .
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
        jsr     L2020                           ; 61AB 20 20 20                    
        .byte   $6F                             ; 61AE 6F                       o
        .byte   $72                             ; 61AF 72                       r
        jsr     L6977                           ; 61B0 20 77 69                  wi
        .byte   $74                             ; 61B3 74                       t
        pla                                     ; 61B4 68                       h
        jsr     L6966                           ; 61B5 20 66 69                  fi
        jmp     (L2865)                         ; 61B8 6C 65 28                 le(

; ----------------------------------------------------------------------------
        .byte   $73                             ; 61BB 73                       s
        and     #$20                            ; 61BC 29 20                    ) 
        .byte   $74                             ; 61BE 74                       t
        .byte   $6F                             ; 61BF 6F                       o
        jsr     L6562                           ; 61C0 20 62 65                  be
        jsr     L7061                           ; 61C3 20 61 70                  ap
        bvs     L622D                           ; 61C6 70 65                    pe
        ror     L6564                           ; 61C8 6E 64 65                 nde
        .byte   $64                             ; 61CB 64                       d
        rol     L209B                           ; 61CC 2E 9B 20                 .. 
        jsr     L4420                           ; 61CF 20 20 44                   D
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
        .byte	" If"
        jsr     L7061                           ; 625A 20 61 70                  ap
        bvs     L62C4                           ; 625D 70 65                    pe
        .byte   $6E                             ; 625F 6E                       n
        .byte   $64                             ; 6260 64                       d
L6261:  adc     #$6E                            ; 6261 69 6E                    in
        .byte   $67                             ; 6263 67                       g
	.byte	", u"
        .byte   $73                             ; 6267 73                       s
        adc     $9B                             ; 6268 65 9B                    e.
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
        lsr     L746F                           ; 62B1 4E 6F 74                 Not
        adc     $3A                             ; 62B4 65 3A                    e:
        jsr     L4F44                           ; 62B6 20 44 4F                  DO
        .byte   $53                             ; 62B9 53                       S
        jsr     L6F64                           ; 62BA 20 64 6F                  do
        adc     $73                             ; 62BD 65 73                    es
        jsr     L6F6E                           ; 62BF 20 6E 6F                  no
        .byte   $74                             ; 62C2 74                       t
        .byte   $20                             ; 62C3 20                        
L62C4:  adc     ($6C,x)                         ; 62C4 61 6C                    al
	.byte	"low"

; ----------------------------------------------------------------------------
        .byte	" duplicate",$9B
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
        jsr     L0220                           ; 6314 20 20 02                   .
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
        jsr     L0220                           ; 63D8 20 20 02                   .
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
        .byte	" on"
        adc     $20                             ; 6472 65 20                    e 
        .byte   $62                             ; 6474 62                       b
        adc     L6F20,y                         ; 6475 79 20 6F                 y o
        ror     $2C65                           ; 6478 6E 65 2C                 ne,
        .byte   $9B                             ; 647B 9B                       .
        jsr     L2020                           ; 647C 20 20 20                    
        .byte   $44                             ; 647F 44                       D
        .byte   $4F                             ; 6480 4F                       O
        .byte   $53                             ; 6481 53                       S
        jsr     L6967                           ; 6482 20 67 69                  gi
        ror     $65,x                           ; 6485 76 65                    ve
        .byte   $73                             ; 6487 73                       s
        jsr     L6F79                           ; 6488 20 79 6F                  yo
        adc     $20,x                           ; 648B 75 20                    u 
        adc     ($20,x)                         ; 648D 61 20                    a 
        eor     $4E2F,y                         ; 648F 59 2F 4E                 Y/N
        jsr     L706F                           ; 6492 20 6F 70                  op
        .byte   $74                             ; 6495 74                       t
        adc     #$6F                            ; 6496 69 6F                    io
	.byte	"n f"
        .byte   $6F                             ; 649B 6F                       o
        .byte   $72                             ; 649C 72                       r
        .byte   $9B                             ; 649D 9B                       .
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
        asl     $48,x                           ; 64B4 16 48                    .H
        adc     $6C                             ; 64B6 65 6C                    el
        bvs     L64DA                           ; 64B8 70 20                    p 
        .byte   $53                             ; 64BA 53                       S
        .byte   $63                             ; 64BB 63                       c
        .byte   $72                             ; 64BC 72                       r
        adc     $65                             ; 64BD 65 65                    ee
        ror     L2020                           ; 64BF 6E 20 20                 n  
        jsr     L2020                           ; 64C2 20 20 20                    
        jsr     L2031                           ; 64C5 20 31 20                  1 
        .byte   $6F                             ; 64C8 6F                       o
        ror     $20                             ; 64C9 66 20                    f 
        .byte   $33                             ; 64CB 33                       3
        .byte   $9B                             ; 64CC 9B                       .
        .byte   $9B                             ; 64CD 9B                       .
        and     ($2E),y                         ; 64CE 31 2E                    1.
        jsr     L7250                           ; 64D0 20 50 72                  Pr
        adc     $73                             ; 64D3 65 73                    es
        .byte   $73                             ; 64D5 73                       s
        jsr     L2041                           ; 64D6 20 41 20                  A 
        .byte   $74                             ; 64D9 74                       t
L64DA:  .byte   $6F                             ; 64DA 6F                       o
        .byte	" ac"
        .byte   $63                             ; 64DE 63                       c
        adc     $73                             ; 64DF 65 73                    es
        .byte   $73                             ; 64E1 73                       s
        jsr     L2061                           ; 64E2 20 61 20                  a 
        .byte   $44                             ; 64E5 44                       D
        .byte   $4F                             ; 64E6 4F                       O
        .byte   $53                             ; 64E7 53                       S
        .byte   $32                             ; 64E8 32                       2
        and     L6F66                           ; 64E9 2D 66 6F                 -fo
        .byte   $72                             ; 64EC 72                       r
        adc     L7461                           ; 64ED 6D 61 74                 mat
        .byte   $74                             ; 64F0 74                       t
        adc     $64                             ; 64F1 65 64                    ed
        .byte   $9B                             ; 64F3 9B                       .
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
        adc     L7461                           ; 652D 6D 61 74                 mat
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
        asl     $45,x                           ; 6577 16 45                    .E
        ror     L6574                           ; 6579 6E 74 65                 nte
        .byte   $72                             ; 657C 72                       r
        jsr     L6F6E                           ; 657D 20 6E 6F                  no
        rol     L6F20                           ; 6580 2E 20 6F                 . o
        ror     $9B                             ; 6583 66 9B                    f.
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
        asl     $57,x                           ; 65B2 16 57                    .W
        adc     #$6C                            ; 65B4 69 6C                    il
        .byte   $64                             ; 65B6 64                       d
        .byte   $63                             ; 65B7 63                       c
        adc     ($72,x)                         ; 65B8 61 72                    ar
        .byte   $64                             ; 65BA 64                       d
        .byte   $73                             ; 65BB 73                       s
        jsr     L7261                           ; 65BC 20 61 72                  ar
        adc     $20                             ; 65BF 65 20                    e 
        .byte   $4F                             ; 65C1 4F                       O
        .byte   $4B                             ; 65C2 4B                       K
        rol     $9B9B                           ; 65C3 2E 9B 9B                 ...
	.byte	"You cannot get a file index from the",$9B
        .byte   $44                             ; 65EB 44                       D
        .byte   $4F                             ; 65EC 4F                       O
        .byte   $53                             ; 65ED 53                       S
        jsr     L2032                           ; 65EE 20 32 20                  2 
        .byte   $64                             ; 65F1 64                       d
        adc     #$73                            ; 65F2 69 73                    is
        .byte   $6B                             ; 65F4 6B                       k
        rol     L2020                           ; 65F5 2E 20 20                 .  
        .byte   $42                             ; 65F8 42                       B
        adc     $74,x                           ; 65F9 75 74                    ut
        jsr     L6F79                           ; 65FB 20 79 6F                  yo
        adc     $20,x                           ; 65FE 75 20                    u 
        .byte   $63                             ; 6600 63                       c
        adc     ($6E,x)                         ; 6601 61 6E                    an
        jsr     L6573                           ; 6603 20 73 65                  se
        adc     $20                             ; 6606 65 20                    e 
        .byte   $74                             ; 6608 74                       t
        pla                                     ; 6609 68                       h
        adc     $20                             ; 660A 65 20                    e 
	.byte	"nam"
        adc     $9B                             ; 660F 65 9B                    e.
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
        asl     $45,x                           ; 66CF 16 45                    .E
        ror     L6574                           ; 66D1 6E 74 65                 nte
        .byte   $72                             ; 66D4 72                       r
        .byte   $9B                             ; 66D5 9B                       .
        jsr     L2020                           ; 66D6 20 20 20                    
        ror     $2E6F                           ; 66D9 6E 6F 2E                 no.
        jsr     L666F                           ; 66DC 20 6F 66                  of
        jsr     L7264                           ; 66DF 20 64 72                  dr
        adc     #$76                            ; 66E2 69 76                    iv
        adc     $20                             ; 66E4 65 20                    e 
        .byte   $77                             ; 66E6 77                       w
        adc     #$74                            ; 66E7 69 74                    it
        pla                                     ; 66E9 68                       h
        jsr     L4F44                           ; 66EA 20 44 4F                  DO
        .byte   $53                             ; 66ED 53                       S
        jsr     L2033                           ; 66EE 20 33 20                  3 
        .byte   $64                             ; 66F1 64                       d
        adc     #$73                            ; 66F2 69 73                    is
        .byte   $6B                             ; 66F4 6B                       k
        rol     $5920                           ; 66F5 2E 20 59                 . Y
        .byte   $6F                             ; 66F8 6F                       o
        adc     $9B,x                           ; 66F9 75 9B                    u.
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
        jsr     L0220                           ; 67A4 20 20 02                   .
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
        jsr     L2020                           ; 68CC 20 20 20                    
        .byte   $67                             ; 68CF 67                       g
        adc     #$76                            ; 68D0 69 76                    iv
        adc     $73                             ; 68D2 65 73                    es
        jsr     L6F79                           ; 68D4 20 79 6F                  yo
        adc     $20,x                           ; 68D7 75 20                    u 
L68D9:  adc     ($20,x)                         ; 68D9 61 20                    a 
        eor     $4E2F,y                         ; 68DB 59 2F 4E                 Y/N
        jsr     L706F                           ; 68DE 20 6F 70                  op
        .byte   $74                             ; 68E1 74                       t
        adc     #$6F                            ; 68E2 69 6F                    io
        ror     L6F20                           ; 68E4 6E 20 6F                 n o
        ror     L6520                           ; 68E7 6E 20 65                 n e
        adc     ($63,x)                         ; 68EA 61 63                    ac
        pla                                     ; 68EC 68                       h
        rol     $9B9B                           ; 68ED 2E 9B 9B                 ...
        .byte   $52                             ; 68F0 52                       R
        adc     $6D                             ; 68F1 65 6D                    em
        adc     $6D                             ; 68F3 65 6D                    em
        .byte   $62                             ; 68F5 62                       b
        adc     $72                             ; 68F6 65 72                    er
        .byte   $3A                             ; 68F8 3A                       :
        jsr     L7355                           ; 68F9 20 55 73                  Us
        adc     #$6E                            ; 68FC 69 6E                    in
        .byte   $67                             ; 68FE 67                       g
        jsr     L4552                           ; 68FF 20 52 45                  RE
        .byte   $54                             ; 6902 54                       T
        eor     $52,x                           ; 6903 55 52                    UR
        lsr     L6F20                           ; 6905 4E 20 6F                 N o
        ror     $5320                           ; 6908 6E 20 53                 n S
        .byte   $74                             ; 690B 74                       t
        adc     $70                             ; 690C 65 70                    ep
        jsr     L2037                           ; 690E 20 37 20                  7 
        .byte   $77                             ; 6911 77                       w
        adc     #$74                            ; 6912 69 74                    it
        pla                                     ; 6914 68                       h
        .byte   $9B                             ; 6915 9B                       .
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
        jsr     L2020                           ; 69BF 20 20 20                    
	.byte	"loc"
        adc     ($74,x)                         ; 69C5 61 74                    at
        adc     #$6F                            ; 69C7 69 6F                    io
        ror     L6F20                           ; 69C9 6E 20 6F                 n o
        ror     L6F74                           ; 69CC 6E 74 6F                 nto
        jsr     L2061                           ; 69CF 20 61 20                  a 
	.byte	"new"
        jsr     L6964                           ; 69D5 20 64 69                  di
        .byte   $73                             ; 69D8 73                       s
        .byte   $6B                             ; 69D9 6B                       k
        and     L742D                           ; 69DA 2D 2D 74                 --t
        .byte   $6F                             ; 69DD 6F                       o
        jsr     L616D                           ; 69DE 20 6D 61                  ma
        .byte   $6B                             ; 69E1 6B                       k
        adc     $9B                             ; 69E2 65 9B                    e.
        jsr     L2020                           ; 69E4 20 20 20                    
        adc     ($6E,x)                         ; 69E7 61 6E                    an
        jsr     L7865                           ; 69E9 20 65 78                  ex
        adc     ($63,x)                         ; 69EC 61 63                    ac
        .byte   $74                             ; 69EE 74                       t
        jsr     L6C22                           ; 69EF 20 22 6C                  "l
        .byte   $6F                             ; 69F2 6F                       o
        .byte   $67                             ; 69F3 67                       g
        adc     #$63                            ; 69F4 69 63                    ic
        adc     ($6C,x)                         ; 69F6 61 6C                    al
        .byte   $22                             ; 69F8 22                       "
	.byte	" du"
        bvs     L6A6A                           ; 69FC 70 6C                    pl
        adc     #$63                            ; 69FE 69 63                    ic
        adc     ($74,x)                         ; 6A00 61 74                    at
        adc     $20                             ; 6A02 65 20                    e 
        .byte   $64                             ; 6A04 64                       d
        adc     #$73                            ; 6A05 69 73                    is
        .byte   $6B                             ; 6A07 6B                       k
        rol     L209B                           ; 6A08 2E 9B 20                 .. 
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
        asl     $45,x                           ; 6A47 16 45                    .E
        ror     L6574                           ; 6A49 6E 74 65                 nte
        .byte   $72                             ; 6A4C 72                       r
        jsr     L6F6E                           ; 6A4D 20 6E 6F                  no
        rol     L6F20                           ; 6A50 2E 20 6F                 . o
        ror     $9B                             ; 6A53 66 9B                    f.
        jsr     L2020                           ; 6A55 20 20 20                    
        .byte   $64                             ; 6A58 64                       d
        .byte   $72                             ; 6A59 72                       r
        adc     #$76                            ; 6A5A 69 76                    iv
        adc     $20                             ; 6A5C 65 20                    e 
        .byte   $77                             ; 6A5E 77                       w
        adc     #$74                            ; 6A5F 69 74                    it
        pla                                     ; 6A61 68                       h
        jsr     L726F                           ; 6A62 20 6F 72                  or
        adc     #$67                            ; 6A65 69 67                    ig
        adc     #$6E                            ; 6A67 69 6E                    in
        .byte   $61                             ; 6A69 61                       a
L6A6A:  jmp     (L202E)                         ; 6A6A 6C 2E 20                 l. 

; ----------------------------------------------------------------------------
        .byte   $02                             ; 6A6D 02                       .
        .byte   $C3                             ; 6A6E C3                       .
        cmp     ($D5,x)                         ; 6A6F C1 D5                    ..
        .byte   $D4                             ; 6A71 D4                       .
        cmp     #$CF                            ; 6A72 C9 CF                    ..
        dec     $16BA                           ; 6A74 CE BA 16                 ...
        bvc     L6ACE                           ; 6A77 50 55                    PU
        .byte   $54                             ; 6A79 54                       T
        .byte   $9B                             ; 6A7A 9B                       .
        jsr     L2020                           ; 6A7B 20 20 20                    
        .byte   $57                             ; 6A7E 57                       W
        .byte   $52                             ; 6A7F 52                       R
        eor     #$54                            ; 6A80 49 54                    IT
        eor     $2D                             ; 6A82 45 2D                    E-
        bvc     L6AD8                           ; 6A84 50 52                    PR
        .byte   $4F                             ; 6A86 4F                       O
        .byte   $54                             ; 6A87 54                       T
        eor     $43                             ; 6A88 45 43                    EC
        .byte   $54                             ; 6A8A 54                       T
        jsr     L4154                           ; 6A8B 20 54 41                  TA
        .byte   $42                             ; 6A8E 42                       B
        jsr     L4E4F                           ; 6A8F 20 4F 4E                  ON
        jsr     L524F                           ; 6A92 20 4F 52                  OR
        eor     #$47                            ; 6A95 49 47                    IG
        eor     #$4E                            ; 6A97 49 4E                    IN
        eor     ($4C,x)                         ; 6A99 41 4C                    AL
        rol     $9B9B                           ; 6A9B 2E 9B 9B                 ...
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
        jsr     L2020                           ; 6AC1 20 20 20                    
        ror     $2E6F                           ; 6AC4 6E 6F 2E                 no.
        jsr     L666F                           ; 6AC7 20 6F 66                  of
        jsr     L7264                           ; 6ACA 20 64 72                  dr
        .byte   $69                             ; 6ACD 69                       i
L6ACE:  ror     $65,x                           ; 6ACE 76 65                    ve
        jsr     L6977                           ; 6AD0 20 77 69                  wi
        .byte   $74                             ; 6AD3 74                       t
        pla                                     ; 6AD4 68                       h
        jsr     L656E                           ; 6AD5 20 6E 65                  ne
L6AD8:  .byte   $77                             ; 6AD8 77                       w
        jsr     L6964                           ; 6AD9 20 64 69                  di
        .byte   $73                             ; 6ADC 73                       s
        .byte   $6B                             ; 6ADD 6B                       k
        rol     $5920                           ; 6ADE 2E 20 59                 . Y
        .byte   $6F                             ; 6AE1 6F                       o
        adc     $9B,x                           ; 6AE2 75 9B                    u.
        jsr     L2020                           ; 6AE4 20 20 20                    
        .byte   $63                             ; 6AE7 63                       c
        adc     ($6E,x)                         ; 6AE8 61 6E                    an
        jsr     L7375                           ; 6AEA 20 75 73                  us
        adc     $20                             ; 6AED 65 20                    e 
        .byte   $74                             ; 6AEF 74                       t
        pla                                     ; 6AF0 68                       h
        adc     $20                             ; 6AF1 65 20                    e 
        .byte   $73                             ; 6AF3 73                       s
        adc     ($6D,x)                         ; 6AF4 61 6D                    am
        adc     $20                             ; 6AF6 65 20                    e 
        .byte   $6F                             ; 6AF8 6F                       o
        .byte   $72                             ; 6AF9 72                       r
	.byte	" an"
        .byte   $6F                             ; 6AFD 6F                       o
        .byte   $74                             ; 6AFE 74                       t
        pla                                     ; 6AFF 68                       h
        adc     $72                             ; 6B00 65 72                    er
        jsr     L7264                           ; 6B02 20 64 72                  dr
        adc     #$76                            ; 6B05 69 76                    iv
        adc     $2E                             ; 6B07 65 2E                    e.
        .byte   $9B                             ; 6B09 9B                       .
        .byte   $9B                             ; 6B0A 9B                       .
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
        jsr     L0220                           ; 6B2E 20 20 02                   .
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
        asl     $48,x                           ; 6BAE 16 48                    .H
        adc     $6C                             ; 6BB0 65 6C                    el
        bvs     L6BD4                           ; 6BB2 70 20                    p 
        .byte   $53                             ; 6BB4 53                       S
        .byte   $63                             ; 6BB5 63                       c
        .byte   $72                             ; 6BB6 72                       r
        adc     $65                             ; 6BB7 65 65                    ee
        ror     L2020                           ; 6BB9 6E 20 20                 n  
        jsr     L2020                           ; 6BBC 20 20 20                    
        jsr     L2020                           ; 6BBF 20 20 20                    
        and     ($20),y                         ; 6BC2 31 20                    1 
        .byte   $6F                             ; 6BC4 6F                       o
        ror     $20                             ; 6BC5 66 20                    f 
        and     ($9B),y                         ; 6BC7 31 9B                    1.
        .byte   $9B                             ; 6BC9 9B                       .
        and     ($2E),y                         ; 6BCA 31 2E                    1.
        jsr     L7250                           ; 6BCC 20 50 72                  Pr
        adc     $73                             ; 6BCF 65 73                    es
        .byte   $73                             ; 6BD1 73                       s
        .byte   $20                             ; 6BD2 20                        
        .byte   $46                             ; 6BD3 46                       F
L6BD4:  jsr     L6F74                           ; 6BD4 20 74 6F                  to
        jsr     L6573                           ; 6BD7 20 73 65                  se
        .byte	"lect this function.",$9B
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
        asl     $50,x                           ; 6CBD 16 50                    .P
        .byte   $72                             ; 6CBF 72                       r
        adc     $73                             ; 6CC0 65 73                    es
        .byte   $73                             ; 6CC2 73                       s
        jsr     L3A45                           ; 6CC3 20 45 3A                  E:
        jsr     L726F                           ; 6CC6 20 6F 72                  or
        jsr     L4552                           ; 6CC9 20 52 45                  RE
        .byte   $54                             ; 6CCC 54                       T
        eor     $52,x                           ; 6CCD 55 52                    UR
        lsr     L209B                           ; 6CCF 4E 9B 20                 N. 
	.byte	"  t"
        .byte   $6F                             ; 6CD5 6F                       o
        jsr     L696C                           ; 6CD6 20 6C 69                  li
        .byte   $73                             ; 6CD9 73                       s
        .byte   $74                             ; 6CDA 74                       t
        jsr     L6E49                           ; 6CDB 20 49 6E                  In
        .byte   $64                             ; 6CDE 64                       d
        adc     $78                             ; 6CDF 65 78                    ex
        .byte	" on"
        .byte	" sc"
        .byte   $72                             ; 6CE7 72                       r
        adc     $65                             ; 6CE8 65 65                    ee
        ror     L202E                           ; 6CEA 6E 2E 20                 n. 
        jsr     L7250                           ; 6CED 20 50 72                  Pr
        adc     $73                             ; 6CF0 65 73                    es
        .byte   $73                             ; 6CF2 73                       s
        jsr     L3A50                           ; 6CF3 20 50 3A                  P:
        .byte   $9B                             ; 6CF6 9B                       .
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
        .byte   $20                             ; 6D64 20                        
L6D65:  jsr     $6C20                           ; 6D65 20 20 6C                   l
        adc     $66                             ; 6D68 65 66                    ef
        .byte   $74                             ; 6D6A 74                       t
        rol     $9B9B                           ; 6D6B 2E 9B 9B                 ...
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
        bvs     L6DDA                           ; 6DB8 70 20                    p 
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
        and     ($2E),y                         ; 6DD5 31 2E                    1.
        jsr     L7250                           ; 6DD7 20 50 72                  Pr
L6DDA:  adc     $73                             ; 6DDA 65 73                    es
        .byte   $73                             ; 6DDC 73                       s
        jsr     L2045                           ; 6DDD 20 45 20                  E 
        .byte   $74                             ; 6DE0 74                       t
        .byte   $6F                             ; 6DE1 6F                       o
        jsr     L6564                           ; 6DE2 20 64 65                  de
        jmp     (L7465)                         ; 6DE5 6C 65 74                 let

; ----------------------------------------------------------------------------
        adc     $20                             ; 6DE8 65 20                    e 
        .byte   $6F                             ; 6DEA 6F                       o
        ror     L2065                           ; 6DEB 6E 65 20                 ne 
        .byte   $6F                             ; 6DEE 6F                       o
        .byte   $72                             ; 6DEF 72                       r
        jsr     L6F6D                           ; 6DF0 20 6D 6F                  mo
        .byte   $72                             ; 6DF3 72                       r
        adc     $9B                             ; 6DF4 65 9B                    e.
        jsr     L2020                           ; 6DF6 20 20 20                    
        ror     $69                             ; 6DF9 66 69                    fi
        jmp     (L7365)                         ; 6DFB 6C 65 73                 les

; ----------------------------------------------------------------------------
        jsr     L7266                           ; 6DFE 20 66 72                  fr
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
L6E20:  jsr     L7265                           ; 6E20 20 65 72                  er
        adc     ($73,x)                         ; 6E23 61 73                    as
        adc     $20                             ; 6E25 65 20                    e 
        bvc     L6E9B                           ; 6E27 50 72                    Pr
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
        jmp     (L7465)                         ; 6E5A 6C 65 74                 let

; ----------------------------------------------------------------------------
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
        jsr     L2020                           ; 6E85 20 20 20                    
        eor     $52                             ; 6E88 45 52                    ER
        eor     ($53,x)                         ; 6E8A 41 53                    AS
        eor     $44                             ; 6E8C 45 44                    ED
        jsr     L4946                           ; 6E8E 20 46 49                  FI
        jmp     L5345                           ; 6E91 4C 45 53                 LES

; ----------------------------------------------------------------------------
        jsr     L4143                           ; 6E94 20 43 41                  CA
        lsr     L4F4E                           ; 6E97 4E 4E 4F                 NNO
        .byte   $54                             ; 6E9A 54                       T
L6E9B:  jsr     L4542                           ; 6E9B 20 42 45                  BE
        .byte   $20                             ; 6E9E 20                        
        .byte   $52                             ; 6E9F 52                       R
L6EA0:  eor     $43                             ; 6EA0 45 43                    EC
        .byte   $4F                             ; 6EA2 4F                       O
        lsr     $45,x                           ; 6EA3 56 45                    VE
        .byte   $52                             ; 6EA5 52                       R
        eor     $44                             ; 6EA6 45 44                    ED
        rol     $9B9B                           ; 6EA8 2E 9B 9B                 ...
        .byte   $33                             ; 6EAB 33                       3
        rol     $C502                           ; 6EAC 2E 02 C5                 ...
        .byte   $F2                             ; 6EAF F2                       .
        sbc     ($F3,x)                         ; 6EB0 E1 F3                    ..
        sbc     $A0                             ; 6EB2 E5 A0                    ..
        sbc     ($EC,x)                         ; 6EB4 E1 EC                    ..
        cpx     $F3A0                           ; 6EB6 EC A0 F3                 ...
        beq     L6EA0                           ; 6EB9 F0 E5                    ..
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
        jmp     (L7465)                         ; 6EE0 6C 65 74                 let

; ----------------------------------------------------------------------------
        adc     $20                             ; 6EE3 65 20                    e 
        adc     ($6C,x)                         ; 6EE5 61 6C                    al
	.byte	"l f"
        adc     #$6C                            ; 6EEA 69 6C                    il
        adc     $73                             ; 6EEC 65 73                    es
        jsr     L616E                           ; 6EEE 20 6E 61                  na
        adc     L6465                           ; 6EF1 6D 65 64                 med
        .byte   $9B                             ; 6EF4 9B                       .
        jsr     L2020                           ; 6EF5 20 20 20                    
        .byte   $62                             ; 6EF8 62                       b
	.byte	"y f"
        adc     #$6C                            ; 6EFC 69 6C                    il
        adc     $73                             ; 6EFE 65 73                    es
        bvs     L6F67                           ; 6F00 70 65                    pe
        .byte   $63                             ; 6F02 63                       c
        rol     L2020                           ; 6F03 2E 20 20                 .  
        bvc     L6F7A                           ; 6F06 50 72                    Pr
        adc     $73                             ; 6F08 65 73                    es
        .byte   $73                             ; 6F0A 73                       s
        jsr     L204E                           ; 6F0B 20 4E 20                  N 
        .byte   $6F                             ; 6F0E 6F                       o
        .byte   $72                             ; 6F0F 72                       r
        jsr     L4552                           ; 6F10 20 52 45                  RE
        .byte   $54                             ; 6F13 54                       T
        eor     $52,x                           ; 6F14 55 52                    UR
	.byte	"N t"
        .byte   $6F                             ; 6F19 6F                       o
        .byte   $9B                             ; 6F1A 9B                       .
        jsr     L2020                           ; 6F1B 20 20 20                    
        adc     $72                             ; 6F1E 65 72                    er
L6F20:  adc     ($73,x)                         ; 6F20 61 73                    as
        adc     $20                             ; 6F22 65 20                    e 
        ror     $69                             ; 6F24 66 69                    fi
        jmp     (L7365)                         ; 6F26 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" on"
        adc     $20                             ; 6F2C 65 20                    e 
        adc     ($74,x)                         ; 6F2E 61 74                    at
        jsr     L2061                           ; 6F30 20 61 20                  a 
        .byte   $74                             ; 6F33 74                       t
        adc     #$6D                            ; 6F34 69 6D                    im
        adc     $2E                             ; 6F36 65 2E                    e.
        .byte   $9B                             ; 6F38 9B                       .
        .byte   $9B                             ; 6F39 9B                       .
        .byte   $34                             ; 6F3A 34                       4
        rol     L4920                           ; 6F3B 2E 20 49                 . I
        ror     $20                             ; 6F3E 66 20                    f 
        adc     $72                             ; 6F40 65 72                    er
        adc     ($73,x)                         ; 6F42 61 73                    as
        adc     #$6E                            ; 6F44 69 6E                    in
        .byte   $67                             ; 6F46 67                       g
	.byte	" on"
        adc     $20                             ; 6F4A 65 20                    e 
        .byte   $62                             ; 6F4C 62                       b
        adc     L6F20,y                         ; 6F4D 79 20 6F                 y o
        ror     $2C65                           ; 6F50 6E 65 2C                 ne,
        .byte   $20                             ; 6F53 20                        
L6F54:  .byte   $44                             ; 6F54 44                       D
        .byte   $4F                             ; 6F55 4F                       O
        .byte   $53                             ; 6F56 53                       S
        jsr     L6967                           ; 6F57 20 67 69                  gi
        ror     $65,x                           ; 6F5A 76 65                    ve
        .byte   $73                             ; 6F5C 73                       s
        .byte   $9B                             ; 6F5D 9B                       .
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
        asl     $48,x                           ; 6FC7 16 48                    .H
        adc     $6C                             ; 6FC9 65 6C                    el
        bvs     L6FED                           ; 6FCB 70 20                    p 
        .byte   $53                             ; 6FCD 53                       S
        .byte   $63                             ; 6FCE 63                       c
        .byte   $72                             ; 6FCF 72                       r
        adc     $65                             ; 6FD0 65 65                    ee
        ror     L2020                           ; 6FD2 6E 20 20                 n  
        jsr     L2020                           ; 6FD5 20 20 20                    
        jsr     L2020                           ; 6FD8 20 20 20                    
        jsr     L2020                           ; 6FDB 20 20 20                    
        and     ($20),y                         ; 6FDE 31 20                    1 
        .byte   $6F                             ; 6FE0 6F                       o
        ror     $20                             ; 6FE1 66 20                    f 
        and     ($9B),y                         ; 6FE3 31 9B                    1.
        .byte   $9B                             ; 6FE5 9B                       .
        and     ($2E),y                         ; 6FE6 31 2E                    1.
        jsr     L7250                           ; 6FE8 20 50 72                  Pr
        adc     $73                             ; 6FEB 65 73                    es
L6FED:  .byte   $73                             ; 6FED 73                       s
        jsr     L2050                           ; 6FEE 20 50 20                  P 
        .byte   $74                             ; 6FF1 74                       t
        .byte   $6F                             ; 6FF2 6F                       o
        jsr     L7277                           ; 6FF3 20 77 72                  wr
        adc     #$74                            ; 6FF6 69 74                    it
        adc     $2D                             ; 6FF8 65 2D                    e-
        bvs     L706E                           ; 6FFA 70 72                    pr
        .byte   $6F                             ; 6FFC 6F                       o
        .byte   $74                             ; 6FFD 74                       t
        adc     $63                             ; 6FFE 65 63                    ec
        .byte   $74                             ; 7000 74                       t
        jsr     L6966                           ; 7001 20 66 69                  fi
        jmp     (L7365)                         ; 7004 6C 65 73                 les

; ----------------------------------------------------------------------------
        rol     L209B                           ; 7007 2E 9B 20                 .. 
        jsr     L5020                           ; 700A 20 20 50                   P
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
        jsr     L7277                           ; 7025 20 77 72                  wr
        adc     #$74                            ; 7028 69 74                    it
        .byte   $74                             ; 702A 74                       t
        adc     $6E                             ; 702B 65 6E                    en
        .byte   $9B                             ; 702D 9B                       .
        jsr     L2020                           ; 702E 20 20 20                    
        .byte   $74                             ; 7031 74                       t
        .byte   $6F                             ; 7032 6F                       o
        bit     L6520                           ; 7033 2C 20 65                 , e
        .byte   $72                             ; 7036 72                       r
        adc     ($73,x)                         ; 7037 61 73                    as
        adc     $64                             ; 7039 65 64                    ed
	.byte	", r"
        adc     $6E                             ; 703E 65 6E                    en
        adc     ($6D,x)                         ; 7040 61 6D                    am
        .byte   $65                             ; 7042 65                       e
L7043:  .byte   $64                             ; 7043 64                       d
        bit     L6F20                           ; 7044 2C 20 6F                 , o
        .byte   $72                             ; 7047 72                       r
        jsr     L7061                           ; 7048 20 61 70                  ap
        bvs     L70B2                           ; 704B 70 65                    pe
        ror     L6564                           ; 704D 6E 64 65                 nde
        .byte   $64                             ; 7050 64                       d
        rol     $9B9B                           ; 7051 2E 9B 9B                 ...
        .byte   $32                             ; 7054 32                       2
        rol     $C602                           ; 7055 2E 02 C6                 ...
        sbc     #$EC                            ; 7058 E9 EC                    ..
        sbc     $F3                             ; 705A E5 F3                    ..
        beq     L7043                           ; 705C F0 E5                    ..
        .byte   $E3                             ; 705E E3                       .
        .byte   $BF                             ; 705F BF                       .
        .byte   $16                             ; 7060 16                       .
L7061:  .byte   $53                             ; 7061 53                       S
	.byte	"pe"
        .byte   $63                             ; 7064 63                       c
        adc     #$66                            ; 7065 69 66                    if
	.byte	"y f"
        adc     #$6C                            ; 706A 69 6C                    il
        adc     $73                             ; 706C 65 73                    es
L706E:  .byte   $20                             ; 706E 20                        
L706F:  .byte   $74                             ; 706F 74                       t
        .byte   $6F                             ; 7070 6F                       o
        .byte   $9B                             ; 7071 9B                       .
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
        jsr     L2020                           ; 70BC 20 20 20                    
        bvc     L7133                           ; 70BF 50 72                    Pr
        adc     $73                             ; 70C1 65 73                    es
        .byte   $73                             ; 70C3 73                       s
        jsr     L2059                           ; 70C4 20 59 20                  Y 
        .byte   $74                             ; 70C7 74                       t
        .byte   $6F                             ; 70C8 6F                       o
	.byte	" pr"
        .byte   $6F                             ; 70CC 6F                       o
        .byte   $74                             ; 70CD 74                       t
        adc     $63                             ; 70CE 65 63                    ec
        .byte   $74                             ; 70D0 74                       t
        jsr     L6C61                           ; 70D1 20 61 6C                  al
	.byte	"l f"
        adc     #$6C                            ; 70D7 69 6C                    il
        adc     $73                             ; 70D9 65 73                    es
        jsr     L616E                           ; 70DB 20 6E 61                  na
        adc     L6465                           ; 70DE 6D 65 64                 med
        .byte   $9B                             ; 70E1 9B                       .
        jsr     L2020                           ; 70E2 20 20 20                    
        .byte   $62                             ; 70E5 62                       b
	.byte	"y f"
L70E9:  adc     #$6C                            ; 70E9 69 6C                    il
        adc     $73                             ; 70EB 65 73                    es
	.byte	"pe"
        .byte   $63                             ; 70EF 63                       c
        rol     L2020                           ; 70F0 2E 20 20                 .  
	.byte	"Pr"
        adc     $73                             ; 70F5 65 73                    es
        .byte   $73                             ; 70F7 73                       s
        jsr     L204E                           ; 70F8 20 4E 20                  N 
        .byte   $6F                             ; 70FB 6F                       o
        .byte   $72                             ; 70FC 72                       r
        jsr     L4552                           ; 70FD 20 52 45                  RE
        .byte   $54                             ; 7100 54                       T
        eor     $52,x                           ; 7101 55 52                    UR
	.byte	"N t"
        .byte   $6F                             ; 7106 6F                       o
        .byte   $9B                             ; 7107 9B                       .
        jsr     L2020                           ; 7108 20 20 20                    
        bvs     L717F                           ; 710B 70 72                    pr
        .byte   $6F                             ; 710D 6F                       o
        .byte   $74                             ; 710E 74                       t
        adc     $63                             ; 710F 65 63                    ec
        .byte   $74                             ; 7111 74                       t
        jsr     L6966                           ; 7112 20 66 69                  fi
        jmp     (L7365)                         ; 7115 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" on"
        adc     $20                             ; 711B 65 20                    e 
        adc     ($74,x)                         ; 711D 61 74                    at
        jsr     L2061                           ; 711F 20 61 20                  a 
        .byte   $74                             ; 7122 74                       t
        adc     #$6D                            ; 7123 69 6D                    im
        adc     $2E                             ; 7125 65 2E                    e.
        .byte   $9B                             ; 7127 9B                       .
        .byte   $9B                             ; 7128 9B                       .
        .byte   $34                             ; 7129 34                       4
        rol     L4920                           ; 712A 2E 20 49                 . I
        ror     $20                             ; 712D 66 20                    f 
        bvs     L71A3                           ; 712F 70 72                    pr
        .byte   $6F                             ; 7131 6F                       o
        .byte   $74                             ; 7132 74                       t
L7133:  adc     $63                             ; 7133 65 63                    ec
        .byte   $74                             ; 7135 74                       t
        adc     #$6E                            ; 7136 69 6E                    in
        .byte   $67                             ; 7138 67                       g
        jsr     L6966                           ; 7139 20 66 69                  fi
        jmp     (L7365)                         ; 713C 6C 65 73                 les

; ----------------------------------------------------------------------------
        .byte	" on"
        adc     $20                             ; 7142 65 20                    e 
        adc     ($74,x)                         ; 7144 61 74                    at
        jsr     L2061                           ; 7146 20 61 20                  a 
        .byte   $74                             ; 7149 74                       t
        adc     #$6D                            ; 714A 69 6D                    im
        adc     $2C                             ; 714C 65 2C                    e,
        .byte   $9B                             ; 714E 9B                       .
	.byte	"   DOS shows you each filename and",$9B
        jsr     L2020                           ; 7172 20 20 20                    
        .byte   $67                             ; 7175 67                       g
        adc     #$76                            ; 7176 69 76                    iv
        adc     $73                             ; 7178 65 73                    es
        jsr     L6F79                           ; 717A 20 79 6F                  yo
        adc     $20,x                           ; 717D 75 20                    u 
L717F:  adc     ($20,x)                         ; 717F 61 20                    a 
        eor     $4E2F,y                         ; 7181 59 2F 4E                 Y/N
        jsr     L706F                           ; 7184 20 6F 70                  op
        .byte   $74                             ; 7187 74                       t
        adc     #$6F                            ; 7188 69 6F                    io
        ror     L202E                           ; 718A 6E 2E 20                 n. 
        jsr     L6843                           ; 718D 20 43 68                  Ch
        adc     $63                             ; 7190 65 63                    ec
        .byte   $6B                             ; 7192 6B                       k
        .byte   $9B                             ; 7193 9B                       .
        jsr     L2020                           ; 7194 20 20 20                    
        lsr     $69                             ; 7197 46 69                    Fi
        jmp     (L2065)                         ; 7199 6C 65 20                 le 

; ----------------------------------------------------------------------------
        eor     #$6E                            ; 719C 49 6E                    In
        .byte   $64                             ; 719E 64                       d
        adc     $78                             ; 719F 65 78                    ex
        .byte   $2E                             ; 71A1 2E                       .
        .byte   $20                             ; 71A2 20                        
L71A3:  jsr     L7250                           ; 71A3 20 50 72                  Pr
        .byte   $6F                             ; 71A6 6F                       o
        .byte   $74                             ; 71A7 74                       t
        adc     $63                             ; 71A8 65 63                    ec
        .byte   $74                             ; 71AA 74                       t
        adc     $64                             ; 71AB 65 64                    ed
        jsr     L6966                           ; 71AD 20 66 69                  fi
        jmp     (L7365)                         ; 71B0 6C 65 73                 les

; ----------------------------------------------------------------------------
        jsr     L6168                           ; 71B3 20 68 61                  ha
        ror     $65,x                           ; 71B6 76 65                    ve
        .byte   $9B                             ; 71B8 9B                       .
	.byte	"   (*) in front of filename.",$9B
        .byte   $02                             ; 71D6 02                       .
        .byte   $D2                             ; 71D7 D2                       .
        sbc     $EE                             ; 71D8 E5 EE                    ..
        sbc     ($ED,x)                         ; 71DA E1 ED                    ..
        sbc     $16                             ; 71DC E5 16                    ..
        pha                                     ; 71DE 48                       H
        adc     $6C                             ; 71DF 65 6C                    el
	.byte	"p "
        .byte   $53                             ; 71E3 53                       S
        .byte   $63                             ; 71E4 63                       c
        .byte   $72                             ; 71E5 72                       r
        adc     $65                             ; 71E6 65 65                    ee
        ror     L2020                           ; 71E8 6E 20 20                 n  
        jsr     L2020                           ; 71EB 20 20 20                    
        jsr     L2020                           ; 71EE 20 20 20                    
        jsr     L2020                           ; 71F1 20 20 20                    
        jsr     L2031                           ; 71F4 20 31 20                  1 
        .byte   $6F                             ; 71F7 6F                       o
        ror     $20                             ; 71F8 66 20                    f 
        and     ($9B),y                         ; 71FA 31 9B                    1.
        .byte   $9B                             ; 71FC 9B                       .
	.byte	"1. Press R to change the filename or",$9B
        jsr     L2020                           ; 7222 20 20 20                    
        adc     $78                             ; 7225 65 78                    ex
        .byte   $74                             ; 7227 74                       t
        adc     $6E                             ; 7228 65 6E                    en
        .byte   $64                             ; 722A 64                       d
        adc     $72                             ; 722B 65 72                    er
        jsr     L666F                           ; 722D 20 6F 66                  of
        .byte	" on"
        adc     $20                             ; 7233 65 20                    e 
        .byte   $6F                             ; 7235 6F                       o
        .byte   $72                             ; 7236 72                       r
        .byte   $20                             ; 7237 20                        
L7238:  adc     L726F                           ; 7238 6D 6F 72                 mor
        adc     $20                             ; 723B 65 20                    e 
        ror     $69                             ; 723D 66 69                    fi
        jmp     (L7365)                         ; 723F 6C 65 73                 les

; ----------------------------------------------------------------------------
        rol     $9B9B                           ; 7242 2E 9B 9B                 ...
        .byte   $32                             ; 7245 32                       2
        rol     $CF02                           ; 7246 2E 02 CF                 ...
        cpx     $A0E4                           ; 7249 EC E4 A0                 ...
        dec     $E9                             ; 724C C6 E9                    ..
        .byte   $EC                             ; 724E EC                       .
        .byte   $E5                             ; 724F E5                       .
L7250:  .byte   $F3                             ; 7250 F3                       .
        beq     L7238                           ; 7251 F0 E5                    ..
        .byte   $E3                             ; 7253 E3                       .
        .byte   $BF                             ; 7254 BF                       .
        asl     $45,x                           ; 7255 16 45                    .E
        ror     L6574                           ; 7257 6E 74 65                 nte
        .byte   $72                             ; 725A 72                       r
        jsr     L6966                           ; 725B 20 66 69                  fi
        jmp     (L7365)                         ; 725E 6C 65 73                 les

; ----------------------------------------------------------------------------
L7261:  .byte   $70                             ; 7261 70                       p
L7262:  .byte   $65                             ; 7262 65                       e
L7263:  .byte   $63                             ; 7263 63                       c
L7264:  .byte   $20                             ; 7264 20                        
L7265:  .byte   $74                             ; 7265 74                       t
L7266:  .byte   $6F                             ; 7266 6F                       o
        jsr     L6562                           ; 7267 20 62 65                  be
        .byte   $9B                             ; 726A 9B                       .
        jsr     L2020                           ; 726B 20 20 20                    
        .byte   $72                             ; 726E 72                       r
L726F:  .byte   $65                             ; 726F 65                       e
	.byte	"nam"
        .byte   $65                             ; 7273 65                       e
L7274:  .byte   $64                             ; 7274 64                       d
        .byte   $2E                             ; 7275 2E                       .
        .byte   $20                             ; 7276 20                        
L7277:  .byte   $57                             ; 7277 57                       W
        adc     #$6C                            ; 7278 69 6C                    il
        .byte   $64                             ; 727A 64                       d
        .byte   $63                             ; 727B 63                       c
        adc     ($72,x)                         ; 727C 61 72                    ar
        .byte   $64                             ; 727E 64                       d
        .byte   $73                             ; 727F 73                       s
        .byte   $20                             ; 7280 20                        
        .byte   $63                             ; 7281 63                       c
L7282:  adc     ($6E,x)                         ; 7282 61 6E                    an
        jsr     L6562                           ; 7284 20 62 65                  be
        jsr     L7375                           ; 7287 20 75 73                  us
        adc     $64                             ; 728A 65 64                    ed
        rol     $9B9B                           ; 728C 2E 9B 9B                 ...
        .byte   $33                             ; 728F 33                       3
        rol     $CE02                           ; 7290 2E 02 CE                 ...
        sbc     $F7                             ; 7293 E5 F7                    ..
        ldy     #$C6                            ; 7295 A0 C6                    ..
        sbc     #$EC                            ; 7297 E9 EC                    ..
        sbc     $F3                             ; 7299 E5 F3                    ..
        beq     L7282                           ; 729B F0 E5                    ..
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
        bvs     L73AF                           ; 7348 70 65                    pe
        .byte   $63                             ; 734A 63                       c
        rol     L2020                           ; 734B 2E 20 20                 .  
        bvc     L73C2                           ; 734E 50 72                    Pr
        adc     $73                             ; 7350 65 73                    es
        .byte   $73                             ; 7352 73                       s
        .byte   $20                             ; 7353 20                        
        .byte   $4E                             ; 7354 4E                       N
L7355:  jsr     L726F                           ; 7355 20 6F 72                  or
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
        jsr     L2020                           ; 739F 20 20 20                    
        .byte   $67                             ; 73A2 67                       g
        adc     #$76                            ; 73A3 69 76                    iv
        adc     $73                             ; 73A5 65 73                    es
        jsr     L6F79                           ; 73A7 20 79 6F                  yo
        adc     $20,x                           ; 73AA 75 20                    u 
        adc     ($20,x)                         ; 73AC 61 20                    a 
L73AE:  .byte   $59                             ; 73AE 59                       Y
L73AF:  .byte   $2F                             ; 73AF 2F                       /
        lsr     L6F20                           ; 73B0 4E 20 6F                 N o
        bvs     L7429                           ; 73B3 70 74                    pt
        adc     #$6F                            ; 73B5 69 6F                    io
        .byte   $6E                             ; 73B7 6E                       n
        .byte   $20                             ; 73B8 20                        
L73B9:  .byte   $6F                             ; 73B9 6F                       o
        ror     L6520                           ; 73BA 6E 20 65                 n e
        adc     ($63,x)                         ; 73BD 61 63                    ac
        pla                                     ; 73BF 68                       h
        .byte   $2E                             ; 73C0 2E                       .
        .byte   $9B                             ; 73C1 9B                       .
L73C2:  .byte   $02                             ; 73C2 02                       .
        cmp     $EE,x                           ; 73C3 D5 EE                    ..
        beq     L73B9                           ; 73C5 F0 F2                    ..
        .byte   $EF                             ; 73C7 EF                       .
        .byte   $F4                             ; 73C8 F4                       .
        sbc     $E3                             ; 73C9 E5 E3                    ..
        .byte   $F4                             ; 73CB F4                       .
        asl     $48,x                           ; 73CC 16 48                    .H
        adc     $6C                             ; 73CE 65 6C                    el
        bvs     L73F2                           ; 73D0 70 20                    p 
        .byte   $53                             ; 73D2 53                       S
        .byte   $63                             ; 73D3 63                       c
        .byte   $72                             ; 73D4 72                       r
        adc     $65                             ; 73D5 65 65                    ee
        ror     L2020                           ; 73D7 6E 20 20                 n  
        jsr     L2020                           ; 73DA 20 20 20                    
        jsr     L2020                           ; 73DD 20 20 20                    
        jsr     L2031                           ; 73E0 20 31 20                  1 
        .byte   $6F                             ; 73E3 6F                       o
        ror     $20                             ; 73E4 66 20                    f 
        and     ($9B),y                         ; 73E6 31 9B                    1.
        .byte   $9B                             ; 73E8 9B                       .
        and     ($2E),y                         ; 73E9 31 2E                    1.
        jsr     L7250                           ; 73EB 20 50 72                  Pr
        adc     $73                             ; 73EE 65 73                    es
        .byte   $73                             ; 73F0 73                       s
        .byte   $20                             ; 73F1 20                        
L73F2:  eor     $20,x                           ; 73F2 55 20                    U 
        .byte   $74                             ; 73F4 74                       t
        .byte   $6F                             ; 73F5 6F                       o
        jsr     L6573                           ; 73F6 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 73FC 74                       t
	.byte	" th"
        adc     #$73                            ; 7400 69 73                    is
	.byte	" fu"
        ror     L7463                           ; 7405 6E 63 74                 nct
        adc     #$6F                            ; 7408 69 6F                    io
        ror     $9B2E                           ; 740A 6E 2E 9B                 n..
        jsr     L2020                           ; 740D 20 20 20                    
        eor     $4E,x                           ; 7410 55 4E                    UN
        bvc     L7466                           ; 7412 50 52                    PR
        .byte   $4F                             ; 7414 4F                       O
        .byte   $54                             ; 7415 54                       T
        eor     $43                             ; 7416 45 43                    EC
        .byte   $54                             ; 7418 54                       T
        jsr     L7265                           ; 7419 20 65 72                  er
        adc     ($73,x)                         ; 741C 61 73                    as
        adc     $73                             ; 741E 65 73                    es
	.byte	" th"
        adc     $20                             ; 7423 65 20                    e 
        bvs     L7499                           ; 7425 70 72                    pr
        .byte   $6F                             ; 7427 6F                       o
        .byte   $74                             ; 7428 74                       t
L7429:  adc     $63                             ; 7429 65 63                    ec
        .byte   $74                             ; 742B 74                       t
        .byte   $65                             ; 742C 65                       e
L742D:  .byte   $64                             ; 742D 64                       d
        .byte   $9B                             ; 742E 9B                       .
        jsr     L2020                           ; 742F 20 20 20                    
        .byte   $73                             ; 7432 73                       s
        .byte   $74                             ; 7433 74                       t
        adc     ($74,x)                         ; 7434 61 74                    at
        adc     $73,x                           ; 7436 75 73                    us
        jsr     L666F                           ; 7438 20 6F 66                  of
        .byte	" on"
        .byte   $65                             ; 743E 65                       e
L743F:  jsr     L726F                           ; 743F 20 6F 72                  or
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
        asl     $53,x                           ; 745C 16 53                    .S
        bvs     L74C5                           ; 745E 70 65                    pe
        .byte   $63                             ; 7460 63                       c
L7461:  adc     #$66                            ; 7461 69 66                    if
L7463:  .byte   $79                             ; 7463 79                       y
        .byte   $20                             ; 7464 20                        
L7465:  .byte   $66                             ; 7465 66                       f
L7466:  adc     #$6C                            ; 7466 69 6C                    il
        .byte   $65                             ; 7468 65                       e
L7469:  .byte   $73                             ; 7469 73                       s
        jsr     L6F74                           ; 746A 20 74 6F                  to
        .byte   $20                             ; 746D 20                        
        .byte   $75                             ; 746E 75                       u
L746F:  .byte   $6E                             ; 746F 6E                       n
L7470:  .byte	"pr"
        .byte   $6F                             ; 7472 6F                       o
L7473:  and     L209B                           ; 7473 2D 9B 20                 -. 
	.byte	"  t"
        adc     $63                             ; 7479 65 63                    ec
        .byte   $74                             ; 747B 74                       t
        rol     L2020                           ; 747C 2E 20 20                 .  
        .byte   $57                             ; 747F 57                       W
        adc     #$6C                            ; 7480 69 6C                    il
        .byte   $64                             ; 7482 64                       d
        .byte   $63                             ; 7483 63                       c
        adc     ($72,x)                         ; 7484 61 72                    ar
        .byte   $64                             ; 7486 64                       d
        .byte   $73                             ; 7487 73                       s
        jsr     L6163                           ; 7488 20 63 61                  ca
        ror     L6220                           ; 748B 6E 20 62                 n b
        adc     $20                             ; 748E 65 20                    e 
L7490:  adc     $73,x                           ; 7490 75 73                    us
        adc     $64                             ; 7492 65 64                    ed
        rol     $9B9B                           ; 7494 2E 9B 9B                 ...
        .byte   $33                             ; 7497 33                       3
        .byte   $2E                             ; 7498 2E                       .
L7499:  .byte   $02                             ; 7499 02                       .
        cmp     $EE,x                           ; 749A D5 EE                    ..
        beq     L7490                           ; 749C F0 F2                    ..
        .byte   $EF                             ; 749E EF                       .
        .byte   $F4                             ; 749F F4                       .
        sbc     $E3                             ; 74A0 E5 E3                    ..
        .byte   $F4                             ; 74A2 F4                       .
        ldy     #$E1                            ; 74A3 A0 E1                    ..
        cpx     $A0EC                           ; 74A5 EC EC A0                 ...
        .byte   $F3                             ; 74A8 F3                       .
        beq     L7490                           ; 74A9 F0 E5                    ..
        .byte   $E3                             ; 74AB E3                       .
        sbc     #$E6                            ; 74AC E9 E6                    ..
        sbc     #$E5                            ; 74AE E9 E5                    ..
        cpx     $A0                             ; 74B0 E4 A0                    ..
        inc     $E9                             ; 74B2 E6 E9                    ..
        cpx     $F3E5                           ; 74B4 EC E5 F3                 ...
        asl     $9B,x                           ; 74B7 16 9B                    ..
        jsr     L0220                           ; 74B9 20 20 02                   .
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
        .byte	" on"
        .byte   $65                             ; 7544 65                       e
L7545:  jsr     L7461                           ; 7545 20 61 74                  at
        jsr     L9B61                           ; 7548 20 61 9B                  a.
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
        jsr     L7266                           ; 75CA 20 66 72                  fr
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
        jsr     L7277                           ; 7612 20 77 72                  wr
        adc     #$74                            ; 7615 69 74                    it
        adc     $20                             ; 7617 65 20                    e 
        adc     ($20,x)                         ; 7619 61 20                    a 
        .byte   $73                             ; 761B 73                       s
L761C:  adc     $6C                             ; 761C 65 6C                    el
        adc     $63                             ; 761E 65 63                    ec
        .byte   $74                             ; 7620 74                       t
        adc     $64                             ; 7621 65 64                    ed
        jsr     L656D                           ; 7623 20 6D 65                  me
        adc     L726F                           ; 7626 6D 6F 72                 mor
        adc     L209B,y                         ; 7629 79 9B 20                 y. 
        jsr     L6120                           ; 762C 20 20 61                   a
        .byte   $72                             ; 762F 72                       r
        adc     $61                             ; 7630 65 61                    ea
        .byte	" on"
        .byte   $74                             ; 7635 74                       t
        .byte   $6F                             ; 7636 6F                       o
        jsr     L6964                           ; 7637 20 64 69                  di
        .byte   $73                             ; 763A 73                       s
        .byte   $6B                             ; 763B 6B                       k
        rol     L0220                           ; 763C 2E 20 02                 . .
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

; ----------------------------------------------------------------------------
        jsr     L2020                           ; 764F 20 20 20                    
        .byte   $77                             ; 7652 77                       w
        adc     #$74                            ; 7653 69 74                    it
        pla                                     ; 7655 68                       h
        jsr     L6962                           ; 7656 20 62 69                  bi
        ror     L7261                           ; 7659 6E 61 72                 nar
	.byte	"y f"
L765F:  .byte   $6F                             ; 765F 6F                       o
        .byte   $72                             ; 7660 72                       r
        adc     L7461                           ; 7661 6D 61 74                 mat
        .byte   $20                             ; 7664 20                        
L7665:  .byte	"pr"
        .byte   $6F                             ; 7667 6F                       o
        .byte   $67                             ; 7668 67                       g
        .byte   $72                             ; 7669 72                       r
        adc     ($6D,x)                         ; 766A 61 6D                    am
        .byte   $73                             ; 766C 73                       s
        rol     $9B9B                           ; 766D 2E 9B 9B                 ...
        .byte   $32                             ; 7670 32                       2
        rol     $C602                           ; 7671 2E 02 C6                 ...
        sbc     #$EC                            ; 7674 E9 EC                    ..
        sbc     $F3                             ; 7676 E5 F3                    ..
        beq     L765F                           ; 7678 F0 E5                    ..
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
        rol     L209B                           ; 7694 2E 9B 20                 .. 
        jsr     L5720                           ; 7697 20 20 57                   W
        adc     #$6C                            ; 769A 69 6C                    il
        .byte   $64                             ; 769C 64                       d
        .byte   $63                             ; 769D 63                       c
        adc     ($72,x)                         ; 769E 61 72                    ar
        .byte   $64                             ; 76A0 64                       d
        .byte   $73                             ; 76A1 73                       s
        jsr     L7261                           ; 76A2 20 61 72                  ar
        adc     $20                             ; 76A5 65 20                    e 
        adc     #$6E                            ; 76A7 69 6E                    in
        ror     $61,x                           ; 76A9 76 61                    va
        jmp     (L6469)                         ; 76AB 6C 69 64                 lid

; ----------------------------------------------------------------------------
	.byte	" in"
        bvs     L7728                           ; 76B1 70 75                    pu
        .byte   $74                             ; 76B3 74                       t
        rol     $9B9B                           ; 76B4 2E 9B 9B                 ...
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
        asl     $45,x                           ; 76CF 16 45                    .E
        ror     L6574                           ; 76D1 6E 74 65                 nte
        .byte   $72                             ; 76D4 72                       r
        jsr     L7473                           ; 76D5 20 73 74                  st
        adc     ($72,x)                         ; 76D8 61 72                    ar
        .byte   $74                             ; 76DA 74                       t
        .byte   $9B                             ; 76DB 9B                       .
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
	.byte	"Help Screen    1 of 1",$9B
        .byte   $9B                             ; 77C7 9B                       .
        and     ($2E),y                         ; 77C8 31 2E                    1.
        jsr     L7250                           ; 77CA 20 50 72                  Pr
        adc     $73                             ; 77CD 65 73                    es
        .byte   $73                             ; 77CF 73                       s
        jsr     L2047                           ; 77D0 20 47 20                  G 
        .byte   $74                             ; 77D3 74                       t
        .byte   $6F                             ; 77D4 6F                       o
        .byte	" en"
        .byte   $74                             ; 77D8 74                       t
        adc     $72                             ; 77D9 65 72                    er
        jsr     L5552                           ; 77DB 20 52 55                  RU
        lsr     L6120                           ; 77DE 4E 20 61                 N a
        .byte   $64                             ; 77E1 64                       d
        .byte   $64                             ; 77E2 64                       d
        .byte   $72                             ; 77E3 72                       r
        jsr     L6F66                           ; 77E4 20 66 6F                  fo
        .byte   $72                             ; 77E7 72                       r
        .byte   $9B                             ; 77E8 9B                       .
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
        jsr     L6120                           ; 787B 20 20 61                   a
        .byte   $64                             ; 787E 64                       d
        .byte   $64                             ; 787F 64                       d
        .byte   $72                             ; 7880 72                       r
        rol     $9B20                           ; 7881 2E 20 9B                 . .
        .byte   $9B                             ; 7884 9B                       .
        jsr     L0220                           ; 7885 20 20 02                   .
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
        adc     L6D65                           ; 7938 6D 65 6D                 mem
        .byte   $6F                             ; 793B 6F                       o
        .byte   $72                             ; 793C 72                       r
        adc     L6120,y                         ; 793D 79 20 61                 y a
        .byte   $72                             ; 7940 72                       r
        adc     $61                             ; 7941 65 61                    ea
        jsr     L2061                           ; 7943 20 61 20                  a 
        bvs     L79BA                           ; 7946 70 72                    pr
        adc     $76                             ; 7948 65 76                    ev
        adc     #$6F                            ; 794A 69 6F                    io
        adc     $73,x                           ; 794C 75 73                    us
        jmp     (L2079)                         ; 794E 6C 79 20                 ly 

; ----------------------------------------------------------------------------
        .byte   $73                             ; 7951 73                       s
        adc     ($76,x)                         ; 7952 61 76                    av
        adc     $64                             ; 7954 65 64                    ed
        .byte   $9B                             ; 7956 9B                       .
        jsr     L2020                           ; 7957 20 20 20                    
        adc     ($73,x)                         ; 795A 61 73                    as
        .byte   $73                             ; 795C 73                       s
        adc     $6D                             ; 795D 65 6D                    em
        .byte   $62                             ; 795F 62                       b
        .byte   $6C                             ; 7960 6C                       l
        .byte   $79                             ; 7961 79                       y
L7962:  jsr     L616C                           ; 7962 20 6C 61                  la
	.byte	"ngu"
        adc     ($67,x)                         ; 7968 61 67                    ag
        adc     $20                             ; 796A 65 20                    e 
L796C:  bvs     L79E0                           ; 796C 70 72                    pr
        .byte   $6F                             ; 796E 6F                       o
        .byte   $67                             ; 796F 67                       g
        .byte   $72                             ; 7970 72                       r
        adc     ($6D,x)                         ; 7971 61 6D                    am
        rol     $9B9B                           ; 7973 2E 9B 9B                 ...
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

; ----------------------------------------------------------------------------
        jsr     L2020                           ; 799A 20 20 20                    
        .byte   $74                             ; 799D 74                       t
        .byte   $6F                             ; 799E 6F                       o
        jsr     L6562                           ; 799F 20 62 65                  be
        jsr     L6F6C                           ; 79A2 20 6C 6F                  lo
        adc     ($64,x)                         ; 79A5 61 64                    ad
        adc     $64                             ; 79A7 65 64                    ed
        rol     L2020                           ; 79A9 2E 20 20                 .  
        .byte   $57                             ; 79AC 57                       W
        adc     #$6C                            ; 79AD 69 6C                    il
        .byte   $64                             ; 79AF 64                       d
        .byte   $63                             ; 79B0 63                       c
        adc     ($72,x)                         ; 79B1 61 72                    ar
        .byte   $64                             ; 79B3 64                       d
        .byte   $73                             ; 79B4 73                       s
        jsr     L7261                           ; 79B5 20 61 72                  ar
        adc     $20                             ; 79B8 65 20                    e 
L79BA:  .byte   $4F                             ; 79BA 4F                       O
        .byte   $4B                             ; 79BB 4B                       K
        rol     L209B                           ; 79BC 2E 9B 20                 .. 
        jsr     L4920                           ; 79BF 20 20 49                   I
        ror     $20                             ; 79C2 66 20                    f 
        .byte   $77                             ; 79C4 77                       w
        adc     #$6C                            ; 79C5 69 6C                    il
        .byte   $64                             ; 79C7 64                       d
        .byte   $63                             ; 79C8 63                       c
        adc     ($72,x)                         ; 79C9 61 72                    ar
        .byte   $64                             ; 79CB 64                       d
        .byte   $73                             ; 79CC 73                       s
        jsr     L7261                           ; 79CD 20 61 72                  ar
        adc     $20                             ; 79D0 65 20                    e 
        adc     $73,x                           ; 79D2 75 73                    us
        adc     $64                             ; 79D4 65 64                    ed
        bit     L4420                           ; 79D6 2C 20 44                 , D
        .byte   $4F                             ; 79D9 4F                       O
        .byte   $53                             ; 79DA 53                       S
	.byte	" sh"
        .byte   $6F                             ; 79DE 6F                       o
        .byte   $77                             ; 79DF 77                       w
L79E0:  .byte   $73                             ; 79E0 73                       s
        .byte   $9B                             ; 79E1 9B                       .
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
        jsr     L2020                           ; 7A64 20 20 20                    
        bvc     L7ADB                           ; 7A67 50 72                    Pr
L7A69:  adc     $73                             ; 7A69 65 73                    es
        .byte   $73                             ; 7A6B 73                       s
        jsr     L2059                           ; 7A6C 20 59 20                  Y 
        .byte   $74                             ; 7A6F 74                       t
        .byte   $6F                             ; 7A70 6F                       o
        jsr     L7572                           ; 7A71 20 72 75                  ru
	.byte	"n t"
        pla                                     ; 7A77 68                       h
        adc     $20                             ; 7A78 65 20                    e 
        ror     $69                             ; 7A7A 66 69                    fi
        jmp     (L2E65)                         ; 7A7C 6C 65 2E                 le.

; ----------------------------------------------------------------------------
        jsr     L5020                           ; 7A7F 20 20 50                   P
        .byte   $72                             ; 7A82 72                       r
        adc     $73                             ; 7A83 65 73                    es
        .byte   $73                             ; 7A85 73                       s
        jsr     L9B4E                           ; 7A86 20 4E 9B                  N.
        jsr     L2020                           ; 7A89 20 20 20                    
        .byte   $6F                             ; 7A8C 6F                       o
        .byte   $72                             ; 7A8D 72                       r
        jsr     L4552                           ; 7A8E 20 52 45                  RE
        .byte   $54                             ; 7A91 54                       T
        eor     $52,x                           ; 7A92 55 52                    UR
        lsr     L6920                           ; 7A94 4E 20 69                 N i
        ror     $20                             ; 7A97 66 20                    f 
        ror     L746F                           ; 7A99 6E 6F 74                 not
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
        asl     $48,x                           ; 7ABB 16 48                    .H
        adc     $6C                             ; 7ABD 65 6C                    el
        bvs     L7AE1                           ; 7ABF 70 20                    p 
        .byte   $53                             ; 7AC1 53                       S
        .byte   $63                             ; 7AC2 63                       c
        .byte   $72                             ; 7AC3 72                       r
        adc     $65                             ; 7AC4 65 65                    ee
        ror     L2020                           ; 7AC6 6E 20 20                 n  
        jsr     L2020                           ; 7AC9 20 20 20                    
        jsr     L2031                           ; 7ACC 20 31 20                  1 
        .byte   $6F                             ; 7ACF 6F                       o
        ror     $20                             ; 7AD0 66 20                    f 
        and     ($9B),y                         ; 7AD2 31 9B                    1.
        .byte   $9B                             ; 7AD4 9B                       .
        and     ($2E),y                         ; 7AD5 31 2E                    1.
        jsr     L7250                           ; 7AD7 20 50 72                  Pr
        .byte   $65                             ; 7ADA 65                       e
L7ADB:  .byte   $73                             ; 7ADB 73                       s
        .byte   $73                             ; 7ADC 73                       s
        jsr     L2058                           ; 7ADD 20 58 20                  X 
        .byte   $74                             ; 7AE0 74                       t
L7AE1:  .byte   $6F                             ; 7AE1 6F                       o
        jsr     L6573                           ; 7AE2 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 7AE8 74                       t
        jsr     L2061                           ; 7AE9 20 61 20                  a 
	.byte	"pr"
        .byte   $6F                             ; 7AEE 6F                       o
        .byte   $67                             ; 7AEF 67                       g
        .byte   $72                             ; 7AF0 72                       r
        adc     ($6D,x)                         ; 7AF1 61 6D                    am
        jsr     L6F79                           ; 7AF3 20 79 6F                  yo
        adc     $9B,x                           ; 7AF6 75 9B                    u.
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
        jsr     L2020                           ; 7B1D 20 20 20                    
        adc     ($6E,x)                         ; 7B20 61 6E                    an
        .byte   $64                             ; 7B22 64                       d
        jsr     L7473                           ; 7B23 20 73 74                  st
        .byte   $6F                             ; 7B26 6F                       o
        .byte   $72                             ; 7B27 72                       r
        adc     $64                             ; 7B28 65 64                    ed
        jsr     L6977                           ; 7B2A 20 77 69                  wi
        .byte   $74                             ; 7B2D 74                       t
        pla                                     ; 7B2E 68                       h
        jsr     L4153                           ; 7B2F 20 53 41                  SA
        lsr     $45,x                           ; 7B32 56 45                    VE
        rol     $9B9B                           ; 7B34 2E 9B 9B                 ...
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
        jsr     L6128                           ; 7B53 20 28 61                  (a
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
        lsr     L6120                           ; 7B92 4E 20 61                 N a
        ror     $2064                           ; 7B95 6E 64 20                 nd 
        jmp     (L7465)                         ; 7B98 6C 65 74                 let

; ----------------------------------------------------------------------------
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
        adc     L7465                           ; 7BD4 6D 65 74                 met
        pla                                     ; 7BD7 68                       h
        .byte   $6F                             ; 7BD8 6F                       o
        .byte   $64                             ; 7BD9 64                       d
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
        pha                                     ; 7C6A 48                       H
        adc     $6C                             ; 7C6B 65 6C                    el
        bvs     L7C8F                           ; 7C6D 70 20                    p 
        .byte   $53                             ; 7C6F 53                       S
        .byte   $63                             ; 7C70 63                       c
        .byte   $72                             ; 7C71 72                       r
        adc     $65                             ; 7C72 65 65                    ee
        ror     L2020                           ; 7C74 6E 20 20                 n  
        jsr     L2020                           ; 7C77 20 20 20                    
        jsr     L2020                           ; 7C7A 20 20 20                    
        jsr     L3120                           ; 7C7D 20 20 31                   1
        jsr     L666F                           ; 7C80 20 6F 66                  of
        jsr     L9B31                           ; 7C83 20 31 9B                  1.
        .byte   $9B                             ; 7C86 9B                       .
        and     ($2E),y                         ; 7C87 31 2E                    1.
        jsr     L7250                           ; 7C89 20 50 72                  Pr
        adc     $73                             ; 7C8C 65 73                    es
        .byte   $73                             ; 7C8E 73                       s
L7C8F:  jsr     L204D                           ; 7C8F 20 4D 20                  M 
        .byte   $74                             ; 7C92 74                       t
        .byte   $6F                             ; 7C93 6F                       o
        jsr     L6573                           ; 7C94 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 7C9A 74                       t
        jsr     L454D                           ; 7C9B 20 4D 45                  ME
        eor     $5320                           ; 7C9E 4D 20 53                 M S
        eor     ($56,x)                         ; 7CA1 41 56                    AV
        eor     $20                             ; 7CA3 45 20                    E 
        .byte   $6F                             ; 7CA5 6F                       o
	.byte	"pt"
        adc     #$6F                            ; 7CA8 69 6F                    io
        ror     $9B2E                           ; 7CAA 6E 2E 9B                 n..
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
        jsr     L2020                           ; 7CD1 20 20 20                    
        adc     $73,x                           ; 7CD4 75 73                    us
        adc     $20                             ; 7CD6 65 20                    e 
        adc     ($20,x)                         ; 7CD8 61 20                    a 
        bvs     L7D3D                           ; 7CDA 70 61                    pa
        .byte   $72                             ; 7CDC 72                       r
        .byte   $74                             ; 7CDD 74                       t
        jsr     L666F                           ; 7CDE 20 6F 66                  of
        jsr     L656D                           ; 7CE1 20 6D 65                  me
        adc     L726F                           ; 7CE4 6D 6F 72                 mor
	.byte	"y u"
        .byte   $73                             ; 7CEA 73                       s
        adc     $61,x                           ; 7CEB 75 61                    ua
        jmp     (L796C)                         ; 7CED 6C 6C 79                 lly

; ----------------------------------------------------------------------------
        jsr     L7375                           ; 7CF0 20 75 73                  us
        adc     $64                             ; 7CF3 65 64                    ed
        .byte   $9B                             ; 7CF5 9B                       .
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
        adc     L6120,y                         ; 7D3E 79 20 61                 y a
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
        adc     L726F                           ; 7DA5 6D 6F 72                 mor
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
        jsr     L2020                           ; 7DCE 20 20 20                    
        .byte   $74                             ; 7DD1 74                       t
        adc     $72,x                           ; 7DD2 75 72                    ur
        ror     L6F20                           ; 7DD4 6E 20 6F                 n o
        ror     $4D20                           ; 7DD7 6E 20 4D                 n M
        eor     $4D                             ; 7DDA 45 4D                    EM
        jsr     L4153                           ; 7DDC 20 53 41                  SA
        lsr     $45,x                           ; 7DDF 56 45                    VE
        rol     L2020                           ; 7DE1 2E 20 20                 .  
        bvc     L7E58                           ; 7DE4 50 72                    Pr
        adc     $73                             ; 7DE6 65 73                    es
        .byte   $73                             ; 7DE8 73                       s
        jsr     L204E                           ; 7DE9 20 4E 20                  N 
        .byte   $74                             ; 7DEC 74                       t
        .byte   $6F                             ; 7DED 6F                       o
        jsr     L7574                           ; 7DEE 20 74 75                  tu
        .byte   $72                             ; 7DF1 72                       r
        ror     L209B                           ; 7DF2 6E 9B 20                 n. 
        jsr     L6F20                           ; 7DF5 20 20 6F                   o
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
        jsr     L2020                           ; 7E55 20 20 20                    
L7E58:  .byte   $74                             ; 7E58 74                       t
        pla                                     ; 7E59 68                       h
        adc     $20                             ; 7E5A 65 20                    e 
	.byte	"nam"
        adc     $20                             ; 7E5F 65 20                    e 
        pla                                     ; 7E61 68                       h
        adc     ($73,x)                         ; 7E62 61 73                    as
        jsr     L2061                           ; 7E64 20 61 20                  a 
        .byte   $64                             ; 7E67 64                       d
        .byte   $6F                             ; 7E68 6F                       o
        .byte   $74                             ; 7E69 74                       t
        .byte   $3A                             ; 7E6A 3A                       :
        jsr     L654D                           ; 7E6B 20 4D 65                  Me
        adc     L73AE                           ; 7E6E 6D AE 73                 m.s
        adc     ($76,x)                         ; 7E71 61 76                    av
        adc     $9B                             ; 7E73 65 9B                    e.
        .byte   $02                             ; 7E75 02                       .
        cmp     #$EE                            ; 7E76 C9 EE                    ..
        sbc     #$F4                            ; 7E78 E9 F4                    ..
        ldy     #$C4                            ; 7E7A A0 C4                    ..
        sbc     #$F3                            ; 7E7C E9 F3                    ..
        .byte   $EB                             ; 7E7E EB                       .
        asl     $48,x                           ; 7E7F 16 48                    .H
        adc     $6C                             ; 7E81 65 6C                    el
        bvs     L7EA5                           ; 7E83 70 20                    p 
        .byte   $53                             ; 7E85 53                       S
        .byte   $63                             ; 7E86 63                       c
        .byte   $72                             ; 7E87 72                       r
        adc     $65                             ; 7E88 65 65                    ee
        ror     L2020                           ; 7E8A 6E 20 20                 n  
        jsr     L2020                           ; 7E8D 20 20 20                    
        jsr     L2020                           ; 7E90 20 20 20                    
        jsr     L2031                           ; 7E93 20 31 20                  1 
        .byte   $6F                             ; 7E96 6F                       o
        ror     $20                             ; 7E97 66 20                    f 
        .byte   $32                             ; 7E99 32                       2
        .byte   $9B                             ; 7E9A 9B                       .
        .byte   $9B                             ; 7E9B 9B                       .
        and     ($2E),y                         ; 7E9C 31 2E                    1.
        jsr     L4957                           ; 7E9E 20 57 49                  WI
        .byte   $54                             ; 7EA1 54                       T
        pha                                     ; 7EA2 48                       H
        .byte   $20                             ; 7EA3 20                        
        .byte   $44                             ; 7EA4 44                       D
L7EA5:  .byte   $4F                             ; 7EA5 4F                       O
        .byte   $53                             ; 7EA6 53                       S
        jsr     L4944                           ; 7EA7 20 44 49                  DI
        .byte   $53                             ; 7EAA 53                       S
        .byte   $4B                             ; 7EAB 4B                       K
        jsr     L4E49                           ; 7EAC 20 49 4E                  IN
        jsr     L5244                           ; 7EAF 20 44 52                  DR
        eor     #$56                            ; 7EB2 49 56                    IV
        eor     $20                             ; 7EB4 45 20                    E 
        and     ($2C),y                         ; 7EB6 31 2C                    1,
        .byte   $9B                             ; 7EB8 9B                       .
        jsr     L2020                           ; 7EB9 20 20 20                    
        bvs     L7F30                           ; 7EBC 70 72                    pr
        adc     $73                             ; 7EBE 65 73                    es
        .byte   $73                             ; 7EC0 73                       s
        jsr     L2049                           ; 7EC1 20 49 20                  I 
        .byte   $74                             ; 7EC4 74                       t
        .byte   $6F                             ; 7EC5 6F                       o
	.byte	" in"
        adc     #$74                            ; 7EC9 69 74                    it
        adc     #$61                            ; 7ECB 69 61                    ia
        jmp     (L7A69)                         ; 7ECD 6C 69 7A                 liz

; ----------------------------------------------------------------------------
        adc     $20                             ; 7ED0 65 20                    e 
        .byte   $64                             ; 7ED2 64                       d
        adc     #$73                            ; 7ED3 69 73                    is
        .byte   $6B                             ; 7ED5 6B                       k
        rol     $9B9B                           ; 7ED6 2E 9B 9B                 ...
        .byte   $02                             ; 7ED9 02                       .
        .byte   $C3                             ; 7EDA C3                       .
        cmp     ($D5,x)                         ; 7EDB C1 D5                    ..
        .byte   $D4                             ; 7EDD D4                       .
        cmp     #$CF                            ; 7EDE C9 CF                    ..
        dec     $16BA                           ; 7EE0 CE BA 16                 ...
        eor     #$6E                            ; 7EE3 49 6E                    In
        adc     #$74                            ; 7EE5 69 74                    it
        adc     #$61                            ; 7EE7 69 61                    ia
        jmp     (L7A69)                         ; 7EE9 6C 69 7A                 liz

; ----------------------------------------------------------------------------
        adc     #$6E                            ; 7EEC 69 6E                    in
        .byte   $67                             ; 7EEE 67                       g
        jsr     L2061                           ; 7EEF 20 61 20                  a 
        .byte   $64                             ; 7EF2 64                       d
        adc     #$73                            ; 7EF3 69 73                    is
        .byte   $6B                             ; 7EF5 6B                       k
        jsr     L7265                           ; 7EF6 20 65 72                  er
        adc     ($73,x)                         ; 7EF9 61 73                    as
        adc     $73                             ; 7EFB 65 73                    es
        .byte   $9B                             ; 7EFD 9B                       .
	.byte	" all data on the disk.",$9B,$9B
        .byte   $32                             ; 7F16 32                       2
        rol     $C602                           ; 7F17 2E 02 C6                 ...
        .byte   $EF                             ; 7F1A EF                       .
        .byte   $F2                             ; 7F1B F2                       .
        sbc     $F4E1                           ; 7F1C ED E1 F4                 ...
        ldy     #$E4                            ; 7F1F A0 E4                    ..
        sbc     #$F3                            ; 7F21 E9 F3                    ..
        .byte   $EB                             ; 7F23 EB                       .
        ldy     #$E9                            ; 7F24 A0 E9                    ..
        inc     $E4A0                           ; 7F26 EE A0 E4                 ...
        .byte   $F2                             ; 7F29 F2                       .
        sbc     #$F6                            ; 7F2A E9 F6                    ..
        sbc     $A0                             ; 7F2C E5 A0                    ..
        tay                                     ; 7F2E A8                       .
        .byte   $B1                             ; 7F2F B1                       .
L7F30:  lda     $A9B8                           ; 7F30 AD B8 A9                 ...
        .byte   $BF                             ; 7F33 BF                       .
        asl     $9B,x                           ; 7F34 16 9B                    ..
        jsr     L2020                           ; 7F36 20 20 20                    
        eor     $6E                             ; 7F39 45 6E                    En
        .byte   $74                             ; 7F3B 74                       t
        adc     $72                             ; 7F3C 65 72                    er
        jsr     L6F6E                           ; 7F3E 20 6E 6F                  no
        rol     L6F20                           ; 7F41 2E 20 6F                 . o
        ror     $20                             ; 7F44 66 20                    f 
        .byte   $64                             ; 7F46 64                       d
        .byte   $72                             ; 7F47 72                       r
        adc     #$76                            ; 7F48 69 76                    iv
        adc     $20                             ; 7F4A 65 20                    e 
        .byte   $77                             ; 7F4C 77                       w
        adc     #$74                            ; 7F4D 69 74                    it
        pla                                     ; 7F4F 68                       h
        jsr     L6964                           ; 7F50 20 64 69                  di
        .byte   $73                             ; 7F53 73                       s
        .byte   $6B                             ; 7F54 6B                       k
        .byte   $9B                             ; 7F55 9B                       .
        jsr     L2020                           ; 7F56 20 20 20                    
        .byte   $74                             ; 7F59 74                       t
        .byte   $6F                             ; 7F5A 6F                       o
        jsr     L6562                           ; 7F5B 20 62 65                  be
	.byte	" in"
        adc     #$74                            ; 7F61 69 74                    it
        adc     #$61                            ; 7F63 69 61                    ia
        jmp     (L7A69)                         ; 7F65 6C 69 7A                 liz

; ----------------------------------------------------------------------------
        adc     $64                             ; 7F68 65 64                    ed
        rol     L2020                           ; 7F6A 2E 20 20                 .  
        lsr     $5645                           ; 7F6D 4E 45 56                 NEV
        eor     $52                             ; 7F70 45 52                    ER
        jsr     L4E49                           ; 7F72 20 49 4E                  IN
        eor     #$54                            ; 7F75 49 54                    IT
        .byte   $9B                             ; 7F77 9B                       .
        jsr     L2020                           ; 7F78 20 20 20                    
        eor     $554F,y                         ; 7F7B 59 4F 55                 YOU
        .byte   $52                             ; 7F7E 52                       R
        jsr     L4F44                           ; 7F7F 20 44 4F                  DO
        .byte   $53                             ; 7F82 53                       S
        jsr     L4944                           ; 7F83 20 44 49                  DI
        .byte   $53                             ; 7F86 53                       S
        .byte   $4B                             ; 7F87 4B                       K
        rol     $9B9B                           ; 7F88 2E 9B 9B                 ...
        .byte   $33                             ; 7F8B 33                       3
        rol     $C602                           ; 7F8C 2E 02 C6                 ...
        .byte   $EF                             ; 7F8F EF                       .
        .byte   $F2                             ; 7F90 F2                       .
        sbc     $F4E1                           ; 7F91 ED E1 F4                 ...
        ldy     #$F4                            ; 7F94 A0 F4                    ..
        sbc     $E5F0,y                         ; 7F96 F9 F0 E5                 ...
        .byte   $BF                             ; 7F99 BF                       .
        asl     $50,x                           ; 7F9A 16 50                    .P
        .byte   $72                             ; 7F9C 72                       r
        adc     $73                             ; 7F9D 65 73                    es
        .byte   $73                             ; 7F9F 73                       s
        jsr     L2031                           ; 7FA0 20 31 20                  1 
        ror     $6F                             ; 7FA3 66 6F                    fo
        .byte   $72                             ; 7FA5 72                       r
        jsr     L6973                           ; 7FA6 20 73 69                  si
        ror     L6C67                           ; 7FA9 6E 67 6C                 ngl
        adc     $9B                             ; 7FAC 65 9B                    e.
        jsr     L2020                           ; 7FAE 20 20 20                    
        .byte   $64                             ; 7FB1 64                       d
        adc     $6E                             ; 7FB2 65 6E                    en
        .byte   $73                             ; 7FB4 73                       s
        adc     #$74                            ; 7FB5 69 74                    it
	.byte	"y f"
        .byte   $6F                             ; 7FBA 6F                       o
        .byte   $72                             ; 7FBB 72                       r
        adc     L7461                           ; 7FBC 6D 61 74                 mat
        .byte   $3B                             ; 7FBF 3B                       ;
	.byte	" pr"
        adc     $73                             ; 7FC3 65 73                    es
        .byte   $73                             ; 7FC5 73                       s
        jsr     L2032                           ; 7FC6 20 32 20                  2 
        ror     $6F                             ; 7FC9 66 6F                    fo
        .byte   $72                             ; 7FCB 72                       r
        .byte   $9B                             ; 7FCC 9B                       .
        jsr     L2020                           ; 7FCD 20 20 20                    
        .byte   $64                             ; 7FD0 64                       d
        .byte   $6F                             ; 7FD1 6F                       o
        adc     $62,x                           ; 7FD2 75 62                    ub
        jmp     (L2065)                         ; 7FD4 6C 65 20                 le 

; ----------------------------------------------------------------------------
        .byte   $64                             ; 7FD7 64                       d
        adc     $6E                             ; 7FD8 65 6E                    en
        .byte   $73                             ; 7FDA 73                       s
        adc     #$74                            ; 7FDB 69 74                    it
	.byte	"y f"
        .byte   $6F                             ; 7FE0 6F                       o
        .byte   $72                             ; 7FE1 72                       r
        adc     L7461                           ; 7FE2 6D 61 74                 mat
        rol     $029B                           ; 7FE5 2E 9B 02                 ...
        cmp     #$EE                            ; 7FE8 C9 EE                    ..
        sbc     #$F4                            ; 7FEA E9 F4                    ..
        ldy     #$C4                            ; 7FEC A0 C4                    ..
        sbc     #$F3                            ; 7FEE E9 F3                    ..
        .byte   $EB                             ; 7FF0 EB                       .
        asl     $48,x                           ; 7FF1 16 48                    .H
        adc     $6C                             ; 7FF3 65 6C                    el
        bvs     L8017                           ; 7FF5 70 20                    p 
        .byte   $53                             ; 7FF7 53                       S
        .byte   $63                             ; 7FF8 63                       c
        .byte   $72                             ; 7FF9 72                       r
        adc     $65                             ; 7FFA 65 65                    ee
        ror     L2020                           ; 7FFC 6E 20 20                 n  
        jsr     L2020                           ; 7FFF 20 20 20                    
        jsr     L2020                           ; 8002 20 20 20                    
        jsr     L2032                           ; 8005 20 32 20                  2 
        .byte   $6F                             ; 8008 6F                       o
        ror     $20                             ; 8009 66 20                    f 
        .byte   $32                             ; 800B 32                       2
        .byte   $9B                             ; 800C 9B                       .
        .byte   $9B                             ; 800D 9B                       .
        .byte   $34                             ; 800E 34                       4
        rol     $D702                           ; 800F 2E 02 D7                 ...
        .byte   $F2                             ; 8012 F2                       .
        sbc     #$F4                            ; 8013 E9 F4                    ..
        sbc     $A0                             ; 8015 E5 A0                    ..
L8017:  dec     $CD                             ; 8017 C6 CD                    ..
        .byte   $D3                             ; 8019 D3                       .
        ldx     $D9D3                           ; 801A AE D3 D9                 ...
        .byte   $D3                             ; 801D D3                       .
        ldy     #$E6                            ; 801E A0 E6                    ..
        sbc     #$EC                            ; 8020 E9 EC                    ..
        sbc     $A0                             ; 8022 E5 A0                    ..
        tay                                     ; 8024 A8                       .
        cmp     $CEAF,y                         ; 8025 D9 AF CE                 ...
        lda     #$BF                            ; 8028 A9 BF                    ..
        asl     $54,x                           ; 802A 16 54                    .T
        pla                                     ; 802C 68                       h
        adc     #$73                            ; 802D 69 73                    is
        .byte   $9B                             ; 802F 9B                       .
        jsr     L2020                           ; 8030 20 20 20                    
        ror     $69                             ; 8033 66 69                    fi
        jmp     (L2065)                         ; 8035 6C 65 20                 le 

; ----------------------------------------------------------------------------
        jmp     (L7465)                         ; 8038 6C 65 74                 let

; ----------------------------------------------------------------------------
        .byte   $73                             ; 803B 73                       s
        jsr     L6F79                           ; 803C 20 79 6F                  yo
        adc     $20,x                           ; 803F 75 20                    u 
        .byte   $62                             ; 8041 62                       b
        .byte   $6F                             ; 8042 6F                       o
        .byte   $6F                             ; 8043 6F                       o
        .byte   $74                             ; 8044 74                       t
	.byte	" th"
        adc     $20                             ; 8048 65 20                    e 
        .byte   $73                             ; 804A 73                       s
        adc     L7473,y                         ; 804B 79 73 74                 yst
        adc     $6D                             ; 804E 65 6D                    em
        jsr     L7266                           ; 8050 20 66 72                  fr
        .byte   $6F                             ; 8053 6F                       o
        adc     L209B                           ; 8054 6D 9B 20                 m. 
	.byte	"  t"
        pla                                     ; 805A 68                       h
        adc     #$73                            ; 805B 69 73                    is
        jsr     L6964                           ; 805D 20 64 69                  di
        .byte   $73                             ; 8060 73                       s
        .byte   $6B                             ; 8061 6B                       k
        rol     L2020                           ; 8062 2E 20 20                 .  
        bvc     L80D9                           ; 8065 50 72                    Pr
        adc     $73                             ; 8067 65 73                    es
        .byte   $73                             ; 8069 73                       s
        jsr     L2059                           ; 806A 20 59 20                  Y 
        .byte   $74                             ; 806D 74                       t
        .byte   $6F                             ; 806E 6F                       o
        jsr     L7277                           ; 806F 20 77 72                  wr
        adc     #$74                            ; 8072 69 74                    it
        adc     $20                             ; 8074 65 20                    e 
        ror     $69                             ; 8076 66 69                    fi
        jmp     (L3B65)                         ; 8078 6C 65 3B                 le;

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 807B 9B                       .
	.byte	"   press N or RETURN to format only.",$9B,$9B
        and     $2E,x                           ; 80A2 35 2E                    5.
        .byte   $02                             ; 80A4 02                       .
        cmp     $E4EF                           ; 80A5 CD EF E4                 ...
        sbc     #$E6                            ; 80A8 E9 E6                    ..
        sbc     $C6A0,y                         ; 80AA F9 A0 C6                 ...
        cmp     $A0D3                           ; 80AD CD D3 A0                 ...
	.byte	$F0,$E1
        .byte   $F2                             ; 80B2 F2                       .
        sbc     ($ED,x)                         ; 80B3 E1 ED                    ..
        sbc     $F4                             ; 80B5 E5 F4                    ..
        sbc     $F2                             ; 80B7 E5 F2                    ..
        .byte   $F3                             ; 80B9 F3                       .
        ldy     #$A8                            ; 80BA A0 A8                    ..
        cmp     $CEAF,y                         ; 80BC D9 AF CE                 ...
        lda     #$BF                            ; 80BF A9 BF                    ..
        asl     $54,x                           ; 80C1 16 54                    .T
        pla                                     ; 80C3 68                       h
        adc     #$73                            ; 80C4 69 73                    is
        .byte   $9B                             ; 80C6 9B                       .
        jsr     L2020                           ; 80C7 20 20 20                    
        jmp     (L7465)                         ; 80CA 6C 65 74                 let

; ----------------------------------------------------------------------------
        .byte   $73                             ; 80CD 73                       s
        jsr     L6F79                           ; 80CE 20 79 6F                  yo
        adc     $20,x                           ; 80D1 75 20                    u 
        adc     #$6E                            ; 80D3 69 6E                    in
        .byte   $63                             ; 80D5 63                       c
        .byte   $72                             ; 80D6 72                       r
        adc     $61                             ; 80D7 65 61                    ea
L80D9:  .byte   $73                             ; 80D9 73                       s
        adc     $20                             ; 80DA 65 20                    e 
        adc     $73,x                           ; 80DC 75 73                    us
        adc     ($62,x)                         ; 80DE 61 62                    ab
        jmp     (L2065)                         ; 80E0 6C 65 20                 le 

; ----------------------------------------------------------------------------
        adc     L6D65                           ; 80E3 6D 65 6D                 mem
        .byte   $6F                             ; 80E6 6F                       o
        .byte   $72                             ; 80E7 72                       r
        adc     $9B2E,y                         ; 80E8 79 2E 9B                 y..
        jsr     L2020                           ; 80EB 20 20 20                    
        bvc     L8162                           ; 80EE 50 72                    Pr
        adc     $73                             ; 80F0 65 73                    es
        .byte   $73                             ; 80F2 73                       s
L80F3:  jsr     L2059                           ; 80F3 20 59 20                  Y 
        .byte   $74                             ; 80F6 74                       t
        .byte   $6F                             ; 80F7 6F                       o
        jsr     L6F6D                           ; 80F8 20 6D 6F                  mo
        .byte   $64                             ; 80FB 64                       d
        adc     #$66                            ; 80FC 69 66                    if
        adc     $203B,y                         ; 80FE 79 3B 20                 y; 
        bvs     L8175                           ; 8101 70 72                    pr
        adc     $73                             ; 8103 65 73                    es
        .byte   $73                             ; 8105 73                       s
        jsr     L204E                           ; 8106 20 4E 20                  N 
        .byte   $6F                             ; 8109 6F                       o
        .byte   $72                             ; 810A 72                       r
        .byte   $9B                             ; 810B 9B                       .
        jsr     L2020                           ; 810C 20 20 20                    
        .byte   $52                             ; 810F 52                       R
        eor     $54                             ; 8110 45 54                    ET
        eor     $52,x                           ; 8112 55 52                    UR
	.byte	"N t"
        .byte   $6F                             ; 8117 6F                       o
        jsr     L7962                           ; 8118 20 62 79                  by
        bvs     L817E                           ; 811B 70 61                    pa
        .byte   $73                             ; 811D 73                       s
        .byte   $73                             ; 811E 73                       s
        jsr     L6F6D                           ; 811F 20 6D 6F                  mo
        .byte   $64                             ; 8122 64                       d
        adc     #$66                            ; 8123 69 66                    if
        adc     #$63                            ; 8125 69 63                    ic
        adc     ($74,x)                         ; 8127 61 74                    at
        adc     #$6F                            ; 8129 69 6F                    io
        ror     $9B2E                           ; 812B 6E 2E 9B                 n..
        .byte   $9B                             ; 812E 9B                       .
        eor     #$66                            ; 812F 49 66                    If
        jsr     L6F79                           ; 8131 20 79 6F                  yo
        adc     $20,x                           ; 8134 75 20                    u 
        bvs     L81AA                           ; 8136 70 72                    pr
        adc     $73                             ; 8138 65 73                    es
        .byte   $73                             ; 813A 73                       s
        jsr     L2059                           ; 813B 20 59 20                  Y 
        ror     $6F                             ; 813E 66 6F                    fo
        .byte   $72                             ; 8140 72                       r
        jsr     L7453                           ; 8141 20 53 74                  St
        adc     $70                             ; 8144 65 70                    ep
        jsr     L2C35                           ; 8146 20 35 2C                  5,
	.byte	" answer:",$9B
        jsr     L6120                           ; 8152 20 20 61                   a
        and     #$20                            ; 8155 29 20                    ) 
        .byte   $53                             ; 8157 53                       S
        .byte   $74                             ; 8158 74                       t
        adc     ($72,x)                         ; 8159 61 72                    ar
        .byte   $74                             ; 815B 74                       t
        jsr     L6461                           ; 815C 20 61 64                  ad
        .byte   $64                             ; 815F 64                       d
        .byte   $72                             ; 8160 72                       r
        .byte   $65                             ; 8161 65                       e
L8162:  .byte   $73                             ; 8162 73                       s
        .byte   $73                             ; 8163 73                       s
        jsr     L666F                           ; 8164 20 6F 66                  of
        jsr     L4D46                           ; 8167 20 46 4D                  FM
        .byte   $53                             ; 816A 53                       S
	.byte	" buffers?",$9B
L8175:  jsr     L6220                           ; 8175 20 20 62                   b
        and     #$20                            ; 8178 29 20                    ) 
        lsr     L6D75                           ; 817A 4E 75 6D                 Num
        .byte   $62                             ; 817D 62                       b
L817E:  adc     $72                             ; 817E 65 72                    er
        jsr     L666F                           ; 8180 20 6F 66                  of
        jsr     L4D46                           ; 8183 20 46 4D                  FM
        .byte   $53                             ; 8186 53                       S
	.byte	" bu"
        ror     $66                             ; 818A 66 66                    ff
        adc     $72                             ; 818C 65 72                    er
        .byte   $73                             ; 818E 73                       s
        jsr     L3228                           ; 818F 20 28 32                  (2
        and     $3631                           ; 8192 2D 31 36                 -16
        and     #$3F                            ; 8195 29 3F                    )?
        .byte   $9B                             ; 8197 9B                       .
        jsr     L6320                           ; 8198 20 20 63                   c
        and     #$20                            ; 819B 29 20                    ) 
        lsr     $65,x                           ; 819D 56 65                    Ve
        .byte   $72                             ; 819F 72                       r
        adc     #$66                            ; 81A0 69 66                    if
        adc     L7720,y                         ; 81A2 79 20 77                 y w
        .byte   $72                             ; 81A5 72                       r
        adc     #$74                            ; 81A6 69 74                    it
        adc     $2D                             ; 81A8 65 2D                    e-
L81AA:  .byte   $63                             ; 81AA 63                       c
        .byte   $6F                             ; 81AB 6F                       o
        adc     L616D                           ; 81AC 6D 6D 61                 mma
        ror     L7364                           ; 81AF 6E 64 73                 nds
        jsr     L5928                           ; 81B2 20 28 59                  (Y
        .byte   $2F                             ; 81B5 2F                       /
        lsr     $3F29                           ; 81B6 4E 29 3F                 N)?
        .byte   $9B                             ; 81B9 9B                       .
        .byte   $9B                             ; 81BA 9B                       .
        .byte   $44                             ; 81BB 44                       D
        .byte   $4F                             ; 81BC 4F                       O
        .byte   $53                             ; 81BD 53                       S
        jsr     L7361                           ; 81BE 20 61 73                  as
        .byte   $6B                             ; 81C1 6B                       k
        .byte   $73                             ; 81C2 73                       s
        jsr     L6F79                           ; 81C3 20 79 6F                  yo
        adc     $20,x                           ; 81C6 75 20                    u 
        .byte   $74                             ; 81C8 74                       t
        .byte   $6F                             ; 81C9 6F                       o
        jsr     L6F63                           ; 81CA 20 63 6F                  co
        ror     L6966                           ; 81CD 6E 66 69                 nfi
        .byte   $72                             ; 81D0 72                       r
        adc     L6920                           ; 81D1 6D 20 69                 m i
        ror     L7469                           ; 81D4 6E 69 74                 nit
        jsr     L6176                           ; 81D7 20 76 61                  va
        jmp     (L6575)                         ; 81DA 6C 75 65                 lue

; ----------------------------------------------------------------------------
        .byte   $73                             ; 81DD 73                       s
        rol     $029B                           ; 81DE 2E 9B 02                 ...
        .byte   $D4                             ; 81E1 D4                       .
        .byte   $EF                             ; 81E2 EF                       .
        ldy     #$C3                            ; 81E3 A0 C3                    ..
        sbc     ($F2,x)                         ; 81E5 E1 F2                    ..
        .byte   $F4                             ; 81E7 F4                       .
        .byte   $F2                             ; 81E8 F2                       .
        sbc     #$E4                            ; 81E9 E9 E4                    ..
        .byte   $E7                             ; 81EB E7                       .
        sbc     $16                             ; 81EC E5 16                    ..
        pha                                     ; 81EE 48                       H
        adc     $6C                             ; 81EF 65 6C                    el
        bvs     L8213                           ; 81F1 70 20                    p 
        .byte   $53                             ; 81F3 53                       S
        .byte   $63                             ; 81F4 63                       c
        .byte   $72                             ; 81F5 72                       r
        adc     $65                             ; 81F6 65 65                    ee
        ror     L2020                           ; 81F8 6E 20 20                 n  
        jsr     L2020                           ; 81FB 20 20 20                    
        jsr     L2031                           ; 81FE 20 31 20                  1 
        .byte   $6F                             ; 8201 6F                       o
        ror     $20                             ; 8202 66 20                    f 
        and     ($9B),y                         ; 8204 31 9B                    1.
        .byte   $9B                             ; 8206 9B                       .
        and     ($2E),y                         ; 8207 31 2E                    1.
        jsr     L7250                           ; 8209 20 50 72                  Pr
        adc     $73                             ; 820C 65 73                    es
        .byte   $73                             ; 820E 73                       s
        jsr     L2054                           ; 820F 20 54 20                  T 
        .byte   $74                             ; 8212 74                       t
L8213:  .byte   $6F                             ; 8213 6F                       o
        jsr     L6573                           ; 8214 20 73 65                  se
        .byte	"lect fu"
        ror     L7463                           ; 821E 6E 63 74                 nct
        adc     #$6F                            ; 8221 69 6F                    io
        ror     L202E                           ; 8223 6E 2E 20                 n. 
        jsr     L4F54                           ; 8226 20 54 4F                  TO
        .byte   $9B                             ; 8229 9B                       .
        jsr     L2020                           ; 822A 20 20 20                    
        .byte   $43                             ; 822D 43                       C
        eor     ($52,x)                         ; 822E 41 52                    AR
        .byte   $54                             ; 8230 54                       T
        .byte   $52                             ; 8231 52                       R
        eor     #$44                            ; 8232 49 44                    ID
        .byte   $47                             ; 8234 47                       G
        eor     $20                             ; 8235 45 20                    E 
        bvs     L829A                           ; 8237 70 61                    pa
        .byte   $73                             ; 8239 73                       s
        .byte   $73                             ; 823A 73                       s
        adc     $73                             ; 823B 65 73                    es
        jsr     L6F63                           ; 823D 20 63 6F                  co
        ror     L7274                           ; 8240 6E 74 72                 ntr
        .byte   $6F                             ; 8243 6F                       o
	.byte	"l f"
        .byte   $72                             ; 8247 72                       r
        .byte   $6F                             ; 8248 6F                       o
        adc     L4420                           ; 8249 6D 20 44                 m D
        .byte   $4F                             ; 824C 4F                       O
        .byte   $53                             ; 824D 53                       S
        .byte   $9B                             ; 824E 9B                       .
        jsr     L2020                           ; 824F 20 20 20                    
        .byte   $74                             ; 8252 74                       t
        .byte   $6F                             ; 8253 6F                       o
	.byte	" in"
        .byte   $73                             ; 8257 73                       s
        adc     $72                             ; 8258 65 72                    er
        .byte   $74                             ; 825A 74                       t
        adc     $64                             ; 825B 65 64                    ed
        jsr     L6163                           ; 825D 20 63 61                  ca
        .byte   $72                             ; 8260 72                       r
        .byte   $74                             ; 8261 74                       t
        .byte   $72                             ; 8262 72                       r
        adc     #$64                            ; 8263 69 64                    id
        .byte   $67                             ; 8265 67                       g
        adc     $2E                             ; 8266 65 2E                    e.
        .byte   $9B                             ; 8268 9B                       .
        .byte   $9B                             ; 8269 9B                       .
        jsr     L2020                           ; 826A 20 20 20                    
        plp                                     ; 826D 28                       (
        adc     ($29,x)                         ; 826E 61 29                    a)
        eor     #$66                            ; 8270 49 66                    If
        jsr     L4142                           ; 8272 20 42 41                  BA
        .byte   $53                             ; 8275 53                       S
        eor     #$43                            ; 8276 49 43                    IC
        jsr     L6163                           ; 8278 20 63 61                  ca
        .byte   $72                             ; 827B 72                       r
        .byte   $74                             ; 827C 74                       t
        rol     L6920                           ; 827D 2E 20 69                 . i
        .byte   $73                             ; 8280 73                       s
	.byte	" in"
        .byte   $73                             ; 8284 73                       s
        adc     $72                             ; 8285 65 72                    er
        .byte   $74                             ; 8287 74                       t
        adc     $64                             ; 8288 65 64                    ed
	.byte	", t"
        pla                                     ; 828D 68                       h
        adc     $9B                             ; 828E 65 9B                    e.
        jsr     L2020                           ; 8290 20 20 20                    
        jsr     L2020                           ; 8293 20 20 20                    
        .byte   $73                             ; 8296 73                       s
        .byte   $63                             ; 8297 63                       c
        .byte   $72                             ; 8298 72                       r
        .byte   $65                             ; 8299 65                       e
L829A:  adc     $6E                             ; 829A 65 6E                    en
        jsr     L6964                           ; 829C 20 64 69                  di
        .byte   $73                             ; 829F 73                       s
        bvs     L830E                           ; 82A0 70 6C                    pl
        adc     ($79,x)                         ; 82A2 61 79                    ay
        .byte   $73                             ; 82A4 73                       s
        jsr     L2061                           ; 82A5 20 61 20                  a 
        .byte   $52                             ; 82A8 52                       R
        eor     $41                             ; 82A9 45 41                    EA
        .byte   $44                             ; 82AB 44                       D
        eor     L7020,y                         ; 82AC 59 20 70                 Y p
        .byte   $72                             ; 82AF 72                       r
        .byte   $6F                             ; 82B0 6F                       o
        adc     L7470                           ; 82B1 6D 70 74                 mpt
        rol     $9B9B                           ; 82B4 2E 9B 9B                 ...
        jsr     L2020                           ; 82B7 20 20 20                    
        plp                                     ; 82BA 28                       (
        .byte   $62                             ; 82BB 62                       b
        and     #$49                            ; 82BC 29 49                    )I
        ror     $20                             ; 82BE 66 20                    f 
        eor     ($53,x)                         ; 82C0 41 53                    AS
        .byte   $53                             ; 82C2 53                       S
        eor     $4D                             ; 82C3 45 4D                    EM
        .byte   $42                             ; 82C5 42                       B
        jmp     L5245                           ; 82C6 4C 45 52                 LER

; ----------------------------------------------------------------------------
        jsr     L4445                           ; 82C9 20 45 44                  ED
        eor     #$54                            ; 82CC 49 54                    IT
        .byte   $4F                             ; 82CE 4F                       O
        .byte   $52                             ; 82CF 52                       R
        jsr     L7369                           ; 82D0 20 69 73                  is
	.byte	" in"
        .byte   $73                             ; 82D6 73                       s
        adc     $72                             ; 82D7 65 72                    er
        .byte   $74                             ; 82D9 74                       t
        adc     $64                             ; 82DA 65 64                    ed
        .byte   $9B                             ; 82DC 9B                       .
	.byte	"      screen displays an EDIT prompt.",$9B,$9B
        jsr     L2020                           ; 8304 20 20 20                    
        plp                                     ; 8307 28                       (
        .byte   $63                             ; 8308 63                       c
        and     #$49                            ; 8309 29 49                    )I
        ror     $20                             ; 830B 66 20                    f 
        .byte   $79                             ; 830D 79                       y
L830E:  .byte   $6F                             ; 830E 6F                       o
        adc     $20,x                           ; 830F 75 20                    u 
        pla                                     ; 8311 68                       h
        adc     ($76,x)                         ; 8312 61 76                    av
        adc     $20                             ; 8314 65 20                    e 
        ror     L746F                           ; 8316 6E 6F 74                 not
	.byte	" in"
        .byte   $73                             ; 831C 73                       s
        adc     $72                             ; 831D 65 72                    er
        .byte   $74                             ; 831F 74                       t
        adc     $64                             ; 8320 65 64                    ed
        jsr     L6163                           ; 8322 20 63 61                  ca
        .byte   $72                             ; 8325 72                       r
        .byte   $74                             ; 8326 74                       t
        rol     $9B2C                           ; 8327 2E 2C 9B                 .,.
	.byte	"      screen displays NO CARTRIDGE.",$9B,$9B
        .byte   $32                             ; 834F 32                       2
        rol     L4920                           ; 8350 2E 20 49                 . I
        ror     $20                             ; 8353 66 20                    f 
	.byte	"you"
        jsr     L6567                           ; 8358 20 67 65                  ge
L835B:  .byte   $74                             ; 835B 74                       t
        jsr     L656D                           ; 835C 20 6D 65                  me
        .byte   $73                             ; 835F 73                       s
        .byte   $73                             ; 8360 73                       s
        adc     ($67,x)                         ; 8361 61 67                    ag
        adc     $20                             ; 8363 65 20                    e 
        plp                                     ; 8365 28                       (
        .byte   $63                             ; 8366 63                       c
        and     #$2C                            ; 8367 29 2C                    ),
	.byte	" pr"
        adc     $73                             ; 836C 65 73                    es
        .byte   $73                             ; 836E 73                       s
        .byte   $9B                             ; 836F 9B                       .
        jsr     L2020                           ; 8370 20 20 20                    
        eor     $53                             ; 8373 45 53                    ES
        .byte   $43                             ; 8375 43                       C
        jsr     L6F74                           ; 8376 20 74 6F                  to
        jsr     L6572                           ; 8379 20 72 65                  re
        .byte   $74                             ; 837C 74                       t
        adc     $72,x                           ; 837D 75 72                    ur
	.byte	"n t"
        .byte   $6F                             ; 8382 6F                       o
        jsr     L4F44                           ; 8383 20 44 4F                  DO
        .byte   $53                             ; 8386 53                       S
        jsr     L656D                           ; 8387 20 6D 65                  me
        ror     $2E75                           ; 838A 6E 75 2E                 nu.
        .byte   $9B                             ; 838D 9B                       .
        .byte   $47                             ; 838E 47                       G
        adc     $6E                             ; 838F 65 6E                    en
        adc     $72                             ; 8391 65 72                    er
        adc     ($6C,x)                         ; 8393 61 6C                    al
        jsr     L6E49                           ; 8395 20 49 6E                  In
        ror     $6F                             ; 8398 66 6F                    fo
        .byte   $72                             ; 839A 72                       r
        adc     L7461                           ; 839B 6D 61 74                 mat
        adc     #$6F                            ; 839E 69 6F                    io
        ror     L2020                           ; 83A0 6E 20 20                 n  
        jsr     L2020                           ; 83A3 20 20 20                    
        .byte   $20                             ; 83A6 20                        
        .byte   $20                             ; 83A7 20                        
L83A8:  jsr     L2020                           ; 83A8 20 20 20                    
        jsr     L3120                           ; 83AB 20 20 31                   1
        jsr     L666F                           ; 83AE 20 6F 66                  of
        jsr     L9B36                           ; 83B1 20 36 9B                  6.
        .byte   $9B                             ; 83B4 9B                       .
        .byte   $54                             ; 83B5 54                       T
        pla                                     ; 83B6 68                       h
        adc     $20                             ; 83B7 65 20                    e 
        .byte   $44                             ; 83B9 44                       D
        .byte   $4F                             ; 83BA 4F                       O
        .byte   $53                             ; 83BB 53                       S
        jsr     L6F63                           ; 83BC 20 63 6F                  co
        adc     L616D                           ; 83BF 6D 6D 61                 mma
        ror     L7364                           ; 83C2 6E 64 73                 nds
        jsr     L6C61                           ; 83C5 20 61 6C                  al
	.byte	"low"
        jsr     L6F79                           ; 83CB 20 79 6F                  yo
        adc     $20,x                           ; 83CE 75 20                    u 
        .byte   $74                             ; 83D0 74                       t
        .byte   $6F                             ; 83D1 6F                       o
        jsr     L7473                           ; 83D2 20 73 74                  st
        .byte   $6F                             ; 83D5 6F                       o
        .byte   $72                             ; 83D6 72                       r
        adc     $2C                             ; 83D7 65 2C                    e,
        .byte   $9B                             ; 83D9 9B                       .
	.byte	"retrieve, and manage your disk files.",$9B,$9B
        and     ($2E),y                         ; 8401 31 2E                    1.
        jsr     L6F54                           ; 8403 20 54 6F                  To
        jsr     L6573                           ; 8406 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 840C 74                       t
        jsr     L2061                           ; 840D 20 61 20                  a 
        .byte	"men"
        adc     $20,x                           ; 8413 75 20                    u 
        ror     $75                             ; 8415 66 75                    fu
        ror     L7463                           ; 8417 6E 63 74                 nct
        adc     #$6F                            ; 841A 69 6F                    io
        ror     $202C                           ; 841C 6E 2C 20                 n, 
        bvs     L8493                           ; 841F 70 72                    pr
        adc     $73                             ; 8421 65 73                    es
        .byte   $73                             ; 8423 73                       s
        .byte   $9B                             ; 8424 9B                       .
        jsr     L2020                           ; 8425 20 20 20                    
        .byte   $74                             ; 8428 74                       t
        pla                                     ; 8429 68                       h
        adc     $20                             ; 842A 65 20                    e 
        ror     $69                             ; 842C 66 69                    fi
        .byte   $72                             ; 842E 72                       r
        .byte   $73                             ; 842F 73                       s
        .byte   $74                             ; 8430 74                       t
        jsr     L656C                           ; 8431 20 6C 65                  le
        .byte   $74                             ; 8434 74                       t
        .byte   $74                             ; 8435 74                       t
        adc     $72                             ; 8436 65 72                    er
        jsr     L666F                           ; 8438 20 6F 66                  of
	.byte	" th"
        adc     $20                             ; 843E 65 20                    e 
        .byte   $63                             ; 8440 63                       c
        .byte   $6F                             ; 8441 6F                       o
        adc     L616D                           ; 8442 6D 6D 61                 mma
        ror     $9B64                           ; 8445 6E 64 9B                 nd.
        jsr     L2020                           ; 8448 20 20 20                    
	.byte	"nam"
        adc     $2E                             ; 844E 65 2E                    e.
        jsr     L0228                           ; 8450 20 28 02                  (.
        cmp     $72                             ; 8453 C5 72                    .r
        adc     ($73,x)                         ; 8455 61 73                    as
        adc     $20                             ; 8457 65 20                    e 
        rol     $2E2E                           ; 8459 2E 2E 2E                 ...
	.byte	" pr"
        adc     $73                             ; 845F 65 73                    es
        .byte   $73                             ; 8461 73                       s
        .byte   $02                             ; 8462 02                       .
        cmp     $2C                             ; 8463 C5 2C                    .,
        jsr     L7465                           ; 8465 20 65 74                  et
        .byte   $63                             ; 8468 63                       c
        rol     $9B29                           ; 8469 2E 29 9B                 .).
        .byte   $9B                             ; 846C 9B                       .
        .byte   $44                             ; 846D 44                       D
        .byte   $4F                             ; 846E 4F                       O
        .byte   $53                             ; 846F 53                       S
	.byte	" pr"
        .byte   $6F                             ; 8473 6F                       o
        adc     L7470                           ; 8474 6D 70 74                 mpt
        .byte   $73                             ; 8477 73                       s
        jsr     L6F79                           ; 8478 20 79 6F                  yo
        adc     $20,x                           ; 847B 75 20                    u 
        .byte   $74                             ; 847D 74                       t
        .byte   $6F                             ; 847E 6F                       o
        jsr     L7573                           ; 847F 20 73 75                  su
        bvs     L84F4                           ; 8482 70 70                    pp
        jmp     (L2079)                         ; 8484 6C 79 20                 ly 

; ----------------------------------------------------------------------------
        .byte   $74                             ; 8487 74                       t
        pla                                     ; 8488 68                       h
        adc     $20                             ; 8489 65 20                    e 
        .byte   $64                             ; 848B 64                       d
        adc     ($74,x)                         ; 848C 61 74                    at
        adc     ($9B,x)                         ; 848E 61 9B                    a.
        ror     L6565                           ; 8490 6E 65 65                 nee
L8493:  .byte   $64                             ; 8493 64                       d
        adc     $64                             ; 8494 65 64                    ed
        jsr     L6F74                           ; 8496 20 74 6F                  to
        jsr     L7865                           ; 8499 20 65 78                  ex
        adc     $63                             ; 849C 65 63                    ec
        adc     $74,x                           ; 849E 75 74                    ut
        adc     $20                             ; 84A0 65 20                    e 
        adc     ($20,x)                         ; 84A2 61 20                    a 
        .byte   $63                             ; 84A4 63                       c
        .byte   $6F                             ; 84A5 6F                       o
        adc     L616D                           ; 84A6 6D 6D 61                 mma
        ror     $2E64                           ; 84A9 6E 64 2E                 nd.
        jsr     L5720                           ; 84AC 20 20 57                   W
        pla                                     ; 84AF 68                       h
        adc     $6E                             ; 84B0 65 6E                    en
        .byte   $9B                             ; 84B2 9B                       .
        .byte   $72                             ; 84B3 72                       r
        adc     $73                             ; 84B4 65 73                    es
        bvs     L8527                           ; 84B6 70 6F                    po
        ror     L6573                           ; 84B8 6E 73 65                 nse
        jsr     L7369                           ; 84BB 20 69 73                  is
        jsr     L6F63                           ; 84BE 20 63 6F                  co
	.byte	"mpl"
        adc     $74                             ; 84C4 65 74                    et
        adc     $2C                             ; 84C6 65 2C                    e,
	.byte	" pr"
        adc     $73                             ; 84CB 65 73                    es
        .byte   $73                             ; 84CD 73                       s
        jsr     L4552                           ; 84CE 20 52 45                  RE
        .byte   $54                             ; 84D1 54                       T
        eor     $52,x                           ; 84D2 55 52                    UR
        lsr     $9B2E                           ; 84D4 4E 2E 9B                 N..
        .byte   $9B                             ; 84D7 9B                       .
        .byte   $32                             ; 84D8 32                       2
        rol     L5420                           ; 84D9 2E 20 54                 . T
        .byte   $6F                             ; 84DC 6F                       o
        jsr     L6567                           ; 84DD 20 67 65                  ge
        .byte   $74                             ; 84E0 74                       t
        jsr     L6548                           ; 84E1 20 48 65                  He
        jmp     (L2070)                         ; 84E4 6C 70 20                 lp 

; ----------------------------------------------------------------------------
        .byte   $6F                             ; 84E7 6F                       o
        ror     L6120                           ; 84E8 6E 20 61                 n a
        ror     L2079                           ; 84EB 6E 79 20                 ny 
        .byte   $44                             ; 84EE 44                       D
        .byte   $4F                             ; 84EF 4F                       O
        .byte   $53                             ; 84F0 53                       S
	.byte	" fu"
L84F4:  ror     L7463                           ; 84F4 6E 63 74                 nct
        adc     #$6F                            ; 84F7 69 6F                    io
        ror     $9B2C                           ; 84F9 6E 2C 9B                 n,.
        jsr     L2020                           ; 84FC 20 20 20                    
        bvs     L8573                           ; 84FF 70 72                    pr
        adc     $73                             ; 8501 65 73                    es
        .byte   $73                             ; 8503 73                       s
        jsr     L5441                           ; 8504 20 41 54                  AT
        eor     ($52,x)                         ; 8507 41 52                    AR
        eor     #$20                            ; 8509 49 20                    I 
        .byte   $6F                             ; 850B 6F                       o
        .byte   $72                             ; 850C 72                       r
        jsr     L4548                           ; 850D 20 48 45                  HE
        jmp     L2050                           ; 8510 4C 50 20                 LP 

; ----------------------------------------------------------------------------
        .byte   $6B                             ; 8513 6B                       k
        adc     $79                             ; 8514 65 79                    ey
	.byte	" in"
        .byte   $73                             ; 8519 73                       s
        .byte   $74                             ; 851A 74                       t
        adc     $61                             ; 851B 65 61                    ea
        .byte   $64                             ; 851D 64                       d
        .byte   $9B                             ; 851E 9B                       .
        jsr     L2020                           ; 851F 20 20 20                    
        .byte   $6F                             ; 8522 6F                       o
        ror     $20                             ; 8523 66 20                    f 
        .byte   $74                             ; 8525 74                       t
        .byte   $79                             ; 8526 79                       y
L8527:  bvs     L8592                           ; 8527 70 69                    pi
        ror     $2067                           ; 8529 6E 67 20                 ng 
        adc     #$6E                            ; 852C 69 6E                    in
        jsr     L6572                           ; 852E 20 72 65                  re
        adc     ($75),y                         ; 8531 71 75                    qu
        adc     $73                             ; 8533 65 73                    es
        .byte   $74                             ; 8535 74                       t
        adc     $64                             ; 8536 65 64                    ed
        jsr     L6164                           ; 8538 20 64 61                  da
        .byte   $74                             ; 853B 74                       t
        adc     ($2E,x)                         ; 853C 61 2E                    a.
        .byte   $9B                             ; 853E 9B                       .
        .byte   $9B                             ; 853F 9B                       .
	.byte	"3. To break out of any DOS function,",$9B
        jsr     L2020                           ; 8565 20 20 20                    
        bvs     L85DC                           ; 8568 70 72                    pr
        adc     $73                             ; 856A 65 73                    es
        .byte   $73                             ; 856C 73                       s
        jsr     L5345                           ; 856D 20 45 53                  ES
        .byte   $43                             ; 8570 43                       C
        .byte   $20                             ; 8571 20                        
        .byte   $6B                             ; 8572 6B                       k
L8573:  adc     $79                             ; 8573 65 79                    ey
        jsr     L6F66                           ; 8575 20 66 6F                  fo
        .byte   $72                             ; 8578 72                       r
	.byte	" th"
        adc     $20                             ; 857C 65 20                    e 
        .byte   $44                             ; 857E 44                       D
        .byte   $4F                             ; 857F 4F                       O
        .byte   $53                             ; 8580 53                       S
        jsr     L656D                           ; 8581 20 6D 65                  me
        ror     $2E75                           ; 8584 6E 75 2E                 nu.
        .byte   $9B                             ; 8587 9B                       .
        .byte   $47                             ; 8588 47                       G
        adc     $6E                             ; 8589 65 6E                    en
        adc     $72                             ; 858B 65 72                    er
        adc     ($6C,x)                         ; 858D 61 6C                    al
        jsr     L6E49                           ; 858F 20 49 6E                  In
L8592:  ror     $6F                             ; 8592 66 6F                    fo
        .byte   $72                             ; 8594 72                       r
        adc     L7461                           ; 8595 6D 61 74                 mat
        adc     #$6F                            ; 8598 69 6F                    io
        ror     L2020                           ; 859A 6E 20 20                 n  
        jsr     L2020                           ; 859D 20 20 20                    
        jsr     L2020                           ; 85A0 20 20 20                    
        jsr     L2020                           ; 85A3 20 20 20                    
        jsr     L2032                           ; 85A6 20 32 20                  2 
        .byte   $6F                             ; 85A9 6F                       o
        ror     $20                             ; 85AA 66 20                    f 
        rol     $9B,x                           ; 85AC 36 9B                    6.
        .byte   $9B                             ; 85AE 9B                       .
	.byte	"Some DOS commands are stored on the",$9B
        .byte   $44                             ; 85D3 44                       D
        .byte   $4F                             ; 85D4 4F                       O
        .byte   $53                             ; 85D5 53                       S
        jsr     L6964                           ; 85D6 20 64 69                  di
        .byte   $73                             ; 85D9 73                       s
        .byte   $6B                             ; 85DA 6B                       k
        .byte   $20                             ; 85DB 20                        
L85DC:  adc     ($6E,x)                         ; 85DC 61 6E                    an
        .byte   $64                             ; 85DE 64                       d
        jsr     L7261                           ; 85DF 20 61 72                  ar
        adc     $20                             ; 85E2 65 20                    e 
        jmp     (L616F)                         ; 85E4 6C 6F 61                 loa

; ----------------------------------------------------------------------------
        .byte   $64                             ; 85E7 64                       d
        adc     $64                             ; 85E8 65 64                    ed
	.byte	" in"
        .byte   $74                             ; 85ED 74                       t
        .byte   $6F                             ; 85EE 6F                       o
	.byte	" th"
        adc     $9B                             ; 85F2 65 9B                    e.
        .byte   $63                             ; 85F4 63                       c
        .byte   $6F                             ; 85F5 6F                       o
        adc     L7570                           ; 85F6 6D 70 75                 mpu
        .byte   $74                             ; 85F9 74                       t
        adc     $72                             ; 85FA 65 72                    er
	.byte	" wh"
        adc     $6E                             ; 85FF 65 6E                    en
        jsr     L6573                           ; 8601 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 8607 74                       t
        adc     $64                             ; 8608 65 64                    ed
        rol     $9B9B                           ; 860A 2E 9B 9B                 ...
        .byte   $54                             ; 860D 54                       T
        pla                                     ; 860E 68                       h
        adc     $73,x                           ; 860F 75 73                    us
        bit     L6B20                           ; 8611 2C 20 6B                 , k
        adc     $65                             ; 8614 65 65                    ee
        bvs     L8638                           ; 8616 70 20                    p 
        .byte   $44                             ; 8618 44                       D
        .byte   $4F                             ; 8619 4F                       O
        .byte   $53                             ; 861A 53                       S
        jsr     L6964                           ; 861B 20 64 69                  di
        .byte   $73                             ; 861E 73                       s
        .byte   $6B                             ; 861F 6B                       k
	.byte	" in"
        jsr     L7264                           ; 8623 20 64 72                  dr
        adc     #$76                            ; 8626 69 76                    iv
        adc     $20                             ; 8628 65 20                    e 
        .byte   $31                             ; 862A 31                       1
	.byte	" wh"
        adc     $6E                             ; 862E 65 6E                    en
        .byte   $9B                             ; 8630 9B                       .
        .byte   $73                             ; 8631 73                       s
        adc     $6C                             ; 8632 65 6C                    el
        adc     $63                             ; 8634 65 63                    ec
        .byte   $74                             ; 8636 74                       t
        .byte   $69                             ; 8637 69                       i
L8638:  ror     $3A67                           ; 8638 6E 67 3A                 ng:
        .byte   $9B                             ; 863B 9B                       .
        .byte   $9B                             ; 863C 9B                       .
        and     ($2E),y                         ; 863D 31 2E                    1.
        .byte   $02                             ; 863F 02                       .
        .byte   $C3                             ; 8640 C3                       .
        .byte   $6F                             ; 8641 6F                       o
        bvs     L86BD                           ; 8642 70 79                    py
        .byte   $2F                             ; 8644 2F                       /
        eor     ($70,x)                         ; 8645 41 70                    Ap
	.byte	"pe"
        ror     $9B64                           ; 8649 6E 64 9B                 nd.
        .byte   $32                             ; 864C 32                       2
        rol     $C402                           ; 864D 2E 02 C4                 ...
	.byte	"uplicate",$9B
        .byte   $33                             ; 8659 33                       3
        rol     $C902                           ; 865A 2E 02 C9                 ...
        ror     L7469                           ; 865D 6E 69 74                 nit
        jsr     L6964                           ; 8660 20 64 69                  di
        .byte   $73                             ; 8663 73                       s
        .byte   $6B                             ; 8664 6B                       k
        .byte   $9B                             ; 8665 9B                       .
        .byte   $34                             ; 8666 34                       4
        rol     $C102                           ; 8667 2E 02 C1                 ...
        .byte   $63                             ; 866A 63                       c
        .byte   $63                             ; 866B 63                       c
        adc     $73                             ; 866C 65 73                    es
        .byte   $73                             ; 866E 73                       s
        jsr     L4F44                           ; 866F 20 44 4F                  DO
        .byte   $53                             ; 8672 53                       S
        jsr     L9B32                           ; 8673 20 32 9B                  2.
        and     $2E,x                           ; 8676 35 2E                    5.
        .byte   $02                             ; 8678 02                       .
        cld                                     ; 8679 D8                       .
        and     L7375                           ; 867A 2D 75 73                 -us
        adc     $72                             ; 867D 65 72                    er
        and     L6564                           ; 867F 2D 64 65                 -de
        ror     $69                             ; 8682 66 69                    fi
        ror     L6465                           ; 8684 6E 65 64                 ned
        .byte   $9B                             ; 8687 9B                       .
        rol     $2E,x                           ; 8688 36 2E                    6.
        .byte   $02                             ; 868A 02                       .
        iny                                     ; 868B C8                       .
        adc     $6C                             ; 868C 65 6C                    el
	.byte	"p",$9B,$9B
        .byte   $54                             ; 8691 54                       T
        pla                                     ; 8692 68                       h
        adc     $73                             ; 8693 65 73                    es
        adc     $20                             ; 8695 65 20                    e 
        ror     $69                             ; 8697 66 69                    fi
        jmp     (L7365)                         ; 8699 6C 65 73                 les

; ----------------------------------------------------------------------------
	.byte	" are stored on the DOS",$9B
        .byte   $64                             ; 86B3 64                       d
        adc     #$73                            ; 86B4 69 73                    is
        .byte   $6B                             ; 86B6 6B                       k
        jsr     L6F74                           ; 86B7 20 74 6F                  to
        jsr     L656C                           ; 86BA 20 6C 65                  le
L86BD:  adc     ($76,x)                         ; 86BD 61 76                    av
        adc     $20                             ; 86BF 65 20                    e 
        .byte	"you"
        jsr     L6F6D                           ; 86C4 20 6D 6F                  mo
        .byte   $72                             ; 86C7 72                       r
        adc     $20                             ; 86C8 65 20                    e 
        adc     ($76,x)                         ; 86CA 61 76                    av
        adc     ($69,x)                         ; 86CC 61 69                    ai
        jmp     (L6261)                         ; 86CE 6C 61 62                 lab

; ----------------------------------------------------------------------------
        jmp     (L9B65)                         ; 86D1 6C 65 9B                 le.

; ----------------------------------------------------------------------------
        adc     L6D65                           ; 86D4 6D 65 6D                 mem
        .byte   $6F                             ; 86D7 6F                       o
        .byte   $72                             ; 86D8 72                       r
        adc     L6920,y                         ; 86D9 79 20 69                 y i
        ror     L7920                           ; 86DC 6E 20 79                 n y
        .byte   $6F                             ; 86DF 6F                       o
        adc     $72,x                           ; 86E0 75 72                    ur
        jsr     L6F63                           ; 86E2 20 63 6F                  co
        adc     L7570                           ; 86E5 6D 70 75                 mpu
        .byte   $74                             ; 86E8 74                       t
        adc     $72                             ; 86E9 65 72                    er
        rol     $479B                           ; 86EB 2E 9B 47                 ..G
        adc     $6E                             ; 86EE 65 6E                    en
        adc     $72                             ; 86F0 65 72                    er
        adc     ($6C,x)                         ; 86F2 61 6C                    al
        jsr     L6E49                           ; 86F4 20 49 6E                  In
        ror     $6F                             ; 86F7 66 6F                    fo
        .byte   $72                             ; 86F9 72                       r
        adc     L7461                           ; 86FA 6D 61 74                 mat
        adc     #$6F                            ; 86FD 69 6F                    io
        ror     L2020                           ; 86FF 6E 20 20                 n  
        jsr     L2020                           ; 8702 20 20 20                    
        jsr     L2020                           ; 8705 20 20 20                    
        jsr     L2020                           ; 8708 20 20 20                    
        jsr     L2033                           ; 870B 20 33 20                  3 
        .byte   $6F                             ; 870E 6F                       o
        ror     $20                             ; 870F 66 20                    f 
        rol     $9B,x                           ; 8711 36 9B                    6.
        .byte   $9B                             ; 8713 9B                       .
        .byte   $44                             ; 8714 44                       D
        .byte   $4F                             ; 8715 4F                       O
        .byte   $53                             ; 8716 53                       S
        jsr     L7361                           ; 8717 20 61 73                  as
        .byte   $6B                             ; 871A 6B                       k
        .byte   $73                             ; 871B 73                       s
        jsr     L6F79                           ; 871C 20 79 6F                  yo
        adc     $20,x                           ; 871F 75 20                    u 
        ror     $6F                             ; 8721 66 6F                    fo
        .byte   $72                             ; 8723 72                       r
        jsr     L6164                           ; 8724 20 64 61                  da
        .byte   $74                             ; 8727 74                       t
        adc     ($20,x)                         ; 8728 61 20                    a 
        .byte   $73                             ; 872A 73                       s
        adc     $63,x                           ; 872B 75 63                    uc
        pla                                     ; 872D 68                       h
        jsr     L7361                           ; 872E 20 61 73                  as
        .byte   $3A                             ; 8731 3A                       :
        .byte   $9B                             ; 8732 9B                       .
        .byte   $9B                             ; 8733 9B                       .
        and     ($2E),y                         ; 8734 31 2E                    1.
        .byte   $02                             ; 8736 02                       .
        dec     $E9                             ; 8737 C6 E9                    ..
        cpx     $EEE5                           ; 8739 EC E5 EE                 ...
        sbc     ($ED,x)                         ; 873C E1 ED                    ..
        sbc     $BF                             ; 873E E5 BF                    ..
	.byte	$16
	.byte	"The full name of your",$9B
	.byte	"   file. (MYFILE.BAS)",$9B,$9B
        .byte   $32                             ; 876E 32                       2
        rol     $C602                           ; 876F 2E 02 C6                 ...
        sbc     #$EC                            ; 8772 E9 EC                    ..
        sbc     $F3                             ; 8774 E5 F3                    ..
	.byte	$F0,$E5
        .byte   $E3                             ; 8778 E3                       .
        .byte   $BF                             ; 8779 BF                       .
        asl     $54,x                           ; 877A 16 54                    .T
        pla                                     ; 877C 68                       h
        adc     $20                             ; 877D 65 20                    e 
        ror     $69                             ; 877F 66 69                    fi
        .byte	"len"

; ----------------------------------------------------------------------------
        adc     ($6D,x)                         ; 8784 61 6D                    am
        adc     $20                             ; 8786 65 20                    e 
	.byte	"pl"
        adc     $73,x                           ; 878A 75 73                    us
	.byte	" th"
        adc     $9B                             ; 878F 65 9B                    e.
        jsr     L2020                           ; 8791 20 20 20                    
        .byte   $64                             ; 8794 64                       d
        .byte   $72                             ; 8795 72                       r
        adc     #$76                            ; 8796 69 76                    iv
        adc     $20                             ; 8798 65 20                    e 
        eor     #$44                            ; 879A 49 44                    ID
        rol     $2820                           ; 879C 2E 20 28                 . (
        .byte   $44                             ; 879F 44                       D
        and     ($3A),y                         ; 87A0 31 3A                    1:
        eor     $4659                           ; 87A2 4D 59 46                 MYF
        eor     #$4C                            ; 87A5 49 4C                    IL
        eor     $2E                             ; 87A7 45 2E                    E.
        .byte   $42                             ; 87A9 42                       B
        eor     ($53,x)                         ; 87AA 41 53                    AS
        and     #$9B                            ; 87AC 29 9B                    ).
        .byte   $9B                             ; 87AE 9B                       .
        .byte   $57                             ; 87AF 57                       W
        adc     #$6C                            ; 87B0 69 6C                    il
        .byte   $64                             ; 87B2 64                       d
        .byte   $63                             ; 87B3 63                       c
        adc     ($72,x)                         ; 87B4 61 72                    ar
        .byte   $64                             ; 87B6 64                       d
        .byte   $73                             ; 87B7 73                       s
        jsr     L6163                           ; 87B8 20 63 61                  ca
        ror     L6220                           ; 87BB 6E 20 62                 n b
        adc     $20                             ; 87BE 65 20                    e 
        adc     $73,x                           ; 87C0 75 73                    us
        adc     $64                             ; 87C2 65 64                    ed
        jsr     L6F66                           ; 87C4 20 66 6F                  fo
        .byte   $72                             ; 87C7 72                       r
        jsr     L2031                           ; 87C8 20 31 20                  1 
        adc     ($6E,x)                         ; 87CB 61 6E                    an
        .byte   $64                             ; 87CD 64                       d
        jsr     L2E32                           ; 87CE 20 32 2E                  2.
        .byte   $9B                             ; 87D1 9B                       .
        jsr     L2020                           ; 87D2 20 20 20                    
        rol     a                               ; 87D5 2A                       *
        and     L6E41,x                         ; 87D6 3D 41 6E                 =An
        adc     L6320,y                         ; 87D9 79 20 63                 y c
        .byte   $6F                             ; 87DC 6F                       o
        adc     L6962                           ; 87DD 6D 62 69                 mbi
        ror     L7461                           ; 87E0 6E 61 74                 nat
        adc     #$6F                            ; 87E3 69 6F                    io
        ror     L6F20                           ; 87E5 6E 20 6F                 n o
        ror     $20                             ; 87E8 66 20                    f 
        .byte   $63                             ; 87EA 63                       c
        pla                                     ; 87EB 68                       h
        adc     ($72,x)                         ; 87EC 61 72                    ar
        adc     ($63,x)                         ; 87EE 61 63                    ac
        .byte   $74                             ; 87F0 74                       t
        adc     $72                             ; 87F1 65 72                    er
        .byte   $73                             ; 87F3 73                       s
        .byte   $2E                             ; 87F4 2E                       .
        .byte   $9B                             ; 87F5 9B                       .
	.byte	"   ?=Any single character.",$9B,$9B
        .byte   $33                             ; 8812 33                       3
        rol     $C402                           ; 8813 2E 02 C4                 ...
        sbc     $F6                             ; 8816 E5 F6                    ..
        sbc     #$E3                            ; 8818 E9 E3                    ..
        sbc     $BA                             ; 881A E5 BA                    ..
        asl     $44,x                           ; 881C 16 44                    .D
        ror     $3D3A                           ; 881E 6E 3A 3D                 n:=
        .byte   $64                             ; 8821 64                       d
        .byte   $72                             ; 8822 72                       r
        adc     #$76                            ; 8823 69 76                    iv
        adc     $20                             ; 8825 65 20                    e 
        ror     $2E6F                           ; 8827 6E 6F 2E                 no.
        .byte   $3B                             ; 882A 3B                       ;
        jsr     L3A45                           ; 882B 20 45 3A                  E:
	.byte	"=sc"
        .byte   $72                             ; 8831 72                       r
        adc     $65                             ; 8832 65 65                    ee
        ror     $9B3B                           ; 8834 6E 3B 9B                 n;.
        jsr     L2020                           ; 8837 20 20 20                    
        bvc     L8876                           ; 883A 50 3A                    P:
	.byte	"=pr"
        adc     #$6E                            ; 883F 69 6E                    in
        .byte   $74                             ; 8841 74                       t
        adc     $72                             ; 8842 65 72                    er
        .byte   $3B                             ; 8844 3B                       ;
        jsr     L3A43                           ; 8845 20 43 3A                  C:
        and     L6163,x                         ; 8848 3D 63 61                 =ca
        .byte   $73                             ; 884B 73                       s
        .byte   $73                             ; 884C 73                       s
        adc     $74                             ; 884D 65 74                    et
        .byte   $74                             ; 884F 74                       t
        adc     $2E                             ; 8850 65 2E                    e.
        .byte   $9B                             ; 8852 9B                       .
        .byte   $9B                             ; 8853 9B                       .
        .byte   $34                             ; 8854 34                       4
        rol     $D302                           ; 8855 2E 02 D3                 ...
        .byte   $EF                             ; 8858 EF                       .
        sbc     $F2,x                           ; 8859 F5 F2                    ..
        .byte   $E3                             ; 885B E3                       .
        sbc     $AD                             ; 885C E5 AD                    ..
        lda     $16BF                           ; 885E AD BF 16                 ...
        lsr     $72                             ; 8861 46 72                    Fr
        .byte   $6F                             ; 8863 6F                       o
        adc     L7720                           ; 8864 6D 20 77                 m w
        pla                                     ; 8867 68                       h
        adc     #$63                            ; 8868 69 63                    ic
        pla                                     ; 886A 68                       h
        and     $3F2D                           ; 886B 2D 2D 3F                 --?
        .byte   $9B                             ; 886E 9B                       .
        jsr     L0220                           ; 886F 20 20 02                   .
        cpy     $E5                             ; 8872 C4 E5                    ..
        .byte   $F3                             ; 8874 F3                       .
        .byte   $F4                             ; 8875 F4                       .
L8876:  sbc     #$EE                            ; 8876 E9 EE                    ..
        sbc     ($F4,x)                         ; 8878 E1 F4                    ..
        sbc     #$EF                            ; 887A E9 EF                    ..
        inc     $ADAD                           ; 887C EE AD AD                 ...
        .byte   $BF                             ; 887F BF                       .
        asl     $54,x                           ; 8880 16 54                    .T
        .byte   $6F                             ; 8882 6F                       o
	.byte	" wh"
        adc     #$63                            ; 8886 69 63                    ic
        pla                                     ; 8888 68                       h
        and     $3F2D                           ; 8889 2D 2D 3F                 --?
        .byte   $9B                             ; 888C 9B                       .
        .byte   $47                             ; 888D 47                       G
        adc     $6E                             ; 888E 65 6E                    en
        adc     $72                             ; 8890 65 72                    er
        adc     ($6C,x)                         ; 8892 61 6C                    al
        jsr     L6E49                           ; 8894 20 49 6E                  In
        ror     $6F                             ; 8897 66 6F                    fo
        .byte   $72                             ; 8899 72                       r
        adc     L7461                           ; 889A 6D 61 74                 mat
        adc     #$6F                            ; 889D 69 6F                    io
        ror     L2020                           ; 889F 6E 20 20                 n  
        jsr     L2020                           ; 88A2 20 20 20                    
        jsr     L2020                           ; 88A5 20 20 20                    
        jsr     L2020                           ; 88A8 20 20 20                    
        jsr     L2034                           ; 88AB 20 34 20                  4 
        .byte   $6F                             ; 88AE 6F                       o
        ror     $20                             ; 88AF 66 20                    f 
        rol     $9B,x                           ; 88B1 36 9B                    6.
        .byte   $9B                             ; 88B3 9B                       .
        eor     ($6E,x)                         ; 88B4 41 6E                    An
        .byte   $73                             ; 88B6 73                       s
        .byte   $77                             ; 88B7 77                       w
        adc     $72                             ; 88B8 65 72                    er
        .byte   $73                             ; 88BA 73                       s
        jsr     L6F74                           ; 88BB 20 74 6F                  to
	.byte	" pr"
        .byte   $6F                             ; 88C1 6F                       o
        adc     L7470                           ; 88C2 6D 70 74                 mpt
        .byte   $73                             ; 88C5 73                       s
        jsr     L6F73                           ; 88C6 20 73 6F                  so
        adc     L7465                           ; 88C9 6D 65 74                 met
        adc     #$6D                            ; 88CC 69 6D                    im
        adc     $73                             ; 88CE 65 73                    es
        jsr     L7061                           ; 88D0 20 61 70                  ap
        bvs     L893A                           ; 88D3 70 65                    pe
        adc     ($72,x)                         ; 88D5 61 72                    ar
        .byte   $9B                             ; 88D7 9B                       .
        pla                                     ; 88D8 68                       h
        adc     #$67                            ; 88D9 69 67                    ig
        pla                                     ; 88DB 68                       h
        jmp     (L6769)                         ; 88DC 6C 69 67                 lig

; ----------------------------------------------------------------------------
        pla                                     ; 88DF 68                       h
        .byte   $74                             ; 88E0 74                       t
        adc     $64                             ; 88E1 65 64                    ed
        jsr     L4428                           ; 88E3 20 28 44                  (D
        .byte   $72                             ; 88E6 72                       r
        adc     #$76                            ; 88E7 69 76                    iv
        adc     $20                             ; 88E9 65 20                    e 
        ror     L6D75                           ; 88EB 6E 75 6D                 num
        .byte   $62                             ; 88EE 62                       b
        adc     $72                             ; 88EF 65 72                    er
        .byte   $3F                             ; 88F1 3F                       ?
        lda     ($29),y                         ; 88F2 B1 29                    .)
        rol     L4420                           ; 88F4 2E 20 44                 . D
        .byte   $4F                             ; 88F7 4F                       O
        .byte   $53                             ; 88F8 53                       S
        .byte   $9B                             ; 88F9 9B                       .
        bvs     L8965                           ; 88FA 70 69                    pi
        .byte   $63                             ; 88FC 63                       c
        .byte   $6B                             ; 88FD 6B                       k
        .byte   $73                             ; 88FE 73                       s
	.byte	" th"
        adc     $73                             ; 8902 65 73                    es
        adc     $20                             ; 8904 65 20                    e 
        bvs     L897A                           ; 8906 70 72                    pr
        adc     $73                             ; 8908 65 73                    es
        adc     $74                             ; 890A 65 74                    et
        jsr     L6176                           ; 890C 20 76 61                  va
        jmp     (L6575)                         ; 890F 6C 75 65                 lue

; ----------------------------------------------------------------------------
        .byte   $73                             ; 8912 73                       s
        jsr     L6428                           ; 8913 20 28 64                  (d
        adc     $66                             ; 8916 65 66                    ef
        adc     ($75,x)                         ; 8918 61 75                    au
        jmp     (L7374)                         ; 891A 6C 74 73                 lts

; ----------------------------------------------------------------------------
        and     #$9B                            ; 891D 29 9B                    ).
        ror     $6F                             ; 891F 66 6F                    fo
        .byte   $72                             ; 8921 72                       r
        jsr     L6F79                           ; 8922 20 79 6F                  yo
        adc     $20,x                           ; 8925 75 20                    u 
        .byte   $77                             ; 8927 77                       w
        pla                                     ; 8928 68                       h
        adc     $6E                             ; 8929 65 6E                    en
        jsr     L6F79                           ; 892B 20 79 6F                  yo
        adc     $20,x                           ; 892E 75 20                    u 
        bvs     L89A4                           ; 8930 70 72                    pr
        adc     $73                             ; 8932 65 73                    es
        .byte   $73                             ; 8934 73                       s
        jsr     L4552                           ; 8935 20 52 45                  RE
        .byte   $54                             ; 8938 54                       T
        .byte   $55                             ; 8939 55                       U
L893A:  .byte   $52                             ; 893A 52                       R
        lsr     $9B2E                           ; 893B 4E 2E 9B                 N..
        .byte   $9B                             ; 893E 9B                       .
        .byte   $54                             ; 893F 54                       T
        pla                                     ; 8940 68                       h
        adc     $20                             ; 8941 65 20                    e 
        .byte   $64                             ; 8943 64                       d
        adc     $66                             ; 8944 65 66                    ef
        adc     ($75,x)                         ; 8946 61 75                    au
        jmp     (L2074)                         ; 8948 6C 74 20                 lt 

; ----------------------------------------------------------------------------
        ror     $69                             ; 894B 66 69                    fi
        jmp     (L7365)                         ; 894D 6C 65 73                 les

; ----------------------------------------------------------------------------
	.byte	"pe"
        .byte   $63                             ; 8952 63                       c
        jsr     L7369                           ; 8953 20 69 73                  is
        jsr     L3144                           ; 8956 20 44 31                  D1
        .byte   $3A                             ; 8959 3A                       :
        rol     a                               ; 895A 2A                       *
        rol     $202A                           ; 895B 2E 2A 20                 .* 
        plp                                     ; 895E 28                       (
        adc     ($6C,x)                         ; 895F 61 6C                    al
        jmp     (L669B)                         ; 8961 6C 9B 66                 l.f

; ----------------------------------------------------------------------------
        .byte   $69                             ; 8964 69                       i
L8965:  jmp     (L7365)                         ; 8965 6C 65 73                 les

; ----------------------------------------------------------------------------
	.byte	" on th"
        adc     $20                             ; 896E 65 20                    e 
        .byte   $64                             ; 8970 64                       d
        adc     #$73                            ; 8971 69 73                    is
        .byte   $6B                             ; 8973 6B                       k
	.byte	" in"
        jsr     L7264                           ; 8977 20 64 72                  dr
L897A:  adc     #$76                            ; 897A 69 76                    iv
        adc     $20                             ; 897C 65 20                    e 
        and     ($29),y                         ; 897E 31 29                    1)
        rol     $9B9B                           ; 8980 2E 9B 9B                 ...
        .byte   $57                             ; 8983 57                       W
        pla                                     ; 8984 68                       h
        adc     $6E                             ; 8985 65 6E                    en
        jsr     L7375                           ; 8987 20 75 73                  us
        adc     #$6E                            ; 898A 69 6E                    in
        .byte   $67                             ; 898C 67                       g
        jsr     L6977                           ; 898D 20 77 69                  wi
	.byte	"ldc"
        adc     ($72,x)                         ; 8993 61 72                    ar
        .byte   $64                             ; 8995 64                       d
        .byte   $73                             ; 8996 73                       s
        bit     L4420                           ; 8997 2C 20 44                 , D
        .byte   $4F                             ; 899A 4F                       O
        .byte   $53                             ; 899B 53                       S
        jsr     L7361                           ; 899C 20 61 73                  as
        .byte   $6B                             ; 899F 6B                       k
        .byte   $73                             ; 89A0 73                       s
        jsr     L6F79                           ; 89A1 20 79 6F                  yo
L89A4:  adc     $9B,x                           ; 89A4 75 9B                    u.
	.byte	"if you want to act on all files:",$9B
        ldy     $F5E6,x                         ; 89C7 BC E6 F5                 ...
        inc     $F4E3                           ; 89CA EE E3 F4                 ...
        sbc     #$EF                            ; 89CD E9 EF                    ..
        inc     $A0BE                           ; 89CF EE BE A0                 ...
        sbc     ($EC,x)                         ; 89D2 E1 EC                    ..
        cpx     $F3A0                           ; 89D4 EC A0 F3                 ...
	.byte	$F0,$E5
        .byte   $E3                             ; 89D9 E3                       .
        sbc     #$E6                            ; 89DA E9 E6                    ..
        sbc     #$E5                            ; 89DC E9 E5                    ..
        cpx     $A0                             ; 89DE E4 A0                    ..
        inc     $E9                             ; 89E0 E6 E9                    ..
        cpx     $F3E5                           ; 89E2 EC E5 F3                 ...
        ldy     #$A8                            ; 89E5 A0 A8                    ..
        cmp     $CEAF,y                         ; 89E7 D9 AF CE                 ...
        lda     #$BF                            ; 89EA A9 BF                    ..
        .byte   $9B                             ; 89EC 9B                       .
        .byte   $9B                             ; 89ED 9B                       .
	.byte	"Press Y to process all files auto-",$9B
	.byte	"matically.  Press N or RETURN to",$9B
	.byte	"process files one at a time.",$9B
        .byte   $47                             ; 8A4F 47                       G
        adc     $6E                             ; 8A50 65 6E                    en
        adc     $72                             ; 8A52 65 72                    er
        adc     ($6C,x)                         ; 8A54 61 6C                    al
        jsr     L6E49                           ; 8A56 20 49 6E                  In
        ror     $6F                             ; 8A59 66 6F                    fo
        .byte   $72                             ; 8A5B 72                       r
        adc     L7461                           ; 8A5C 6D 61 74                 mat
        adc     #$6F                            ; 8A5F 69 6F                    io
        .byte   $6E                             ; 8A61 6E                       n
L8A62:  jsr     L2020                           ; 8A62 20 20 20                    
        jsr     L2020                           ; 8A65 20 20 20                    
        jsr     L2020                           ; 8A68 20 20 20                    
        jsr     L2020                           ; 8A6B 20 20 20                    
        and     $20,x                           ; 8A6E 35 20                    5 
        .byte   $6F                             ; 8A70 6F                       o
        ror     $20                             ; 8A71 66 20                    f 
        rol     $9B,x                           ; 8A73 36 9B                    6.
        .byte   $9B                             ; 8A75 9B                       .
	.byte	"As noted in the previous screens,",$9B
        .byte   $74                             ; 8A98 74                       t
        pla                                     ; 8A99 68                       h
        adc     $20                             ; 8A9A 65 20                    e 
        .byte   $52                             ; 8A9C 52                       R
        eor     $54                             ; 8A9D 45 54                    ET
        eor     $52,x                           ; 8A9F 55 52                    UR
        lsr     L6B20                           ; 8AA1 4E 20 6B                 N k
        adc     $79                             ; 8AA4 65 79                    ey
L8AA6:  jsr     L7369                           ; 8AA6 20 69 73                  is
        jsr     L7375                           ; 8AA9 20 75 73                  us
        adc     $64                             ; 8AAC 65 64                    ed
        .byte   $3A                             ; 8AAE 3A                       :
        .byte   $9B                             ; 8AAF 9B                       .
        .byte   $9B                             ; 8AB0 9B                       .
        jsr     L2020                           ; 8AB1 20 20 20                    
        plp                                     ; 8AB4 28                       (
        adc     ($29,x)                         ; 8AB5 61 29                    a)
        jsr     L6F74                           ; 8AB7 20 74 6F                  to
        jsr     L6973                           ; 8ABA 20 73 69                  si
        .byte   $67                             ; 8ABD 67                       g
        ror     L6C61                           ; 8ABE 6E 61 6C                 nal
	.byte	" th"
        adc     $20                             ; 8AC4 65 20                    e 
        adc     $6E                             ; 8AC6 65 6E                    en
        .byte   $64                             ; 8AC8 64                       d
        jsr     L666F                           ; 8AC9 20 6F 66                  of
        jsr     L6F79                           ; 8ACC 20 79 6F                  yo
        adc     $72,x                           ; 8ACF 75 72                    ur
        .byte   $9B                             ; 8AD1 9B                       .
        jsr     L2020                           ; 8AD2 20 20 20                    
        jsr     L2020                           ; 8AD5 20 20 20                    
        jsr     L6572                           ; 8AD8 20 72 65                  re
        .byte   $73                             ; 8ADB 73                       s
        bvs     L8B4D                           ; 8ADC 70 6F                    po
        ror     L6573                           ; 8ADE 6E 73 65                 nse
        jsr     L6F74                           ; 8AE1 20 74 6F                  to
        jsr     L2061                           ; 8AE4 20 61 20                  a 
        bvs     L8B5B                           ; 8AE7 70 72                    pr
        .byte   $6F                             ; 8AE9 6F                       o
        adc     L7470                           ; 8AEA 6D 70 74                 mpt
        bit     L6120                           ; 8AED 2C 20 61                 , a
        ror     $9B64                           ; 8AF0 6E 64 9B                 nd.
        jsr     L2020                           ; 8AF3 20 20 20                    
        plp                                     ; 8AF6 28                       (
        .byte   $62                             ; 8AF7 62                       b
        and     #$20                            ; 8AF8 29 20                    ) 
L8AFA:  .byte   $74                             ; 8AFA 74                       t
        .byte   $6F                             ; 8AFB 6F                       o
        jsr     L6573                           ; 8AFC 20 73 65                  se
        .byte	"lec"

; ----------------------------------------------------------------------------
        .byte   $74                             ; 8B02 74                       t
	.byte	" th"
        adc     $20                             ; 8B06 65 20                    e 
        .byte   $64                             ; 8B08 64                       d
        adc     $66                             ; 8B09 65 66                    ef
        adc     ($75,x)                         ; 8B0B 61 75                    au
        jmp     (L2074)                         ; 8B0D 6C 74 20                 lt 

; ----------------------------------------------------------------------------
        ror     $61,x                           ; 8B10 76 61                    va
        jmp     (L6575)                         ; 8B12 6C 75 65                 lue

; ----------------------------------------------------------------------------
        .byte   $9B                             ; 8B15 9B                       .
        jsr     L2020                           ; 8B16 20 20 20                    
        jsr     L2020                           ; 8B19 20 20 20                    
	.byte	" in"
        jsr     L6572                           ; 8B1F 20 72 65                  re
        .byte   $73                             ; 8B22 73                       s
	.byte	"po"
        ror     L6573                           ; 8B25 6E 73 65                 nse
        jsr     L6F74                           ; 8B28 20 74 6F                  to
        jsr     L2061                           ; 8B2B 20 61 20                  a 
	.byte	"pr"
        .byte   $6F                             ; 8B30 6F                       o
        adc     L7470                           ; 8B31 6D 70 74                 mpt
        rol     $9B9B                           ; 8B34 2E 9B 9B                 ...
        .byte   $54                             ; 8B37 54                       T
        pla                                     ; 8B38 68                       h
        adc     $72                             ; 8B39 65 72                    er
        adc     $20                             ; 8B3B 65 20                    e 
        adc     ($72,x)                         ; 8B3D 61 72                    ar
        adc     $20                             ; 8B3F 65 20                    e 
        .byte   $74                             ; 8B41 74                       t
        .byte   $77                             ; 8B42 77                       w
        .byte   $6F                             ; 8B43 6F                       o
        jsr     L6F6D                           ; 8B44 20 6D 6F                  mo
        .byte   $72                             ; 8B47 72                       r
        adc     $20                             ; 8B48 65 20                    e 
        bvs     L8BBB                           ; 8B4A 70 6F                    po
        .byte   $69                             ; 8B4C 69                       i
L8B4D:  ror     L7374                           ; 8B4D 6E 74 73                 nts
        jsr     L6F74                           ; 8B50 20 74 6F                  to
        jsr     L6F6E                           ; 8B53 20 6E 6F                  no
        .byte   $74                             ; 8B56 74                       t
        adc     $3A                             ; 8B57 65 3A                    e:
        .byte   $9B                             ; 8B59 9B                       .
        .byte   $9B                             ; 8B5A 9B                       .
L8B5B:  and     ($2E),y                         ; 8B5B 31 2E                    1.
        jsr     L6857                           ; 8B5D 20 57 68                  Wh
        adc     $6E                             ; 8B60 65 6E                    en
	.byte	" in"
        jsr     L6F64                           ; 8B65 20 64 6F                  do
        adc     $62,x                           ; 8B68 75 62                    ub
        .byte   $74                             ; 8B6A 74                       t
        bit     L5220                           ; 8B6B 2C 20 52                 , R
        eor     $54                             ; 8B6E 45 54                    ET
        eor     $52,x                           ; 8B70 55 52                    UR
        lsr     L6920                           ; 8B72 4E 20 69                 N i
        .byte   $73                             ; 8B75 73                       s
        jsr     L6173                           ; 8B76 20 73 61                  sa
        ror     $65                             ; 8B79 66 65                    fe
        rol     L4920                           ; 8B7B 2E 20 49                 . I
        ror     $9B                             ; 8B7E 66 9B                    f.
	.byte	"   you answer RETURN to a prompt, DOS",$9B
        jsr     L2020                           ; 8BA6 20 20 20                    
        ror     L7665                           ; 8BA9 6E 65 76                 nev
        adc     $72                             ; 8BAC 65 72                    er
        jsr     L6F64                           ; 8BAE 20 64 6F                  do
        adc     $73                             ; 8BB1 65 73                    es
	.byte	" an"
	.byte	"yth"
        adc     #$6E                            ; 8BB9 69 6E                    in
L8BBB:  .byte   $67                             ; 8BBB 67                       g
        jsr     L6F74                           ; 8BBC 20 74 6F                  to
        jsr     L6F79                           ; 8BBF 20 79 6F                  yo
        adc     $72,x                           ; 8BC2 75 72                    ur
        jsr     L6966                           ; 8BC4 20 66 69                  fi
        jmp     (L7365)                         ; 8BC7 6C 65 73                 les

; ----------------------------------------------------------------------------
        rol     $9B9B                           ; 8BCA 2E 9B 9B                 ...
        .byte   $32                             ; 8BCD 32                       2
        rol     L5720                           ; 8BCE 2E 20 57                 . W
        pla                                     ; 8BD1 68                       h
        adc     $6E                             ; 8BD2 65 6E                    en
        .byte   $20                             ; 8BD4 20                        
L8BD5:  .byte   $44                             ; 8BD5 44                       D
        .byte   $4F                             ; 8BD6 4F                       O
        .byte   $53                             ; 8BD7 53                       S
        jsr     L7361                           ; 8BD8 20 61 73                  as
        .byte   $6B                             ; 8BDB 6B                       k
        .byte   $73                             ; 8BDC 73                       s
        .byte   $02                             ; 8BDD 02                       .
        ldy     $F5E6,x                         ; 8BDE BC E6 F5                 ...
        inc     $F4E3                           ; 8BE1 EE E3 F4                 ...
        sbc     #$EF                            ; 8BE4 E9 EF                    ..
        inc     $A0BE                           ; 8BE6 EE BE A0                 ...
        sbc     ($EC,x)                         ; 8BE9 E1 EC                    ..
        cpx     $F3A0                           ; 8BEB EC A0 F3                 ...
        beq     L8BD5                           ; 8BEE F0 E5                    ..
        .byte   $E3                             ; 8BF0 E3                       .
        lda     L209B                           ; 8BF1 AD 9B 20                 .. 
        jsr     LE902                           ; 8BF4 20 02 E9                  ..
        inc     $E9                             ; 8BF7 E6 E9                    ..
        sbc     $E4                             ; 8BF9 E5 E4                    ..
        ldy     #$E6                            ; 8BFB A0 E6                    ..
        sbc     #$EC                            ; 8BFD E9 EC                    ..
        sbc     $F3                             ; 8BFF E5 F3                    ..
        ldy     #$A8                            ; 8C01 A0 A8                    ..
        cmp     $CEAF,y                         ; 8C03 D9 AF CE                 ...
        lda     #$BF                            ; 8C06 A9 BF                    ..
	.byte	$16
	.byte	"Press RETURN",$9B
	.byte	"   to see each filename in filespec.",$9B
	.byte	"General Information            6 of 6",$9B,$9B
	.byte	"You know about using HELP or ATARI,",$9B
	.byte	"ESC, and RETURN keys.  But there are",$9B
	.byte	"four other special uses for the",$9B
	.byte	"following keys:",$9B,$9B
        and     ($2E),y                         ; 8CDC 31 2E                    1.
        .byte   $02                             ; 8CDE 02                       .
        .byte   $D3                             ; 8CDF D3                       .
        iny                                     ; 8CE0 C8                       .
        cmp     #$C6                            ; 8CE1 C9 C6                    ..
        .byte   $D4                             ; 8CE3 D4                       .
        lda     $CCC3                           ; 8CE4 AD C3 CC                 ...
        cmp     $C1                             ; 8CE7 C5 C1                    ..
        .byte   $D2                             ; 8CE9 D2                       .
        asl     $63,x                           ; 8CEA 16 63                    .c
        adc     ($75,x)                         ; 8CEC 61 75                    au
        .byte   $73                             ; 8CEE 73                       s
        adc     $73                             ; 8CEF 65 73                    es
        jsr     L2061                           ; 8CF1 20 61 20                  a 
        .byte   $44                             ; 8CF4 44                       D
        .byte   $4F                             ; 8CF5 4F                       O
        .byte   $53                             ; 8CF6 53                       S
	.byte	" fu"
        ror     L7463                           ; 8CFA 6E 63 74                 nct
        adc     #$6F                            ; 8CFD 69 6F                    io
        ror     L209B                           ; 8CFF 6E 9B 20                 n. 
	.byte	"  t"
        .byte   $6F                             ; 8D05 6F                       o
        jsr     L6572                           ; 8D06 20 72 65                  re
        .byte   $73                             ; 8D09 73                       s
        .byte   $74                             ; 8D0A 74                       t
        adc     ($72,x)                         ; 8D0B 61 72                    ar
        .byte   $74                             ; 8D0D 74                       t
        jsr     L7266                           ; 8D0E 20 66 72                  fr
        .byte   $6F                             ; 8D11 6F                       o
	.byte	"m t"
        pla                                     ; 8D15 68                       h
        adc     $20                             ; 8D16 65 20                    e 
        ror     $69                             ; 8D18 66 69                    fi
        .byte   $72                             ; 8D1A 72                       r
        .byte   $73                             ; 8D1B 73                       s
        .byte   $74                             ; 8D1C 74                       t
	.byte	" pr"
        .byte   $6F                             ; 8D20 6F                       o
        adc     L7470                           ; 8D21 6D 70 74                 mpt
        .byte   $9B                             ; 8D24 9B                       .
        jsr     L2020                           ; 8D25 20 20 20                    
        ror     $6F                             ; 8D28 66 6F                    fo
        .byte   $72                             ; 8D2A 72                       r
        jsr     L6164                           ; 8D2B 20 64 61                  da
        .byte   $74                             ; 8D2E 74                       t
        adc     ($2E,x)                         ; 8D2F 61 2E                    a.
        .byte   $9B                             ; 8D31 9B                       .
        .byte   $9B                             ; 8D32 9B                       .
        .byte   $32                             ; 8D33 32                       2
        rol     $D302                           ; 8D34 2E 02 D3                 ...
        iny                                     ; 8D37 C8                       .
        cmp     #$C6                            ; 8D38 C9 C6                    ..
        .byte   $D4                             ; 8D3A D4                       .
        lda     $C5C4                           ; 8D3B AD C4 C5                 ...
        cpy     $D4C5                           ; 8D3E CC C5 D4                 ...
        cmp     $16                             ; 8D41 C5 16                    ..
        .byte   $64                             ; 8D43 64                       d
        .byte   $65                             ; 8D44 65                       e
L8D45:  jmp     (L7465)                         ; 8D45 6C 65 74                 let

; ----------------------------------------------------------------------------
        adc     $73                             ; 8D48 65 73                    es
        jsr     L6F79                           ; 8D4A 20 79 6F                  yo
        adc     $72,x                           ; 8D4D 75 72                    ur
        jsr     L6572                           ; 8D4F 20 72 65                  re
        .byte   $73                             ; 8D52 73                       s
        bvs     L8DC4                           ; 8D53 70 6F                    po
        ror     L6573                           ; 8D55 6E 73 65                 nse
        .byte   $9B                             ; 8D58 9B                       .
        jsr     L2020                           ; 8D59 20 20 20                    
        .byte   $74                             ; 8D5C 74                       t
        .byte   $6F                             ; 8D5D 6F                       o
	.byte	" th"
        adc     $20                             ; 8D61 65 20                    e 
        .byte   $63                             ; 8D63 63                       c
        adc     $72,x                           ; 8D64 75 72                    ur
        .byte   $72                             ; 8D66 72                       r
        adc     $6E                             ; 8D67 65 6E                    en
        .byte   $74                             ; 8D69 74                       t
	.byte	" pr"
        .byte   $6F                             ; 8D6D 6F                       o
        adc     L7470                           ; 8D6E 6D 70 74                 mpt
	.byte	" only.",$9B,$9B
        .byte   $33                             ; 8D79 33                       3
        rol     $C202                           ; 8D7A 2E 02 C2                 ...
        cmp     ($C3,x)                         ; 8D7D C1 C3                    ..
        .byte   $CB                             ; 8D7F CB                       .
        ldy     #$D3                            ; 8D80 A0 D3                    ..
        bne     L8D45                           ; 8D82 D0 C1                    ..
        .byte   $C3                             ; 8D84 C3                       .
        cmp     $16                             ; 8D85 C5 16                    ..
        adc     $72                             ; 8D87 65 72                    er
        adc     ($73,x)                         ; 8D89 61 73                    as
        adc     $73                             ; 8D8B 65 73                    es
	.byte	" th"
        adc     $20                             ; 8D90 65 20                    e 
        .byte   $63                             ; 8D92 63                       c
        pla                                     ; 8D93 68                       h
        adc     ($72,x)                         ; 8D94 61 72                    ar
        adc     ($63,x)                         ; 8D96 61 63                    ac
        .byte   $74                             ; 8D98 74                       t
        adc     $72                             ; 8D99 65 72                    er
        .byte   $9B                             ; 8D9B 9B                       .
        jsr     L2020                           ; 8D9C 20 20 20                    
        .byte	"pr"
        adc     $63                             ; 8DA1 65 63                    ec
        adc     $65                             ; 8DA3 65 65                    ee
        .byte   $64                             ; 8DA5 64                       d
        adc     #$6E                            ; 8DA6 69 6E                    in
        .byte   $67                             ; 8DA8 67                       g
	.byte	" th"
        adc     $20                             ; 8DAC 65 20                    e 
        .byte   $63                             ; 8DAE 63                       c
        adc     $72,x                           ; 8DAF 75 72                    ur
        .byte   $73                             ; 8DB1 73                       s
        .byte   $6F                             ; 8DB2 6F                       o
        .byte   $72                             ; 8DB3 72                       r
        rol     $9B9B                           ; 8DB4 2E 9B 9B                 ...
        .byte   $34                             ; 8DB7 34                       4
        rol     $C302                           ; 8DB8 2E 02 C3                 ...
        .byte   $D4                             ; 8DBB D4                       .
        .byte   $D2                             ; 8DBC D2                       .
        cpy     $ADAD                           ; 8DBD CC AD AD                 ...
        ldx     $C3AF,y                         ; 8DC0 BE AF C3                 ...
        .byte   $D4                             ; 8DC3 D4                       .
L8DC4:  .byte   $D2                             ; 8DC4 D2                       .
        cpy     $ADBC                           ; 8DC5 CC BC AD                 ...
        lda     L6D16                           ; 8DC8 AD 16 6D                 ..m
        .byte   $6F                             ; 8DCB 6F                       o
        ror     $65,x                           ; 8DCC 76 65                    ve
	.byte	" th"
        adc     $20                             ; 8DD1 65 20                    e 
        .byte   $63                             ; 8DD3 63                       c
        adc     $72,x                           ; 8DD4 75 72                    ur
        .byte   $73                             ; 8DD6 73                       s
        .byte   $6F                             ; 8DD7 6F                       o
        .byte   $72                             ; 8DD8 72                       r
        .byte   $9B                             ; 8DD9 9B                       .
        jsr     L2020                           ; 8DDA 20 20 20                    
        .byte   $77                             ; 8DDD 77                       w
        adc     #$74                            ; 8DDE 69 74                    it
        pla                                     ; 8DE0 68                       h
        .byte   $6F                             ; 8DE1 6F                       o
        adc     $74,x                           ; 8DE2 75 74                    ut
        jsr     L7265                           ; 8DE4 20 65 72                  er
        adc     ($73,x)                         ; 8DE7 61 73                    as
        adc     #$6E                            ; 8DE9 69 6E                    in
        .byte   $67                             ; 8DEB 67                       g
	.byte	" an"
        adc     L6320,y                         ; 8DEF 79 20 63                 y c
        pla                                     ; 8DF2 68                       h
        adc     ($72,x)                         ; 8DF3 61 72                    ar
        adc     ($63,x)                         ; 8DF5 61 63                    ac
        .byte   $74                             ; 8DF7 74                       t
        adc     $72                             ; 8DF8 65 72                    er
        .byte   $73                             ; 8DFA 73                       s
        rol     $389B                           ; 8DFB 2E 9B 38                 ..8
        .byte   $33                             ; 8DFE 33                       3
        .byte	"08"
        .byte   $33                             ; 8E01 33                       3
        and     ($56),y                         ; 8E02 31 56                    1V
L8E04:  .byte   $33                             ; 8E04 33                       3

; ----------------------------------------------------------------------------

	.SEGMENT	"SEG2H"

	.word	$02E0
	.word	$02E1
	
; ----------------------------------------------------------------------------

	.SEGMENT	"SEG2"

	.word	$0000
	
