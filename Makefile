all:	main1 main2 run

main1:
	nasm -f elf64 mult.asm
	nasm -f elf64 arr.asm

main2:
	gcc *.o *.c


run:
	./a.out