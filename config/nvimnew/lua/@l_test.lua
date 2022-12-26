 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:1:: require'nvim treesitter.configs'.setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:2::    ensure_installed = "all",    one of "all", "maintained" (parsers with maintainers), or a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:3::   incremental_selection = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:4::     enable = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:5::     keymaps = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:6::       init_selection = '<m CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:7::         scope_incremental = '<CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:8::       node_incremental = '<TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:9::       node_decremental = '<S TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:10::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:11::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:12::   highlight = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:13::     enable = true,                 false will disable the whole extension
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:14::        Instead of true it can also be a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:15::     additional_vim_regex_highlighting = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:16::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:17:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:18:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:19:: require('leap').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:20::   max_aot_targets = nil,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:21::   highlight_unlabeled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:22::   max_highlighted_traversal_targets = 20,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:23::   case_sensitive = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:24::      Sets of characters that should match each other.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:25::      Obvious candidates are braces and quotes ('([{', ') ', '`" '').
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:26::   equivalence_classes =
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:27::   {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:28::       {' ', " r", " n" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:29::       {' '','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', ' ', '`', '/', '  ', ',', '.',';', ' ', '[', '', '{', ')', '(', ' '
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:30::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:31::      Leaving the   appropriate list emapty effectively disables "smart" mode,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:32::      and forces auto jump to be on or off.%
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:33:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:34:: vim.api.nvim_set_hl(0, 'LeapMatch', { fg='white' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:35:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:36:: require("todo comments").setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:37::        your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:38::        or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:39::        refer to the configuration section below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:40:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:41::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:42:: require('telescope').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:43::   defaults = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:44::     layout_config = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:45::       vertical = { width = 0.9 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:46::          other layout configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:47::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:48::     scroll_strategy = 'limit',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:49::      previewers = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:50::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:51::       filesize_limit = 25,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:52::       timeout = 300,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:53::       use_highlighter = false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:54::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:55::  ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:56::        other defaults configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:57::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:58::      other configuration values here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:59:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:60::    require("tokyonight").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:61::         your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:62::         or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:63::      style = "storm",    The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:64::      light_style = "day",    The theme is used when the background is set to light
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:65::      transparent = false,    Enable this to disable setting the background color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:66::      terminal_colors = true,    Configure the colors used when opening a `:terminal` in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:67::      styles = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:68::           Style to be applied to different syntax groups
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:69::           Value is any valid attr list value for `:help nvim_set_hl`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:70::        comments = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:71::        keywords = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:72::        functions = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:73::        variables = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:74::           Background styles. Can be "dark", "transparent" or "normal"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:75::        sidebars = "dark",    style for sidebars, see below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:76::        floats = "dark",    style for floating windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:77::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:78::      sidebars = { "qf", "help" ,    Set a darker background on sidebar like windows. For example: `["qf", "vista_kind", "terminal", "packer" `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:79::      day_brightness = 0.1,    Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:80::      hide_inactive_statusline = true,    Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:81::      dim_inactive = true,    dims inactive windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:82::      lualine_bold = false,    When `true`, section headers in the lualine theme will be bold
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:83::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:84::          You can override specific color groups to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:85::          function will be called with a ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:86::         @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:87::        on_colors = function(colors) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:88::        colors.normal = colors.black 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:89::        end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:90::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:91::          You can override specific highlights to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:92::          function will be called with a Highlights and ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:93::         @param highlights Highlights
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:94::         @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:95::         on_highlights = function(highlights, colors)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:96::         end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:97::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:98:: require("which key").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:99::   plugins = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:100::     marks = true,    shows a list of your marks on ' and `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:101::     registers = true,    shows your registers on " in NORMAL or <C r> in INSERT mode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:102::     spelling = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:103::       enabled = false,    enabling this will show WhichKey when pressing z= to select spelling suggestions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:104::       suggestions = 50,    how many suggestions should be shown in the list?
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:105::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:106::        the presets plugin, adds help for a bunch of default keybindings in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:107::        No actual key bindings are created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:108::     presets = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:109::       operators = true,    adds help for operators like d, y, ... and registers them for motion / text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:110::       motions = true,    adds help for motions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:111::       text_objects = true,    help for text objects triggered after entering an operator
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:112::       windows = true,    default bindings on <c w>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:113::       nav = true,    misc bindings to work with windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:114::       z = true,    bindings for folds, spelling and others prefixed with z
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:115::       g = true,    bindings for prefixed with g
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:116::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:117::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:118::      add operators that will trigger motion and text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:119::      to enable all native operators, set the preset / operators plugin above
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:120::   operators = { gc = "Comments" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:121::   key_labels = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:122::        override the label used to display some keys. It doesn't effect WK in any other way.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:123::        For example:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:124::        ["<space>"  = "SPC",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:125::        ["<cr>"  = "RET",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:126::        ["<tab>"  = "TAB",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:127::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:128::   icons = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:129::     breadcrumb = "»",    symbol used in the command line area that shows your active key combo
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:130::     separator = "➜",    symbol used between a key and it's label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:131::     group = "+",    symbol prepended to a group
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:132::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:133::   popup_mappings = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:134::     scroll_down = '<c d>',    binding to scroll down inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:135::     scroll_up = '<c u>',    binding to scroll up inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:136::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:137::   window = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:138::     border = "none",    none, single, double, shadow
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:139::     position = "bottom",    bottom, top
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:140::     margin = { 1, 0, 1, 0 ,    extra window margin [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:141::     padding = { 2, 2, 2, 2 ,    extra window padding [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:142::     winblend = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:143::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:144::   layout = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:145::     height = { min = 50, max = 50 ,    min and max height of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:146::     width = { min = 10, max = 50 ,    min and max width of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:147::     spacing = 3,    spacing between columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:148::     align = "left",    align columns left, center or right
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:149::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:150::   ignore_missing = false,    enable this to hide mappings for which you didn't specify a label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:151::   hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ",    hide mapping boilerplate
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:152::   show_help = true,    show help message on the command line when the popup is visible
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:153::   show_keys = true,    show the currently pressed key and its label as a message in the command line
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:154::   triggers = {"<leader>", "g", ";",    automatically setup triggers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:155::      triggers = {"<leader>"    or specify a list manually
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:156::   triggers_blacklist = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:157::        list of mode / prefixes that should never be hooked by WhichKey
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:158::        this is mostly relevant for key maps that start with a native binding
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:159::        most people should not need to change this
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:160::     i = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:161::     v = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:162::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:163::      disable the WhichKey popup for certain buf types and file types.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:164::      Disabled by deafult for Telescope
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:165::   disable = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:166::     buftypes = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:167::     filetypes = { "TelescopePrompt" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:168::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:169:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:170:: require("gruvbox").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:171:: undercurl = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:172::   underline = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:173::   bold = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:174::   italic = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:175::   strikethrough = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:176::   invert_selection = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:177::   invert_signs = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:178::   invert_tabline = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:179::   invert_intend_guides = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:180::   inverse = false,    invert background for search, diffs, statuslines and errors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:181::   contrast = "hard",    can be "hard", "soft" or empty string
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:182::   palette_overrides = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:183::   dim_inactive = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:184::   transparent_mode = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:185::     overrides = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:186::         SignColumn = {bg = "#ffa546",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:187::         Normal = {bg = "#ffa546",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:188::         DiagnosticSignError = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:189::         DiagnosticSignWarn = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:190::         DiagnosticSignInfo = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:191::         DiagnosticSignHint = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:192::         texType = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:193::         texMath = { fg = "#650000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:194::         TexSpecial = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:195::         texDelimiter = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:196::         texStatement = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:197:: 				texRefzone = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:198:: 				texCite = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:199:: 				Special = { fg = '#580058' ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:200:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:201:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:202::            Operator = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:203::         Type = { fg = "#008800" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:204::         Comment = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:205::         String = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:206::         Operator = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:207::         Pmenu = { bg = "#ffa546", fg = "#1e2030" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:208:: 				texTypeStyle = { fg = "#427b58" 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:209::           bright orange  #fd8432
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:210::           texComment = { fg = "#00ff00" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:211::            texString = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:212::            Special = {fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:213::            texCmdName = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:214::            SpecialChar = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:215::            Statement = { fg = "#0000ff" 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:216::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:217:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:218::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:219::       nvim LSP
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:220::    require('snippets')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:221::    require("mason").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:222::    require("mason lspconfig").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:223::    require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:224::       LSP config
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:225::    local lspconfig = require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:226::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:227::        lspconfig.sumneko_lua.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:228::        lspconfig.tsserver.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:229::        lspconfig.jsonls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:230::        lspconfig.rome.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:231::        lspconfig.vimls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:232::        lspconfig.ltex.setup { autostart = false;
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:233::           on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:234::        lspconfig.texlab.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:235::       lspconfig stuff    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:236::       local nvim_lsp = require('lspconfig')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:237::       Use an on_attach function to only map the following keys
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:238::       after the language server attaches to the current buffer
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:239::    local on_attach = function(client, bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:240::    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:241::      
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:242::       local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:243::       Enable completion triggered by <c x><c o>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:244::    buf_set_keymap('omnifunc', 'v:lua.vim.lsp.omnifunc')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:245::    require'lspconfig'.sumneko_lua.setup(require("lualsp"))    Mappings.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:246::    local opts = { noremap=true, silent=true 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:247::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:248::         See `:help vim.lsp.*` for documentation on any of the below functions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:249::      buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:250::      buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:251::        buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:252::      buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:253::      buf_set_keymap('n', '<S C k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:254::      buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:255::      buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:256::      buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:257::      buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:258::      buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:259::      buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:260::      buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:261::      buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:262::      buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:263::      buf_set_keymap('n', ' d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:264::      buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:265::      buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:266::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:267:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:268::      Setup cmp.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:269:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:270:: local has_words_before = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:271::   unpack = unpack or table.unpack
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:272::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:273::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line   1, line, true)[1 :sub(col, col):match("%s") == nil
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:274:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:275:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:276:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:277:: local snippy = require("snippy")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:278:: local cmp = require'cmp'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:279:: cmp.setup ({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:280:: snippet = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:281::   expand = function(args)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:282::     luasnip.lsp_expand(args.body)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:283::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:284:: ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:285:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:286:: mapping = cmp.mapping.preset.insert({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:287::         ["<C p>"  = cmp.mapping.select_prev_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:288::         ["<C n>"  = cmp.mapping.select_next_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:289::        ['<C d>'  = cmp.mapping.scroll_docs( 4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:290::       ['<C f>'  = cmp.mapping.scroll_docs(4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:291::       ['<C x>'  = cmp.mapping.complete(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:292::       ['<C e>'  = cmp.mapping.close(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:293::       ['<CR>'  = cmp.mapping.confirm({ select = true ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:294::    ... Your other mappings ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:295:: ["<Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:296:: 			if snippy.can_expand() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:297:: 				luasnip.expand()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:298::                         elseif cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:299::                              cmp.select_next_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:300:: 			elseif has_words_before() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:301:: 				cmp.complete() else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:302:: 			fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:303:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:304:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:305:: 		["<S Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:306:: 			if cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:307:: 				cmp.select_prev_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:308:: 			elseif luasnip.jumpable( 1) then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:309:: 				luasnip.jump( 1)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:310:: 			else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:311:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:312:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:313:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:314:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:315:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:316:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:317:: requires = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:318::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:319::       'quangnguyen30192/cmp nvim tags',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:320::          if you want the sources is available for some file types
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:321::       ft = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:322::         'tex',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:323::         'latex'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:324::       
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:325::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:326::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:327::    ... Your other configuration ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:328:: sources = cmp.config.sources({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:329::          For vsnip user. 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:330:: { name = 'tags' ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:331:: { name = 'nvim_lsp', keyword_length = 2 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:332:: { name = 'luasnip', keyword_length = 2 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:333::    { name = 'omni', keyword_length = 4,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:334::           { name = 'spell' , 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:335::         { name = 'treesitter', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:336:: { name = 'buffer', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:337::   { name = 'fuzzy_buffer', keyword_length = 8 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:338:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:339:: completion = { autocomplete = false 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:340:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:341:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:342::    require('nvim_comment').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:343::          Linters prefer comment and line to have a space in between markers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:344::       marker_padding = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:345::          should comment out empty or whitespace only lines
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:346::       comment_empty = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:347::          Should key mappings be created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:348::       create_mappings = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:349::          Normal mode mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:350::       line_mapping = "gc",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:351::          Visual/Operator mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:352::       operator_mapping = "<leader>c",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:353::          Hook function to call before commenting takes place
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:354::         hook = nil 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:355::     )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:356::    require('spellsitter').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:357::      hl = 'SpellBad',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:358::      captures = {,     set to { to spellcheck everything
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:359::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:360::         Spellchecker to use. values:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:361::         * vimfn: built in spell checker using vim.fn.spellbadword()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:362::         * ffi: built in spell checker using the FFI to access the
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:363::           internal spell_check() function
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:364::    spellchecker = 'vimfn'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:365::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:366::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:367::    require('lualine').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:368::      options = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:369::           theme = 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:370::        theme = require('theme').theme(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:371::        icons_enabled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:372::        component_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:373::        section_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:374::        disabled_filetypes = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:375::          statusline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:376::          winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:377::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:378::        ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:379::        always_divide_middle = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:380::        globalstatus = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:381::        refresh = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:382::          statusline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:383::          tabline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:384::          winbar = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:385::        
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:386::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:387::      sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:388::      lualine_a = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:389::            {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:390::              'filename',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:391::              color = 'lualine_a_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:392::              file_status = true,         Displays file status (readonly status, modified status)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:393::              newfile_status = false,      Display new file status (new file means no write after created)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:394::              path = 3,                   0: Just the filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:395::                                          1: Relative path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:396::                                          2: Absolute path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:397::                                          3: Absolute path, with tilde as the home directory
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:398::              symbols = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:399::                modified = '[+ ',         Text to show when the file is modified.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:400::                readonly = '[  ',         Text to show when the file is non modifiable or readonly.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:401::                unnamed = '[No Name ',    Text to show for unnamed buffers.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:402::                newfile = '[New ',        Text to show for new created file before first writting
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:403::             
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:404::            
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:405::          ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:406::          lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:407::        lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:408::        lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:409::        lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:410::        lualine_z = {{'location', color = 'lualine_z_normal'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:411::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:412::      inactive_sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:413::        lualine_a = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:414::        lualine_b = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:415::        lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:416::        lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:417::        lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:418::        lualine_z = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:419::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:420::      tabline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:421::      winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:422::      inactive_winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:423::      extension = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:424::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:425::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:426:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:427::      gitgutter
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:428::    require('gitsigns').setup{
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:429::      on_attach = function(bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:430::        local gs = package.loaded.gitsigns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:431::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:432::        local function map(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:433::          opts = opts or {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:434::          opts.buffer = bufnr
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:435::          vim.keymap.set(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:436::        end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:437::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:438::           Navigation
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:439::        map('n', ' c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:440::          if vim.wo.diff then return ' c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:441::          vim.schedule(function() gs.next_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:442::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:443::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:444::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:445::        map('n', '[c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:446::          if vim.wo.diff then return '[c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:447::          vim.schedule(function() gs.prev_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:448::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:449::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:450::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:451::           Actions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:452::        map({'n', 'v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:453::        map({'n', 'v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:454::        map('n', '<leader>hS', gs.stage_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:455::        map('n', '<leader>hu', gs.undo_stage_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:456::        map('n', '<leader>hR', gs.reset_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:457::        map('n', '<leader>hp', gs.preview_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:458::        map('n', '<leader>hb', function() gs.blame_line{full=true end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:459::        map('n', '<leader>tb', gs.toggle_current_line_blame)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:460::        map('n', '<leader>hd', gs.diffthis)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:461::        map('n', '<leader>hD', function() gs.diffthis('~') end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:462::        map('n', '<leader>td', gs.toggle_deleted)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:463::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:464::           Text object
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:465::        map({'o', 'x', 'ih', ':<C U>Gitsigns select_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:466::      end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:467::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:468:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:469::    load snippets from path/of/your/nvim/config/my cool snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:470::   vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:471::    require("luasnip/loaders/from_vscode").lazy_load()    load snippets of friendly/snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:472::    require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets" )    load your own snippets
