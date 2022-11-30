 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:1:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:2:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:3:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:4:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:5::    Keymaps
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:6:: vim.keymap.set('t', '<C r>+', [[getreg('+')  , {expr = true)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:7::    LSP
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:8:: require'nvim treesitter.configs'.setup {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:9::    ensure_installed = "all",    one of "all", "maintained" (parsers with maintainers), or a list of languages
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:10::   incremental_selection = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:11::     enable = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:12::     keymaps = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:13::       init_selection = '<m CR>',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:14::         scope_incremental = '<CR>',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:15::       node_incremental = '<TAB>',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:16::       node_decremental = '<S TAB>',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:17::     ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:18::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:19::   highlight = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:20::     enable = true,                 false will disable the whole extension
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:21::        Instead of true it can also be a list of languages
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:22::     additional_vim_regex_highlighting = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:23::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:24:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:25:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:26:: require('leap').setup {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:27::   max_aot_targets = nil,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:28::   highlight_unlabeled = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:29::   max_highlighted_traversal_targets = 10,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:30::   case_sensitive = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:31::      Sets of characters that should match each other.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:32::      Obvious candidates are braces and quotes ('([{', ') ', '`" '').
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:33::   equivalence_classes =
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:34::   {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:35::       {' ', " r", " n" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:36::       {' '','"', '/', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', ' ', '`', '/', '  ', ',', '.',';', ' ', '[', '', '{', ')', '(', ' '
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:37::     ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:38::      Leaving the   appropriate list emapty effectively disables "smart" mode,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:39::      and forces auto jump to be on or off.%
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:40::   
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:41:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:42::   require("todo comments").setup {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:43::        your configuration comes here
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:44::        or leave it empty to use the default settings
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:45::        refer to the configuration section below
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:46::   
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:47:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:48:: require('telescope').setup({
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:49::   defaults = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:50::     layout_config = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:51::       vertical = { width = 0.9 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:52::          other layout configuration here
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:53::     ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:54::        other defaults configuration here
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:55::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:56::      other configuration values here
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:57:: )
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:58:: require("tokyonight").setup({
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:59::      your configuration comes here
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:60::      or leave it empty to use the default settings
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:61::   style = "storm",    The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:62::   light_style = "day",    The theme is used when the background is set to light
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:63::   transparent = false,    Enable this to disable setting the background color
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:64::   terminal_colors = true,    Configure the colors used when opening a `:terminal` in Neovim
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:65::   styles = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:66::        Style to be applied to different syntax groups
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:67::        Value is any valid attr list value for `:help nvim_set_hl`
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:68::     comments = { italic = true ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:69::     keywords = { italic = true ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:70::     functions = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:71::     variables = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:72::        Background styles. Can be "dark", "transparent" or "normal"
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:73::     sidebars = "dark",    style for sidebars, see below
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:74::     floats = "dark",    style for floating windows
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:75::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:76::   sidebars = { "qf", "help" ,    Set a darker background on sidebar like windows. For example: `["qf", "vista_kind", "terminal", "packer" `
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:77::   day_brightness = 0.1,    Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:78::   hide_inactive_statusline = true,    Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:79::   dim_inactive = true,    dims inactive windows
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:80::   lualine_bold = false,    When `true`, section headers in the lualine theme will be bold
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:81:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:82::       You can override specific color groups to use other groups or a hex color
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:83::       function will be called with a ColorScheme table
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:84::      @param colors ColorScheme
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:85::     on_colors = function(colors) 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:86::     colors.normal = colors.black 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:87::     end,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:88:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:89::       You can override specific highlights to use other groups or a hex color
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:90::       function will be called with a Highlights and ColorScheme table
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:91::      @param highlights Highlights
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:92::      @param colors ColorScheme
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:93::   on_highlights = function(highlights, colors) 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:94::   end,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:95::   
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:96:: )
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:97:: require("which key").setup({
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:98::   plugins = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:99::     marks = true,    shows a list of your marks on ' and `
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:100::     registers = true,    shows your registers on " in NORMAL or <C r> in INSERT mode
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:101::     spelling = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:102::       enabled = false,    enabling this will show WhichKey when pressing z= to select spelling suggestions
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:103::       suggestions = 50,    how many suggestions should be shown in the list?
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:104::     ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:105::        the presets plugin, adds help for a bunch of default keybindings in Neovim
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:106::        No actual key bindings are created
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:107::     presets = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:108::       operators = true,    adds help for operators like d, y, ... and registers them for motion / text object completion
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:109::       motions = true,    adds help for motions
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:110::       text_objects = true,    help for text objects triggered after entering an operator
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:111::       windows = true,    default bindings on <c w>
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:112::       nav = true,    misc bindings to work with windows
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:113::       z = true,    bindings for folds, spelling and others prefixed with z
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:114::       g = true,    bindings for prefixed with g
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:115::     ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:116::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:117::      add operators that will trigger motion and text object completion
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:118::      to enable all native operators, set the preset / operators plugin above
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:119::   operators = { gc = "Comments" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:120::   key_labels = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:121::        override the label used to display some keys. It doesn't effect WK in any other way.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:122::        For example:
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:123::        ["<space>"  = "SPC",
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:124::        ["<cr>"  = "RET",
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:125::        ["<tab>"  = "TAB",
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:126::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:127::   icons = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:128::     breadcrumb = "»",    symbol used in the command line area that shows your active key combo
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:129::     separator = "➜",    symbol used between a key and it's label
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:130::     group = "+",    symbol prepended to a group
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:131::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:132::   popup_mappings = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:133::     scroll_down = '<c d>',    binding to scroll down inside the popup
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:134::     scroll_up = '<c u>',    binding to scroll up inside the popup
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:135::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:136::   window = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:137::     border = "none",    none, single, double, shadow
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:138::     position = "bottom",    bottom, top
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:139::     margin = { 1, 0, 1, 0 ,    extra window margin [top, right, bottom, left 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:140::     padding = { 2, 2, 2, 2 ,    extra window padding [top, right, bottom, left 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:141::     winblend = 0
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:142::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:143::   layout = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:144::     height = { min = 50, max = 50 ,    min and max height of the columns
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:145::     width = { min = 10, max = 50 ,    min and max width of the columns
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:146::     spacing = 3,    spacing between columns
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:147::     align = "left",    align columns left, center or right
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:148::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:149::   ignore_missing = false,    enable this to hide mappings for which you didn't specify a label
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:150::   hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ",    hide mapping boilerplate
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:151::   show_help = true,    show help message on the command line when the popup is visible
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:152::   show_keys = true,    show the currently pressed key and its label as a message in the command line
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:153::   triggers = {"<leader>", "g", "z", ";",    automatically setup triggers
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:154::      triggers = {"<leader>"    or specify a list manually
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:155::   triggers_blacklist = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:156::        list of mode / prefixes that should never be hooked by WhichKey
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:157::        this is mostly relevant for key maps that start with a native binding
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:158::        most people should not need to change this
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:159::     i = { "j", "k" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:160::     v = { "j", "k" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:161::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:162::      disable the WhichKey popup for certain buf types and file types.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:163::      Disabled by deafult for Telescope
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:164::   disable = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:165::     buftypes = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:166::     filetypes = { "TelescopePrompt" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:167::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:168:: )
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:169:: require("gruvbox").setup({
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:170:: undercurl = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:171::   underline = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:172::   bold = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:173::   italic = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:174::   strikethrough = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:175::   invert_selection = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:176::   invert_signs = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:177::   invert_tabline = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:178::   invert_intend_guides = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:179::   inverse = false,    invert background for search, diffs, statuslines and errors
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:180::   contrast = "hard",    can be "hard", "soft" or empty string
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:181::   palette_overrides = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:182::   dim_inactive = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:183::   transparent_mode = false,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:184::     overrides = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:185::         SignColumn = {bg = "#ffa546",
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:186::         Normal = {bg = "#ffa546",
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:187::         DiagnosticSignError = { bg = "#ffa546" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:188::         DiagnosticSignWarn = { bg = "#ffa546" , 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:189::         DiagnosticSignInfo = { bg = "#ffa546" , 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:190::         DiagnosticSignHint = { bg = "#ffa546" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:191::           texComment = { fg = "#00ff00" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:192::            texString = { fg = "#0000ff" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:193::            Special = {fg = "#0000ff" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:194::            texCmdName = { fg = "#0000ff" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:195::            SpecialChar = { fg = "#0000ff" ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:196::            Statement = { fg = "#0000ff" 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:197:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:198::     
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:199:: )
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:200:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:201::    nvim installer
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:202:: require('snippets') 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:203:: require("nvim lsp installer").setup {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:204::     local lspconfig = require("lspconfig")
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:205:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:206::     local function on_attach(client, bufnr)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:207::            set up buffer keymaps, etc.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:208::     end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:209:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:210::     lspconfig.sumneko_lua.setup { on_attach = on_attach 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:211::     lspconfig.tsserver.setup { on_attach = on_attach 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:212::     lspconfig.vimls.setup { on_attach = on_attach 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:213::     lspconfig.ltex.setup { on_attach = on_attach 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:214::     lspconfig.texlab.setup { on_attach = on_attach 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:215::    lspconfig stuff    
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:216:: local nvim_lsp = require('lspconfig')
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:217::    Use an on_attach function to only map the following keys
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:218::    after the language server attaches to the current buffer
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:219:: local on_attach = function(client, bufnr)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:220:: local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:221::  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:222::    Enable completion triggered by <c x><c o>
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:223:: buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:224:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:225:: require'lspconfig'.sumneko_lua.setup(require("lualsp"))    Mappings.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:226:: local opts = { noremap=true, silent=true 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:227:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:228::      See `:help vim.lsp.*` for documentation on any of the below functions
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:229::   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:230::   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:231::     buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:232::   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:233::   buf_set_keymap('n', '<S C k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:234::   buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:235::   buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:236::   buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:237::   buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:238::   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:239::   buf_set_keymap('n', 'gca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:240::     buf_set_keymap('n', 'lr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:241::   buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:242::   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:243::   buf_set_keymap('n', ' d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:244::   buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:245::   buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:246:: end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:247:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:248::      Setup cmp.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:249:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:250:: local has_words_before = function()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:251::   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:252::     return false
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:253::   end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:254::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:255::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line   1, line, true)[1 :sub(col, col):match("%s") == nil
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:256:: end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:257:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:258:: local feedkey = function(key, mode)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:259::   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:260:: end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:261:: local luasnip = require("luasnip")
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:262:: local cmp = require'cmp'
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:263:: cmp.setup ({
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:264:: snippet = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:265::   expand = function(args)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:266::     luasnip.lsp_expand(args.body)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:267::   end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:268:: ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:269:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:270:: mapping = cmp.mapping.preset.insert({
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:271::         ["<C p>"  = cmp.mapping.select_prev_item(),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:272::         ["<C n>"  = cmp.mapping.select_next_item(),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:273::        ['<C d>'  = cmp.mapping.scroll_docs( 4),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:274::       ['<C f>'  = cmp.mapping.scroll_docs(4),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:275::       ['<C x>'  = cmp.mapping.complete(),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:276::       ['<C e>'  = cmp.mapping.close(),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:277::       ['<CR>'  = cmp.mapping.confirm({ select = true ),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:278::    ... Your other mappings ...
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:279:: ["<Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:280:: 			if luasnip.expandable() then
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:281:: 				luasnip.expand()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:282::                         elseif cmp.visible() then
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:283::                              cmp.select_next_item()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:284:: 			elseif has_words_before() then
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:285:: 				cmp.complete()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:286::                         	
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:287::                              else
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:288:: 				fallback()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:289:: 			end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:290:: 		end, { "i", "s" ),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:291:: 		["<S Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:292:: 			if cmp.visible() then
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:293:: 				cmp.select_prev_item()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:294:: 			elseif luasnip.jumpable( 1) then
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:295:: 				luasnip.jump( 1)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:296:: 			else
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:297:: 				fallback()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:298:: 			end
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:299:: 		end, { "i", "s" ),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:300:: ),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:301:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:302:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:303:: requires = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:304::     {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:305::       'tzachar/fuzzy.nvim',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:306::       'quangnguyen30192/cmp nvim tags',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:307::          if you want the sources is available for some file types
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:308::       ft = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:309::         'tex',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:310::         'latex' 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:311::       
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:312::     
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:313::     ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:314::    ... Your other configuration ...
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:315:: sources = cmp.config.sources({
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:316::          For vsnip user. 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:317:: { name = 'vsnip', keyword_length = 1000 ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:318:: { name = 'luasnip', keyword_length = 1000 ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:319:: { name = 'tags' ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:320:: { name = 'nvim_lsp', keyword_length = 4 ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:321::    For ultisnips user.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:322::          { name = 'ultisnips' ,  
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:323:: { name = 'omni', keyword_length = 4,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:324::           { name = 'spell' , 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:325::         { name = 'treesitter', keyword_length = 4 ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:326:: { name = 'buffer', keyword_length = 4 ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:327::   { name = 'fuzzy_buffer', keyword_length = 8 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:328:: ),
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:329:: completion = { autocomplete = false 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:330:: )
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:331:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:332::  require('nvim_comment').setup(
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:333:: {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:334::       Linters prefer comment and line to have a space in between markers
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:335::    marker_padding = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:336::       should comment out empty or whitespace only lines
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:337::    comment_empty = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:338::       Should key mappings be created
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:339::    create_mappings = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:340::       Normal mode mapping left hand side
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:341::    line_mapping = "gc",
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:342::       Visual/Operator mapping left hand side
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:343::    operator_mapping = "<leader>c",
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:344::       Hook function to call before commenting takes place
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:345::      hook = nil 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:346::  
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:347::  )
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:348:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:349:: require('spellsitter').setup {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:350::   hl = 'SpellBad', 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:351::   captures = {,     set to { to spellcheck everything
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:352:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:353::      Spellchecker to use. values:
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:354::      * vimfn: built in spell checker using vim.fn.spellbadword()
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:355::      * ffi: built in spell checker using the FFI to access the
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:356::        internal spell_check() function
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:357:: spellchecker = 'vimfn'
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:358:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:359:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:360:: require('lualine').setup {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:361::   options = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:362::     icons_enabled = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:363::     theme = 'auto',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:364::     component_separators = { left = '', right = '',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:365::     section_separators = { left = '', right = '',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:366::     disabled_filetypes = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:367::       statusline = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:368::       winbar = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:369::     ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:370::     ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:371::     always_divide_middle = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:372::     globalstatus = true,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:373::     refresh = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:374::       statusline = 1000,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:375::       tabline = 1000,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:376::       winbar = 1000,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:377::     
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:378::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:379::   sections = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:380::   lualine_a = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:381::         {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:382::           'filename',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:383::           color = 'lualine_a_normal',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:384::           file_status = true,         Displays file status (readonly status, modified status)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:385::           newfile_status = false,      Display new file status (new file means no write after created)
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:386::           path = 3,                   0: Just the filename
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:387::                                       1: Relative path
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:388::                                       2: Absolute path
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:389::                                       3: Absolute path, with tilde as the home directory
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:390::   
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:391::           symbols = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:392::             modified = '[+ ',         Text to show when the file is modified.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:393::             readonly = '[  ',         Text to show when the file is non modifiable or readonly.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:394::             unnamed = '[No Name ',    Text to show for unnamed buffers.
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:395::             newfile = '[New ',        Text to show for new created file before first writting
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:396::          
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:397::         
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:398::       ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:399::       lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal',
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:400::     lualine_c = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:401::     lualine_x = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:402::     lualine_y = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:403::     lualine_z = {{'location', color = 'lualine_z_normal'
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:404::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:405::   inactive_sections = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:406::     lualine_a = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:407::     lualine_b = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:408::     lualine_c = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:409::     lualine_x = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:410::     lualine_y = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:411::     lualine_z = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:412::   ,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:413::   tabline = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:414::   winbar = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:415::   inactive_winbar = {,
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:416::   extensions = {
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:417:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:418:: 
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:419::    load snippets from path/of/your/nvim/config/my cool snippets
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:420::   vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:421::    require("luasnip/loaders/from_vscode").lazy_load()    load snippets of friendly/snippets
 C:/Users/yasha/AppData/Local/nvim/lua/settings.lua:422::    require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets" )    load your own snippets
