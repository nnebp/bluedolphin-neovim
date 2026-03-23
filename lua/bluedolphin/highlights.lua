local p = require("bluedolphin.palette")

local M = {}

function M.get()
  return {
    -----------------------------------------------------------------
    -- Base editor highlights
    -----------------------------------------------------------------
    Normal = { fg = p.fg, bg = p.bg },
    NormalNC = { fg = p.fg, bg = p.bg },
    NormalFloat = { fg = p.fg_muted, bg = p.bg_hover },
    FloatBorder = { fg = p.border_hover, bg = p.bg_hover },
    FloatTitle = { fg = p.fg_cyan, bg = p.bg_hover, bold = true },
    Cursor = { fg = p.fg_white, bg = p.cursor },
    lCursor = { fg = p.fg_white, bg = p.cursor },
    CursorIM = { fg = p.fg_white, bg = p.cursor },
    TermCursor = { fg = p.fg_white, bg = p.cursor },
    TermCursorNC = { fg = p.fg_white, bg = p.comment },
    CursorLine = { bg = p.cursor_line },
    CursorColumn = { bg = p.cursor_line },
    ColorColumn = { bg = p.cursor_line },
    LineNr = { fg = p.line_nr },
    CursorLineNr = { fg = p.line_nr_active },
    SignColumn = { fg = p.line_nr, bg = p.bg },
    FoldColumn = { fg = p.line_nr, bg = p.bg },
    Folded = { fg = p.comment, bg = p.bg_dark },
    VertSplit = { fg = p.border, bg = p.bg },
    WinSeparator = { fg = p.border, bg = p.bg },

    Visual = { bg = p.selection },
    VisualNOS = { bg = p.selection },
    Search = { bg = p.search },
    IncSearch = { fg = p.bg_dark, bg = p.cursor },
    CurSearch = { fg = p.bg_dark, bg = p.cursor },
    Substitute = { fg = p.bg_dark, bg = p.diff_change },

    Pmenu = { fg = p.fg_muted, bg = p.bg_dark },
    PmenuSel = { bg = p.bg_lighter },
    PmenuSbar = { bg = p.bg_dark },
    PmenuThumb = { bg = p.bg_highlight },

    StatusLine = { fg = p.fg_bright, bg = p.bg_dark },
    StatusLineNC = { fg = p.comment, bg = p.bg_dark },
    TabLine = { fg = p.fg, bg = p.bg_dark },
    TabLineSel = { fg = p.fg_bright, bg = p.bg },
    TabLineFill = { bg = p.bg_dark },
    WinBar = { fg = p.fg_faded, bg = p.bg },
    WinBarNC = { fg = p.comment, bg = p.bg },

    Title = { fg = p.markup_heading, bold = true },
    NonText = { fg = p.indent_guide },
    Whitespace = { fg = p.whitespace },
    SpecialKey = { fg = p.whitespace },
    Conceal = { fg = p.comment },
    EndOfBuffer = { fg = p.bg },
    MatchParen = { fg = p.border_bracket, bold = true, underline = true },
    Question = { fg = p.func },
    QuickFixLine = { bg = p.bg_lighter },
    Directory = { fg = p.keyword },
    ModeMsg = { fg = p.fg, bold = true },
    MoreMsg = { fg = p.type },
    MsgArea = { fg = p.fg },
    WarningMsg = { fg = p.warning },
    ErrorMsg = { fg = p.error },
    WildMenu = { fg = p.fg_bright, bg = p.bg_lighter },
    SpellBad = { undercurl = true, sp = p.error },
    SpellCap = { undercurl = true, sp = p.warning },
    SpellLocal = { undercurl = true, sp = p.info },
    SpellRare = { undercurl = true, sp = p.hint },

    -----------------------------------------------------------------
    -- Syntax (legacy vim groups)
    -----------------------------------------------------------------
    Comment = { fg = p.comment, italic = true },
    Constant = { fg = p.constant },
    String = { fg = p.string },
    Character = { fg = p.string },
    Number = { fg = p.number },
    Boolean = { fg = p.boolean },
    Float = { fg = p.number },

    Identifier = { fg = p.fg },
    Function = { fg = p.func },

    Statement = { fg = p.keyword },
    Conditional = { fg = p.keyword },
    Repeat = { fg = p.keyword },
    Label = { fg = p.label },
    Operator = { fg = p.operator },
    Keyword = { fg = p.keyword },
    Exception = { fg = p.keyword },

    PreProc = { fg = p.tag },
    Include = { fg = p.import, bold = true },
    Define = { fg = p.tag },
    Macro = { fg = p.tag },
    PreCondit = { fg = p.tag },

    Type = { fg = p.type },
    StorageClass = { fg = p.keyword, italic = true },
    Structure = { fg = p.type },
    Typedef = { fg = p.type },

    Special = { fg = p.func },
    SpecialChar = { fg = p.escape },
    Tag = { fg = p.tag },
    Delimiter = { fg = p.dict_punct },
    SpecialComment = { fg = p.todo, italic = true },
    Debug = { fg = p.error },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = p.error },
    Todo = { fg = p.todo, italic = true },

    -----------------------------------------------------------------
    -- Diagnostics
    -----------------------------------------------------------------
    DiagnosticError = { fg = p.error },
    DiagnosticWarn = { fg = p.warning },
    DiagnosticInfo = { fg = p.info },
    DiagnosticHint = { fg = p.hint },
    DiagnosticOk = { fg = p.type },
    DiagnosticVirtualTextError = { fg = p.error, bg = p.bg_dark },
    DiagnosticVirtualTextWarn = { fg = p.warning, bg = p.bg_dark },
    DiagnosticVirtualTextInfo = { fg = p.info, bg = p.bg_dark },
    DiagnosticVirtualTextHint = { fg = p.hint, bg = p.bg_dark },
    DiagnosticUnderlineError = { undercurl = true, sp = p.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = p.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = p.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = p.hint },
    DiagnosticSignError = { fg = p.error },
    DiagnosticSignWarn = { fg = p.warning },
    DiagnosticSignInfo = { fg = p.info },
    DiagnosticSignHint = { fg = p.hint },
    DiagnosticFloatingError = { fg = p.error },
    DiagnosticFloatingWarn = { fg = p.warning },
    DiagnosticFloatingInfo = { fg = p.info },
    DiagnosticFloatingHint = { fg = p.hint },

    -----------------------------------------------------------------
    -- LSP
    -----------------------------------------------------------------
    LspReferenceText = { bg = p.bg_lighter },
    LspReferenceRead = { bg = p.bg_lighter },
    LspReferenceWrite = { bg = p.bg_lighter, bold = true },
    LspSignatureActiveParameter = { fg = p.fg_bright, underline = true },
    LspCodeLens = { fg = p.codelens },
    LspInlayHint = { fg = p.comment, bg = p.bg_dark },

    -----------------------------------------------------------------
    -- Treesitter
    -----------------------------------------------------------------
    -- Identifiers
    ["@variable"] = { fg = p.variable },
    ["@variable.builtin"] = { fg = p.self, italic = true },
    ["@variable.parameter"] = { fg = p.parameter },
    ["@variable.member"] = { fg = p.variable_meta },

    -- Constants
    ["@constant"] = { fg = p.constant },
    ["@constant.builtin"] = { fg = p.boolean },
    ["@constant.macro"] = { fg = p.constant },

    -- Modules / Namespaces
    ["@module"] = { fg = p.type },
    ["@module.builtin"] = { fg = p.type },

    -- Labels
    ["@label"] = { fg = p.label },

    -- Strings
    ["@string"] = { fg = p.string },
    ["@string.documentation"] = { fg = p.string },
    ["@string.escape"] = { fg = p.escape },
    ["@string.regexp"] = { fg = p.regex },
    ["@string.special"] = { fg = p.format_string },
    ["@string.special.symbol"] = { fg = p.variable_meta },
    ["@string.special.url"] = { fg = p.link, underline = true },

    -- Characters
    ["@character"] = { fg = p.string },
    ["@character.special"] = { fg = p.escape },

    -- Numbers & Booleans
    ["@number"] = { fg = p.number },
    ["@number.float"] = { fg = p.number },
    ["@boolean"] = { fg = p.boolean },

    -- Types
    ["@type"] = { fg = p.type },
    ["@type.builtin"] = { fg = p.type },
    ["@type.definition"] = { fg = p.type },
    ["@type.qualifier"] = { fg = p.keyword, italic = true },

    -- Attributes / Annotations
    ["@attribute"] = { fg = p.meta_attribute },
    ["@attribute.builtin"] = { fg = p.meta_attribute },

    -- Properties
    ["@property"] = { fg = p.variable_meta },

    -- Functions
    ["@function"] = { fg = p.func },
    ["@function.builtin"] = { fg = p.func_builtin, italic = true },
    ["@function.call"] = { fg = p.func },
    ["@function.macro"] = { fg = p.func },
    ["@function.method"] = { fg = p.func },
    ["@function.method.call"] = { fg = p.func },

    -- Constructors
    ["@constructor"] = { fg = p.type },

    -- Operators
    ["@operator"] = { fg = p.punctuation },

    -- Keywords
    ["@keyword"] = { fg = p.keyword },
    ["@keyword.coroutine"] = { fg = p.import, italic = true },
    ["@keyword.function"] = { fg = p.type_keyword, bold = true, italic = true },
    ["@keyword.operator"] = { fg = p.operator },
    ["@keyword.import"] = { fg = p.import, bold = true },
    ["@keyword.type"] = { fg = p.type_keyword, bold = true, italic = true },
    ["@keyword.modifier"] = { fg = p.keyword, italic = true },
    ["@keyword.repeat"] = { fg = p.keyword },
    ["@keyword.return"] = { fg = p.keyword },
    ["@keyword.debug"] = { fg = p.error },
    ["@keyword.exception"] = { fg = p.keyword },
    ["@keyword.conditional"] = { fg = p.keyword },
    ["@keyword.conditional.ternary"] = { fg = p.keyof },
    ["@keyword.directive"] = { fg = p.tag },

    -- Punctuation
    ["@punctuation.bracket"] = { fg = p.bracket },
    ["@punctuation.delimiter"] = { fg = p.dict_punct },
    ["@punctuation.special"] = { fg = p.template_expr },

    -- Comments
    ["@comment"] = { fg = p.comment, italic = true },
    ["@comment.documentation"] = { fg = p.comment, italic = true },
    ["@comment.error"] = { fg = p.error, italic = true },
    ["@comment.warning"] = { fg = p.warning, italic = true },
    ["@comment.todo"] = { fg = p.todo, italic = true },
    ["@comment.note"] = { fg = p.info, italic = true },

    -- Markup
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = p.markup_heading, bold = true },
    ["@markup.quote"] = { fg = p.markup_quote, italic = true },
    ["@markup.math"] = { fg = p.number },
    ["@markup.link"] = { fg = p.markup_link, underline = true },
    ["@markup.link.label"] = { fg = p.link },
    ["@markup.link.url"] = { fg = p.link, underline = true },
    ["@markup.raw"] = { fg = p.markup_raw },
    ["@markup.raw.block"] = { fg = p.fg },
    ["@markup.list"] = { fg = p.markup_list },
    ["@markup.list.checked"] = { fg = p.type },
    ["@markup.list.unchecked"] = { fg = p.comment },

    -- Diff
    ["@diff.plus"] = { fg = p.diff_add },
    ["@diff.minus"] = { fg = p.diff_delete },
    ["@diff.delta"] = { fg = p.diff_change },

    -- Tags (HTML/JSX)
    ["@tag"] = { fg = p.tag },
    ["@tag.builtin"] = { fg = p.tag },
    ["@tag.attribute"] = { fg = p.attribute },
    ["@tag.delimiter"] = { fg = p.tag_punct },

    -----------------------------------------------------------------
    -- LSP semantic tokens
    -----------------------------------------------------------------
    ["@lsp.type.class"] = { fg = p.type },
    ["@lsp.type.comment"] = {},
    ["@lsp.type.decorator"] = { fg = p.decorator },
    ["@lsp.type.enum"] = { fg = p.type },
    ["@lsp.type.enumMember"] = { fg = p.variable },
    ["@lsp.type.function"] = { fg = p.func },
    ["@lsp.type.interface"] = { fg = p.type },
    ["@lsp.type.keyword"] = { fg = p.keyword },
    ["@lsp.type.macro"] = { fg = p.tag },
    ["@lsp.type.method"] = { fg = p.func },
    ["@lsp.type.namespace"] = { fg = p.type },
    ["@lsp.type.number"] = { fg = p.number },
    ["@lsp.type.operator"] = { fg = p.punctuation },
    ["@lsp.type.parameter"] = { fg = p.parameter },
    ["@lsp.type.property"] = { fg = p.variable_meta },
    ["@lsp.type.string"] = { fg = p.string },
    ["@lsp.type.struct"] = { fg = p.type },
    ["@lsp.type.type"] = { fg = p.type },
    ["@lsp.type.typeParameter"] = { fg = p.type },
    ["@lsp.type.variable"] = {},
    ["@lsp.mod.declaration"] = {},
    ["@lsp.mod.definition"] = {},
    ["@lsp.mod.readonly"] = {},
    ["@lsp.typemod.function.declaration"] = { fg = p.func },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = p.func_builtin, italic = true },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = p.self, italic = true },
    ["@lsp.typemod.variable.readonly"] = { fg = p.constant },
    ["@lsp.typemod.operator.injected"] = { fg = p.punctuation },
    ["@lsp.typemod.string.injected"] = { fg = p.string },

    -----------------------------------------------------------------
    -- Diff
    -----------------------------------------------------------------
    DiffAdd = { bg = "#1a3a2a" },
    DiffChange = { bg = "#2a3520" },
    DiffDelete = { bg = "#3a1a1a" },
    DiffText = { bg = "#3a3520" },
    diffAdded = { fg = p.diff_add },
    diffRemoved = { fg = p.diff_delete },
    diffChanged = { fg = p.diff_change },
    diffFile = { fg = p.keyword },
    diffLine = { fg = p.comment },
    diffIndexLine = { fg = p.type },

    -----------------------------------------------------------------
    -- Git signs (gitsigns.nvim)
    -----------------------------------------------------------------
    GitSignsAdd = { fg = p.diff_add },
    GitSignsChange = { fg = p.diff_change },
    GitSignsDelete = { fg = p.diff_delete },
    GitSignsCurrentLineBlame = { fg = p.comment },

    -----------------------------------------------------------------
    -- Telescope
    -----------------------------------------------------------------
    TelescopeNormal = { fg = p.fg_muted, bg = p.bg_dark },
    TelescopeBorder = { fg = p.border, bg = p.bg_dark },
    TelescopeTitle = { fg = p.fg_cyan, bold = true },
    TelescopePromptNormal = { fg = p.fg_muted, bg = p.bg_dark },
    TelescopePromptBorder = { fg = p.border, bg = p.bg_dark },
    TelescopePromptTitle = { fg = p.fg_cyan, bold = true },
    TelescopePromptPrefix = { fg = p.func },
    TelescopePromptCounter = { fg = p.comment },
    TelescopeResultsNormal = { fg = p.fg_dim, bg = p.bg_dark },
    TelescopeResultsBorder = { fg = p.border, bg = p.bg_dark },
    TelescopeResultsTitle = { fg = p.fg_cyan, bold = true },
    TelescopePreviewNormal = { bg = p.bg },
    TelescopePreviewBorder = { fg = p.border, bg = p.bg },
    TelescopePreviewTitle = { fg = p.fg_cyan, bold = true },
    TelescopeSelection = { bg = p.bg_lighter },
    TelescopeSelectionCaret = { fg = p.func },
    TelescopeMatching = { fg = p.fg_white, bold = true },

    -----------------------------------------------------------------
    -- nvim-cmp
    -----------------------------------------------------------------
    CmpItemAbbr = { fg = p.fg_dim },
    CmpItemAbbrDeprecated = { fg = p.comment, strikethrough = true },
    CmpItemAbbrMatch = { fg = p.fg_white, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.fg_white, bold = true },
    CmpItemKind = { fg = p.func },
    CmpItemKindClass = { fg = p.type },
    CmpItemKindColor = { fg = p.constant_red },
    CmpItemKindConstant = { fg = p.constant },
    CmpItemKindConstructor = { fg = p.type },
    CmpItemKindEnum = { fg = p.type },
    CmpItemKindEnumMember = { fg = p.variable },
    CmpItemKindEvent = { fg = p.keyword },
    CmpItemKindField = { fg = p.variable_meta },
    CmpItemKindFile = { fg = p.fg_dim },
    CmpItemKindFolder = { fg = p.keyword },
    CmpItemKindFunction = { fg = p.func },
    CmpItemKindInterface = { fg = p.type },
    CmpItemKindKeyword = { fg = p.keyword },
    CmpItemKindMethod = { fg = p.func },
    CmpItemKindModule = { fg = p.type },
    CmpItemKindOperator = { fg = p.operator },
    CmpItemKindProperty = { fg = p.variable_meta },
    CmpItemKindReference = { fg = p.hint },
    CmpItemKindSnippet = { fg = p.decorator },
    CmpItemKindStruct = { fg = p.type },
    CmpItemKindText = { fg = p.fg },
    CmpItemKindTypeParameter = { fg = p.type },
    CmpItemKindUnit = { fg = p.css_unit },
    CmpItemKindValue = { fg = p.constant },
    CmpItemKindVariable = { fg = p.variable },
    CmpItemMenu = { fg = p.comment },

    -----------------------------------------------------------------
    -- nvim-tree
    -----------------------------------------------------------------
    NvimTreeNormal = { fg = p.fg_dim, bg = p.bg_dark },
    NvimTreeWinSeparator = { fg = p.bg_dark, bg = p.bg_dark },
    NvimTreeRootFolder = { fg = p.fg_cyan, bold = true },
    NvimTreeFolderIcon = { fg = p.keyword },
    NvimTreeFolderName = { fg = p.keyword },
    NvimTreeOpenedFolderName = { fg = p.fg_cyan },
    NvimTreeEmptyFolderName = { fg = p.comment },
    NvimTreeSpecialFile = { fg = p.func, underline = true },
    NvimTreeIndentMarker = { fg = p.indent_guide },
    NvimTreeGitDirty = { fg = p.git_modified },
    NvimTreeGitNew = { fg = p.git_untracked },
    NvimTreeGitDeleted = { fg = p.git_deleted },
    NvimTreeGitStaged = { fg = p.git_added },

    -----------------------------------------------------------------
    -- neo-tree
    -----------------------------------------------------------------
    NeoTreeNormal = { fg = p.fg_dim, bg = p.bg_dark },
    NeoTreeNormalNC = { fg = p.fg_dim, bg = p.bg_dark },
    NeoTreeDimText = { fg = p.comment },
    NeoTreeFileName = { fg = p.fg_dim },
    NeoTreeDirectoryIcon = { fg = p.keyword },
    NeoTreeDirectoryName = { fg = p.keyword },
    NeoTreeRootName = { fg = p.fg_cyan, bold = true },
    NeoTreeGitAdded = { fg = p.git_untracked },
    NeoTreeGitModified = { fg = p.git_modified },
    NeoTreeGitDeleted = { fg = p.git_deleted },
    NeoTreeGitConflict = { fg = p.error },
    NeoTreeIndentMarker = { fg = p.indent_guide },
    NeoTreeFloatBorder = { fg = p.border },

    -----------------------------------------------------------------
    -- indent-blankline
    -----------------------------------------------------------------
    IblIndent = { fg = p.indent_guide },
    IblScope = { fg = p.border },
    IndentBlanklineChar = { fg = p.indent_guide },
    IndentBlanklineContextChar = { fg = p.border },

    -----------------------------------------------------------------
    -- Which-key
    -----------------------------------------------------------------
    WhichKey = { fg = p.func },
    WhichKeyGroup = { fg = p.keyword },
    WhichKeyDesc = { fg = p.fg },
    WhichKeySeparator = { fg = p.comment },
    WhichKeyValue = { fg = p.comment },

    -----------------------------------------------------------------
    -- Lazy
    -----------------------------------------------------------------
    LazyH1 = { fg = p.bg_dark, bg = p.func, bold = true },
    LazyButton = { fg = p.fg, bg = p.bg_dark },
    LazyButtonActive = { fg = p.bg_dark, bg = p.type },
    LazyComment = { fg = p.comment },
    LazyProgressDone = { fg = p.func },
    LazyProgressTodo = { fg = p.bg_lighter },
    LazyReasonPlugin = { fg = p.func },
    LazySpecial = { fg = p.type },

    -----------------------------------------------------------------
    -- Mason
    -----------------------------------------------------------------
    MasonNormal = { fg = p.fg, bg = p.bg_dark },
    MasonHeader = { fg = p.bg_dark, bg = p.func, bold = true },
    MasonHighlight = { fg = p.func },
    MasonHighlightBlock = { fg = p.bg_dark, bg = p.type },
    MasonHighlightBlockBold = { fg = p.bg_dark, bg = p.type, bold = true },

    -----------------------------------------------------------------
    -- Notify
    -----------------------------------------------------------------
    NotifyERRORBorder = { fg = p.error },
    NotifyERRORIcon = { fg = p.error },
    NotifyERRORTitle = { fg = p.error },
    NotifyWARNBorder = { fg = p.warning },
    NotifyWARNIcon = { fg = p.warning },
    NotifyWARNTitle = { fg = p.warning },
    NotifyINFOBorder = { fg = p.info },
    NotifyINFOIcon = { fg = p.info },
    NotifyINFOTitle = { fg = p.info },
    NotifyDEBUGBorder = { fg = p.comment },
    NotifyDEBUGIcon = { fg = p.comment },
    NotifyDEBUGTitle = { fg = p.comment },
    NotifyTRACEBorder = { fg = p.type_keyword },
    NotifyTRACEIcon = { fg = p.type_keyword },
    NotifyTRACETitle = { fg = p.type_keyword },

    -----------------------------------------------------------------
    -- Noice
    -----------------------------------------------------------------
    NoiceCmdlinePopup = { fg = p.fg_muted, bg = p.bg_dark },
    NoiceCmdlinePopupBorder = { fg = p.border },
    NoiceCmdlineIcon = { fg = p.func },
    NoiceConfirm = { fg = p.fg, bg = p.bg_dark },
    NoiceConfirmBorder = { fg = p.border },

    -----------------------------------------------------------------
    -- Mini
    -----------------------------------------------------------------
    MiniStatuslineDevinfo = { fg = p.fg, bg = p.bg_lighter },
    MiniStatuslineFileinfo = { fg = p.fg, bg = p.bg_lighter },
    MiniStatuslineFilename = { fg = p.fg_dim, bg = p.bg_dark },
    MiniStatuslineInactive = { fg = p.comment, bg = p.bg_dark },
    MiniStatuslineModeCommand = { fg = p.bg_dark, bg = p.warning, bold = true },
    MiniStatuslineModeInsert = { fg = p.bg_dark, bg = p.type, bold = true },
    MiniStatuslineModeNormal = { fg = p.bg_dark, bg = p.func, bold = true },
    MiniStatuslineModeOther = { fg = p.bg_dark, bg = p.type_keyword, bold = true },
    MiniStatuslineModeReplace = { fg = p.bg_dark, bg = p.error, bold = true },
    MiniStatuslineModeVisual = { fg = p.bg_dark, bg = p.keyword, bold = true },

    -----------------------------------------------------------------
    -- Dashboard / Alpha
    -----------------------------------------------------------------
    DashboardHeader = { fg = p.func },
    DashboardFooter = { fg = p.comment },
    DashboardIcon = { fg = p.keyword },
    DashboardDesc = { fg = p.fg_dim },
    DashboardKey = { fg = p.func },
    DashboardShortCut = { fg = p.type },
  }
end

return M
