 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:1:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:2:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:3:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:4::    Keymaps
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:5:: vim.keymap.set('t', '<m p>', [[getreg('+')  , {expr = true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:6::    LSP
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:7:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:8:: require'nvim treesitter.configs'.setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:9::    ensure_installed = "all",    one of "all", "maintained" (parsers with maintainers), or a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:10::   incremental_selection = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:11::     enable = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:12::     keymaps = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:13::       init_selection = '<m CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:14::         scope_incremental = '<CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:15::       node_incremental = '<TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:16::       node_decremental = '<S TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:17::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:18::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:19::   highlight = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:20::     enable = true,                 false will disable the whole extension
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:21::        Instead of true it can also be a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:22::     additional_vim_regex_highlighting = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:23::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:24:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:25:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:26:: require('leap').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:27::   max_aot_targets = nil,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:28::   highlight_unlabeled = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:29::   max_highlighted_traversal_targets = 20,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:30::   case_sensitive = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:31::      Sets of characters that should match each other.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:32::      Obvious candidates are braces and quotes ('([{', ') ', '`" '').
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:33::   equivalence_classes =
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:34::   {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:35::       {' ', " r", " n" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:36::       {' '','"', '/', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', ' ', '`', '/', '  ', ',', '.',';', ' ', '[', '', '{', ')', '(', ' '
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:37::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:38::      Leaving the   appropriate list emapty effectively disables "smart" mode,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:39::      and forces auto jump to be on or off.%
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:40::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:41:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:42::   require("todo comments").setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:43::        your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:44::        or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:45::        refer to the configuration section below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:46::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:47:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:48:: require('telescope').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:49::   defaults = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:50::     layout_config = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:51::       vertical = { width = 0.9 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:52::          other layout configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:53::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:54::     scroll_strategy = 'limit',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:55::      previewers = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:56::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:57::       filesize_limit = 25,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:58::       timeout = 300,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:59::       use_highlighter = false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:60::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:61::  ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:62::        other defaults configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:63::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:64::      other configuration values here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:65:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:66:: require("tokyonight").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:67::      your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:68::      or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:69::   style = "storm",    The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:70::   light_style = "day",    The theme is used when the background is set to light
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:71::   transparent = false,    Enable this to disable setting the background color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:72::   terminal_colors = true,    Configure the colors used when opening a `:terminal` in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:73::   styles = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:74::        Style to be applied to different syntax groups
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:75::        Value is any valid attr list value for `:help nvim_set_hl`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:76::     comments = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:77::     keywords = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:78::     functions = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:79::     variables = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:80::        Background styles. Can be "dark", "transparent" or "normal"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:81::     sidebars = "dark",    style for sidebars, see below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:82::     floats = "dark",    style for floating windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:83::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:84::   sidebars = { "qf", "help" ,    Set a darker background on sidebar like windows. For example: `["qf", "vista_kind", "terminal", "packer" `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:85::   day_brightness = 0.1,    Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:86::   hide_inactive_statusline = true,    Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:87::   dim_inactive = true,    dims inactive windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:88::   lualine_bold = false,    When `true`, section headers in the lualine theme will be bold
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:89:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:90::       You can override specific color groups to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:91::       function will be called with a ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:92::      @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:93::     on_colors = function(colors) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:94::     colors.normal = colors.black 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:95::     end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:96:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:97::       You can override specific highlights to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:98::       function will be called with a Highlights and ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:99::      @param highlights Highlights
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:100::      @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:101::      on_highlights = function(highlights, colors)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:102::      end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:103:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:104:: require("which key").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:105::   plugins = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:106::     marks = true,    shows a list of your marks on ' and `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:107::     registers = true,    shows your registers on " in NORMAL or <C r> in INSERT mode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:108::     spelling = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:109::       enabled = false,    enabling this will show WhichKey when pressing z= to select spelling suggestions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:110::       suggestions = 50,    how many suggestions should be shown in the list?
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:111::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:112::        the presets plugin, adds help for a bunch of default keybindings in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:113::        No actual key bindings are created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:114::     presets = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:115::       operators = true,    adds help for operators like d, y, ... and registers them for motion / text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:116::       motions = true,    adds help for motions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:117::       text_objects = true,    help for text objects triggered after entering an operator
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:118::       windows = true,    default bindings on <c w>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:119::       nav = true,    misc bindings to work with windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:120::       z = true,    bindings for folds, spelling and others prefixed with z
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:121::       g = true,    bindings for prefixed with g
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:122::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:123::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:124::      add operators that will trigger motion and text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:125::      to enable all native operators, set the preset / operators plugin above
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:126::   operators = { gc = "Comments" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:127::   key_labels = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:128::        override the label used to display some keys. It doesn't effect WK in any other way.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:129::        For example:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:130::        ["<space>"  = "SPC",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:131::        ["<cr>"  = "RET",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:132::        ["<tab>"  = "TAB",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:133::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:134::   icons = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:135::     breadcrumb = "»",    symbol used in the command line area that shows your active key combo
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:136::     separator = "➜",    symbol used between a key and it's label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:137::     group = "+",    symbol prepended to a group
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:138::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:139::   popup_mappings = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:140::     scroll_down = '<c d>',    binding to scroll down inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:141::     scroll_up = '<c u>',    binding to scroll up inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:142::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:143::   window = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:144::     border = "none",    none, single, double, shadow
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:145::     position = "bottom",    bottom, top
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:146::     margin = { 1, 0, 1, 0 ,    extra window margin [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:147::     padding = { 2, 2, 2, 2 ,    extra window padding [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:148::     winblend = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:149::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:150::   layout = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:151::     height = { min = 50, max = 50 ,    min and max height of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:152::     width = { min = 10, max = 50 ,    min and max width of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:153::     spacing = 3,    spacing between columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:154::     align = "left",    align columns left, center or right
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:155::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:156::   ignore_missing = false,    enable this to hide mappings for which you didn't specify a label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:157::   hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ",    hide mapping boilerplate
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:158::   show_help = true,    show help message on the command line when the popup is visible
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:159::   show_keys = true,    show the currently pressed key and its label as a message in the command line
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:160::   triggers = {"<leader>", "g", "z", ";",    automatically setup triggers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:161::      triggers = {"<leader>"    or specify a list manually
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:162::   triggers_blacklist = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:163::        list of mode / prefixes that should never be hooked by WhichKey
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:164::        this is mostly relevant for key maps that start with a native binding
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:165::        most people should not need to change this
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:166::     i = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:167::     v = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:168::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:169::      disable the WhichKey popup for certain buf types and file types.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:170::      Disabled by deafult for Telescope
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:171::   disable = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:172::     buftypes = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:173::     filetypes = { "TelescopePrompt" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:174::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:175:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:176:: require("gruvbox").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:177:: undercurl = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:178::   underline = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:179::   bold = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:180::   italic = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:181::   strikethrough = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:182::   invert_selection = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:183::   invert_signs = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:184::   invert_tabline = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:185::   invert_intend_guides = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:186::   inverse = false,    invert background for search, diffs, statuslines and errors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:187::   contrast = "hard",    can be "hard", "soft" or empty string
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:188::   palette_overrides = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:189::   dim_inactive = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:190::   transparent_mode = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:191::     overrides = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:192::         SignColumn = {bg = "#ffa546",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:193::         Normal = {bg = "#ffa546",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:194::         DiagnosticSignError = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:195::         DiagnosticSignWarn = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:196::         DiagnosticSignInfo = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:197::         DiagnosticSignHint = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:198::         texType = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:199::         texMath = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:200::         Special = { fg = "#650000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:201::         texDelimiter = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:202::         texStatement = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:203::            Operator = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:204::         Type = { fg = "#008800" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:205::         Comment = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:206::         String = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:207::         Operator = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:208::         Pmenu = { bg = "#ffa546", fg = "#1e2030" 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:209::           bright orange  #fd8432
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:210::           texComment = { fg = "#00ff00" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:211::            texString = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:212::            Special = {fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:213::            texCmdName = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:214::            SpecialChar = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:215::            Statement = { fg = "#0000ff" 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:216::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:217:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:218:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:219::    nvim LSP
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:220:: require('snippets')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:221:: require("mason").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:222:: require("mason lspconfig").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:223:: require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:224::    LSP config
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:225:: local lspconfig = require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:226:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:227::     lspconfig.sumneko_lua.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:228::     lspconfig.tsserver.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:229::     lspconfig.vimls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:230::     lspconfig.ltex.setup { autostart = false;
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:231::        on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:232::     lspconfig.texlab.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:233::    lspconfig stuff    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:234::    local nvim_lsp = require('lspconfig')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:235::    Use an on_attach function to only map the following keys
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:236::    after the language server attaches to the current buffer
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:237:: local on_attach = function(client, bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:238:: local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:239:: local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:240:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:241::     Enable completion triggered by <c x><c o>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:242:: buf_set_keymap('omnifunc', 'v:lua.vim.lsp.omnifunc')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:243:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:244:: require'lspconfig'.sumneko_lua.setup(require("lualsp"))    Mappings.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:245:: local opts = { noremap=true, silent=true 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:246:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:247::      See `:help vim.lsp.*` for documentation on any of the below functions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:248::   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:249::   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:250::     buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:251::   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:252::   buf_set_keymap('n', '<S C k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:253::   buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:254::   buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:255::   buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:256::   buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:257::   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:258::   buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:259::   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:260::   buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:261::   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:262::   buf_set_keymap('n', ' d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:263::   buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:264::   buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:265:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:266:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:267::      Setup cmp.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:268:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:269:: local has_words_before = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:270::   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:271::     return false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:272::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:273::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:274::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line   1, line, true)[1 :sub(col, col):match("%s") == nil
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:275:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:276:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:277:: local feedkey = function(key, mode)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:278::   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:279:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:280:: local luasnip = require("luasnip")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:281:: local cmp = require'cmp'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:282:: cmp.setup ({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:283:: snippet = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:284::   expand = function(args)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:285::     luasnip.lsp_expand(args.body)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:286::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:287:: ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:288:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:289:: mapping = cmp.mapping.preset.insert({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:290::         ["<C p>"  = cmp.mapping.select_prev_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:291::         ["<C n>"  = cmp.mapping.select_next_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:292::        ['<C d>'  = cmp.mapping.scroll_docs( 4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:293::       ['<C f>'  = cmp.mapping.scroll_docs(4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:294::       ['<C x>'  = cmp.mapping.complete(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:295::       ['<C e>'  = cmp.mapping.close(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:296::       ['<CR>'  = cmp.mapping.confirm({ select = true ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:297::    ... Your other mappings ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:298:: ["<Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:299:: 			if luasnip.expandable() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:300:: 				luasnip.expand()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:301::                         elseif cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:302::                              cmp.select_next_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:303:: 			elseif has_words_before() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:304:: 				cmp.complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:305::                         	
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:306::                              else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:307:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:308:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:309:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:310:: 		["<S Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:311:: 			if cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:312:: 				cmp.select_prev_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:313:: 			elseif luasnip.jumpable( 1) then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:314:: 				luasnip.jump( 1)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:315:: 			else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:316:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:317:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:318:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:319:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:320:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:321:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:322:: requires = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:323::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:324::       'tzachar/fuzzy.nvim',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:325::       'quangnguyen30192/cmp nvim tags',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:326::          if you want the sources is available for some file types
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:327::       ft = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:328::         'tex',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:329::         'latex' 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:330::       
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:331::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:332::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:333::    ... Your other configuration ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:334:: sources = cmp.config.sources({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:335::          For vsnip user. 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:336:: { name = 'tags' ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:337:: { name = 'nvim_lsp', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:338:: { name = 'luasnip', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:339::    For ultisnips user.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:340::          { name = 'ultisnips' ,  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:341:: { name = 'omni', keyword_length = 4,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:342::           { name = 'spell' , 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:343::         { name = 'treesitter', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:344:: { name = 'buffer', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:345::   { name = 'fuzzy_buffer', keyword_length = 8 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:346:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:347:: completion = { autocomplete = false 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:348:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:349:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:350:: require('nvim_comment').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:351::       Linters prefer comment and line to have a space in between markers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:352::    marker_padding = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:353::       should comment out empty or whitespace only lines
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:354::    comment_empty = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:355::       Should key mappings be created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:356::    create_mappings = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:357::       Normal mode mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:358::    line_mapping = "gc",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:359::       Visual/Operator mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:360::    operator_mapping = "<leader>c",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:361::       Hook function to call before commenting takes place
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:362::      hook = nil 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:363::  )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:364:: require('spellsitter').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:365::   hl = 'SpellBad',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:366::   captures = {,     set to { to spellcheck everything
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:367:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:368::      Spellchecker to use. values:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:369::      * vimfn: built in spell checker using vim.fn.spellbadword()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:370::      * ffi: built in spell checker using the FFI to access the
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:371::        internal spell_check() function
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:372:: spellchecker = 'vimfn'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:373:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:374:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:375:: require('lualine').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:376::   options = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:377::        theme = 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:378::     theme = require('theme').theme(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:379::     icons_enabled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:380::     component_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:381::     section_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:382::     disabled_filetypes = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:383::       statusline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:384::       winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:385::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:386::     ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:387::     always_divide_middle = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:388::     globalstatus = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:389::     refresh = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:390::       statusline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:391::       tabline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:392::       winbar = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:393::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:394::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:395::   sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:396::   lualine_a = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:397::         {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:398::           'filename',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:399::           color = 'lualine_a_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:400::           file_status = true,         Displays file status (readonly status, modified status)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:401::           newfile_status = false,      Display new file status (new file means no write after created)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:402::           path = 3,                   0: Just the filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:403::                                       1: Relative path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:404::                                       2: Absolute path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:405::                                       3: Absolute path, with tilde as the home directory
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:406::           symbols = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:407::             modified = '[+ ',         Text to show when the file is modified.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:408::             readonly = '[  ',         Text to show when the file is non modifiable or readonly.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:409::             unnamed = '[No Name ',    Text to show for unnamed buffers.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:410::             newfile = '[New ',        Text to show for new created file before first writting
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:411::          
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:412::         
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:413::       ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:414::       lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:415::     lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:416::     lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:417::     lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:418::     lualine_z = {{'location', color = 'lualine_z_normal'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:419::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:420::   inactive_sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:421::     lualine_a = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:422::     lualine_b = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:423::     lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:424::     lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:425::     lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:426::     lualine_z = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:427::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:428::   tabline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:429::   winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:430::   inactive_winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:431::   extension = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:432:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:433:: vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:434:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:435:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:436:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:437:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:438::    load snippets from path/of/your/nvim/config/my cool snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:439::   vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:440::    require("luasnip/loaders/from_vscode").lazy_load()    load snippets of friendly/snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:441::    require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets" )    load your own snippets
