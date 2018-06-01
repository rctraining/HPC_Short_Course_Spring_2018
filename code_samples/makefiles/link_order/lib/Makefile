FC = ifort
all: libv1.so libv2.so libv3.so

%.so: %.f90
	$(FC) -fPIC -shared $< -o $@
clean:
	rm *.so
