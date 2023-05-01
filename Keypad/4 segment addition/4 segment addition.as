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
;COMMON:	_main->_display
;BANK0:	_display->___awdiv
;COMMON:	_display->___awmod
;BANK0:	_main->_display
;BANK0:	_display->___awdiv
;COMMON:	_display->___awmod
	FNCALL	_main,_display
	FNCALL	_main,_addition
	FNCALL	_addition,___awdiv
	FNCALL	_addition,___awmod
	FNCALL	_addition,_time_delay
	FNCALL	_display,___awdiv
	FNCALL	_display,___awmod
	FNCALL	_display,_time_delay
	FNROOT	_main
	global	_number
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
	line	17

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
	global	_count
	global	_i
	global	_j
	global	_var
	global	_sum
	global	_a
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_a:
       ds      2

	global	_b
_b:
       ds      2

	global	_k
_k:
       ds      2

	global	_p
_p:
       ds      2

	global	_q
_q:
       ds      2

	global	_z
_z:
       ds      2

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
	file	"4 segment addition.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_sum:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_count:
       ds      2

_i:
       ds      2

_j:
       ds      2

_var:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
	line	17
_number:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
	bcf	status, 7	;select IRP bank0
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
	global	??_time_delay
??_time_delay: ;@ 0x0
	global	??___awdiv
??___awdiv: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	?_time_delay
?_time_delay: ;@ 0x0
	global	time_delay@x
time_delay@x:	; 2 bytes @ 0x0
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x2
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x2
	ds	1
	global	??_main
??_main: ;@ 0x3
	global	?___awmod
?___awmod: ;@ 0x3
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x3
	ds	2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x5
	ds	2
	global	??_addition
??_addition: ;@ 0x7
	global	??_display
??_display: ;@ 0x7
	ds	1
	global	?_addition
?_addition: ;@ 0x8
	ds	1
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
	global	?_display
?_display: ;@ 0x4
	global	display@var
display@var:	; 2 bytes @ 0x4
	ds	2
;Data sizes: Strings 0, constant 0, data 10, bss 10, persistent 12 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9      11
; BANK0           80      6      36
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___awdiv	int  size(1); Largest target is 0
;?___awmod	int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 1272   0.00
;            _display
;           _addition
;  _addition                                          1    0  588   0.00
;                                    7 COMMO    1
;            ___awdiv
;            ___awmod
;         _time_delay
;  _display                                           2    2  684   0.00
;                                    7 COMMO    2
;                                    4 BANK0    2
;            ___awdiv
;            ___awmod
;         _time_delay
;    _time_delay                                      0    2   16   0.00
;                                    0 COMMO    2
;    ___awdiv                                         5    4  354   0.00
;                                    0 COMMO    5
;                                    0 BANK0    4
;    ___awmod                                         3    4  218   0.00
;                                    0 COMMO    7
; Estimated maximum call depth 2
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
;ABS                  0      0      2F       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      6      24       5       45.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      2F      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 229 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
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
;		_display
;		_addition
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
	line	229
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;addition.c: 228: void main()
;addition.c: 229: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	231
	
l30001057:	
;addition.c: 231: TRISB=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30001058:	
	line	232
;addition.c: 232: TRISC=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	
l30001059:	
	line	233
;addition.c: 233: TRISD=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(136)^080h	;volatile
	
l30001060:	
	line	234
;addition.c: 234: TRISE=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(137)^080h	;volatile
	
l30001061:	
	line	236
;addition.c: 236: PORTB=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30001062:	
	line	237
;addition.c: 237: PORTC=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(7)	;volatile
	
l30001063:	
	line	238
;addition.c: 238: PORTD=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(8)	;volatile
	
l30001064:	
	line	239
;addition.c: 239: PORTE=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(9)	;volatile
	
l30001065:	
	line	241
;addition.c: 241: ANSEL=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h
	
l30001066:	
	line	242
;addition.c: 242: ANSELH=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(393)^0180h
	
l30001067:	
	line	247
;addition.c: 245: {
;addition.c: 247: display(var);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_var+1),w
	clrf	(?_display+1)
	addwf	(?_display+1)
	movf	(_var),w
	clrf	(?_display)
	addwf	(?_display)

	fcall	_display
	
l30001068:	
	line	250
;addition.c: 250: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
l30001069:	
	bcf	(52/8),(52)&7
	
l30001070:	
	bcf	(53/8),(53)&7
	
l30001071:	
	bcf	(54/8),(54)&7
	
l30001072:	
	line	251
;addition.c: 251: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l33
u1240:
	
l30001073:	
	line	253
;addition.c: 252: {
;addition.c: 253: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	
l30001074:	
	line	254
;addition.c: 254: sum=sum+var;
	movf	(_sum),w
	addlw	low(01h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_sum)
	
l30001075:	
	line	255
;addition.c: 255: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l34:	
	line	256
	btfsc	(48/8),(48)&7
	goto	u1251
	goto	u1250
u1251:
	goto	l34
u1250:
	
l33:	
	line	258
;addition.c: 257: }
;addition.c: 258: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u1261
	goto	u1260
u1261:
	goto	l37
u1260:
	
l30001076:	
	line	260
;addition.c: 259: {
;addition.c: 260: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	
l30001077:	
	line	261
;addition.c: 261: sum=sum+var;
	movf	(_sum),w
	addlw	low(02h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(_sum)
	
l30001078:	
	line	262
;addition.c: 262: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l38:	
	line	263
	btfsc	(49/8),(49)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l38
u1270:
	
l37:	
	line	265
;addition.c: 264: }
;addition.c: 265: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l41
u1280:
	
l30001079:	
	line	267
;addition.c: 266: {
;addition.c: 267: var=3;
	movlw	low(03h)
	movwf	(_var)
	movlw	high(03h)
	movwf	((_var))+1
	
l30001080:	
	line	268
;addition.c: 268: sum=sum+var;
	movf	(_sum),w
	addlw	low(03h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+(_sum)
	
l30001081:	
	line	269
;addition.c: 269: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l42:	
	line	270
	btfsc	(50/8),(50)&7
	goto	u1291
	goto	u1290
u1291:
	goto	l42
u1290:
	
l41:	
	line	275
;addition.c: 271: }
;addition.c: 275: RB3=0,RB4=1,RB5=0,RB6=0;
	bcf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	276
;addition.c: 276: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u1301
	goto	u1300
u1301:
	goto	l45
u1300:
	
l30001082:	
	line	278
;addition.c: 277: {
;addition.c: 278: var=4;
	movlw	low(04h)
	movwf	(_var)
	movlw	high(04h)
	movwf	((_var))+1
	
l30001083:	
	line	279
;addition.c: 279: sum=sum+var;
	movf	(_sum),w
	addlw	low(04h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(04h)
	movwf	1+(_sum)
	
l30001084:	
	line	280
;addition.c: 280: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l46:	
	line	281
	btfsc	(48/8),(48)&7
	goto	u1311
	goto	u1310
u1311:
	goto	l46
u1310:
	
l45:	
	line	283
;addition.c: 282: }
;addition.c: 283: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l49
u1320:
	
l30001085:	
	line	285
;addition.c: 284: {
;addition.c: 285: var=5;
	movlw	low(05h)
	movwf	(_var)
	movlw	high(05h)
	movwf	((_var))+1
	
l30001086:	
	line	286
;addition.c: 286: sum=sum+var;
	movf	(_sum),w
	addlw	low(05h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(05h)
	movwf	1+(_sum)
	
l30001087:	
	line	287
;addition.c: 287: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l50:	
	line	288
	btfsc	(49/8),(49)&7
	goto	u1331
	goto	u1330
u1331:
	goto	l50
u1330:
	
l49:	
	line	290
;addition.c: 289: }
;addition.c: 290: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u1341
	goto	u1340
u1341:
	goto	l53
u1340:
	
l30001088:	
	line	292
;addition.c: 291: {
;addition.c: 292: var=6;
	movlw	low(06h)
	movwf	(_var)
	movlw	high(06h)
	movwf	((_var))+1
	
l30001089:	
	line	293
;addition.c: 293: sum=sum+var;
	movf	(_sum),w
	addlw	low(06h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(06h)
	movwf	1+(_sum)
	
l30001090:	
	line	294
;addition.c: 294: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l54:	
	line	295
	btfsc	(50/8),(50)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l54
u1350:
	
l53:	
	line	300
;addition.c: 296: }
;addition.c: 300: RB3=0,RB4=0,RB5=1,RB6=0;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	301
;addition.c: 301: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l57
u1360:
	
l30001091:	
	line	303
;addition.c: 302: {
;addition.c: 303: var=7;
	movlw	low(07h)
	movwf	(_var)
	movlw	high(07h)
	movwf	((_var))+1
	
l30001092:	
	line	304
;addition.c: 304: sum=sum+var;
	movf	(_sum),w
	addlw	low(07h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(07h)
	movwf	1+(_sum)
	
l30001093:	
	line	305
;addition.c: 305: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l58:	
	line	306
	btfsc	(48/8),(48)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l58
u1370:
	
l57:	
	line	308
;addition.c: 307: }
;addition.c: 308: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u1381
	goto	u1380
u1381:
	goto	l61
u1380:
	
l30001094:	
	line	310
;addition.c: 309: {
;addition.c: 310: var=8;
	movlw	low(08h)
	movwf	(_var)
	movlw	high(08h)
	movwf	((_var))+1
	
l30001095:	
	line	311
;addition.c: 311: sum=sum+var;
	movf	(_sum),w
	addlw	low(08h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(08h)
	movwf	1+(_sum)
	
l30001096:	
	line	312
;addition.c: 312: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l62:	
	line	313
	btfsc	(49/8),(49)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l62
u1390:
	
l61:	
	line	315
;addition.c: 314: }
;addition.c: 315: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u1401
	goto	u1400
u1401:
	goto	l65
u1400:
	
l30001097:	
	line	317
;addition.c: 316: {
;addition.c: 317: var=9;
	movlw	low(09h)
	movwf	(_var)
	movlw	high(09h)
	movwf	((_var))+1
	
l30001098:	
	line	318
;addition.c: 318: sum=sum+var;
	movf	(_sum),w
	addlw	low(09h)
	movwf	(_sum)
	movf	(_sum+1),w
	skipnc
	addlw	1
	addlw	high(09h)
	movwf	1+(_sum)
	
l30001099:	
	line	319
;addition.c: 319: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l66:	
	line	320
	btfsc	(50/8),(50)&7
	goto	u1411
	goto	u1410
u1411:
	goto	l66
u1410:
	
l65:	
	line	325
;addition.c: 321: }
;addition.c: 325: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	327
;addition.c: 327: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l69
u1420:
	
l30001100:	
	line	329
;addition.c: 328: {
;addition.c: 329: var=0;
	movlw	low(0)
	movwf	(_var)
	movlw	high(0)
	movwf	((_var))+1
	
l30001101:	
	line	330
;addition.c: 330: sum=sum+var;
	
l30001102:	
	line	331
;addition.c: 331: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l70:	
	line	332
	btfsc	(49/8),(49)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l70
u1430:
	
l69:	
	line	335
;addition.c: 333: }
;addition.c: 335: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u1441
	goto	u1440
u1441:
	goto	l30001067
u1440:
	
l30001103:	
	line	337
;addition.c: 336: {
;addition.c: 337: addition();
	fcall	_addition
	
l30001104:	
	line	338
;addition.c: 338: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l74:	
	line	339
	btfsc	(48/8),(48)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l74
u1450:
	goto	l30001067
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	344
	signat	_main,88
	global	_addition
psect	text40,local,class=CODE,delta=2
global __ptext40
__ptext40:

; *************** function _addition *****************
; Defined at:
;		line 27 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
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
;      Locals:         1       0       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		___awdiv
;		___awmod
;		_time_delay
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text40
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
	line	27
	global	__size_of_addition
	__size_of_addition	equ	__end_of_addition-_addition
;addition.c: 26: void addition()
;addition.c: 27: {
	
_addition:	
	opt stack 7
; Regs used in _addition: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	29
	
l30001033:	
;addition.c: 29: a=sum/1000;
	movf	(_sum+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_sum),w
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
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	31
;addition.c: 31: z=sum%1000;
	movf	(_sum+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_sum),w
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

	line	32
;addition.c: 32: b=z/100;
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
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awdiv)),w
	clrf	(_b)
	addwf	(_b)

	line	34
;addition.c: 34: k=sum%100;
	movf	(_sum+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_sum),w
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
	clrf	(_k+1)
	addwf	(_k+1)
	movf	(0+(?___awmod)),w
	clrf	(_k)
	addwf	(_k)

	line	35
;addition.c: 35: p=k/10;
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
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(_p+1)
	addwf	(_p+1)
	movf	(0+(?___awdiv)),w
	clrf	(_p)
	addwf	(_p)

	line	37
;addition.c: 37: q=sum%10;
	movf	(_sum+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(_sum),w
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

	
l30001034:	
	line	41
;addition.c: 40: {
;addition.c: 41: for(j=0;j<2;j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(0)
	movwf	((_j))+1
	
l30001035:	
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_addition+0+0)
	movlw	(high(02h))^80h
	subwf	(??_addition+0+0),w
	skipz
	goto	u1235
	movlw	low(02h)
	subwf	(_j),w
u1235:

	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l9
u1230:
	goto	l30001034
	
l9:	
	line	43
;addition.c: 42: {
;addition.c: 43: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	44
;addition.c: 44: RD2=1;
	bsf	(66/8),(66)&7
	line	45
;addition.c: 45: RD3=1;
	bsf	(67/8),(67)&7
	line	46
;addition.c: 46: RD0=0;
	bcf	(64/8),(64)&7
	
l30001037:	
	line	47
;addition.c: 47: PORTC=number[a];
	movf	(_a),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001038:	
	line	48
;addition.c: 48: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001039:	
	line	50
;addition.c: 50: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001040:	
	line	51
;addition.c: 51: RD2=1;
	bsf	(66/8),(66)&7
	
l30001041:	
	line	52
;addition.c: 52: RD3=1;
	bsf	(67/8),(67)&7
	
l30001042:	
	line	53
;addition.c: 53: RD1=0;
	bcf	(65/8),(65)&7
	
l30001043:	
	line	54
;addition.c: 54: PORTC = number[b];
	movf	(_b),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	55
;addition.c: 55: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001044:	
	line	57
;addition.c: 57: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001045:	
	line	58
;addition.c: 58: RD1=1;
	bsf	(65/8),(65)&7
	
l30001046:	
	line	59
;addition.c: 59: RD3=1;
	bsf	(67/8),(67)&7
	
l30001047:	
	line	60
;addition.c: 60: RD2=0;
	bcf	(66/8),(66)&7
	
l30001048:	
	line	61
;addition.c: 61: PORTC = number[p];
	movf	(_p),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001049:	
	line	62
;addition.c: 62: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001050:	
	line	64
;addition.c: 64: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001051:	
	line	65
;addition.c: 65: RD1=1;
	bsf	(65/8),(65)&7
	
l30001052:	
	line	66
;addition.c: 66: RD2=1;
	bsf	(66/8),(66)&7
	
l30001053:	
	line	67
;addition.c: 67: RD3=0;
	bcf	(67/8),(67)&7
	line	68
;addition.c: 68: PORTC = number[q];
	movf	(_q),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001054:	
	line	69
;addition.c: 69: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001055:	
	line	41
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	goto	l30001035
	return
	opt stack 0
GLOBAL	__end_of_addition
	__end_of_addition:
; =============== function _addition ends ============

psect	text41,local,class=CODE,delta=2
global __ptext41
__ptext41:
	line	73
	signat	_addition,88
	global	_display

; *************** function _display *****************
; Defined at:
;		line 76 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
; Parameters:    Size  Location     Type
;  var             2    4[BANK0 ] int 
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
;      Locals:         2       2       0       0       0
;      Temp:     2
;      Total:    4
; This function calls:
;		___awdiv
;		___awmod
;		_time_delay
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text41
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
	line	76
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
;addition.c: 75: void display(int var)
;addition.c: 76: {
	
_display:	
	opt stack 7
; Regs used in _display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	77
	
l30001105:	
;addition.c: 77: a=var/1000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@var+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(display@var),w
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
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	79
;addition.c: 79: z=var%1000;
	movf	(display@var+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(display@var),w
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

	line	80
;addition.c: 80: b=z/100;
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
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awdiv)),w
	clrf	(_b)
	addwf	(_b)

	line	82
;addition.c: 82: k=var%100;
	movf	(display@var+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(display@var),w
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
	clrf	(_k+1)
	addwf	(_k+1)
	movf	(0+(?___awmod)),w
	clrf	(_k)
	addwf	(_k)

	line	83
;addition.c: 83: p=k/10;
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
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(_p+1)
	addwf	(_p+1)
	movf	(0+(?___awdiv)),w
	clrf	(_p)
	addwf	(_p)

	line	85
;addition.c: 85: q=var%10;
	movf	(display@var+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(display@var),w
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

	
l30001106:	
	line	88
;addition.c: 88: if(count<1||count%4==1)
	movf	(_count+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(01h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1465
	movlw	low(01h)
	subwf	(_count),w
u1465:

	skipc
	goto	u1461
	goto	u1460
u1461:
	goto	l30001108
u1460:
	
l30001107:	
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(_count),w
	movwf	(??_display+0+0)
	movlw	high(03h)
	andwf	(_count+1),w
	movwf	1+(??_display+0+0)
	movlw	01h
	xorwf	0+(??_display+0+0),w
	iorwf	1+(??_display+0+0),w
	skipz
	goto	u1471
	goto	u1470
u1471:
	goto	l30001130
u1470:
	
l30001108:	
	line	90
;addition.c: 89: {
;addition.c: 90: for(j=0;j<2;j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	movlw	high(0)
	movwf	((_j))+1
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1485
	movlw	low(02h)
	subwf	(_j),w
u1485:

	skipc
	goto	u1481
	goto	u1480
u1481:
	goto	l14
u1480:
	goto	l30001130
	
l14:	
	line	92
;addition.c: 91: {
;addition.c: 92: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	93
;addition.c: 93: RD2=1;
	bsf	(66/8),(66)&7
	line	94
;addition.c: 94: RD3=1;
	bsf	(67/8),(67)&7
	line	95
;addition.c: 95: RD0=0;
	bcf	(64/8),(64)&7
	
l30001110:	
	line	96
;addition.c: 96: PORTC=number[a];
	movf	(_a),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001111:	
	line	97
;addition.c: 97: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001112:	
	line	99
;addition.c: 99: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001113:	
	line	100
;addition.c: 100: RD2=1;
	bsf	(66/8),(66)&7
	
l30001114:	
	line	101
;addition.c: 101: RD3=1;
	bsf	(67/8),(67)&7
	
l30001115:	
	line	102
;addition.c: 102: RD1=0;
	bcf	(65/8),(65)&7
	
l30001116:	
	line	103
;addition.c: 103: PORTC = number[b];
	movf	(_b),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	104
;addition.c: 104: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001117:	
	line	106
;addition.c: 106: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001118:	
	line	107
;addition.c: 107: RD1=1;
	bsf	(65/8),(65)&7
	
l30001119:	
	line	108
;addition.c: 108: RD3=1;
	bsf	(67/8),(67)&7
	
l30001120:	
	line	109
;addition.c: 109: RD2=0;
	bcf	(66/8),(66)&7
	
l30001121:	
	line	110
;addition.c: 110: PORTC = number[p];
	movf	(_p),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001122:	
	line	111
;addition.c: 111: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001123:	
	line	113
;addition.c: 113: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001124:	
	line	114
;addition.c: 114: RD1=1;
	bsf	(65/8),(65)&7
	
l30001125:	
	line	115
;addition.c: 115: RD2=1;
	bsf	(66/8),(66)&7
	
l30001126:	
	line	116
;addition.c: 116: RD3=0;
	bcf	(67/8),(67)&7
	line	117
;addition.c: 117: PORTC = number[q];
	movf	(_q),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001127:	
	line	118
;addition.c: 118: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001128:	
	line	90
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l30001129:	
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1495
	movlw	low(02h)
	subwf	(_j),w
u1495:

	skipc
	goto	u1491
	goto	u1490
u1491:
	goto	l14
u1490:
	
l30001130:	
	line	122
;addition.c: 119: }
;addition.c: 120: }
;addition.c: 122: if(count==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u1501
	goto	u1500
u1501:
	goto	l30001153
u1500:
	
l30001131:	
	line	124
;addition.c: 123: {
;addition.c: 124: for(j=0;j<2;j++)
	movlw	low(0)
	movwf	(_j)
	movlw	high(0)
	movwf	((_j))+1
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1515
	movlw	low(02h)
	subwf	(_j),w
u1515:

	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l18
u1510:
	goto	l30001153
	
l18:	
	line	126
;addition.c: 125: {
;addition.c: 126: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	127
;addition.c: 127: RD2=1;
	bsf	(66/8),(66)&7
	line	128
;addition.c: 128: RD3=1;
	bsf	(67/8),(67)&7
	line	129
;addition.c: 129: RD0=0;
	bcf	(64/8),(64)&7
	
l30001133:	
	line	130
;addition.c: 130: PORTC=number[a];
	movf	(_a),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001134:	
	line	131
;addition.c: 131: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001135:	
	line	133
;addition.c: 133: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001136:	
	line	134
;addition.c: 134: RD2=1;
	bsf	(66/8),(66)&7
	
l30001137:	
	line	135
;addition.c: 135: RD3=1;
	bsf	(67/8),(67)&7
	
l30001138:	
	line	136
;addition.c: 136: RD1=0;
	bcf	(65/8),(65)&7
	
l30001139:	
	line	137
;addition.c: 137: PORTC = number[b];
	movf	(_b),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	138
;addition.c: 138: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001140:	
	line	140
;addition.c: 140: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001141:	
	line	141
;addition.c: 141: RD1=1;
	bsf	(65/8),(65)&7
	
l30001142:	
	line	142
;addition.c: 142: RD3=1;
	bsf	(67/8),(67)&7
	
l30001143:	
	line	143
;addition.c: 143: RD2=0;
	bcf	(66/8),(66)&7
	
l30001144:	
	line	144
;addition.c: 144: PORTC = number[q];
	movf	(_q),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001145:	
	line	145
;addition.c: 145: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001146:	
	line	147
;addition.c: 147: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001147:	
	line	148
;addition.c: 148: RD1=1;
	bsf	(65/8),(65)&7
	
l30001148:	
	line	149
;addition.c: 149: RD2=1;
	bsf	(66/8),(66)&7
	
l30001149:	
	line	150
;addition.c: 150: RD3=0;
	bcf	(67/8),(67)&7
	line	151
;addition.c: 151: PORTC = number[p];
	movf	(_p),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001150:	
	line	152
;addition.c: 152: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001151:	
	line	124
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l30001152:	
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1525
	movlw	low(02h)
	subwf	(_j),w
u1525:

	skipc
	goto	u1521
	goto	u1520
u1521:
	goto	l18
u1520:
	
l30001153:	
	line	156
;addition.c: 153: }
;addition.c: 154: }
;addition.c: 156: if(count==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u1531
	goto	u1530
u1531:
	goto	l30001176
u1530:
	
l30001154:	
	line	158
;addition.c: 157: {
;addition.c: 158: for(j=0;j<2;j++)
	movlw	low(0)
	movwf	(_j)
	movlw	high(0)
	movwf	((_j))+1
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1545
	movlw	low(02h)
	subwf	(_j),w
u1545:

	skipc
	goto	u1541
	goto	u1540
u1541:
	goto	l22
u1540:
	goto	l30001176
	
l22:	
	line	160
;addition.c: 159: {
;addition.c: 160: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	161
;addition.c: 161: RD2=1;
	bsf	(66/8),(66)&7
	line	162
;addition.c: 162: RD3=1;
	bsf	(67/8),(67)&7
	line	163
;addition.c: 163: RD0=0;
	bcf	(64/8),(64)&7
	
l30001156:	
	line	164
;addition.c: 164: PORTC=number[a];
	movf	(_a),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001157:	
	line	165
;addition.c: 165: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001158:	
	line	167
;addition.c: 167: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001159:	
	line	168
;addition.c: 168: RD2=1;
	bsf	(66/8),(66)&7
	
l30001160:	
	line	169
;addition.c: 169: RD3=1;
	bsf	(67/8),(67)&7
	
l30001161:	
	line	170
;addition.c: 170: RD1=0;
	bcf	(65/8),(65)&7
	
l30001162:	
	line	171
;addition.c: 171: PORTC = number[q];
	movf	(_q),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	172
;addition.c: 172: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001163:	
	line	174
;addition.c: 174: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001164:	
	line	175
;addition.c: 175: RD1=1;
	bsf	(65/8),(65)&7
	
l30001165:	
	line	176
;addition.c: 176: RD3=1;
	bsf	(67/8),(67)&7
	
l30001166:	
	line	177
;addition.c: 177: RD2=0;
	bcf	(66/8),(66)&7
	
l30001167:	
	line	178
;addition.c: 178: PORTC = number[p];
	movf	(_p),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001168:	
	line	179
;addition.c: 179: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001169:	
	line	181
;addition.c: 181: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001170:	
	line	182
;addition.c: 182: RD1=1;
	bsf	(65/8),(65)&7
	
l30001171:	
	line	183
;addition.c: 183: RD2=1;
	bsf	(66/8),(66)&7
	
l30001172:	
	line	184
;addition.c: 184: RD3=0;
	bcf	(67/8),(67)&7
	line	185
;addition.c: 185: PORTC = number[b];
	movf	(_b),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001173:	
	line	186
;addition.c: 186: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001174:	
	line	158
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l30001175:	
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1555
	movlw	low(02h)
	subwf	(_j),w
u1555:

	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l22
u1550:
	
l30001176:	
	line	190
;addition.c: 187: }
;addition.c: 188: }
;addition.c: 190: if(count==4)
	movlw	04h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l12
u1560:
	
l30001177:	
	line	192
;addition.c: 191: {
;addition.c: 192: for(j=0;j<2;j++)
	movlw	low(0)
	movwf	(_j)
	movlw	high(0)
	movwf	((_j))+1
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1575
	movlw	low(02h)
	subwf	(_j),w
u1575:

	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l26
u1570:
	goto	l12
	
l26:	
	line	194
;addition.c: 193: {
;addition.c: 194: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	195
;addition.c: 195: RD2=1;
	bsf	(66/8),(66)&7
	line	196
;addition.c: 196: RD3=1;
	bsf	(67/8),(67)&7
	line	197
;addition.c: 197: RD0=0;
	bcf	(64/8),(64)&7
	
l30001179:	
	line	198
;addition.c: 198: PORTC=number[q];
	movf	(_q),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001180:	
	line	199
;addition.c: 199: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001181:	
	line	201
;addition.c: 201: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001182:	
	line	202
;addition.c: 202: RD2=1;
	bsf	(66/8),(66)&7
	
l30001183:	
	line	203
;addition.c: 203: RD3=1;
	bsf	(67/8),(67)&7
	
l30001184:	
	line	204
;addition.c: 204: RD1=0;
	bcf	(65/8),(65)&7
	
l30001185:	
	line	205
;addition.c: 205: PORTC = number[p];
	movf	(_p),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	206
;addition.c: 206: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001186:	
	line	208
;addition.c: 208: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001187:	
	line	209
;addition.c: 209: RD1=1;
	bsf	(65/8),(65)&7
	
l30001188:	
	line	210
;addition.c: 210: RD3=1;
	bsf	(67/8),(67)&7
	
l30001189:	
	line	211
;addition.c: 211: RD2=0;
	bcf	(66/8),(66)&7
	
l30001190:	
	line	212
;addition.c: 212: PORTC = number[b];
	movf	(_b),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001191:	
	line	213
;addition.c: 213: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001192:	
	line	215
;addition.c: 215: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	
l30001193:	
	line	216
;addition.c: 216: RD1=1;
	bsf	(65/8),(65)&7
	
l30001194:	
	line	217
;addition.c: 217: RD2=1;
	bsf	(66/8),(66)&7
	
l30001195:	
	line	218
;addition.c: 218: RD3=0;
	bcf	(67/8),(67)&7
	line	219
;addition.c: 219: PORTC = number[a];
	movf	(_a),w
	addlw	(_number)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	
l30001196:	
	line	220
;addition.c: 220: time_delay(1000);
	movlw	low(03E8h)
	movwf	(?_time_delay)
	movlw	high(03E8h)
	movwf	((?_time_delay))+1
	fcall	_time_delay
	
l30001197:	
	line	192
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l30001198:	
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_display+0+0)
	movlw	(high(02h))^80h
	subwf	(??_display+0+0),w
	skipz
	goto	u1585
	movlw	low(02h)
	subwf	(_j),w
u1585:

	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l26
u1580:
	
l12:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
; =============== function _display ends ============

psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:
	line	225
	signat	_display,4216
	global	_time_delay

; *************** function _time_delay *****************
; Defined at:
;		line 22 in file "C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
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
;		_addition
;		_display
; This function uses a non-reentrant model
; 
psect	text42
	file	"C:\Users\gowth\Documents\PIC Programs\Keypad\4 segment addition\addition.c"
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
	
l30000963:	
	
l30000964:	
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
	goto	u935
	movlw	low(-1)
	xorwf	((time_delay@x))&07fh,w
u935:

	skipz
	goto	u931
	goto	u930
u931:
	goto	l30000964
u930:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_time_delay
	__end_of_time_delay:
; =============== function _time_delay ends ============

psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:
	line	24
	signat	_time_delay,4216
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
;		_addition
;		_display
; This function uses a non-reentrant model
; 
psect	text43
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30001014:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	
l30001015:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awdiv@divisor+1),7
	goto	u1131
	goto	u1130
u1131:
	goto	l30001017
u1130:
	
l30001016:	
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
	
l30001017:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u1141
	goto	u1140
u1141:
	goto	l228
u1140:
	
l30001018:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30001019:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l228:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1151
	goto	u1150
u1151:
	goto	l30001029
u1150:
	
l30001020:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30001023
	
l30001021:	
	line	22
	movlw	01h
u1165:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1165
	
l30001022:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30001023:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1171
	goto	u1170
u1171:
	goto	l30001021
u1170:
	
l30001024:	
	line	26
	movlw	01h
u1185:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1185
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1195
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1195:
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l30001027
u1190:
	
l30001025:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30001026:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30001027:	
	line	31
	movlw	01h
u1205:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1205
	
l30001028:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l30001024
u1210:
	
l30001029:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u1220
	goto	l30001031
u1220:
	
l30001030:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30001031:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l226:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
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
;		_addition
;		_display
; This function uses a non-reentrant model
; 
psect	text44
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l30000984:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	
l30000985:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u1041
	goto	u1040
u1041:
	goto	l30000987
u1040:
	
l30000986:	
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
	
l30000987:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u1051
	goto	u1050
u1051:
	goto	l30000989
u1050:
	
l30000988:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30000989:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1061
	goto	u1060
u1061:
	goto	l30000998
u1060:
	
l30000990:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30000993
	
l30000991:	
	line	18
	movlw	01h
u1075:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1075
	
l30000992:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30000993:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l30000991
u1080:
	
l30000994:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1095
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1095:
	skipc
	goto	u1091
	goto	u1090
u1091:
	goto	l30000996
u1090:
	
l30000995:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30000996:	
	line	24
	movlw	01h
u1105:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1105
	
l30000997:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l30000994
u1110:
	
l30000998:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u1120
	goto	l30001000
u1120:
	
l30000999:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30001000:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l306:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
; =============== function ___awmod ends ============

psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:
	line	30
	signat	___awmod,8314
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
