local installed, packer = require'utils'.packages()

packer.startup(function(use)
    -- Packer handles itself
    use 'wbthomason/packer.nvim'

	local pkgs = require'packages'.pkgs
	for _, pkg in pairs(pkgs) do
		use(pkg)
	end

    if installed then
        packer.sync()
    end
end)