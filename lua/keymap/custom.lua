local fun = {}

local CXX_format = function()
	vim.lsp.buf.format { async = true }
end

fun.CXX_format = CXX_format

return fun
