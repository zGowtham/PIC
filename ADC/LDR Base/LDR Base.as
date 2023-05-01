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
;BANK1:	_main->_voltage
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
;COMMON:	_voltage->_sprintf
;COMMON:	_sprintf->___lwmod
;COMMON:	___lwmod->___lwdiv
;BANK0:	___lwmod->___lwdiv
;BANK0:	_sprintf->___lwmod
;COMMON:	___lwmod->___lwdiv
;BANK0:	___lwmod->___lwdiv
;COMMON:	_voltage->_string
;COMMON:	_string->_data
	FNCALL	_main,_command
	FNCALL	_main,_adc
	FNCALL	_main,_voltage
	FNCALL	_adc,_count
	FNCALL	_voltage,_command
	FNCALL	_voltage,___awtoft
	FNCALL	_voltage,___ftmul
	FNCALL	_voltage,___ftdiv
	FNCALL	_voltage,_sprintf
	FNCALL	_voltage,_string
	FNCALL	_voltage,___fttol
	FNCALL	_voltage,___awdiv
	FNCALL	_voltage,___awmod
	FNCALL	_voltage,_data
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_string,_data
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_count,___awdiv
	FNCALL	_count,___awmod
	FNCALL	_count,_command
	FNCALL	_count,_data
	FNCALL	_data,_pulse
	FNCALL	_command,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_dpowers
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\lib\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_high
	global	_k1
	global	_k2
	global	_DV
	global	_low
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
	
STR_1:	
	retlw	68	;'D'
	retlw	86	;'V'
	retlw	61	;'='
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"LDR Base.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_DV:
       ds      2

_low:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_high:
       ds      2

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	voltage@buffer
voltage@buffer:	; 20 bytes @ 0x0
	ds	20
	global	voltage@z
voltage@z:	; 3 bytes @ 0x14
	ds	3
	global	voltage@w1
voltage@w1:	; 3 bytes @ 0x17
	ds	3
	global	voltage@a
voltage@a:	; 2 bytes @ 0x1A
	ds	2
	global	voltage@b
voltage@b:	; 2 bytes @ 0x1C
	ds	2
	global	voltage@c
voltage@c:	; 2 bytes @ 0x1E
	ds	2
	global	voltage@w
voltage@w:	; 2 bytes @ 0x20
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_data
??_data: ;@ 0x0
	global	??_pulse
??_pulse: ;@ 0x0
	global	??___ftpack
??___ftpack: ;@ 0x0
	global	??___awmod
??___awmod: ;@ 0x0
	global	?_delay
?_delay: ;@ 0x0
	global	??___lwdiv
??___lwdiv: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	??_command
??_command: ;@ 0x0
	global	delay@x
delay@x:	; 2 bytes @ 0x0
	ds	1
	global	??___lwmod
??___lwmod: ;@ 0x1
	global	??___awdiv
??___awdiv: ;@ 0x1
	ds	1
	global	??_count
??_count: ;@ 0x2
	global	??_sprintf
??_sprintf: ;@ 0x2
	global	?_pulse
?_pulse: ;@ 0x2
	global	data@data
data@data:	; 1 bytes @ 0x2
	global	command@data
command@data:	; 1 bytes @ 0x2
	ds	1
	global	??_string
??_string: ;@ 0x3
	global	??___awtoft
??___awtoft: ;@ 0x3
	global	?_command
?_command: ;@ 0x3
	global	??_adc
??_adc: ;@ 0x3
	global	?_data
?_data: ;@ 0x3
	ds	1
	global	string@ptr
string@ptr:	; 1 bytes @ 0x4
	ds	1
	global	??_voltage
??_voltage: ;@ 0x5
	global	?_string
?_string: ;@ 0x5
	global	??_main
??_main: ;@ 0x5
	global	?_adc
?_adc: ;@ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x0
	global	?___ftpack
?___ftpack: ;@ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	?___awmod
?___awmod: ;@ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?___lwdiv
?___lwdiv: ;@ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x4
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x6
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x6
	global	?___awtoft
?___awtoft: ;@ 0x6
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod: ;@ 0x8
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x8
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
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xA
	ds	2
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0xC
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0xC
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xD
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xE
	global	count@e
count@e:	; 2 bytes @ 0xE
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xE
	ds	1
	global	sprintf@_val
sprintf@_val:	; 3 bytes @ 0xF
	ds	1
	global	count@f
count@f:	; 2 bytes @ 0x10
	ds	1
	global	??___fttol
??___fttol: ;@ 0x11
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x11
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x12
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x12
	global	count@a
count@a:	; 2 bytes @ 0x12
	ds	1
	global	?___ftmul
?___ftmul: ;@ 0x13
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x13
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x13
	ds	1
	global	?_sprintf
?_sprintf: ;@ 0x14
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x14
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x14
	global	count@c
count@c:	; 2 bytes @ 0x14
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x15
	ds	1
	global	?_count
?_count: ;@ 0x16
	global	count@i
count@i:	; 2 bytes @ 0x16
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x16
	ds	3
	global	??___ftdiv
??___ftdiv: ;@ 0x19
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x19
	ds	1
	global	?___fttol
?___fttol: ;@ 0x1A
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x1A
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1D
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1E
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x21
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x22
	ds	1
	global	?___ftdiv
?___ftdiv: ;@ 0x23
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x23
	ds	3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x26
	ds	3
	global	?_main
?_main: ;@ 0x29
	global	?_voltage
?_voltage: ;@ 0x29
;Data sizes: Strings 6, constant 10, data 0, bss 10, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5       9
; BANK0           80     41      47
; BANK1           80     34      34
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;string@ptr	PTR unsigned char  size(1); Largest target is 20
;		 -> voltage@buffer(BANK1[20]), 
;_val._str._cp	PTR const unsigned char  size(1); Largest target is 0
;S510$_cp	PTR const unsigned char  size(1); Largest target is 0
;sprintf@ap	PTR void [1] size(1); Largest target is 2
;		 -> ?_sprintf(BANK0[2]), 
;sprintf@f	PTR const unsigned char  size(1); Largest target is 6
;		 -> STR_1(CODE[6]), 
;?_sprintf	int  size(1); Largest target is 0
;sprintf@sp	PTR unsigned char  size(1); Largest target is 20
;		 -> voltage@buffer(BANK1[20]), 
;?___ftdiv	float  size(1); Largest target is 0
;?___awmod	int  size(1); Largest target is 0
;?___ftmul	float  size(1); Largest target is 0
;?___awtoft	float  size(1); Largest target is 0
;?___fttol	long  size(1); Largest target is 0
;?___lwmod	unsigned int  size(1); Largest target is 0
;?___lwdiv	unsigned int  size(1); Largest target is 0
;?___awdiv	int  size(1); Largest target is 0
;?___ftpack	float  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 7989   0.00
;            _command
;                _adc
;            _voltage
;  _adc                                               2    0 1338   0.00
;                                    3 COMMO    2
;              _count
;  _voltage                                          34    0 6603   0.00
;                                    0 BANK1   34
;            _command
;           ___awtoft
;            ___ftmul
;            ___ftdiv
;            _sprintf
;             _string
;            ___fttol
;            ___awdiv
;            ___awmod
;               _data
;    ___ftdiv                                        10    6 1932   0.00
;                                   25 BANK0   16
;            ___ftmul (ARG)
;           ___awtoft (ARG)
;           ___ftpack
;    ___ftmul                                        10    6  993   0.00
;                                    9 BANK0   16
;           ___awtoft (ARG)
;           ___ftpack
;    ___awtoft                                        3    3  354   0.00
;                                    3 COMMO    2
;                                    5 BANK0    4
;           ___ftpack
;    ___fttol                                         9    4  717   0.00
;                                   17 BANK0   13
;    _string                                          2    0   99   0.00
;                                    3 COMMO    2
;               _data
;    _sprintf                                        11    3 1116   0.00
;                                    2 COMMO    3
;                                   12 BANK0   11
;            ___lwdiv
;            ___lwmod
;    _count                                           8    2 1338   0.00
;                                   14 BANK0   10
;            ___awdiv
;            ___awmod
;            _command
;               _data
;      ___awdiv                                       5    4  696   0.00
;                                    1 COMMO    1
;                                    6 BANK0    8
;            ___awmod (ARG)
;      ___lwmod                                       2    4  375   0.00
;                                    1 COMMO    1
;                                    7 BANK0    5
;            ___lwdiv (ARG)
;      ___lwdiv                                       4    4  192   0.00
;                                    0 COMMO    1
;                                    0 BANK0    7
;      _data                                          1    0   48   0.00
;                                    2 COMMO    1
;              _pulse
;      _command                                       1    0   48   0.00
;                                    2 COMMO    1
;              _pulse
;      ___awmod                                       3    4  342   0.00
;                                    0 COMMO    1
;                                    0 BANK0    6
;      ___ftpack                                      3    5  249   0.00
;                                    0 COMMO    3
;                                    0 BANK0    5
;        _pulse                                       0    0   24   0.00
;              _delay
;          _delay                                     0    2   24   0.00
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
;ABS                  0      0      5A       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     29      2F       5       58.8%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50     22      22       7       42.5%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      5A      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 246 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
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
;		_command
;		_adc
;		_voltage
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	246
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;LDR Base.c: 245: void main()
;LDR Base.c: 246: {
	
_main:	
	opt stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	247
	
l30001324:	
;LDR Base.c: 247: TRISA=0X0F; PORTA=0X00;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30001325:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l30001326:	
	line	248
;LDR Base.c: 248: TRISD=0X00; PORTD=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	
l30001327:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	
l30001328:	
	line	249
;LDR Base.c: 249: TRISE=0X00; PORTE=0X00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	
l30001329:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(9)	;volatile
	line	251
;LDR Base.c: 251: ANSEL=0X01; ANSELH=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h
	bsf	status,0
	rlf	(392)^0180h,f
	
l30001330:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(393)^0180h
	
l30001331:	
	line	253
;LDR Base.c: 253: command(0X38);
	movlw	(038h)
	fcall	_command
	
l30001332:	
	line	254
;LDR Base.c: 254: command(0X0C);
	movlw	(0Ch)
	fcall	_command
	
l30001333:	
	line	259
;LDR Base.c: 258: {
;LDR Base.c: 259: adc();
	fcall	_adc
	
l30001334:	
	line	260
;LDR Base.c: 260: voltage();
	fcall	_voltage
	goto	l30001333
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	264
	signat	_main,88
	global	_adc
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

; *************** function _adc *****************
; Defined at:
;		line 72 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
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
psect	text151
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	72
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
;LDR Base.c: 71: void adc()
;LDR Base.c: 72: {
	
_adc:	
	opt stack 6
; Regs used in _adc: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
l30001467:	
;LDR Base.c: 73: ADCON0=0X83; ADCON1=0X80;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h
	
l15:	
	line	74
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(31),(1)&7	;volatile
	goto	u3041
	goto	u3040
u3041:
	goto	l15
u3040:
	
l30001468:	
	line	75
;LDR Base.c: 75: high=ADRESH; low=ADRESL;
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
	movwf	(_low)
	movf	1+(??_adc+0+0),w
	movwf	(_low+1)
	
l30001469:	
	line	77
;LDR Base.c: 77: if(high==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_high+1)),w
	iorwf	((_high)),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l30001472
u3050:
	
l30001470:	
	line	79
;LDR Base.c: 78: {
;LDR Base.c: 79: DV=low;
	movf	(_low+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_low),w
	clrf	(_DV)
	addwf	(_DV)

	
l30001471:	
	line	80
;LDR Base.c: 80: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001472:	
	line	83
;LDR Base.c: 81: }
;LDR Base.c: 83: if(high==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l30001475
u3060:
	
l30001473:	
	line	85
;LDR Base.c: 84: {
;LDR Base.c: 85: DV=low+256;
	movf	(_low),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	
l30001474:	
	line	86
;LDR Base.c: 86: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001475:	
	line	89
;LDR Base.c: 87: }
;LDR Base.c: 89: if(high==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l30001478
u3070:
	
l30001476:	
	line	91
;LDR Base.c: 90: {
;LDR Base.c: 91: DV=low+512;
	movf	(_low),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	
l30001477:	
	line	92
;LDR Base.c: 92: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001478:	
	line	95
;LDR Base.c: 93: }
;LDR Base.c: 95: if(high==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_high),w
	iorwf	(_high+1),w
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l30001481
u3080:
	
l30001479:	
	line	97
;LDR Base.c: 96: {
;LDR Base.c: 97: DV=low+768;
	movf	(_low),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	
l30001480:	
	line	98
;LDR Base.c: 98: count(DV);
	movf	(_DV+1),w
	clrf	(?_count+1)
	addwf	(?_count+1)
	movf	(_DV),w
	clrf	(?_count)
	addwf	(?_count)

	fcall	_count
	
l30001481:	
	line	102
;LDR Base.c: 99: }
;LDR Base.c: 102: if(DV>434)
	movf	(_DV+1),w
	xorlw	80h
	movwf	(??_adc+0+0)
	movlw	(high(01B3h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u3095
	movlw	low(01B3h)
	subwf	(_DV),w
u3095:

	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l22
u3090:
	
l30001482:	
	line	104
;LDR Base.c: 103: {
;LDR Base.c: 104: RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	
l30001483:	
	line	105
;LDR Base.c: 105: k1=1;
	movlw	low(01h)
	movwf	(_k1)
	movlw	high(01h)
	movwf	((_k1))+1
	
l22:	
	line	108
;LDR Base.c: 106: }
;LDR Base.c: 108: if(k1==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_k1),w
	iorwf	(_k1+1),w
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l30001486
u3100:
	
l30001484:	
	line	110
;LDR Base.c: 109: {
;LDR Base.c: 110: if(DV<400)
	movf	(_DV+1),w
	xorlw	80h
	movwf	(??_adc+0+0)
	movlw	(high(0190h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u3115
	movlw	low(0190h)
	subwf	(_DV),w
u3115:

	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l30001486
u3110:
	
l30001485:	
	line	112
;LDR Base.c: 111: {
;LDR Base.c: 112: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	
l30001486:	
	line	116
;LDR Base.c: 113: }
;LDR Base.c: 114: }
;LDR Base.c: 116: if(DV<308)
	movf	(_DV+1),w
	xorlw	80h
	movwf	(??_adc+0+0)
	movlw	(high(0134h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u3125
	movlw	low(0134h)
	subwf	(_DV),w
u3125:

	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l25
u3120:
	
l30001487:	
	line	118
;LDR Base.c: 117: {
;LDR Base.c: 118: RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	
l30001488:	
	line	119
;LDR Base.c: 119: k2=1;
	movlw	low(01h)
	movwf	(_k2)
	movlw	high(01h)
	movwf	((_k2))+1
	
l25:	
	line	122
;LDR Base.c: 120: }
;LDR Base.c: 122: if(k2==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_k2),w
	iorwf	(_k2+1),w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l14
u3130:
	
l30001489:	
	line	124
;LDR Base.c: 123: {
;LDR Base.c: 124: if(DV>435)
	movf	(_DV+1),w
	xorlw	80h
	movwf	(??_adc+0+0)
	movlw	(high(01B4h))^80h
	subwf	(??_adc+0+0),w
	skipz
	goto	u3145
	movlw	low(01B4h)
	subwf	(_DV),w
u3145:

	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l14
u3140:
	
l30001490:	
	line	126
;LDR Base.c: 125: {
;LDR Base.c: 126: RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
; =============== function _adc ends ============

psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:
	line	130
	signat	_adc,88
	global	_voltage

; *************** function _voltage *****************
; Defined at:
;		line 209 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  buffer         20    0[BANK1 ] unsigned char [20]
;  z               3   20[BANK1 ] float 
;  w1              3   23[BANK1 ] float 
;  w               2   32[BANK1 ] int 
;  c               2   30[BANK1 ] int 
;  b               2   28[BANK1 ] int 
;  a               2   26[BANK1 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0      34       0       0
;      Temp:     0
;      Total:   34
; This function calls:
;		_command
;		___awtoft
;		___ftmul
;		___ftdiv
;		_sprintf
;		_string
;		___fttol
;		___awdiv
;		___awmod
;		_data
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text152
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	209
	global	__size_of_voltage
	__size_of_voltage	equ	__end_of_voltage-_voltage
;LDR Base.c: 208: void voltage()
;LDR Base.c: 209: {
	
_voltage:	
	opt stack 6
; Regs used in _voltage: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	210
	
l30001319:	
;LDR Base.c: 210: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	line	216
;LDR Base.c: 212: int a,b,c,w;
;LDR Base.c: 213: float z,w1;
;LDR Base.c: 214: char buffer[20];
;LDR Base.c: 216: z=(DV*5.0)/1023.0;
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(voltage@z)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(voltage@z+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(voltage@z+2)^080h
	
l30001320:	
	line	219
;LDR Base.c: 219: sprintf(buffer,"DV=%d",DV);
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	movf	(_DV+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_DV),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	((voltage@buffer))&0ffh
	fcall	_sprintf
	
l30001321:	
	line	220
;LDR Base.c: 220: command(0x87);
	movlw	(087h)
	fcall	_command
	line	221
;LDR Base.c: 221: string(buffer);
	movlw	((voltage@buffer))&0ffh
	fcall	_string
	
l30001322:	
	line	223
;LDR Base.c: 223: if(DV>=0)
	btfsc	(_DV+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l31
u2380:
	
l30001323:	
	line	225
;LDR Base.c: 224: {
;LDR Base.c: 225: w1=z*100;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@z)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@z+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@z+2)^080h,w
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
	movwf	(voltage@w1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(voltage@w1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(voltage@w1+2)^080h
	line	226
;LDR Base.c: 226: w=w1;
	movf	(voltage@w1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@w1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@w1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(voltage@w+1)^080h
	addwf	(voltage@w+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(voltage@w)^080h
	addwf	(voltage@w)^080h

	line	228
;LDR Base.c: 228: a=w/100;
	movf	(voltage@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@w)^080h,w
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
	clrf	(voltage@a+1)^080h
	addwf	(voltage@a+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(voltage@a)^080h
	addwf	(voltage@a)^080h

	line	229
;LDR Base.c: 229: b=(w%100)/10;
	movf	(voltage@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@w)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(voltage@b+1)^080h
	addwf	(voltage@b+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(voltage@b)^080h
	addwf	(voltage@b)^080h

	line	230
;LDR Base.c: 230: c=w%10;
	movf	(voltage@w+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@w)^080h,w
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
	clrf	(voltage@c+1)^080h
	addwf	(voltage@c+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(voltage@c)^080h
	addwf	(voltage@c)^080h

	line	232
;LDR Base.c: 232: command(0XC0);
	movlw	(0C0h)
	fcall	_command
	line	234
;LDR Base.c: 234: data(0X2B);
	movlw	(02Bh)
	fcall	_data
	line	235
;LDR Base.c: 235: data(a+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@a)^080h,w
	addlw	030h
	fcall	_data
	line	236
;LDR Base.c: 236: data(0X2E);
	movlw	(02Eh)
	fcall	_data
	line	237
;LDR Base.c: 237: data(b+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@b)^080h,w
	addlw	030h
	fcall	_data
	line	238
;LDR Base.c: 238: data(c+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(voltage@c)^080h,w
	addlw	030h
	fcall	_data
	line	239
;LDR Base.c: 239: data(0X20);
	movlw	(020h)
	fcall	_data
	line	240
;LDR Base.c: 240: data(0X56);
	movlw	(056h)
	fcall	_data
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_voltage
	__end_of_voltage:
; =============== function _voltage ends ============

psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:
	line	243
	signat	_voltage,88
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
; This function uses a non-reentrant model
; 
psect	text153
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l30001388:	
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
	goto	u2781
	goto	u2780
u2781:
	goto	l30001391
u2780:
	
l30001389:	
	line	56
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l136
	
l30001391:	
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
	goto	u2791
	goto	u2790
u2791:
	goto	l30001394
u2790:
	
l30001392:	
	line	58
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l136
	
l30001394:	
	line	59
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	
l30001395:	
	line	60
	movf	(___ftdiv@sign),w
	addlw	089h
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	subwf	(___ftdiv@exp),f
	
l30001396:	
	line	61
	movf	(___ftdiv@f1),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f1+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u2805:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u2800:
	addlw	-1
	skipz
	goto	u2805
	movf	0+(??___ftdiv+0+0),w
	movwf	(___ftdiv@sign)
	
l30001397:	
	line	62
	movf	(___ftdiv@f2),w
	movwf	(??___ftdiv+0+0)
	movf	(___ftdiv@f2+1),w
	movwf	(??___ftdiv+0+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	(??___ftdiv+0+0+2)
	movlw	010h
u2815:
	clrc
	rrf	(??___ftdiv+0+2),f
	rrf	(??___ftdiv+0+1),f
	rrf	(??___ftdiv+0+0),f
u2810:
	addlw	-1
	skipz
	goto	u2815
	movf	0+(??___ftdiv+0+0),w
	movwf	(??___ftdiv+3+0)
	movf	(??___ftdiv+3+0),w
	xorwf	(___ftdiv@sign),f
	
l30001398:	
	line	63
	movlw	(080h)
	movwf	(??___ftdiv+0+0)
	movf	(??___ftdiv+0+0),w
	andwf	(___ftdiv@sign),f
	
l30001399:	
	line	64
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	
l30001400:	
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
	
l30001401:	
	line	70
	movlw	01h
u2825:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2825
	
l30001402:	
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2835
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2835
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2835:
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l30001405
u2830:
	
l30001403:	
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
	
l30001404:	
	line	73
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	
l30001405:	
	line	75
	movlw	01h
u2845:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2845
	
l30001406:	
	line	76
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l30001401
u2850:
	
l30001407:	
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
	
l136:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
; =============== function ___ftdiv ends ============

psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:
	line	78
	signat	___ftdiv,8315
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
; This function uses a non-reentrant model
; 
psect	text154
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l30001294:	
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
	goto	u2241
	goto	u2240
u2241:
	goto	l30001297
u2240:
	
l30001295:	
	line	57
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l143
	
l30001297:	
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
	goto	u2251
	goto	u2250
u2251:
	goto	l30001300
u2250:
	
l30001298:	
	line	59
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l143
	
l30001300:	
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
u2265:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u2260:
	addlw	-1
	skipz
	goto	u2265
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
u2275:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u2270:
	addlw	-1
	skipz
	goto	u2275
	movf	0+(??___ftmul+0+0),w
	movwf	(??___ftmul+3+0)
	movf	(??___ftmul+3+0),w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	andwf	(___ftmul@sign),f
	
l30001301:	
	line	64
	bsf	(___ftmul@f1)+(15/8),(15)&7
	
l30001302:	
	line	66
	bsf	(___ftmul@f2)+(15/8),(15)&7
	
l30001303:	
	line	67
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	
l30001304:	
	line	68
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	
l30001305:	
	line	69
	movlw	(07h)
	movwf	(___ftmul@cntr)
	
l30001306:	
	line	71
	btfss	(___ftmul@f1),(0)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l30001308
u2280:
	
l30001307:	
	line	72
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2291
	addwf	(___ftmul@f3_as_product+1),f
u2291:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2292
	addwf	(___ftmul@f3_as_product+2),f
u2292:

	
l30001308:	
	line	73
	movlw	01h
u2305:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2305

	
l30001309:	
	line	74
	movlw	01h
u2315:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2315
	
l30001310:	
	line	75
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l30001306
u2320:
	
l30001311:	
	line	76
	movlw	(09h)
	movwf	(___ftmul@cntr)
	
l30001312:	
	line	78
	btfss	(___ftmul@f1),(0)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l30001314
u2330:
	
l30001313:	
	line	79
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2341
	addwf	(___ftmul@f3_as_product+1),f
u2341:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2342
	addwf	(___ftmul@f3_as_product+2),f
u2342:

	
l30001314:	
	line	80
	movlw	01h
u2355:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2355

	
l30001315:	
	line	81
	movlw	01h
u2365:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2365

	
l30001316:	
	line	82
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l30001312
u2370:
	
l30001317:	
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
	
l143:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
; =============== function ___ftmul ends ============

psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:
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
	
l30001409:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	
l30001410:	
	line	37
	btfss	(___awtoft@c+1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l30001412
u2860:
	
l30001411:	
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
	
l30001412:	
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
	
l212:	
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
	global	___fttol

; *************** function ___fttol *****************
; Defined at:
;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
; Parameters:    Size  Location     Type
;  f1              3   26[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  lval            4   21[BANK0 ] unsigned long 
;  exp1            1   25[BANK0 ] unsigned char 
;  sign1           1   20[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  4   26[BANK0 ] long 
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
; This function uses a non-reentrant model
; 
psect	text156
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l30001510:	
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
	goto	u3251
	goto	u3250
u3251:
	goto	l30001513
u3250:
	
l30001511:	
	line	50
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l196
	
l30001513:	
	line	51
	movf	(___fttol@f1),w
	movwf	(??___fttol+0+0)
	movf	(___fttol@f1+1),w
	movwf	(??___fttol+0+0+1)
	movf	(___fttol@f1+2),w
	movwf	(??___fttol+0+0+2)
	movlw	017h
u3265:
	clrc
	rrf	(??___fttol+0+2),f
	rrf	(??___fttol+0+1),f
	rrf	(??___fttol+0+0),f
u3260:
	addlw	-1
	skipz
	goto	u3265
	movf	0+(??___fttol+0+0),w
	movwf	(___fttol@sign1)
	
l30001514:	
	line	52
	bsf	(___fttol@f1)+(15/8),(15)&7
	
l30001515:	
	line	53
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	
l30001516:	
	line	54
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	
	clrf	3+(___fttol@lval)
	
l30001517:	
	line	55
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	
l30001518:	
	line	56
	btfss	(___fttol@exp1),7
	goto	u3271
	goto	u3270
u3271:
	goto	l30001523
u3270:
	
l30001519:	
	line	57
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3281
	goto	u3280
u3281:
	goto	l30001522
u3280:
	goto	l30001511
	
l30001522:	
	line	60
	movlw	01h
u3295:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3295

	line	61
	movlw	(01h)
	movwf	(??___fttol+0+0)
	movf	(??___fttol+0+0),w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l30001522
u3300:
	goto	l30001528
	
l30001523:	
	line	63
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l30001527
u3310:
	goto	l30001511
	
l30001526:	
	line	66
	movlw	01h
	movwf	(??___fttol+0+0)
u3325:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0+0)
	goto	u3325
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	
l30001527:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l30001526
u3330:
	
l30001528:	
	line	70
	movf	(___fttol@sign1),w
	skipz
	goto	u3340
	goto	l30001530
u3340:
	
l30001529:	
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
	
l30001530:	
	line	72
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	
l196:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
; =============== function ___fttol ends ============

psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:
	line	73
	signat	___fttol,4220
	global	_string

; *************** function _string *****************
; Defined at:
;		line 47 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
; Parameters:    Size  Location     Type
;  ptr             1    wreg     PTR unsigned char 
;		 -> voltage@buffer(20), 
; Auto vars:     Size  Location     Type
;  ptr             1    4[COMMON] PTR unsigned char 
;		 -> voltage@buffer(20), 
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
;      Temp:     1
;      Total:    2
; This function calls:
;		_data
; This function is called by:
;		_voltage
; This function uses a non-reentrant model
; 
psect	text157
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	47
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
;LDR Base.c: 46: void string(char *ptr)
;LDR Base.c: 47: {
	
_string:	
	opt stack 5
; Regs used in _string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;string@ptr stored from wreg
	movwf	(string@ptr)
	
l30001414:	
	goto	l30001417
	
l30001415:	
	line	50
;LDR Base.c: 49: {
;LDR Base.c: 50: data(*ptr);
	movf	(string@ptr),w
	movwf	fsr0
	movf	indf,w
	fcall	_data
	
l30001416:	
	line	51
;LDR Base.c: 51: *ptr++;
	movlw	(01h)
	movwf	(??_string+0+0)
	movf	(??_string+0+0),w
	addwf	(string@ptr),f
	
l30001417:	
	line	48
	movf	(string@ptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l30001415
u2870:
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
; =============== function _string ends ============

psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:
	line	53
	signat	_string,4216
	global	_sprintf

; *************** function _sprintf *****************
; Defined at:
;		line 492 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\lib\doprnt.c"
; Parameters:    Size  Location     Type
;  sp              1    wreg     PTR unsigned char 
;		 -> voltage@buffer(20), 
;  f               1   20[BANK0 ] PTR const unsigned char 
;		 -> STR_1(6), 
; Auto vars:     Size  Location     Type
;  sp              1   18[BANK0 ] PTR unsigned char 
;		 -> voltage@buffer(20), 
;  _val            3   15[BANK0 ] struct .
;  c               1   19[BANK0 ] char 
;  prec            1   14[BANK0 ] char 
;  flag            1   12[BANK0 ] unsigned char 
;  ap              1   13[BANK0 ] PTR void [1]
;		 -> ?_sprintf(2), 
; Return value:  Size  Location     Type
;                  2   20[BANK0 ] int 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3      11       0       0       0
;      Temp:     3
;      Total:   14
; This function calls:
;		___lwdiv
;		___lwmod
; This function is called by:
;		_voltage
; This function uses a non-reentrant model
; 
psect	text158
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt stack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;sprintf@sp stored from wreg
	line	541
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	
l30001418:	
	movlw	((?_sprintf)+01h)&0ffh
	movwf	(sprintf@ap)
	goto	l30001445
	
l30001419:	
	line	546
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2881
	goto	u2880
u2881:
	goto	l30001422
u2880:
	
l30001420:	
	line	549
	movf	(sprintf@c),w
	movwf	(??_sprintf+0+0)
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001421:	
	movlw	(01h)
	movwf	(??_sprintf+0+0)
	movf	(??_sprintf+0+0),w
	addwf	(sprintf@sp),f
	goto	l30001445
	
l30001422:	
	line	556
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(sprintf@flag)
	
l30001424:	
	line	642
	clrw
	iorlw	01h
	addwf	(sprintf@f),f
	clrw
	iorlw	-01h
	addwf	(sprintf@f),w
	FNCALL _sprintf,stringtab
	fcall	stringdir
	movwf	(sprintf@c)
		xorlw	0^0
	skipnz
	goto	l30001446
	xorlw	100^0
	skipnz
	goto	l30001425
	xorlw	105^100
	skipnz
	goto	l30001425
	goto	l30001445

	
l30001425:	
	line	1258
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l30001426:	
	movlw	(02h)
	movwf	(??_sprintf+0+0)
	movf	(??_sprintf+0+0),w
	addwf	(sprintf@ap),f
	
l30001427:	
	line	1260
	btfss	(sprintf@_val+1),7
	goto	u2891
	goto	u2890
u2891:
	goto	l30001430
u2890:
	
l30001428:	
	line	1261
	movlw	(03h)
	movwf	(??_sprintf+0+0)
	movf	(??_sprintf+0+0),w
	iorwf	(sprintf@flag),f
	
l30001429:	
	line	1262
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	
l30001430:	
	line	1304
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l30001433:	
	line	1305
	movf	(sprintf@c),w
	movwf	(??_sprintf+0+0)
	addwf	(??_sprintf+0+0),w
	addlw	(_dpowers-__stringbase)
	movwf	(??_sprintf+1+0+1)
	FNCALL _sprintf,stringtab
	fcall	stringdir
	movwf	(??_sprintf+1+0)
	incf	(??_sprintf+1+0+1),f
	movf	(??_sprintf+1+0+1),w
	FNCALL _sprintf,stringtab
	fcall	stringdir
	movwf	(??_sprintf+1+0+1)
	movf	1+(??_sprintf+1+0),w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u2905
	movf	0+(??_sprintf+1+0),w
	subwf	(sprintf@_val),w
u2905:
	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l30001435
u2900:
	goto	l30001437
	
l30001435:	
	line	1304
	movlw	(01h)
	movwf	(??_sprintf+0+0)
	movf	(??_sprintf+0+0),w
	addwf	(sprintf@c),f
	
l30001436:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l30001433
u2910:
	
l30001437:	
	line	1437
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l30001440
u2920:
	
l30001438:	
	line	1438
	movlw	(02Dh)
	movwf	(??_sprintf+0+0)
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001439:	
	movlw	(01h)
	movwf	(??_sprintf+0+0)
	movf	(??_sprintf+0+0),w
	addwf	(sprintf@sp),f
	
l30001440:	
	line	1471
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	goto	l30001444
	
l30001441:	
	line	1488
	movf	(sprintf@_val+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(sprintf@_val),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	movf	(sprintf@prec),w
	movwf	(??_sprintf+0+0)
	addwf	(??_sprintf+0+0),w
	addlw	(_dpowers-__stringbase)
	movwf	(??_sprintf+1+0)
	FNCALL _sprintf,stringtab
	fcall	stringdir
	movwf	0+(?___lwdiv)+02h
	incf	(??_sprintf+1+0),f
	movf	(??_sprintf+1+0),w
	FNCALL _sprintf,stringtab
	fcall	stringdir
	movwf	1+(?___lwdiv)+02h
	fcall	___lwdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(0+(?___lwdiv)),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	movlw	low(0Ah)
	movwf	0+(?___lwmod)+02h
	movlw	high(0Ah)
	movwf	(0+(?___lwmod)+02h)+1
	fcall	___lwmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	
l30001442:	
	line	1520
	movf	(sprintf@c),w
	movwf	(??_sprintf+0+0)
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0+0),w
	movwf	indf
	
l30001443:	
	movlw	(01h)
	movwf	(??_sprintf+0+0)
	movf	(??_sprintf+0+0),w
	addwf	(sprintf@sp),f
	
l30001444:	
	line	1473
	movlw	(-1)
	movwf	(??_sprintf+0+0)
	movf	(??_sprintf+0+0),w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec))&07fh,w
	xorlw	-1
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l30001441
u2930:
	
l30001445:	
	line	544
	clrw
	iorlw	01h
	addwf	(sprintf@f),f
	clrw
	iorlw	-01h
	addwf	(sprintf@f),w
	FNCALL _sprintf,stringtab
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c))&07fh,f
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l30001419
u2940:
	
l30001446:	
	line	1534
	clrc
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l44:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
; =============== function _sprintf ends ============

psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:
	line	1537
	signat	_sprintf,4698
	global	_count

; *************** function _count *****************
; Defined at:
;		line 56 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
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
psect	text159
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	56
	global	__size_of_count
	__size_of_count	equ	__end_of_count-_count
;LDR Base.c: 55: void count(int i)
;LDR Base.c: 56: {
	
_count:	
	opt stack 5
; Regs used in _count: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l30001466:	
;LDR Base.c: 57: int a,c,e,f;
;LDR Base.c: 59: a=i/1000;
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

	line	60
;LDR Base.c: 60: c=(i%1000)/100;
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

	line	61
;LDR Base.c: 61: e=(i%100)/10;
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

	line	62
;LDR Base.c: 62: f=i%10;
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

	line	64
;LDR Base.c: 64: command(0X80);
	movlw	(080h)
	fcall	_command
	line	65
;LDR Base.c: 65: data(a+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@a),w
	addlw	030h
	fcall	_data
	line	66
;LDR Base.c: 66: data(c+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@c),w
	addlw	030h
	fcall	_data
	line	67
;LDR Base.c: 67: data(e+48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(count@e),w
	addlw	030h
	fcall	_data
	line	68
;LDR Base.c: 68: data(f+48);
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

psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:
	line	69
	signat	_count,4216
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
;		_voltage
; This function uses a non-reentrant model
; 
psect	text160
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l30001491:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	
l30001492:	
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3151
	goto	u3150
u3151:
	goto	l30001494
u3150:
	
l30001493:	
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
	
l30001494:	
	line	14
	btfss	(___awdiv@dividend+1),7
	goto	u3161
	goto	u3160
u3161:
	goto	l216
u3160:
	
l30001495:	
	line	15
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	
l30001496:	
	line	16
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	xorwf	(___awdiv@sign),f
	
l216:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3171
	goto	u3170
u3171:
	goto	l30001506
u3170:
	
l30001497:	
	line	20
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	goto	l30001500
	
l30001498:	
	line	22
	movlw	01h
u3185:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3185
	
l30001499:	
	line	23
	movlw	(01h)
	movwf	(??___awdiv+0+0)
	movf	(??___awdiv+0+0),w
	addwf	(___awdiv@counter),f
	
l30001500:	
	line	21
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l30001498
u3190:
	
l30001501:	
	line	26
	movlw	01h
u3205:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3205
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3215
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3215:
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l30001504
u3210:
	
l30001502:	
	line	28
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	
l30001503:	
	line	29
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	
l30001504:	
	line	31
	movlw	01h
u3225:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3225
	
l30001505:	
	line	32
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l30001501
u3230:
	
l30001506:	
	line	34
	movf	(___awdiv@sign),w
	skipz
	goto	u3240
	goto	l30001508
u3240:
	
l30001507:	
	line	35
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	
l30001508:	
	line	36
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	
l214:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
; =============== function ___awdiv ends ============

psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:
	line	37
	signat	___awdiv,8314
	global	___lwmod

; *************** function ___lwmod *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    8[BANK0 ] unsigned int 
;  divisor         2   10[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  counter         1    7[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    8[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       5       0       0       0
;      Temp:     1
;      Total:    6
; This function calls:
; This function is called by:
;		_sprintf
; This function uses a non-reentrant model
; 
psect	text161
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l30001550:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l30001559
u3420:
	
l30001551:	
	line	9
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	goto	l30001554
	
l30001552:	
	line	11
	movlw	01h
u3435:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3435
	
l30001553:	
	line	12
	movlw	(01h)
	movwf	(??___lwmod+0+0)
	movf	(??___lwmod+0+0),w
	addwf	(___lwmod@counter),f
	
l30001554:	
	line	10
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l30001552
u3440:
	
l30001555:	
	line	15
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3455
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3455:
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l30001557
u3450:
	
l30001556:	
	line	16
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l30001557:	
	line	17
	movlw	01h
u3465:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3465
	
l30001558:	
	line	18
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l30001555
u3470:
	
l30001559:	
	line	20
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l84:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
; =============== function ___lwmod ends ============

psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:
	line	21
	signat	___lwmod,8314
	global	___lwdiv

; *************** function ___lwdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    3[BANK0 ] unsigned int 
;  divisor         2    5[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  quotient        2    1[BANK0 ] unsigned int 
;  counter         1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    3[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       7       0       0       0
;      Temp:     1
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		_sprintf
; This function uses a non-reentrant model
; 
psect	text162
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l30001538:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3351
	goto	u3350
u3351:
	goto	l30001548
u3350:
	
l30001539:	
	line	11
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	goto	l30001542
	
l30001540:	
	line	13
	movlw	01h
u3365:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3365
	
l30001541:	
	line	14
	movlw	(01h)
	movwf	(??___lwdiv+0+0)
	movf	(??___lwdiv+0+0),w
	addwf	(___lwdiv@counter),f
	
l30001542:	
	line	12
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l30001540
u3370:
	
l30001543:	
	line	17
	movlw	01h
u3385:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3385
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3395
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3395:
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l30001546
u3390:
	
l30001544:	
	line	19
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	
l30001545:	
	line	20
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	
l30001546:	
	line	22
	movlw	01h
u3405:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3405
	
l30001547:	
	line	23
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l30001543
u3410:
	
l30001548:	
	line	25
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l75:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
; =============== function ___lwdiv ends ============

psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:
	line	26
	signat	___lwdiv,8314
	global	_data

; *************** function _data *****************
; Defined at:
;		line 40 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
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
;		_count
;		_voltage
; This function uses a non-reentrant model
; 
psect	text163
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	40
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
;LDR Base.c: 39: void data(char data)
;LDR Base.c: 40: {
	
_data:	
	opt stack 4
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
;data@data stored from wreg
	movwf	(data@data)
	
l30001535:	
	line	41
;LDR Base.c: 41: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	
l30001536:	
	line	42
;LDR Base.c: 42: PORTD=data;
	movf	(data@data),w
	movwf	(8)	;volatile
	
l30001537:	
	line	43
;LDR Base.c: 43: pulse();
	fcall	_pulse
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
; =============== function _data ends ============

psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:
	line	44
	signat	_data,4216
	global	_command

; *************** function _command *****************
; Defined at:
;		line 33 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
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
;		_voltage
;		_main
; This function uses a non-reentrant model
; 
psect	text164
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	33
	global	__size_of_command
	__size_of_command	equ	__end_of_command-_command
;LDR Base.c: 32: void command(char data)
;LDR Base.c: 33: {
	
_command:	
	opt stack 4
; Regs used in _command: [wreg+status,2+status,0+pclath+cstack]
;command@data stored from wreg
	movwf	(command@data)
	
l30001532:	
	line	34
;LDR Base.c: 34: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l30001533:	
	line	35
;LDR Base.c: 35: PORTD=data;
	movf	(command@data),w
	movwf	(8)	;volatile
	
l30001534:	
	line	36
;LDR Base.c: 36: pulse();
	fcall	_pulse
	
l7:	
	return
	opt stack 0
GLOBAL	__end_of_command
	__end_of_command:
; =============== function _command ends ============

psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:
	line	37
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
;		_voltage
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
	
l30001448:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	
l30001449:	
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2951
	goto	u2950
u2951:
	goto	l30001451
u2950:
	
l30001450:	
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
	
l30001451:	
	line	13
	btfss	(___awmod@divisor+1),7
	goto	u2961
	goto	u2960
u2961:
	goto	l30001453
u2960:
	
l30001452:	
	line	14
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	
l30001453:	
	line	15
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l30001462
u2970:
	
l30001454:	
	line	16
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	goto	l30001457
	
l30001455:	
	line	18
	movlw	01h
u2985:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2985
	
l30001456:	
	line	19
	movlw	(01h)
	movwf	(??___awmod+0+0)
	movf	(??___awmod+0+0),w
	addwf	(___awmod@counter),f
	
l30001457:	
	line	17
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l30001455
u2990:
	
l30001458:	
	line	22
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3005
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3005:
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l30001460
u3000:
	
l30001459:	
	line	23
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	
l30001460:	
	line	24
	movlw	01h
u3015:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3015
	
l30001461:	
	line	25
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l30001458
u3020:
	
l30001462:	
	line	27
	movf	(___awmod@sign),w
	skipz
	goto	u3030
	goto	l30001464
u3030:
	
l30001463:	
	line	28
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	
l30001464:	
	line	29
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	
l294:	
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
;		___ftadd
; This function uses a non-reentrant model
; 
psect	text166
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.70\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l30001373:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2660
	goto	l30001375
u2660:
	
l30001374:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l30001378
u2670:
	
l30001375:	
	line	65
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l399
	
l30001377:	
	line	67
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2685:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2685

	
l30001378:	
	line	66
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l30001377
u2690:
	goto	l404
	
l30001379:	
	line	71
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	
l30001380:	
	line	72
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2701
	addwf	(___ftpack@arg+1),f
u2701:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2702
	addwf	(___ftpack@arg+2),f
u2702:

	
l30001381:	
	line	73
	movlw	01h
u2715:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2715

	
l404:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l30001379
u2720:
	goto	l30001383
	
l30001382:	
	line	76
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2735:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2735
	
l30001383:	
	line	75
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l30001382
u2740:
	
l409:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l410
u2750:
	
l30001384:	
	line	80
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l410:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	
l30001385:	
	line	82
	movf	(___ftpack@exp),w
	movwf	(??___ftpack+0+0)
	clrf	(??___ftpack+0+0+1)
	clrf	(??___ftpack+0+0+2)
	movlw	010h
u2765:
	clrc
	rlf	(??___ftpack+0+0),f
	rlf	(??___ftpack+0+1),f
	rlf	(??___ftpack+0+2),f
u2760:
	addlw	-1
	skipz
	goto	u2765
	movf	0+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+2),f
	
l30001386:	
	line	83
	movf	(___ftpack@sign),w
	skipz
	goto	u2770
	goto	l411
u2770:
	
l30001387:	
	line	84
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l411:	
	line	85
	
l399:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
; =============== function ___ftpack ends ============

psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:
	line	86
	signat	___ftpack,12411
	global	_pulse

; *************** function _pulse *****************
; Defined at:
;		line 25 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
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
psect	text167
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	25
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
;LDR Base.c: 24: void pulse()
;LDR Base.c: 25: {
	
_pulse:	
	opt stack 3
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l30001561:	
;LDR Base.c: 26: RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l30001562:	
	line	27
;LDR Base.c: 27: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30001563:	
	line	28
;LDR Base.c: 28: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	29
;LDR Base.c: 29: delay(1000);
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

psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:
	line	30
	signat	_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 19 in file "C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
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
psect	text168
	file	"C:\Users\gowth\Documents\PIC Programs\ADC\LDR Base\LDR Base.c"
	line	19
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;LDR Base.c: 16: int k1=0,k2=0;
;LDR Base.c: 18: void delay(int x)
;LDR Base.c: 19: {
	
_delay:	
	opt stack 2
; Regs used in _delay: [wreg]
	
l30001564:	
	
l30001565:	
	line	20
	movlw	low(-1)
	addwf	(delay@x),f
	skipnc
	incf	(delay@x+1),f
	movlw	high(-1)
	addwf	(delay@x+1),f
	movlw	high(-1)
	xorwf	((delay@x+1))&07fh,w
	skipz
	goto	u3485
	movlw	low(-1)
	xorwf	((delay@x))&07fh,w
u3485:

	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l30001565
u3480:
	
l2:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text169,local,class=CODE,delta=2
global __ptext169
__ptext169:
	line	21
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
