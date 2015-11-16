open Nodejs
open Colors_js

let query_target =
  "wget https://raw.github.com/ocaml/opam/master/shell/opam_installer.sh \
   -O - | sh -s /usr/local/bin/"

let () =
  let p = new process in
  let msg =
    Printf.sprintf "Running %s using %d memory" p#cwd p#memory_usage.heap_used
  in
  colorize ~msg ~styles:[Magenta_bg] []
  |> print_endline;

  ignore (Child_process.exec_sync query_target)
