SRC := $(wildcard *.idr)
EXE := $(SRC:%.idr=build/exec/%)
RUN := $(SRC:%.idr=run/%)

.PHONY : all clean run what

build/exec/%: %.idr
	idris2 $< -o $(notdir $@)

all : $(EXE)

clean :
	rm -f $(EXE)

run : $(RUN)

run/% : build/exec/%
	@echo ====================
	@printf "$(notdir $@)\n"
	@echo ====================
	@echo 10 | $<
	@printf "\n\n"

what :
	@echo $(SRC)
	@echo $(EXE)
	@echo $(RUN)
