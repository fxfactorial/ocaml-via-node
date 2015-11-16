open Nodejs
open Colors_js

let query_target =
  "wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh \
   -O - | sh -s /usr/local/bin/"

let () =
  match new process#platform with
  | Win32 -> print_endline "Can't install opam on Windows"
  | _ -> 
     let msg = "About to compile and install OCaml compilers and opam, \n \
		this will take a few minutes please be patience"
     in
     colorize ~msg ~styles:[Magenta_bg] []
     |> print_endline;
     try

       ignore (Child_process.exec_sync query_target);

     with _ ->
       let msg = "Finished, now you have ocaml, ocamlc, \n \
		  ocamlopt and opam installed on your machine" in

       colorize ~msg ~styles:[Yellow_bg; Inverse] []
       |> print_endline
