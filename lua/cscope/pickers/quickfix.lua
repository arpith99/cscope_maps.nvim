local M = {}

M.run = function(opts)
	vim.fn.setqflist(opts.cscope.parsed_output, "r")
	vim.fn.setqflist({}, "a", { title = opts.cscope.prompt_title })
	vim.api.nvim_command("botright copen")
end

return M
