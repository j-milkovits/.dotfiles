# neoformat should use project-local version of prettier
vim.g.neoformat_try_node_exe = 1

vim.api.nvim_create_autocmd(
    {"BufWritePre"},
    {
        pattern = {".tsx", ".ts", ".js", ".jsx",}, 
        command = "Neoformat",
    }
)
