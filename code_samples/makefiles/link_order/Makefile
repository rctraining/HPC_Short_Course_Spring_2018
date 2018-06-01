FC = ifort
all:
	@$(MAKE) --no-print-directory -C lib clean
	@$(MAKE) --no-print-directory -C lib all
	make --no-print-directory clean
	make --no-print-directory prog1
	make --no-print-directory prog2
	make --no-print-directory prog3
	make --no-print-directory prog4

prog1:
	$(FC) main.f90 -o prog1 -Llib/ -lv1 -lv2 -lv3

prog2:
	$(FC) main.f90 -o prog2 -Llib/ -lv1 -lv3 -lv2

prog3:
	$(FC) main.f90 -o prog3 -Llib/ -lv3 -lv2 -lv1
prog4:
	$(FC) main.f90 -o prog4 -Llib/ -lv2 -lv3 -lv1

clean:
	@rm -rf prog1
	@rm -rf prog2
	@rm -rf prog3
	@rm -rf prog4
