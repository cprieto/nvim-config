local cfg = {
    ensure_installed = {
        'lua', 'bash', 'bibtex', 'c', 'cmake', 'comment', 'cpp',
        'dot', 'fish', 'json', 'llvm', 'make', 'markdown',
        'markdown_inline', 'meson', 'ninja', 'proto', 'python',
        'sql', 'vim', 'yaml', 'latex', 'rust', 'toml', 'go',
        'clojure', 'dockerfile', 'css', 'gitignore', 'gomod',
        'http', 'html', 'javascript', 'kotlin', 'java', 'ocaml',
        'ocamllex', 'regex', 'scala', 'scss', 'swift', 'typescript',
        'vala', 'vue', 'zig', 'erlang', 'elixir', 'ruby', 
        'gitattributes', 'julia', 'ocaml_interface', 'rst',
    },
    auto_install = true,
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
    },
    indent = {
        enable = true,
    }
}

local function setup()
    require'nvim-treesitter.configs'.setup(cfg)
end

return { setup = setup }
