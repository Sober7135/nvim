require('bufferline').setup {
  options = {
		numbers = function(opts)
			return string.format('%s', opts.raise(opts.ordinal))
		end,

		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " "
					or (e == "warning" and " " or "" )
				s = s .. n .. sym
			end
			return s
		end,

		show_tab_indicators = false,
		max_name_length = 10,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		tab_size = 20,
		offsets = {{filetype = "NvimTree", text = "Explorer" , text_align = "center"}},
	}
}


