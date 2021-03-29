require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "css", "html", "javascript", "json", "lua", "php", "toml", "yaml", "typescript"
  }, -- had to leave out typescript because of tar error
  highlight = {
    enable = true -- false will disable the whole extensio
  },
  indent = {enable = false},
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm"
    }
  },
  refactor = {
    highlight_definitions = {enable = true},
    highlight_current_scope = {enable = true},
    smart_rename = {enable = true, keymaps = {smart_rename = "grr"}},
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>"
      }
    }
  }

}

