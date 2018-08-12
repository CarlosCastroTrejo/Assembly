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

        arr1_fuente   byte  "A","B","C","D","E"
		fstr1 db		CR,LF, FSR   
		
		arr1_dest  byte    5 dup("X")
		fstr2	db  CR,LF,FSR

		arr2_fuente   DW  "ZZ","YY","XX","WW","AA"
		fstr3  db CR,LF,FSR

		arr2_dest   DW  5 dup("XX")
		fstr4 db CR,LF,FSR




;[===========================================================================================================]
;[                         Área de Código                                                                    ]
;[                                                                                                           ]
;[ En esta sección deberás incluir el código de tu programa                                                  ]
;[===========================================================================================================]

	.CODE
	
	PRINCIPAL:
		call 	Clrscr			; Limpia pantalla
		 
		mov esi,SIZEOF arr1_fuente		; Guarda en esi el tamano del arreglo fuente
		xor edi,edi						; Limpia edi, y la dejo en 0

	CICLO_1:
		dec esi							; Apunta a la ultima posicion
		mov al,arr1_fuente[esi]			; Mueve al ultimo valor apuntado por esi, al principio al final 
		mov arr1_dest[edi],al			; Mueve al al arreglo destino en la posicion al principio en cero
		inc edi							; Incrementa el puntero del arreglo destino
		cmp esi,0						; Compara esi con 0
		jne CICLO_1						; Si no es igual a cero, repite el proceso hasrq que acab el arreglo

		mov esi,SIZEOF arr2_fuente		; Repite el proceso para el segundo arreglo trabajando a 16 bits
		xor edi,edi

	CICLO_2:
		sub esi,TYPE arr2_fuente		; Decrementa ESI puntero al arreglo fuente en el # de bytes al tipo de arreglo
		mov ax, arr2_fuente[esi]		
		mov arr2_dest[edi],ax
		add edi,TYPE arr2_dest
		cmp esi,0
		jne CICLO_2

	FIN:
		mov	edx,OFFSET arr1_fuente
		call Writestring			; Despliega arreglo 1
		mov edx, OFFSET arr1_dest	
		call Writestring			; Despliega el arrelgo 1 al reves

		mov edx,OFFSET fstr1
		call Writestring			; Salta una linea

		mov edx, OFFSET arr2_fuente	
		call Writestring			; Despliega el arreglo 2
		mov edx, OFFSET arr2_dest
		call Writestring			; Regresa el arreglo 2 al reves

		call DumpRegs			; despliega los registros
		call ReadInt
		exit					; fin de programa


	END PRINCIPAL				; indica el punto de arranque del programa