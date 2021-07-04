args = $(foreach a,$($(subst -,_,$1)_args),$(if $(value $a),$a="$($a)"      ))

run:
	gcc learn.c -o learn && ./learn
clean:
	rm -f learn
compile:
	gcc learn.c -o learn
new :
	rm -f learn
	#@read -p "Enter file name: " F;
	#mv learn.c $F.c
	mv learn.c $(args,$@).c
	echo " " > learn.c

