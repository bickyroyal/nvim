return {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
        require("mini.pairs").setup()
        require("mini.files").setup({
            mappings = {
                go_in = "",
                go_in_plus = "l",
            },
            windows = {
                max_number = 5,
                preview = true,
            },
        })
        vim.keymap.set("n", "<leader>e", MiniFiles.open, { desc = "Open explorer" })
    end,
}
