# Config
USB=-U

# Path to the NXC compiler relative to the Makefile
NXC=nbc/NXT/nbc
NXTCOM=nbc/NXT/nxtcom

# Options to pass to the compiler
OPTIONS=-Z2

# Change the name of the program helloworld.rxe to be whatever you want
# to name the final executable
PROGRAM=Universal-Add
#PROGRAM=MoveSensor
#PROGRAM=CalibrateSensor

all: $(PROGRAM).rxe download

$(PROGRAM).rxe: $(PROGRAM).nxc Makefile
	$(NXC) -O=build/$(PROGRAM).rxe $(OPTIONS) $(PROGRAM).nxc

download: $(PROGRAM).rxe
	$(NXTCOM) $(USB) build/$(PROGRAM).rxe

clean:
	/bin/rm -vf build/$(PROGRAM).rxe
