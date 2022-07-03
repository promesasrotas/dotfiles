local wk = require("which-key")

local Terminal = require ('toggleterm.terminal').Terminal
local toggle_float = function ()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_lazygit = function ()
  local lazygit = Terminal:new({cmd = 'lazygit',direction = "float"})
  return lazygit:toggle()
end

local mappings = {
  name = "Basic Commands",
  q = {":q<CR>", "Quit   "},
  Q = {":wq<CR>", "Save & Quite   "},
  w = {":w<CR>", "Save   "},
  x = {":q!<CR>", "Close    "},
  f = {":Telescope find_files<CR>", "Find files   "},
  e = {":NvimTreeToggle<CR>", "File explorer   "},
  c = {":FineCmdline<CR>", "Command popup   "},
  z = {":ZenMode<CR>", "Zen mode   "},
  t = {toggle_float, "Floating Terminal ﬑  "},
  n = {":BufferLineCycleNext<CR>", "Next buffer ﲒ "},
  p = {":BufferLineCyclePrev<CR>", "Prev buffer ﲑ "},
  h = {":FocusSplitLeft<CR>", "Split left  "},
  j = {":FocusSplitDown<CR>", "Split down  "},
  k = {":FocusSplitUp<CR>", "Split up  "},
  l = {":FocusSplitRifht<CR>", "Split Right  "},

  L = {
    name = "Code accion",
    C = {":Lspsaga yank_line_diagnostics<CR>", "Copy diagnostic to clipboard"},
    s = {":Lspsaga show_line_diagnostics<CR>", "Show diagnostic"},
    v = {":Lspsaga toggle_virtual_text<CR>", "Show virtual text"},
    c = {":Lspsaga code_action<CR>", "Code action"},
    r = {":Lspsaga rename<CR>", "Rename"},
    dn = {":Lspsaga diagnostic_jump_next<CR>", "Next diagnostic"},
    dp = {":Lspsaga diagnostic_jump_prev<CR>", "Prev diagnostic"},
  }
}

local opts = {prefix = '<leader>'}
wk.register(mappings, opts)

