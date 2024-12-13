cd ..

sudo apt install opam

opam init

opam update

opam install ocamlfind oasis batteries ounit

opam install ocaml-lsp-server ocamlformat

eval $(opam env)

make

./nqcc.byte examples/binops/ex1.c


Notes:
- https://compiler-explorer.com/z/9Eojhb5xW