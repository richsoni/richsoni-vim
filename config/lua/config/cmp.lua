local cmp = require("cmp")
local luasnip = require("luasnip")

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

cmp.register_source("wiki_links", require("config.cmp_wiki").new())

-- Obsidian-style [[ completion: suggest every wiki link referenced anywhere in
-- the vault, including ones that don't have a file yet. The keyword pattern
-- starts after [[ so multi-word names ([[Terracotta Plant Watering]]) filter
-- as a single token instead of breaking at the first space.
cmp.setup.filetype("markdown", {
  completion = {
    keyword_pattern = [==[\[\[\zs[^\]]*]==],
  },
  sources = {
    { name = "wiki_links" },
    { name = "nvim_lsp" },
  },
})
