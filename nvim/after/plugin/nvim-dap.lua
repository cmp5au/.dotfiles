local dap = require('dap')
dap.adapters.python = {
    type = 'executable';
    command = '/opt/homebrew/bin/python3';
    args = { '-m', 'debugpy.adapter' };
}
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})


require('dap-python').setup('/opt/homebrew/bin/python3')
require('dap-python').test_runner = 'pytest'

vim.keymap.set("n", "<leader>dh", function()
    require('dap').toggle_breakpoint()
end)
vim.keymap.set("n", "<leader>dr", function()
    require('dap').step_out()
end)
vim.keymap.set("n", "<leader>ds", function()
    require('dap').step_into()
end)
vim.keymap.set("n", "<leader>dn", function()
    require('dap').step_over()
end)
vim.keymap.set("n", "<leader>du", function()
    require('dap').up()
end)
vim.keymap.set("n", "<leader>dd", function()
    require('dap').down()
end)
vim.keymap.set("n", "<leader>dc", function()
    require('dap').continue()
end)
vim.keymap.set("n", "<leader>dr", function()
    require('dap').repl.open({}, 'vsplit')
    "<C-w>h"
end)
vim.keymap.set("n", "<leader>dv", function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set("v", "<leader>dv", function()
    require('dap.ui.variables').visual_hover()
end)

vim.keymap.set("n", "<leader>d?", function()
    local widgets = require("dap.ui.widgets")
    widgets.centered_float(widgets.scopes)
end)

vim.keymap.set("n", "<leader>de", function()
    require('dap').set_exception_breakpoints({"all"})
end)

vim.keymap.set("n", "<leader>df", function()
    require('dap-python').test_method()
end)
