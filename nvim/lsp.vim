lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.julials.setup{
	on_new_config = function(new_config,new_root_dir)
	  server_path = "/path/to/directory/containing/LanguageServer.jl/src"
	  cmd = {
		"julia",
		"--project=/home/deebyo/.julia/packages/LanguageServer/jiDTR/src/",
		"--startup-file=no",
		"--history-file=no",
		"-e", [[
		  using Pkg;
		  Pkg.instantiate()
		  using LanguageServer; using SymbolServer;
		  depot_path = get(ENV, "JULIA_DEPOT_PATH", "")
		  project_path = dirname(something(Base.current_project(pwd()), Base.load_path_expand(LOAD_PATH[2])))
		  # Make sure that we only load packages from this environment specifically.
		  @info "Running language server" env=Base.load_path()[1] pwd() project_path depot_path
		  server = LanguageServer.LanguageServerInstance(stdin, stdout, project_path, depot_path);
		  server.runlinter = true;
		  run(server);
		]]
	};
	  new_config.cmd = cmd
	end

}
require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}
EOF
