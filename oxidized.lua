-- Ferrum Tactus
-- oxidized.lua
-- Rust first color scheme
-- Inspired by Black Metal from metalelf0
-- Author: Arisa Snowbell

local vim = vim

local c = {
  black		= "#000000",
  gray0		= "#121212",
  gray1		= "#222222",
  gray2		= "#333333",
  gray3		= "#444444",
  gray4		= "#888888",
  gray5		= "#999999",
  gray6		= "#aaaaaa",
  white		= "#c1c1c1",
  teal		= "#5f8787",
  copper	= "#a06666",
  reddish	= "#dd9999",
}

-- Helper for highlights
local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Core editor highlights
hi("Normal",       { fg = c.white, bg = c.black })
hi("Bold",         { bold = true })
hi("Debug",        { fg = c.teal })
hi("Directory",    { fg = c.gray4 })
hi("Error",        { fg = c.black , bg = c.gray4 })
hi("ErrorMsg",     { fg = c.teal, bg = c.black })
hi("Exception",    { fg = c.teal })
hi("FoldColumn",   { fg = c.gray6, bg = c.gray0 })
hi("Folded",       { fg = c.gray2, bg = c.gray0 })
hi("IncSearch",    { fg = c.gray0, bg = c.gray6 })
hi("Italic",       { italic = true })
hi("Macro",        { fg = c.teal })
hi("MatchParen",   { bg = c.gray2 })
hi("ModeMsg",      { fg = c.reddish })
hi("MoreMsg",      { fg = c.reddish })
hi("Question",     { fg = c.gray4 })
hi("Search",       { fg = c.gray0, bg = c.copper })
hi("Substitute",   { fg = c.gray0, bg = c.copper })
hi("SpecialKey",   { fg = c.gray2 })
hi("TooLong",      { fg = c.teal })
hi("Underlined",   { fg = c.teal, underline = false })
hi("Visual",       { bg = c.gray1 })
hi("VisualNOS",    { fg = c.teal })
hi("WarningMsg",   { fg = c.teal })
hi("WildMenu",     { fg = c.teal, bg = c.copper })
hi("Title",        { fg = c.gray4 })
hi("Conceal",      { fg = c.gray4, bg = c.black })
hi("Cursor",       { fg = c.black, bg = c.white })
hi("NonText",      { fg = c.gray2 })
hi("LineNr",       { fg = c.gray2, bg = "NONE" })
hi("SignColumn",   { fg = c.gray2, bg = "NONE" })
hi("StatusLine",   { fg = c.gray5, bg = c.gray1 })
hi("StatusLineNC", { fg = c.gray2, bg = c.gray0 })
hi("VertSplit",    { fg = c.gray1, bg = c.gray1 })
hi("ColorColumn",  { bg = c.gray0 })
hi("CursorColumn", { bg = c.gray0 })
hi("CursorLine",   { bg = c.gray0 })
hi("CursorLineNr", { fg = c.gray5, bg = "NONE" })
hi("LspInlayHint", { fg = c.gray2, bg = "NONE" })
hi("QuickFixLine", { bg = c.gray0 })
hi("PMenu",        { fg = c.white, bg = c.gray0 })
hi("PMenuSel",     { fg = c.gray0, bg = c.white })
hi("TabLine",      { fg = c.gray2, bg = c.gray0 })
hi("TabLineFill",  { fg = c.gray2, bg = c.gray0 })
hi("TabLineSel",   { fg = c.reddish, bg = c.gray0 })

-- Standard syntax
hi("Boolean",     { fg = c.gray6 })
hi("Character",   { fg = c.reddish })
hi("Comment",     { fg = c.gray2, italic = true })
hi("Conditional", { fg = c.gray5 })
hi("Constant",    { fg = c.gray6 })
hi("Define",      { fg = c.gray5 })
hi("Delimiter",   { fg = c.gray3 })
hi("Float",       { fg = c.gray6 })
hi("Function",    { fg = c.gray4 })
hi("Identifier",  { fg = c.white })
hi("Include",     { fg = c.gray4 })
hi("Keyword",     { fg = c.gray5 })
hi("Label",       { fg = c.copper })
hi("Number",      { fg = c.gray6 })
hi("Operator",    { fg = c.white })
hi("PreProc",     { fg = c.copper })
hi("Repeat",      { fg = c.copper })
hi("Special",     { fg = c.gray6 })
hi("SpecialChar", { fg = c.gray3 })
hi("Statement",   { fg = c.teal })
hi("StorageClass",{ fg = c.copper })
hi("String",      { fg = c.reddish })
hi("Structure",   { fg = c.gray5 })
hi("Tag",         { fg = c.copper })
hi("Todo",        { fg = c.copper, bg = c.gray0 })
hi("Type",        { fg = c.copper })
hi("Typedef",     { fg = c.copper })

-- Rust support
-- hi("rustFunctionCall", { fg = c.gray4 })
-- hi("rustFuncArg",      { fg = c.gray6 })
hi("rustUnsafe",       { fg = c.teal })
hi("@lsp.mod.unsafe.rust", { fg = c.teal })
hi("@lsp.typemod.keyword.unsafe.rust", { fg = c.teal })

-- hi("rustAttribute", { fg = c.copper })
hi("rustFoldBraces", { fg = c.copper })
-- hi("@lsp.mod.crateRoot.rust", { fg = c.copper })
-- hi("rustAttribute", { fg = c.teal })
hi("@lsp.typemod.builtinAttribute.attribute.rust", { fg = c.teal })
hi("@lsp.mod.attribute.rust", { fg = c.teal })
hi("@lsp.type.deriveHelper.rust", { fg = c.teal})
hi("@lsp.typemod.attributeBracket.attribute.rust", { fg = c.copper })
hi("@lsp.typemod.generic.attribute.rust", { fg = c.teal })
hi("@lsp.typemod.generic.macro.rust", { fg = c.white })
hi("@lsp.mod.number.rust", { fg = c.white })
hi("rustDecNumber", { fg = c.white })
hi("rustHexNumber", { fg = c.white })
hi("@lsp.typemod.number.attribute.rust", { fg = c.white })
hi("@lsp.typemod.operator.attribute.rust", { fg = c.white  })
hi("@lsp.type.typeAlias.rust", { fg = c.copper })
-- hi("@lsp.type.operator.rust", { fg = c.copper })
hi("@lsp.type.operator.rust", { fg = c.white })
hi("@lsp.mod.controlFlow.rust", { fg = c.gray5 })
hi("@lsp.mod.callable.rust", { fg = c.gray4 })
-- hi("@lsp.mod.procMacro.rust", { fg = c.teal })
-- hi("@lsp.mod.macro.rust", { fg = c.teal })
hi("@lsp.typemod.string.macro.rust", { fg = c.reddish })
hi("rustMacro",        { fg = c.teal })
hi("@lsp.type.macro.rust", { fg = c.teal })
hi("rustAttributeParenthesizedParens", { fg = c.copper })
hi("@lsp.typemod.string.attribute.rust", { fg = c.reddish })
hi("@lsp.type.formatSpecifier.rust", { fg = c.teal })
hi("@lsp.typemod.generic.macro.rust", { fg = c.white })
hi("@lsp.type.builtinType.rust", { fg = c.copper })
hi("@lsp.typemod.struct.attribute.rust", { fg = c.copper })
hi("@lsp.typemod.variable.attribute.rust", { fg = c.teal })
hi("@lsp.type.derive.rust", { fg = c.teal })
hi("@lsp.type.interface.rust", { fg = c.copper })
hi("rustStruct",       { fg = c.copper })
hi("rustStructure",       { fg = c.gray5})
-- hi("rustEnum",         { fg = c.gray5 })
-- hi("rustTrait",        { fg = c.gray5 })
hi("@lsp.typemod.variable.macro.rust", { fg = c.white })
hi("rustType",         { fg = c.copper })
hi("rustKeyword",      { fg = c.gray5 })
hi("rustLifetime",      { fg = c.teal })
hi("rustSigil",         { fg = c.copper })
hi("rustModPathSep",    { fg = c.white })

-- Spell highlighting
hi("SpellBad",   { undercurl = false, sp = c.teal })
hi("SpellLocal", { undercurl = false, sp = c.gray6 })
hi("SpellCap",   { undercurl = false, sp = c.gray4 })
hi("SpellRare",  { undercurl = false, sp = c.gray5 })

-- Remove underlines for LSP diagnostics
hi("DiagnosticError",   { fg = "#fb4934", bg = "NONE", underline = false })
hi("DiagnosticWarn",    { fg = "#fabd2f", bg = "NONE", underline = false })
hi("DiagnosticInfo",    { fg = "#83a598", bg = "NONE", underline = false })
hi("DiagnosticHint",    { fg = "#8ec07c", bg = "NONE", underline = false })

-- Remove virtual text underline if used
hi("DiagnosticUnderlineError", { undercurl = false, underline = false })
hi("DiagnosticUnderlineWarn",  { undercurl = false, underline = false })
hi("DiagnosticUnderlineInfo",  { undercurl = false, underline = false })
hi("DiagnosticUnderlineHint",  { undercurl = false, underline = false })

-- LSP semantic token support (Neovim >= 0.10)
local semantic = {
  ["variable"]       = { fg = c.white },
  ["parameter"]      = { fg = c.white },
  ["function"]       = { fg = c.gray4 },
  ["method"]         = { fg = c.gray4 },
  ["keyword"]        = { fg = c.gray5 },
  ["operator"]       = { fg = c.copper },
  ["type"]           = { fg = c.copper },
  ["struct"]         = { fg = c.copper },
  ["class"]          = { fg = c.copper },
  ["enum"]           = { fg = c.gray5 },
  ["interface"]      = { fg = c.gray5 },
  ["enumMember"]     = { fg = c.reddish },
  ["macro"]          = { fg = c.teal },
  ["property"]       = { fg = c.white },
  ["namespace"]      = { fg = c.white },
  ["punctuation"]    = { fg = c.white },
  ["comment"]        = { fg = c.gray2, italic = true },
  ["string"]         = { fg = c.reddish },
  ["number"]         = { fg = c.gray6 },
}

-- TODO: Do TodoBgNOTE colors

for group, opts in pairs(semantic) do
  hi("@"..group, opts)
end
