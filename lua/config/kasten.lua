local function setup()
    local home = vim.fn.expand("~/zettelkasten")

    require('telekasten').setup {
        home         = home,
        -- dir names for special notes (absolute path or subdir name)
        dailies      = home .. '/' .. 'daily',
        weeklies     = home .. '/' .. 'weekly',
        templates    = home .. '/' .. 'templates',

        image_subdir = "img",

        -- markdown file extension
        extension    = ".md",

        -- Generate note filenames. One of:
        new_note_filename = "title-uuid",
        -- file uuid type ("rand" or input for os.date()")
        uuid_type = "%Y%m%d%H%M",
        -- UUID separator
        uuid_sep = "-",

        -- following a link to a non-existing note will create it
        follow_creates_nonexisting = true,
        dailies_create_nonexisting = true,
        weeklies_create_nonexisting = true,

        -- skip telescope prompt for goto_today and goto_thisweek
        journal_auto_open = false,

        template_new_note = home .. '/' .. 'templates/new_note.md',
        template_new_daily = home .. '/' .. 'templates/daily.md',
        template_new_weekly= home .. '/' .. 'templates/weekly.md',

        image_link_style = "markdown",
        sort = "filename",

        -- integrate with calendar-vim
        plug_into_calendar = true,
        calendar_opts = {
            -- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
            weeknm = 4,
            -- use monday as first day of week: 1 .. true, 0 .. false
            calendar_monday = 1,
            -- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
            calendar_mark = 'left-fit',
        },

        -- telescope actions behavior
        close_after_yanking = false,
        insert_after_inserting = true,

        -- tag notation: '#tag', ':tag:', 'yaml-bare'
        tag_notation = "#tag",
        command_palette_theme = "ivy",
        show_tags_theme = "ivy",
        subdirs_in_links = true,

        template_handling = "smart",
        new_note_location = "smart",
        rename_update_links = true,

        vaults = {
            vault2 = {
                -- alternate configuration for vault2 here. Missing values are defaulted to
                -- default values from telekasten.
                -- e.g.
                -- home = "/home/user/vaults/personal",
            },
        },

        -- how to preview media files
        -- "telescope-media-files" if you have telescope-media-files.nvim installed
        -- "catimg-previewer" if you have catimg installed
        media_previewer = "catimg-previewer",
        
        follow_url_fallback = nil,
    }
end

return { setup = setup }