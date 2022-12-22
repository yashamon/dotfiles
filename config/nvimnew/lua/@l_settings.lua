 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:1::    require("noice").setup({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:2::      lsp = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:3::           override markdown rendering so that **cmp** and other plugins use **Treesitter**
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:4::        override = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:5::          ["vim.lsp.util.convert_input_to_markdown_lines"  = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:6::          ["vim.lsp.util.stylize_markdown"  = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:7::          ["cmp.entry.get_documentation"  = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:8::        ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:9::      ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:10::         you can enable a preset for easier configuration
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:11::      presets = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:12::        bottom_search = true,    use a classic bottom cmdline for search
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:13::        command_palette = true,    position the cmdline and popupmenu together
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:14::        long_message_to_split = true,    long messages will be sent to a split
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:15::        inc_rename = false,    enables an input dialog for inc rename.nvim
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:16::        lsp_doc_border = false,    add a border to hover docs and signature help
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:17::      ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:18::    )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:19:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:20:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:21::    Keymaps
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:22::    LSP
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:23:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:24:: require'nvim treesitter.configs'.setup {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:25::    ensure_installed = "all",    one of "all", "maintained" (parsers with maintainers), or a list of languages
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:26::   incremental_selection = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:27::     enable = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:28::     keymaps = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:29::       init_selection = '<m CR>',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:30::         scope_incremental = '<CR>',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:31::       node_incremental = '<TAB>',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:32::       node_decremental = '<S TAB>',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:33::     ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:34::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:35::   highlight = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:36::     enable = true,                 false will disable the whole extension
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:37::        Instead of true it can also be a list of languages
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:38::     additional_vim_regex_highlighting = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:39::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:40:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:41:: require('leap').setup {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:42::   max_aot_targets = nil,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:43::   highlight_unlabeled = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:44::   max_highlighted_traversal_targets = 20,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:45::   case_sensitive = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:46::      Sets of characters that should match each other.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:47::      Obvious candidates are braces and quotes ('([{', ') ', '`" '').
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:48::   equivalence_classes =
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:49::   {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:50::       {' ', " r", " n" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:51::       {' '','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', ' ', '`', '/', '  ', ',', '.',';', ' ', '[', '', '{', ')', '(', ' '
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:52::     ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:53::      Leaving the   appropriate list emapty effectively disables "smart" mode,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:54::      and forces auto jump to be on or off.%
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:55::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:56:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:57:: vim.api.nvim_set_hl(0, 'LeapMatch', { fg='white' )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:58:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:59:: require("todo comments").setup {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:60::        your configuration comes here
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:61::        or leave it empty to use the default settings
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:62::        refer to the configuration section below
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:63::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:64:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:65:: require('telescope').setup({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:66::   defaults = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:67::     layout_config = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:68::       vertical = { width = 0.9 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:69::          other layout configuration here
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:70::     ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:71::     scroll_strategy = 'limit',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:72::      previewers = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:73::     {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:74::       filesize_limit = 25,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:75::       timeout = 300,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:76::       use_highlighter = false
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:77::     
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:78::  ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:79::        other defaults configuration here
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:80::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:81::      other configuration values here
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:82:: )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:83::    require("tokyonight").setup({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:84::         your configuration comes here
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:85::         or leave it empty to use the default settings
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:86::      style = "storm",    The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:87::      light_style = "day",    The theme is used when the background is set to light
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:88::      transparent = false,    Enable this to disable setting the background color
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:89::      terminal_colors = true,    Configure the colors used when opening a `:terminal` in Neovim
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:90::      styles = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:91::           Style to be applied to different syntax groups
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:92::           Value is any valid attr list value for `:help nvim_set_hl`
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:93::        comments = { italic = true ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:94::        keywords = { italic = true ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:95::        functions = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:96::        variables = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:97::           Background styles. Can be "dark", "transparent" or "normal"
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:98::        sidebars = "dark",    style for sidebars, see below
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:99::        floats = "dark",    style for floating windows
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:100::      ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:101::      sidebars = { "qf", "help" ,    Set a darker background on sidebar like windows. For example: `["qf", "vista_kind", "terminal", "packer" `
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:102::      day_brightness = 0.1,    Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:103::      hide_inactive_statusline = true,    Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:104::      dim_inactive = true,    dims inactive windows
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:105::      lualine_bold = false,    When `true`, section headers in the lualine theme will be bold
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:106::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:107::          You can override specific color groups to use other groups or a hex color
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:108::          function will be called with a ColorScheme table
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:109::         @param colors ColorScheme
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:110::        on_colors = function(colors) 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:111::        colors.normal = colors.black 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:112::        end,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:113::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:114::          You can override specific highlights to use other groups or a hex color
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:115::          function will be called with a Highlights and ColorScheme table
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:116::         @param highlights Highlights
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:117::         @param colors ColorScheme
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:118::         on_highlights = function(highlights, colors)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:119::         end,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:120::    )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:121:: require("which key").setup({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:122::   plugins = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:123::     marks = true,    shows a list of your marks on ' and `
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:124::     registers = true,    shows your registers on " in NORMAL or <C r> in INSERT mode
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:125::     spelling = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:126::       enabled = false,    enabling this will show WhichKey when pressing z= to select spelling suggestions
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:127::       suggestions = 50,    how many suggestions should be shown in the list?
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:128::     ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:129::        the presets plugin, adds help for a bunch of default keybindings in Neovim
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:130::        No actual key bindings are created
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:131::     presets = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:132::       operators = true,    adds help for operators like d, y, ... and registers them for motion / text object completion
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:133::       motions = true,    adds help for motions
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:134::       text_objects = true,    help for text objects triggered after entering an operator
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:135::       windows = true,    default bindings on <c w>
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:136::       nav = true,    misc bindings to work with windows
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:137::       z = true,    bindings for folds, spelling and others prefixed with z
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:138::       g = true,    bindings for prefixed with g
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:139::     ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:140::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:141::      add operators that will trigger motion and text object completion
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:142::      to enable all native operators, set the preset / operators plugin above
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:143::   operators = { gc = "Comments" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:144::   key_labels = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:145::        override the label used to display some keys. It doesn't effect WK in any other way.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:146::        For example:
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:147::        ["<space>"  = "SPC",
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:148::        ["<cr>"  = "RET",
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:149::        ["<tab>"  = "TAB",
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:150::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:151::   icons = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:152::     breadcrumb = "»",    symbol used in the command line area that shows your active key combo
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:153::     separator = "➜",    symbol used between a key and it's label
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:154::     group = "+",    symbol prepended to a group
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:155::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:156::   popup_mappings = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:157::     scroll_down = '<c d>',    binding to scroll down inside the popup
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:158::     scroll_up = '<c u>',    binding to scroll up inside the popup
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:159::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:160::   window = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:161::     border = "none",    none, single, double, shadow
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:162::     position = "bottom",    bottom, top
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:163::     margin = { 1, 0, 1, 0 ,    extra window margin [top, right, bottom, left 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:164::     padding = { 2, 2, 2, 2 ,    extra window padding [top, right, bottom, left 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:165::     winblend = 0
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:166::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:167::   layout = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:168::     height = { min = 50, max = 50 ,    min and max height of the columns
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:169::     width = { min = 10, max = 50 ,    min and max width of the columns
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:170::     spacing = 3,    spacing between columns
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:171::     align = "left",    align columns left, center or right
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:172::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:173::   ignore_missing = false,    enable this to hide mappings for which you didn't specify a label
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:174::   hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ",    hide mapping boilerplate
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:175::   show_help = true,    show help message on the command line when the popup is visible
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:176::   show_keys = true,    show the currently pressed key and its label as a message in the command line
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:177::   triggers = {"<leader>", "g", ";",    automatically setup triggers
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:178::      triggers = {"<leader>"    or specify a list manually
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:179::   triggers_blacklist = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:180::        list of mode / prefixes that should never be hooked by WhichKey
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:181::        this is mostly relevant for key maps that start with a native binding
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:182::        most people should not need to change this
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:183::     i = { "j", "k" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:184::     v = { "j", "k" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:185::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:186::      disable the WhichKey popup for certain buf types and file types.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:187::      Disabled by deafult for Telescope
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:188::   disable = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:189::     buftypes = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:190::     filetypes = { "TelescopePrompt" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:191::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:192:: )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:193:: require("gruvbox").setup({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:194:: undercurl = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:195::   underline = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:196::   bold = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:197::   italic = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:198::   strikethrough = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:199::   invert_selection = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:200::   invert_signs = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:201::   invert_tabline = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:202::   invert_intend_guides = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:203::   inverse = false,    invert background for search, diffs, statuslines and errors
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:204::   contrast = "hard",    can be "hard", "soft" or empty string
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:205::   palette_overrides = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:206::   dim_inactive = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:207::   transparent_mode = false,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:208::     overrides = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:209::         SignColumn = {bg = "#ffa546",
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:210::         Normal = {bg = "#ffa546",
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:211::         DiagnosticSignError = { bg = "#ffa546" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:212::         DiagnosticSignWarn = { bg = "#ffa546" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:213::         DiagnosticSignInfo = { bg = "#ffa546" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:214::         DiagnosticSignHint = { bg = "#ffa546" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:215::         texType = { fg = "#808080" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:216::         texMath = { fg = "#808080" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:217::         Special = { fg = "#650000" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:218::         texDelimiter = { fg = "#808080" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:219::         texStatement = { fg = "#808080" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:220::            Operator = { fg = "#808080" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:221::         Type = { fg = "#008800" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:222::         Comment = { fg = "#af6000" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:223::         String = { fg = "#580058" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:224::         Operator = { fg = "#580058" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:225::         Pmenu = { bg = "#ffa546", fg = "#1e2030" 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:226::           bright orange  #fd8432
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:227::           texComment = { fg = "#00ff00" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:228::            texString = { fg = "#0000ff" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:229::            Special = {fg = "#0000ff" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:230::            texCmdName = { fg = "#0000ff" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:231::            SpecialChar = { fg = "#0000ff" ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:232::            Statement = { fg = "#0000ff" 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:233::     
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:234:: )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:235:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:236::    nvim LSP
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:237:: require('snippets')
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:238:: require("mason").setup()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:239:: require("mason lspconfig").setup()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:240:: require("lspconfig")
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:241::    LSP config
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:242:: local lspconfig = require("lspconfig")
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:243:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:244::     lspconfig.sumneko_lua.setup { on_attach = on_attach 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:245::     lspconfig.tsserver.setup { on_attach = on_attach 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:246::     lspconfig.jsonls.setup { on_attach = on_attach 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:247::     lspconfig.rome.setup { on_attach = on_attach 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:248::     lspconfig.vimls.setup { on_attach = on_attach 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:249::     lspconfig.ltex.setup { autostart = false;
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:250::        on_attach = on_attach 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:251::     lspconfig.texlab.setup { on_attach = on_attach 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:252::    lspconfig stuff    
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:253::    local nvim_lsp = require('lspconfig')
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:254::    Use an on_attach function to only map the following keys
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:255::    after the language server attaches to the current buffer
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:256:: local on_attach = function(client, bufnr)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:257:: local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:258:: local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:259:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:260::     Enable completion triggered by <c x><c o>
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:261:: buf_set_keymap('omnifunc', 'v:lua.vim.lsp.omnifunc')
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:262:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:263:: require'lspconfig'.sumneko_lua.setup(require("lualsp"))    Mappings.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:264:: local opts = { noremap=true, silent=true 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:265:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:266::      See `:help vim.lsp.*` for documentation on any of the below functions
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:267::   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:268::   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:269::     buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:270::   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:271::   buf_set_keymap('n', '<S C k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:272::   buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:273::   buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:274::   buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:275::   buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:276::   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:277::   buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:278::   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:279::   buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:280::   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:281::   buf_set_keymap('n', ' d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:282::   buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:283::   buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:284:: end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:285:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:286::      Setup cmp.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:287:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:288:: local has_words_before = function()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:289::   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:290::     return false
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:291::   end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:292::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:293::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line   1, line, true)[1 :sub(col, col):match("%s") == nil
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:294:: end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:295:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:296:: local luasnip = require("luasnip")
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:297:: local cmp = require'cmp'
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:298:: cmp.setup ({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:299:: snippet = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:300::   expand = function(args)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:301::     luasnip.lsp_expand(args.body)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:302::   end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:303:: ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:304:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:305:: mapping = cmp.mapping.preset.insert({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:306::         ["<C p>"  = cmp.mapping.select_prev_item(),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:307::         ["<C n>"  = cmp.mapping.select_next_item(),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:308::        ['<C d>'  = cmp.mapping.scroll_docs( 4),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:309::       ['<C f>'  = cmp.mapping.scroll_docs(4),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:310::       ['<C x>'  = cmp.mapping.complete(),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:311::       ['<C e>'  = cmp.mapping.close(),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:312::       ['<CR>'  = cmp.mapping.confirm({ select = true ),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:313::    ... Your other mappings ...
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:314:: ["<Tab>"  = cmp.mapping(function(fallback)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:315:: 			if luasnip.expandable() then
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:316:: 				luasnip.expand()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:317::                         elseif cmp.visible() then
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:318::                              cmp.select_next_item()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:319:: 			elseif has_words_before() then
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:320:: 				cmp.complete()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:321::                              else
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:322:: 				fallback()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:323:: 			end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:324:: 		end, { "i", "s" ),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:325:: 		["<S Tab>"  = cmp.mapping(function(fallback)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:326:: 			if cmp.visible() then
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:327:: 				cmp.select_prev_item()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:328:: 			elseif luasnip.jumpable( 1) then
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:329:: 				luasnip.jump( 1)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:330:: 			else
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:331:: 				fallback()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:332:: 			end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:333:: 		end, { "i", "s" ),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:334:: ),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:335:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:336:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:337:: requires = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:338::     {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:339::       'tzachar/fuzzy.nvim',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:340::       'quangnguyen30192/cmp nvim tags',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:341::          if you want the sources is available for some file types
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:342::       ft = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:343::         'tex',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:344::         'latex'
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:345::       
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:346::     
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:347::     ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:348::    ... Your other configuration ...
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:349:: sources = cmp.config.sources({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:350::          For vsnip user. 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:351:: { name = 'tags' ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:352:: { name = 'nvim_lsp', keyword_length = 2 ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:353:: { name = 'luasnip', keyword_length = 4 ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:354::    For ultisnips user.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:355::          { name = 'ultisnips' ,  
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:356::    { name = 'omni', keyword_length = 4,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:357::           { name = 'spell' , 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:358::         { name = 'treesitter', keyword_length = 4 ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:359::   { name = 'buffer', keyword_length = 4 ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:360::   { name = 'fuzzy_buffer', keyword_length = 8 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:361:: ),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:362:: completion = { autocomplete = false 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:363:: )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:364:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:365:: require('nvim_comment').setup({
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:366::       Linters prefer comment and line to have a space in between markers
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:367::    marker_padding = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:368::       should comment out empty or whitespace only lines
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:369::    comment_empty = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:370::       Should key mappings be created
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:371::    create_mappings = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:372::       Normal mode mapping left hand side
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:373::    line_mapping = "gc",
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:374::       Visual/Operator mapping left hand side
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:375::    operator_mapping = "<leader>c",
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:376::       Hook function to call before commenting takes place
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:377::      hook = nil 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:378::  )
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:379:: require('spellsitter').setup {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:380::   hl = 'SpellBad',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:381::   captures = {,     set to { to spellcheck everything
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:382:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:383::      Spellchecker to use. values:
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:384::      * vimfn: built in spell checker using vim.fn.spellbadword()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:385::      * ffi: built in spell checker using the FFI to access the
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:386::        internal spell_check() function
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:387:: spellchecker = 'vimfn'
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:388:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:389:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:390:: require('lualine').setup {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:391::   options = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:392::        theme = 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:393::     theme = require('theme').theme(),
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:394::     icons_enabled = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:395::     component_separators = { left = '', right = '',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:396::     section_separators = { left = '', right = '',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:397::     disabled_filetypes = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:398::       statusline = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:399::       winbar = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:400::     ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:401::     ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:402::     always_divide_middle = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:403::     globalstatus = true,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:404::     refresh = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:405::       statusline = 1000,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:406::       tabline = 1000,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:407::       winbar = 1000,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:408::     
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:409::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:410::   sections = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:411::   lualine_a = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:412::         {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:413::           'filename',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:414::           color = 'lualine_a_normal',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:415::           file_status = true,         Displays file status (readonly status, modified status)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:416::           newfile_status = false,      Display new file status (new file means no write after created)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:417::           path = 3,                   0: Just the filename
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:418::                                       1: Relative path
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:419::                                       2: Absolute path
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:420::                                       3: Absolute path, with tilde as the home directory
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:421::           symbols = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:422::             modified = '[+ ',         Text to show when the file is modified.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:423::             readonly = '[  ',         Text to show when the file is non modifiable or readonly.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:424::             unnamed = '[No Name ',    Text to show for unnamed buffers.
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:425::             newfile = '[New ',        Text to show for new created file before first writting
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:426::          
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:427::         
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:428::       ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:429::       lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal',
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:430::     lualine_c = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:431::     lualine_x = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:432::     lualine_y = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:433::     lualine_z = {{'location', color = 'lualine_z_normal'
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:434::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:435::   inactive_sections = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:436::     lualine_a = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:437::     lualine_b = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:438::     lualine_c = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:439::     lualine_x = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:440::     lualine_y = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:441::     lualine_z = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:442::   ,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:443::   tabline = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:444::   winbar = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:445::   inactive_winbar = {,
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:446::   extension = {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:447:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:448:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:449:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:450::      gitgutter
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:451::    require('gitsigns').setup{
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:452::      on_attach = function(bufnr)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:453::        local gs = package.loaded.gitsigns
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:454::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:455::        local function map(mode, l, r, opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:456::          opts = opts or {
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:457::          opts.buffer = bufnr
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:458::          vim.keymap.set(mode, l, r, opts)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:459::        end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:460::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:461::           Navigation
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:462::        map('n', ' c', function()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:463::          if vim.wo.diff then return ' c' end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:464::          vim.schedule(function() gs.next_hunk() end)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:465::          return '<Ignore>'
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:466::        end, {expr=true)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:467::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:468::        map('n', '[c', function()
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:469::          if vim.wo.diff then return '[c' end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:470::          vim.schedule(function() gs.prev_hunk() end)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:471::          return '<Ignore>'
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:472::        end, {expr=true)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:473::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:474::           Actions
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:475::        map({'n', 'v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:476::        map({'n', 'v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:477::        map('n', '<leader>hS', gs.stage_buffer)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:478::        map('n', '<leader>hu', gs.undo_stage_hunk)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:479::        map('n', '<leader>hR', gs.reset_buffer)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:480::        map('n', '<leader>hp', gs.preview_hunk)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:481::        map('n', '<leader>hb', function() gs.blame_line{full=true end)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:482::        map('n', '<leader>tb', gs.toggle_current_line_blame)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:483::        map('n', '<leader>hd', gs.diffthis)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:484::        map('n', '<leader>hD', function() gs.diffthis('~') end)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:485::        map('n', '<leader>td', gs.toggle_deleted)
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:486::   
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:487::           Text object
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:488::        map({'o', 'x', 'ih', ':<C U>Gitsigns select_hunk<CR>')
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:489::      end
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:490::    
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:491:: 
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:492::    load snippets from path/of/your/nvim/config/my cool snippets
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:493::   vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:494::    require("luasnip/loaders/from_vscode").lazy_load()    load snippets of friendly/snippets
 c:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:495::    require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets" )    load your own snippets
