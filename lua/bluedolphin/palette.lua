-- BlueDolphin color palette
-- Ported from https://github.com/vimiomori/BlueDolphin (VSCode theme)
--
-- Colors with alpha in the original theme have been pre-blended
-- against the editor background (#003950) for Neovim compatibility.

local M = {}

-- Background shades (darkest to lightest)
M.bg_dark = "#002b3f"     -- sidebar, titlebar, activity bar
M.bg = "#003950"          -- editor background
M.bg_light = "#014c69"    -- panel background
M.bg_lighter = "#014d6b"  -- widgets, suggestions
M.bg_widget = "#004f6e"   -- editor widget
M.bg_hover = "#003042"    -- hover widget
M.bg_highlight = "#005272" -- list hover/inactive selection
M.bg_selection = "#026186" -- list active selection
M.bg_accent = "#007092"   -- buttons
M.bg_status = "#138ab9"   -- status bar active, debugging

-- Foreground shades
M.fg = "#c5f1ff"          -- primary editor foreground
M.fg_bright = "#eeffff"   -- bright foreground (tabs, headings)
M.fg_white = "#ffffff"    -- pure white
M.fg_dim = "#bdf4ff"      -- sidebar foreground
M.fg_muted = "#aff3ff"    -- suggest/input foreground
M.fg_cyan = "#8de8ff"     -- activity bar, sidebar title
M.fg_faded = "#96e9fa"    -- breadcrumb, tab active top
M.fg_pale = "#9de8f7"     -- peek view description
M.fg_inactive = "#b1edff" -- inactive titlebar

-- Syntax: Keywords & Control Flow
M.keyword = "#6ed1ff"     -- keyword, storage, control
M.control = "#85C4FF"     -- control flow (italic in Python)
M.import = "#65CEFF"      -- import/from/as keywords (bold)
M.control_alt = "#85ddff" -- keyword.control alternate
M.keyof = "#80ccff"       -- keyof, TSX tags, arrow functions

-- Syntax: Functions
M.func = "#8bfbff"        -- function names, function calls
M.func_builtin = "#FCB8B8" -- builtin functions (italic)
M.func_magic = "#65CEFF"  -- magic functions (italic)
M.func_support = "#ffffcc" -- support functions
M.decorator = "#8CE8F8"   -- decorators

-- Syntax: Types & Classes
M.type = "#6AFFB4"        -- class, type, namespace, entity
M.type_keyword = "#F4CDFD" -- class/function def keyword (bold italic)
M.inherited = "#F4CDFD"   -- inherited class

-- Syntax: Variables
M.variable = "#fffce2"    -- readwrite variables, enum members
M.variable_python = "#f6ffe2" -- Python-specific variables
M.variable_def = "#f2d6ff" -- variable definitions, declarations
M.variable_meta = "#9CDCFE" -- meta definition, object literal key
M.variable_instance = "#83F9FD" -- instance variables (italic)
M.parameter = "#c7c8ff"   -- function parameters
M.attribute = "#c7c8ff"   -- HTML/JSX attributes

-- Syntax: Strings & Constants
M.string = "#88D9BB"      -- strings (pre-blended from #A8FFD4CE)
M.number = "#FCB8B8"      -- numeric constants
M.constant = "#ffffcc"    -- language constants
M.constant_red = "#ffaaaa" -- Python caps constants, regex chars, CSS nums
M.boolean = "#FCB8B8"     -- boolean constants
M.regex = "#ffaaaa"       -- string.regexp
M.escape = "#6ed1ff"      -- character escape

-- Syntax: Operators & Punctuation
M.operator = "#FCB8B8"    -- keyword.operator
M.operator_word = "#FCB8B8" -- word operators (and, or, not)
M.punctuation = "#6AFFB4" -- parentheses, separators, delimiters
M.bracket = "#61FAFF"     -- braces, brackets (arguments)
M.dict_punct = "#FFFED1"  -- dictionary/mapping punctuation, terminators
M.tag_punct = "#6AFFB4"   -- punctuation.definition.tag
M.template_expr = "#FCB8B8" -- template expression punctuation

-- Syntax: Comments
M.comment = "#5F96A7"     -- comments (pre-blended from #C0F6FF7E)

-- Syntax: Tags & Markup
M.tag = "#6ed1ff"         -- HTML/XML entity tags
M.tag_tsx = "#80ccff"     -- TSX/JSX tags
M.markup_bold = "#6ed1ff"
M.markup_italic = "#c5f1ff"
M.markup_heading = "#6ed1ff"
M.markup_link = "#6ed1ff"
M.markup_raw = "#ffb395"
M.markup_quote = "#698b98"
M.markup_inserted = "#d6ffc1"
M.markup_deleted = "#ffb395"
M.markup_changed = "#6ed1ff"
M.markup_list = "#6796E6"
M.markup_quote_begin = "#c2fda6"

-- Syntax: CSS-specific
M.css_property = "#c7c8ff" -- property names
M.css_pseudo = "#8bfbff"  -- pseudo classes/elements
M.css_value = "#61FAFF"   -- constant property values
M.css_variable = "#6AFFB4" -- CSS/SCSS/Less variables
M.css_unit = "#f2d6ff"    -- CSS units

-- Syntax: Special
M.meta_attribute = "#FFFED1" -- meta.attribute
M.format_string = "#8CE8F8" -- format string specifiers
M.self = "#6ed1ff"        -- self/this (italic)
M.label = "#C8C8C8"       -- labels
M.todo = "#70d2ff"        -- TODO/FIXME (italic)
M.codelens = "#ffe79f"    -- editor code lens
M.header = "#008cff"

-- UI: Cursor & Selection
M.cursor = "#00bcd4"
M.cursor_line = "#002b3f"
M.selection = "#005978"    -- pre-blended from #0180aa71
M.search = "#015F7D"       -- pre-blended from #02b7e44d
M.word_highlight = "#0290b35b"
M.range_highlight = "#dcabfd38"

-- UI: Line numbers
M.line_nr = "#47919F"     -- pre-blended from #9dfcff73
M.line_nr_active = "#f4d69e"
M.indent_guide = "#12536A" -- pre-blended from #73e1f727
M.whitespace = "#5EA7B5"  -- pre-blended from #a3f7ff93

-- UI: Borders
M.border = "#006283"
M.border_focus = "#a8eefcc2"
M.border_widget = "#88ebffa9"
M.border_hover = "#00597c"
M.border_bracket = "#89ebff"
M.border_panel = "#026186"

-- UI: Diagnostics
M.error = "#ff8188"
M.warning = "#ffe585"
M.info = "#82aaff"
M.hint = "#82ddff"
M.error_bg = "#ff76744d"
M.warning_bg = "#ffe5854d"

-- UI: Diff & Git
M.diff_add = "#d3ffb2"
M.diff_delete = "#ff8188"
M.diff_change = "#ffe585"
M.diff_add_bg = "#99b76d23"
M.diff_delete_bg = "#ef535033"
M.diff_text = "#ffe585"
M.git_added = "#ffefb4"
M.git_modified = "#ffefb4"
M.git_deleted = "#ff8b92"
M.git_untracked = "#c9ff9f"
M.git_ignored = "#6ea6b4"

-- UI: Misc
M.link = "#82ddff"
M.badge = "#027baa"
M.remote = "#16825d"
M.shadow = "#003950"

-- Terminal ANSI colors
M.terminal = {
  black = "#292d3e",
  red = "#ff8188",
  green = "#b4e88d",
  yellow = "#f4d69e",
  blue = "#82aaff",
  magenta = "#e8c0ff",
  cyan = "#89ebff",
  white = "#d0d0d0",
  bright_black = "#434758",
  bright_red = "#ff5572",
  bright_green = "#ddffa7",
  bright_yellow = "#ffe585",
  bright_blue = "#9cc4ff",
  bright_magenta = "#e8c0ff",
  bright_cyan = "#a3f7ff",
  bright_white = "#fefefe",
}

return M
