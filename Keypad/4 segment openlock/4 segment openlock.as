opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
;COMMON:	_main->___awdiv
	FNCALL	_main,_configure
	FNCALL	_main,_call
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_call,_time_delay
	FNCALL	_configure,_time_delay
	FNROOT	_main
	global	_number
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
	line	98

;initializer for _number
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	067h
	global	_a
	global	_b
	global	_count
	global	_i
	global	_j
	global	_p
	global	_q
	global	_sum
	global	_z
	global	_k
	global	_var
	global	_ADCON0
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTD
_PORTD  equ     8
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_C1IF
_C1IF  equ     109
	global	_C2IF
_C2IF  equ     110
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     250
	global	_CHS1
_CHS1  equ     251
	global	_CHS2
_CHS2  equ     252
	global	_CHS3
_CHS3  equ     253
	global	_CKP
_CKP  equ     164
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_DC1B0
_DC1B0  equ     188
	global	_DC1B1
_DC1B1  equ     189
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     249
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_OSFIF
_OSFIF  equ     111
	global	_P1M0
_P1M0  equ     190
	global	_P1M1
_P1M1  equ     191
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RA6
_RA6  equ     46
	global	_RA7
_RA7  equ     47
	global	_RABIE
_RABIE  equ     91
	global	_RABIF
_RABIF  equ     88
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RD0
_RD0  equ     64
	global	_RD1
_RD1  equ     65
	global	_RD2
_RD2  equ     66
	global	_RD3
_RD3  equ     67
	global	_RD4
_RD4  equ     68
	global	_RD5
_RD5  equ     69
	global	_RD6
_RD6  equ     70
	global	_RD7
_RD7  equ     71
	global	_RE0
_RE0  equ     72
	global	_RE1
_RE1  equ     73
	global	_RE2
_RE2  equ     74
	global	_RE3
_RE3  equ     75
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1GINV
_T1GINV  equ     135
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1GE
_TMR1GE  equ     134
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_ULPWUIF
_ULPWUIF  equ     106
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_ECCPAS
_ECCPAS  equ     156
	global	_IOCB
_IOCB  equ     150
	global	_OPTION
_OPTION  equ     129
	global	_OSCCON
_OSCCON  equ     143
	global	_OSCTUNE
_OSCTUNE  equ     144
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_PSTRCON
_PSTRCON  equ     157
	global	_PWM1CON
_PWM1CON  equ     155
	global	_SPBRG
_SPBRG  equ     153
	global	_SPBRGH
_SPBRGH  equ     154
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPMSK
_SSPMSK  equ     147
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISD
_TRISD  equ     136
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_VRCON
_VRCON  equ     151
	global	_WPUB
_WPUB  equ     149
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRG0
_BRG0  equ     1224
	global	_BRG1
_BRG1  equ     1225
	global	_BRG10
_BRG10  equ     1234
	global	_BRG11
_BRG11  equ     1235
	global	_BRG12
_BRG12  equ     1236
	global	_BRG13
_BRG13  equ     1237
	global	_BRG14
_BRG14  equ     1238
	global	_BRG15
_BRG15  equ     1239
	global	_BRG2
_BRG2  equ     1226
	global	_BRG3
_BRG3  equ     1227
	global	_BRG4
_BRG4  equ     1228
	global	_BRG5
_BRG5  equ     1229
	global	_BRG6
_BRG6  equ     1230
	global	_BRG7
_BRG7  equ     1231
	global	_BRG8
_BRG8  equ     1232
	global	_BRG9
_BRG9  equ     1233
	global	_BRGH
_BRGH  equ     1218
	global	_C1IE
_C1IE  equ     1133
	global	_C2IE
_C2IE  equ     1134
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CKE
_CKE  equ     1190
	global	_CSRC
_CSRC  equ     1223
	global	_DA
_DA  equ     1189
	global	_ECCPAS0
_ECCPAS0  equ     1252
	global	_ECCPAS1
_ECCPAS1  equ     1253
	global	_ECCPAS2
_ECCPAS2  equ     1254
	global	_ECCPASE
_ECCPASE  equ     1255
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_HTS
_HTS  equ     1146
	global	_INTEDG
_INTEDG  equ     1038
	global	_IOCB0
_IOCB0  equ     1200
	global	_IOCB1
_IOCB1  equ     1201
	global	_IOCB2
_IOCB2  equ     1202
	global	_IOCB3
_IOCB3  equ     1203
	global	_IOCB4
_IOCB4  equ     1204
	global	_IOCB5
_IOCB5  equ     1205
	global	_IOCB6
_IOCB6  equ     1206
	global	_IOCB7
_IOCB7  equ     1207
	global	_IRCF0
_IRCF0  equ     1148
	global	_IRCF1
_IRCF1  equ     1149
	global	_IRCF2
_IRCF2  equ     1150
	global	_LTS
_LTS  equ     1145
	global	_OSFIE
_OSFIE  equ     1135
	global	_OSTS
_OSTS  equ     1147
	global	_PDC0
_PDC0  equ     1240
	global	_PDC1
_PDC1  equ     1241
	global	_PDC2
_PDC2  equ     1242
	global	_PDC3
_PDC3  equ     1243
	global	_PDC4
_PDC4  equ     1244
	global	_PDC5
_PDC5  equ     1245
	global	_PDC6
_PDC6  equ     1246
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PRSEN
_PRSEN  equ     1247
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSSAC0
_PSSAC0  equ     1250
	global	_PSSAC1
_PSSAC1  equ     1251
	global	_PSSBD0
_PSSBD0  equ     1248
	global	_PSSBD1
_PSSBD1  equ     1249
	global	_RABPU
_RABPU  equ     1039
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SBOREN
_SBOREN  equ     1140
	global	_SCS
_SCS  equ     1144
	global	_SEN
_SEN  equ     1160
	global	_SENDB
_SENDB  equ     1219
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_STRA
_STRA  equ     1256
	global	_STRB
_STRB  equ     1257
	global	_STRC
_STRC  equ     1258
	global	_STRD
_STRD  equ     1259
	global	_STRSYNC
_STRSYNC  equ     1260
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISA6
_TRISA6  equ     1070
	global	_TRISA7
_TRISA7  equ     1071
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISD0
_TRISD0  equ     1088
	global	_TRISD1
_TRISD1  equ     1089
	global	_TRISD2
_TRISD2  equ     1090
	global	_TRISD3
_TRISD3  equ     1091
	global	_TRISD4
_TRISD4  equ     1092
	global	_TRISD5
_TRISD5  equ     1093
	global	_TRISD6
_TRISD6  equ     1094
	global	_TRISD7
_TRISD7  equ     1095
	global	_TRISE0
_TRISE0  equ     1096
	global	_TRISE1
_TRISE1  equ     1097
	global	_TRISE2
_TRISE2  equ     1098
	global	_TRISE3
_TRISE3  equ     1099
	global	_TRMT
_TRMT  equ     1217
	global	_TUN0
_TUN0  equ     1152
	global	_TUN1
_TUN1  equ     1153
	global	_TUN2
_TUN2  equ     1154
	global	_TUN3
_TUN3  equ     1155
	global	_TUN4
_TUN4  equ     1156
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_ULPWUE
_ULPWUE  equ     1141
	global	_ULPWUIE
_ULPWUIE  equ     1130
	global	_VCFG0
_VCFG0  equ     1276
	global	_VCFG1
_VCFG1  equ     1277
	global	_VR0
_VR0  equ     1208
	global	_VR1
_VR1  equ     1209
	global	_VR2
_VR2  equ     1210
	global	_VR3
_VR3  equ     1211
	global	_VREN
_VREN  equ     1215
	global	_VROE
_VROE  equ     1214
	global	_VRR
_VRR  equ     1213
	global	_VRSS
_VRSS  equ     1212
	global	_WPUB0
_WPUB0  equ     1192
	global	_WPUB1
_WPUB1  equ     1193
	global	_WPUB2
_WPUB2  equ     1194
	global	_WPUB3
_WPUB3  equ     1195
	global	_WPUB4
_WPUB4  equ     1196
	global	_WPUB5
_WPUB5  equ     1197
	global	_WPUB6
_WPUB6  equ     1198
	global	_WPUB7
_WPUB7  equ     1199
	global	_CM1CON0
_CM1CON0  equ     263
	global	_CM2CON0
_CM2CON0  equ     264
	global	_CM2CON1
_CM2CON1  equ     265
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDAT
_EEDAT  equ     268
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_WDTCON
_WDTCON  equ     261
	global	_C1CH0
_C1CH0  equ     2104
	global	_C1CH1
_C1CH1  equ     2105
	global	_C1OE
_C1OE  equ     2109
	global	_C1ON
_C1ON  equ     2111
	global	_C1OUT
_C1OUT  equ     2110
	global	_C1POL
_C1POL  equ     2108
	global	_C1R
_C1R  equ     2106
	global	_C1RSEL
_C1RSEL  equ     2125
	global	_C2CH0
_C2CH0  equ     2112
	global	_C2CH1
_C2CH1  equ     2113
	global	_C2OE
_C2OE  equ     2117
	global	_C2ON
_C2ON  equ     2119
	global	_C2OUT
_C2OUT  equ     2118
	global	_C2POL
_C2POL  equ     2116
	global	_C2R
_C2R  equ     2114
	global	_C2RSEL
_C2RSEL  equ     2124
	global	_C2SYNC
_C2SYNC  equ     2120
	global	_MC1OUT
_MC1OUT  equ     2127
	global	_MC2OUT
_MC2OUT  equ     2126
	global	_SWDTEN
_SWDTEN  equ     2088
	global	_T1GSS
_T1GSS  equ     2121
	global	_WDTPS0
_WDTPS0  equ     2089
	global	_WDTPS1
_WDTPS1  equ     2090
	global	_WDTPS2
_WDTPS2  equ     2091
	global	_WDTPS3
_WDTPS3  equ     2092
	global	_ANSEL
_ANSEL  equ     392
	global	_ANSELH
_ANSELH  equ     393
	global	_BAUDCTL
_BAUDCTL  equ     391
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_SRCON
_SRCON  equ     389
	global	_ABDEN
_ABDEN  equ     3128
	global	_ABDOVF
_ABDOVF  equ     3135
	global	_ANS0
_ANS0  equ     3136
	global	_ANS1
_ANS1  equ     3137
	global	_ANS10
_ANS10  equ     3146
	global	_ANS11
_ANS11  equ     3147
	global	_ANS12
_ANS12  equ     3148
	global	_ANS13
_ANS13  equ     3149
	global	_ANS2
_ANS2  equ     3138
	global	_ANS3
_ANS3  equ     3139
	global	_ANS4
_ANS4  equ     3140
	global	_ANS5
_ANS5  equ     3141
	global	_ANS6
_ANS6  equ     3142
	global	_ANS7
_ANS7  equ     3143
	global	_ANS8
_ANS8  equ     3144
	global	_ANS9
_ANS9  equ     3145
	global	_BRG16
_BRG16  equ     3131
	global	_C1SEN
_C1SEN  equ     3117
	global	_C2REN
_C2REN  equ     3116
	global	_EEPGD
_EEPGD  equ     3175
	global	_FVREN
_FVREN  equ     3112
	global	_PULSR
_PULSR  equ     3114
	global	_PULSS
_PULSS  equ     3115
	global	_RCIDL
_RCIDL  equ     3134
	global	_RD
_RD  equ     3168
	global	_SCKP
_SCKP  equ     3132
	global	_SR0
_SR0  equ     3118
	global	_SR1
_SR1  equ     3119
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
	global	_WUE
_WUE  equ     3129
	file	"4 segment openlock.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_k:
       ds      2

_var:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_b:
       ds      2

_count:
       ds      2

_i:
       ds      2

_j:
       ds      2

_p:
       ds      2

_q:
       ds      2

_sum:
       ds      2

_z:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
	line	98
_number:
       ds      10

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+012h)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_configure
??_configure: ;@ 0x0
	global	??___awdiv
??___awdiv: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	??_time_delay
??_time_delay: ;@ 0x0
	global	?_time_delay
?_time_delay: ;@ 0x0
	global	??_call
??_call: ;@ 0x0
	global	time_delay@x
time_delay@x:	; 2 bytes @ 0x0
	ds	1
	global	??_main
??_main: ;@ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	?_call
?_call: ;@ 0x2
	global	?_configure
?_configure: ;@ 0x2
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x2
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x2
	ds	1
	global	?___awmod
?___awmod: ;@ 0x3
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x3
	ds	2
	global	?___awdiv
?___awdiv: ;@ 0x5
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x5
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x5
	ds	2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	2
	global	?_main
?_main: ;@ 0x9
;Data sizes: Strings 0, constant 0, data 10, bss 22, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9      13
; BANK0           80      0      28
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___awmod	int  size(1); Largest target is 0
;?___awdiv	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  472   0.00
;          _configure
;               _call
;            ___awdiv
;            ___awmod
;  _call                                              0    0   16   0.00
;         _time_delay
;  ___awdiv                                           5    4  222   0.00
;                                    0 COMMO    9
;  _configure                                         0    0   16   0.00
;         _time_delay
;  ___awmod                                           3    4  218   0.00
;                                    0 COMMO    7
;    _time_delay                                      0    2   16   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      9       D       1       92.9%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      29       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      0      1C       5       35.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      29      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 133 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_configure
;		_call
;		___awdiv
;		___awmod
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
	line	133
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;openlock.c: 132: void main()
;openlock.c: 133: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	134
	
l30000714:	
;openlock.c: 134: TRISB=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000715:	
	line	135
;openlock.c: 135: TRISC=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	
l30000716:	
	line	136
;openlock.c: 136: TRISD=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(136)^080h	;volatile
	
l30000717:	
	line	138
;openlock.c: 138: PORTB=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000718:	
	line	139
;openlock.c: 139: PORTC=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(7)	;volatile
	
l30000719:	
	line	140
;openlock.c: 140: PORTD=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(8)	;volatile
	
l30000720:	
	line	142
;openlock.c: 142: ANSEL=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h
	
l30000721:	
	line	143
;openlock.c: 143: ANSELH=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(393)^0180h
	
l30000722:	
	line	147
;openlock.c: 146: {
;openlock.c: 147: configure();
	fcall	_configure
	
l30000723:	
	line	149
;openlock.c: 149: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
l30000724:	
	bcf	(52/8),(52)&7
	
l30000725:	
	bcf	(53/8),(53)&7
	
l30000726:	
	bcf	(54/8),(54)&7
	
l30000727:	
	line	150
;openlock.c: 150: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u441
	goto	u440
u441:
	goto	l19
u440:
	
l30000728:	
	line	152
;openlock.c: 151: {
;openlock.c: 152: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	line	153
;openlock.c: 153: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000730
	
l30000729:	
	line	155
;openlock.c: 155: {configure();}
	fcall	_configure
	
l30000730:	
	line	154
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u451
	goto	u450
u451:
	goto	l30000729
u450:
	
l19:	
	line	158
;openlock.c: 156: }
;openlock.c: 158: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u461
	goto	u460
u461:
	goto	l23
u460:
	
l30000731:	
	line	160
;openlock.c: 159: {
;openlock.c: 160: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	line	161
;openlock.c: 161: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000733
	
l30000732:	
	line	163
;openlock.c: 163: {configure();}
	fcall	_configure
	
l30000733:	
	line	162
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u471
	goto	u470
u471:
	goto	l30000732
u470:
	
l23:	
	line	165
;openlock.c: 164: }
;openlock.c: 165: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u481
	goto	u480
u481:
	goto	l27
u480:
	
l30000734:	
	line	167
;openlock.c: 166: {
;openlock.c: 167: var=3;
	movlw	low(03h)
	movwf	(_var)
	movlw	high(03h)
	movwf	((_var))+1
	line	168
;openlock.c: 168: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000736
	
l30000735:	
	line	170
;openlock.c: 170: {configure();}
	fcall	_configure
	
l30000736:	
	line	169
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u491
	goto	u490
u491:
	goto	l30000735
u490:
	
l27:	
	line	175
;openlock.c: 171: }
;openlock.c: 175: RB3=0,RB4=1,RB5=0,RB6=0;
	bcf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	176
;openlock.c: 176: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u501
	goto	u500
u501:
	goto	l31
u500:
	
l30000737:	
	line	178
;openlock.c: 177: {
;openlock.c: 178: var=4;
	movlw	low(04h)
	movwf	(_var)
	movlw	high(04h)
	movwf	((_var))+1
	line	179
;openlock.c: 179: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l32:	
	line	180
	btfsc	(48/8),(48)&7
	goto	u511
	goto	u510
u511:
	goto	l32
u510:
	
l31:	
	line	182
;openlock.c: 181: }
;openlock.c: 182: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u521
	goto	u520
u521:
	goto	l35
u520:
	
l30000738:	
	line	184
;openlock.c: 183: {
;openlock.c: 184: var=5;
	movlw	low(05h)
	movwf	(_var)
	movlw	high(05h)
	movwf	((_var))+1
	line	185
;openlock.c: 185: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000740
	
l30000739:	
	line	187
;openlock.c: 187: {configure();}
	fcall	_configure
	
l30000740:	
	line	186
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u531
	goto	u530
u531:
	goto	l30000739
u530:
	
l35:	
	line	189
;openlock.c: 188: }
;openlock.c: 189: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u541
	goto	u540
u541:
	goto	l39
u540:
	
l30000741:	
	line	191
;openlock.c: 190: {
;openlock.c: 191: var=6;
	movlw	low(06h)
	movwf	(_var)
	movlw	high(06h)
	movwf	((_var))+1
	line	192
;openlock.c: 192: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000743
	
l30000742:	
	line	194
;openlock.c: 194: {configure();}
	fcall	_configure
	
l30000743:	
	line	193
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u551
	goto	u550
u551:
	goto	l30000742
u550:
	
l39:	
	line	199
;openlock.c: 195: }
;openlock.c: 199: RB3=0,RB4=0,RB5=1,RB6=0;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	200
;openlock.c: 200: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u561
	goto	u560
u561:
	goto	l43
u560:
	
l30000744:	
	line	202
;openlock.c: 201: {
;openlock.c: 202: var=7;
	movlw	low(07h)
	movwf	(_var)
	movlw	high(07h)
	movwf	((_var))+1
	line	203
;openlock.c: 203: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000746
	
l30000745:	
	line	205
;openlock.c: 205: {configure();}
	fcall	_configure
	
l30000746:	
	line	204
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u571
	goto	u570
u571:
	goto	l30000745
u570:
	
l43:	
	line	207
;openlock.c: 206: }
;openlock.c: 207: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u581
	goto	u580
u581:
	goto	l47
u580:
	
l30000747:	
	line	209
;openlock.c: 208: {
;openlock.c: 209: var=8;
	movlw	low(08h)
	movwf	(_var)
	movlw	high(08h)
	movwf	((_var))+1
	line	210
;openlock.c: 210: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000749
	
l30000748:	
	line	212
;openlock.c: 212: {configure();}
	fcall	_configure
	
l30000749:	
	line	211
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u591
	goto	u590
u591:
	goto	l30000748
u590:
	
l47:	
	line	214
;openlock.c: 213: }
;openlock.c: 214: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u601
	goto	u600
u601:
	goto	l51
u600:
	
l30000750:	
	line	216
;openlock.c: 215: {
;openlock.c: 216: var=9;
	movlw	low(09h)
	movwf	(_var)
	movlw	high(09h)
	movwf	((_var))+1
	line	217
;openlock.c: 217: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000752
	
l30000751:	
	line	219
;openlock.c: 219: {configure();}
	fcall	_configure
	
l30000752:	
	line	218
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u611
	goto	u610
u611:
	goto	l30000751
u610:
	
l51:	
	line	224
;openlock.c: 220: }
;openlock.c: 224: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	226
;openlock.c: 226: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u621
	goto	u620
u621:
	goto	l55
u620:
	
l30000753:	
	line	228
;openlock.c: 227: {
;openlock.c: 228: var=0;
	movlw	low(0)
	movwf	(_var)
	movlw	high(0)
	movwf	((_var))+1
	line	229
;openlock.c: 229: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l30000755
	
l30000754:	
	line	231
;openlock.c: 231: {configure();}
	fcall	_configure
	
l30000755:	
	line	230
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u631
	goto	u630
u631:
	goto	l30000754
u630:
	
l55:	
	line	234
;openlock.c: 232: }
;openlock.c: 234: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u641
	goto	u640
u641:
	goto	l30000758
u640:
	
l30000756:	
	line	236
;openlock.c: 235: {
;openlock.c: 236: call();
	fcall	_call
	
l30000757:	
	line	237
;openlock.c: 237: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l60:	
	line	238
	btfsc	(48/8),(48)&7
	goto	u651
	goto	u650
u651:
	goto	l60
u650:
	
l30000758:	
	line	240
;openlock.c: 239: }
;openlock.c: 240: a=var/1000;
	movf	(_var+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_var),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(03E8h)
	movwf	0+(?___awdiv)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	241
;openlock.c: 241: z=var%1000;
	movf	(_var+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_var),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(03E8h)
	movwf	0+(?___awmod)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_z+1)
	addwf	(_z+1)
	movf	(0+(?___awmod)),w
	clrf	(_z)
	addwf	(_z)

	line	242
;openlock.c: 242: b=z/100;
	movf	(_z+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_z),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(064h)
	movwf	0+(?___awdiv)+02h
	movlw	high(064h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awdiv)),w
	clrf	(_b)
	addwf	(_b)

	line	243
;openlock.c: 243: k=var%100;
	movf	(_var+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_var),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(064h)
	movwf	0+(?___awmod)+02h
	movlw	high(064h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(_k+1)
	addwf	(_k+1)
	movf	(0+(?___awmod)),w
	clrf	(_k)
	addwf	(_k)

	line	244
;openlock.c: 244: p=k/10;
	movf	(_k+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_k),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_p+1)
	addwf	(_p+1)
	movf	(0+(?___awdiv)),w
	clrf	(_p)
	addwf	(_p)

	line	245
;openlock.c: 245: q=var%10;
	movf	(_var+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_var),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_q+1)
	addwf	(_q+1)
	movf	(0+(?___awmod)),w
	clrf	(_q)
	addwf	(_q)

	goto	l30000722
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	249
	signat	_main,88
	global	_call
psect	text28,local,class=CODE,delta=2
global __ptext28
__ptext28:

; *************** function _call *****************
; Defined at:
;		line 27 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_time_delay
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text28
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
	line	27
	global	__size_of_call
	__size_of_call	equ	__end_of_call-_call
;openlock.c: 26: void call()
;openlock.c: 27: {
	
_call:	
	opt stack 7
; Regs used in _call: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l30000761:	
;openlock.c: 28: if(count==10)
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u671
	goto	u670
u671:
	goto	l12
u670:
	
l8:	
	line	32
;openlock.c: 31: {
;openlock.c: 32: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	33
;openlock.c: 33: RD2=1;
	bsf	(66/8),(66)&7
	line	34
;openlock.c: 34: RD3=1;
	bsf	(67/8),(67)&7
	line	35
;openlock.c: 35: RD0=0;
	bcf	(64/8),(64)&7
	
l30000762:	
	line	36
;openlock.c: 36: PORTC=0X39;
	movlw	(039h)
	movwf	(7)	;volatile
	
l30000763:	
	line	37
;openlock.c: 37: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000764:	
	line	39
;openlock.c: 39: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000765:	
	line	40
;openlock.c: 40: RD2=1;
	bsf	(66/8),(66)&7
	
l30000766:	
	line	41
;openlock.c: 41: RD3=1;
	bsf	(67/8),(67)&7
	
l30000767:	
	line	42
;openlock.c: 42: RD1=0;
	bcf	(65/8),(65)&7
	
l30000768:	
	line	43
;openlock.c: 43: PORTC=0X77;
	movlw	(077h)
	movwf	(7)	;volatile
	line	44
;openlock.c: 44: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000769:	
	line	46
;openlock.c: 46: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000770:	
	line	47
;openlock.c: 47: RD1=1;
	bsf	(65/8),(65)&7
	
l30000771:	
	line	48
;openlock.c: 48: RD3=1;
	bsf	(67/8),(67)&7
	
l30000772:	
	line	49
;openlock.c: 49: RD2=0;
	bcf	(66/8),(66)&7
	
l30000773:	
	line	50
;openlock.c: 50: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	
l30000774:	
	line	51
;openlock.c: 51: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000775:	
	line	53
;openlock.c: 53: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000776:	
	line	54
;openlock.c: 54: RD1=1;
	bsf	(65/8),(65)&7
	
l30000777:	
	line	55
;openlock.c: 55: RD2=1;
	bsf	(66/8),(66)&7
	
l30000778:	
	line	56
;openlock.c: 56: RD3=0;
	bcf	(67/8),(67)&7
	line	57
;openlock.c: 57: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	
l30000779:	
	line	58
;openlock.c: 58: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	goto	l8
	
l12:	
	line	66
;openlock.c: 65: {
;openlock.c: 66: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	67
;openlock.c: 67: RD2=1;
	bsf	(66/8),(66)&7
	line	68
;openlock.c: 68: RD3=1;
	bsf	(67/8),(67)&7
	line	69
;openlock.c: 69: RD0=0;
	bcf	(64/8),(64)&7
	
l30000780:	
	line	70
;openlock.c: 70: PORTC=0X37;
	movlw	(037h)
	movwf	(7)	;volatile
	
l30000781:	
	line	71
;openlock.c: 71: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000782:	
	line	73
;openlock.c: 73: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000783:	
	line	74
;openlock.c: 74: RD2=1;
	bsf	(66/8),(66)&7
	
l30000784:	
	line	75
;openlock.c: 75: RD3=1;
	bsf	(67/8),(67)&7
	
l30000785:	
	line	76
;openlock.c: 76: RD1=0;
	bcf	(65/8),(65)&7
	
l30000786:	
	line	77
;openlock.c: 77: PORTC=0X3E;
	movlw	(03Eh)
	movwf	(7)	;volatile
	line	78
;openlock.c: 78: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000787:	
	line	80
;openlock.c: 80: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000788:	
	line	81
;openlock.c: 81: RD1=1;
	bsf	(65/8),(65)&7
	
l30000789:	
	line	82
;openlock.c: 82: RD3=1;
	bsf	(67/8),(67)&7
	
l30000790:	
	line	83
;openlock.c: 83: RD2=0;
	bcf	(66/8),(66)&7
	
l30000791:	
	line	84
;openlock.c: 84: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	
l30000792:	
	line	85
;openlock.c: 85: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000793:	
	line	87
;openlock.c: 87: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000794:	
	line	88
;openlock.c: 88: RD1=1;
	bsf	(65/8),(65)&7
	
l30000795:	
	line	89
;openlock.c: 89: RD2=1;
	bsf	(66/8),(66)&7
	
l30000796:	
	line	90
;openlock.c: 90: RD3=0;
	bcf	(67/8),(67)&7
	line	91
;openlock.c: 91: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	
l30000797:	
	line	92
;openlock.c: 92: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	goto	l12
	return
	opt stack 0
GLOBAL	__end_of_call
	__end_of_call:
; =============== function _call ends ============

psect	text29,local,class=CODE,delta=2
global __ptext29
__ptext29:
	line	96
	signat	_call,88
	global	___awdiv

; *************** function ___awdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    5[COMMON] int 
;  divisor         2    7[COMMON] int 
; Auto vars:     Size  Location     Type
;  quotient        2    3[COMMON] int 
;  sign            1    2[COMMON] unsigned char 
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    5[COMMON] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         9       0       0       0       0
;      Temp:     1
;      Total:    9
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text29
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30000798:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	
l30000799:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u681
	goto	u680
u681:
	goto	l30000801
u680:
	
l30000800:	
	line	11
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	
l30000801:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u691
	goto	u690
u691:
	goto	l214
u690:
	
l30000802:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30000803:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l214:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u701
	goto	u700
u701:
	goto	l30000813
u700:
	
l30000804:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30000807
	
l30000805:	
	line	22
	movlw	01h
u715:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u715
	
l30000806:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30000807:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u721
	goto	u720
u721:
	goto	l30000805
u720:
	
l30000808:	
	line	26
	movlw	01h
u735:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u735
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u745
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u745:
	skipc
	goto	u741
	goto	u740
u741:
	goto	l30000811
u740:
	
l30000809:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30000810:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30000811:	
	line	31
	movlw	01h
u755:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u755
	
l30000812:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u761
	goto	u760
u761:
	goto	l30000808
u760:
	
l30000813:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u770
	goto	l30000815
u770:
	
l30000814:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30000815:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l212:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text30,local,class=CODE,delta=2
global __ptext30
__ptext30:
	line	37
	signat	___awdiv,8314
	global	_configure

; *************** function _configure *****************
; Defined at:
;		line 101 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_time_delay
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text30
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
	line	101
	global	__size_of_configure
	__size_of_configure	equ	__end_of_configure-_configure
;openlock.c: 98: char number[]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X67};
;openlock.c: 100: void configure()
;openlock.c: 101: {
	
_configure:	
	opt stack 7
; Regs used in _configure: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	102
	
l30000695:	
;openlock.c: 102: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	103
;openlock.c: 103: RD2=1;
	bsf	(66/8),(66)&7
	line	104
;openlock.c: 104: RD3=1;
	bsf	(67/8),(67)&7
	line	105
;openlock.c: 105: RD0=0;
	bcf	(64/8),(64)&7
	
l30000696:	
	line	106
;openlock.c: 106: PORTC=number[a];
	movf	(_a),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30000697:	
	line	107
;openlock.c: 107: time_delay(10);
	movlw	low(0Ah)
	movwf	(?_time_delay)
	movlw	high(0Ah)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000698:	
	line	109
;openlock.c: 109: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000699:	
	line	110
;openlock.c: 110: RD2=1;
	bsf	(66/8),(66)&7
	
l30000700:	
	line	111
;openlock.c: 111: RD3=1;
	bsf	(67/8),(67)&7
	
l30000701:	
	line	112
;openlock.c: 112: RD1=0;
	bcf	(65/8),(65)&7
	
l30000702:	
	line	113
;openlock.c: 113: PORTC=number[b];
	movf	(_b),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	114
;openlock.c: 114: time_delay(10);
	movlw	low(0Ah)
	movwf	(?_time_delay)
	movlw	high(0Ah)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000703:	
	line	116
;openlock.c: 116: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000704:	
	line	117
;openlock.c: 117: RD1=1;
	bsf	(65/8),(65)&7
	
l30000705:	
	line	118
;openlock.c: 118: RD3=1;
	bsf	(67/8),(67)&7
	
l30000706:	
	line	119
;openlock.c: 119: RD2=0;
	bcf	(66/8),(66)&7
	
l30000707:	
	line	120
;openlock.c: 120: PORTC=number[p];
	movf	(_p),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30000708:	
	line	121
;openlock.c: 121: time_delay(10);
	movlw	low(0Ah)
	movwf	(?_time_delay)
	movlw	high(0Ah)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30000709:	
	line	123
;openlock.c: 123: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30000710:	
	line	124
;openlock.c: 124: RD1=1;
	bsf	(65/8),(65)&7
	
l30000711:	
	line	125
;openlock.c: 125: RD2=1;
	bsf	(66/8),(66)&7
	
l30000712:	
	line	126
;openlock.c: 126: RD3=0;
	bcf	(67/8),(67)&7
	line	127
;openlock.c: 127: PORTC=number[q];
	movf	(_q),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30000713:	
	line	128
;openlock.c: 128: time_delay(10);
	movlw	low(0Ah)
	movwf	(?_time_delay)
	movlw	high(0Ah)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_configure
	__end_of_configure:
; =============== function _configure ends ============

psect	text31,local,class=CODE,delta=2
global __ptext31
__ptext31:
	line	129
	signat	_configure,88
	global	___awmod

; *************** function ___awmod *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    3[COMMON] int 
;  divisor         2    5[COMMON] int 
; Auto vars:     Size  Location     Type
;  sign            1    1[COMMON] unsigned char 
;  counter         1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    3[COMMON] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         7       0       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text31
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30000817:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	
l30000818:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u781
	goto	u780
u781:
	goto	l30000820
u780:
	
l30000819:	
	line	10
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	
l30000820:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u791
	goto	u790
u791:
	goto	l30000822
u790:
	
l30000821:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30000822:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u801
	goto	u800
u801:
	goto	l30000831
u800:
	
l30000823:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30000826
	
l30000824:	
	line	18
	movlw	01h
u815:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u815
	
l30000825:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30000826:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u821
	goto	u820
u821:
	goto	l30000824
u820:
	
l30000827:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u835
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u835:
	skipc
	goto	u831
	goto	u830
u831:
	goto	l30000829
u830:
	
l30000828:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30000829:	
	line	24
	movlw	01h
u845:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u845
	
l30000830:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u851
	goto	u850
u851:
	goto	l30000827
u850:
	
l30000831:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u860
	goto	l30000833
u860:
	
l30000832:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30000833:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l292:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text32,local,class=CODE,delta=2
global __ptext32
__ptext32:
	line	30
	signat	___awmod,8314
	global	_time_delay

; *************** function _time_delay *****************
; Defined at:
;		line 22 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
; Parameters:    Size  Location     Type
;  x               2    0[COMMON] int 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_call
;		_configure
; This function uses a non-reentrant model
; 
psect	text32
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment openlock\openlock.c"
	line	22
	global	__size_of_time_delay
	__size_of_time_delay	equ	__end_of_time_delay-_time_delay
;pic16f887.h: 19: volatile unsigned char INDF @ 0x000;
;pic16f887.h: 20: volatile unsigned char TMR0 @ 0x001;
;pic16f887.h: 21: volatile unsigned char PCL @ 0x002;
;pic16f887.h: 22: volatile unsigned char STATUS @ 0x003;
;pic16f887.h: 23: unsigned char FSR @ 0x004;
;pic16f887.h: 24: volatile unsigned char PORTA @ 0x005;
;pic16f887.h: 25: volatile unsigned char PORTB @ 0x006;
;pic16f887.h: 26: volatile unsigned char PORTC @ 0x007;
;pic16f887.h: 28: volatile unsigned char PORTD @ 0x008;
;pic16f887.h: 30: volatile unsigned char PORTE @ 0x009;
	
_time_delay:	
	opt stack 6
; Regs used in _time_delay: [wreg]
	
l30000759:	
	
l30000760:	
	line	23
	movlw	low(-1)
	addwf	(time_delay@x),f
	skipnc
	incf	(time_delay@x+1),f
	movlw	high(-1)
	addwf	(time_delay@x+1),f
	movlw	high(-1)
	xorwf	((time_delay@x+1))&07fh,w
	skipz
	goto	u665
	movlw	low(-1)
	xorwf	((time_delay@x))&07fh,w
u665:

	skipz
	goto	u661
	goto	u660
u661:
	goto	l30000760
u660:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_time_delay
	__end_of_time_delay:
; =============== function _time_delay ends ============

psect	text33,local,class=CODE,delta=2
global __ptext33
__ptext33:
	line	24
	signat	_time_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
