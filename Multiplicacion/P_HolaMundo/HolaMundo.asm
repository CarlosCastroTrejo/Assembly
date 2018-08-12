TITLE PLANTILLA MASM32	(PLANTILLA.asm)

;[===========================================================================================================]
;[                         Librerías para 32 bis                                                             ]
;[===========================================================================================================]
	
	INCLUDE C:\Irvine\Irvine32.inc

;[===========================================================================================================]
;[                         Área de Constantes                                                                ]
;[                                                                                                           ]
;[ En esta sección deberás declarar tus valores constantes                                                   ]
;[===========================================================================================================]

	CR			EQU		0Dh			; retorno del cursos a la primera columna
	LF			EQU		0Ah			; nueva línea
	FSR			EQU		00h			; marcador de fin de string

;[===========================================================================================================]
;[                         Área de Datos                                                                     ]
;[                                                                                                           ]
;[ En esta sección deberás declarar tus bariables                                                            ]
;[===========================================================================================================]

	.DATA

	val1       dword  32h
	val2       dword  20h


	letrero1 BYTE "Valor con el que inicializo Ax",CR,LF,FSR
	letrero2 BYTE "Valor a multiplicar a Ax",CR,LF,FSR
	letrero3 BYTE "Valor a restar a Ax",CR,LF,FSR
	letrero4 BYTE "El resultado final es: ",CR,LF,FSR


;[===========================================================================================================]
;[                         Área de Código                                                                    ]
;[                                                                                                           ]
;[ En esta sección deberás incluir el código de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		 
		
	
		mov eax,val1
		mov ebx, val2
		mul ebx					; Multiplica simpre lo que hay en eax

	
		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa