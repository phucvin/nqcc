cd ..

sudo apt install opam

opam init

opam install oasis batteries ounit

opam install ocaml-lsp-server ocamlformat

eval $(opam env)

eval `opam config env`

opam install ocamlfind

./nqcc.byte examples/binops/ex1.c