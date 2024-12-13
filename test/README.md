cd ..

opam install oasis batteries ounit

make

sudo apt install gcc-multilib

./nqcc.byte examples/binops/ex1.c

./nqcc examples/binops/ex1.c

ocaml setup.ml -configure --enable-tests

make test

./test_examples.sh

Notes:
- https://compiler-explorer.com/z/9Eojhb5xW