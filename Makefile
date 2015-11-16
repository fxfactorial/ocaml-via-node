
all:
	@ocamlfind ocamlc -package colors_js -linkpkg code.ml
	@js_of_ocaml a.out --custom-header="#!/usr/bin/env node" -o ocaml.js
	@rm -f code.cmi code.cmo code.cmt a.out

prep:
	@rm -f code.cmi code.cmo code.cmt a.out node_modules
clean:
	@rm -f code.cmi code.cmo code.cmt a.out ocaml.js
