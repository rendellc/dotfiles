
function xmlnewline()
	vim.api.nvim_command("%s/></>\r</g")
end

vim.api.nvim_create_autocmd(
	"BufWritePost",
	{ pattern = "*", command = "FormatWrite"  }
)
