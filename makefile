CFLAGS = -ffreestanding -I/home/jadenv/gnu-efi-3.0.15/inc/ -I/home/jadenv/gnu-efi-3.0.15/inc/x86_64 -I/home/jadenv/gnu-efi-3.0.15/inc/protocol -c 

LDFLAGS = -nostdlib -Wl,-dll -shared -Wl,--subsystem,10 -e efi_main
main:
	x86_64-w64-mingw32-gcc $(CFLAGS) -o ./build/main.o ./src/main.c 
	x86_64-w64-mingw32-gcc $(CFLAGS) -o ./build/data.o /home/jadenv/gnu-efi-3.0.15/lib/data.c 
	x86_64-w64-mingw32-gcc $(LDFLAGS) -o ./build/BOOTX64.EFI ./build/main.o ./build/data.o
