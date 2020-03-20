all: a.out payload

a.out: 
	gcc overflow.c -zexecstack -fno-stack-protector -g

payload:
	./exploit.py > payload

run: a.out payload
	cat payload - | setarch `uname -m` -R ./a.out

clean:
	rm -rf payload a.out