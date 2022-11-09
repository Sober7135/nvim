keymap = {}

function keymap.cmd(str)
	return '<cmd>' .. str .. '<CR>'	
end

local keymap_set = function(mod, tbl)
	vim.validate({
		tbl = { tbl, 'table'}
	})

	local len = #tbl
	if len < 2 then
		vim.notify('keymap must has rhs')
		return
	end

	vim.keymap.set(mod, tbl[1], tbl[2], tbl[3])
end

local function map(mod) 
	return function(tbl)
		vim.validate({
			tbl = { tbl, 'table'}
		})

		for _, v in pairs(tbl) do
			keymap_set(mod, v)
		end
	end
end

keymap.nmap = map('n')
keymap.imap = map('i')
keymap.vmap = map('v')
keymap.tmap = map('t')
