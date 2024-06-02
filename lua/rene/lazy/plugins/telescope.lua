return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make", -- cd .config/nvim/lazy/telescope-fzf-native.nvim && make
                config = function()
                    require("telescope").load_extension("fzf")
                end,
            },
        },
        cmd = "Telescope",
        keys = {
            { "<leader><leader>", "<cmd>Telescope<cr>", desc = "Telescope builtins" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
            { "<leader>fF", "<cmd>Telescope git_files<cr>", desc = "Telescope git files" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope help tags" },
        },
        opts = {
            defaults = {
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.5,
                    },
                },
                path_display = { "truncate" },
                dynamic_preview_title = true,
                results_title = false,
            },
        },
    },
}
