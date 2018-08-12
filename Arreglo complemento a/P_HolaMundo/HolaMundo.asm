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

	intarray   BYTE  00110100b,11111011b                   
	checksum   word  ?
	variable1  BYTE ?



;[===========================================================================================================]
;[                         �rea de C�digo                                                                    ]
;[                                                                                                           ]
;[ En esta secci�n deber�s incluir el c�digo de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		 
		
		xor al, al
		

		mov di,OFFSET intarray		; 1: EDI=address of beginning of intarray
		mov cx,LENGTHOF intarray	; 2: Initialize loop counter in 4 // 4 values in the array
		mov checksum,0					; 3: Sum=0 // Initialize the sum in 0

	L1:								; 4: Mark beginning of loop
		mov variable1,di
		not variable1
		add variable1,1					; 5: Add an integer
		add al,variable1
		mov variable1,0
		add edi,TYPE intarray		; 6: Point to next element
		loop L1						; 7: Repeat until  EXC=0

		mov checksum,al

	

		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa