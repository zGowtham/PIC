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
;BANK0:	_main->_temperature
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
	FNCALL	_main,_lift
	FNCALL	_main,_adc
	FNCALL	_main,_temperature
	FNCALL	_main,_tmr
	FNCALL	_lift,_command
	FNCALL	_lift,_string
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
	FNCALL	_adc,_count
	FNCALL	_tmr,_command
	FNCALL	_tmr,_string
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_command,_pulse
	FNCALL	_string,_data
	FNCALL	_count,___awdiv
	FNCALL	_count,___awmod
	FNCALL	_data,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_high
	global	_input
	global	_k1
	global	_k2
	global	_output
	global	_DV
	global	_counttmr
	global	_low
	global	_ADCON0
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:
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
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase,stringjmp
stringtab:
;	String table - string pointers are 1 byte each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movf	fsr,w
stringdir:
movwf btemp&07Fh
movlw high(stringdir)
movwf pclath
movf btemp&07Fh,w
stringjmp:
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_4:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	0
psect	strings
	
STR_11:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_2:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_3:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_5:	
	retlw	71	;'G'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_1:	
	retlw	71	;'G'
	retlw	79	;'O'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_9:	
	retlw	70	;'F'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_10:	
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_12:	
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	0
psect	strings
STR_6	equ	STR_12+0
STR_8	equ	STR_10+0
STR_7	equ	STR_11+0
	file	"LIFT.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_DV:
       ds      2

_counttmr:
       ds      2

_low:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_high:
       ds      2

_input:
       ds      2

_k1:
       ds      2

_k2:
       ds      2

_output:
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
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
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
	global	??___ftneg
??___ftneg: ;@ 0x0
	global	??_pulse
??_pulse: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	??_data
??_data: ;@ 0x0
	global	??___ftpack
??___ftpack: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	?_pulse
?_pulse: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	data@data
data@data:	; 1 bytes @ 0x0
	global	?___ftneg
?___ftneg: ;@ 0x0
	global	command@data
command@data:	; 1 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	1
	global	??___awdiv
??___awdiv: ;@ 0x1
	global	??_string
??_string: ;@ 0x1
	global	?_command
?_command: ;@ 0x1
	global	??_tmr
??_tmr: ;@ 0x1
	global	?_data
?_data: ;@ 0x1
	ds	1
	global	??_count
??_count: ;@ 0x2
	global	?_string
?_string: ;@ 0x2
	global	?_tmr
?_tmr: ;@ 0x2
	global	??_lift
??_lift: ;@ 0x2
	global	?_adc
?_adc: ;@ 0x2
	ds	1
	global	?_lift
?_lift: ;@ 0x3
	global	??___awtoft
??___awtoft: ;@ 0x3
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_delay
?_delay: ;@ 0x0
	global	?___ftpack
?___ftpack: ;@ 0x0
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	?___awmod
?___awmod: ;@ 0x2
	global	string@ptr
string@ptr:	; 1 bytes @ 0x2
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
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xE
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xE
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x12
	ds	1
	global	?___ftmul
?___ftmul: ;@ 0x13
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x13
	ds	3
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
	global	??___ftdiv
??___ftdiv: ;@ 0x19
	global	??___fttol
??___fttol: ;@ 0x19
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
	ds	1
	global	?_main
?_main: ;@ 0x2A
	global	?_temperature
?_temperature: ;@ 0x2A
;Data sizes: Strings 115, constant 0, data 0, bss 16, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      11
; BANK0           80     42      52
; BANK1           80     40      40
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;string@ptr	PTR unsigned char  size(1); Largest target is 13
;		 -> STR_8(CODE[12]), STR_1(CODE[13]), STR_3(CODE[13]), STR_2(CODE[13]), 
;		 -> STR_4(CODE[13]), STR_7(CODE[13]), STR_5(CODE[13]), STR_6(CODE[12]), 
;		 -> STR_12(CODE[12]), STR_9(CODE[13]), STR_10(CODE[12]), STR_11(CODE[13]), 
;?___fttol	long  size(1); Largest target is 0
;?___ftadd	float  size(1); Largest target is 0
;?___ftneg	float  size(1); Largest target is 0
;?___awtoft	float  size(1); Largest target is 0
;?___ftmul	float  size(1); Largest target is 0
;?___ftdiv	float  size(1); Largest target is 0
;?___awdiv	int  size(1); Largest target is 0
;?___awmod	int  size(1); Largest target is 0
;?___ftpack	float  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 10161   0.00
;            _command
;               _lift
;                _adc
;        _temperature
;                _tmr
;  _lift                                              1    0  147   0.00
;                                    2 COMMO    1
;            _command
;             _string
;  _temperature                                      61    0 8805   0.00
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
;  _adc                                               2    0 1014   0.00
;                                   24 BANK0    2
;              _count
;  _tmr                                               0    0  147   0.00
;            _command
;             _string
;    ___ftmul                                        10    6  993   0.00
;                                    9 BANK0   16
;           ___awtoft (ARG)
;           ___ftpack
;    ___ftadd                                         6    6 1248   0.00
;                                    5 BANK0   12
;            ___ftneg (ARG)
;           ___ftpack
;    ___awtoft                                        3    3  354   0.00
;                                    3 COMMO    2
;                                    5 BANK0    4
;           ___ftpack
;    ___ftdiv                                        10    6 1932   0.00
;                                   25 BANK0   16
;            ___ftmul (ARG)
;           ___awtoft (ARG)
;           ___ftpack
;    ___ftneg                                         0    3   33   0.00
;                                    0 COMMO    3
;    _command                                         1    0   48   0.00
;                                    0 COMMO    1
;              _pulse
;    _string                                          2    0   99   0.00
;                                    1 COMMO    1
;                                    2 BANK0    1
;               _data
;    _count                                           8    2 1014   0.00
;                                   14 BANK0   10
;            ___awdiv
;            ___awmod
;    ___fttol                                         9    4 2460   0.00
;                                   25 BANK0   13
;            ___ftadd (ARG)
;            ___ftneg (ARG)
;            ___ftmul (ARG)
;      ___awdiv                                       5    4  564   0.00
;                                    1 COMMO    1
;                                    6 BANK0    8
;            ___awmod (ARG)
;      _data                                          1    0   48   0.00
;                                    0 COMMO    1
;              _pulse
;      ___ftpack                                      3    5  249   0.00
;                                    0 COMMO    3
;                                    0 BANK0    5
;      ___awmod                                       3    4  342   0.00
;                                    0 COMMO    1
;                                    0 BANK0    6
;        _pulse                                       0    0   24   0.00
;              _delay
;          _delay                                     0    2   24   0.00
;                                    0 BANK0    2
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
;ABS                  0      0      67       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     2A      34       5       65.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50     28      28       7       50.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      67      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 607 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
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
;		_lift
;		_adc
;		_temperature
;		_tmr
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	607
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;LIFT.c: 606: void main()
;LIFT.c: 607: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	608
	
l30001599:	
;LIFT.c: 608: TRISA=0XFF; PORTA=0X00;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30001600:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l30001601:	
	line	609
;LIFT.c: 609: TRISB=0XF3; PORTB=0X00;
	movlw	(0F3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	610
;LIFT.c: 610: TRISC=0X00; PORTC=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	611
;LIFT.c: 611: TRISD=0X00; PORTD=0X00;
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
	line	612
;LIFT.c: 612: TRISE=0X00; PORTE=0X00;
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
	
l30001602:	
	line	614
;LIFT.c: 614: ANSEL=0X03; ANSELH=0X00;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h
	
l30001603:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(393)^0180h
	
l30001604:	
	line	616
;LIFT.c: 616: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30001605:	
	line	617
;LIFT.c: 617: command(0X38);
	movlw	(038h)
	fcall	_command
	line	619
;LIFT.c: 619: OPTION=0X85;
	movlw	(085h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h
	
l30001606:	
	line	625
;LIFT.c: 623: {
;LIFT.c: 625: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l30001608
u2980:
	
l30001607:	
	line	627
;LIFT.c: 626: {
;LIFT.c: 627: lift();
	fcall	_lift
	line	628
;LIFT.c: 628: adc();
	fcall	_adc
	line	630
;LIFT.c: 630: temperature();
	fcall	_temperature
	
l30001608:	
	line	636
;LIFT.c: 633: }
;LIFT.c: 636: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l30001606
u2990:
	
l30001609:	
	line	640
;LIFT.c: 637: {
;LIFT.c: 640: tmr();
	fcall	_tmr
	goto	l30001606
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	645
	signat	_main,88
	global	_lift
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:

; *************** function _lift *****************
; Defined at:
;		line 70 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
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
;      Locals:         1       0       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		_command
;		_string
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text149
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	70
	global	__size_of_lift
	__size_of_lift	equ	__end_of_lift-_lift
;LIFT.c: 69: void lift()
;LIFT.c: 70: {
	
_lift:	
	opt stack 6
; Regs used in _lift: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
l30001638:	
;LIFT.c: 71: if(RA4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l30001642
u3090:
	
l30001639:	
	line	73
;LIFT.c: 72: {
;LIFT.c: 73: input=1;
	movlw	low(01h)
	movwf	(_input)
	movlw	high(01h)
	movwf	((_input))+1
	
l30001640:	
	line	75
;LIFT.c: 75: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001641:	
	line	76
;LIFT.c: 76: string("GOING TO 1ST");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_string
	
l30001642:	
	line	79
;LIFT.c: 77: }
;LIFT.c: 79: if(RA5==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l30001646
u3100:
	
l30001643:	
	line	81
;LIFT.c: 80: {
;LIFT.c: 81: input=2;
	movlw	low(02h)
	movwf	(_input)
	movlw	high(02h)
	movwf	((_input))+1
	
l30001644:	
	line	83
;LIFT.c: 83: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001645:	
	line	84
;LIFT.c: 84: string("GOING TO 2ND");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_string
	
l30001646:	
	line	88
;LIFT.c: 86: }
;LIFT.c: 88: if(RA6==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(46/8),(46)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l30001650
u3110:
	
l30001647:	
	line	90
;LIFT.c: 89: {
;LIFT.c: 90: input=3;
	movlw	low(03h)
	movwf	(_input)
	movlw	high(03h)
	movwf	((_input))+1
	
l30001648:	
	line	92
;LIFT.c: 92: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001649:	
	line	93
;LIFT.c: 93: string("GOING TO 3RD");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_string
	
l30001650:	
	line	97
;LIFT.c: 95: }
;LIFT.c: 97: if(RA7==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(47/8),(47)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l30001654
u3120:
	
l30001651:	
	line	99
;LIFT.c: 98: {
;LIFT.c: 99: input=4;
	movlw	low(04h)
	movwf	(_input)
	movlw	high(04h)
	movwf	((_input))+1
	
l30001652:	
	line	101
;LIFT.c: 101: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001653:	
	line	102
;LIFT.c: 102: string("GOING TO 4TH");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_string
	
l30001654:	
	line	108
;LIFT.c: 104: }
;LIFT.c: 108: if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l30001656
u3130:
	
l30001655:	
	line	110
;LIFT.c: 109: {
;LIFT.c: 110: output=1;
	movlw	low(01h)
	movwf	(_output)
	movlw	high(01h)
	movwf	((_output))+1
	
l30001656:	
	line	115
;LIFT.c: 113: }
;LIFT.c: 115: if(RB5==1)
	btfss	(53/8),(53)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l30001658
u3140:
	
l30001657:	
	line	117
;LIFT.c: 116: {
;LIFT.c: 117: output=2;
	movlw	low(02h)
	movwf	(_output)
	movlw	high(02h)
	movwf	((_output))+1
	
l30001658:	
	line	122
;LIFT.c: 120: }
;LIFT.c: 122: if(RB6==1)
	btfss	(54/8),(54)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l30001660
u3150:
	
l30001659:	
	line	124
;LIFT.c: 123: {
;LIFT.c: 124: output=3;
	movlw	low(03h)
	movwf	(_output)
	movlw	high(03h)
	movwf	((_output))+1
	
l30001660:	
	line	129
;LIFT.c: 127: }
;LIFT.c: 129: if(RB7==1)
	btfss	(55/8),(55)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l20
u3160:
	
l30001661:	
	line	131
;LIFT.c: 130: {
;LIFT.c: 131: output=4;
	movlw	low(04h)
	movwf	(_output)
	movlw	high(04h)
	movwf	((_output))+1
	
l20:	
	line	137
;LIFT.c: 134: }
;LIFT.c: 137: if(input>output)
	movf	(_output+1),w
	xorlw	80h
	movwf	(??_lift+0+0)
	movf	(_input+1),w
	xorlw	80h
	subwf	(??_lift+0+0),w
	skipz
	goto	u3175
	movf	(_input),w
	subwf	(_output),w
u3175:

	skipnc
	goto	u3171
	goto	u3170
u3171:
	goto	l30001663
u3170:
	
l30001662:	
	line	139
;LIFT.c: 138: {
;LIFT.c: 139: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	140
;LIFT.c: 140: RC1=0;
	bcf	(57/8),(57)&7
	line	141
;LIFT.c: 141: RB2=1;
	bsf	(50/8),(50)&7
	line	142
;LIFT.c: 142: RB3=0;
	bcf	(51/8),(51)&7
	
l30001663:	
	line	145
;LIFT.c: 143: }
;LIFT.c: 145: if(input<output)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_input+1),w
	xorlw	80h
	movwf	(??_lift+0+0)
	movf	(_output+1),w
	xorlw	80h
	subwf	(??_lift+0+0),w
	skipz
	goto	u3185
	movf	(_output),w
	subwf	(_input),w
u3185:

	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l30001665
u3180:
	
l30001664:	
	line	147
;LIFT.c: 146: {
;LIFT.c: 147: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	148
;LIFT.c: 148: RC1=1;
	bsf	(57/8),(57)&7
	line	149
;LIFT.c: 149: RB2=1;
	bsf	(50/8),(50)&7
	line	150
;LIFT.c: 150: RB3=0;
	bcf	(51/8),(51)&7
	
l30001665:	
	line	153
;LIFT.c: 151: }
;LIFT.c: 153: if(input==output)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_output+1),w
	xorwf	(_input+1),w
	skipz
	goto	u3195
	movf	(_output),w
	xorwf	(_input),w
u3195:

	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l12
u3190:
	
l30001666:	
	line	155
;LIFT.c: 154: {
;LIFT.c: 155: RC0=0;
	bcf	(56/8),(56)&7
	line	156
;LIFT.c: 156: RC1=0;
	bcf	(57/8),(57)&7
	line	157
;LIFT.c: 157: RB2=0;
	bcf	(50/8),(50)&7
	line	158
;LIFT.c: 158: RB3=1;
	bsf	(51/8),(51)&7
	
l12:	
	return
	opt stack 0
GLOBAL	__end_of_lift
	__end_of_lift:
; =============== function _lift ends ============

psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:
	line	160
	signat	_lift,88
	global	_temperature

; *************** function _temperature *****************
; Defined at:
;		line 245 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
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
psect	text150
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	245
	global	__size_of_temperature
	__size_of_temperature	equ	__end_of_temperature-_temperature
;LIFT.c: 244: void temperature()
;LIFT.c: 245: {
	
_temperature:	
	opt stack 6
; Regs used in _temperature: [wreg+status,2+status,0+pclath+cstack]
	line	250
	
l30001594:	
;LIFT.c: 246: int a,b,c,d,e,f,g,h,w;
;LIFT.c: 247: int a1,b1,c1,d1,e1,f1,g1,h1;
;LIFT.c: 248: float z,w1;
;LIFT.c: 249: char buffer[20];
;LIFT.c: 250: z=(DV*205.0)/1023.0;
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
	movlw	0x4d
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
	
l30001595:	
	line	253
;LIFT.c: 253: if(DV>275)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_temperature+0+0)
	movlw	(high(0114h))^80h
	subwf	(??_temperature+0+0),w
	skipz
	goto	u2965
	movlw	low(0114h)
	subwf	(_DV),w
u2965:

	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l30001597
u2960:
	
l30001596:	
	line	256
;LIFT.c: 254: {
;LIFT.c: 256: w1=z*100;
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
	line	257
;LIFT.c: 257: w=w1-5500;
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
	movlw	0xe0
	movwf	0+(?___ftadd)+03h
	movlw	0xab
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

	line	259
;LIFT.c: 259: a=w/10000;
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

	line	260
;LIFT.c: 260: b=w%10000;
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

	line	261
;LIFT.c: 261: c=b/1000;
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

	line	262
;LIFT.c: 262: d=b%1000;
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

	line	263
;LIFT.c: 263: e=d/100;
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

	line	264
;LIFT.c: 264: f=d%100;
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

	line	265
;LIFT.c: 265: g=f/10;
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

	line	266
;LIFT.c: 266: h=f%10;
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

	line	268
;LIFT.c: 268: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	line	270
;LIFT.c: 270: data(0X2B);
	movlw	(02Bh)
	fcall	_data
	line	271
;LIFT.c: 271: data(a+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@a)^080h,w
	addlw	030h
	fcall	_data
	line	272
;LIFT.c: 272: data(c+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@c)^080h,w
	addlw	030h
	fcall	_data
	line	273
;LIFT.c: 273: data(e+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@e)^080h,w
	addlw	030h
	fcall	_data
	line	274
;LIFT.c: 274: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	275
;LIFT.c: 275: data(g+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@g)^080h,w
	addlw	030h
	fcall	_data
	line	276
;LIFT.c: 276: data(h+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@h)^080h,w
	addlw	030h
	fcall	_data
	line	277
;LIFT.c: 277: data(0XDF);
	movlw	(0DFh)
	fcall	_data
	line	278
;LIFT.c: 278: data(0X43);
	movlw	(043h)
	fcall	_data
	
l30001597:	
	line	282
;LIFT.c: 279: }
;LIFT.c: 282: if(DV<275)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_temperature+0+0)
	movlw	(high(0113h))^80h
	subwf	(??_temperature+0+0),w
	skipz
	goto	u2975
	movlw	low(0113h)
	subwf	(_DV),w
u2975:

	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l36
u2970:
	
l30001598:	
	line	285
;LIFT.c: 283: {
;LIFT.c: 285: w1=z*100;
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
	line	286
;LIFT.c: 286: w=5500-w1;
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
	movlw	0xe0
	movwf	0+(?___ftadd)+03h
	movlw	0xab
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

	line	288
;LIFT.c: 288: a1=w/10000;
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

	line	289
;LIFT.c: 289: b1=w%10000;
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

	line	290
;LIFT.c: 290: c1=b1/1000;
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

	line	291
;LIFT.c: 291: d1=b1%1000;
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

	line	292
;LIFT.c: 292: e1=d1/100;
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

	line	293
;LIFT.c: 293: f1=d1%100;
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

	line	294
;LIFT.c: 294: g1=f1/10;
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

	line	295
;LIFT.c: 295: h1=f1%10;
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

	line	298
;LIFT.c: 298: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	line	300
;LIFT.c: 300: data(0X2D);
	movlw	(02Dh)
	fcall	_data
	line	301
;LIFT.c: 301: data(a1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@a1)^080h,w
	addlw	030h
	fcall	_data
	line	302
;LIFT.c: 302: data(c1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@c1)^080h,w
	addlw	030h
	fcall	_data
	line	303
;LIFT.c: 303: data(e1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@e1)^080h,w
	addlw	030h
	fcall	_data
	line	304
;LIFT.c: 304: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	305
;LIFT.c: 305: data(g1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@g1)^080h,w
	addlw	030h
	fcall	_data
	line	306
;LIFT.c: 306: data(h1+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(temperature@h1)^080h,w
	addlw	030h
	fcall	_data
	line	307
;LIFT.c: 307: data(0XDF);
	movlw	(0DFh)
	fcall	_data
	line	308
;LIFT.c: 308: data(0X43);
	movlw	(043h)
	fcall	_data
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_temperature
	__end_of_temperature:
; =============== function _temperature ends ============

psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:
	line	310
	signat	_temperature,88
	global	_adc

; *************** function _adc *****************
; Defined at:
;		line 179 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
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
psect	text151
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	179
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
;LIFT.c: 178: void adc()
;LIFT.c: 179: {
	
_adc:	
	opt stack 6
; Regs used in _adc: [wreg+status,2+status,0+pclath+cstack]
	line	180
	
l30001610:	
;LIFT.c: 180: ADCON0=0X83; ADCON1=0XB0;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	movlw	(0B0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h
	
l26:	
	line	181
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(31),(1)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l26
u3000:
	
l30001611:	
	line	182
;LIFT.c: 182: high=ADRESH; low=ADRESL;
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
	
l30001612:	
	line	184
;LIFT.c: 184: if(high==0)
	movf	((_high+1)),w
	iorwf	((_high)),w
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l30001615
u3010:
	
l30001613:	
	line	186
;LIFT.c: 185: {
;LIFT.c: 186: DV=low;
	movf	(_low+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_low),w
	clrf	(_DV)
	addwf	(_DV)

	
l30001614:	
	line	187
;LIFT.c: 187: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001615:	
	line	190
;LIFT.c: 188: }
;LIFT.c: 190: if(high==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l30001618
u3020:
	
l30001616:	
	line	192
;LIFT.c: 191: {
;LIFT.c: 192: DV=low+256;
	movf	(_low),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	
l30001617:	
	line	193
;LIFT.c: 193: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001618:	
	line	196
;LIFT.c: 194: }
;LIFT.c: 196: if(high==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l30001621
u3030:
	
l30001619:	
	line	198
;LIFT.c: 197: {
;LIFT.c: 198: DV=low+512;
	movf	(_low),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	
l30001620:	
	line	199
;LIFT.c: 199: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001621:	
	line	202
;LIFT.c: 200: }
;LIFT.c: 202: if(high==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l30001624
u3040:
	
l30001622:	
	line	204
;LIFT.c: 203: {
;LIFT.c: 204: DV=low+768;
	movf	(_low),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	
l30001623:	
	line	205
;LIFT.c: 205: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001624:	
	line	209
;LIFT.c: 206: }
;LIFT.c: 209: if(DV>434)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0+0)
	movlw	(high(01B3h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u3055
	movlw	low(01B3h)
	subwf	(_DV),w
u3055:

	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l30001626
u3050:
	
l30001625:	
	line	211
;LIFT.c: 210: {
;LIFT.c: 211: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	
l30001626:	
	line	215
;LIFT.c: 213: }
;LIFT.c: 215: if(DV>434)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0+0)
	movlw	(high(01B3h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u3065
	movlw	low(01B3h)
	subwf	(_DV),w
u3065:

	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l30001628
u3060:
	
l30001627:	
	line	217
;LIFT.c: 216: {
;LIFT.c: 217: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	
l30001628:	
	line	221
;LIFT.c: 219: }
;LIFT.c: 221: if(DV<413)
	movf	(_DV+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0+0)
	movlw	(high(019Dh))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u3075
	movlw	low(019Dh)
	subwf	(_DV),w
u3075:

	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l25
u3070:
	
l30001629:	
	line	223
;LIFT.c: 222: {
;LIFT.c: 223: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
; =============== function _adc ends ============

psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:
	line	238
	signat	_adc,88
	global	_tmr

; *************** function _tmr *****************
; Defined at:
;		line 439 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
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
;		_command
;		_string
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text152
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	439
	global	__size_of_tmr
	__size_of_tmr	equ	__end_of_tmr-_tmr
;LIFT.c: 438: void tmr()
;LIFT.c: 439: {
	
_tmr:	
	opt stack 6
; Regs used in _tmr: [wreg+status,2+status,0+pclath+cstack]
	line	441
	
l30001667:	
;LIFT.c: 441: if(T0IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(90/8),(90)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l30001670
u3200:
	
l30001668:	
	line	443
;LIFT.c: 442: {
;LIFT.c: 443: counttmr++;
	movlw	low(01h)
	addwf	(_counttmr),f
	skipnc
	incf	(_counttmr+1),f
	movlw	high(01h)
	addwf	(_counttmr+1),f
	
l30001669:	
	line	444
;LIFT.c: 444: T0IF=0;
	bcf	(90/8),(90)&7
	line	445
;LIFT.c: 445: TMR0=131;
	movlw	(083h)
	movwf	(1)	;volatile
	
l30001670:	
	line	448
;LIFT.c: 446: }
;LIFT.c: 448: if(counttmr==0)
	movf	((_counttmr+1)),w
	iorwf	((_counttmr)),w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l30001672
u3210:
	
l30001671:	
	line	450
;LIFT.c: 449: {
;LIFT.c: 450: command(0X01);
	movlw	(01h)
	fcall	_command
	line	451
;LIFT.c: 451: string("GROUND FLOOR");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_string
	
l30001672:	
	line	454
;LIFT.c: 452: }
;LIFT.c: 454: if(counttmr==375)
	movlw	high(0177h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3225
	movlw	low(0177h)
	xorwf	(_counttmr),w
u3225:

	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l30001674
u3220:
	
l30001673:	
	line	456
;LIFT.c: 455: {
;LIFT.c: 456: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	457
;LIFT.c: 457: RC4=0;
	bcf	(60/8),(60)&7
	line	458
;LIFT.c: 458: RC5=0;
	bcf	(61/8),(61)&7
	line	459
;LIFT.c: 459: RC6=0;
	bcf	(62/8),(62)&7
	line	460
;LIFT.c: 460: RC7=0;
	bcf	(63/8),(63)&7
	
l30001674:	
	line	463
;LIFT.c: 461: }
;LIFT.c: 463: if(counttmr==750)
	movlw	high(02EEh)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3235
	movlw	low(02EEh)
	xorwf	(_counttmr),w
u3235:

	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l30001677
u3230:
	
l30001675:	
	line	465
;LIFT.c: 464: {
;LIFT.c: 465: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	466
;LIFT.c: 466: RC4=1;
	bsf	(60/8),(60)&7
	line	467
;LIFT.c: 467: RC5=0;
	bcf	(61/8),(61)&7
	line	468
;LIFT.c: 468: RC6=0;
	bcf	(62/8),(62)&7
	line	469
;LIFT.c: 469: RC7=0;
	bcf	(63/8),(63)&7
	
l30001676:	
	line	470
;LIFT.c: 470: command(0X01);
	movlw	(01h)
	fcall	_command
	line	471
;LIFT.c: 471: string("FIRST FLOOR");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_string
	
l30001677:	
	line	474
;LIFT.c: 472: }
;LIFT.c: 474: if(counttmr==875)
	movlw	high(036Bh)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3245
	movlw	low(036Bh)
	xorwf	(_counttmr),w
u3245:

	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l30001679
u3240:
	
l30001678:	
	line	476
;LIFT.c: 475: {
;LIFT.c: 476: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	477
;LIFT.c: 477: RC4=0;
	bcf	(60/8),(60)&7
	line	478
;LIFT.c: 478: RC5=0;
	bcf	(61/8),(61)&7
	line	479
;LIFT.c: 479: RC6=0;
	bcf	(62/8),(62)&7
	line	480
;LIFT.c: 480: RC7=0;
	bcf	(63/8),(63)&7
	
l30001679:	
	line	484
;LIFT.c: 481: }
;LIFT.c: 484: if(counttmr==1250)
	movlw	high(04E2h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3255
	movlw	low(04E2h)
	xorwf	(_counttmr),w
u3255:

	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l30001682
u3250:
	
l30001680:	
	line	486
;LIFT.c: 485: {
;LIFT.c: 486: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	487
;LIFT.c: 487: RC4=0;
	bcf	(60/8),(60)&7
	line	488
;LIFT.c: 488: RC5=1;
	bsf	(61/8),(61)&7
	line	489
;LIFT.c: 489: RC6=0;
	bcf	(62/8),(62)&7
	line	490
;LIFT.c: 490: RC7=0;
	bcf	(63/8),(63)&7
	
l30001681:	
	line	491
;LIFT.c: 491: command(0X01);
	movlw	(01h)
	fcall	_command
	line	492
;LIFT.c: 492: string("SECOND FLOOR");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_string
	
l30001682:	
	line	495
;LIFT.c: 493: }
;LIFT.c: 495: if(counttmr==1375)
	movlw	high(055Fh)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3265
	movlw	low(055Fh)
	xorwf	(_counttmr),w
u3265:

	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l30001684
u3260:
	
l30001683:	
	line	497
;LIFT.c: 496: {
;LIFT.c: 497: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	498
;LIFT.c: 498: RC4=0;
	bcf	(60/8),(60)&7
	line	499
;LIFT.c: 499: RC5=0;
	bcf	(61/8),(61)&7
	line	500
;LIFT.c: 500: RC6=0;
	bcf	(62/8),(62)&7
	line	501
;LIFT.c: 501: RC7=0;
	bcf	(63/8),(63)&7
	
l30001684:	
	line	505
;LIFT.c: 502: }
;LIFT.c: 505: if(counttmr==1750)
	movlw	high(06D6h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3275
	movlw	low(06D6h)
	xorwf	(_counttmr),w
u3275:

	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l30001687
u3270:
	
l30001685:	
	line	507
;LIFT.c: 506: {
;LIFT.c: 507: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	508
;LIFT.c: 508: RC4=0;
	bcf	(60/8),(60)&7
	line	509
;LIFT.c: 509: RC5=0;
	bcf	(61/8),(61)&7
	line	510
;LIFT.c: 510: RC6=1;
	bsf	(62/8),(62)&7
	line	511
;LIFT.c: 511: RC7=0;
	bcf	(63/8),(63)&7
	
l30001686:	
	line	512
;LIFT.c: 512: command(0X01);
	movlw	(01h)
	fcall	_command
	line	513
;LIFT.c: 513: string("THIRD FLOOR");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_string
	
l30001687:	
	line	516
;LIFT.c: 514: }
;LIFT.c: 516: if(counttmr==1875)
	movlw	high(0753h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3285
	movlw	low(0753h)
	xorwf	(_counttmr),w
u3285:

	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l30001689
u3280:
	
l30001688:	
	line	518
;LIFT.c: 517: {
;LIFT.c: 518: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	519
;LIFT.c: 519: RC4=0;
	bcf	(60/8),(60)&7
	line	520
;LIFT.c: 520: RC5=0;
	bcf	(61/8),(61)&7
	line	521
;LIFT.c: 521: RC6=0;
	bcf	(62/8),(62)&7
	line	522
;LIFT.c: 522: RC7=0;
	bcf	(63/8),(63)&7
	
l30001689:	
	line	525
;LIFT.c: 523: }
;LIFT.c: 525: if(counttmr==2250)
	movlw	high(08CAh)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3295
	movlw	low(08CAh)
	xorwf	(_counttmr),w
u3295:

	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l30001692
u3290:
	
l30001690:	
	line	527
;LIFT.c: 526: {
;LIFT.c: 527: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	528
;LIFT.c: 528: RC4=0;
	bcf	(60/8),(60)&7
	line	529
;LIFT.c: 529: RC5=0;
	bcf	(61/8),(61)&7
	line	530
;LIFT.c: 530: RC6=0;
	bcf	(62/8),(62)&7
	line	531
;LIFT.c: 531: RC7=1;
	bsf	(63/8),(63)&7
	
l30001691:	
	line	532
;LIFT.c: 532: command(0X01);
	movlw	(01h)
	fcall	_command
	line	533
;LIFT.c: 533: string("FOURTH FLOOR");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_string
	
l30001692:	
	line	536
;LIFT.c: 534: }
;LIFT.c: 536: if(counttmr==2375)
	movlw	high(0947h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3305
	movlw	low(0947h)
	xorwf	(_counttmr),w
u3305:

	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l30001694
u3300:
	
l30001693:	
	line	538
;LIFT.c: 537: {
;LIFT.c: 538: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	539
;LIFT.c: 539: RC4=0;
	bcf	(60/8),(60)&7
	line	540
;LIFT.c: 540: RC5=0;
	bcf	(61/8),(61)&7
	line	541
;LIFT.c: 541: RC6=0;
	bcf	(62/8),(62)&7
	line	542
;LIFT.c: 542: RC7=0;
	bcf	(63/8),(63)&7
	
l30001694:	
	line	545
;LIFT.c: 543: }
;LIFT.c: 545: if(counttmr==2750)
	movlw	high(0ABEh)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3315
	movlw	low(0ABEh)
	xorwf	(_counttmr),w
u3315:

	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l30001697
u3310:
	
l30001695:	
	line	547
;LIFT.c: 546: {
;LIFT.c: 547: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	548
;LIFT.c: 548: RC4=0;
	bcf	(60/8),(60)&7
	line	549
;LIFT.c: 549: RC5=0;
	bcf	(61/8),(61)&7
	line	550
;LIFT.c: 550: RC6=1;
	bsf	(62/8),(62)&7
	line	551
;LIFT.c: 551: RC7=0;
	bcf	(63/8),(63)&7
	
l30001696:	
	line	552
;LIFT.c: 552: command(0X01);
	movlw	(01h)
	fcall	_command
	line	553
;LIFT.c: 553: string("THIRD FLOOR");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_string
	
l30001697:	
	line	556
;LIFT.c: 554: }
;LIFT.c: 556: if(counttmr==2875)
	movlw	high(0B3Bh)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3325
	movlw	low(0B3Bh)
	xorwf	(_counttmr),w
u3325:

	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l30001699
u3320:
	
l30001698:	
	line	558
;LIFT.c: 557: {
;LIFT.c: 558: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	559
;LIFT.c: 559: RC4=0;
	bcf	(60/8),(60)&7
	line	560
;LIFT.c: 560: RC5=0;
	bcf	(61/8),(61)&7
	line	561
;LIFT.c: 561: RC6=0;
	bcf	(62/8),(62)&7
	line	562
;LIFT.c: 562: RC7=0;
	bcf	(63/8),(63)&7
	
l30001699:	
	line	565
;LIFT.c: 563: }
;LIFT.c: 565: if(counttmr==3250)
	movlw	high(0CB2h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3335
	movlw	low(0CB2h)
	xorwf	(_counttmr),w
u3335:

	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l30001702
u3330:
	
l30001700:	
	line	567
;LIFT.c: 566: {
;LIFT.c: 567: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	568
;LIFT.c: 568: RC4=0;
	bcf	(60/8),(60)&7
	line	569
;LIFT.c: 569: RC5=1;
	bsf	(61/8),(61)&7
	line	570
;LIFT.c: 570: RC6=0;
	bcf	(62/8),(62)&7
	line	571
;LIFT.c: 571: RC7=0;
	bcf	(63/8),(63)&7
	
l30001701:	
	line	572
;LIFT.c: 572: command(0X01);
	movlw	(01h)
	fcall	_command
	line	573
;LIFT.c: 573: string("SECOND FLOOR");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_string
	
l30001702:	
	line	576
;LIFT.c: 574: }
;LIFT.c: 576: if(counttmr==3375)
	movlw	high(0D2Fh)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3345
	movlw	low(0D2Fh)
	xorwf	(_counttmr),w
u3345:

	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l30001704
u3340:
	
l30001703:	
	line	578
;LIFT.c: 577: {
;LIFT.c: 578: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	579
;LIFT.c: 579: RC4=0;
	bcf	(60/8),(60)&7
	line	580
;LIFT.c: 580: RC5=0;
	bcf	(61/8),(61)&7
	line	581
;LIFT.c: 581: RC6=0;
	bcf	(62/8),(62)&7
	line	582
;LIFT.c: 582: RC7=0;
	bcf	(63/8),(63)&7
	
l30001704:	
	line	585
;LIFT.c: 583: }
;LIFT.c: 585: if(counttmr==3750)
	movlw	high(0EA6h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3355
	movlw	low(0EA6h)
	xorwf	(_counttmr),w
u3355:

	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l30001707
u3350:
	
l30001705:	
	line	587
;LIFT.c: 586: {
;LIFT.c: 587: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	588
;LIFT.c: 588: RC4=1;
	bsf	(60/8),(60)&7
	line	589
;LIFT.c: 589: RC5=0;
	bcf	(61/8),(61)&7
	line	590
;LIFT.c: 590: RC6=0;
	bcf	(62/8),(62)&7
	line	591
;LIFT.c: 591: RC7=0;
	bcf	(63/8),(63)&7
	
l30001706:	
	line	592
;LIFT.c: 592: command(0X01);
	movlw	(01h)
	fcall	_command
	line	593
;LIFT.c: 593: string("FIRST FLOOR");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_string
	
l30001707:	
	line	596
;LIFT.c: 594: }
;LIFT.c: 596: if(counttmr==3875)
	movlw	high(0F23h)
	xorwf	(_counttmr+1),w
	skipz
	goto	u3365
	movlw	low(0F23h)
	xorwf	(_counttmr),w
u3365:

	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l54
u3360:
	
l30001708:	
	line	598
;LIFT.c: 597: {
;LIFT.c: 598: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	
l30001709:	
	line	599
;LIFT.c: 599: counttmr=0;
	movlw	low(0)
	movwf	(_counttmr)
	movlw	high(0)
	movwf	((_counttmr))+1
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_tmr
	__end_of_tmr:
; =============== function _tmr ends ============

psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:
	line	603
	signat	_tmr,88
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
; This function uses a non-reentrant model
; 
psect	text153
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l30001758:	
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
	goto	u3591
	goto	u3590
u3591:
	goto	l30001761
u3590:
	
l30001759:	
	line	57
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l156
	
l30001761:	
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
	goto	u3601
	goto	u3600
u3601:
	goto	l30001764
u3600:
	
l30001762:	
	line	59
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l156
	
l30001764:	
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
u3615:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u3610:
	addlw	-1
	skipz
	goto	u3615
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
u3625:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u3620:
	addlw	-1
	skipz
	goto	u3625
	movf	0+(??___ftmul+0+0),w
	movwf	(??___ftmul+3+0)
	movf	(??___ftmul+3+0),w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	andwf	(___ftmul@sign),f
	
l30001765:	
	line	64
	bsf	(___ftmul@f1)+(15/8),(15)&7
	
l30001766:	
	line	66
	bsf	(___ftmul@f2)+(15/8),(15)&7
	
l30001767:	
	line	67
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	
l30001768:	
	line	68
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	
l30001769:	
	line	69
	movlw	(07h)
	movwf	(___ftmul@cntr)
	
l30001770:	
	line	71
	btfss	(___ftmul@f1),(0)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l30001772
u3630:
	
l30001771:	
	line	72
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3641
	addwf	(___ftmul@f3_as_product+1),f
u3641:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3642
	addwf	(___ftmul@f3_as_product+2),f
u3642:

	
l30001772:	
	line	73
	movlw	01h
u3655:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3655

	
l30001773:	
	line	74
	movlw	01h
u3665:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3665
	
l30001774:	
	line	75
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l30001770
u3670:
	
l30001775:	
	line	76
	movlw	(09h)
	movwf	(___ftmul@cntr)
	
l30001776:	
	line	78
	btfss	(___ftmul@f1),(0)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l30001778
u3680:
	
l30001777:	
	line	79
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3691
	addwf	(___ftmul@f3_as_product+1),f
u3691:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3692
	addwf	(___ftmul@f3_as_product+2),f
u3692:

	
l30001778:	
	line	80
	movlw	01h
u3705:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3705

	
l30001779:	
	line	81
	movlw	01h
u3715:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3715

	
l30001780:	
	line	82
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l30001776
u3720:
	
l30001781:	
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
	
l156:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
; =============== function ___ftmul ends ============

psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:
	line	84
	signat	___ftmul,8315
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
psect	text154
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l30001556:	
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
	
l30001557:	
	line	92
	movf	(___ftadd@exp1),w
	skipz
	goto	u2690
	goto	l30001560
u2690:
	
l30001558:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2701
	goto	u2700
u2701:
	goto	l30001562
u2700:
	
l30001559:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l30001562
u2710:
	
l30001560:	
	line	93
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l120
	
l30001562:	
	line	94
	movf	(___ftadd@exp2),w
	skipz
	goto	u2720
	goto	l30001565
u2720:
	
l30001563:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2731
	goto	u2730
u2731:
	goto	l30001567
u2730:
	
l30001564:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l30001567
u2740:
	
l30001565:	
	line	95
	movf	(___ftadd@f1),w
	movwf	(?___ftadd)
	movf	(___ftadd@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f1+2),w
	movwf	(?___ftadd+2)
	goto	l120
	
l30001567:	
	line	96
	movlw	(06h)
	movwf	(___ftadd@sign)
	
l30001568:	
	line	97
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l123
u2750:
	
l30001569:	
	line	98
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l123:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l124
u2760:
	
l30001570:	
	line	100
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l124:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	
l30001571:	
	line	102
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	
l30001572:	
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
	goto	u2771
	goto	u2770
u2771:
	goto	l30001578
u2770:
	
l30001573:	
	line	110
	movlw	01h
u2785:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2785
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	
l30001574:	
	line	112
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l30001577
u2790:
	
l30001575:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign))&07fh,w
	andlw	07h
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l30001573
u2800:
	goto	l30001577
	
l30001576:	
	line	114
	movlw	01h
u2815:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2815

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	addwf	(___ftadd@exp1),f
	
l30001577:	
	line	113
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l30001576
u2820:
	goto	l132
	
l30001578:	
	line	117
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2831
	goto	u2830
u2831:
	goto	l132
u2830:
	
l30001579:	
	line	121
	movlw	01h
u2845:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2845
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	
l30001580:	
	line	123
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l30001583
u2850:
	
l30001581:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign))&07fh,w
	andlw	07h
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l30001579
u2860:
	goto	l30001583
	
l30001582:	
	line	125
	movlw	01h
u2875:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2875

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	addwf	(___ftadd@exp2),f
	
l30001583:	
	line	124
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l30001582
u2880:
	
l132:	
	line	129
	btfss	(___ftadd@sign),(7)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l30001585
u2890:
	
l30001584:	
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
	goto	u2901
	addwf	(___ftadd@f1+1),f
u2901:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2902
	addwf	(___ftadd@f1+2),f
u2902:

	
l30001585:	
	line	134
	btfss	(___ftadd@sign),(6)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l30001587
u2910:
	
l30001586:	
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
	goto	u2921
	addwf	(___ftadd@f2+1),f
u2921:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2922
	addwf	(___ftadd@f2+2),f
u2922:

	
l30001587:	
	line	139
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	
l30001588:	
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2931
	addwf	(___ftadd@f2+1),f
u2931:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2932
	addwf	(___ftadd@f2+2),f
u2932:

	
l30001589:	
	line	141
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l30001592
u2940:
	
l30001590:	
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
	goto	u2951
	addwf	(___ftadd@f2+1),f
u2951:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2952
	addwf	(___ftadd@f2+2),f
u2952:

	
l30001591:	
	line	144
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	
l30001592:	
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
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
; =============== function ___ftadd ends ============

psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:
	line	148
	signat	___ftadd,8315
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
; This function uses a non-reentrant model
; 
psect	text155
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l30001717:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	
l30001718:	
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3381
	goto	u3380
u3381:
	goto	l30001720
u3380:
	
l30001719:	
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
	
l30001720:	
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
	
l225:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
; =============== function ___awtoft ends ============

psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:
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
; This function uses a non-reentrant model
; 
psect	text156
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l30001737:	
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
	goto	u3511
	goto	u3510
u3511:
	goto	l30001740
u3510:
	
l30001738:	
	line	56
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l149
	
l30001740:	
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
	goto	u3521
	goto	u3520
u3521:
	goto	l30001743
u3520:
	
l30001741:	
	line	58
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l149
	
l30001743:	
	line	59
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	
l30001744:	
	line	60
	movf	(___ftdiv@sign),w
	addlw	089h
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	subwf	(___ftdiv@exp),f
	
l30001745:	
	line	61
	movf	(___ftdiv@f1),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f1+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u3535:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u3530:
	addlw	-1
	skipz
	goto	u3535
	movf	0+(??___ftdiv+0+0),w
	movwf	(___ftdiv@sign)
	
l30001746:	
	line	62
	movf	(___ftdiv@f2),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f2+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u3545:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u3540:
	addlw	-1
	skipz
	goto	u3545
	movf	0+(??___ftdiv+0+0),w
	movwf	(??___ftdiv+3+0)
	movf	(??___ftdiv+3+0),w
	xorwf	(___ftdiv@sign),f
	
l30001747:	
	line	63
	movlw	(080h)
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	andwf	(___ftdiv@sign),f
	
l30001748:	
	line	64
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	
l30001749:	
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
	
l30001750:	
	line	70
	movlw	01h
u3555:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3555
	
l30001751:	
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3565
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3565
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3565:
	skipc
	goto	u3561
	goto	u3560
u3561:
	goto	l30001754
u3560:
	
l30001752:	
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
	
l30001753:	
	line	73
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	
l30001754:	
	line	75
	movlw	01h
u3575:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3575
	
l30001755:	
	line	76
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l30001750
u3580:
	
l30001756:	
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
	
l149:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
; =============== function ___ftdiv ends ============

psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:
	line	78
	signat	___ftdiv,8315
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
psect	text157
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt stack 5
; Regs used in ___ftneg: [wreg]
	line	17
	
l30001508:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2661
	goto	u2660
u2661:
	goto	l30001510
u2660:
	
l30001509:	
	line	18
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	
l30001510:	
	line	19
	
l248:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
; =============== function ___ftneg ends ============

psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:
	line	20
	signat	___ftneg,4219
	global	_command

; *************** function _command *****************
; Defined at:
;		line 45 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    0[COMMON] unsigned char 
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
;		_lift
;		_temperature
;		_tmr
;		_main
; This function uses a non-reentrant model
; 
psect	text158
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	45
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;LIFT.c: 44: void command(char data)
;LIFT.c: 45: {
	
_command:	
	opt stack 5
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30001635:	
	line	46
;LIFT.c: 46: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30001636:	
	line	47
;LIFT.c: 47: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30001637:	
	line	48
;LIFT.c: 48: pulse();
	fcall	_pulse
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:
	line	49
	signat	_command,4216
	global	_string

; *************** function _string *****************
; Defined at:
;		line 59 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
; Parameters:    Size  Location     Type
;  ptr             1    wreg     PTR unsigned char 
;		 -> STR_8(12), STR_1(13), STR_3(13), STR_2(13), 
;		 -> STR_4(13), STR_7(13), STR_5(13), STR_6(12), 
;		 -> STR_12(12), STR_9(13), STR_10(12), STR_11(13), 
; Auto vars:     Size  Location     Type
;  ptr             1    2[BANK0 ] PTR unsigned char 
;		 -> STR_8(12), STR_1(13), STR_3(13), STR_2(13), 
;		 -> STR_4(13), STR_7(13), STR_5(13), STR_6(12), 
;		 -> STR_12(12), STR_9(13), STR_10(12), STR_11(13), 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       1       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_data
; This function is called by:
;		_lift
;		_tmr
; This function uses a non-reentrant model
; 
psect	text159
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	59
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
;LIFT.c: 58: void string(char *ptr)
;LIFT.c: 59: {
	
_string:	
	opt stack 5
; Regs used in _string: [wreg+status,2+status,0+pclath+cstack]
;string@ptr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(string@ptr)
	
l30001713:	
	goto	l30001716
	
l30001714:	
	line	62
;LIFT.c: 61: {
;LIFT.c: 62: data(*ptr);
	movf	(string@ptr),w
	FNCALL _string,stringtab
	fcall	stringdir
	fcall	_data
	
l30001715:	
	line	63
;LIFT.c: 63: *ptr++;
	movlw	(01h)
	movwf	(??_string+0+0)
	movf	(??_string+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(string@ptr),f
	
l30001716:	
	line	60
	movf	(string@ptr),w
	FNCALL _string,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l30001714
u3370:
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
; =============== function _string ends ============

psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:
	line	65
	signat	_string,4216
	global	_count

; *************** function _count *****************
; Defined at:
;		line 163 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
; Parameters:    Size  Location     Type
;  i               2   22[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  f               2    0        int 
;  e               2    0        int 
;  c               2    0        int 
;  a               2    0        int 
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
; This function is called by:
;		_adc
; This function uses a non-reentrant model
; 
psect	text160
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	163
	global	__size_of_count
	__size_of_count	equ	__end_of_count-_count
;LIFT.c: 162: void count(int i)
;LIFT.c: 163: {
	
_count:	
	opt stack 5
; Regs used in _count: [wreg+status,2+status,0+pclath+cstack]
	line	166
	
l30001801:	
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
	line	167
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	line	168
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	line	169
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l24:	
	return
	opt stack 0
GLOBAL	__end_of_count
	__end_of_count:
; =============== function _count ends ============

psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:
	line	176
	signat	_count,4216
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
; This function uses a non-reentrant model
; 
psect	text161
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l30001295:	
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
	goto	u1611
	goto	u1610
u1611:
	goto	l30001298
u1610:
	
l30001296:	
	line	50
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l209
	
l30001298:	
	line	51
	movf	(___fttol@f1),w
	movwf	(??___fttol+0+0)
	movf	(___fttol@f1+1),w
	movwf	(??___fttol+0+0+1)
	movf	(___fttol@f1+2),w
	movwf	(??___fttol+0+0+2)
	movlw	017h
u1625:
	clrc
	rrf	(??___fttol+0+2),f
	rrf	(??___fttol+0+1),f
	rrf	(??___fttol+0+0),f
u1620:
	addlw	-1
	skipz
	goto	u1625
	movf	0+(??___fttol+0+0),w
	movwf	(___fttol@sign1)
	
l30001299:	
	line	52
	bsf	(___fttol@f1)+(15/8),(15)&7
	
l30001300:	
	line	53
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	
l30001301:	
	line	54
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	
	clrf	3+(___fttol@lval)
	
l30001302:	
	line	55
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	
l30001303:	
	line	56
	btfss	(___fttol@exp1),7
	goto	u1631
	goto	u1630
u1631:
	goto	l30001308
u1630:
	
l30001304:	
	line	57
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1641
	goto	u1640
u1641:
	goto	l30001307
u1640:
	goto	l30001296
	
l30001307:	
	line	60
	movlw	01h
u1655:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1655

	line	61
	movlw	(01h)
	movwf	(??___fttol+0+0)
	movf	(??___fttol+0+0),w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l30001307
u1660:
	goto	l30001313
	
l30001308:	
	line	63
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l30001312
u1670:
	goto	l30001296
	
l30001311:	
	line	66
	movlw	01h
	movwf	(??___fttol+0+0)
u1685:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0+0)
	goto	u1685
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	
l30001312:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l30001311
u1690:
	
l30001313:	
	line	70
	movf	(___fttol@sign1),w
	skipz
	goto	u1700
	goto	l30001315
u1700:
	
l30001314:	
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
	
l30001315:	
	line	72
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l209:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
; =============== function ___fttol ends ============

psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:
	line	73
	signat	___fttol,4220
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
; This function uses a non-reentrant model
; 
psect	text162
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30001414:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	
l30001415:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l30001417
u2280:
	
l30001416:	
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
	
l30001417:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l229
u2290:
	
l30001418:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30001419:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l229:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2301
	goto	u2300
u2301:
	goto	l30001429
u2300:
	
l30001420:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30001423
	
l30001421:	
	line	22
	movlw	01h
u2315:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2315
	
l30001422:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30001423:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l30001421
u2320:
	
l30001424:	
	line	26
	movlw	01h
u2335:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2335
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2345
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l30001427
u2340:
	
l30001425:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30001426:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30001427:	
	line	31
	movlw	01h
u2355:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2355
	
l30001428:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l30001424
u2360:
	
l30001429:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u2370
	goto	l30001431
u2370:
	
l30001430:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30001431:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l227:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:
	line	37
	signat	___awdiv,8314
	global	_data

; *************** function _data *****************
; Defined at:
;		line 52 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    0[COMMON] unsigned char 
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
;		_string
;		_temperature
; This function uses a non-reentrant model
; 
psect	text163
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	52
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;LIFT.c: 51: void data(char data)
;LIFT.c: 52: {
	
_data:	
	opt stack 4
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	movwf	(data@data)
	
l30001710:	
	line	53
;LIFT.c: 53: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	
l30001711:	
	line	54
;LIFT.c: 54: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30001712:	
	line	55
;LIFT.c: 55: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:
	line	56
	signat	_data,4216
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
psect	text164
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l30001722:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u3390
	goto	l30001724
u3390:
	
l30001723:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l30001727
u3400:
	
l30001724:	
	line	65
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l412
	
l30001726:	
	line	67
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3415:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3415

	
l30001727:	
	line	66
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l30001726
u3420:
	goto	l417
	
l30001728:	
	line	71
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	
l30001729:	
	line	72
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3431
	addwf	(___ftpack@arg+1),f
u3431:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3432
	addwf	(___ftpack@arg+2),f
u3432:

	
l30001730:	
	line	73
	movlw	01h
u3445:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3445

	
l417:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l30001728
u3450:
	goto	l30001732
	
l30001731:	
	line	76
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3465:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3465
	
l30001732:	
	line	75
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l30001731
u3470:
	
l422:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l423
u3480:
	
l30001733:	
	line	80
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l423:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	
l30001734:	
	line	82
	movf	(___ftpack@exp),w
	movwf	(??___ftpack+0+0)
	clrf	(??___ftpack+0+0+1)
	clrf	(??___ftpack+0+0+2)
	movlw	010h
u3495:
	clrc
	rlf	(??___ftpack+0+0),f
	rlf	(??___ftpack+0+1),f
	rlf	(??___ftpack+0+2),f
u3490:
	addlw	-1
	skipz
	goto	u3495
	movf	0+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+2),f
	
l30001735:	
	line	83
	movf	(___ftpack@sign),w
	skipz
	goto	u3500
	goto	l424
u3500:
	
l30001736:	
	line	84
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l424:	
	line	85
	
l412:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
; =============== function ___ftpack ends ============

psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:
	line	86
	signat	___ftpack,12411
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
; This function uses a non-reentrant model
; 
psect	text165
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30001783:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	
l30001784:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3731
	goto	u3730
u3731:
	goto	l30001786
u3730:
	
l30001785:	
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
	
l30001786:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u3741
	goto	u3740
u3741:
	goto	l30001788
u3740:
	
l30001787:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30001788:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3751
	goto	u3750
u3751:
	goto	l30001797
u3750:
	
l30001789:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30001792
	
l30001790:	
	line	18
	movlw	01h
u3765:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3765
	
l30001791:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30001792:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l30001790
u3770:
	
l30001793:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3785
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3785:
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l30001795
u3780:
	
l30001794:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30001795:	
	line	24
	movlw	01h
u3795:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3795
	
l30001796:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l30001793
u3800:
	
l30001797:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u3810
	goto	l30001799
u3810:
	
l30001798:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30001799:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l307:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:
	line	30
	signat	___awmod,8314
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 37 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
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
psect	text166
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	37
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;LIFT.c: 36: void pulse()
;LIFT.c: 37: {
	
_pulse:	
	opt stack 3
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l30001632:	
;LIFT.c: 38: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30001633:	
	line	39
;LIFT.c: 39: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30001634:	
	line	40
;LIFT.c: 40: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	41
;LIFT.c: 41: delay(1000);
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

psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:
	line	42
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 32 in file "C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
; Parameters:    Size  Location     Type
;  x               2    0[BANK0 ] int 
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
;      Locals:         0       2       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_pulse
; This function uses a non-reentrant model
; 
psect	text167
	file	"C:\Users\gowth\Documents\PIC Programs\LIFT\LIFT.c"
	line	32
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
	opt stack 2
; Regs used in _delay: [wreg]
	
l30001630:	
	
l30001631:	
	line	33
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@x),f
	skipnc
	incf	(delay@x+1),f
	movlw	high(-1)
	addwf	(delay@x+1),f
	movlw	high(-1)
	xorwf	((delay@x+1))&07fh,w
	skipz
	goto	u3085
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u3085:

	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l30001631
u3080:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:
	line	34
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
