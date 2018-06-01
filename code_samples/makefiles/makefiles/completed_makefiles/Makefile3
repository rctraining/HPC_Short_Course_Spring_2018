# In this Makefile, we add a rule for generating .o files from .c source files

# We also use the $@ and $^ variables in the rule for hello.exe
# to refer to hello.exe and {hello.c hellofunc.c} respectively.

# Finally, we include the file machine.def, which defines
# our compiler and compiler-flag variables.  These may change
# from machine to machine.

# As a result, only machine.def needs to be changed
# when moving our work to a new machine

include machine.def

CFLAGS = $(OPT_FLAGS) $(INCLUDE_FLAGS)
PROG = hello.exe

.PHONY: clean

%.o: %.c
	@echo "Compling "$@ " using " $<
	$(CC) $(CFLAGS) -c $< -o $@

$(PROG): hello.o hellofunc.o
	@echo "Compiling " $(PROG) "."
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f *.o
	rm -f $(PROG)
