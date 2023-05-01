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
;BANK0:	_main->___awdiv
;COMMON:	_main->___awmod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_command
	FNCALL	_main,_string
	FNCALL	_main,_data
	FNCALL	_string,_data
	FNCALL	_command,_pulse
	FNCALL	_data,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_balance
	global	_countp
	global	_countu
	global	_countw
	global	_password
	global	_username
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	18

;initializer for _balance
	retlw	088h
	retlw	013h

	line	26

;initializer for _countp
	retlw	0FFh
	retlw	0FFh

	line	25

;initializer for _countu
	retlw	0FFh
	retlw	0FFh

	line	28

;initializer for _countw
	retlw	0FFh
	retlw	0FFh

psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	line	39

;initializer for _password
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
	retlw	0
	retlw	0
	line	37

;initializer for _username
	retlw	01h
	retlw	0

	retlw	02h
	retlw	0

	retlw	03h
	retlw	0

	retlw	04h
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
	global	_wdraw
	global	_count
	global	_count22
	global	_count33
	global	_count44
	global	_count55
	global	_countkey
	global	_countspecial
	global	_i
	global	_j
	global	_keytopwd
	global	_withdraw
	global	_var
	global	_inputpass
	global	_inputuser
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
	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movwf	pclath
	movf	fsr,w
stringdir:
	movwf pc
__stringbase:
psect	stringtext1,class=CODE,delta=2
global __pstringtext1
__pstringtext1:
	
STR_17:	
	retlw	87	;'W'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	68	;'D'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	70	;'F'
	retlw	85	;'U'
	retlw	76	;'L'
	retlw	0
psect	stringtext2,class=CODE,delta=2
global __pstringtext2
__pstringtext2:
	
STR_4:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	78	;'N'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	stringtext3,class=CODE,delta=2
global __pstringtext3
__pstringtext3:
	
STR_16:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	43	;'+'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	0
psect	stringtext4,class=CODE,delta=2
global __pstringtext4
__pstringtext4:
	
STR_10:	
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	87	;'W'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	68	;'D'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	89	;'Y'
	retlw	0
psect	stringtext5,class=CODE,delta=2
global __pstringtext5
__pstringtext5:
	
STR_3:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	0
psect	stringtext6,class=CODE,delta=2
global __pstringtext6
__pstringtext6:
	
STR_7:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	86	;'V'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	0
psect	stringtext7,class=CODE,delta=2
global __pstringtext7
__pstringtext7:
	
STR_6:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	0
psect	stringtext8,class=CODE,delta=2
global __pstringtext8
__pstringtext8:
	
STR_2:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	69	;'E'
	retlw	71	;'G'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	0
psect	stringtext9,class=CODE,delta=2
global __pstringtext9
__pstringtext9:
	
STR_5:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	89	;'Y'
	retlw	0
psect	stringtext10,class=CODE,delta=2
global __pstringtext10
__pstringtext10:
	
STR_11:	
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	0
psect	stringtext11,class=CODE,delta=2
global __pstringtext11
__pstringtext11:
	
STR_1:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	75	;'K'
	retlw	86	;'V'
	retlw	66	;'B'
	retlw	0
psect	stringtext12,class=CODE,delta=2
global __pstringtext12
__pstringtext12:
	
STR_20:	
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
psect	stringtext13,class=CODE,delta=2
global __pstringtext13
__pstringtext13:
	
STR_18:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	73	;'I'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	0
psect	stringtext14,class=CODE,delta=2
global __pstringtext14
__pstringtext14:
	
STR_9:	
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	80	;'P'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext15,class=CODE,delta=2
global __pstringtext15
__pstringtext15:
	
STR_13:	
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	68	;'D'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	87	;'W'
	retlw	0
psect	stringtext16,class=CODE,delta=2
global __pstringtext16
__pstringtext16:
	
STR_15:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	53	;'5'
	retlw	53	;'5'
	retlw	0
psect	stringtext17,class=CODE,delta=2
global __pstringtext17
__pstringtext17:
	
STR_14:	
	retlw	53	;'5'
	retlw	53	;'5'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	0
psect	stringtext18,class=CODE,delta=2
global __pstringtext18
__pstringtext18:
	
STR_12:	
	retlw	69	;'E'
	retlw	88	;'X'
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	0
psect	stringtext19,class=CODE,delta=2
global __pstringtext19
__pstringtext19:
	
STR_8:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	0
psect	stringtext20,class=CODE,delta=2
global __pstringtext20
__pstringtext20:
STR_19	equ	STR_11+8
	file	"ATM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_var:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_wdraw:
       ds      20

_count:
       ds      2

_count22:
       ds      2

_count33:
       ds      2

_count44:
       ds      2

_count55:
       ds      2

_countkey:
       ds      2

_countspecial:
       ds      2

_i:
       ds      2

_j:
       ds      2

_keytopwd:
       ds      2

_withdraw:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	18
_balance:
       ds      2

psect	dataBANK0
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	26
_countp:
       ds      2

psect	dataBANK0
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	25
_countu:
       ds      2

psect	dataBANK0
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	28
_countw:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_inputpass:
       ds      40

_inputuser:
       ds      40

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	39
_password:
       ds      20

psect	dataBANK3
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	37
_username:
       ds      20

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+02Ah)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+050h)
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
	movlw low(__pdataBANK0+8)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+40)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
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
	global	??___awmod
??___awmod: ;@ 0x0
	global	??___awdiv
??___awdiv: ;@ 0x0
	global	??_string
??_string: ;@ 0x0
	global	??__delay
??__delay: ;@ 0x0
	global	?__delay
?__delay: ;@ 0x0
	global	??_data
??_data: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	?_delay
?_delay: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	??_pulse
??_pulse: ;@ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	__delay$0
__delay$0:	; 4 bytes @ 0x0
	ds	1
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
	global	data@data
data@data:	; 1 bytes @ 0x2
	global	command@data
command@data:	; 1 bytes @ 0x2
	ds	1
	global	?_data
?_data: ;@ 0x3
	global	?_string
?_string: ;@ 0x3
	global	?_command
?_command: ;@ 0x3
	global	?___awmod
?___awmod: ;@ 0x3
	global	string@ptr
string@ptr:	; 2 bytes @ 0x3
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x3
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3
	ds	2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main: ;@ 0x7
	ds	2
	global	?_main
?_main: ;@ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___awdiv
?___awdiv: ;@ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	ds	2
	global	main@p
main@p:	; 2 bytes @ 0x4
	ds	2
	global	main@q
main@q:	; 2 bytes @ 0x6
	ds	2
	global	main@n
main@n:	; 2 bytes @ 0x8
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0xA
	ds	2
	global	main@m
main@m:	; 2 bytes @ 0xC
	ds	2
	global	main@o
main@o:	; 2 bytes @ 0xE
	ds	2
;Data sizes: Strings 280, constant 0, data 48, bss 124, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9      11
; BANK0           80     16      66
; BANK1           80      0      80
; BANK3           96      0      40
; BANK2           96      0       0


;Pointer list with targets:

;string@ptr	PTR unsigned char  size(2); Largest target is 20
;		 -> STR_2(CODE[17]), STR_1(CODE[15]), STR_3(CODE[17]), STR_4(CODE[17]), 
;		 -> STR_5(CODE[17]), STR_7(CODE[17]), STR_6(CODE[17]), STR_8(CODE[8]), 
;		 -> STR_10(CODE[17]), STR_11(CODE[16]), STR_9(CODE[14]), STR_18(CODE[14]), 
;		 -> STR_17(CODE[20]), STR_19(CODE[8]), STR_20(CODE[15]), STR_13(CODE[12]), 
;		 -> STR_14(CODE[10]), STR_12(CODE[9]), STR_15(CODE[11]), STR_16(CODE[17]), 
;?___awdiv	int  size(1); Largest target is 0
;?___awmod	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 2, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                               14    0  911   0.00
;                                    7 COMMO    2
;                                    4 BANK0   12
;            ___awdiv
;            ___awmod
;            _command
;             _string
;               _data
;             __delay
;  __delay                                            0    4    0   0.00
;                                    0 COMMO    4
;  _string                                            0    2   65   0.00
;                                    3 COMMO    2
;               _data
;  _command                                           1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;  ___awdiv                                           5    4  354   0.00
;                                    0 COMMO    5
;                                    0 BANK0    4
;  ___awmod                                           3    4  218   0.00
;                                    0 COMMO    7
;    _data                                            1    0   32   0.00
;                                    2 COMMO    1
;              _pulse
;      _pulse                                         0    0   16   0.00
;              _delay
;        _delay                                       0    2   16   0.00
;                                    0 COMMO    2
; Estimated maximum call depth 4
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      9       B       1       78.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      C5       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     10      42       5       82.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0      50       7      100.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0      28       9       41.7%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      C5      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 81 in file "C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  o               2   14[BANK0 ] int 
;  m               2   12[BANK0 ] int 
;  q               2    6[BANK0 ] int 
;  p               2    4[BANK0 ] int 
;  n               2    8[BANK0 ] int 
;  l               2   10[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2      12       0       0       0
;      Temp:     2
;      Total:   14
; This function calls:
;		___awdiv
;		___awmod
;		_command
;		_string
;		_data
;		__delay
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	81
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;ATM.c: 80: void main()
;ATM.c: 81: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	83
	
l30001232:	
;ATM.c: 83: int l=balance/1000;
	movf	(_balance+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_balance),w
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
	clrf	(main@l+1)
	addwf	(main@l+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@l)
	addwf	(main@l)

	line	84
;ATM.c: 84: int m=balance%1000;
	movf	(_balance+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_balance),w
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
	clrf	(main@m+1)
	addwf	(main@m+1)
	movf	(0+(?___awmod)),w
	clrf	(main@m)
	addwf	(main@m)

	line	85
;ATM.c: 85: int n=m/100;
	movf	(main@m+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(main@m),w
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
	clrf	(main@n+1)
	addwf	(main@n+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@n)
	addwf	(main@n)

	line	86
;ATM.c: 86: int o=m%100;
	movf	(main@m+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(main@m),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	movlw	low(064h)
	movwf	0+(?___awmod)+02h
	movlw	high(064h)
	movwf	(0+(?___awmod)+02h)+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@o+1)
	addwf	(main@o+1)
	movf	(0+(?___awmod)),w
	clrf	(main@o)
	addwf	(main@o)

	line	87
;ATM.c: 87: int p=o/10;
	movf	(main@o+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(main@o),w
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
	clrf	(main@p+1)
	addwf	(main@p+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@p)
	addwf	(main@p)

	line	88
;ATM.c: 88: int q=o%10;
	movf	(main@o+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(main@o),w
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
	clrf	(main@q+1)
	addwf	(main@q+1)
	movf	(0+(?___awmod)),w
	clrf	(main@q)
	addwf	(main@q)

	
l30001233:	
	line	90
;ATM.c: 90: TRISD=0X00; PORTD=0X00; ANSEL=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30001234:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30001235:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h
	
l30001236:	
	line	91
;ATM.c: 91: TRISE=0X00; PORTE=0X00; ANSELH=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	
l30001237:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(9)	;volatile
	
l30001238:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(393)^0180h
	
l30001239:	
	line	92
;ATM.c: 92: TRISB=0X07; PORTB=0X00;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30001240:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30001241:	
	line	94
;ATM.c: 94: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30001242:	
	line	95
;ATM.c: 95: command(0X38);
	movlw	(038h)
	fcall	_command
	
l30001243:	
	line	97
;ATM.c: 97: if(count==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count+1)),w
	iorwf	((_count)),w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l30001246
u2690:
	
l30001244:	
	line	99
;ATM.c: 98: {
;ATM.c: 99: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001245:	
	line	100
;ATM.c: 100: string("WELCOME TO KVB");
	movlw	low((STR_1))
	movwf	(?_string)
	movlw	high((STR_1))
	movwf	((?_string))+1
	fcall	_string
	
l30001246:	
	line	103
;ATM.c: 101: }
;ATM.c: 103: if(count==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count+1)),w
	iorwf	((_count)),w
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l30001249
u2700:
	
l30001247:	
	line	105
;ATM.c: 104: {
;ATM.c: 105: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l30001248:	
	line	106
;ATM.c: 106: string("PRESS # TO BEGIN");
	movlw	low((STR_2))
	movwf	(?_string)
	movlw	high((STR_2))
	movwf	((?_string))+1
	fcall	_string
	
l30001249:	
	line	111
;ATM.c: 110: {
;ATM.c: 111: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	
l30001250:	
	bcf	(52/8),(52)&7
	
l30001251:	
	bcf	(53/8),(53)&7
	
l30001252:	
	bsf	(54/8),(54)&7
	
l30001253:	
	line	112
;ATM.c: 112: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l30001249
u2710:
	
l30001254:	
	line	114
;ATM.c: 113: {
;ATM.c: 114: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001255:	
	line	115
;ATM.c: 115: countkey++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_countkey),f
	skipnc
	incf	(_countkey+1),f
	movlw	high(01h)
	addwf	(_countkey+1),f
	
l30001256:	
	line	116
;ATM.c: 116: string("ENTER 4 DIGIT ID");
	movlw	low((STR_3))
	movwf	(?_string)
	movlw	high((STR_3))
	movwf	((?_string))+1
	fcall	_string
	
l30001257:	
	line	117
;ATM.c: 117: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l20:	
	line	124
;ATM.c: 123: {
;ATM.c: 124: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	126
;ATM.c: 126: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l22
u2720:
	
l30001258:	
	line	128
;ATM.c: 127: {
;ATM.c: 128: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	line	129
;ATM.c: 129: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	130
;ATM.c: 130: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001259:	
	line	131
;ATM.c: 131: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	
l30001260:	
	line	132
;ATM.c: 132: data(var+48);
	movlw	(031h)
	fcall	_data
	
l23:	
	line	133
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l23
u2730:
	
l22:	
	line	136
;ATM.c: 134: }
;ATM.c: 136: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l26
u2740:
	
l30001261:	
	line	138
;ATM.c: 137: {
;ATM.c: 138: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	line	139
;ATM.c: 139: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	140
;ATM.c: 140: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001262:	
	line	141
;ATM.c: 141: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	
l30001263:	
	line	142
;ATM.c: 142: data(var+48);
	movlw	(032h)
	fcall	_data
	
l27:	
	line	143
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l27
u2750:
	
l26:	
	line	146
;ATM.c: 144: }
;ATM.c: 146: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l30
u2760:
	
l30001264:	
	line	148
;ATM.c: 147: {
;ATM.c: 148: var=3;
	movlw	low(03h)
	movwf	(_var)
	movlw	high(03h)
	movwf	((_var))+1
	line	149
;ATM.c: 149: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	150
;ATM.c: 150: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001265:	
	line	151
;ATM.c: 151: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	
l30001266:	
	line	152
;ATM.c: 152: data(var+48);
	movlw	(033h)
	fcall	_data
	
l31:	
	line	153
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l31
u2770:
	
l30:	
	line	156
;ATM.c: 154: }
;ATM.c: 156: RB3=0,RB4=1,RB5=0,RB6=0;
	bcf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	157
;ATM.c: 157: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l34
u2780:
	
l30001267:	
	line	159
;ATM.c: 158: {
;ATM.c: 159: var=4;
	movlw	low(04h)
	movwf	(_var)
	movlw	high(04h)
	movwf	((_var))+1
	line	160
;ATM.c: 160: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	161
;ATM.c: 161: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001268:	
	line	162
;ATM.c: 162: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	
l30001269:	
	line	163
;ATM.c: 163: data(var+48);
	movlw	(034h)
	fcall	_data
	
l35:	
	line	164
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l35
u2790:
	
l34:	
	line	167
;ATM.c: 165: }
;ATM.c: 167: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l38
u2800:
	
l30001270:	
	line	169
;ATM.c: 168: {
;ATM.c: 169: var=5;
	movlw	low(05h)
	movwf	(_var)
	movlw	high(05h)
	movwf	((_var))+1
	line	170
;ATM.c: 170: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	171
;ATM.c: 171: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001271:	
	line	172
;ATM.c: 172: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	
l30001272:	
	line	173
;ATM.c: 173: data(var+48);
	movlw	(035h)
	fcall	_data
	
l39:	
	line	174
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l39
u2810:
	
l38:	
	line	177
;ATM.c: 175: }
;ATM.c: 177: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l42
u2820:
	
l30001273:	
	line	179
;ATM.c: 178: {
;ATM.c: 179: var=6;
	movlw	low(06h)
	movwf	(_var)
	movlw	high(06h)
	movwf	((_var))+1
	line	180
;ATM.c: 180: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	181
;ATM.c: 181: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001274:	
	line	182
;ATM.c: 182: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	
l30001275:	
	line	183
;ATM.c: 183: data(var+48);
	movlw	(036h)
	fcall	_data
	
l43:	
	line	184
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l43
u2830:
	
l42:	
	line	187
;ATM.c: 185: }
;ATM.c: 187: RB3=0,RB4=0,RB5=1,RB6=0;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	188
;ATM.c: 188: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l46
u2840:
	
l30001276:	
	line	190
;ATM.c: 189: {
;ATM.c: 190: var=7;
	movlw	low(07h)
	movwf	(_var)
	movlw	high(07h)
	movwf	((_var))+1
	line	191
;ATM.c: 191: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	192
;ATM.c: 192: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001277:	
	line	193
;ATM.c: 193: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	
l30001278:	
	line	194
;ATM.c: 194: data(var+48);
	movlw	(037h)
	fcall	_data
	
l47:	
	line	195
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l47
u2850:
	
l46:	
	line	198
;ATM.c: 196: }
;ATM.c: 198: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l50
u2860:
	
l30001279:	
	line	200
;ATM.c: 199: {
;ATM.c: 200: var=8;
	movlw	low(08h)
	movwf	(_var)
	movlw	high(08h)
	movwf	((_var))+1
	line	201
;ATM.c: 201: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	202
;ATM.c: 202: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001280:	
	line	203
;ATM.c: 203: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	
l30001281:	
	line	204
;ATM.c: 204: data(var+48);
	movlw	(038h)
	fcall	_data
	
l51:	
	line	205
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l51
u2870:
	
l50:	
	line	208
;ATM.c: 206: }
;ATM.c: 208: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l54
u2880:
	
l30001282:	
	line	210
;ATM.c: 209: {
;ATM.c: 210: var=9;
	movlw	low(09h)
	movwf	(_var)
	movlw	high(09h)
	movwf	((_var))+1
	line	211
;ATM.c: 211: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	212
;ATM.c: 212: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001283:	
	line	213
;ATM.c: 213: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	
l30001284:	
	line	214
;ATM.c: 214: data(var+48);
	movlw	(039h)
	fcall	_data
	
l55:	
	line	215
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l55
u2890:
	
l54:	
	line	218
;ATM.c: 216: }
;ATM.c: 218: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	220
;ATM.c: 220: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l30001288
u2900:
	
l30001285:	
	line	222
;ATM.c: 221: {
;ATM.c: 222: var=0;
	movlw	low(0)
	movwf	(_var)
	movlw	high(0)
	movwf	((_var))+1
	line	223
;ATM.c: 223: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	224
;ATM.c: 224: countu++;
	movlw	low(01h)
	addwf	(_countu),f
	skipnc
	incf	(_countu+1),f
	movlw	high(01h)
	addwf	(_countu+1),f
	
l30001286:	
	line	225
;ATM.c: 225: inputuser[countu]=var;
	movf	(_countu),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputuser)&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l30001287:	
	line	226
;ATM.c: 226: data(var+48);
	movlw	(030h)
	fcall	_data
	
l59:	
	line	227
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l59
u2910:
	
l30001288:	
	line	230
;ATM.c: 228: }
;ATM.c: 230: if(countu==3)
	movlw	03h
	xorwf	(_countu),w
	iorwf	(_countu+1),w
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l20
u2920:
	
l30001289:	
	line	232
;ATM.c: 231: {
;ATM.c: 232: command(0X01);
	movlw	(01h)
	fcall	_command
	line	233
;ATM.c: 233: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001290:	
	line	235
;ATM.c: 235: if(count22==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count22+1)),w
	iorwf	((_count22)),w
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l30001490
u2930:
	
l30001291:	
	line	237
;ATM.c: 236: {
;ATM.c: 237: count22++;
	movlw	low(01h)
	addwf	(_count22),f
	skipnc
	incf	(_count22+1),f
	movlw	high(01h)
	addwf	(_count22+1),f
	
l30001292:	
	line	238
;ATM.c: 238: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001293:	
	line	240
;ATM.c: 240: if((username[0]==inputuser[0])&&(username[1]==inputuser[1])&&(username[2]==inputuser[2])&&(username[3]==inputuser[3]))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_inputuser+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(_username+1)^0180h,w
	skipz
	goto	u2945
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_inputuser)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(_username)^0180h,w
u2945:

	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l30001489
u2940:
	
l30001294:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_inputuser)^080h+02h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	1+(_username)^0180h+02h,w
	skipz
	goto	u2955
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_inputuser)^080h+02h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	0+(_username)^0180h+02h,w
u2955:

	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l30001489
u2950:
	
l30001295:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_inputuser)^080h+04h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	1+(_username)^0180h+04h,w
	skipz
	goto	u2965
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_inputuser)^080h+04h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	0+(_username)^0180h+04h,w
u2965:

	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l30001489
u2960:
	
l30001296:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_inputuser)^080h+06h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	1+(_username)^0180h+06h,w
	skipz
	goto	u2975
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_inputuser)^080h+06h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	0+(_username)^0180h+06h,w
u2975:

	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l30001489
u2970:
	
l30001297:	
	line	242
;ATM.c: 241: {
;ATM.c: 242: string("CORRECT USERNAME");
	movlw	low((STR_4))
	movwf	(?_string)
	movlw	high((STR_4))
	movwf	((?_string))+1
	fcall	_string
	
l30001298:	
	line	245
;ATM.c: 245: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001301:	
	line	247
;ATM.c: 246: {
;ATM.c: 247: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3777:
	decfsz	(??_main+0+0),f
	goto	u3777
	decfsz	(??_main+0+0+1),f
	goto	u3777
	nop2

	line	245
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u2985
	movlw	low(05h)
	subwf	(_i),w
u2985:

	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l30001301
u2980:
	
l30001302:	
	line	249
;ATM.c: 248: }
;ATM.c: 249: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001303:	
	line	265
;ATM.c: 265: string("ENTER 4DIGIT KEY");
	movlw	low((STR_5))
	movwf	(?_string)
	movlw	high((STR_5))
	movwf	((?_string))+1
	fcall	_string
	
l30001304:	
	line	266
;ATM.c: 266: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001307:	
	line	268
;ATM.c: 267: {
;ATM.c: 268: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3787:
	decfsz	(??_main+0+0),f
	goto	u3787
	decfsz	(??_main+0+0+1),f
	goto	u3787
	nop2

	line	266
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u2995
	movlw	low(05h)
	subwf	(_i),w
u2995:

	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l30001307
u2990:
	
l30001308:	
	line	271
;ATM.c: 269: }
;ATM.c: 271: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l30001309:	
	line	276
;ATM.c: 274: {
;ATM.c: 276: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
l30001310:	
	bcf	(52/8),(52)&7
	
l30001311:	
	bcf	(53/8),(53)&7
	
l30001312:	
	bcf	(54/8),(54)&7
	
l30001313:	
	line	278
;ATM.c: 278: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l74
u3000:
	
l30001314:	
	line	280
;ATM.c: 279: {
;ATM.c: 280: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	line	281
;ATM.c: 281: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	282
;ATM.c: 282: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001315:	
	line	283
;ATM.c: 283: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	
l30001316:	
	line	284
;ATM.c: 284: data(var+48);
	movlw	(031h)
	fcall	_data
	
l75:	
	line	285
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l75
u3010:
	
l74:	
	line	288
;ATM.c: 286: }
;ATM.c: 288: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l78
u3020:
	
l30001317:	
	line	290
;ATM.c: 289: {
;ATM.c: 290: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	line	291
;ATM.c: 291: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	292
;ATM.c: 292: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001318:	
	line	293
;ATM.c: 293: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	
l30001319:	
	line	294
;ATM.c: 294: data(var+48);
	movlw	(032h)
	fcall	_data
	
l79:	
	line	295
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l79
u3030:
	
l78:	
	line	298
;ATM.c: 296: }
;ATM.c: 298: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l82
u3040:
	
l30001320:	
	line	300
;ATM.c: 299: {
;ATM.c: 300: var=3;
	movlw	low(03h)
	movwf	(_var)
	movlw	high(03h)
	movwf	((_var))+1
	line	301
;ATM.c: 301: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	302
;ATM.c: 302: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001321:	
	line	303
;ATM.c: 303: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	
l30001322:	
	line	304
;ATM.c: 304: data(var+48);
	movlw	(033h)
	fcall	_data
	
l83:	
	line	305
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l83
u3050:
	
l82:	
	line	308
;ATM.c: 306: }
;ATM.c: 308: RB3=0,RB4=1,RB5=0,RB6=0;
	bcf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	309
;ATM.c: 309: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l86
u3060:
	
l30001323:	
	line	311
;ATM.c: 310: {
;ATM.c: 311: var=4;
	movlw	low(04h)
	movwf	(_var)
	movlw	high(04h)
	movwf	((_var))+1
	line	312
;ATM.c: 312: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	313
;ATM.c: 313: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001324:	
	line	314
;ATM.c: 314: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	
l30001325:	
	line	315
;ATM.c: 315: data(var+48);
	movlw	(034h)
	fcall	_data
	
l87:	
	line	316
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l87
u3070:
	
l86:	
	line	319
;ATM.c: 317: }
;ATM.c: 319: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l90
u3080:
	
l30001326:	
	line	321
;ATM.c: 320: {
;ATM.c: 321: var=5;
	movlw	low(05h)
	movwf	(_var)
	movlw	high(05h)
	movwf	((_var))+1
	line	322
;ATM.c: 322: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	323
;ATM.c: 323: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001327:	
	line	324
;ATM.c: 324: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	
l30001328:	
	line	325
;ATM.c: 325: data(var+48);
	movlw	(035h)
	fcall	_data
	
l91:	
	line	326
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l91
u3090:
	
l90:	
	line	329
;ATM.c: 327: }
;ATM.c: 329: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l94
u3100:
	
l30001329:	
	line	331
;ATM.c: 330: {
;ATM.c: 331: var=6;
	movlw	low(06h)
	movwf	(_var)
	movlw	high(06h)
	movwf	((_var))+1
	line	332
;ATM.c: 332: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	333
;ATM.c: 333: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001330:	
	line	334
;ATM.c: 334: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	
l30001331:	
	line	335
;ATM.c: 335: data(var+48);
	movlw	(036h)
	fcall	_data
	
l95:	
	line	336
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l95
u3110:
	
l94:	
	line	339
;ATM.c: 337: }
;ATM.c: 339: RB3=0,RB4=0,RB5=1,RB6=0;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	340
;ATM.c: 340: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l98
u3120:
	
l30001332:	
	line	342
;ATM.c: 341: {
;ATM.c: 342: var=7;
	movlw	low(07h)
	movwf	(_var)
	movlw	high(07h)
	movwf	((_var))+1
	line	343
;ATM.c: 343: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	344
;ATM.c: 344: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001333:	
	line	345
;ATM.c: 345: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	
l30001334:	
	line	346
;ATM.c: 346: data(var+48);
	movlw	(037h)
	fcall	_data
	
l99:	
	line	347
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l99
u3130:
	
l98:	
	line	350
;ATM.c: 348: }
;ATM.c: 350: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l102
u3140:
	
l30001335:	
	line	352
;ATM.c: 351: {
;ATM.c: 352: var=8;
	movlw	low(08h)
	movwf	(_var)
	movlw	high(08h)
	movwf	((_var))+1
	line	353
;ATM.c: 353: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	354
;ATM.c: 354: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001336:	
	line	355
;ATM.c: 355: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	
l30001337:	
	line	356
;ATM.c: 356: data(var+48);
	movlw	(038h)
	fcall	_data
	
l103:	
	line	357
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l103
u3150:
	
l102:	
	line	360
;ATM.c: 358: }
;ATM.c: 360: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l106
u3160:
	
l30001338:	
	line	362
;ATM.c: 361: {
;ATM.c: 362: var=9;
	movlw	low(09h)
	movwf	(_var)
	movlw	high(09h)
	movwf	((_var))+1
	line	363
;ATM.c: 363: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	364
;ATM.c: 364: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001339:	
	line	365
;ATM.c: 365: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	
l30001340:	
	line	366
;ATM.c: 366: data(var+48);
	movlw	(039h)
	fcall	_data
	
l107:	
	line	367
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l107
u3170:
	
l106:	
	line	370
;ATM.c: 368: }
;ATM.c: 370: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	372
;ATM.c: 372: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l30001344
u3180:
	
l30001341:	
	line	374
;ATM.c: 373: {
;ATM.c: 374: var=0;
	movlw	low(0)
	movwf	(_var)
	movlw	high(0)
	movwf	((_var))+1
	line	375
;ATM.c: 375: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	376
;ATM.c: 376: countp++;
	movlw	low(01h)
	addwf	(_countp),f
	skipnc
	incf	(_countp+1),f
	movlw	high(01h)
	addwf	(_countp+1),f
	
l30001342:	
	line	377
;ATM.c: 377: inputpass[countp]=var;
	movf	(_countp),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_inputpass)&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l30001343:	
	line	378
;ATM.c: 378: data(var+48);
	movlw	(030h)
	fcall	_data
	
l111:	
	line	379
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l111
u3190:
	
l30001344:	
	line	383
;ATM.c: 380: }
;ATM.c: 383: if(countp==3)
	movlw	03h
	xorwf	(_countp),w
	iorwf	(_countp+1),w
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l30001309
u3200:
	
l30001345:	
	line	385
;ATM.c: 384: {
;ATM.c: 385: command(0X01);
	movlw	(01h)
	fcall	_command
	line	386
;ATM.c: 386: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30001346:	
	line	388
;ATM.c: 388: if(count33==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count33+1)),w
	iorwf	((_count33)),w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l30001355
u3210:
	
l30001347:	
	line	390
;ATM.c: 389: {
;ATM.c: 390: count33++;
	movlw	low(01h)
	addwf	(_count33),f
	skipnc
	incf	(_count33+1),f
	movlw	high(01h)
	addwf	(_count33+1),f
	
l30001348:	
	line	391
;ATM.c: 391: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001349:	
	line	393
;ATM.c: 393: if((password[0]==inputpass[0])&&(password[1]==inputpass[1])&&(password[2]==inputpass[2])&&(password[3]==inputpass[3]))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_inputpass+1)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(_password+1)^0180h,w
	skipz
	goto	u3225
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_inputpass)^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(_password)^0180h,w
u3225:

	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l30001354
u3220:
	
l30001350:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_inputpass)^080h+02h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	1+(_password)^0180h+02h,w
	skipz
	goto	u3235
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_inputpass)^080h+02h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	0+(_password)^0180h+02h,w
u3235:

	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l30001354
u3230:
	
l30001351:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_inputpass)^080h+04h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	1+(_password)^0180h+04h,w
	skipz
	goto	u3245
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_inputpass)^080h+04h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	0+(_password)^0180h+04h,w
u3245:

	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l30001354
u3240:
	
l30001352:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(_inputpass)^080h+06h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	1+(_password)^0180h+06h,w
	skipz
	goto	u3255
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_inputpass)^080h+06h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	0+(_password)^0180h+06h,w
u3255:

	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l30001354
u3250:
	
l30001353:	
	line	395
;ATM.c: 394: {
;ATM.c: 395: string("CORRECT PASSWORD");
	movlw	low((STR_6))
	movwf	(?_string)
	movlw	high((STR_6))
	movwf	((?_string))+1
	fcall	_string
	goto	l30001355
	
l30001354:	
	line	400
;ATM.c: 398: else
;ATM.c: 399: {
;ATM.c: 400: string("INVALID PASSWORD");
	movlw	low((STR_7))
	movwf	(?_string)
	movlw	high((STR_7))
	movwf	((?_string))+1
	fcall	_string
	
l30001355:	
	line	404
;ATM.c: 401: }
;ATM.c: 402: }
;ATM.c: 404: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001358:	
	line	406
;ATM.c: 405: {
;ATM.c: 406: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3797:
	decfsz	(??_main+0+0),f
	goto	u3797
	decfsz	(??_main+0+0+1),f
	goto	u3797
	nop2

	line	404
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3265
	movlw	low(05h)
	subwf	(_i),w
u3265:

	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l30001358
u3260:
	
l30001359:	
	line	408
;ATM.c: 407: }
;ATM.c: 408: command(0X01);
	movlw	(01h)
	fcall	_command
	goto	l30001361
	
l121:	
	line	410
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l121
u3270:
	goto	l30001309
	
l30001361:	
	line	416
;ATM.c: 411: }
;ATM.c: 414: }
;ATM.c: 416: string("WELCOME");
	movlw	low((STR_8))
	movwf	(?_string)
	movlw	high((STR_8))
	movwf	((?_string))+1
	fcall	_string
	
l30001362:	
	line	417
;ATM.c: 417: for(i=0;i<7;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001365:	
	line	419
;ATM.c: 418: {
;ATM.c: 419: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3807:
	decfsz	(??_main+0+0),f
	goto	u3807
	decfsz	(??_main+0+0+1),f
	goto	u3807
	nop2

	line	417
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3285
	movlw	low(07h)
	subwf	(_i),w
u3285:

	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l30001365
u3280:
	
l30001366:	
	line	421
;ATM.c: 420: }
;ATM.c: 421: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001367:	
	line	424
;ATM.c: 424: string("CHOOSE OPTION");
	movlw	low((STR_9))
	movwf	(?_string)
	movlw	high((STR_9))
	movwf	((?_string))+1
	fcall	_string
	
l30001368:	
	line	425
;ATM.c: 425: for(i=0;i<7;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001371:	
	line	427
;ATM.c: 426: {
;ATM.c: 427: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3817:
	decfsz	(??_main+0+0),f
	goto	u3817
	decfsz	(??_main+0+0+1),f
	goto	u3817
	nop2

	line	425
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3295
	movlw	low(07h)
	subwf	(_i),w
u3295:

	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l30001371
u3290:
	
l30001372:	
	line	429
;ATM.c: 428: }
;ATM.c: 429: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001373:	
	line	432
;ATM.c: 432: string("1.WITHDRAW MONEY");
	movlw	low((STR_10))
	movwf	(?_string)
	movlw	high((STR_10))
	movwf	((?_string))+1
	fcall	_string
	
l30001374:	
	line	433
;ATM.c: 433: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l30001375:	
	line	435
;ATM.c: 435: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001378:	
	line	437
;ATM.c: 436: {
;ATM.c: 437: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3827:
	decfsz	(??_main+0+0),f
	goto	u3827
	decfsz	(??_main+0+0+1),f
	goto	u3827
	nop2

	line	435
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3305
	movlw	low(05h)
	subwf	(_i),w
u3305:

	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l30001378
u3300:
	
l30001379:	
	line	440
;ATM.c: 438: }
;ATM.c: 440: string("2.CHECK BALANCE");
	movlw	low((STR_11))
	movwf	(?_string)
	movlw	high((STR_11))
	movwf	((?_string))+1
	fcall	_string
	
l30001380:	
	line	441
;ATM.c: 441: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001383:	
	line	443
;ATM.c: 442: {
;ATM.c: 443: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3837:
	decfsz	(??_main+0+0),f
	goto	u3837
	decfsz	(??_main+0+0+1),f
	goto	u3837
	nop2

	line	441
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3315
	movlw	low(05h)
	subwf	(_i),w
u3315:

	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l30001383
u3310:
	
l137:	
	line	450
;ATM.c: 449: {
;ATM.c: 450: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	452
;ATM.c: 452: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l139
u3320:
	
l30001384:	
	line	454
;ATM.c: 453: {
;ATM.c: 454: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	line	455
;ATM.c: 455: countspecial=1;
	movlw	low(01h)
	movwf	(_countspecial)
	movlw	high(01h)
	movwf	((_countspecial))+1
	
l30001385:	
	line	456
;ATM.c: 456: data(var+48);
	movlw	(031h)
	fcall	_data
	
l140:	
	line	457
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l140
u3330:
	
l139:	
	line	460
;ATM.c: 458: }
;ATM.c: 460: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l30001388
u3340:
	
l30001386:	
	line	462
;ATM.c: 461: {
;ATM.c: 462: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	line	463
;ATM.c: 463: countspecial=2;
	movlw	low(02h)
	movwf	(_countspecial)
	movlw	high(02h)
	movwf	((_countspecial))+1
	
l30001387:	
	line	464
;ATM.c: 464: data(var+48);
	movlw	(032h)
	fcall	_data
	
l144:	
	line	465
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l144
u3350:
	
l30001388:	
	line	468
;ATM.c: 466: }
;ATM.c: 468: if(countspecial>0)
	movf	(_countspecial+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(01h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3365
	movlw	low(01h)
	subwf	(_countspecial),w
u3365:

	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l137
u3360:
	
l30001390:	
	line	476
;ATM.c: 471: }
;ATM.c: 473: }
;ATM.c: 476: if(countspecial==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_countspecial),w
	iorwf	(_countspecial+1),w
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l30001480
u3370:
	
l30001391:	
	line	479
;ATM.c: 477: {
;ATM.c: 479: for(i=0;i<5;i++)
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001393:	
	line	481
;ATM.c: 480: {
;ATM.c: 481: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3847:
	decfsz	(??_main+0+0),f
	goto	u3847
	decfsz	(??_main+0+0+1),f
	goto	u3847
	nop2

	line	479
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3385
	movlw	low(05h)
	subwf	(_i),w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l30001393
u3380:
	
l30001394:	
	line	484
;ATM.c: 482: }
;ATM.c: 484: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001395:	
	line	486
;ATM.c: 486: string("EXAMPLE:");
	movlw	low((STR_12))
	movwf	(?_string)
	movlw	high((STR_12))
	movwf	((?_string))+1
	fcall	_string
	
l30001396:	
	line	488
;ATM.c: 488: for(i=0;i<7;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001399:	
	line	490
;ATM.c: 489: {
;ATM.c: 490: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3857:
	decfsz	(??_main+0+0),f
	goto	u3857
	decfsz	(??_main+0+0+1),f
	goto	u3857
	nop2

	line	488
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3395
	movlw	low(07h)
	subwf	(_i),w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l30001399
u3390:
	
l30001400:	
	line	493
;ATM.c: 491: }
;ATM.c: 493: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001401:	
	line	496
;ATM.c: 496: string("TO WITHDRAW");
	movlw	low((STR_13))
	movwf	(?_string)
	movlw	high((STR_13))
	movwf	((?_string))+1
	fcall	_string
	
l30001402:	
	line	497
;ATM.c: 497: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	line	498
;ATM.c: 498: string("55 RUPEES");
	movlw	low((STR_14))
	movwf	(?_string)
	movlw	high((STR_14))
	movwf	((?_string))+1
	fcall	_string
	
l30001403:	
	line	500
;ATM.c: 500: for(i=0;i<7;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001406:	
	line	502
;ATM.c: 501: {
;ATM.c: 502: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3867:
	decfsz	(??_main+0+0),f
	goto	u3867
	decfsz	(??_main+0+0+1),f
	goto	u3867
	nop2

	line	500
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3405
	movlw	low(07h)
	subwf	(_i),w
u3405:

	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l30001406
u3400:
	
l30001407:	
	line	504
;ATM.c: 503: }
;ATM.c: 504: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001408:	
	line	506
;ATM.c: 506: string("ENTER 0055");
	movlw	low((STR_15))
	movwf	(?_string)
	movlw	high((STR_15))
	movwf	((?_string))+1
	fcall	_string
	
l30001409:	
	line	507
;ATM.c: 507: for(i=0;i<7;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001412:	
	line	509
;ATM.c: 508: {
;ATM.c: 509: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3877:
	decfsz	(??_main+0+0),f
	goto	u3877
	decfsz	(??_main+0+0+1),f
	goto	u3877
	nop2

	line	507
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3415
	movlw	low(07h)
	subwf	(_i),w
u3415:

	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l30001412
u3410:
	
l30001413:	
	line	511
;ATM.c: 510: }
;ATM.c: 511: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001414:	
	line	513
;ATM.c: 513: string("ENTER AMOUNT + #");
	movlw	low((STR_16))
	movwf	(?_string)
	movlw	high((STR_16))
	movwf	((?_string))+1
	fcall	_string
	
l30001415:	
	line	514
;ATM.c: 514: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l30001416:	
	line	520
;ATM.c: 518: {
;ATM.c: 520: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
l30001417:	
	bcf	(52/8),(52)&7
	
l30001418:	
	bcf	(53/8),(53)&7
	
l30001419:	
	bcf	(54/8),(54)&7
	
l30001420:	
	line	521
;ATM.c: 521: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l164
u3420:
	
l30001421:	
	line	523
;ATM.c: 522: {
;ATM.c: 523: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	line	524
;ATM.c: 524: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	525
;ATM.c: 525: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001422:	
	line	526
;ATM.c: 526: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	
l30001423:	
	line	527
;ATM.c: 527: data(var+48);
	movlw	(031h)
	fcall	_data
	
l165:	
	line	528
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l165
u3430:
	
l164:	
	line	531
;ATM.c: 529: }
;ATM.c: 531: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l168
u3440:
	
l30001424:	
	line	533
;ATM.c: 532: {
;ATM.c: 533: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	line	534
;ATM.c: 534: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	535
;ATM.c: 535: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001425:	
	line	536
;ATM.c: 536: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	
l30001426:	
	line	537
;ATM.c: 537: data(var+48);
	movlw	(032h)
	fcall	_data
	
l169:	
	line	538
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l169
u3450:
	
l168:	
	line	541
;ATM.c: 539: }
;ATM.c: 541: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l172
u3460:
	
l30001427:	
	line	543
;ATM.c: 542: {
;ATM.c: 543: var=3;
	movlw	low(03h)
	movwf	(_var)
	movlw	high(03h)
	movwf	((_var))+1
	line	544
;ATM.c: 544: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	545
;ATM.c: 545: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001428:	
	line	546
;ATM.c: 546: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	
l30001429:	
	line	547
;ATM.c: 547: data(var+48);
	movlw	(033h)
	fcall	_data
	
l173:	
	line	548
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l173
u3470:
	
l172:	
	line	553
;ATM.c: 549: }
;ATM.c: 553: RB3=0,RB4=1,RB5=0,RB6=0;
	bcf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	554
;ATM.c: 554: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l176
u3480:
	
l30001430:	
	line	556
;ATM.c: 555: {
;ATM.c: 556: var=4;
	movlw	low(04h)
	movwf	(_var)
	movlw	high(04h)
	movwf	((_var))+1
	line	557
;ATM.c: 557: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	558
;ATM.c: 558: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001431:	
	line	559
;ATM.c: 559: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	
l30001432:	
	line	560
;ATM.c: 560: data(var+48);
	movlw	(034h)
	fcall	_data
	
l177:	
	line	561
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l177
u3490:
	
l176:	
	line	564
;ATM.c: 562: }
;ATM.c: 564: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l180
u3500:
	
l30001433:	
	line	566
;ATM.c: 565: {
;ATM.c: 566: var=5;
	movlw	low(05h)
	movwf	(_var)
	movlw	high(05h)
	movwf	((_var))+1
	line	567
;ATM.c: 567: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	568
;ATM.c: 568: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001434:	
	line	569
;ATM.c: 569: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	
l30001435:	
	line	570
;ATM.c: 570: data(var+48);
	movlw	(035h)
	fcall	_data
	
l181:	
	line	571
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l181
u3510:
	
l180:	
	line	574
;ATM.c: 572: }
;ATM.c: 574: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l184
u3520:
	
l30001436:	
	line	576
;ATM.c: 575: {
;ATM.c: 576: var=6;
	movlw	low(06h)
	movwf	(_var)
	movlw	high(06h)
	movwf	((_var))+1
	line	577
;ATM.c: 577: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	578
;ATM.c: 578: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001437:	
	line	579
;ATM.c: 579: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	
l30001438:	
	line	580
;ATM.c: 580: data(var+48);
	movlw	(036h)
	fcall	_data
	
l185:	
	line	581
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l185
u3530:
	
l184:	
	line	586
;ATM.c: 582: }
;ATM.c: 586: RB3=0,RB4=0,RB5=1,RB6=0;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	587
;ATM.c: 587: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l188
u3540:
	
l30001439:	
	line	589
;ATM.c: 588: {
;ATM.c: 589: var=7;
	movlw	low(07h)
	movwf	(_var)
	movlw	high(07h)
	movwf	((_var))+1
	line	590
;ATM.c: 590: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	591
;ATM.c: 591: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001440:	
	line	592
;ATM.c: 592: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	
l30001441:	
	line	593
;ATM.c: 593: data(var+48);
	movlw	(037h)
	fcall	_data
	
l189:	
	line	594
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l189
u3550:
	
l188:	
	line	597
;ATM.c: 595: }
;ATM.c: 597: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l192
u3560:
	
l30001442:	
	line	599
;ATM.c: 598: {
;ATM.c: 599: var=8;
	movlw	low(08h)
	movwf	(_var)
	movlw	high(08h)
	movwf	((_var))+1
	line	600
;ATM.c: 600: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	601
;ATM.c: 601: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001443:	
	line	602
;ATM.c: 602: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	
l30001444:	
	line	603
;ATM.c: 603: data(var+48);
	movlw	(038h)
	fcall	_data
	
l193:	
	line	604
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l193
u3570:
	
l192:	
	line	607
;ATM.c: 605: }
;ATM.c: 607: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l196
u3580:
	
l30001445:	
	line	609
;ATM.c: 608: {
;ATM.c: 609: var=9;
	movlw	low(09h)
	movwf	(_var)
	movlw	high(09h)
	movwf	((_var))+1
	line	610
;ATM.c: 610: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	611
;ATM.c: 611: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001446:	
	line	612
;ATM.c: 612: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	
l30001447:	
	line	613
;ATM.c: 613: data(var+48);
	movlw	(039h)
	fcall	_data
	
l197:	
	line	614
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l197
u3590:
	
l196:	
	line	619
;ATM.c: 615: }
;ATM.c: 619: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	620
;ATM.c: 620: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l200
u3600:
	
l30001448:	
	line	622
;ATM.c: 621: {
;ATM.c: 622: var=0;
	movlw	low(0)
	movwf	(_var)
	movlw	high(0)
	movwf	((_var))+1
	line	623
;ATM.c: 623: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	624
;ATM.c: 624: countw++;
	movlw	low(01h)
	addwf	(_countw),f
	skipnc
	incf	(_countw+1),f
	movlw	high(01h)
	addwf	(_countw+1),f
	
l30001449:	
	line	625
;ATM.c: 625: wdraw[countw]=var;
	movf	(_countw),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	
l30001450:	
	line	626
;ATM.c: 626: data(var+48);
	movlw	(030h)
	fcall	_data
	
l201:	
	line	627
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l201
u3610:
	
l200:	
	line	630
;ATM.c: 628: }
;ATM.c: 630: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l30001416
u3620:
	goto	l30001453
	
l205:	
	line	633
	btfsc	(49/8),(49)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l205
u3630:
	goto	l30001416
	
l30001453:	
	line	637
;ATM.c: 634: }
;ATM.c: 635: }
;ATM.c: 637: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001454:	
	line	639
;ATM.c: 639: for(i=0;i<4;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001457:	
	line	641
;ATM.c: 640: {
;ATM.c: 641: var=wdraw[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	movwf	(??_main+0+0)
	addwf	(??_main+0+0),w
	addlw	(_wdraw)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(_var)
	incf	fsr0,f
	movf	indf,w
	movwf	(_var+1)
	
l30001458:	
	line	642
;ATM.c: 642: data(var+48);
	movf	(_var),w
	addlw	030h
	fcall	_data
	
l30001459:	
	line	643
;ATM.c: 643: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3887:
	decfsz	(??_main+0+0),f
	goto	u3887
	decfsz	(??_main+0+0+1),f
	goto	u3887
	nop2

	
l30001460:	
	line	639
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l30001461:	
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(04h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3645
	movlw	low(04h)
	subwf	(_i),w
u3645:

	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l30001457
u3640:
	
l30001462:	
	line	647
;ATM.c: 644: }
;ATM.c: 647: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30001463:	
	line	649
;ATM.c: 649: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001466:	
	line	651
;ATM.c: 650: {
;ATM.c: 651: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3897:
	decfsz	(??_main+0+0),f
	goto	u3897
	decfsz	(??_main+0+0+1),f
	goto	u3897
	nop2

	line	649
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3655
	movlw	low(05h)
	subwf	(_i),w
u3655:

	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l30001466
u3650:
	
l30001467:	
	line	654
;ATM.c: 652: }
;ATM.c: 654: if((wdraw[0]==5)&&(wdraw[1]==0)&&(wdraw[2]==0)&&(wdraw[3]==0)||(wdraw[0]<5))
	movlw	05h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_wdraw),w
	iorwf	(_wdraw+1),w
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l30001471
u3660:
	
l30001468:	
	movf	(1+(_wdraw)+02h),w
	iorwf	(0+(_wdraw)+02h),w
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l30001471
u3670:
	
l30001469:	
	movf	(1+(_wdraw)+04h),w
	iorwf	(0+(_wdraw)+04h),w
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l30001471
u3680:
	
l30001470:	
	movlw	low((_wdraw)+06h)
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	incf	fsr0,f
	iorwf	indf,w
	skipnz
	goto	u3691
	goto	u3690
u3691:
	goto	l30001472
u3690:
	
l30001471:	
	movf	(_wdraw+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(05h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u3705
	movlw	low(05h)
	subwf	(_wdraw),w
u3705:

	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l30001473
u3700:
	
l30001472:	
	line	656
;ATM.c: 655: {
;ATM.c: 656: string("WITHDRAW SUCCESSFUL");
	movlw	low((STR_17))
	movwf	(?_string)
	movlw	high((STR_17))
	movwf	((?_string))+1
	fcall	_string
	goto	l30001476
	
l30001473:	
	line	661
;ATM.c: 659: else
;ATM.c: 660: {
;ATM.c: 661: string("INSUFFICIENCT");
	movlw	low((STR_18))
	movwf	(?_string)
	movlw	high((STR_18))
	movwf	((?_string))+1
	fcall	_string
	
l30001474:	
	line	662
;ATM.c: 662: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l30001475:	
	line	663
;ATM.c: 663: string("BALANCE");
	movlw	low((STR_19))
	movwf	(?_string)
	movlw	high((STR_19))
	movwf	((?_string))+1
	fcall	_string
	
l30001476:	
	line	666
;ATM.c: 664: }
;ATM.c: 666: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001479:	
	line	668
;ATM.c: 667: {
;ATM.c: 668: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3907:
	decfsz	(??_main+0+0),f
	goto	u3907
	decfsz	(??_main+0+0+1),f
	goto	u3907
	nop2

	line	666
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3715
	movlw	low(05h)
	subwf	(_i),w
u3715:

	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l30001479
u3710:
	
l30001480:	
	line	674
;ATM.c: 669: }
;ATM.c: 671: }
;ATM.c: 674: if(countspecial==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_countspecial),w
	iorwf	(_countspecial+1),w
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l30001485
u3720:
	
l30001481:	
	line	677
;ATM.c: 675: {
;ATM.c: 677: for(i=0;i<5;i++)
	movlw	low(0)
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001483:	
	line	679
;ATM.c: 678: {
;ATM.c: 679: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3917:
	decfsz	(??_main+0+0),f
	goto	u3917
	decfsz	(??_main+0+0+1),f
	goto	u3917
	nop2

	line	677
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3735
	movlw	low(05h)
	subwf	(_i),w
u3735:

	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l30001483
u3730:
	
l30001484:	
	line	682
;ATM.c: 680: }
;ATM.c: 682: command(0X01);
	movlw	(01h)
	fcall	_command
	line	684
;ATM.c: 684: command(0X80);
	movlw	(080h)
	fcall	_command
	line	685
;ATM.c: 685: data(l+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@l),w
	addlw	030h
	fcall	_data
	line	686
;ATM.c: 686: data(n+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@n),w
	addlw	030h
	fcall	_data
	line	687
;ATM.c: 687: data(p+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@p),w
	addlw	030h
	fcall	_data
	line	688
;ATM.c: 688: data(q+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@q),w
	addlw	030h
	fcall	_data
	
l30001485:	
	line	692
;ATM.c: 690: }
;ATM.c: 692: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001488:	
	line	694
;ATM.c: 693: {
;ATM.c: 694: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3927:
	decfsz	(??_main+0+0),f
	goto	u3927
	decfsz	(??_main+0+0+1),f
	goto	u3927
	nop2

	line	692
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3745
	movlw	low(05h)
	subwf	(_i),w
u3745:

	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l30001488
u3740:
	goto	l30001490
	
l30001489:	
	line	704
;ATM.c: 702: else
;ATM.c: 703: {
;ATM.c: 704: string("INVALID NUMBER");
	movlw	low((STR_20))
	movwf	(?_string)
	movlw	high((STR_20))
	movwf	((?_string))+1
	fcall	_string
	
l30001490:	
	line	709
;ATM.c: 705: }
;ATM.c: 706: }
;ATM.c: 709: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30001493:	
	line	711
;ATM.c: 710: {
;ATM.c: 711: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u3937:
	decfsz	(??_main+0+0),f
	goto	u3937
	decfsz	(??_main+0+0+1),f
	goto	u3937
	nop2

	line	709
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3755
	movlw	low(05h)
	subwf	(_i),w
u3755:

	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l30001493
u3750:
	
l30001494:	
	line	713
;ATM.c: 712: }
;ATM.c: 713: command(0X01);
	movlw	(01h)
	fcall	_command
	goto	l12
	
l230:	
	line	715
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l230
u3760:
	goto	l20
	
l12:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	721
	signat	_main,88
	global	_string
psect	text47,local,class=CODE,delta=2
global __ptext47
__ptext47:

; *************** function _string *****************
; Defined at:
;		line 71 in file "C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
; Parameters:    Size  Location     Type
;  ptr             2    3[COMMON] PTR unsigned char 
;		 -> STR_2(17), STR_1(15), STR_3(17), STR_4(17), 
;		 -> STR_5(17), STR_7(17), STR_6(17), STR_8(8), 
;		 -> STR_10(17), STR_11(16), STR_9(14), STR_18(14), 
;		 -> STR_17(20), STR_19(8), STR_20(15), STR_13(12), 
;		 -> STR_14(10), STR_12(9), STR_15(11), STR_16(17), 
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
;      Locals:         2       0       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_data
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text47
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	71
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
;ATM.c: 70: void string(char *ptr)
;ATM.c: 71: {
	
_string:	
	opt stack 6
; Regs used in _string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30001155:	
	goto	l30001158
	
l30001156:	
	line	74
;ATM.c: 73: {
;ATM.c: 74: data(*ptr);
	movf	(string@ptr),w
	movwf	fsr0
	movf	(string@ptr+1),w
	FNCALL _string,stringtab
	fcall	stringtab
	fcall	_data
	
l30001157:	
	line	75
;ATM.c: 75: *ptr++;
	movlw	low(01h)
	addwf	(string@ptr),f
	skipnc
	incf	(string@ptr+1),f
	movlw	high(01h)
	addwf	(string@ptr+1),f
	
l30001158:	
	line	72
	movf	(string@ptr),w
	movwf	fsr0
	movf	(string@ptr+1),w
	FNCALL _string,stringtab
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l30001156
u2380:
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
; =============== function _string ends ============

psect	text48,local,class=CODE,delta=2
global __ptext48
__ptext48:
	line	77
	signat	_string,4216
	global	_command

; *************** function _command *****************
; Defined at:
;		line 57 in file "C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
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
psect	text48
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	57
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;ATM.c: 56: void command(char data)
;ATM.c: 57: {
	
_command:	
	opt stack 6
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30001159:	
	line	58
;ATM.c: 58: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30001160:	
	line	59
;ATM.c: 59: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30001161:	
	line	60
;ATM.c: 60: pulse();
	fcall	_pulse
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text49,local,class=CODE,delta=2
global __ptext49
__ptext49:
	line	61
	signat	_command,4216
	global	___awdiv

; *************** function ___awdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    0[BANK0 ] int 
;  divisor         2    2[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  quotient        2    3[COMMON] int 
;  sign            1    2[COMMON] unsigned char 
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         5       4       0       0       0
;      Temp:     1
;      Total:    9
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text49
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30001213:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	
l30001214:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awdiv@divisor+1),7
	goto	u2591
	goto	u2590
u2591:
	goto	l30001216
u2590:
	
l30001215:	
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
	
l30001216:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u2601
	goto	u2600
u2601:
	goto	l384
u2600:
	
l30001217:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30001218:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l384:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2611
	goto	u2610
u2611:
	goto	l30001228
u2610:
	
l30001219:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30001222
	
l30001220:	
	line	22
	movlw	01h
u2625:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2625
	
l30001221:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30001222:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l30001220
u2630:
	
l30001223:	
	line	26
	movlw	01h
u2645:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2645
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2655
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2655:
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l30001226
u2650:
	
l30001224:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30001225:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30001226:	
	line	31
	movlw	01h
u2665:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2665
	
l30001227:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l30001223
u2670:
	
l30001228:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u2680
	goto	l30001230
u2680:
	
l30001229:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30001230:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l382:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text50,local,class=CODE,delta=2
global __ptext50
__ptext50:
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
psect	text50
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30001181:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	
l30001182:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l30001184
u2490:
	
l30001183:	
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
	
l30001184:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l30001186
u2500:
	
l30001185:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30001186:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2511
	goto	u2510
u2511:
	goto	l30001195
u2510:
	
l30001187:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30001190
	
l30001188:	
	line	18
	movlw	01h
u2525:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2525
	
l30001189:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30001190:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l30001188
u2530:
	
l30001191:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2545
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2545:
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l30001193
u2540:
	
l30001192:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30001193:	
	line	24
	movlw	01h
u2555:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2555
	
l30001194:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l30001191
u2560:
	
l30001195:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u2570
	goto	l30001197
u2570:
	
l30001196:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30001197:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l462:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text51,local,class=CODE,delta=2
global __ptext51
__ptext51:
	line	30
	signat	___awmod,8314
	global	_data

; *************** function _data *****************
; Defined at:
;		line 64 in file "C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
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
;		_string
;		_main
; This function uses a non-reentrant model
; 
psect	text51
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	64
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;ATM.c: 63: void data(char data)
;ATM.c: 64: {
	
_data:	
	opt stack 5
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	movwf	(data@data)
	
l30001199:	
	line	65
;ATM.c: 65: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	
l30001200:	
	line	66
;ATM.c: 66: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30001201:	
	line	67
;ATM.c: 67: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text52,local,class=CODE,delta=2
global __ptext52
__ptext52:
	line	68
	signat	_data,4216
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 49 in file "C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
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
psect	text52
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	49
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;ATM.c: 48: void pulse()
;ATM.c: 49: {
	
_pulse:	
	opt stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l30001202:	
;ATM.c: 50: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30001203:	
	line	51
;ATM.c: 51: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30001204:	
	line	52
;ATM.c: 52: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	53
;ATM.c: 53: delay(1000);
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

psect	text53,local,class=CODE,delta=2
global __ptext53
__ptext53:
	line	54
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 44 in file "C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
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
psect	text53
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\ATM\ATM.c"
	line	44
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;ATM.c: 16: int var=0;
;ATM.c: 17: int i,j;
;ATM.c: 18: int balance=5000;
;ATM.c: 19: int withdraw;
;ATM.c: 23: static int count=0;
;ATM.c: 24: static int countkey=0;
;ATM.c: 25: static int countu=-1;
;ATM.c: 26: static int countp=-1;
;ATM.c: 27: static int countspecial=0;
;ATM.c: 28: static int countw=-1;
;ATM.c: 30: static int keytopwd=0;
;ATM.c: 32: static int count22=0;
;ATM.c: 33: static int count33=0;
;ATM.c: 34: static int count44=0;
;ATM.c: 35: static int count55=0;
;ATM.c: 37: int username[10]={1,2,3,4};
	
_delay:	
	opt stack 3
; Regs used in _delay: [wreg]
	
l30001205:	
	
l30001206:	
	line	45
	movlw	low(-1)
	addwf	(delay@x),f
	skipnc
	incf	(delay@x+1),f
	movlw	high(-1)
	addwf	(delay@x+1),f
	movlw	high(-1)
	xorwf	((delay@x+1))&07fh,w
	skipz
	goto	u2585
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u2585:

	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l30001206
u2580:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text54,local,class=CODE,delta=2
global __ptext54
__ptext54:
	line	46
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
