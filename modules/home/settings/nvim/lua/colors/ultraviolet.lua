local M = {}

M.palette = {
    bg             = "#0B0C10", -- background / editor gutter
    bg_editor      = "#111115", -- editor.background
    bg_elevated    = "#0E0E11", -- elevated_surface.background
    bg_active_line = "#1B1B1F",
    bg_highlight   = "#222226",
    bg_selected    = "#222226",

    fg             = "#F2F4F8",
    fg_muted       = "#A09AAB",
    fg_disabled    = "#8A9098",
    fg_accent      = "#C58FFF",

    border         = "#222226",

    blue           = "#6F78FF", -- accent / keyword / info / modified
    purple         = "#AF9CFF", -- function
    magenta        = "#C58FFF", -- type / accent text
    pink           = "#FF6FAE", -- error / deleted / constant / boolean
    softpink       = "#E297DB", -- warning / attribute / type.builtin
    teal           = "#08BDBA", -- string
    green          = "#08BD8A", -- success / created / number
    lav            = "#B3BCEF", -- hint / property / cyan
    white          = "#DCD8ED", -- variable / terminal fg
    preproc        = "#FF7EB6",

    created_bg     = "#09221A",
    deleted_bg     = "#26141A",
    modified_bg    = "#161726",
    conflict       = "#E297DB",
    conflict_bg    = "#261824",
    ignored        = "#625C66",
}

function M.setup()
    local p = M.palette

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "ultraviolet"

    local hl = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Editor UI ---------------------------------------------------------
    hl("Normal", { fg = p.fg, bg = p.bg_editor })
    hl("NormalFloat", { fg = p.fg, bg = p.bg_elevated })
    hl("NormalNC", { fg = p.fg, bg = p.bg_editor })
    hl("FloatBorder", { fg = p.border, bg = p.bg_elevated })
    hl("SignColumn", { fg = p.fg_muted, bg = p.bg_editor })
    hl("LineNr", { fg = p.fg_muted, bg = p.bg_editor })
    hl("CursorLineNr", { fg = p.fg, bold = true })
    hl("CursorLine", { bg = p.bg_active_line })
    hl("CursorColumn", { bg = p.bg_active_line })
    hl("ColorColumn", { bg = p.bg_active_line })
    hl("Cursor", { fg = p.bg, bg = p.fg })

    hl("VertSplit", { fg = p.border, bg = p.bg_editor })
    hl("WinSeparator", { fg = p.border, bg = p.bg_editor })
    hl("Pmenu", { fg = p.fg, bg = p.bg_elevated })
    hl("PmenuSel", { fg = p.fg, bg = p.bg_selected, bold = true })
    hl("PmenuSbar", { bg = p.bg_active_line })
    hl("PmenuThumb", { bg = p.fg_muted })

    hl("StatusLine", { fg = p.fg, bg = p.bg_elevated })
    hl("StatusLineNC", { fg = p.fg_muted, bg = p.bg })
    hl("TabLine", { fg = p.fg_muted, bg = p.bg_elevated })
    hl("TabLineSel", { fg = p.fg, bg = p.bg_editor, bold = true })
    hl("TabLineFill", { bg = p.bg_elevated })

    hl("Visual", { bg = p.bg_selected })
    hl("VisualNOS", { bg = p.bg_selected })
    hl("Search", { fg = p.bg, bg = p.blue })
    hl("IncSearch", { fg = p.bg, bg = p.magenta })
    hl("CurSearch", { link = "IncSearch" })

    hl("MatchParen", { fg = p.magenta, bold = true })
    hl("NonText", { fg = p.bg_highlight })
    hl("Whitespace", { fg = p.bg_highlight })
    hl("EndOfBuffer", { fg = p.bg_editor })
    hl("Folded", { fg = p.fg_muted, bg = p.bg_active_line })
    hl("FoldColumn", { fg = p.fg_muted, bg = p.bg_editor })
    hl("Directory", { fg = p.blue })
    hl("Title", { fg = p.blue, bold = true })

    hl("ErrorMsg", { fg = p.pink })
    hl("WarningMsg", { fg = p.softpink })
    hl("ModeMsg", { fg = p.fg })
    hl("MoreMsg", { fg = p.green })
    hl("Question", { fg = p.lav })

    -- Diagnostics ---------------------------------------------------------
    hl("DiagnosticError", { fg = p.pink })
    hl("DiagnosticWarn", { fg = p.softpink })
    hl("DiagnosticInfo", { fg = p.blue })
    hl("DiagnosticHint", { fg = p.lav })
    hl("DiagnosticOk", { fg = p.green })
    hl("DiagnosticUnderlineError", { undercurl = true, sp = p.pink })
    hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.softpink })
    hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.blue })
    hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.lav })

    -- Diff / git ----------------------------------------------------------
    hl("DiffAdd", { fg = p.green, bg = p.created_bg })
    hl("DiffChange", { fg = p.blue, bg = p.modified_bg })
    hl("DiffDelete", { fg = p.pink, bg = p.deleted_bg })
    hl("DiffText", { fg = p.blue, bg = p.modified_bg, bold = true })
    hl("GitSignsAdd", { fg = p.green })
    hl("GitSignsChange", { fg = p.blue })
    hl("GitSignsDelete", { fg = p.pink })

    -- Syntax ---------------------------------------------
    hl("Comment", { fg = p.fg_muted, italic = true })
    hl("Constant", { fg = p.pink })
    hl("String", { fg = p.teal })
    hl("Character", { fg = p.teal })
    hl("Number", { fg = p.green })
    hl("Boolean", { fg = p.pink })
    hl("Float", { fg = p.green })

    hl("Identifier", { fg = p.white })
    hl("Function", { fg = p.purple })

    hl("Statement", { fg = p.blue })
    hl("Conditional", { fg = p.blue })
    hl("Repeat", { fg = p.blue })
    hl("Label", { fg = p.blue })
    hl("Operator", { fg = "#DFDFE0" })
    hl("Keyword", { fg = p.blue })
    hl("Exception", { fg = p.blue })

    hl("PreProc", { fg = p.preproc })
    hl("Include", { fg = p.preproc })
    hl("Define", { fg = p.preproc })
    hl("Macro", { fg = p.preproc })
    hl("PreCondit", { fg = p.preproc })

    hl("Type", { fg = p.magenta })
    hl("StorageClass", { fg = p.magenta })
    hl("Structure", { fg = p.magenta })
    hl("Typedef", { fg = p.magenta })

    hl("Special", { fg = p.softpink })
    hl("SpecialChar", { fg = p.softpink })
    hl("Tag", { fg = p.magenta })
    hl("Delimiter", { fg = "#DFDFE0" })
    hl("SpecialComment", { fg = p.fg_muted, italic = true })
    hl("Underlined", { fg = p.blue, underline = true })
    hl("Ignore", { fg = p.ignored })
    hl("Error", { fg = p.pink })
    hl("Todo", { fg = p.bg, bg = p.softpink, bold = true })

    -- Treesitter ---------------------------------------------
    hl("@variable", { fg = p.white })
    hl("@variable.builtin", { fg = p.pink })
    hl("@variable.parameter", { fg = p.white })
    hl("@variable.member", { fg = p.lav })

    hl("@constant", { fg = p.pink })
    hl("@constant.builtin", { fg = p.pink })

    hl("@string", { fg = p.teal })
    hl("@string.regexp", { fg = p.green })
    hl("@string.escape", { fg = p.softpink })
    hl("@number", { fg = p.green })
    hl("@boolean", { fg = p.pink })

    hl("@function", { fg = p.purple })
    hl("@function.builtin", { fg = p.pink })
    hl("@function.method", { fg = p.purple })
    hl("@constructor", { fg = p.magenta })

    hl("@keyword", { fg = p.blue })
    hl("@keyword.function", { fg = p.blue })
    hl("@keyword.return", { fg = p.blue })
    hl("@conditional", { fg = p.blue })
    hl("@repeat", { fg = p.blue })
    hl("@operator", { fg = "#DFDFE0" })

    hl("@type", { fg = p.magenta })
    hl("@type.builtin", { fg = p.softpink })
    hl("@attribute", { fg = p.softpink })
    hl("@namespace", { fg = p.white })
    hl("@property", { fg = p.lav })
    hl("@field", { fg = p.lav })
    hl("@tag", { fg = p.magenta })
    hl("@tag.attribute", { fg = p.softpink })
    hl("@tag.delimiter", { fg = "#DFDFE0" })

    hl("@punctuation.bracket", { fg = "#DFDFE0" })
    hl("@punctuation.delimiter", { fg = "#DFDFE0" })
    hl("@punctuation.special", { fg = "#BE95FF" })

    hl("@comment", { fg = p.fg_muted, italic = true })
    hl("@markup.strong", { bold = true })
    hl("@markup.italic", { italic = true })
    hl("@markup.heading", { fg = p.blue, bold = true })
    hl("@markup.link.url", { fg = p.magenta, underline = true })

    -- LSP references / highlights -----------------------------------------
    hl("LspReferenceText", { bg = p.bg_active_line })
    hl("LspReferenceRead", { bg = p.bg_active_line })
    hl("LspReferenceWrite", { bg = p.bg_active_line })

    -- Telescope  -------------------------------
    hl("TelescopeBorder", { fg = p.border, bg = p.bg_editor })
    hl("TelescopeNormal", { fg = p.fg, bg = p.bg_editor })
    hl("TelescopeSelection", { bg = p.bg_active_line })
    hl("TelescopePromptBorder", { fg = p.border })
    hl("TelescopeTitle", { fg = p.blue })

    -- Terminal colors -----------
    vim.g.terminal_color_0          = "#282828"
    vim.g.terminal_color_1          = "#FF6FAE"
    vim.g.terminal_color_2          = "#08BD8A"
    vim.g.terminal_color_3          = "#E297DB"
    vim.g.terminal_color_4          = "#6F78FF"
    vim.g.terminal_color_5          = "#C58FFF"
    vim.g.terminal_color_6          = "#B3BCEF"
    vim.g.terminal_color_7          = "#DCD8ED"
    vim.g.terminal_color_8          = "#3A3A3A"
    vim.g.terminal_color_9          = "#FF9BC3"
    vim.g.terminal_color_10         = "#3DD4A6"
    vim.g.terminal_color_11         = "#F2B1ED"
    vim.g.terminal_color_12         = "#8B92FF"
    vim.g.terminal_color_13         = "#D3A8FF"
    vim.g.terminal_color_14         = "#CAD1FF"
    vim.g.terminal_color_15         = "#FFFFFF"
    vim.g.terminal_color_background = p.bg
    vim.g.terminal_color_foreground = p.white
end

M.setup()

return M
