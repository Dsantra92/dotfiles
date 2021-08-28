require('bufferline').setup {
  options = {
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
    show_close_icon = false,
  }
}

