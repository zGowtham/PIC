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
;COMMON:	_main->_adc
;BANK0:	_adc->_count
;BANK0:	_count->___awdiv
;COMMON:	___awdiv->___awmod
;BANK0:	___awdiv->___awmod
;COMMON:	_count->_command
;COMMON:	_count->_data
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
;COMMON:	_main->_adc1
;BANK0:	_adc1->_count1
;BANK0:	_count1->___awdiv
;COMMON:	___awdiv->___awmod
;BANK0:	___awdiv->___awmod
;COMMON:	_count1->_command
;COMMON:	_count1->_data
;BANK0:	_main->_voltage1
;COMMON:	_voltage1->___awtoft
;COMMON:	___awtoft->___ftpack
;BANK0:	___awtoft->___ftpack
;BANK0:	_voltage1->___ftdiv
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
	FNCALL	_main,_adc1
	FNCALL	_main,_voltage1
	FNCALL	_adc,_count
	FNCALL	_voltage,_command
	FNCALL	_voltage,___awtoft
	FNCALL	_voltage,___ftmul
	FNCALL	_voltage,___ftdiv
	FNCALL	_voltage,___fttol
	FNCALL	_voltage,___awdiv
	FNCALL	_voltage,___awmod
	FNCALL	_voltage,_data
	FNCALL	_adc1,_count1
	FNCALL	_voltage1,_command
	FNCALL	_voltage1,___awtoft
	FNCALL	_voltage1,___ftmul
	FNCALL	_voltage1,___ftdiv
	FNCALL	_voltage1,___fttol
	FNCALL	_voltage1,___awdiv
	FNCALL	_voltage1,___awmod
	FNCALL	_voltage1,_data
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_count1,___awdiv
	FNCALL	_count1,___awmod
	FNCALL	_count1,_command
	FNCALL	_count1,_data
	FNCALL	_count,___awdiv
	FNCALL	_count,___awmod
	FNCALL	_count,_command
	FNCALL	_count,_data
	FNCALL	_data,_pulse
	FNCALL	_command,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_low
	global	_DV
	global	_high
	global	_ADCON0
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
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
	file	"2 ADC.as"
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

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_low:
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
	global	?_delay
?_delay: ;@ 0x0
	global	??_data
??_data: ;@ 0x0
	global	??_pulse
??_pulse: ;@ 0x0
	global	??___ftpack
??___ftpack: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	1
	global	??___awdiv
??___awdiv: ;@ 0x1
	ds	1
	global	??_count1
??_count1: ;@ 0x2
	global	??_count
??_count: ;@ 0x2
	global	?_pulse
?_pulse: ;@ 0x2
	global	data@data
data@data:	; 1 bytes @ 0x2
	global	command@data
command@data:	; 1 bytes @ 0x2
	ds	1
	global	??___awtoft
??___awtoft: ;@ 0x3
	global	?_command
?_command: ;@ 0x3
	global	?_data
?_data: ;@ 0x3
	global	??_adc
??_adc: ;@ 0x3
	global	??_adc1
??_adc1: ;@ 0x3
	ds	2
	global	?_adc
?_adc: ;@ 0x5
	global	??_main
??_main: ;@ 0x5
	global	?_adc1
?_adc1: ;@ 0x5
	global	??_voltage1
??_voltage1: ;@ 0x5
	global	??_voltage
??_voltage: ;@ 0x5
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
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x6
	global	?___awtoft
?___awtoft: ;@ 0x6
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x6
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x7
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x8
	ds	1
	global	??___ftmul
??___ftmul: ;@ 0x9
	ds	1
	global	?___awdiv
?___awdiv: ;@ 0xA
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xA
	ds	2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0xC
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xD
	ds	1
	global	count1@e
count1@e:	; 2 bytes @ 0xE
	global	count@e
count@e:	; 2 bytes @ 0xE
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xE
	ds	2
	global	count@f
count@f:	; 2 bytes @ 0x10
	global	count1@f
count1@f:	; 2 bytes @ 0x10
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x12
	global	count@a
count@a:	; 2 bytes @ 0x12
	global	count1@a
count1@a:	; 2 bytes @ 0x12
	ds	1
	global	?___ftmul
?___ftmul: ;@ 0x13
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x13
	ds	1
	global	count@c
count@c:	; 2 bytes @ 0x14
	global	count1@c
count1@c:	; 2 bytes @ 0x14
	ds	2
	global	?_count
?_count: ;@ 0x16
	global	?_count1
?_count1: ;@ 0x16
	global	count1@i
count1@i:	; 2 bytes @ 0x16
	global	count@i
count@i:	; 2 bytes @ 0x16
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x16
	ds	3
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
	global	voltage1@z
voltage1@z:	; 3 bytes @ 0x29
	global	voltage@z
voltage@z:	; 3 bytes @ 0x29
	ds	3
	global	voltage1@c
voltage1@c:	; 2 bytes @ 0x2C
	global	voltage@c
voltage@c:	; 2 bytes @ 0x2C
	ds	2
	global	voltage@a
voltage@a:	; 2 bytes @ 0x2E
	global	voltage1@a
voltage1@a:	; 2 bytes @ 0x2E
	ds	2
	global	voltage@b
voltage@b:	; 2 bytes @ 0x30
	global	voltage1@b
voltage1@b:	; 2 bytes @ 0x30
	ds	2
	global	voltage@d
voltage@d:	; 2 bytes @ 0x32
	global	voltage1@d
voltage1@d:	; 2 bytes @ 0x32
	ds	2
	global	?_main
?_main: ;@ 0x34
	global	?_voltage1
?_voltage1: ;@ 0x34
	global	?_voltage
?_voltage: ;@ 0x34
;Data sizes: Strings 0, constant 0, data 0, bss 6, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5       9
; BANK0           80     52      54
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___awdiv	int  size(1); Largest target is 0
;?___awmod	int  size(1); Largest target is 0
;?___ftmul	float  size(1); Largest target is 0
;?___fttol	long  size(1); Largest target is 0
;?___ftdiv	float  size(1); Largest target is 0
;?___awtoft	float  size(1); Largest target is 0
;?___ftpack	float  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 10170   0.00
;            _command
;               _data
;                _adc
;            _voltage
;               _adc1
;           _voltage1
;  _adc                                               2    0  854   0.00
;                                    3 COMMO    2
;              _count
;  _voltage                                          11    0 4199   0.00
;                                   41 BANK0   11
;            _command
;           ___awtoft
;            ___ftmul
;            ___ftdiv
;            ___fttol
;            ___awdiv
;            ___awmod
;               _data
;  _adc1                                              2    0  854   0.00
;                                    3 COMMO    2
;             _count1
;  _voltage1                                         11    0 4199   0.00
;                                   41 BANK0   11
;            _command
;           ___awtoft
;            ___ftmul
;            ___ftdiv
;            ___fttol
;            ___awdiv
;            ___awmod
;               _data
;    ___ftmul                                        10    6  767   0.00
;                                    9 BANK0   16
;           ___awtoft (ARG)
;           ___ftpack
;    ___awtoft                                        3    3  222   0.00
;                                    3 COMMO    2
;                                    5 BANK0    4
;           ___ftpack
;    ___ftdiv                                        10    6 1352   0.00
;                                   25 BANK0   16
;            ___ftmul (ARG)
;           ___awtoft (ARG)
;           ___ftpack
;    ___fttol                                         9    4  953   0.00
;                                   25 BANK0   13
;            ___ftmul (ARG)
;    _count1                                          8    2  854   0.00
;                                   14 BANK0   10
;            ___awdiv
;            ___awmod
;            _command
;               _data
;    _count                                           8    2  854   0.00
;                                   14 BANK0   10
;            ___awdiv
;            ___awmod
;            _command
;               _data
;      ___ftpack                                      3    5  155   0.00
;                                    0 COMMO    3
;                                    0 BANK0    5
;      _data                                          1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;      _command                                       1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;      ___awmod                                       3    4  218   0.00
;                                    0 COMMO    1
;                                    0 BANK0    6
;      ___awdiv                                       5    4  440   0.00
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
;COMMON               E      5       9       1       64.3%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      3F       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     34      36       5       67.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      3F      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 178 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
;		_adc1
;		_voltage1
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	178
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;2 ADC.c: 177: void main()
;2 ADC.c: 178: {
	
_main:	
	opt stack 8
; Regs used in _main: [allreg]
	line	179
	
l30001145:	
;2 ADC.c: 179: TRISA=0X03; PORTA=0X00;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30001146:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l30001147:	
	line	180
;2 ADC.c: 180: TRISD=0X00; PORTD=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30001148:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30001149:	
	line	181
;2 ADC.c: 181: TRISE=0X00; PORTE=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	
l30001150:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(9)	;volatile
	
l30001151:	
	line	183
;2 ADC.c: 183: ANSEL=0X03; ANSELH=0X00;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(393)^0180h
	
l30001152:	
	line	185
;2 ADC.c: 185: command(0X38);
	movlw	(038h)
	fcall	_command
	
l30001153:	
	line	186
;2 ADC.c: 186: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30001154:	
	line	188
;2 ADC.c: 188: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001155:	
	line	189
;2 ADC.c: 189: data('0');
	movlw	(030h)
	fcall	_data
	
l30001156:	
	line	190
;2 ADC.c: 190: data('0');
	movlw	(030h)
	fcall	_data
	
l30001157:	
	line	195
;2 ADC.c: 193: {
;2 ADC.c: 195: adc();
	fcall	_adc
	
l30001158:	
	line	196
;2 ADC.c: 196: voltage();
	fcall	_voltage
	
l30001159:	
	line	197
;2 ADC.c: 197: adc1();
	fcall	_adc1
	
l30001160:	
	line	198
;2 ADC.c: 198: voltage1();
	fcall	_voltage1
	goto	l30001157
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	202
	signat	_main,88
	global	_adc
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

; *************** function _adc *****************
; Defined at:
;		line 70 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
;      Locals:         2       0       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_count
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text111
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	70
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
;2 ADC.c: 69: void adc()
;2 ADC.c: 70: {
	
_adc:	
	opt stack 7
; Regs used in _adc: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
l30001042:	
;2 ADC.c: 71: ADCON0=0X83; ADCON1=0X80;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h
	
l11:	
	line	72
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(31),(1)&7	;volatile
	goto	u1301
	goto	u1300
u1301:
	goto	l11
u1300:
	
l30001043:	
	line	73
;2 ADC.c: 73: high=ADRESH; low=ADRESL;
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
	movwf	(??_adc+0+0)
	clrf	(??_adc+0+0+1)
	movf	0+(??_adc+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_low)
	movf	1+(??_adc+0+0),w
	movwf	(_low+1)
	
l30001044:	
	line	75
;2 ADC.c: 75: if(high==0)
	movf	((_high+1)),w
	iorwf	((_high)),w
	skipz
	goto	u1311
	goto	u1310
u1311:
	goto	l30001047
u1310:
	
l30001045:	
	line	77
;2 ADC.c: 76: {
;2 ADC.c: 77: DV=low;
	movf	(_low+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_low),w
	clrf	(_DV)
	addwf	(_DV)

	
l30001046:	
	line	78
;2 ADC.c: 78: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001047:	
	line	81
;2 ADC.c: 79: }
;2 ADC.c: 81: if(high==1)
	movlw	01h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u1321
	goto	u1320
u1321:
	goto	l30001050
u1320:
	
l30001048:	
	line	83
;2 ADC.c: 82: {
;2 ADC.c: 83: DV=low+256;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_low),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	
l30001049:	
	line	84
;2 ADC.c: 84: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001050:	
	line	87
;2 ADC.c: 85: }
;2 ADC.c: 87: if(high==2)
	movlw	02h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u1331
	goto	u1330
u1331:
	goto	l30001053
u1330:
	
l30001051:	
	line	89
;2 ADC.c: 88: {
;2 ADC.c: 89: DV=low+512;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_low),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	
l30001052:	
	line	90
;2 ADC.c: 90: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001053:	
	line	93
;2 ADC.c: 91: }
;2 ADC.c: 93: if(high==3)
	movlw	03h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u1341
	goto	u1340
u1341:
	goto	l10
u1340:
	
l30001054:	
	line	95
;2 ADC.c: 94: {
;2 ADC.c: 95: DV=low+768;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_low),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	
l30001055:	
	line	96
;2 ADC.c: 96: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
; =============== function _adc ends ============

psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
	line	99
	signat	_adc,88
	global	_voltage

; *************** function _voltage *****************
; Defined at:
;		line 135 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
psect	text112
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	135
	global	__size_of_voltage
	__size_of_voltage	equ	__end_of_voltage-_voltage
;2 ADC.c: 134: void voltage()
;2 ADC.c: 135: {
	
_voltage:	
	opt stack 7
; Regs used in _voltage: [wreg+status,2+status,0+pclath+cstack]
	line	136
	
l30001144:	
;2 ADC.c: 136: command(0X88);
	movlw	(088h)
	fcall	_command
	line	140
;2 ADC.c: 137: int a,b,c,d;
;2 ADC.c: 138: float z;
;2 ADC.c: 140: z=(DV*5.0)/1023.0;
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
	line	142
;2 ADC.c: 142: d=z*100;
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

	line	143
;2 ADC.c: 143: a=d/100;
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

	line	144
;2 ADC.c: 144: b=(d%100)/10;
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

	line	145
;2 ADC.c: 145: c=d%10;
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

	line	147
;2 ADC.c: 147: data(a+48);
	movf	(voltage@a),w
	addlw	030h
	fcall	_data
	line	148
;2 ADC.c: 148: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	149
;2 ADC.c: 149: data(b+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(voltage@b),w
	addlw	030h
	fcall	_data
	line	150
;2 ADC.c: 150: data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(voltage@c),w
	addlw	030h
	fcall	_data
	line	151
;2 ADC.c: 151: data(0X20);
	movlw	(020h)
	fcall	_data
	line	152
;2 ADC.c: 152: data(0X56);
	movlw	(056h)
	fcall	_data
	
l26:	
	return
	opt stack 0
GLOBAL	__end_of_voltage
	__end_of_voltage:
; =============== function _voltage ends ============

psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:
	line	153
	signat	_voltage,88
	global	_adc1

; *************** function _adc1 *****************
; Defined at:
;		line 102 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
;      Locals:         2       0       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_count1
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text113
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	102
	global	__size_of_adc1
	__size_of_adc1	equ	__end_of_adc1-_adc1
;2 ADC.c: 101: void adc1()
;2 ADC.c: 102: {
	
_adc1:	
	opt stack 7
; Regs used in _adc1: [wreg+status,2+status,0+pclath+cstack]
	line	103
	
l30001057:	
;2 ADC.c: 103: ADCON0=0X87; ADCON1=0X80;
	movlw	(087h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h
	
l19:	
	line	104
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(31),(1)&7	;volatile
	goto	u1351
	goto	u1350
u1351:
	goto	l19
u1350:
	
l30001058:	
	line	105
;2 ADC.c: 105: high=ADRESH; low=ADRESL;
	movf	(30),w	;volatile
	movwf	(??_adc1+0+0)
	clrf	(??_adc1+0+0+1)
	movf	0+(??_adc1+0+0),w
	movwf	(_high)
	movf	1+(??_adc1+0+0),w
	movwf	(_high+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc1+0+0)
	clrf	(??_adc1+0+0+1)
	movf	0+(??_adc1+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_low)
	movf	1+(??_adc1+0+0),w
	movwf	(_low+1)
	
l30001059:	
	line	107
;2 ADC.c: 107: if(high==0)
	movf	((_high+1)),w
	iorwf	((_high)),w
	skipz
	goto	u1361
	goto	u1360
u1361:
	goto	l30001062
u1360:
	
l30001060:	
	line	109
;2 ADC.c: 108: {
;2 ADC.c: 109: DV=low;
	movf	(_low+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_low),w
	clrf	(_DV)
	addwf	(_DV)

	
l30001061:	
	line	110
;2 ADC.c: 110: count1(DV);
	movf	(_DV+1),w
	clrf	(?_count1+1)
	addwf	(?_count1+1)
	movf	(_DV),w
	clrf	(?_count1)
	addwf	(?_count1)

	fcall	_count1
	
l30001062:	
	line	113
;2 ADC.c: 111: }
;2 ADC.c: 113: if(high==1)
	movlw	01h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u1371
	goto	u1370
u1371:
	goto	l30001065
u1370:
	
l30001063:	
	line	115
;2 ADC.c: 114: {
;2 ADC.c: 115: DV=low+256;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_low),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	
l30001064:	
	line	116
;2 ADC.c: 116: count1(DV);
	movf	(_DV+1),w
	clrf	(?_count1+1)
	addwf	(?_count1+1)
	movf	(_DV),w
	clrf	(?_count1)
	addwf	(?_count1)

	fcall	_count1
	
l30001065:	
	line	119
;2 ADC.c: 117: }
;2 ADC.c: 119: if(high==2)
	movlw	02h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u1381
	goto	u1380
u1381:
	goto	l30001068
u1380:
	
l30001066:	
	line	121
;2 ADC.c: 120: {
;2 ADC.c: 121: DV=low+512;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_low),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	
l30001067:	
	line	122
;2 ADC.c: 122: count1(DV);
	movf	(_DV+1),w
	clrf	(?_count1+1)
	addwf	(?_count1+1)
	movf	(_DV),w
	clrf	(?_count1)
	addwf	(?_count1)

	fcall	_count1
	
l30001068:	
	line	125
;2 ADC.c: 123: }
;2 ADC.c: 125: if(high==3)
	movlw	03h
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l18
u1390:
	
l30001069:	
	line	127
;2 ADC.c: 126: {
;2 ADC.c: 127: DV=low+768;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_low),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	
l30001070:	
	line	128
;2 ADC.c: 128: count1(DV);
	movf	(_DV+1),w
	clrf	(?_count1+1)
	addwf	(?_count1+1)
	movf	(_DV),w
	clrf	(?_count1)
	addwf	(?_count1)

	fcall	_count1
	
l18:	
	return
	opt stack 0
GLOBAL	__end_of_adc1
	__end_of_adc1:
; =============== function _adc1 ends ============

psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:
	line	131
	signat	_adc1,88
	global	_voltage1

; *************** function _voltage1 *****************
; Defined at:
;		line 157 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
psect	text114
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	157
	global	__size_of_voltage1
	__size_of_voltage1	equ	__end_of_voltage1-_voltage1
;2 ADC.c: 156: void voltage1()
;2 ADC.c: 157: {
	
_voltage1:	
	opt stack 7
; Regs used in _voltage1: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l30001161:	
;2 ADC.c: 158: command(0XC8);
	movlw	(0C8h)
	fcall	_command
	line	162
;2 ADC.c: 159: int a,b,c,d;
;2 ADC.c: 160: float z;
;2 ADC.c: 162: z=(DV*5.0)/1023.0;
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
	movwf	(voltage1@z)
	movf	(1+(?___ftdiv)),w
	movwf	(voltage1@z+1)
	movf	(2+(?___ftdiv)),w
	movwf	(voltage1@z+2)
	line	164
;2 ADC.c: 164: d=z*100;
	movf	(voltage1@z),w
	movwf	(?___ftmul)
	movf	(voltage1@z+1),w
	movwf	(?___ftmul+1)
	movf	(voltage1@z+2),w
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
	clrf	(voltage1@d+1)
	addwf	(voltage1@d+1)
	movf	(0+(?___fttol)),w
	clrf	(voltage1@d)
	addwf	(voltage1@d)

	line	165
;2 ADC.c: 165: a=d/100;
	movf	(voltage1@d+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(voltage1@d),w
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
	clrf	(voltage1@a+1)
	addwf	(voltage1@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(voltage1@a)
	addwf	(voltage1@a)

	line	166
;2 ADC.c: 166: b=(d%100)/10;
	movf	(voltage1@d+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(voltage1@d),w
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
	clrf	(voltage1@b+1)
	addwf	(voltage1@b+1)
	movf	(0+(?___awdiv)),w
	clrf	(voltage1@b)
	addwf	(voltage1@b)

	line	167
;2 ADC.c: 167: c=d%10;
	movf	(voltage1@d+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(voltage1@d),w
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
	clrf	(voltage1@c+1)
	addwf	(voltage1@c+1)
	movf	(0+(?___awmod)),w
	clrf	(voltage1@c)
	addwf	(voltage1@c)

	line	169
;2 ADC.c: 169: data(a+48);
	movf	(voltage1@a),w
	addlw	030h
	fcall	_data
	line	170
;2 ADC.c: 170: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	171
;2 ADC.c: 171: data(b+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(voltage1@b),w
	addlw	030h
	fcall	_data
	line	172
;2 ADC.c: 172: data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(voltage1@c),w
	addlw	030h
	fcall	_data
	line	173
;2 ADC.c: 173: data(0X20);
	movlw	(020h)
	fcall	_data
	line	174
;2 ADC.c: 174: data(0X56);
	movlw	(056h)
	fcall	_data
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_voltage1
	__end_of_voltage1:
; =============== function _voltage1 ends ============

psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:
	line	175
	signat	_voltage1,88
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
;		_voltage
;		_voltage1
; This function uses a non-reentrant model
; 
psect	text115
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l30001119:	
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
	goto	u1511
	goto	u1510
u1511:
	goto	l30001122
u1510:
	
l30001120:	
	line	57
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l110
	
l30001122:	
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
	goto	u1521
	goto	u1520
u1521:
	goto	l30001125
u1520:
	
l30001123:	
	line	59
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l110
	
l30001125:	
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
u1535:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u1530:
	addlw	-1
	skipz
	goto	u1535
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
u1545:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u1540:
	addlw	-1
	skipz
	goto	u1545
	movf	0+(??___ftmul+0+0),w
	movwf	(??___ftmul+3+0)
	movf	(??___ftmul+3+0),w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	andwf	(___ftmul@sign),f
	
l30001126:	
	line	64
	bsf	(___ftmul@f1)+(15/8),(15)&7
	
l30001127:	
	line	66
	bsf	(___ftmul@f2)+(15/8),(15)&7
	
l30001128:	
	line	67
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	
l30001129:	
	line	68
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	
l30001130:	
	line	69
	movlw	(07h)
	movwf	(___ftmul@cntr)
	
l30001131:	
	line	71
	btfss	(___ftmul@f1),(0)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l30001133
u1550:
	
l30001132:	
	line	72
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1561
	addwf	(___ftmul@f3_as_product+1),f
u1561:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1562
	addwf	(___ftmul@f3_as_product+2),f
u1562:

	
l30001133:	
	line	73
	movlw	01h
u1575:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1575

	
l30001134:	
	line	74
	movlw	01h
u1585:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1585
	
l30001135:	
	line	75
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l30001131
u1590:
	
l30001136:	
	line	76
	movlw	(09h)
	movwf	(___ftmul@cntr)
	
l30001137:	
	line	78
	btfss	(___ftmul@f1),(0)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l30001139
u1600:
	
l30001138:	
	line	79
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1611
	addwf	(___ftmul@f3_as_product+1),f
u1611:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1612
	addwf	(___ftmul@f3_as_product+2),f
u1612:

	
l30001139:	
	line	80
	movlw	01h
u1625:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1625

	
l30001140:	
	line	81
	movlw	01h
u1635:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1635

	
l30001141:	
	line	82
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l30001137
u1640:
	
l30001142:	
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
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
; =============== function ___ftmul ends ============

psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:
	line	84
	signat	___ftmul,8315
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
;		_voltage
;		_voltage1
; This function uses a non-reentrant model
; 
psect	text116
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l30001018:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	
l30001019:	
	line	37
	btfss	(___awtoft@c+1),7
	goto	u1201
	goto	u1200
u1201:
	goto	l30001021
u1200:
	
l30001020:	
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
	
l30001021:	
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
	
l179:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
; =============== function ___awtoft ends ============

psect	text117,local,class=CODE,delta=2
global __ptext117
__ptext117:
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
;		_voltage
;		_voltage1
; This function uses a non-reentrant model
; 
psect	text117
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l30000913:	
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
	goto	u761
	goto	u760
u761:
	goto	l30000916
u760:
	
l30000914:	
	line	56
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l103
	
l30000916:	
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
	goto	u771
	goto	u770
u771:
	goto	l30000919
u770:
	
l30000917:	
	line	58
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l103
	
l30000919:	
	line	59
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	
l30000920:	
	line	60
	movf	(___ftdiv@sign),w
	addlw	089h
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	subwf	(___ftdiv@exp),f
	
l30000921:	
	line	61
	movf	(___ftdiv@f1),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f1+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u785:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u780:
	addlw	-1
	skipz
	goto	u785
	movf	0+(??___ftdiv+0+0),w
	movwf	(___ftdiv@sign)
	
l30000922:	
	line	62
	movf	(___ftdiv@f2),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f2+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u795:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u790:
	addlw	-1
	skipz
	goto	u795
	movf	0+(??___ftdiv+0+0),w
	movwf	(??___ftdiv+3+0)
	movf	(??___ftdiv+3+0),w
	xorwf	(___ftdiv@sign),f
	
l30000923:	
	line	63
	movlw	(080h)
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	andwf	(___ftdiv@sign),f
	
l30000924:	
	line	64
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	
l30000925:	
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
	
l30000926:	
	line	70
	movlw	01h
u805:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u805
	
l30000927:	
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u815
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u815
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u815:
	skipc
	goto	u811
	goto	u810
u811:
	goto	l30000930
u810:
	
l30000928:	
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
	
l30000929:	
	line	73
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	
l30000930:	
	line	75
	movlw	01h
u825:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u825
	
l30000931:	
	line	76
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l30000926
u830:
	
l30000932:	
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
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
; =============== function ___ftdiv ends ============

psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
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
;		_voltage
;		_voltage1
; This function uses a non-reentrant model
; 
psect	text118
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l30000956:	
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
	goto	u841
	goto	u840
u841:
	goto	l30000959
u840:
	
l30000957:	
	line	50
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l163
	
l30000959:	
	line	51
	movf	(___fttol@f1),w
	movwf	(??___fttol+0+0)
	movf	(___fttol@f1+1),w
	movwf	(??___fttol+0+0+1)
	movf	(___fttol@f1+2),w
	movwf	(??___fttol+0+0+2)
	movlw	017h
u855:
	clrc
	rrf	(??___fttol+0+2),f
	rrf	(??___fttol+0+1),f
	rrf	(??___fttol+0+0),f
u850:
	addlw	-1
	skipz
	goto	u855
	movf	0+(??___fttol+0+0),w
	movwf	(___fttol@sign1)
	
l30000960:	
	line	52
	bsf	(___fttol@f1)+(15/8),(15)&7
	
l30000961:	
	line	53
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	
l30000962:	
	line	54
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	
	clrf	3+(___fttol@lval)
	
l30000963:	
	line	55
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	
l30000964:	
	line	56
	btfss	(___fttol@exp1),7
	goto	u861
	goto	u860
u861:
	goto	l30000969
u860:
	
l30000965:	
	line	57
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u871
	goto	u870
u871:
	goto	l30000968
u870:
	goto	l30000957
	
l30000968:	
	line	60
	movlw	01h
u885:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u885

	line	61
	movlw	(01h)
	movwf	(??___fttol+0+0)
	movf	(??___fttol+0+0),w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l30000968
u890:
	goto	l30000974
	
l30000969:	
	line	63
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u901
	goto	u900
u901:
	goto	l30000973
u900:
	goto	l30000957
	
l30000972:	
	line	66
	movlw	01h
	movwf	(??___fttol+0+0)
u915:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0+0)
	goto	u915
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	
l30000973:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u921
	goto	u920
u921:
	goto	l30000972
u920:
	
l30000974:	
	line	70
	movf	(___fttol@sign1),w
	skipz
	goto	u930
	goto	l30000976
u930:
	
l30000975:	
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
	
l30000976:	
	line	72
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l163:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
; =============== function ___fttol ends ============

psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:
	line	73
	signat	___fttol,4220
	global	_count1

; *************** function _count1 *****************
; Defined at:
;		line 54 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
;		_adc1
; This function uses a non-reentrant model
; 
psect	text119
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	54
	global	__size_of_count1
	__size_of_count1	equ	__end_of_count1-_count1
;2 ADC.c: 53: void count1(int i)
;2 ADC.c: 54: {
	
_count1:	
	opt stack 6
; Regs used in _count1: [wreg+status,2+status,0+pclath+cstack]
	line	57
	
l30001056:	
;2 ADC.c: 55: int a,c,e,f;
;2 ADC.c: 57: a=i/1000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count1@i+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(count1@i),w
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
	clrf	(count1@a+1)
	addwf	(count1@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(count1@a)
	addwf	(count1@a)

	line	58
;2 ADC.c: 58: c=(i%1000)/100;
	movf	(count1@i+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(count1@i),w
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
	clrf	(count1@c+1)
	addwf	(count1@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(count1@c)
	addwf	(count1@c)

	line	59
;2 ADC.c: 59: e=(i%100)/10;
	movf	(count1@i+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(count1@i),w
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
	clrf	(count1@e+1)
	addwf	(count1@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(count1@e)
	addwf	(count1@e)

	line	60
;2 ADC.c: 60: f=i%10;
	movf	(count1@i+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(count1@i),w
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
	clrf	(count1@f+1)
	addwf	(count1@f+1)
	movf	(0+(?___awmod)),w
	clrf	(count1@f)
	addwf	(count1@f)

	line	62
;2 ADC.c: 62: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	line	63
;2 ADC.c: 63: data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count1@a),w
	addlw	030h
	fcall	_data
	line	64
;2 ADC.c: 64: data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count1@c),w
	addlw	030h
	fcall	_data
	line	65
;2 ADC.c: 65: data(e+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count1@e),w
	addlw	030h
	fcall	_data
	line	66
;2 ADC.c: 66: data(f+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count1@f),w
	addlw	030h
	fcall	_data
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_count1
	__end_of_count1:
; =============== function _count1 ends ============

psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:
	line	67
	signat	_count1,4216
	global	_count

; *************** function _count *****************
; Defined at:
;		line 38 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
psect	text120
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	38
	global	__size_of_count
	__size_of_count	equ	__end_of_count-_count
;2 ADC.c: 37: void count(int i)
;2 ADC.c: 38: {
	
_count:	
	opt stack 6
; Regs used in _count: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l30001041:	
;2 ADC.c: 39: int a,c,e,f;
;2 ADC.c: 41: a=i/1000;
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

	line	42
;2 ADC.c: 42: c=(i%1000)/100;
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

	line	43
;2 ADC.c: 43: e=(i%100)/10;
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

	line	44
;2 ADC.c: 44: f=i%10;
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

	line	46
;2 ADC.c: 46: command(0X80);
	movlw	(080h)
	fcall	_command
	line	47
;2 ADC.c: 47: data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@a),w
	addlw	030h
	fcall	_data
	line	48
;2 ADC.c: 48: data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@c),w
	addlw	030h
	fcall	_data
	line	49
;2 ADC.c: 49: data(e+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@e),w
	addlw	030h
	fcall	_data
	line	50
;2 ADC.c: 50: data(f+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@f),w
	addlw	030h
	fcall	_data
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_count
	__end_of_count:
; =============== function _count ends ============

psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:
	line	51
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
;		___ftdiv
;		___ftmul
;		___awtoft
; This function uses a non-reentrant model
; 
psect	text121
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l30000978:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u940
	goto	l30000980
u940:
	
l30000979:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u951
	goto	u950
u951:
	goto	l30000983
u950:
	
l30000980:	
	line	65
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l366
	
l30000982:	
	line	67
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u965:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u965

	
l30000983:	
	line	66
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l30000982
u970:
	goto	l371
	
l30000984:	
	line	71
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	
l30000985:	
	line	72
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u981
	addwf	(___ftpack@arg+1),f
u981:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u982
	addwf	(___ftpack@arg+2),f
u982:

	
l30000986:	
	line	73
	movlw	01h
u995:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u995

	
l371:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l30000984
u1000:
	goto	l30000988
	
l30000987:	
	line	76
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1015:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1015
	
l30000988:	
	line	75
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l30000987
u1020:
	
l376:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l377
u1030:
	
l30000989:	
	line	80
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l377:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	
l30000990:	
	line	82
	movf	(___ftpack@exp),w
	movwf	(??___ftpack+0+0)
	clrf	(??___ftpack+0+0+1)
	clrf	(??___ftpack+0+0+2)
	movlw	010h
u1045:
	clrc
	rlf	(??___ftpack+0+0),f
	rlf	(??___ftpack+0+1),f
	rlf	(??___ftpack+0+2),f
u1040:
	addlw	-1
	skipz
	goto	u1045
	movf	0+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+2),f
	
l30000991:	
	line	83
	movf	(___ftpack@sign),w
	skipz
	goto	u1050
	goto	l378
u1050:
	
l30000992:	
	line	84
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l378:	
	line	85
	
l366:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
; =============== function ___ftpack ends ============

psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:
	line	86
	signat	___ftpack,12411
	global	_data

; *************** function _data *****************
; Defined at:
;		line 31 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
;		_count1
;		_voltage
;		_voltage1
;		_main
; This function uses a non-reentrant model
; 
psect	text122
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	31
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;2 ADC.c: 30: void data(char data)
;2 ADC.c: 31: {
	
_data:	
	opt stack 5
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	movwf	(data@data)
	
l30001093:	
	line	32
;2 ADC.c: 32: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	
l30001094:	
	line	33
;2 ADC.c: 33: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30001095:	
	line	34
;2 ADC.c: 34: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:
	line	35
	signat	_data,4216
	global	_command

; *************** function _command *****************
; Defined at:
;		line 24 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
;		_count1
;		_voltage
;		_voltage1
;		_main
; This function uses a non-reentrant model
; 
psect	text123
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	24
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;2 ADC.c: 23: void command(char data)
;2 ADC.c: 24: {
	
_command:	
	opt stack 5
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30001090:	
	line	25
;2 ADC.c: 25: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30001091:	
	line	26
;2 ADC.c: 26: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30001092:	
	line	27
;2 ADC.c: 27: pulse();
	fcall	_pulse
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:
	line	28
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
;		_count1
;		_voltage
;		_voltage1
; This function uses a non-reentrant model
; 
psect	text124
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30001023:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	
l30001024:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u1211
	goto	u1210
u1211:
	goto	l30001026
u1210:
	
l30001025:	
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
	
l30001026:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u1221
	goto	u1220
u1221:
	goto	l30001028
u1220:
	
l30001027:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30001028:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1231
	goto	u1230
u1231:
	goto	l30001037
u1230:
	
l30001029:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30001032
	
l30001030:	
	line	18
	movlw	01h
u1245:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1245
	
l30001031:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30001032:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1251
	goto	u1250
u1251:
	goto	l30001030
u1250:
	
l30001033:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1265
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1265:
	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l30001035
u1260:
	
l30001034:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30001035:	
	line	24
	movlw	01h
u1275:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1275
	
l30001036:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l30001033
u1280:
	
l30001037:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u1290
	goto	l30001039
u1290:
	
l30001038:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30001039:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l261:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text125,local,class=CODE,delta=2
global __ptext125
__ptext125:
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
;		_count1
;		_voltage
;		_voltage1
; This function uses a non-reentrant model
; 
psect	text125
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30001071:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	
l30001072:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u1401
	goto	u1400
u1401:
	goto	l30001074
u1400:
	
l30001073:	
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
	
l30001074:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u1411
	goto	u1410
u1411:
	goto	l183
u1410:
	
l30001075:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30001076:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l183:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1421
	goto	u1420
u1421:
	goto	l30001086
u1420:
	
l30001077:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30001080
	
l30001078:	
	line	22
	movlw	01h
u1435:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1435
	
l30001079:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30001080:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1441
	goto	u1440
u1441:
	goto	l30001078
u1440:
	
l30001081:	
	line	26
	movlw	01h
u1455:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1455
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1465
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1465:
	skipc
	goto	u1461
	goto	u1460
u1461:
	goto	l30001084
u1460:
	
l30001082:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30001083:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30001084:	
	line	31
	movlw	01h
u1475:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1475
	
l30001085:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l30001081
u1480:
	
l30001086:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u1490
	goto	l30001088
u1490:
	
l30001087:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30001088:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l181:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:
	line	37
	signat	___awdiv,8314
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 16 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
psect	text126
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
	line	16
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;2 ADC.c: 15: void pulse()
;2 ADC.c: 16: {
	
_pulse:	
	opt stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l30001096:	
;2 ADC.c: 17: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30001097:	
	line	18
;2 ADC.c: 18: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30001098:	
	line	19
;2 ADC.c: 19: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	20
;2 ADC.c: 20: delay(1000);
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

psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:
	line	21
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 11 in file "C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
psect	text127
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\2 ADC\2 ADC.c"
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
	opt stack 3
; Regs used in _delay: [wreg]
	
l30001099:	
	
l30001100:	
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
	goto	u1505
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u1505:

	skipz
	goto	u1501
	goto	u1500
u1501:
	goto	l30001100
u1500:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:
	line	13
	signat	_delay,4216
	end
