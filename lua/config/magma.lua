-- Key mappings for Magma
vim.keymap.set("n", "<LocalLeader>r",  ":MagmaEvaluateOperator<CR>", { silent = true, expr = true })
vim.keymap.set("n", "<LocalLeader>rr", ":MagmaEvaluateLine<CR>",     { silent = true })
vim.keymap.set("x", "<LocalLeader>r",  ":<C-u>MagmaEvaluateVisual<CR>", { silent = true })
vim.keymap.set("n", "<LocalLeader>rc", ":MagmaReevaluateCell<CR>",   { silent = true })
vim.keymap.set("n", "<LocalLeader>rd", ":MagmaDelete<CR>",           { silent = true })
vim.keymap.set("n", "<LocalLeader>ro", ":MagmaShowOutput<CR>",       { silent = true })

-- Magma global settings
vim.g.magma_automatically_open_output = false
vim.g.magma_image_provider = "ueberzug"

-- Language initialization functions
function MagmaInitPython()
  vim.cmd([[
    MagmaInit python3
    MagmaEvaluateArgument a=5
  ]])
end

function MagmaInitCSharp()
  vim.cmd([[
    MagmaInit .net-csharp
    MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof(System.Object),"text/plain");
  ]])
end

function MagmaInitFSharp()
  vim.cmd([[
    MagmaInit .net-fsharp
    MagmaEvaluateArgument Microsoft.DotNet.Interactive.Formatting.Formatter.SetPreferredMimeTypesFor(typeof<System.Object>,"text/plain")
  ]])
end

-- Register as user commands
vim.api.nvim_create_user_command("MagmaInitPython", MagmaInitPython, {})
vim.api.nvim_create_user_command("MagmaInitCSharp", MagmaInitCSharp, {})
vim.api.nvim_create_user_command("MagmaInitFSharp", MagmaInitFSharp, {})

