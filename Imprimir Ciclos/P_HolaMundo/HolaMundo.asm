TITLE PLANTILLA MASM32	(PLANTILLA.asm)

;[===========================================================================================================]
;[                         Librer�as para 32 bis                                                             ]
;[===========================================================================================================]
	
	INCLUDE C:\Irvine\Irvine32.inc

;[===========================================================================================================]
;[                         �rea de Constantes                                                                ]
;[                                                                                                           ]
;[ En esta secci�n deber�s declarar tus valores constantes                                                   ]
;[===========================================================================================================]

	CR			EQU		0Dh			; retorno del cursos a la primera columna
	LF			EQU		0Ah			; nueva l�nea
	FSR			EQU		00h			; marcador de fin de string

;[===========================================================================================================]
;[                         �rea de Datos                                                                     ]
;[                                                                                                           ]
;[ En esta secci�n deber�s declarar tus bariables                                                            ]
;[===========================================================================================================]

	.DATA

	a       dword  125                                   




;[===========================================================================================================]
;[                         �rea de C�digo                                                                    ]
;[                                                                                                           ]
;[ En esta secci�n deber�s incluir el c�digo de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		 
		
		xor eax, eax
		



		mov eax,a				; Primer operando de 8 bits
		mov ebx,a
		shl eax,5
		shl ebx,2
		add eax,ebx

		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa