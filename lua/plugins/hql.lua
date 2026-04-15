-- HQL filetype plugin
return {
    dir = "C:/Users/amaan/OneDrive/Documents/coding/hql.nvim",
    lazy = false,
    init = function()
        -- Add syntax to runtime path
        vim.opt.rtp:prepend("C:/Users/amaan/OneDrive/Documents/coding/hql.nvim/syntax")
        -- Filetype detection
        vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
            pattern = { "*.hx", "*.helix" },
            callback = function()
                vim.bo.filetype = "hql"
            end,
        })
    end,
}