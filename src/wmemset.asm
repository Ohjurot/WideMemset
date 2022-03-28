global memset8
global memset16
global memset32
global memset64

section .text

; static void memset8(uint8_t val, void* dst, size_t count);
;                      CX            RDX        R8
memset8:
    mov byte AL, CL
    mov qword RCX, R8
    mov qword RDI, RDX
    rep stosb
    ret

; static void memset16(uint16_t val, void* dst, size_t count);
;                      CX            RDX        R8
memset16:
    mov word AX, CX
    mov qword RCX, R8
    mov qword RDI, RDX
    rep stosw
    ret

; static void memset32(uint32_t val, void* dst, size_t count);
;                      ECX           RDX        R8
memset32:
    mov dword EAX, ECX
    mov qword RCX, R8
    mov qword RDI, RDX
    rep stosd
    ret

; static void memset64(uint64_t val, void* dst, size_t count);
;                      RCX           RDX        R8
memset64:
    mov qword RAX, RCX 
    mov qword RCX, R8
    mov qword RDI, RDX
    rep stosq 
    ret
     