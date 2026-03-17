CFLAGS = -ffreestanding -I/home/jadenv/gnu-efi-3.0.15/inc/ -fpic -fno-stack-protector -fno-stack-check -fshort-wchar -mno-red-zone -maccumulate-outgoing-args -c 
LDFLAGS = -shared -Bsymbolic -L/home/jadenv/gnu-efi-3.0.15/x86_64/lib -L/home/jadenv/gnu-efi-3.0.15/x86_64/gnuefi -T/home/jadenv/gnu-efi-3.0.15/gnuefi/elf_x86_64_efi.lds /home/jadenv/gnu-efi-3.0.15/x86_64/gnuefi/crt0-efi-x86_64.o
main:
	gcc $(CFLAGS) ./src/main.c -o ./build/main.o 
	gcc $(LDFLAGS) ./build/main.o -o ./build/main.so -lgnuefi -lefi
