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

	a       byte  25
	b		byte  255
	ce		byte  47
	d		dword	0




;[===========================================================================================================]
;[                         �rea de C�digo                                                                    ]
;[                                                                                                           ]
;[ En esta secci�n deber�s incluir el c�digo de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		 
		
		xor eax, eax
		xor ebx,ebx
		xor ecx, ecx
		xor edx,edx
		xor esi,esi
		xor edi,edi



		mov al,a				; Primer operando de 8 bits
		mov bl,b
		mul bl					; El resultado es de 16 bits y queda en Ax
		mov cl, ce				; Mueve 
		mul cx					; Se multiplican 8 bits por 16 bits, el resultado es de 24 bits y queda Dx:Ax
		mov ebx,edx				
		shl edx,16				; Para unir la Dx:Ax, uso Edx de 32 bits y comienzo a desplazar el resultado de 16 bits
		add edx,eax				; Sumo (puede ser con un or tambien) Ax pra obtener el resultado final de la multiplicacion
		mov d,edx				; Resultado en D, se guarda en la celda de memoria asignada por D
	
		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa