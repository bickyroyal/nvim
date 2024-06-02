return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { "lua", "vim", "vimdoc", "html" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    },
}
