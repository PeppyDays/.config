vim.g.mapleader = " "

P = function(f)
  vim.print(vim.inspect(f))
  return f
end

local keymap = vim.keymap

-- Better up/down
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Buffers
keymap.set("n", "gp", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "gn", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "<leader>bn", "<cmd>new<CR>", { desc = "New buffer" })
keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap.set("n", "<leader>bd", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
keymap.set("n", "<leader>bo", function()
  Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
keymap.set("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Clear search, diff update and redraw
keymap.set("n", "<leader>ur", "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / Clear hlsearch / Diff Update" })

-- Better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Location list
keymap.set("n", "<leader>xl", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })

-- Quickfix list
keymap.set("n", "<leader>xq", function()
  local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Quickfix List" })

keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- Resize with arrows
keymap.set("n", "<A-Down>", "<cmd>resize -4<cr>", { desc = "Smaller horizontal split" })
keymap.set("n", "<A-Up>", "<cmd>resize +4<cr>", { desc = "Bigger horizontal split" })
keymap.set("n", "<A-Left>", "<cmd>vertical resize -4<cr>", { desc = "Smaller vertical split" })
keymap.set("n", "<A-Right>", "<cmd>vertical resize +4<cr>", { desc = "Bigger vertical split" })

-- Window
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wz", "<C-w>|<C-w>_", { desc = "Max out the window" })
keymap.set("n", "<leader>ws", "<C-w>x", { desc = "Swap current with next" })
keymap.set("n", "<leader>wx", "<C-w>o", { desc = "Close all other windows" })



-- copy & paste
keymap.set("x", "p", '"_dP')
keymap.set("x", "Y", "y$", { desc = "Yank to end of line" })
keymap.set("n", "<leader>DD", '"_dd', { desc = "Delete without changing register" })
keymap.set("v", "<leader>DD", '"_dd', { desc = "Delete without changing register" })

-- scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set('n', '<C-f>', '<C-f>zz')
keymap.set('n', '<C-b>', '<C-b>zz')
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- indenting
keymap.set("v", "<s-tab>", "<gv", { desc = "Indent left" })
keymap.set("v", "<tab>", ">gv", { desc = "Indent right" })
keymap.set("n", "<s-tab>", "<<", { desc = "Indent left" })
keymap.set("n", "<tab>", ">>", { desc = "Indent right" })

-- moving blocks up and down
keymap.set("v", "<C-g>", "<cmd>m .+1<CR>gv=gv", { desc = "Move text down" })
keymap.set("v", "<C-t>", "<cmd>m .-2<CR>gv=gv", { desc = "Move text up" })

-- other
keymap.set("n", "<leader>mm", "<cmd>messages<cr>", { desc = "Show messages" })
keymap.set("n", "}", '<cmd>execute "keepjumps norm! }"<cr>', { desc = "Next Paragraph" })
keymap.set("n", "{", '<cmd>execute "keepjumps norm! {"<cr>', { desc = "Previous Paragraph" })

keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit" })
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
