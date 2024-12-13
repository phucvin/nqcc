cd ..

sudo apt install opam

opam init

opam install oasis batteries ounit

eval $(opam env)

eval `opam config env`

opam install ocamlfind

./nqcc.byte examples/binops/ex1.c