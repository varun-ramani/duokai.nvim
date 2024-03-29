local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment      { fg = hsl("#727072"), gui = "italic" }, -- any comment
    ColorColumn  { bg = hsl("#363636") }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = hsl("#efeeee") }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg = hsl('#2d2a2e'), bg = hsl("#fcfcfa") }, -- character under the cursor
    lCursor      { Cursor }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { Cursor }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { bg = hsl("#363636") }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = Normal.bg }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = hsl("#cddfef") }, -- directory names (and other special names in listings)
    DiffAdd      { fg = hsl('#2d2a2e'), bg = hsl("#a9dc76") }, -- diff mode: Added line |diff.txt|
    DiffChange   { fg = hsl("#2d2a2e"), bg = hsl("#fc9867")}, -- diff mode: Changed line |diff.txt|
    DiffDelete   { fg = hsl("#2d2a2e"), bg = hsl("#ff6188")}, -- diff mode: Deleted line |diff.txt|
    DiffText     { DiffChange }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = hsl("#888888") }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { Cursor }, -- cursor in a focused terminal
    TermCursorNC { Cursor }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = hsl("#ffffff"), bg = hsl("#ff8888") }, -- error messages on the command line
    VertSplit    { fg = hsl("#221f22") }, -- the column separating vertically split windows
    Folded       { fg = hsl("#cdcdcd"), bg = hsl("#444444") }, -- line used for closed folds
    FoldColumn   { Folded }, -- 'foldcolumn'
    SignColumn   { bg = Normal.bg }, -- column where |signs| are displayed
    IncSearch    { bg = hsl("#363636").lighten(10), gui = "bold" }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { IncSearch }, -- |:substitute| replacement text highlighting
    LineNr       { fg = hsl("#5b595c"), bg = Normal.bg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = hsl("#ffd866"), bg = hsl('#2d2a2e').lighten(10) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { gui = "underline" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { CursorLineNr }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal       { fg = hsl('#fcfcfa'), bg = hsl('#2d2a2e') }, -- normal text
    Normal       { fg = hsl('#fcfcfa'), bg = hsl('#2d2a2e') }, -- normal text
    NormalFloat  { Normal }, -- Normal text in floating windows.
    NormalNC     { Normal }, -- normal text in non-current windows
    Pmenu        { bg = hsl("#403e41"), gui = "bold" }, -- Popup menu: normal item.
    PmenuSel     { fg = hsl("#ffd866"), bg = Pmenu.bg.lighten(15) }, -- Popup menu: selected item.
    PmenuSbar    { bg = Pmenu.bg }, -- Popup menu: scrollbar.
    PmenuThumb   { bg = Pmenu.bg.lighten(15) }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { gui = "underline" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { fg = hsl("#d4d4d4"), bg = hsl("#444444") }, -- status line of current window
    StatusLineNC { fg = hsl("#dddddd"), bg = hsl("#444444") }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    Title        { fg = hsl("#ffea45") }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { IncSearch }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = hsl("#ff9333") }, -- warning messages
    Whitespace   { fg = hsl("#545454") }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { fg = hsl("#ab9df2"), gui = "bold"}, -- (preferred) any constant
    String         { fg = hsl("#ffd866"), gui = "bold"}, --   a string constant: "this is a string"
    Character      { fg = String.fg.lighten(50), gui = "bold" }, --  a character constant: 'c', '\n'
    Number         { Constant }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { Number }, --    a floating point constant: 2.3e10

    Identifier     { fg = hsl('#78dce8'), gui = "bold" }, -- (preferred) any variable name
    Function       { fg = hsl("#a9dc76"), gui = "bold" }, -- function name (also: methods for classes)

    Statement      { fg = hsl('#ff6188'), gui = "bold" }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    PreProc        { fg = Statement.fg.lighten(20), gui = "bold" }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = hsl('#78dce8').darken(20), gui = "bold"}, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special        { fg = hsl("#eeef9f") }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = hsl('#ff6188')}, -- (preferred) any erroneous construct

    Todo           { fg = hsl("#eeeee0") }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { Error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { fg = hsl('#fc9867') }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { fg = hsl('#78dce8') }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { fg = hsl('#ab9df2') }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    TSAnnotation         { fg = hsl("#C1C0C0"), gui = "bold" };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    TSConstant           { Constant };    -- For constants
    TSConstBuiltin       { TSConstant };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    TSFunction           { Function };    -- For function (calls and definitions).
    TSFuncBuiltin        { TSFunction };    -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro          { TSFunction };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSConstructor        { TSFunction };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { Identifier, gui = "bold, italic"};    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod             { TSFunction, gui = "italic" };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter          { fg = hsl("#FC9867"), gui = "bold, italic"};    -- For parameters of a function.
    TSParameterReference { TSParameter };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    TSString             { String };    -- For strings.
    TSStringRegex        { TSString, fg = TSString.fg.lighten(20) };    -- For regexes.
    TSStringEscape       { TSString, fg = TSString.fg.darken(20) };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    TSVariable           { fg = hsl("#ffffff"), gui = "bold" };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { fg = hsl("#C1C0C0"), gui = "bold, italic" };    -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag                { Statement };    -- Tags like html tag names.
    TSTagDelimiter       { TSTag };    -- Tag delimiter like `<` `>` `/`
    -- TSText               {  };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    TSURI                { gui = "underline, bold" };    -- Any URI like a link or email.
    --
    -- Other highlights
    MinimapCurrentLine { fg = hsl("#88ff88") }, -- wfxr/minimap.vim
    GitSignsAdd { bg = hsl("#363636"), fg = hsl("#88ff88") },    -- lewis6991/gitsigns.nvim
    GitSignsChange { bg = hsl("#363636"), fg = hsl("#ffdd88") },    -- lewis6991/gitsigns.nvim
    GitSignsDelete { bg = hsl("#363636"), fg = hsl("#ff8888") },    -- lewis6991/gitsigns.nvim

    FidgetTitle  { String },
    FidgetTask { Comment },
  }
end)

vim.g.minimap_highlight='MinimapCurrentLine'
-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
