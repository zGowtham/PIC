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
;COMMON:	_main->_string
;COMMON:	_string->_data
	FNCALL	_main,_command
	FNCALL	_main,_string
	FNCALL	_main,_data
	FNCALL	_string,_data
	FNCALL	_command,_pulse
	FNCALL	_data,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_count1
	global	_count2
	global	_count
	global	_var
	global	_ADCON0
psect	text40,local,class=CODE,delta=2
global __ptext40
__ptext40:
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
	
STR_3:	
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
	file	"Phone number.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

_var:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_count1:
       ds      2

_count2:
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
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_pulse
??_pulse: ;@ 0x0
	global	??__delay
??__delay: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	??_data
??_data: ;@ 0x0
	global	?__delay
?__delay: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	?_delay
?_delay: ;@ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	global	__delay$0
__delay$0:	; 4 bytes @ 0x0
	ds	2
	global	?_pulse
?_pulse: ;@ 0x2
	global	data@data
data@data:	; 1 bytes @ 0x2
	global	command@data
command@data:	; 1 bytes @ 0x2
	ds	1
	global	??_string
??_string: ;@ 0x3
	global	?_data
?_data: ;@ 0x3
	global	?_command
?_command: ;@ 0x3
	ds	1
	global	string@ptr
string@ptr:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main: ;@ 0x5
	global	?_string
?_string: ;@ 0x5
	ds	2
	global	?_main
?_main: ;@ 0x7
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@i
main@i:	; 2 bytes @ 0x0
	ds	2
;Data sizes: Strings 50, constant 0, data 0, bss 8, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      7      11
; BANK0           80      2       6
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;string@ptr	PTR unsigned char  size(1); Largest target is 15
;		 -> STR_1(CODE[13]), STR_2(CODE[11]), STR_3(CODE[11]), STR_4(CODE[15]), 


;Main: autosize = 0, tempsize = 2, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                4    0  411   0.00
;                                    5 COMMO    2
;                                    0 BANK0    2
;            _command
;             _string
;               _data
;             __delay
;  __delay                                            0    4    0   0.00
;                                    0 COMMO    4
;  _string                                            2    0   99   0.00
;                                    3 COMMO    2
;               _data
;  _command                                           1    0   48   0.00
;                                    2 COMMO    1
;              _pulse
;    _data                                            1    0   48   0.00
;                                    2 COMMO    1
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
;COMMON               E      7       B       1       78.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      11       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      2       6       5        7.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      11      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 60 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               2    0[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       2       0       0       0
;      Temp:     2
;      Total:    4
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
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;Phone number.c: 59: void main()
;Phone number.c: 60: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l30000666:	
;Phone number.c: 61: int i;
;Phone number.c: 63: TRISD=0X00; PORTD=0X00; ANSEL=0;
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
	line	64
;Phone number.c: 64: TRISE=0X00; PORTE=0X00; ANSELH=0;
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
	
l30000667:	
	line	65
;Phone number.c: 65: TRISB=0X07; PORTB=0X00;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000668:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l30000669:	
	line	66
;Phone number.c: 66: TRISA=0X00; PORTA=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30000670:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l30000671:	
	line	68
;Phone number.c: 68: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30000672:	
	line	69
;Phone number.c: 69: command(0X38);
	movlw	(038h)
	fcall	_command
	
l30000673:	
	line	71
;Phone number.c: 71: if(count==0)
	movf	((_count+1)),w
	iorwf	((_count)),w
	skipz
	goto	u671
	goto	u670
u671:
	goto	l13
u670:
	
l30000674:	
	line	73
;Phone number.c: 72: {
;Phone number.c: 73: command(0X80);
	movlw	(080h)
	fcall	_command
	line	74
;Phone number.c: 74: string("ENTER NUMBER");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_string
	
l13:	
	line	77
;Phone number.c: 75: }
;Phone number.c: 77: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	
l30000675:	
	line	81
;Phone number.c: 80: {
;Phone number.c: 81: RB3=1,RB4=0,RB5=0,RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	
l30000676:	
	bcf	(52/8),(52)&7
	
l30000677:	
	bcf	(53/8),(53)&7
	
l30000678:	
	bcf	(54/8),(54)&7
	
l30000679:	
	line	82
;Phone number.c: 82: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u681
	goto	u680
u681:
	goto	l17
u680:
	
l30000680:	
	line	84
;Phone number.c: 83: {
;Phone number.c: 84: var=1;
	movlw	low(01h)
	movwf	(_var)
	movlw	high(01h)
	movwf	((_var))+1
	line	85
;Phone number.c: 85: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000681:	
	line	86
;Phone number.c: 86: data(var+48);
	movlw	(031h)
	fcall	_data
	
l18:	
	line	87
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u691
	goto	u690
u691:
	goto	l18
u690:
	
l17:	
	line	90
;Phone number.c: 88: }
;Phone number.c: 90: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u701
	goto	u700
u701:
	goto	l21
u700:
	
l30000682:	
	line	92
;Phone number.c: 91: {
;Phone number.c: 92: var=2;
	movlw	low(02h)
	movwf	(_var)
	movlw	high(02h)
	movwf	((_var))+1
	line	93
;Phone number.c: 93: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000683:	
	line	94
;Phone number.c: 94: data(var+48);
	movlw	(032h)
	fcall	_data
	
l22:	
	line	95
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u711
	goto	u710
u711:
	goto	l22
u710:
	
l21:	
	line	98
;Phone number.c: 96: }
;Phone number.c: 98: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u721
	goto	u720
u721:
	goto	l25
u720:
	
l30000684:	
	line	100
;Phone number.c: 99: {
;Phone number.c: 100: var=3;
	movlw	low(03h)
	movwf	(_var)
	movlw	high(03h)
	movwf	((_var))+1
	line	101
;Phone number.c: 101: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000685:	
	line	102
;Phone number.c: 102: data(var+48);
	movlw	(033h)
	fcall	_data
	
l26:	
	line	103
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u731
	goto	u730
u731:
	goto	l26
u730:
	
l25:	
	line	108
;Phone number.c: 104: }
;Phone number.c: 108: RB3=0,RB4=1,RB5=0,RB6=0;
	bcf	(51/8),(51)&7
	bsf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	109
;Phone number.c: 109: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u741
	goto	u740
u741:
	goto	l29
u740:
	
l30000686:	
	line	111
;Phone number.c: 110: {
;Phone number.c: 111: var=4;
	movlw	low(04h)
	movwf	(_var)
	movlw	high(04h)
	movwf	((_var))+1
	line	112
;Phone number.c: 112: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000687:	
	line	113
;Phone number.c: 113: data(var+48);
	movlw	(034h)
	fcall	_data
	
l30:	
	line	114
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u751
	goto	u750
u751:
	goto	l30
u750:
	
l29:	
	line	117
;Phone number.c: 115: }
;Phone number.c: 117: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u761
	goto	u760
u761:
	goto	l33
u760:
	
l30000688:	
	line	119
;Phone number.c: 118: {
;Phone number.c: 119: var=5;
	movlw	low(05h)
	movwf	(_var)
	movlw	high(05h)
	movwf	((_var))+1
	line	120
;Phone number.c: 120: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000689:	
	line	121
;Phone number.c: 121: data(var+48);
	movlw	(035h)
	fcall	_data
	
l34:	
	line	122
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u771
	goto	u770
u771:
	goto	l34
u770:
	
l33:	
	line	125
;Phone number.c: 123: }
;Phone number.c: 125: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u781
	goto	u780
u781:
	goto	l37
u780:
	
l30000690:	
	line	127
;Phone number.c: 126: {
;Phone number.c: 127: var=6;
	movlw	low(06h)
	movwf	(_var)
	movlw	high(06h)
	movwf	((_var))+1
	line	128
;Phone number.c: 128: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000691:	
	line	129
;Phone number.c: 129: data(var+48);
	movlw	(036h)
	fcall	_data
	
l38:	
	line	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u791
	goto	u790
u791:
	goto	l38
u790:
	
l37:	
	line	136
;Phone number.c: 131: }
;Phone number.c: 136: RB3=0,RB4=0,RB5=1,RB6=0;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bsf	(53/8),(53)&7
	bcf	(54/8),(54)&7
	line	137
;Phone number.c: 137: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u801
	goto	u800
u801:
	goto	l41
u800:
	
l30000692:	
	line	139
;Phone number.c: 138: {
;Phone number.c: 139: var=7;
	movlw	low(07h)
	movwf	(_var)
	movlw	high(07h)
	movwf	((_var))+1
	line	140
;Phone number.c: 140: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000693:	
	line	141
;Phone number.c: 141: data(var+48);
	movlw	(037h)
	fcall	_data
	
l42:	
	line	142
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u811
	goto	u810
u811:
	goto	l42
u810:
	
l41:	
	line	145
;Phone number.c: 143: }
;Phone number.c: 145: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u821
	goto	u820
u821:
	goto	l45
u820:
	
l30000694:	
	line	147
;Phone number.c: 146: {
;Phone number.c: 147: var=8;
	movlw	low(08h)
	movwf	(_var)
	movlw	high(08h)
	movwf	((_var))+1
	line	148
;Phone number.c: 148: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000695:	
	line	149
;Phone number.c: 149: data(var+48);
	movlw	(038h)
	fcall	_data
	
l46:	
	line	150
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u831
	goto	u830
u831:
	goto	l46
u830:
	
l45:	
	line	153
;Phone number.c: 151: }
;Phone number.c: 153: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u841
	goto	u840
u841:
	goto	l49
u840:
	
l30000696:	
	line	155
;Phone number.c: 154: {
;Phone number.c: 155: var=9;
	movlw	low(09h)
	movwf	(_var)
	movlw	high(09h)
	movwf	((_var))+1
	line	156
;Phone number.c: 156: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000697:	
	line	157
;Phone number.c: 157: data(var+48);
	movlw	(039h)
	fcall	_data
	
l50:	
	line	158
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u851
	goto	u850
u851:
	goto	l50
u850:
	
l49:	
	line	163
;Phone number.c: 159: }
;Phone number.c: 163: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	165
;Phone number.c: 165: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u861
	goto	u860
u861:
	goto	l53
u860:
	
l30000698:	
	line	167
;Phone number.c: 166: {
;Phone number.c: 167: var=0;
	movlw	low(0)
	movwf	(_var)
	movlw	high(0)
	movwf	((_var))+1
	line	168
;Phone number.c: 168: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	
l30000699:	
	line	169
;Phone number.c: 169: data(var+48);
	movlw	(030h)
	fcall	_data
	
l54:	
	line	170
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u871
	goto	u870
u871:
	goto	l54
u870:
	
l53:	
	line	174
;Phone number.c: 171: }
;Phone number.c: 174: if(RB0==1)
	btfss	(48/8),(48)&7
	goto	u881
	goto	u880
u881:
	goto	l30000675
u880:
	
l30000700:	
	line	176
;Phone number.c: 175: {
;Phone number.c: 176: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	177
;Phone number.c: 177: if(count==11)
	movlw	0Bh
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u891
	goto	u890
u891:
	goto	l30000715
u890:
	
l30000701:	
	line	179
;Phone number.c: 178: {
;Phone number.c: 179: for(i=0;i<10;i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000703:	
	line	181
;Phone number.c: 180: {
;Phone number.c: 181: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30000704:	
	line	182
;Phone number.c: 182: if(count2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count2+1)),w
	iorwf	((_count2)),w
	skipz
	goto	u901
	goto	u900
u901:
	goto	l62
u900:
	
l30000705:	
	line	184
;Phone number.c: 183: {
;Phone number.c: 184: count2++;
	movlw	low(01h)
	addwf	(_count2),f
	skipnc
	incf	(_count2+1),f
	movlw	high(01h)
	addwf	(_count2+1),f
	
l30000706:	
	line	185
;Phone number.c: 185: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30000707:	
	line	186
;Phone number.c: 186: string("CALLING...");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_string
	
l62:	
	line	179
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(0Ah))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u915
	movlw	low(0Ah)
	subwf	(main@i),w
u915:

	skipc
	goto	u911
	goto	u910
u911:
	goto	l30000703
u910:
	
l64:	
	line	192
;Phone number.c: 191: {
;Phone number.c: 192: RB3=0,RB4=0,RB5=0,RB6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	bcf	(52/8),(52)&7
	bcf	(53/8),(53)&7
	bsf	(54/8),(54)&7
	line	193
;Phone number.c: 193: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u921
	goto	u920
u921:
	goto	l64
u920:
	
l30000709:	
	line	198
;Phone number.c: 196: }
;Phone number.c: 197: }
;Phone number.c: 198: string("CALL ENDED");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_string
	
l30000710:	
	line	200
;Phone number.c: 200: for(i=0;i<10;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000713:	
	line	202
;Phone number.c: 201: {
;Phone number.c: 202: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u1007:
	decfsz	(??_main+0+0),f
	goto	u1007
	decfsz	(??_main+0+0+1),f
	goto	u1007
	nop2

	line	200
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(0Ah))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u935
	movlw	low(0Ah)
	subwf	(main@i),w
u935:

	skipc
	goto	u931
	goto	u930
u931:
	goto	l30000713
u930:
	
l30000714:	
	line	205
;Phone number.c: 203: }
;Phone number.c: 205: command(0X01);
	movlw	(01h)
	fcall	_command
	goto	l30000722
	
l30000715:	
	line	210
;Phone number.c: 208: else
;Phone number.c: 209: {
;Phone number.c: 210: for(i=0;i<10;i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000717:	
	line	212
;Phone number.c: 211: {
;Phone number.c: 212: command(0X80);
	movlw	(080h)
	fcall	_command
	
l30000718:	
	line	213
;Phone number.c: 213: if(count1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count1+1)),w
	iorwf	((_count1)),w
	skipz
	goto	u941
	goto	u940
u941:
	goto	l74
u940:
	
l30000719:	
	line	215
;Phone number.c: 214: {
;Phone number.c: 215: count1++;
	movlw	low(01h)
	addwf	(_count1),f
	skipnc
	incf	(_count1+1),f
	movlw	high(01h)
	addwf	(_count1+1),f
	
l30000720:	
	line	216
;Phone number.c: 216: command(0X01);
	movlw	(01h)
	fcall	_command
	
l30000721:	
	line	217
;Phone number.c: 217: string("INVALID NUMBER");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_string
	
l74:	
	line	210
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(0Ah))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u955
	movlw	low(0Ah)
	subwf	(main@i),w
u955:

	skipc
	goto	u951
	goto	u950
u951:
	goto	l30000717
u950:
	
l30000722:	
	line	222
;Phone number.c: 218: }
;Phone number.c: 219: }
;Phone number.c: 220: }
;Phone number.c: 222: for(i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000724:	
	line	224
;Phone number.c: 223: {
;Phone number.c: 224: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	130
movwf	(??_main+0+0+1),f
	movlw	221
movwf	(??_main+0+0),f
u1017:
	decfsz	(??_main+0+0),f
	goto	u1017
	decfsz	(??_main+0+0+1),f
	goto	u1017
	nop2

	line	222
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(05h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u965
	movlw	low(05h)
	subwf	(main@i),w
u965:

	skipc
	goto	u961
	goto	u960
u961:
	goto	l30000724
u960:
	
l30000725:	
	line	226
;Phone number.c: 225: }
;Phone number.c: 226: command(0X01);
	movlw	(01h)
	fcall	_command
	goto	l12
	
l78:	
	line	228
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u971
	goto	u970
u971:
	goto	l78
u970:
	goto	l30000675
	
l12:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	232
	signat	_main,88
	global	_string
psect	text41,local,class=CODE,delta=2
global __ptext41
__ptext41:

; *************** function _string *****************
; Defined at:
;		line 51 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
; Parameters:    Size  Location     Type
;  ptr             1    wreg     PTR unsigned char 
;		 -> STR_1(13), STR_2(11), STR_3(11), STR_4(15), 
; Auto vars:     Size  Location     Type
;  ptr             1    4[COMMON] PTR unsigned char 
;		 -> STR_1(13), STR_2(11), STR_3(11), STR_4(15), 
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
;      Temp:     1
;      Total:    2
; This function calls:
;		_data
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text41
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
	line	51
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
;Phone number.c: 50: void string(char *ptr)
;Phone number.c: 51: {
	
_string:	
	opt stack 6
; Regs used in _string: [wreg+status,2+status,0+pclath+cstack]
;string@ptr stored from wreg
	movwf	(string@ptr)
	
l30000727:	
	goto	l30000730
	
l30000728:	
	line	54
;Phone number.c: 53: {
;Phone number.c: 54: data(*ptr);
	movf	(string@ptr),w
	FNCALL _string,stringtab
	fcall	stringdir
	fcall	_data
	
l30000729:	
	line	55
;Phone number.c: 55: *ptr++;
	movlw	(01h)
	movwf	(??_string+0+0)
	movf	(??_string+0+0),w
	addwf	(string@ptr),f
	
l30000730:	
	line	52
	movf	(string@ptr),w
	FNCALL _string,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u981
	goto	u980
u981:
	goto	l30000728
u980:
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
; =============== function _string ends ============

psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:
	line	57
	signat	_string,4216
	global	_command

; *************** function _command *****************
; Defined at:
;		line 36 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
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
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
	line	36
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;Phone number.c: 35: void command(char data)
;Phone number.c: 36: {
	
_command:	
	opt stack 6
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30000731:	
	line	37
;Phone number.c: 37: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30000732:	
	line	38
;Phone number.c: 38: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30000733:	
	line	39
;Phone number.c: 39: pulse();
	fcall	_pulse
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:
	line	40
	signat	_command,4216
	global	_data

; *************** function _data *****************
; Defined at:
;		line 43 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
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
psect	text43
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
	line	43
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;Phone number.c: 42: void data(char data)
;Phone number.c: 43: {
	
_data:	
	opt stack 5
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	movwf	(data@data)
	
l30000734:	
	line	44
;Phone number.c: 44: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	
l30000735:	
	line	45
;Phone number.c: 45: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30000736:	
	line	46
;Phone number.c: 46: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	line	47
	signat	_data,4216
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 28 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
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
psect	text44
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
	line	28
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;Phone number.c: 27: void pulse()
;Phone number.c: 28: {
	
_pulse:	
	opt stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l30000737:	
;Phone number.c: 29: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30000738:	
	line	30
;Phone number.c: 30: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000739:	
	line	31
;Phone number.c: 31: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	32
;Phone number.c: 32: delay(1000);
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

psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:
	line	33
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 23 in file "C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
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
psect	text45
	file	"C:\Users\gowth\Documents\PIC Programs\LCD\Phone number\Phone number.c"
	line	23
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;Phone number.c: 16: int var=0;
;Phone number.c: 17: static int count=0;
;Phone number.c: 18: static int count1=0;
;Phone number.c: 19: static int count2=0;
;Phone number.c: 22: void delay(int x)
;Phone number.c: 23: {
	
_delay:	
	opt stack 3
; Regs used in _delay: [wreg]
	
l30000740:	
	
l30000741:	
	line	24
	movlw	low(-1)
	addwf	(delay@x),f
	skipnc
	incf	(delay@x+1),f
	movlw	high(-1)
	addwf	(delay@x+1),f
	movlw	high(-1)
	xorwf	((delay@x+1))&07fh,w
	skipz
	goto	u995
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u995:

	skipz
	goto	u991
	goto	u990
u991:
	goto	l30000741
u990:
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text46,local,class=CODE,delta=2
global __ptext46
__ptext46:
	line	25
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
