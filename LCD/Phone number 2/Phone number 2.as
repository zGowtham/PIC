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
;COMMON:	_main->_command
;COMMON:	_main->_string
;BANK0:	_string->_data
;BANK0:	_main->__delay
	FNCALL	_main,_command
	FNCALL	_main,_string
	FNCALL	_main,_data
	FNCALL	_string,_data
	FNCALL	_command,_pulse
	FNCALL	_data,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_number
	global	_counts
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	25

;initializer for _number
	retlw	08h
	retlw	0

	retlw	09h
	retlw	0

	retlw	0
	retlw	0

	retlw	03h
	retlw	0

	retlw	09h
	retlw	0

	retlw	06h
	retlw	0

	retlw	09h
	retlw	0

	retlw	08h
	retlw	0

	retlw	09h
	retlw	0

	retlw	0
	retlw	0

	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	line	20

;initializer for _counts
	retlw	0FFh
	retlw	0FFh

	global	_input
	global	_count
	global	_count1
	global	_count2
	global	_j
	global	_k
	global	_i
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
	
STR_3:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	77	;'M'
	retlw	66	;'B'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_1:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	77	;'M'
	retlw	66	;'B'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_2:	
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_4:	
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
STR_5	equ	STR_3+0
	file	"Phone number 2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

_var:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	20
_counts:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_input:
       ds      30

_count:
       ds      2

_count1:
       ds      2

_count2:
       ds      2

_j:
       ds      2

_k:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	25
_number:
       ds      30

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
	movlw	low((__pbssBANK0)+028h)
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
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+30)
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
	global	??__delay
??__delay: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	??_data
??_data: ;@ 0x0
	global	??_pulse
??_pulse: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	?_delay
?_delay: ;@ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	2
	global	?_data
?_data: ;@ 0x2
	global	?_pulse
?_pulse: ;@ 0x2
	global	??_string
??_string: ;@ 0x2
	global	command@data
command@data:	; 1 bytes @ 0x2
	ds	1
	global	?_string
?_string: ;@ 0x3
	global	?_command
?_command: ;@ 0x3
	global	??_main
??_main: ;@ 0x3
	ds	2
	global	?_main
?_main: ;@ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?__delay
?__delay: ;@ 0x0
	global	data@data
data@data:	; 1 bytes @ 0x0
	global	__delay$0
__delay$0:	; 4 bytes @ 0x0
	ds	1
	global	string@ptr
string@ptr:	; 1 bytes @ 0x1
	ds	3
;Data sizes: Strings 50, constant 0, data 32, bss 44, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      11
; BANK0           80      4      74
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;string@ptr	PTR unsigned char  size(1); Largest target is 15
;		 -> STR_1(CODE[13]), STR_3(CODE[15]), STR_2(CODE[11]), STR_4(CODE[11]), 
;		 -> STR_5(CODE[15]), 


;Main: autosize = 0, tempsize = 2, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                2    0  195   0.00
;                                    3 COMMO    2
;            _command
;             _string
;               _data
;             __delay
;  __delay                                            0    4    0   0.00
;                                    0 BANK0    4
;  _string                                            2    0   99   0.00
;                                    2 COMMO    1
;                                    1 BANK0    1
;               _data
;  _command                                           1    0   48   0.00
;                                    2 COMMO    1
;              _pulse
;    _data                                            1    0   48   0.00
;                                    0 BANK0    1
;              _pulse
;      _pulse                                         0    0   24   0.00
;              _delay
;        _delay                                       0    2   24   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 4
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
;ABS                  0      0      55       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      4      4A       5       92.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      55      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 71 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
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
;      Locals:         2       0       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_command
;		_string
;		_data
;		__delay
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	71
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;Phone number 2.c: 70: void main()
;Phone number 2.c: 71: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	74
	
l30000723:	
;Phone number 2.c: 74: TRISD=0X00; PORTD=0X00; ANSEL=0;
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
	line	75
;Phone number 2.c: 75: TRISE=0X00; PORTE=0X00; ANSELH=0;
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
	
l30000724:	
	line	76
;Phone number 2.c: 76: TRISB=0X07; PORTB=0X00;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000725:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000726:	
	line	79
;Phone number 2.c: 79: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30000727:	
	line	80
;Phone number 2.c: 80: command(0X38);
	movlw	(038h)
	fcall	_command
	
l30000728:	
	line	83
;Phone number 2.c: 83: if(count==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count+1)),w
	iorwf	((_count)),w
	skipz
	goto	u861
	goto	u860
u861:
	goto	l13
u860:
	
l30000729:	
	line	85
;Phone number 2.c: 84: {
;Phone number 2.c: 85: command(0X80);
	movlw	(080h)
	fcall	_command
	line	86
;Phone number 2.c: 86: string("ENTER NUMBER");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_string
	
l13:	
	line	89
;Phone number 2.c: 87: }
;Phone number 2.c: 89: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l30000730:	
	line	93
;Phone number 2.c: 92: {
;Phone number 2.c: 93: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
l30000731:	
	bcf	(52/8),(52)&7
	
l30000732:	
	bcf	(53/8),(53)&7
	
l30000733:	
	bcf	(54/8),(54)&7
	
l30000734:	
	line	94
;Phone number 2.c: 94: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u871
	goto	u870
u871:
	goto	l17
u870:
	
l30000735:	
	line	96
;Phone number 2.c: 95: {
;Phone number 2.c: 96: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	line	97
;Phone number 2.c: 97: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	98
;Phone number 2.c: 98: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000736:	
	line	99
;Phone number 2.c: 99: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	
l30000737:	
	line	100
;Phone number 2.c: 100: data(var+48);
	movlw	(031h)
	fcall	_data
	
l18:	
	line	101
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u881
	goto	u880
u881:
	goto	l18
u880:
	
l17:	
	line	104
;Phone number 2.c: 102: }
;Phone number 2.c: 104: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u891
	goto	u890
u891:
	goto	l21
u890:
	
l30000738:	
	line	106
;Phone number 2.c: 105: {
;Phone number 2.c: 106: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	line	107
;Phone number 2.c: 107: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	108
;Phone number 2.c: 108: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000739:	
	line	109
;Phone number 2.c: 109: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	
l30000740:	
	line	110
;Phone number 2.c: 110: data(var+48);
	movlw	(032h)
	fcall	_data
	
l22:	
	line	111
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u901
	goto	u900
u901:
	goto	l22
u900:
	
l21:	
	line	114
;Phone number 2.c: 112: }
;Phone number 2.c: 114: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u911
	goto	u910
u911:
	goto	l25
u910:
	
l30000741:	
	line	116
;Phone number 2.c: 115: {
;Phone number 2.c: 116: var=3;
	movlw	low(03h)
	movwf	(_var)
	movlw	high(03h)
	movwf	((_var))+1
	line	117
;Phone number 2.c: 117: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	118
;Phone number 2.c: 118: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000742:	
	line	119
;Phone number 2.c: 119: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	
l30000743:	
	line	120
;Phone number 2.c: 120: data(var+48);
	movlw	(033h)
	fcall	_data
	
l26:	
	line	121
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u921
	goto	u920
u921:
	goto	l26
u920:
	
l25:	
	line	126
;Phone number 2.c: 122: }
;Phone number 2.c: 126: RB3=0,RB4=1,RB5=0,RB6=0;
	bcf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	127
;Phone number 2.c: 127: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u931
	goto	u930
u931:
	goto	l29
u930:
	
l30000744:	
	line	129
;Phone number 2.c: 128: {
;Phone number 2.c: 129: var=4;
	movlw	low(04h)
	movwf	(_var)
	movlw	high(04h)
	movwf	((_var))+1
	line	130
;Phone number 2.c: 130: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	131
;Phone number 2.c: 131: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000745:	
	line	132
;Phone number 2.c: 132: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	
l30000746:	
	line	133
;Phone number 2.c: 133: data(var+48);
	movlw	(034h)
	fcall	_data
	
l30:	
	line	134
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u941
	goto	u940
u941:
	goto	l30
u940:
	
l29:	
	line	137
;Phone number 2.c: 135: }
;Phone number 2.c: 137: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u951
	goto	u950
u951:
	goto	l33
u950:
	
l30000747:	
	line	139
;Phone number 2.c: 138: {
;Phone number 2.c: 139: var=5;
	movlw	low(05h)
	movwf	(_var)
	movlw	high(05h)
	movwf	((_var))+1
	line	140
;Phone number 2.c: 140: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	141
;Phone number 2.c: 141: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000748:	
	line	142
;Phone number 2.c: 142: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	
l30000749:	
	line	143
;Phone number 2.c: 143: data(var+48);
	movlw	(035h)
	fcall	_data
	
l34:	
	line	144
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u961
	goto	u960
u961:
	goto	l34
u960:
	
l33:	
	line	147
;Phone number 2.c: 145: }
;Phone number 2.c: 147: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u971
	goto	u970
u971:
	goto	l37
u970:
	
l30000750:	
	line	149
;Phone number 2.c: 148: {
;Phone number 2.c: 149: var=6;
	movlw	low(06h)
	movwf	(_var)
	movlw	high(06h)
	movwf	((_var))+1
	line	150
;Phone number 2.c: 150: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	151
;Phone number 2.c: 151: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000751:	
	line	152
;Phone number 2.c: 152: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	
l30000752:	
	line	153
;Phone number 2.c: 153: data(var+48);
	movlw	(036h)
	fcall	_data
	
l38:	
	line	154
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u981
	goto	u980
u981:
	goto	l38
u980:
	
l37:	
	line	160
;Phone number 2.c: 155: }
;Phone number 2.c: 160: RB3=0,RB4=0,RB5=1,RB6=0;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	161
;Phone number 2.c: 161: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u991
	goto	u990
u991:
	goto	l41
u990:
	
l30000753:	
	line	163
;Phone number 2.c: 162: {
;Phone number 2.c: 163: var=7;
	movlw	low(07h)
	movwf	(_var)
	movlw	high(07h)
	movwf	((_var))+1
	line	164
;Phone number 2.c: 164: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	165
;Phone number 2.c: 165: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000754:	
	line	166
;Phone number 2.c: 166: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	
l30000755:	
	line	167
;Phone number 2.c: 167: data(var+48);
	movlw	(037h)
	fcall	_data
	
l42:	
	line	168
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l42
u1000:
	
l41:	
	line	171
;Phone number 2.c: 169: }
;Phone number 2.c: 171: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l45
u1010:
	
l30000756:	
	line	173
;Phone number 2.c: 172: {
;Phone number 2.c: 173: var=8;
	movlw	low(08h)
	movwf	(_var)
	movlw	high(08h)
	movwf	((_var))+1
	line	174
;Phone number 2.c: 174: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	175
;Phone number 2.c: 175: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000757:	
	line	176
;Phone number 2.c: 176: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	
l30000758:	
	line	177
;Phone number 2.c: 177: data(var+48);
	movlw	(038h)
	fcall	_data
	
l46:	
	line	178
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l46
u1020:
	
l45:	
	line	181
;Phone number 2.c: 179: }
;Phone number 2.c: 181: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l49
u1030:
	
l30000759:	
	line	183
;Phone number 2.c: 182: {
;Phone number 2.c: 183: var=9;
	movlw	low(09h)
	movwf	(_var)
	movlw	high(09h)
	movwf	((_var))+1
	line	184
;Phone number 2.c: 184: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	185
;Phone number 2.c: 185: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000760:	
	line	186
;Phone number 2.c: 186: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	
l30000761:	
	line	187
;Phone number 2.c: 187: data(var+48);
	movlw	(039h)
	fcall	_data
	
l50:	
	line	188
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u1041
	goto	u1040
u1041:
	goto	l50
u1040:
	
l49:	
	line	193
;Phone number 2.c: 189: }
;Phone number 2.c: 193: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	195
;Phone number 2.c: 195: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l53
u1050:
	
l30000762:	
	line	197
;Phone number 2.c: 196: {
;Phone number 2.c: 197: var=0;
	movlw	low(0)
	movwf	(_var)
	movlw	high(0)
	movwf	((_var))+1
	line	198
;Phone number 2.c: 198: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	199
;Phone number 2.c: 199: counts++;
	movlw	low(01h)
	addwf	(_counts),f
	skipnc
	incf	(_counts+1),f
	movlw	high(01h)
	addwf	(_counts+1),f
	
l30000763:	
	line	200
;Phone number 2.c: 200: input[counts]=var;
	movf	(_counts),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_input)&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l30000764:	
	line	201
;Phone number 2.c: 201: data(var+48);
	movlw	(030h)
	fcall	_data
	
l54:	
	line	202
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l54
u1060:
	
l53:	
	line	207
;Phone number 2.c: 203: }
;Phone number 2.c: 207: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l30000730
u1070:
	
l30000765:	
	line	209
;Phone number 2.c: 208: {
;Phone number 2.c: 209: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	227
;Phone number 2.c: 227: if(count==11)
	movlw	0Bh
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u1081
	goto	u1080
u1081:
	goto	l30000794
u1080:
	
l30000766:	
	line	229
;Phone number 2.c: 228: {
;Phone number 2.c: 229: command(0X01);
	movlw	(01h)
	fcall	_command
	line	230
;Phone number 2.c: 230: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30000767:	
	line	232
;Phone number 2.c: 232: if(count2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count2+1)),w
	iorwf	((_count2)),w
	skipz
	goto	u1091
	goto	u1090
u1091:
	goto	l30000782
u1090:
	
l30000768:	
	line	234
;Phone number 2.c: 233: {
;Phone number 2.c: 234: count2++;
	movlw	low(01h)
	addwf	(_count2),f
	skipnc
	incf	(_count2+1),f
	movlw	high(01h)
	addwf	(_count2+1),f
	
l30000769:	
	line	235
;Phone number 2.c: 235: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30000770:	
	line	236
;Phone number 2.c: 236: if((number[0]==input[0])&&(number[1]==input[1])&&(number[2]==input[2])&&(number[3]==input[3])&&(number[4]==input[4])&&(number[5]==input[5])&&(number[6]==input[6])&&(number[7]==input[7])&&(number[8]==input[8])&&(number[9]==input[9]))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_input+1),w
	xorwf	(_number+1),w
	skipz
	goto	u1105
	movf	(_input),w
	xorwf	(_number),w
u1105:

	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l30000781
u1100:
	
l30000771:	
	movf	1+(_input)+02h,w
	xorwf	1+(_number)+02h,w
	skipz
	goto	u1115
	movf	0+(_input)+02h,w
	xorwf	0+(_number)+02h,w
u1115:

	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l30000781
u1110:
	
l30000772:	
	movf	1+(_input)+04h,w
	xorwf	1+(_number)+04h,w
	skipz
	goto	u1125
	movf	0+(_input)+04h,w
	xorwf	0+(_number)+04h,w
u1125:

	skipz
	goto	u1121
	goto	u1120
u1121:
	goto	l30000781
u1120:
	
l30000773:	
	movf	1+(_input)+06h,w
	xorwf	1+(_number)+06h,w
	skipz
	goto	u1135
	movf	0+(_input)+06h,w
	xorwf	0+(_number)+06h,w
u1135:

	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l30000781
u1130:
	
l30000774:	
	movf	1+(_input)+08h,w
	xorwf	1+(_number)+08h,w
	skipz
	goto	u1145
	movf	0+(_input)+08h,w
	xorwf	0+(_number)+08h,w
u1145:

	skipz
	goto	u1141
	goto	u1140
u1141:
	goto	l30000781
u1140:
	
l30000775:	
	movf	1+(_input)+0Ah,w
	xorwf	1+(_number)+0Ah,w
	skipz
	goto	u1155
	movf	0+(_input)+0Ah,w
	xorwf	0+(_number)+0Ah,w
u1155:

	skipz
	goto	u1151
	goto	u1150
u1151:
	goto	l30000781
u1150:
	
l30000776:	
	movf	1+(_input)+0Ch,w
	xorwf	1+(_number)+0Ch,w
	skipz
	goto	u1165
	movf	0+(_input)+0Ch,w
	xorwf	0+(_number)+0Ch,w
u1165:

	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l30000781
u1160:
	
l30000777:	
	movf	1+(_input)+0Eh,w
	xorwf	1+(_number)+0Eh,w
	skipz
	goto	u1175
	movf	0+(_input)+0Eh,w
	xorwf	0+(_number)+0Eh,w
u1175:

	skipz
	goto	u1171
	goto	u1170
u1171:
	goto	l30000781
u1170:
	
l30000778:	
	movf	1+(_input)+010h,w
	xorwf	1+(_number)+010h,w
	skipz
	goto	u1185
	movf	0+(_input)+010h,w
	xorwf	0+(_number)+010h,w
u1185:

	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l30000781
u1180:
	
l30000779:	
	movf	1+(_input)+012h,w
	xorwf	1+(_number)+012h,w
	skipz
	goto	u1195
	movf	0+(_input)+012h,w
	xorwf	0+(_number)+012h,w
u1195:

	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l30000781
u1190:
	
l30000780:	
	line	238
;Phone number 2.c: 237: {
;Phone number 2.c: 238: string("CALLING...");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_string
	goto	l30000782
	
l30000781:	
	line	243
;Phone number 2.c: 241: else
;Phone number 2.c: 242: {
;Phone number 2.c: 243: string("INVALID NUMBER");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_string
	
l30000782:	
	line	249
;Phone number 2.c: 248: {
;Phone number 2.c: 249: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	
l30000783:	
	bcf	(52/8),(52)&7
	
l30000784:	
	bcf	(53/8),(53)&7
	
l30000785:	
	bsf	(54/8),(54)&7
	
l30000786:	
	line	250
;Phone number 2.c: 250: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l30000782
u1200:
	
l30000788:	
	line	255
;Phone number 2.c: 253: }
;Phone number 2.c: 254: }
;Phone number 2.c: 255: command(0X01);
	movlw	(01h)
	fcall	_command
	line	256
;Phone number 2.c: 256: string("CALL ENDED");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_string
	
l30000789:	
	line	258
;Phone number 2.c: 258: for(i=0;i<10;i++)
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30000792:	
	line	260
;Phone number 2.c: 259: {
;Phone number 2.c: 260: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u1277:
	decfsz	(??_main+0+0),f
	goto	u1277
	decfsz	(??_main+0+0+1),f
	goto	u1277
	nop2

	line	258
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(0Ah))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u1215
	movlw	low(0Ah)
	subwf	(_i),w
u1215:

	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l30000792
u1210:
	
l30000793:	
	line	262
;Phone number 2.c: 261: }
;Phone number 2.c: 262: command(0X01);
	movlw	(01h)
	fcall	_command
	goto	l30000801
	
l30000794:	
	line	267
;Phone number 2.c: 265: else
;Phone number 2.c: 266: {
;Phone number 2.c: 267: for(i=0;i<10;i++)
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30000796:	
	line	269
;Phone number 2.c: 268: {
;Phone number 2.c: 269: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30000797:	
	line	270
;Phone number 2.c: 270: if(count1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count1+1)),w
	iorwf	((_count1)),w
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l73
u1220:
	
l30000798:	
	line	272
;Phone number 2.c: 271: {
;Phone number 2.c: 272: count1++;
	movlw	low(01h)
	addwf	(_count1),f
	skipnc
	incf	(_count1+1),f
	movlw	high(01h)
	addwf	(_count1+1),f
	
l30000799:	
	line	273
;Phone number 2.c: 273: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30000800:	
	line	274
;Phone number 2.c: 274: string("INVALID NUMBER");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_string
	
l73:	
	line	267
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(0Ah))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u1235
	movlw	low(0Ah)
	subwf	(_i),w
u1235:

	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l30000796
u1230:
	
l30000801:	
	line	279
;Phone number 2.c: 275: }
;Phone number 2.c: 276: }
;Phone number 2.c: 277: }
;Phone number 2.c: 279: for(i=0;i<5;i++)
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30000803:	
	line	281
;Phone number 2.c: 280: {
;Phone number 2.c: 281: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u1287:
	decfsz	(??_main+0+0),f
	goto	u1287
	decfsz	(??_main+0+0+1),f
	goto	u1287
	nop2

	line	279
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(05h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u1245
	movlw	low(05h)
	subwf	(_i),w
u1245:

	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l30000803
u1240:
	
l30000804:	
	line	283
;Phone number 2.c: 282: }
;Phone number 2.c: 283: command(0X01);
	movlw	(01h)
	fcall	_command
	goto	l12
	
l77:	
	line	285
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u1251
	goto	u1250
u1251:
	goto	l77
u1250:
	goto	l30000730
	
l12:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	289
	signat	_main,88
	global	_string
psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:

; *************** function _string *****************
; Defined at:
;		line 60 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
; Parameters:    Size  Location     Type
;  ptr             1    wreg     PTR unsigned char 
;		 -> STR_1(13), STR_3(15), STR_2(11), STR_4(11), 
;		 -> STR_5(15), 
; Auto vars:     Size  Location     Type
;  ptr             1    1[BANK0 ] PTR unsigned char 
;		 -> STR_1(13), STR_3(15), STR_2(11), STR_4(11), 
;		 -> STR_5(15), 
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
;		_main
; This function uses a non-reentrant model
; 
psect	text42
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	60
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
;Phone number 2.c: 59: void string(char *ptr)
;Phone number 2.c: 60: {
	
_string:	
	opt stack 6
; Regs used in _string: [wreg+status,2+status,0+pclath+cstack]
;string@ptr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(string@ptr)
	
l30000719:	
	goto	l30000722
	
l30000720:	
	line	63
;Phone number 2.c: 62: {
;Phone number 2.c: 63: data(*ptr);
	movf	(string@ptr),w
	FNCALL _string,stringtab
	fcall	stringdir
	fcall	_data
	
l30000721:	
	line	64
;Phone number 2.c: 64: *ptr++;
	movlw	(01h)
	movwf	(??_string+0+0)
	movf	(??_string+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(string@ptr),f
	
l30000722:	
	line	61
	movf	(string@ptr),w
	FNCALL _string,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u851
	goto	u850
u851:
	goto	l30000720
u850:
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
; =============== function _string ends ============

psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:
	line	66
	signat	_string,4216
	global	_command

; *************** function _command *****************
; Defined at:
;		line 45 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
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
psect	text43
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	45
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;Phone number 2.c: 44: void command(char data)
;Phone number 2.c: 45: {
	
_command:	
	opt stack 6
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30000809:	
	line	46
;Phone number 2.c: 46: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30000810:	
	line	47
;Phone number 2.c: 47: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30000811:	
	line	48
;Phone number 2.c: 48: pulse();
	fcall	_pulse
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	line	49
	signat	_command,4216
	global	_data

; *************** function _data *****************
; Defined at:
;		line 52 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_pulse
; This function is called by:
;		_string
;		_main
; This function uses a non-reentrant model
; 
psect	text44
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	52
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;Phone number 2.c: 51: void data(char data)
;Phone number 2.c: 52: {
	
_data:	
	opt stack 5
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(data@data)
	
l30000716:	
	line	53
;Phone number 2.c: 53: RE0=1;
	bsf	(72/8),(72)&7
	
l30000717:	
	line	54
;Phone number 2.c: 54: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30000718:	
	line	55
;Phone number 2.c: 55: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:
	line	56
	signat	_data,4216
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 37 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
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
psect	text45
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	37
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;Phone number 2.c: 36: void pulse()
;Phone number 2.c: 37: {
	
_pulse:	
	opt stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l30000806:	
;Phone number 2.c: 38: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30000807:	
	line	39
;Phone number 2.c: 39: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000808:	
	line	40
;Phone number 2.c: 40: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	41
;Phone number 2.c: 41: delay(1000);
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

psect	text46,local,class=CODE,delta=2
global __ptext46
__ptext46:
	line	42
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 32 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
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
psect	text46
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number 2\Phone number 2.c"
	line	32
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;Phone number 2.c: 16: int var=0;
;Phone number 2.c: 17: int i,j;
;Phone number 2.c: 19: static int count=0;
;Phone number 2.c: 20: static int counts=-1;
;Phone number 2.c: 21: static int count1=0;
;Phone number 2.c: 22: static int count2=0;
;Phone number 2.c: 23: static int k=0;
;Phone number 2.c: 25: int number[15]={8,9,0,3,9,6,9,8,9,0};
;Phone number 2.c: 26: int input[15];
;Phone number 2.c: 31: void delay(int x)
;Phone number 2.c: 32: {
	
_delay:	
	opt stack 3
; Regs used in _delay: [wreg]
	
l30000812:	
	
l30000813:	
	line	33
	movlw	low(-1)
	addwf	(delay@x),f
	skipnc
	incf	(delay@x+1),f
	movlw	high(-1)
	addwf	(delay@x+1),f
	movlw	high(-1)
	xorwf	((delay@x+1))&07fh,w
	skipz
	goto	u1265
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u1265:

	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l30000813
u1260:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text47,local,class=CODE,delta=2
global __ptext47
__ptext47:
	line	34
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
