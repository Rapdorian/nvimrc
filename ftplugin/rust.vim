let g:rustfmt_autosave = 1

let g:ale_rust_cargo_use_clippy = 1

let g:ale_linters = {'rust': ['cargo', 'rls']}
let g:ale_linters_ignore = {'rust': ['rls']}

let termdebugger = 'rust-gdb'

runtime ale_keys.vim
