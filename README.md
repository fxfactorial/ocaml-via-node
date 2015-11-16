This is a command line tool to install `OCaml` and `opam` on your
machine. 

Install and run with it with:

```shell
$ npm install install_ocaml -g
$ install_ocaml
```

Yay, now you the OCaml compilers `ocamlc`, `ocamlopt` and the repl
`ocaml` installed on your system. You also have `opam`, OCaml's
package manager installed.

Be sure to read my [blog post](http://hyegar.com/blog/2015/10/19/so-you're-learning-ocaml/) that will get you up to speed on
everything OCaml including the build systems, jargon and things you
can do.

# Fun Facts!

`install_ocaml` was written in OCaml, in code.ml, and compiled to
JavaScript with `js_of_ocaml`.
