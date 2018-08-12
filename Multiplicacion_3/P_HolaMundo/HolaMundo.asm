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

	a      word   1100001111111111b                                   




;[===========================================================================================================]
;[                         Área de Código                                                                    ]
;[                                                                                                           ]
;[ En esta sección deberás incluir el código de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		 
		
		xor eax, eax
		



		mov ax,a				; Primer operando de 8 bits

		shr ax,10
		
		call WriteBin
		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa