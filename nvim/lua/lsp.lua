-- Helper function

local lspconfig = require("lspconfig")
-- local coq = require "coq"

local function lsp_setup(name, config)
      lspconfig[name].setup(config)
      -- lspconfig[name].setup(coq.lsp_ensure_capabilities())
    end

------------
-- Python --
------------
lsp_setup('pyright', {})

-----------
-- Julia --
-----------
lsp_setup("julials", {
      on_attach = on_attach,
    })

