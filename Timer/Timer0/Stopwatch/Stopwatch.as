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
# 2 "C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
	dw 0X2CE4 ;#
;BANK0:	_main->___aldiv
;COMMON:	_main->___awdiv
	FNCALL	_main,_command
	FNCALL	_main,___aldiv
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_data
	FNCALL	_command,_pulse
	FNCALL	_data,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_count
	global	main@i
	global	main@j
	global	_ADCON0
psect	text37,local,class=CODE,delta=2
global __ptext37
__ptext37:
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
	file	"Stopwatch.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
main@i:
       ds      2

main@j:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_count:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??___awmod
??___awmod: ;@ 0x0
	global	??_data
??_data: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	??___awdiv
??___awdiv: ;@ 0x0
	global	??___aldiv
??___aldiv: ;@ 0x0
	global	?_delay
?_delay: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	??_pulse
??_pulse: ;@ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	1
	global	??_main
??_main: ;@ 0x1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	ds	1
	global	?_pulse
?_pulse: ;@ 0x2
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x2
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x2
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x2
	global	data@data
data@data:	; 1 bytes @ 0x2
	global	command@data
command@data:	; 1 bytes @ 0x2
	ds	1
	global	?_data
?_data: ;@ 0x3
	global	?_command
?_command: ;@ 0x3
	global	?___awmod
?___awmod: ;@ 0x3
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x3
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x3
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
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___aldiv
?___aldiv: ;@ 0x0
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x0
	ds	4
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x4
	ds	4
	global	main@b
main@b:	; 2 bytes @ 0x8
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0xA
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0xC
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0xE
	ds	2
	global	main@k1
main@k1:	; 2 bytes @ 0x10
	ds	2
	global	main@k2
main@k2:	; 2 bytes @ 0x12
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x14
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x16
	ds	2
;Data sizes: Strings 0, constant 0, data 0, bss 6, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9      13
; BANK0           80     24      26
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___aldiv	long  size(1); Largest target is 0
;?___awmod	int  size(1); Largest target is 0
;?___awdiv	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                               16    0  898   0.00
;                                    8 BANK0   16
;            _command
;            ___aldiv
;            ___awdiv
;            ___awmod
;               _data
;  ___aldiv                                           7    8  222   0.00
;                                    0 COMMO    7
;                                    0 BANK0    8
;  ___awdiv                                           5    4  222   0.00
;                                    0 COMMO    9
;  ___awmod                                           3    4  218   0.00
;                                    0 COMMO    7
;  _command                                           1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;  _data                                              1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;    _pulse                                           0    0   16   0.00
;              _delay
;      _delay                                         0    2   16   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 3
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
;ABS                  0      0      27       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     18      1A       5       32.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      27      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 38 in file "C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  e               2   22[BANK0 ] int 
;  c               2   20[BANK0 ] int 
;  k2              2   18[BANK0 ] int 
;  k1              2   16[BANK0 ] int 
;  f               2   12[BANK0 ] int 
;  d               2   10[BANK0 ] int 
;  b               2    8[BANK0 ] int 
;  a               2   14[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      16       0       0       0
;      Temp:     0
;      Total:   16
; This function calls:
;		_command
;		___aldiv
;		___awdiv
;		___awmod
;		_data
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
	line	38
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;stopwatch.c: 37: void main()
;stopwatch.c: 38: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l30000670:	
;stopwatch.c: 39: TRISD=0X00; PORTD=0X00; ANSEL=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h
	line	40
;stopwatch.c: 40: TRISE=0X00; PORTE=0X00; ANSELH=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(9)	;volatile
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(393)^0180h
	
l30000671:	
	line	42
;stopwatch.c: 42: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30000672:	
	line	43
;stopwatch.c: 43: command(0X38);
	movlw	(038h)
	fcall	_command
	
l30000673:	
	line	45
;stopwatch.c: 45: OPTION=0X05;
	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h
	
l30000674:	
	line	50
;stopwatch.c: 49: {
;stopwatch.c: 50: if(T0IF==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(90/8),(90)&7
	goto	u471
	goto	u470
u471:
	goto	l12
u470:
	
l30000675:	
	line	52
;stopwatch.c: 51: {
;stopwatch.c: 52: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000676:	
	line	53
;stopwatch.c: 53: T0IF=0;
	bcf	(90/8),(90)&7
	line	54
;stopwatch.c: 54: TMR0=131;
	movlw	(083h)
	movwf	(1)	;volatile
	
l12:	
	line	59
;stopwatch.c: 55: }
;stopwatch.c: 57: static int i=0;
;stopwatch.c: 58: static int j=0;
;stopwatch.c: 59: int k1=0,k2=0;
	movlw	low(0)
	movwf	(main@k1)
	movlw	high(0)
	movwf	((main@k1))+1
	movlw	low(0)
	movwf	(main@k2)
	movlw	high(0)
	movwf	((main@k2))+1
	
l30000677:	
	line	60
;stopwatch.c: 60: int a=i/36000;
	movf	(main@i),w
	movwf	(?___aldiv)
	movf	(main@i+1),w
	movwf	(?___aldiv+1)
	movlw	0
	btfsc	(?___aldiv+1),7
	movlw	255
	movwf	(?___aldiv+2)
	movwf	(?___aldiv+3)
	movlw	0
	movwf	3+(?___aldiv)+04h
	movlw	0
	movwf	2+(?___aldiv)+04h
	movlw	08Ch
	movwf	1+(?___aldiv)+04h
	movlw	0A0h
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___aldiv)),w
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___aldiv)),w
	clrf	(main@a)
	addwf	(main@a)

	
l30000678:	
	line	61
;stopwatch.c: 61: int b=i/3600;
	movf	(main@i+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(main@i),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0E10h)
	movwf	0+(?___awdiv)+02h
	movlw	high(0E10h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@b)
	addwf	(main@b)

	
l30000679:	
	line	62
;stopwatch.c: 62: int c=i/600;
	movf	(main@i+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(main@i),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0258h)
	movwf	0+(?___awdiv)+02h
	movlw	high(0258h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@c)
	addwf	(main@c)

	
l30000680:	
	line	63
;stopwatch.c: 63: int d=i/60;
	movf	(main@i+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(main@i),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(03Ch)
	movwf	0+(?___awdiv)+02h
	movlw	high(03Ch)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@d)
	addwf	(main@d)

	
l30000681:	
	line	64
;stopwatch.c: 64: int e=j/10;
	movf	(main@j+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(main@j),w
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
	clrf	(main@e+1)
	addwf	(main@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@e)
	addwf	(main@e)

	
l30000682:	
	line	65
;stopwatch.c: 65: int f=i%10;
	movf	(main@i+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(main@i),w
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
	clrf	(main@f+1)
	addwf	(main@f+1)
	movf	(0+(?___awmod)),w
	clrf	(main@f)
	addwf	(main@f)

	line	67
;stopwatch.c: 67: if(count==50)
	movlw	032h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u481
	goto	u480
u481:
	goto	l30000674
u480:
	
l30000683:	
	line	69
;stopwatch.c: 68: {
;stopwatch.c: 69: command(0X80);
	movlw	(080h)
	fcall	_command
	line	70
;stopwatch.c: 70: data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	030h
	fcall	_data
	line	71
;stopwatch.c: 71: command(0X81);
	movlw	(081h)
	fcall	_command
	line	72
;stopwatch.c: 72: data(b+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	030h
	fcall	_data
	line	73
;stopwatch.c: 73: command(0X82);
	movlw	(082h)
	fcall	_command
	line	74
;stopwatch.c: 74: data(':');
	movlw	(03Ah)
	fcall	_data
	line	75
;stopwatch.c: 75: command(0X83);
	movlw	(083h)
	fcall	_command
	
l30000684:	
	line	77
;stopwatch.c: 76: {
;stopwatch.c: 77: if(c==6)
	movlw	06h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@c),w
	iorwf	(main@c+1),w
	skipz
	goto	u491
	goto	u490
u491:
	goto	l30000687
u490:
	
l30000685:	
	line	79
;stopwatch.c: 78: {
;stopwatch.c: 79: k2++;
	movlw	low(01h)
	addwf	(main@k2),f
	skipnc
	incf	(main@k2+1),f
	movlw	high(01h)
	addwf	(main@k2+1),f
	line	80
;stopwatch.c: 80: if(k2==540);
	movlw	high(021Ch)
	xorwf	(main@k2+1),w
	skipz
	goto	u505
	movlw	low(021Ch)
	xorwf	(main@k2),w
u505:

	skipz
	goto	u501
	goto	u500
u501:
	goto	l30000686
u500:
	
l30000686:	
	line	82
;stopwatch.c: 81: {
;stopwatch.c: 82: c=0;
	movlw	low(0)
	movwf	(main@c)
	movlw	high(0)
	movwf	((main@c))+1
	line	83
;stopwatch.c: 83: j=0;
	movlw	low(0)
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l30000687:	
	line	86
;stopwatch.c: 84: }
;stopwatch.c: 85: }
;stopwatch.c: 86: data(c+48);
	movf	(main@c),w
	addlw	030h
	fcall	_data
	
l30000688:	
	line	88
;stopwatch.c: 87: }
;stopwatch.c: 88: command(0X84);
	movlw	(084h)
	fcall	_command
	
l30000689:	
	line	89
;stopwatch.c: 89: data(d+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@d),w
	addlw	030h
	fcall	_data
	
l30000690:	
	line	90
;stopwatch.c: 90: command(0X85);
	movlw	(085h)
	fcall	_command
	
l30000691:	
	line	91
;stopwatch.c: 91: data(':');
	movlw	(03Ah)
	fcall	_data
	
l30000692:	
	line	92
;stopwatch.c: 92: command(0X86);
	movlw	(086h)
	fcall	_command
	line	94
;stopwatch.c: 93: {
;stopwatch.c: 94: if(e==6)
	movlw	06h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@e),w
	iorwf	(main@e+1),w
	skipz
	goto	u511
	goto	u510
u511:
	goto	l30000695
u510:
	
l30000693:	
	line	96
;stopwatch.c: 95: {
;stopwatch.c: 96: k1++;
	movlw	low(01h)
	addwf	(main@k1),f
	skipnc
	incf	(main@k1+1),f
	movlw	high(01h)
	addwf	(main@k1+1),f
	line	97
;stopwatch.c: 97: if(k1==9);
	movlw	09h
	xorwf	(main@k1),w
	iorwf	(main@k1+1),w
	skipz
	goto	u521
	goto	u520
u521:
	goto	l30000694
u520:
	
l30000694:	
	line	99
;stopwatch.c: 98: {
;stopwatch.c: 99: e=0;
	movlw	low(0)
	movwf	(main@e)
	movlw	high(0)
	movwf	((main@e))+1
	line	100
;stopwatch.c: 100: j=0;
	movlw	low(0)
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l30000695:	
	line	103
;stopwatch.c: 101: }
;stopwatch.c: 102: }
;stopwatch.c: 103: data(e+48);
	movf	(main@e),w
	addlw	030h
	fcall	_data
	
l30000696:	
	line	106
;stopwatch.c: 104: }
;stopwatch.c: 106: command(0X87);
	movlw	(087h)
	fcall	_command
	
l30000697:	
	line	107
;stopwatch.c: 107: data(f+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@f),w
	addlw	030h
	fcall	_data
	
l30000698:	
	line	108
;stopwatch.c: 108: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l30000699:	
	line	109
;stopwatch.c: 109: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l30000700:	
	line	110
;stopwatch.c: 110: count=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_count)
	movlw	high(0)
	movwf	((_count))+1
	goto	l30000674
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	115
	signat	_main,88
	global	___aldiv
psect	text38,local,class=CODE,delta=2
global __ptext38
__ptext38:

; *************** function ___aldiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\aldiv.c"
; Parameters:    Size  Location     Type
;  dividend        4    0[BANK0 ] long 
;  divisor         4    4[BANK0 ] long 
; Auto vars:     Size  Location     Type
;  quotient        4    3[COMMON] long 
;  sign            1    2[COMMON] unsigned char 
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  4    0[BANK0 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         7       8       0       0       0
;      Temp:     1
;      Total:   15
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text38
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 7
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30000648:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___aldiv@sign)
	
l30000649:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___aldiv@divisor+3),7
	goto	u371
	goto	u370
u371:
	goto	l30000652
u370:
	
l30000650:	
	line	11
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	
l30000651:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30000652:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u381
	goto	u380
u381:
	goto	l30000655
u380:
	
l30000653:	
	line	15
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	
l30000654:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30000655:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30000656:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u391
	goto	u390
u391:
	goto	l30000666
u390:
	
l30000657:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30000659
	
l30000658:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u405:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u405
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30000659:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u411
	goto	u410
u411:
	goto	l30000658
u410:
	
l30000660:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u425:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u425
	
l30000661:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u435
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u435
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u435
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u435:
	skipc
	goto	u431
	goto	u430
u431:
	goto	l30000664
u430:
	
l30000662:	
	line	28
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	
l30000663:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30000664:	
	line	31
	movlw	01h
u445:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u445

	
l30000665:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u451
	goto	u450
u451:
	goto	l30000660
u450:
	
l30000666:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u460
	goto	l30000668
u460:
	
l30000667:	
	line	35
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	
l30000668:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l235:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text39,local,class=CODE,delta=2
global __ptext39
__ptext39:
	line	37
	signat	___aldiv,8316
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
psect	text39
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30000701:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	
l30000702:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u531
	goto	u530
u531:
	goto	l30000704
u530:
	
l30000703:	
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
	
l30000704:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u541
	goto	u540
u541:
	goto	l169
u540:
	
l30000705:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30000706:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l169:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u551
	goto	u550
u551:
	goto	l30000716
u550:
	
l30000707:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30000710
	
l30000708:	
	line	22
	movlw	01h
u565:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u565
	
l30000709:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30000710:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u571
	goto	u570
u571:
	goto	l30000708
u570:
	
l30000711:	
	line	26
	movlw	01h
u585:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u585
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u595
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u595:
	skipc
	goto	u591
	goto	u590
u591:
	goto	l30000714
u590:
	
l30000712:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30000713:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30000714:	
	line	31
	movlw	01h
u605:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u605
	
l30000715:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l30000711
u610:
	
l30000716:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u620
	goto	l30000718
u620:
	
l30000717:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30000718:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l167:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text40,local,class=CODE,delta=2
global __ptext40
__ptext40:
	line	37
	signat	___awdiv,8314
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
psect	text40
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30000720:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	
l30000721:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u631
	goto	u630
u631:
	goto	l30000723
u630:
	
l30000722:	
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
	
l30000723:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u641
	goto	u640
u641:
	goto	l30000725
u640:
	
l30000724:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30000725:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u651
	goto	u650
u651:
	goto	l30000734
u650:
	
l30000726:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30000729
	
l30000727:	
	line	18
	movlw	01h
u665:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u665
	
l30000728:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30000729:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u671
	goto	u670
u671:
	goto	l30000727
u670:
	
l30000730:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u685
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u685:
	skipc
	goto	u681
	goto	u680
u681:
	goto	l30000732
u680:
	
l30000731:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30000732:	
	line	24
	movlw	01h
u695:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u695
	
l30000733:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u701
	goto	u700
u701:
	goto	l30000730
u700:
	
l30000734:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u710
	goto	l30000736
u710:
	
l30000735:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30000736:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l247:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text41,local,class=CODE,delta=2
global __ptext41
__ptext41:
	line	30
	signat	___awmod,8314
	global	_command

; *************** function _command *****************
; Defined at:
;		line 24 in file "C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_pulse
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text41
	file	"C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
	line	24
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;stopwatch.c: 23: void command(char data)
;stopwatch.c: 24: {
	
_command:	
	opt stack 7
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30000738:	
	line	25
;stopwatch.c: 25: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30000739:	
	line	26
;stopwatch.c: 26: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30000740:	
	line	27
;stopwatch.c: 27: pulse();
	fcall	_pulse
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:
	line	28
	signat	_command,4216
	global	_data

; *************** function _data *****************
; Defined at:
;		line 31 in file "C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_pulse
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text42
	file	"C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
	line	31
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;stopwatch.c: 30: void data(char data)
;stopwatch.c: 31: {
	
_data:	
	opt stack 7
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	movwf	(data@data)
	
l30000741:	
	line	32
;stopwatch.c: 32: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	
l30000742:	
	line	33
;stopwatch.c: 33: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30000743:	
	line	34
;stopwatch.c: 34: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:
	line	35
	signat	_data,4216
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 16 in file "C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
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
;		_delay
; This function is called by:
;		_command
;		_data
; This function uses a non-reentrant model
; 
psect	text43
	file	"C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
	line	16
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;stopwatch.c: 15: void pulse()
;stopwatch.c: 16: {
	
_pulse:	
	opt stack 6
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l30000744:	
;stopwatch.c: 17: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30000745:	
	line	18
;stopwatch.c: 18: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000746:	
	line	19
;stopwatch.c: 19: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	20
;stopwatch.c: 20: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
; =============== function _pulse ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	line	21
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 11 in file "C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
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
;		_pulse
; This function uses a non-reentrant model
; 
psect	text44
	file	"C:\Users\gowth\Documents\PIC Programs\Timer\Timer0\Stopwatch\stopwatch.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
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
	
_delay:	
	opt stack 5
; Regs used in _delay: [wreg]
	
l30000747:	
	
l30000748:	
	line	12
	movlw	low(-1)
	addwf	(delay@x),f
	skipnc
	incf	(delay@x+1),f
	movlw	high(-1)
	addwf	(delay@x+1),f
	movlw	high(-1)
	xorwf	((delay@x+1))&07fh,w
	skipz
	goto	u725
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u725:

	skipz
	goto	u721
	goto	u720
u721:
	goto	l30000748
u720:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:
	line	13
	signat	_delay,4216
	end