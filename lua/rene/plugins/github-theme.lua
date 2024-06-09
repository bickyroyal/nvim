return {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
        require("github-theme").setup({
            hide_nc_statusline = false,
            styles = {
                comments = "italic",
            },
        })
        vim.cmd("colorscheme github_dark_high_contrast")
    end,
}
