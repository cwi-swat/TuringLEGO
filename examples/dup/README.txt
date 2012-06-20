There are two simple Turing Machine programs that duplicate a unary number.

copy2 is the naïve implementation of concatenating two copy (cf.) programs.
It requires the first bit set to 0 in order to find it back.
(In the Rascal emulator you cannot move backwards farther than your starting position)

e.g.: 0110… ⇒ 011011110…

dup is a slightly less naïve but stupid implementation, which does what copy (cf.) does,
but adds two bits on each iteration.
It shows how Turing Machine programming does not have to be rocket science.

-- Vadim Zaytsev, http://grammarware.net
