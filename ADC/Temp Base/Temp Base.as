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
;BANK0:	_main->_voltage
;COMMON:	_voltage->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	_voltage->___ftdiv
;BANK0:	___ftdiv->___ftmul
;COMMON:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;COMMON:	___ftdiv->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK1:	_main->_temperature
;COMMON:	_temperature->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	_temperature->___ftdiv
;BANK0:	___ftdiv->___ftmul
;COMMON:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	___ftmul->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;COMMON:	___ftdiv->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
	FNCALL	_main,_command
	FNCALL	_main,_data
	FNCALL	_main,_adc
	FNCALL	_main,_voltage
	FNCALL	_main,_temperature
	FNCALL	_adc,_count
	FNCALL	_voltage,_command
	FNCALL	_voltage,___awtoft
	FNCALL	_voltage,___ftmul
	FNCALL	_voltage,___ftdiv
	FNCALL	_voltage,___fttol
	FNCALL	_voltage,___awdiv
	FNCALL	_voltage,___awmod
	FNCALL	_voltage,_data
	FNCALL	_temperature,___awtoft
	FNCALL	_temperature,___ftmul
	FNCALL	_temperature,___ftdiv
	FNCALL	_temperature,___ftadd
	FNCALL	_temperature,___fttol
	FNCALL	_temperature,___awdiv
	FNCALL	_temperature,___awmod
	FNCALL	_temperature,_command
	FNCALL	_temperature,_data
	FNCALL	_temperature,___ftneg
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_count,___awdiv
	FNCALL	_count,___awmod
	FNCALL	_count,_command
	FNCALL	_count,_data
	FNCALL	_data,_pulse
	FNCALL	_command,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_k1
	global	_k2
	global	_DV
	global	_high
	global	_low
	global	_ADCON0
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:
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
	file	"Temp Base.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_DV:
       ds      2

_high:
       ds      2

_low:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_k1:
       ds      2

_k2:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	temperature@c1
temperature@c1:	; 2 bytes @ 0x0
	ds	2
	global	temperature@a1
temperature@a1:	; 2 bytes @ 0x2
	ds	2
	global	temperature@h
temperature@h:	; 2 bytes @ 0x4
	ds	2
	global	temperature@h1
temperature@h1:	; 2 bytes @ 0x6
	ds	2
	global	temperature@g1
temperature@g1:	; 2 bytes @ 0x8
	ds	2
	global	temperature@e1
temperature@e1:	; 2 bytes @ 0xA
	ds	2
	global	temperature@g
temperature@g:	; 2 bytes @ 0xC
	ds	2
	global	temperature@e
temperature@e:	; 2 bytes @ 0xE
	ds	2
	global	temperature@c
temperature@c:	; 2 bytes @ 0x10
	ds	2
	global	temperature@a
temperature@a:	; 2 bytes @ 0x12
	ds	2
	global	temperature@z
temperature@z:	; 3 bytes @ 0x14
	ds	3
	global	temperature@f1
temperature@f1:	; 2 bytes @ 0x17
	ds	2
	global	temperature@b
temperature@b:	; 2 bytes @ 0x19
	ds	2
	global	temperature@b1
temperature@b1:	; 2 bytes @ 0x1B
	ds	2
	global	temperature@f
temperature@f:	; 2 bytes @ 0x1D
	ds	2
	global	temperature@d1
temperature@d1:	; 2 bytes @ 0x1F
	ds	2
	global	temperature@d
temperature@d:	; 2 bytes @ 0x21
	ds	2
	global	temperature@w1
temperature@w1:	; 3 bytes @ 0x23
	ds	3
	global	temperature@w
temperature@w:	; 2 bytes @ 0x26
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_delay
??_delay: ;@ 0x0
	global	??_pulse
??_pulse: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	??___ftpack
??___ftpack: ;@ 0x0
	global	??___ftneg
??___ftneg: ;@ 0x0
	global	??_data
??_data: ;@ 0x0
	global	?_delay
?_delay: ;@ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	?___ftneg
?___ftneg: ;@ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	1
	global	??___awdiv
??___awdiv: ;@ 0x1
	ds	1
	global	?_pulse
?_pulse: ;@ 0x2
	global	??_count
??_count: ;@ 0x2
	global	command@data
command@data:	; 1 bytes @ 0x2
	global	data@data
data@data:	; 1 bytes @ 0x2
	ds	1
	global	??___awtoft
??___awtoft: ;@ 0x3
	global	?_data
?_data: ;@ 0x3
	global	?_adc
?_adc: ;@ 0x3
	global	?_command
?_command: ;@ 0x3
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x0
	global	?___ftpack
?___ftpack: ;@ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	?___awmod
?___awmod: ;@ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x4
	ds	1
	global	??___ftadd
??___ftadd: ;@ 0x5
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x6
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x6
	global	?___awtoft
?___awtoft: ;@ 0x6
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x7
	ds	1
	global	??_voltage
??_voltage: ;@ 0x8
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x8
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x8
	ds	1
	global	??___ftmul
??___ftmul: ;@ 0x9
	global	??_main
??_main: ;@ 0x9
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x9
	ds	1
	global	?___awdiv
?___awdiv: ;@ 0xA
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0xA
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xA
	ds	1
	global	?___ftadd
?___ftadd: ;@ 0xB
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0xB
	ds	1
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0xC
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xD
	ds	1
	global	count@e
count@e:	; 2 bytes @ 0xE
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xE
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xE
	ds	2
	global	count@f
count@f:	; 2 bytes @ 0x10
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x12
	global	count@a
count@a:	; 2 bytes @ 0x12
	ds	1
	global	?___ftmul
?___ftmul: ;@ 0x13
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x13
	ds	1
	global	count@c
count@c:	; 2 bytes @ 0x14
	ds	2
	global	?_count
?_count: ;@ 0x16
	global	count@i
count@i:	; 2 bytes @ 0x16
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x16
	ds	2
	global	??_adc
??_adc: ;@ 0x18
	ds	1
	global	??___fttol
??___fttol: ;@ 0x19
	global	??___ftdiv
??___ftdiv: ;@ 0x19
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1C
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1D
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1D
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1E
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x21
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x21
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x22
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x22
	global	?___fttol
?___fttol: ;@ 0x22
	ds	1
	global	?___ftdiv
?___ftdiv: ;@ 0x23
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x23
	ds	3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x26
	ds	3
	global	??_temperature
??_temperature: ;@ 0x29
	global	voltage@z
voltage@z:	; 3 bytes @ 0x29
	ds	1
	global	?_temperature
?_temperature: ;@ 0x2A
	ds	2
	global	voltage@c
voltage@c:	; 2 bytes @ 0x2C
	ds	2
	global	voltage@a
voltage@a:	; 2 bytes @ 0x2E
	ds	2
	global	voltage@b
voltage@b:	; 2 bytes @ 0x30
	ds	2
	global	voltage@d
voltage@d:	; 2 bytes @ 0x32
	ds	2
	global	?_main
?_main: ;@ 0x34
	global	?_voltage
?_voltage: ;@ 0x34
;Data sizes: Strings 0, constant 0, data 0, bss 10, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      11
; BANK0           80     52      56
; BANK1           80     40      40
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___ftpack	float  size(1); Largest target is 0
;?___ftadd	float  size(1); Largest target is 0
;?___fttol	long  size(1); Largest target is 0
;?___ftneg	float  size(1); Largest target is 0
;?___awdiv	int  size(1); Largest target is 0
;?___awmod	int  size(1); Largest target is 0
;?___ftmul	float  size(1); Largest target is 0
;?___ftdiv	float  size(1); Largest target is 0
;?___awtoft	float  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 16903   0.00
;            _command
;               _data
;                _adc
;            _voltage
;        _temperature
;  _adc                                               2    0 1174   0.00
;                                   24 BANK0    2
;              _count
;  _voltage                                          11    0 6892   0.00
;                                   41 BANK0   11
;            _command
;           ___awtoft
;            ___ftmul
;            ___ftdiv
;            ___fttol
;            ___awdiv
;            ___awmod
;               _data
;  _temperature                                      61    0 8773   0.00
;                                   41 BANK0    1
;                                    0 BANK1   40
;           ___awtoft
;            ___ftmul
;            ___ftdiv
;            ___ftadd
;            ___fttol
;            ___awdiv
;            ___awmod
;            _command
;               _data
;            ___ftneg
;    ___ftmul                                        10    6  993   0.00
;                                    9 BANK0   16
;           ___awtoft (ARG)
;           ___ftpack
;    ___ftneg                                         0    3   33   0.00
;                                    0 COMMO    3
;    ___awtoft                                        3    3  354   0.00
;                                    3 COMMO    2
;                                    5 BANK0    4
;           ___ftpack
;    ___ftdiv                                        10    6 1932   0.00
;                                   25 BANK0   16
;            ___ftmul (ARG)
;           ___awtoft (ARG)
;           ___ftpack
;    ___fttol                                         9    4 2460   0.00
;                                   25 BANK0   13
;            ___ftadd (ARG)
;            ___ftneg (ARG)
;            ___ftmul (ARG)
;    ___ftadd                                         6    6 1248   0.00
;                                    5 BANK0   12
;            ___ftneg (ARG)
;           ___ftpack
;    _count                                           8    2 1174   0.00
;                                   14 BANK0   10
;            ___awdiv
;            ___awmod
;            _command
;               _data
;      ___ftpack                                      3    5  249   0.00
;                                    0 COMMO    3
;                                    0 BANK0    5
;      _data                                          1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;      _command                                       1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;      ___awmod                                       3    4  342   0.00
;                                    0 COMMO    1
;                                    0 BANK0    6
;      ___awdiv                                       5    4  564   0.00
;                                    1 COMMO    1
;                                    6 BANK0    8
;            ___awmod (ARG)
;        _pulse                                       0    0   16   0.00
;              _delay
;          _delay                                     0    2   16   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 5
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       B       1       78.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      6B       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     34      38       5       70.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50     28      28       7       50.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      6B      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 235 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_command
;		_data
;		_adc
;		_voltage
;		_temperature
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	235
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;Temp Base.c: 234: void main()
;Temp Base.c: 235: {
	
_main:	
	opt stack 8
; Regs used in _main: [allreg]
	line	236
	
l30001383:	
;Temp Base.c: 236: TRISA=0X01; PORTA=0X00;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30001384:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l30001385:	
	line	237
;Temp Base.c: 237: TRISD=0X00; PORTD=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30001386:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30001387:	
	line	238
;Temp Base.c: 238: TRISC=0X00; PORTC=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	
l30001388:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l30001389:	
	line	239
;Temp Base.c: 239: TRISE=0X00; PORTE=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	
l30001390:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(9)	;volatile
	line	241
;Temp Base.c: 241: ANSEL=0X01; ANSELH=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h
	bsf	status,0
	rlf	(392)^0180h,f
	
l30001391:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(393)^0180h
	
l30001392:	
	line	243
;Temp Base.c: 243: command(0X38);
	movlw	(038h)
	fcall	_command
	
l30001393:	
	line	244
;Temp Base.c: 244: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30001394:	
	line	246
;Temp Base.c: 246: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001395:	
	line	247
;Temp Base.c: 247: data('0');
	movlw	(030h)
	fcall	_data
	
l30001396:	
	line	248
;Temp Base.c: 248: data('0');
	movlw	(030h)
	fcall	_data
	
l30001397:	
	line	252
;Temp Base.c: 251: {
;Temp Base.c: 252: adc();
	fcall	_adc
	
l30001398:	
	line	253
;Temp Base.c: 253: voltage();
	fcall	_voltage
	
l30001399:	
	line	254
;Temp Base.c: 254: temperature();
	fcall	_temperature
	goto	l30001397
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	257
	signat	_main,88
	global	_adc
psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:

; *************** function _adc *****************
; Defined at:
;		line 71 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
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
;      Locals:         0       2       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_count
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text125
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	71
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
;Temp Base.c: 70: void adc()
;Temp Base.c: 71: {
	
_adc:	
	opt stack 7
; Regs used in _adc: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l30001400:	
;Temp Base.c: 72: ADCON0=0X83; ADCON1=0X80;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h
	
l15:	
	line	73
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(31),(1)&7	;volatile
	goto	u2421
	goto	u2420
u2421:
	goto	l15
u2420:
	
l30001401:	
	line	74
;Temp Base.c: 74: high=ADRESH; low=ADRESL;
	movf	(30),w	;volatile
	movwf	(??_adc+0+0)
	clrf	(??_adc+0+0+1)
	movf	0+(??_adc+0+0),w
	movwf	(_high)
	movf	1+(??_adc+0+0),w
	movwf	(_high+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0+0)
	clrf	(??_adc+0+0+1)
	movf	0+(??_adc+0+0),w
	movwf	(_low)
	movf	1+(??_adc+0+0),w
	movwf	(_low+1)
	
l30001402:	
	line	76
;Temp Base.c: 76: if(high==0)
	movf	((_high+1)),w
	iorwf	((_high)),w
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l30001405
u2430:
	
l30001403:	
	line	78
;Temp Base.c: 77: {
;Temp Base.c: 78: DV=low;
	movf	(_low+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_low),w
	clrf	(_DV)
	addwf	(_DV)

	
l30001404:	
	line	79
;Temp Base.c: 79: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001405:	
	line	82
;Temp Base.c: 80: }
;Temp Base.c: 82: if(high==1)
	movlw	01h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l30001408
u2440:
	
l30001406:	
	line	84
;Temp Base.c: 83: {
;Temp Base.c: 84: DV=low+256;
	movf	(_low),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	
l30001407:	
	line	85
;Temp Base.c: 85: count(DV);
	movf	(_DV+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001408:	
	line	88
;Temp Base.c: 86: }
;Temp Base.c: 88: if(high==2)
	movlw	02h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l30001411
u2450:
	
l30001409:	
	line	90
;Temp Base.c: 89: {
;Temp Base.c: 90: DV=low+512;
	movf	(_low),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	
l30001410:	
	line	91
;Temp Base.c: 91: count(DV);
	movf	(_DV+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001411:	
	line	94
;Temp Base.c: 92: }
;Temp Base.c: 94: if(high==3)
	movlw	03h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l30001414
u2460:
	
l30001412:	
	line	96
;Temp Base.c: 95: {
;Temp Base.c: 96: DV=low+768;
	movf	(_low),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	
l30001413:	
	line	97
;Temp Base.c: 97: count(DV);
	movf	(_DV+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001414:	
	line	101
;Temp Base.c: 98: }
;Temp Base.c: 101: if(DV>434)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0+0)
	movlw	(high(01B3h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u2475
	movlw	low(01B3h)
	subwf	(_DV),w
u2475:

	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l22
u2470:
	
l30001415:	
	line	103
;Temp Base.c: 102: {
;Temp Base.c: 103: RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	
l30001416:	
	line	104
;Temp Base.c: 104: k1=1;
	movlw	low(01h)
	movwf	(_k1)
	movlw	high(01h)
	movwf	((_k1))+1
	
l22:	
	line	107
;Temp Base.c: 105: }
;Temp Base.c: 107: if(k1==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_k1),w
	iorwf	(_k1+1),w
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l30001419
u2480:
	
l30001417:	
	line	109
;Temp Base.c: 108: {
;Temp Base.c: 109: if(DV<400)
	movf	(_DV+1),w
	xorlw	80h
	movwf	(??_adc+0+0)
	movlw	(high(0190h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u2495
	movlw	low(0190h)
	subwf	(_DV),w
u2495:

	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l30001419
u2490:
	
l30001418:	
	line	111
;Temp Base.c: 110: {
;Temp Base.c: 111: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	
l30001419:	
	line	115
;Temp Base.c: 112: }
;Temp Base.c: 113: }
;Temp Base.c: 115: if(DV<308)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0+0)
	movlw	(high(0134h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u2505
	movlw	low(0134h)
	subwf	(_DV),w
u2505:

	skipnc
	goto	u2501
	goto	u2500
u2501:
	goto	l25
u2500:
	
l30001420:	
	line	117
;Temp Base.c: 116: {
;Temp Base.c: 117: RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	
l30001421:	
	line	118
;Temp Base.c: 118: k2=1;
	movlw	low(01h)
	movwf	(_k2)
	movlw	high(01h)
	movwf	((_k2))+1
	
l25:	
	line	121
;Temp Base.c: 119: }
;Temp Base.c: 121: if(k2==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_k2),w
	iorwf	(_k2+1),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l14
u2510:
	
l30001422:	
	line	123
;Temp Base.c: 122: {
;Temp Base.c: 123: if(DV>435)
	movf	(_DV+1),w
	xorlw	80h
	movwf	(??_adc+0+0)
	movlw	(high(01B4h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u2525
	movlw	low(01B4h)
	subwf	(_DV),w
u2525:

	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l14
u2520:
	
l30001423:	
	line	125
;Temp Base.c: 124: {
;Temp Base.c: 125: RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
; =============== function _adc ends ============

psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:
	line	129
	signat	_adc,88
	global	_voltage

; *************** function _voltage *****************
; Defined at:
;		line 212 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  z               3   41[BANK0 ] float 
;  d               2   50[BANK0 ] int 
;  c               2   44[BANK0 ] int 
;  b               2   48[BANK0 ] int 
;  a               2   46[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      11       0       0       0
;      Temp:     0
;      Total:   11
; This function calls:
;		_command
;		___awtoft
;		___ftmul
;		___ftdiv
;		___fttol
;		___awdiv
;		___awmod
;		_data
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text126
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	212
	global	__size_of_voltage
	__size_of_voltage	equ	__end_of_voltage-_voltage
;Temp Base.c: 211: void voltage()
;Temp Base.c: 212: {
	
_voltage:	
	opt stack 7
; Regs used in _voltage: [wreg+status,2+status,0+pclath+cstack]
	line	213
	
l30001424:	
;Temp Base.c: 213: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	line	217
;Temp Base.c: 214: int a,b,c,d;
;Temp Base.c: 215: float z;
;Temp Base.c: 217: z=(DV*5.0)/1023.0;
	movf	(_DV+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(_DV),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	0+(?___ftmul)+03h
	movlw	0xa0
	movwf	1+(?___ftmul)+03h
	movlw	0x40
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftmul)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___ftdiv+2)
	movlw	0xc0
	movwf	0+(?___ftdiv)+03h
	movlw	0x7f
	movwf	1+(?___ftdiv)+03h
	movlw	0x44
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(voltage@z)
	movf	(1+(?___ftdiv)),w
	movwf	(voltage@z+1)
	movf	(2+(?___ftdiv)),w
	movwf	(voltage@z+2)
	line	219
;Temp Base.c: 219: d=z*100;
	movf	(voltage@z),w
	movwf	(?___ftmul)
	movf	(voltage@z+1),w
	movwf	(?___ftmul+1)
	movf	(voltage@z+2),w
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	0+(?___ftmul)+03h
	movlw	0xc8
	movwf	1+(?___ftmul)+03h
	movlw	0x42
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	clrf	(voltage@d+1)
	addwf	(voltage@d+1)
	movf	(0+(?___fttol)),w
	clrf	(voltage@d)
	addwf	(voltage@d)

	line	220
;Temp Base.c: 220: a=d/100;
	movf	(voltage@d+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(voltage@d),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(064h)
	movwf	0+(?___awdiv)+02h
	movlw	high(064h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(voltage@a+1)
	addwf	(voltage@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(voltage@a)
	addwf	(voltage@a)

	line	221
;Temp Base.c: 221: b=(d%100)/10;
	movf	(voltage@d+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(voltage@d),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(064h)
	movwf	0+(?___awmod)+02h
	movlw	high(064h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(0+(?___awmod)),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(voltage@b+1)
	addwf	(voltage@b+1)
	movf	(0+(?___awdiv)),w
	clrf	(voltage@b)
	addwf	(voltage@b)

	line	222
;Temp Base.c: 222: c=d%10;
	movf	(voltage@d+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(voltage@d),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(voltage@c+1)
	addwf	(voltage@c+1)
	movf	(0+(?___awmod)),w
	clrf	(voltage@c)
	addwf	(voltage@c)

	line	224
;Temp Base.c: 224: data(a+48);
	movf	(voltage@a),w
	addlw	030h
	fcall	_data
	line	225
;Temp Base.c: 225: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	226
;Temp Base.c: 226: data(b+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(voltage@b),w
	addlw	030h
	fcall	_data
	line	227
;Temp Base.c: 227: data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(voltage@c),w
	addlw	030h
	fcall	_data
	line	228
;Temp Base.c: 228: data(0X20);
	movlw	(020h)
	fcall	_data
	line	229
;Temp Base.c: 229: data(0X56);
	movlw	(056h)
	fcall	_data
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_voltage
	__end_of_voltage:
; =============== function _voltage ends ============

psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:
	line	230
	signat	_voltage,88
	global	_temperature

; *************** function _temperature *****************
; Defined at:
;		line 136 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  buffer         20    0        unsigned char [20]
;  w1              3   35[BANK1 ] float 
;  z               3   20[BANK1 ] float 
;  w               2   38[BANK1 ] int 
;  f1              2   23[BANK1 ] int 
;  f               2   29[BANK1 ] int 
;  d1              2   31[BANK1 ] int 
;  d               2   33[BANK1 ] int 
;  b1              2   27[BANK1 ] int 
;  b               2   25[BANK1 ] int 
;  h1              2    6[BANK1 ] int 
;  h               2    4[BANK1 ] int 
;  g1              2    8[BANK1 ] int 
;  g               2   12[BANK1 ] int 
;  e1              2   10[BANK1 ] int 
;  e               2   14[BANK1 ] int 
;  c1              2    0[BANK1 ] int 
;  c               2   16[BANK1 ] int 
;  a1              2    2[BANK1 ] int 
;  a               2   18[BANK1 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1      40       0       0
;      Temp:     1
;      Total:   41
; This function calls:
;		___awtoft
;		___ftmul
;		___ftdiv
;		___ftadd
;		___fttol
;		___awdiv
;		___awmod
;		_command
;		_data
;		___ftneg
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text127
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	136
	global	__size_of_temperature
	__size_of_temperature	equ	__end_of_temperature-_temperature
;Temp Base.c: 135: void temperature()
;Temp Base.c: 136: {
	
_temperature:	
	opt stack 7
; Regs used in _temperature: [wreg+status,2+status,0+pclath+cstack]
	line	141
	
l30001378:	
;Temp Base.c: 137: int a,b,c,d,e,f,g,h,w;
;Temp Base.c: 138: int a1,b1,c1,d1,e1,f1,g1,h1;
;Temp Base.c: 139: float z,w1;
;Temp Base.c: 140: char buffer[20];
;Temp Base.c: 141: z=(DV*200.0)/1023.0;
	movf	(_DV+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(_DV),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	0+(?___ftmul)+03h
	movlw	0x48
	movwf	1+(?___ftmul)+03h
	movlw	0x43
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftmul)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___ftdiv+2)
	movlw	0xc0
	movwf	0+(?___ftdiv)+03h
	movlw	0x7f
	movwf	1+(?___ftdiv)+03h
	movlw	0x44
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@z)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@z+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@z+2)^080h
	
l30001379:	
	line	144
;Temp Base.c: 144: if(DV>255)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_temperature+0+0)
	movlw	(high(0100h))^80h
	subwf	(??_temperature+0+0),w
	skipz
	goto	u2405
	movlw	low(0100h)
	subwf	(_DV),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l30001381
u2400:
	
l30001380:	
	line	147
;Temp Base.c: 145: {
;Temp Base.c: 147: w1=z*100;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@z)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@z+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@z+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	0+(?___ftmul)+03h
	movlw	0xc8
	movwf	1+(?___ftmul)+03h
	movlw	0x42
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@w1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@w1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@w1+2)^080h
	line	148
;Temp Base.c: 148: w=w1-5000;
	movf	(temperature@w1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@w1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@w1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	movlw	0x40
	movwf	0+(?___ftadd)+03h
	movlw	0x9c
	movwf	1+(?___ftadd)+03h
	movlw	0xc5
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@w+1)^080h
	addwf	(temperature@w+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@w)^080h
	addwf	(temperature@w)^080h

	line	150
;Temp Base.c: 150: a=w/10000;
	movf	(temperature@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@w)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(02710h)
	movwf	0+(?___awdiv)+02h
	movlw	high(02710h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@a+1)^080h
	addwf	(temperature@a+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@a)^080h
	addwf	(temperature@a)^080h

	line	151
;Temp Base.c: 151: b=w%10000;
	movf	(temperature@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@w)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(02710h)
	movwf	0+(?___awmod)+02h
	movlw	high(02710h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@b+1)^080h
	addwf	(temperature@b+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@b)^080h
	addwf	(temperature@b)^080h

	line	152
;Temp Base.c: 152: c=b/1000;
	movf	(temperature@b+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@b)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(03E8h)
	movwf	0+(?___awdiv)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@c+1)^080h
	addwf	(temperature@c+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@c)^080h
	addwf	(temperature@c)^080h

	line	153
;Temp Base.c: 153: d=b%1000;
	movf	(temperature@b+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@b)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(03E8h)
	movwf	0+(?___awmod)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@d+1)^080h
	addwf	(temperature@d+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@d)^080h
	addwf	(temperature@d)^080h

	line	154
;Temp Base.c: 154: e=d/100;
	movf	(temperature@d+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@d)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(064h)
	movwf	0+(?___awdiv)+02h
	movlw	high(064h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@e+1)^080h
	addwf	(temperature@e+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@e)^080h
	addwf	(temperature@e)^080h

	line	155
;Temp Base.c: 155: f=d%100;
	movf	(temperature@d+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@d)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(064h)
	movwf	0+(?___awmod)+02h
	movlw	high(064h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@f+1)^080h
	addwf	(temperature@f+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@f)^080h
	addwf	(temperature@f)^080h

	line	156
;Temp Base.c: 156: g=f/10;
	movf	(temperature@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@g+1)^080h
	addwf	(temperature@g+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@g)^080h
	addwf	(temperature@g)^080h

	line	157
;Temp Base.c: 157: h=f%10;
	movf	(temperature@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@h+1)^080h
	addwf	(temperature@h+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@h)^080h
	addwf	(temperature@h)^080h

	line	159
;Temp Base.c: 159: command(0X87);
	movlw	(087h)
	fcall	_command
	line	161
;Temp Base.c: 161: data(0X2B);
	movlw	(02Bh)
	fcall	_data
	line	162
;Temp Base.c: 162: data(a+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@a)^080h,w
	addlw	030h
	fcall	_data
	line	163
;Temp Base.c: 163: data(c+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@c)^080h,w
	addlw	030h
	fcall	_data
	line	164
;Temp Base.c: 164: data(e+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@e)^080h,w
	addlw	030h
	fcall	_data
	line	165
;Temp Base.c: 165: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	166
;Temp Base.c: 166: data(g+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@g)^080h,w
	addlw	030h
	fcall	_data
	line	167
;Temp Base.c: 167: data(h+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@h)^080h,w
	addlw	030h
	fcall	_data
	line	168
;Temp Base.c: 168: data(0XDF);
	movlw	(0DFh)
	fcall	_data
	line	169
;Temp Base.c: 169: data(0X43);
	movlw	(043h)
	fcall	_data
	
l30001381:	
	line	173
;Temp Base.c: 170: }
;Temp Base.c: 173: if(DV<255)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_temperature+0+0)
	movlw	(high(0FFh))^80h
	subwf	(??_temperature+0+0),w
	skipz
	goto	u2415
	movlw	low(0FFh)
	subwf	(_DV),w
u2415:

	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l28
u2410:
	
l30001382:	
	line	176
;Temp Base.c: 174: {
;Temp Base.c: 176: w1=z*100;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@z)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@z+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@z+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	0+(?___ftmul)+03h
	movlw	0xc8
	movwf	1+(?___ftmul)+03h
	movlw	0x42
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@w1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@w1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(temperature@w1+2)^080h
	line	177
;Temp Base.c: 177: w=5000-w1;
	movf	(temperature@w1)^080h,w
	movwf	(?___ftneg)
	movf	(temperature@w1+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(temperature@w1+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftneg)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftneg)),w
	movwf	(?___ftadd+2)
	movlw	0x40
	movwf	0+(?___ftadd)+03h
	movlw	0x9c
	movwf	1+(?___ftadd)+03h
	movlw	0x45
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@w+1)^080h
	addwf	(temperature@w+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@w)^080h
	addwf	(temperature@w)^080h

	line	184
;Temp Base.c: 184: a1=w/10000;
	movf	(temperature@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@w)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(02710h)
	movwf	0+(?___awdiv)+02h
	movlw	high(02710h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@a1+1)^080h
	addwf	(temperature@a1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@a1)^080h
	addwf	(temperature@a1)^080h

	line	185
;Temp Base.c: 185: b1=w%10000;
	movf	(temperature@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@w)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(02710h)
	movwf	0+(?___awmod)+02h
	movlw	high(02710h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@b1+1)^080h
	addwf	(temperature@b1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@b1)^080h
	addwf	(temperature@b1)^080h

	line	186
;Temp Base.c: 186: c1=b1/1000;
	movf	(temperature@b1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@b1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(03E8h)
	movwf	0+(?___awdiv)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@c1+1)^080h
	addwf	(temperature@c1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@c1)^080h
	addwf	(temperature@c1)^080h

	line	187
;Temp Base.c: 187: d1=b1%1000;
	movf	(temperature@b1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@b1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(03E8h)
	movwf	0+(?___awmod)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@d1+1)^080h
	addwf	(temperature@d1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@d1)^080h
	addwf	(temperature@d1)^080h

	line	188
;Temp Base.c: 188: e1=d1/100;
	movf	(temperature@d1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@d1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(064h)
	movwf	0+(?___awdiv)+02h
	movlw	high(064h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@e1+1)^080h
	addwf	(temperature@e1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@e1)^080h
	addwf	(temperature@e1)^080h

	line	189
;Temp Base.c: 189: f1=d1%100;
	movf	(temperature@d1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@d1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(064h)
	movwf	0+(?___awmod)+02h
	movlw	high(064h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@f1+1)^080h
	addwf	(temperature@f1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@f1)^080h
	addwf	(temperature@f1)^080h

	line	190
;Temp Base.c: 190: g1=f1/10;
	movf	(temperature@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@g1+1)^080h
	addwf	(temperature@g1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@g1)^080h
	addwf	(temperature@g1)^080h

	line	191
;Temp Base.c: 191: h1=f1%10;
	movf	(temperature@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@h1+1)^080h
	addwf	(temperature@h1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(temperature@h1)^080h
	addwf	(temperature@h1)^080h

	line	194
;Temp Base.c: 194: command(0X87);
	movlw	(087h)
	fcall	_command
	line	196
;Temp Base.c: 196: data(0X2D);
	movlw	(02Dh)
	fcall	_data
	line	197
;Temp Base.c: 197: data(a1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@a1)^080h,w
	addlw	030h
	fcall	_data
	line	198
;Temp Base.c: 198: data(c1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@c1)^080h,w
	addlw	030h
	fcall	_data
	line	199
;Temp Base.c: 199: data(e1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@e1)^080h,w
	addlw	030h
	fcall	_data
	line	200
;Temp Base.c: 200: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	201
;Temp Base.c: 201: data(g1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@g1)^080h,w
	addlw	030h
	fcall	_data
	line	202
;Temp Base.c: 202: data(h1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@h1)^080h,w
	addlw	030h
	fcall	_data
	line	203
;Temp Base.c: 203: data(0XDF);
	movlw	(0DFh)
	fcall	_data
	line	204
;Temp Base.c: 204: data(0X43);
	movlw	(043h)
	fcall	_data
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_temperature
	__end_of_temperature:
; =============== function _temperature ends ============

psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:
	line	208
	signat	_temperature,88
	global	___ftmul

; *************** function ___ftmul *****************
; Defined at:
;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftmul.c"
; Parameters:    Size  Location     Type
;  f1              3   19[BANK0 ] float 
;  f2              3   22[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  f3_as_produc    3   14[BANK0 ] unsigned um
;  sign            1   18[BANK0 ] unsigned char 
;  cntr            1   17[BANK0 ] unsigned char 
;  exp             1   13[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3   19[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      16       0       0       0
;      Temp:     4
;      Total:   16
; This function calls:
;		___ftpack
; This function is called by:
;		_temperature
;		_voltage
; This function uses a non-reentrant model
; 
psect	text128
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l30001485:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp))&07fh,f
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l30001488
u2830:
	
l30001486:	
	line	57
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l114
	
l30001488:	
	line	58
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign))&07fh,f
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l30001491
u2840:
	
l30001489:	
	line	59
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l114
	
l30001491:	
	line	60
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u2855:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u2850:
	addlw	-1
	skipz
	goto	u2855
	movf	0+(??___ftmul+0+0),w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u2865:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u2860:
	addlw	-1
	skipz
	goto	u2865
	movf	0+(??___ftmul+0+0),w
	movwf	(??___ftmul+3+0)
	movf	(??___ftmul+3+0),w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	andwf	(___ftmul@sign),f
	
l30001492:	
	line	64
	bsf	(___ftmul@f1)+(15/8),(15)&7
	
l30001493:	
	line	66
	bsf	(___ftmul@f2)+(15/8),(15)&7
	
l30001494:	
	line	67
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	
l30001495:	
	line	68
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	
l30001496:	
	line	69
	movlw	(07h)
	movwf	(___ftmul@cntr)
	
l30001497:	
	line	71
	btfss	(___ftmul@f1),(0)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l30001499
u2870:
	
l30001498:	
	line	72
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2881
	addwf	(___ftmul@f3_as_product+1),f
u2881:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2882
	addwf	(___ftmul@f3_as_product+2),f
u2882:

	
l30001499:	
	line	73
	movlw	01h
u2895:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2895

	
l30001500:	
	line	74
	movlw	01h
u2905:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2905
	
l30001501:	
	line	75
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l30001497
u2910:
	
l30001502:	
	line	76
	movlw	(09h)
	movwf	(___ftmul@cntr)
	
l30001503:	
	line	78
	btfss	(___ftmul@f1),(0)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l30001505
u2920:
	
l30001504:	
	line	79
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2931
	addwf	(___ftmul@f3_as_product+1),f
u2931:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2932
	addwf	(___ftmul@f3_as_product+2),f
u2932:

	
l30001505:	
	line	80
	movlw	01h
u2945:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2945

	
l30001506:	
	line	81
	movlw	01h
u2955:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2955

	
l30001507:	
	line	82
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l30001503
u2960:
	
l30001508:	
	line	83
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1+0)
	movf	(??___ftmul+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
; =============== function ___ftmul ends ============

psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:
	line	84
	signat	___ftmul,8315
	global	___ftneg

; *************** function ___ftneg *****************
; Defined at:
;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftneg.c"
; Parameters:    Size  Location     Type
;  f1              3    0[COMMON] float 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  3    0[COMMON] float 
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       0       0       0       0
;      Temp:     0
;      Total:    3
; This function calls:
;		Nothing
; This function is called by:
;		_temperature
; This function uses a non-reentrant model
; 
psect	text129
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l30001295:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l30001297
u2120:
	
l30001296:	
	line	18
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	
l30001297:	
	line	19
	
l206:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
; =============== function ___ftneg ends ============

psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:
	line	20
	signat	___ftneg,4219
	global	___awtoft

; *************** function ___awtoft *****************
; Defined at:
;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awtoft.c"
; Parameters:    Size  Location     Type
;  c               2    6[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  sign            1    5[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3    6[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     2
;      Total:    6
; This function calls:
;		___ftpack
; This function is called by:
;		_temperature
;		_voltage
; This function uses a non-reentrant model
; 
psect	text130
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l30001444:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	
l30001445:	
	line	37
	btfss	(___awtoft@c+1),7
	goto	u2621
	goto	u2620
u2621:
	goto	l30001447
u2620:
	
l30001446:	
	line	38
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	
l30001447:	
	line	41
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0+0)
	movf	(??___awtoft+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1+0)
	movf	(??___awtoft+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	
l183:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
; =============== function ___awtoft ends ============

psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:
	line	42
	signat	___awtoft,4219
	global	___ftdiv

; *************** function ___ftdiv *****************
; Defined at:
;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftdiv.c"
; Parameters:    Size  Location     Type
;  f1              3   35[BANK0 ] float 
;  f2              3   38[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  f3              3   30[BANK0 ] float 
;  sign            1   34[BANK0 ] unsigned char 
;  exp             1   33[BANK0 ] unsigned char 
;  cntr            1   29[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3   35[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      16       0       0       0
;      Temp:     4
;      Total:   16
; This function calls:
;		___ftpack
; This function is called by:
;		_temperature
;		_voltage
; This function uses a non-reentrant model
; 
psect	text131
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l30001464:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f1+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	(??___ftdiv+0+0+2)
	clrc
	rlf	(??___ftdiv+0+1),w
	rlf	(??___ftdiv+0+2),w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp))&07fh,f
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l30001467
u2750:
	
l30001465:	
	line	56
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l107
	
l30001467:	
	line	57
	movf	(___ftdiv@f2),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f2+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	(??___ftdiv+0+0+2)
	clrc
	rlf	(??___ftdiv+0+1),w
	rlf	(??___ftdiv+0+2),w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign))&07fh,f
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l30001470
u2760:
	
l30001468:	
	line	58
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l107
	
l30001470:	
	line	59
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	
l30001471:	
	line	60
	movf	(___ftdiv@sign),w
	addlw	089h
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	subwf	(___ftdiv@exp),f
	
l30001472:	
	line	61
	movf	(___ftdiv@f1),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f1+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u2775:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u2770:
	addlw	-1
	skipz
	goto	u2775
	movf	0+(??___ftdiv+0+0),w
	movwf	(___ftdiv@sign)
	
l30001473:	
	line	62
	movf	(___ftdiv@f2),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f2+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u2785:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u2780:
	addlw	-1
	skipz
	goto	u2785
	movf	0+(??___ftdiv+0+0),w
	movwf	(??___ftdiv+3+0)
	movf	(??___ftdiv+3+0),w
	xorwf	(___ftdiv@sign),f
	
l30001474:	
	line	63
	movlw	(080h)
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	andwf	(___ftdiv@sign),f
	
l30001475:	
	line	64
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	
l30001476:	
	line	66
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	
l30001477:	
	line	70
	movlw	01h
u2795:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2795
	
l30001478:	
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2805
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2805
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2805:
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l30001481
u2800:
	
l30001479:	
	line	72
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	
l30001480:	
	line	73
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	
l30001481:	
	line	75
	movlw	01h
u2815:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2815
	
l30001482:	
	line	76
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l30001477
u2820:
	
l30001483:	
	line	77
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1+0)
	movf	(??___ftdiv+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
; =============== function ___ftdiv ends ============

psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:
	line	78
	signat	___ftdiv,8315
	global	___fttol

; *************** function ___fttol *****************
; Defined at:
;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
; Parameters:    Size  Location     Type
;  f1              3   34[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  lval            4   29[BANK0 ] unsigned long 
;  exp1            1   33[BANK0 ] unsigned char 
;  sign1           1   28[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  4   34[BANK0 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      13       0       0       0
;      Temp:     3
;      Total:   13
; This function calls:
; This function is called by:
;		_temperature
;		_voltage
; This function uses a non-reentrant model
; 
psect	text132
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l30001142:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	(??___fttol+0+0)
	movf	(___fttol@f1+1),w
	movwf	(??___fttol+0+0+1)
	movf	(___fttol@f1+2),w
	movwf	(??___fttol+0+0+2)
	clrc
	rlf	(??___fttol+0+1),w
	rlf	(??___fttol+0+2),w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1))&07fh,f
	skipz
	goto	u1311
	goto	u1310
u1311:
	goto	l30001145
u1310:
	
l30001143:	
	line	50
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l167
	
l30001145:	
	line	51
	movf	(___fttol@f1),w
	movwf	(??___fttol+0+0)
	movf	(___fttol@f1+1),w
	movwf	(??___fttol+0+0+1)
	movf	(___fttol@f1+2),w
	movwf	(??___fttol+0+0+2)
	movlw	017h
u1325:
	clrc
	rrf	(??___fttol+0+2),f
	rrf	(??___fttol+0+1),f
	rrf	(??___fttol+0+0),f
u1320:
	addlw	-1
	skipz
	goto	u1325
	movf	0+(??___fttol+0+0),w
	movwf	(___fttol@sign1)
	
l30001146:	
	line	52
	bsf	(___fttol@f1)+(15/8),(15)&7
	
l30001147:	
	line	53
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	
l30001148:	
	line	54
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	
	clrf	3+(___fttol@lval)
	
l30001149:	
	line	55
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	
l30001150:	
	line	56
	btfss	(___fttol@exp1),7
	goto	u1331
	goto	u1330
u1331:
	goto	l30001155
u1330:
	
l30001151:	
	line	57
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1341
	goto	u1340
u1341:
	goto	l30001154
u1340:
	goto	l30001143
	
l30001154:	
	line	60
	movlw	01h
u1355:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1355

	line	61
	movlw	(01h)
	movwf	(??___fttol+0+0)
	movf	(??___fttol+0+0),w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l30001154
u1360:
	goto	l30001160
	
l30001155:	
	line	63
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l30001159
u1370:
	goto	l30001143
	
l30001158:	
	line	66
	movlw	01h
	movwf	(??___fttol+0+0)
u1385:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0+0)
	goto	u1385
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	
l30001159:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l30001158
u1390:
	
l30001160:	
	line	70
	movf	(___fttol@sign1),w
	skipz
	goto	u1400
	goto	l30001162
u1400:
	
l30001161:	
	line	71
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	
l30001162:	
	line	72
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l167:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
; =============== function ___fttol ends ============

psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:
	line	73
	signat	___fttol,4220
	global	___ftadd

; *************** function ___ftadd *****************
; Defined at:
;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftadd.c"
; Parameters:    Size  Location     Type
;  f1              3   11[BANK0 ] float 
;  f2              3   14[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  exp1            1   10[BANK0 ] unsigned char 
;  exp2            1    9[BANK0 ] unsigned char 
;  sign            1    8[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3   11[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      12       0       0       0
;      Temp:     3
;      Total:   12
; This function calls:
;		___ftpack
; This function is called by:
;		_temperature
; This function uses a non-reentrant model
; 
psect	text133
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt stack 6
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l30001340:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	(??___ftadd+0+0)
	movf	(___ftadd@f1+1),w
	movwf	(??___ftadd+0+0+1)
	movf	(___ftadd@f1+2),w
	movwf	(??___ftadd+0+0+2)
	clrc
	rlf	(??___ftadd+0+1),w
	rlf	(??___ftadd+0+2),w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	(??___ftadd+0+0)
	movf	(___ftadd@f2+1),w
	movwf	(??___ftadd+0+0+1)
	movf	(___ftadd@f2+2),w
	movwf	(??___ftadd+0+0+2)
	clrc
	rlf	(??___ftadd+0+1),w
	rlf	(??___ftadd+0+2),w
	movwf	(___ftadd@exp2)
	
l30001341:	
	line	92
	movf	(___ftadd@exp1),w
	skipz
	goto	u2130
	goto	l30001344
u2130:
	
l30001342:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2141
	goto	u2140
u2141:
	goto	l30001346
u2140:
	
l30001343:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l30001346
u2150:
	
l30001344:	
	line	93
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l78
	
l30001346:	
	line	94
	movf	(___ftadd@exp2),w
	skipz
	goto	u2160
	goto	l30001349
u2160:
	
l30001347:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2171
	goto	u2170
u2171:
	goto	l30001351
u2170:
	
l30001348:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l30001351
u2180:
	
l30001349:	
	line	95
	movf	(___ftadd@f1),w
	movwf	(?___ftadd)
	movf	(___ftadd@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f1+2),w
	movwf	(?___ftadd+2)
	goto	l78
	
l30001351:	
	line	96
	movlw	(06h)
	movwf	(___ftadd@sign)
	
l30001352:	
	line	97
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l81
u2190:
	
l30001353:	
	line	98
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l81:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l82
u2200:
	
l30001354:	
	line	100
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l82:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	
l30001355:	
	line	102
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	
l30001356:	
	line	103
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l30001362
u2210:
	
l30001357:	
	line	110
	movlw	01h
u2225:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2225
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	
l30001358:	
	line	112
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l30001361
u2230:
	
l30001359:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign))&07fh,w
	andlw	07h
	btfss	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l30001357
u2240:
	goto	l30001361
	
l30001360:	
	line	114
	movlw	01h
u2255:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2255

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	addwf	(___ftadd@exp1),f
	
l30001361:	
	line	113
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l30001360
u2260:
	goto	l90
	
l30001362:	
	line	117
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l90
u2270:
	
l30001363:	
	line	121
	movlw	01h
u2285:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2285
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	
l30001364:	
	line	123
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l30001367
u2290:
	
l30001365:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign))&07fh,w
	andlw	07h
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l30001363
u2300:
	goto	l30001367
	
l30001366:	
	line	125
	movlw	01h
u2315:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2315

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	addwf	(___ftadd@exp2),f
	
l30001367:	
	line	124
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l30001366
u2320:
	
l90:	
	line	129
	btfss	(___ftadd@sign),(7)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l30001369
u2330:
	
l30001368:	
	line	131
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2341
	addwf	(___ftadd@f1+1),f
u2341:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2342
	addwf	(___ftadd@f1+2),f
u2342:

	
l30001369:	
	line	134
	btfss	(___ftadd@sign),(6)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l30001371
u2350:
	
l30001370:	
	line	136
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2361
	addwf	(___ftadd@f2+1),f
u2361:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2362
	addwf	(___ftadd@f2+2),f
u2362:

	
l30001371:	
	line	139
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	
l30001372:	
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2371
	addwf	(___ftadd@f2+1),f
u2371:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2372
	addwf	(___ftadd@f2+2),f
u2372:

	
l30001373:	
	line	141
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l30001376
u2380:
	
l30001374:	
	line	142
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2391
	addwf	(___ftadd@f2+1),f
u2391:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2392
	addwf	(___ftadd@f2+2),f
u2392:

	
l30001375:	
	line	144
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	
l30001376:	
	line	146
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1+0)
	movf	(??___ftadd+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
; =============== function ___ftadd ends ============

psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:
	line	148
	signat	___ftadd,8315
	global	_count

; *************** function _count *****************
; Defined at:
;		line 55 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
; Parameters:    Size  Location     Type
;  i               2   22[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  f               2   16[BANK0 ] int 
;  e               2   14[BANK0 ] int 
;  c               2   20[BANK0 ] int 
;  a               2   18[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      10       0       0       0
;      Temp:     0
;      Total:   10
; This function calls:
;		___awdiv
;		___awmod
;		_command
;		_data
; This function is called by:
;		_adc
; This function uses a non-reentrant model
; 
psect	text134
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	55
	global	__size_of_count
	__size_of_count	equ	__end_of_count-_count
;Temp Base.c: 54: void count(int i)
;Temp Base.c: 55: {
	
_count:	
	opt stack 6
; Regs used in _count: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l30001443:	
;Temp Base.c: 56: int a,c,e,f;
;Temp Base.c: 58: a=i/1000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@i+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(count@i),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(03E8h)
	movwf	0+(?___awdiv)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(count@a+1)
	addwf	(count@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(count@a)
	addwf	(count@a)

	line	59
;Temp Base.c: 59: c=(i%1000)/100;
	movf	(count@i+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(count@i),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(03E8h)
	movwf	0+(?___awmod)+02h
	movlw	high(03E8h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(0+(?___awmod)),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(064h)
	movwf	0+(?___awdiv)+02h
	movlw	high(064h)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(count@c+1)
	addwf	(count@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(count@c)
	addwf	(count@c)

	line	60
;Temp Base.c: 60: e=(i%100)/10;
	movf	(count@i+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(count@i),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(064h)
	movwf	0+(?___awmod)+02h
	movlw	high(064h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(0+(?___awmod)),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movlw	low(0Ah)
	movwf	0+(?___awdiv)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awdiv)+02h)+1
	fcall	___awdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(count@e+1)
	addwf	(count@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(count@e)
	addwf	(count@e)

	line	61
;Temp Base.c: 61: f=i%10;
	movf	(count@i+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(count@i),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(0Ah)
	movwf	0+(?___awmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(count@f+1)
	addwf	(count@f+1)
	movf	(0+(?___awmod)),w
	clrf	(count@f)
	addwf	(count@f)

	line	63
;Temp Base.c: 63: command(0X80);
	movlw	(080h)
	fcall	_command
	line	64
;Temp Base.c: 64: data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@a),w
	addlw	030h
	fcall	_data
	line	65
;Temp Base.c: 65: data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@c),w
	addlw	030h
	fcall	_data
	line	66
;Temp Base.c: 66: data(e+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@e),w
	addlw	030h
	fcall	_data
	line	67
;Temp Base.c: 67: data(f+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@f),w
	addlw	030h
	fcall	_data
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_count
	__end_of_count:
; =============== function _count ends ============

psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:
	line	68
	signat	_count,4216
	global	___ftpack

; *************** function ___ftpack *****************
; Defined at:
;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\float.c"
; Parameters:    Size  Location     Type
;  arg             3    0[BANK0 ] unsigned um
;  exp             1    3[BANK0 ] unsigned char 
;  sign            1    4[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  3    0[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       5       0       0       0
;      Temp:     3
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		___ftadd
;		___ftdiv
;		___ftmul
;		___awtoft
; This function uses a non-reentrant model
; 
psect	text135
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l30001449:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2630
	goto	l30001451
u2630:
	
l30001450:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l30001454
u2640:
	
l30001451:	
	line	65
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l370
	
l30001453:	
	line	67
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2655:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2655

	
l30001454:	
	line	66
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l30001453
u2660:
	goto	l375
	
l30001455:	
	line	71
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	
l30001456:	
	line	72
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2671
	addwf	(___ftpack@arg+1),f
u2671:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2672
	addwf	(___ftpack@arg+2),f
u2672:

	
l30001457:	
	line	73
	movlw	01h
u2685:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2685

	
l375:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l30001455
u2690:
	goto	l30001459
	
l30001458:	
	line	76
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2705:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2705
	
l30001459:	
	line	75
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l30001458
u2710:
	
l380:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l381
u2720:
	
l30001460:	
	line	80
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l381:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	
l30001461:	
	line	82
	movf	(___ftpack@exp),w
	movwf	(??___ftpack+0+0)
	clrf	(??___ftpack+0+0+1)
	clrf	(??___ftpack+0+0+2)
	movlw	010h
u2735:
	clrc
	rlf	(??___ftpack+0+0),f
	rlf	(??___ftpack+0+1),f
	rlf	(??___ftpack+0+2),f
u2730:
	addlw	-1
	skipz
	goto	u2735
	movf	0+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+2),f
	
l30001462:	
	line	83
	movf	(___ftpack@sign),w
	skipz
	goto	u2740
	goto	l382
u2740:
	
l30001463:	
	line	84
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l382:	
	line	85
	
l370:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
; =============== function ___ftpack ends ============

psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:
	line	86
	signat	___ftpack,12411
	global	_data

; *************** function _data *****************
; Defined at:
;		line 39 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
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
;		_count
;		_temperature
;		_voltage
;		_main
; This function uses a non-reentrant model
; 
psect	text136
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	39
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;Temp Base.c: 38: void data(char data)
;Temp Base.c: 39: {
	
_data:	
	opt stack 5
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	movwf	(data@data)
	
l30001287:	
	line	40
;Temp Base.c: 40: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	
l30001288:	
	line	41
;Temp Base.c: 41: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30001289:	
	line	42
;Temp Base.c: 42: pulse();
	fcall	_pulse
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:
	line	43
	signat	_data,4216
	global	_command

; *************** function _command *****************
; Defined at:
;		line 32 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
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
;		_count
;		_temperature
;		_voltage
;		_main
; This function uses a non-reentrant model
; 
psect	text137
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	32
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;Temp Base.c: 31: void command(char data)
;Temp Base.c: 32: {
	
_command:	
	opt stack 5
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30001284:	
	line	33
;Temp Base.c: 33: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30001285:	
	line	34
;Temp Base.c: 34: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30001286:	
	line	35
;Temp Base.c: 35: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:
	line	36
	signat	_command,4216
	global	___awmod

; *************** function ___awmod *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    2[BANK0 ] int 
;  divisor         2    4[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  sign            1    0[BANK0 ] unsigned char 
;  counter         1    1[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    2[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       6       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_count
;		_temperature
;		_voltage
; This function uses a non-reentrant model
; 
psect	text138
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30001425:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	
l30001426:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2531
	goto	u2530
u2531:
	goto	l30001428
u2530:
	
l30001427:	
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
	
l30001428:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u2541
	goto	u2540
u2541:
	goto	l30001430
u2540:
	
l30001429:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30001430:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2551
	goto	u2550
u2551:
	goto	l30001439
u2550:
	
l30001431:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30001434
	
l30001432:	
	line	18
	movlw	01h
u2565:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2565
	
l30001433:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30001434:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l30001432
u2570:
	
l30001435:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2585
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l30001437
u2580:
	
l30001436:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30001437:	
	line	24
	movlw	01h
u2595:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2595
	
l30001438:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l30001435
u2600:
	
l30001439:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u2610
	goto	l30001441
u2610:
	
l30001440:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30001441:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l265:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:
	line	30
	signat	___awmod,8314
	global	___awdiv

; *************** function ___awdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2   10[BANK0 ] int 
;  divisor         2   12[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  quotient        2    8[BANK0 ] int 
;  sign            1    7[BANK0 ] unsigned char 
;  counter         1    6[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2   10[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       8       0       0       0
;      Temp:     1
;      Total:    9
; This function calls:
; This function is called by:
;		_count
;		_temperature
;		_voltage
; This function uses a non-reentrant model
; 
psect	text139
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30001265:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	
l30001266:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2011
	goto	u2010
u2011:
	goto	l30001268
u2010:
	
l30001267:	
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
	
l30001268:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u2021
	goto	u2020
u2021:
	goto	l187
u2020:
	
l30001269:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30001270:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l187:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2031
	goto	u2030
u2031:
	goto	l30001280
u2030:
	
l30001271:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30001274
	
l30001272:	
	line	22
	movlw	01h
u2045:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2045
	
l30001273:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30001274:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2051
	goto	u2050
u2051:
	goto	l30001272
u2050:
	
l30001275:	
	line	26
	movlw	01h
u2065:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2065
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2075
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2075:
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l30001278
u2070:
	
l30001276:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30001277:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30001278:	
	line	31
	movlw	01h
u2085:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2085
	
l30001279:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l30001275
u2090:
	
l30001280:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u2100
	goto	l30001282
u2100:
	
l30001281:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30001282:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l185:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:
	line	37
	signat	___awdiv,8314
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 24 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
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
psect	text140
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	24
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;Temp Base.c: 23: void pulse()
;Temp Base.c: 24: {
	
_pulse:	
	opt stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l30001290:	
;Temp Base.c: 25: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30001291:	
	line	26
;Temp Base.c: 26: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30001292:	
	line	27
;Temp Base.c: 27: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	28
;Temp Base.c: 28: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
; =============== function _pulse ends ============

psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:
	line	29
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 18 in file "C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
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
psect	text141
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\Temp Base\Temp Base.c"
	line	18
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
	opt stack 3
; Regs used in _delay: [wreg]
	
l30001293:	
	
l30001294:	
	line	19
	movlw	low(-1)
	addwf	(delay@x),f
	skipnc
	incf	(delay@x+1),f
	movlw	high(-1)
	addwf	(delay@x+1),f
	movlw	high(-1)
	xorwf	((delay@x+1))&07fh,w
	skipz
	goto	u2115
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u2115:

	skipz
	goto	u2111
	goto	u2110
u2111:
	goto	l30001294
u2110:
	
l2:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:
	line	20
	signat	_delay,4216
	end
