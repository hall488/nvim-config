function ColorMyPencils(color)
	color = color or "kanagawa-wave"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end


return {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            -- Applying the Kanagawa color scheme
            vim.cmd("colorscheme kanagawa")

            -- Custom function to adjust highlight groups
            ColorMyPencils("kanagawa")
        end
    },
}
