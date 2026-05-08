local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.register_source("obsidian_refs", require("config.obsidian_refs_source").new())

cmp.setup({
  snippet = {
    expand = function(args) luasnip.lsp_expand(args.body) end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"]      = cmp.mapping.confirm({ select = true }),
    ["<C-e>"]     = cmp.mapping.abort(),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then luasnip.expand_or_jump()
      else fallback() end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then luasnip.jump(-1)
      else fallback() end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources(
    { { name = "nvim_lsp" }, { name = "luasnip" } },
    { { name = "buffer" },   { name = "path" } }
  ),
})

cmp.setup.filetype("markdown", {
  sources = {
    { name = "obsidian" },
    { name = "obsidian_refs" },
    { name = "obsidian_new" },
    { name = "obsidian_tags" },
  },
})
