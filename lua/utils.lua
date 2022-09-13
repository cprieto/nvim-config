local M = {}

function M.key_mapper(mode, key, result, opts)
	opts = opts or { noremap = true, silent = true }

	vim.api.nvim_set_keymap(mode, key, result, opts)
end

function M.find_files()
	local fzf = require 'fzf-lua'
	if vim.fn.system 'git rev-parse --is-inside-work-tree' == true then
		fzf.git_files()
	else
		fzf.files()
	end
end

function M.find_buffers()
	local api = vim.api
	local results = {}
	local buffers = api.nvim_list_bufs()

	for _, buffer in ipairs(buffers) do
		if api.nvim_buf_is_loaded(buffer) then
			local filename = api.nvim_buf_get_name(buffer)
			table.insert(results, filename)
		end
	end

	vim.ui.select(results, { prompt = "Find buffer:" }, function(selected)
		if selected then
			api.nvim_command("buffer " .. selected)
		end
	end)
end

function M.packages()
	-- package manager default options
	local defaultOpts = {
		profile = {
			enable = true,
			threshold = 0,
		},
		display = {
			open_fn = function()
				return require 'packer.util'.float { border = "rounded" }
			end,
		}
	}

	local fn = vim.fn
	local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
	local bootstrapped = false

	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system {
			"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path
		}
		vim.cmd [[packadd packer.nvim]]
		bootstrapped = true
	end

	local packer = require 'packer'

	-- Configure package manager
	packer.init(defaultOpts)

	-- Return if we are bootstrapping
	return bootstrapped, packer
end

return M
