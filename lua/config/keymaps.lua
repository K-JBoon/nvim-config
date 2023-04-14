-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")

-- Normal Mode
wk.register({
  a = {
    name = "AI",
    a = { "<cmd>NeoAI<cr>", "Open NeoAI" },
    i = { ":NeoAIInjectCode Wrap your response in a code block. ", "NeoAI Inject Code" },
    r = { ":NeoAIInject ", "NeoAI Inject Response " },
  },
}, { prefix = "<leader>" })

-- Visual Mode
wk.register({
  a = {
    name = "AI",
    c = { "<cmd>NeoAIContext<cr>", "Add NeoAI Context" },
    i = { ":NeoAIInjectContextCode Wrap your response in a code block. ", "NeoAI Inject Code with context" },
    r = { ":NeoAIInjectContext ", "NeoAI Inject Response with context" },
  },
}, { prefix = "<leader>", mode = "v" })
