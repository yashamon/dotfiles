 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:1::    require("noice").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:2::      lsp = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:3::           override markdown rendering so that **cmp** and other plugins use **Treesitter**
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:4::        override = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:5::          ["vim.lsp.util.convert_input_to_markdown_lines"  = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:6::          ["vim.lsp.util.stylize_markdown"  = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:7::          ["cmp.entry.get_documentation"  = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:8::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:9::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:10::         you can enable a preset for easier configuration
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:11::      presets = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:12::        bottom_search = true,    use a classic bottom cmdline for search
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:13::        command_palette = true,    position the cmdline and popupmenu together
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:14::        long_message_to_split = true,    long messages will be sent to a split
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:15::        inc_rename = false,    enables an input dialog for inc rename.nvim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:16::        lsp_doc_border = false,    add a border to hover docs and signature help
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:17::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:18::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:19:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:20:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:21:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:22:: require'nvim treesitter.configs'.setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:23::    ensure_installed = "all",    one of "all", "maintained" (parsers with maintainers), or a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:24::   incremental_selection = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:25::     enable = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:26::     keymaps = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:27::       init_selection = '<m CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:28::         scope_incremental = '<CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:29::       node_incremental = '<TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:30::       node_decremental = '<S TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:31::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:32::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:33::   highlight = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:34::     enable = true,                 false will disable the whole extension
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:35::        Instead of true it can also be a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:36::     additional_vim_regex_highlighting = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:37::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:38:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:39:: require('leap').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:40::   max_aot_targets = nil,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:41::   highlight_unlabeled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:42::   max_highlighted_traversal_targets = 20,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:43::   case_sensitive = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:44::      Sets of characters that should match each other.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:45::      Obvious candidates are braces and quotes ('([{', ') ', '`" '').
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:46::   equivalence_classes =
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:47::   {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:48::       {' ', " r", " n" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:49::       {' '','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', ' ', '`', '/', '  ', ',', '.',';', ' ', '[', '', '{', ')', '(', ' '
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:50::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:51::      Leaving the   appropriate list emapty effectively disables "smart" mode,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:52::      and forces auto jump to be on or off.%
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:53:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:54:: vim.api.nvim_set_hl(0, 'LeapMatch', { fg='white' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:55:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:56:: require("todo comments").setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:57::        your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:58::        or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:59::        refer to the configuration section below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:60:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:61:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:62:: require('telescope').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:63::   defaults = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:64::     layout_config = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:65::       vertical = { width = 0.9 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:66::          other layout configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:67::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:68::     scroll_strategy = 'limit',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:69::      previewers = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:70::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:71::       filesize_limit = 25,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:72::       timeout = 300,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:73::       use_highlighter = false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:74::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:75::  ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:76::        other defaults configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:77::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:78::      other configuration values here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:79:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:80::    require("tokyonight").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:81::         your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:82::         or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:83::      style = "storm",    The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:84::      light_style = "day",    The theme is used when the background is set to light
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:85::      transparent = false,    Enable this to disable setting the background color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:86::      terminal_colors = true,    Configure the colors used when opening a `:terminal` in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:87::      styles = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:88::           Style to be applied to different syntax groups
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:89::           Value is any valid attr list value for `:help nvim_set_hl`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:90::        comments = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:91::        keywords = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:92::        functions = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:93::        variables = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:94::           Background styles. Can be "dark", "transparent" or "normal"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:95::        sidebars = "dark",    style for sidebars, see below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:96::        floats = "dark",    style for floating windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:97::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:98::      sidebars = { "qf", "help" ,    Set a darker background on sidebar like windows. For example: `["qf", "vista_kind", "terminal", "packer" `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:99::      day_brightness = 0.1,    Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:100::      hide_inactive_statusline = true,    Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:101::      dim_inactive = true,    dims inactive windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:102::      lualine_bold = false,    When `true`, section headers in the lualine theme will be bold
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:103::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:104::          You can override specific color groups to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:105::          function will be called with a ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:106::         @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:107::        on_colors = function(colors) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:108::        colors.normal = colors.black 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:109::        end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:110::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:111::          You can override specific highlights to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:112::          function will be called with a Highlights and ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:113::         @param highlights Highlights
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:114::         @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:115::         on_highlights = function(highlights, colors)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:116::         end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:117::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:118:: require("which key").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:119::   plugins = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:120::     marks = true,    shows a list of your marks on ' and `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:121::     registers = true,    shows your registers on " in NORMAL or <C r> in INSERT mode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:122::     spelling = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:123::       enabled = false,    enabling this will show WhichKey when pressing z= to select spelling suggestions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:124::       suggestions = 50,    how many suggestions should be shown in the list?
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:125::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:126::        the presets plugin, adds help for a bunch of default keybindings in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:127::        No actual key bindings are created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:128::     presets = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:129::       operators = true,    adds help for operators like d, y, ... and registers them for motion / text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:130::       motions = true,    adds help for motions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:131::       text_objects = true,    help for text objects triggered after entering an operator
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:132::       windows = true,    default bindings on <c w>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:133::       nav = true,    misc bindings to work with windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:134::       z = true,    bindings for folds, spelling and others prefixed with z
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:135::       g = true,    bindings for prefixed with g
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:136::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:137::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:138::      add operators that will trigger motion and text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:139::      to enable all native operators, set the preset / operators plugin above
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:140::   operators = { gc = "Comments" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:141::   key_labels = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:142::        override the label used to display some keys. It doesn't effect WK in any other way.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:143::        For example:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:144::        ["<space>"  = "SPC",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:145::        ["<cr>"  = "RET",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:146::        ["<tab>"  = "TAB",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:147::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:148::   icons = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:149::     breadcrumb = "»",    symbol used in the command line area that shows your active key combo
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:150::     separator = "➜",    symbol used between a key and it's label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:151::     group = "+",    symbol prepended to a group
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:152::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:153::   popup_mappings = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:154::     scroll_down = '<c d>',    binding to scroll down inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:155::     scroll_up = '<c u>',    binding to scroll up inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:156::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:157::   window = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:158::     border = "none",    none, single, double, shadow
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:159::     position = "bottom",    bottom, top
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:160::     margin = { 1, 0, 1, 0 ,    extra window margin [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:161::     padding = { 2, 2, 2, 2 ,    extra window padding [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:162::     winblend = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:163::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:164::   layout = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:165::     height = { min = 50, max = 50 ,    min and max height of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:166::     width = { min = 10, max = 50 ,    min and max width of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:167::     spacing = 3,    spacing between columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:168::     align = "left",    align columns left, center or right
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:169::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:170::   ignore_missing = false,    enable this to hide mappings for which you didn't specify a label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:171::   hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ",    hide mapping boilerplate
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:172::   show_help = true,    show help message on the command line when the popup is visible
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:173::   show_keys = true,    show the currently pressed key and its label as a message in the command line
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:174::   triggers = {"<leader>", "g", ";",    automatically setup triggers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:175::      triggers = {"<leader>"    or specify a list manually
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:176::   triggers_blacklist = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:177::        list of mode / prefixes that should never be hooked by WhichKey
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:178::        this is mostly relevant for key maps that start with a native binding
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:179::        most people should not need to change this
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:180::     i = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:181::     v = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:182::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:183::      disable the WhichKey popup for certain buf types and file types.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:184::      Disabled by deafult for Telescope
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:185::   disable = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:186::     buftypes = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:187::     filetypes = { "TelescopePrompt" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:188::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:189:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:190:: require("gruvbox").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:191:: undercurl = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:192::   underline = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:193::   bold = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:194::   italic = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:195::   strikethrough = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:196::   invert_selection = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:197::   invert_signs = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:198::   invert_tabline = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:199::   invert_intend_guides = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:200::   inverse = false,    invert background for search, diffs, statuslines and errors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:201::   contrast = "hard",    can be "hard", "soft" or empty string
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:202::   palette_overrides = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:203::   dim_inactive = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:204::   transparent_mode = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:205::     overrides = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:206::         SignColumn = {bg = "#ffa546",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:207::         Normal = {bg = "#ffa546",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:208::         DiagnosticSignError = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:209::         DiagnosticSignWarn = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:210::         DiagnosticSignInfo = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:211::         DiagnosticSignHint = { bg = "#ffa546" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:212::         texType = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:213::         texMath = { fg = "#650000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:214::         TexSpecial = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:215::         texDelimiter = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:216::         texStatement = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:217:: 				texRefzone = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:218:: 				texCite = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:219:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:220:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:221::            Operator = { fg = "#808080" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:222::         Type = { fg = "#008800" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:223::         Comment = { fg = "#af6000" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:224::         String = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:225::         Operator = { fg = "#580058" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:226::         Pmenu = { bg = "#ffa546", fg = "#1e2030" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:227:: 				texTypeStyle = { fg = "#427b58" 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:228::           bright orange  #fd8432
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:229::           texComment = { fg = "#00ff00" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:230::            texString = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:231::            Special = {fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:232::            texCmdName = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:233::            SpecialChar = { fg = "#0000ff" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:234::            Statement = { fg = "#0000ff" 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:235::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:236:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:237:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:238::    nvim LSP
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:239:: require('snippets')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:240:: require("mason").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:241:: require("mason lspconfig").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:242:: require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:243::    LSP config
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:244:: local lspconfig = require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:245:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:246::     lspconfig.sumneko_lua.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:247::     lspconfig.tsserver.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:248::     lspconfig.jsonls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:249::     lspconfig.rome.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:250::     lspconfig.vimls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:251::     lspconfig.ltex.setup { autostart = false;
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:252::        on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:253::     lspconfig.texlab.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:254::    lspconfig stuff    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:255::    local nvim_lsp = require('lspconfig')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:256::    Use an on_attach function to only map the following keys
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:257::    after the language server attaches to the current buffer
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:258:: local on_attach = function(client, bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:259:: local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:260::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:261::    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:262::    Enable completion triggered by <c x><c o>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:263:: buf_set_keymap('omnifunc', 'v:lua.vim.lsp.omnifunc')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:264:: require'lspconfig'.sumneko_lua.setup(require("lualsp"))    Mappings.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:265:: local opts = { noremap=true, silent=true 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:266:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:267::      See `:help vim.lsp.*` for documentation on any of the below functions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:268::   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:269::   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:270::     buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:271::   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:272::   buf_set_keymap('n', '<S C k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:273::   buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:274::   buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:275::   buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:276::   buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:277::   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:278::   buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:279::   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:280::   buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:281::   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:282::   buf_set_keymap('n', ' d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:283::   buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:284::   buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:285:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:286:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:287::      Setup cmp.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:288:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:289:: local has_words_before = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:290::   unpack = unpack or table.unpack
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:291::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:292::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line   1, line, true)[1 :sub(col, col):match("%s") == nil
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:293:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:294:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:295:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:296:: local luasnip = require("luasnip")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:297:: local cmp = require'cmp'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:298:: cmp.setup ({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:299:: snippet = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:300::   expand = function(args)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:301::     luasnip.lsp_expand(args.body)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:302::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:303:: ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:304:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:305:: mapping = cmp.mapping.preset.insert({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:306::         ["<C p>"  = cmp.mapping.select_prev_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:307::         ["<C n>"  = cmp.mapping.select_next_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:308::        ['<C d>'  = cmp.mapping.scroll_docs( 4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:309::       ['<C f>'  = cmp.mapping.scroll_docs(4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:310::       ['<C x>'  = cmp.mapping.complete(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:311::       ['<C e>'  = cmp.mapping.close(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:312::       ['<CR>'  = cmp.mapping.confirm({ select = true ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:313::    ... Your other mappings ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:314:: ["<Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:315:: 			if luasnip.expandable() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:316:: 				luasnip.expand()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:317::                         elseif cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:318::                              cmp.select_next_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:319:: 			elseif has_words_before() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:320:: 				cmp.complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:321:: 			                             else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:322:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:323:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:324:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:325:: 		["<S Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:326:: 			if cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:327:: 				cmp.select_prev_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:328:: 			elseif luasnip.jumpable( 1) then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:329:: 				luasnip.jump( 1)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:330:: 			else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:331:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:332:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:333:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:334:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:335:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:336:: requires = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:337::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:338::       'quangnguyen30192/cmp nvim tags',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:339::          if you want the sources is available for some file types
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:340::       ft = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:341::         'tex',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:342::         'latex'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:343::       
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:344::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:345::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:346::    ... Your other configuration ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:347:: sources = cmp.config.sources({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:348::          For vsnip user. 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:349:: { name = 'tags', keyword_length = 1000 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:350:: { name = 'nvim_lsp', keyword_length = 3 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:351:: { name = 'luasnip', keyword_length = 2 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:352::    { name = 'omni', keyword_length = 4,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:353::           { name = 'spell' , 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:354::         { name = 'treesitter', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:355:: { name = 'buffer', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:356::   { name = 'fuzzy_buffer', keyword_length = 8 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:357:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:358:: completion = { autocomplete = false 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:359:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:360:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:361:: require('nvim_comment').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:362::       Linters prefer comment and line to have a space in between markers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:363::    marker_padding = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:364::       should comment out empty or whitespace only lines
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:365::    comment_empty = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:366::       Should key mappings be created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:367::    create_mappings = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:368::       Normal mode mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:369::    line_mapping = "gc",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:370::       Visual/Operator mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:371::    operator_mapping = "<leader>c",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:372::       Hook function to call before commenting takes place
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:373::      hook = nil 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:374::  )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:375:: require('spellsitter').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:376::   hl = 'SpellBad',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:377::   captures = {,     set to { to spellcheck everything
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:378:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:379::      Spellchecker to use. values:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:380::      * vimfn: built in spell checker using vim.fn.spellbadword()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:381::      * ffi: built in spell checker using the FFI to access the
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:382::        internal spell_check() function
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:383:: spellchecker = 'vimfn'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:384:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:385:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:386:: require('lualine').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:387::   options = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:388::        theme = 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:389::     theme = require('theme').theme(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:390::     icons_enabled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:391::     component_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:392::     section_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:393::     disabled_filetypes = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:394::       statusline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:395::       winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:396::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:397::     ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:398::     always_divide_middle = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:399::     globalstatus = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:400::     refresh = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:401::       statusline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:402::       tabline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:403::       winbar = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:404::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:405::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:406::   sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:407::   lualine_a = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:408::         {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:409::           'filename',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:410::           color = 'lualine_a_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:411::           file_status = true,         Displays file status (readonly status, modified status)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:412::           newfile_status = false,      Display new file status (new file means no write after created)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:413::           path = 3,                   0: Just the filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:414::                                       1: Relative path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:415::                                       2: Absolute path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:416::                                       3: Absolute path, with tilde as the home directory
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:417::           symbols = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:418::             modified = '[+ ',         Text to show when the file is modified.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:419::             readonly = '[  ',         Text to show when the file is non modifiable or readonly.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:420::             unnamed = '[No Name ',    Text to show for unnamed buffers.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:421::             newfile = '[New ',        Text to show for new created file before first writting
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:422::          
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:423::         
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:424::       ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:425::       lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:426::     lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:427::     lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:428::     lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:429::     lualine_z = {{'location', color = 'lualine_z_normal'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:430::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:431::   inactive_sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:432::     lualine_a = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:433::     lualine_b = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:434::     lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:435::     lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:436::     lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:437::     lualine_z = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:438::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:439::   tabline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:440::   winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:441::   inactive_winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:442::   extension = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:443:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:444:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:445:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:446::      gitgutter
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:447::    require('gitsigns').setup{
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:448::      on_attach = function(bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:449::        local gs = package.loaded.gitsigns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:450::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:451::        local function map(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:452::          opts = opts or {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:453::          opts.buffer = bufnr
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:454::          vim.keymap.set(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:455::        end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:456::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:457::           Navigation
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:458::        map('n', ' c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:459::          if vim.wo.diff then return ' c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:460::          vim.schedule(function() gs.next_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:461::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:462::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:463::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:464::        map('n', '[c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:465::          if vim.wo.diff then return '[c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:466::          vim.schedule(function() gs.prev_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:467::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:468::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:469::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:470::           Actions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:471::        map({'n', 'v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:472::        map({'n', 'v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:473::        map('n', '<leader>hS', gs.stage_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:474::        map('n', '<leader>hu', gs.undo_stage_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:475::        map('n', '<leader>hR', gs.reset_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:476::        map('n', '<leader>hp', gs.preview_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:477::        map('n', '<leader>hb', function() gs.blame_line{full=true end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:478::        map('n', '<leader>tb', gs.toggle_current_line_blame)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:479::        map('n', '<leader>hd', gs.diffthis)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:480::        map('n', '<leader>hD', function() gs.diffthis('~') end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:481::        map('n', '<leader>td', gs.toggle_deleted)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:482::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:483::           Text object
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:484::        map({'o', 'x', 'ih', ':<C U>Gitsigns select_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:485::      end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:486::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:487:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:488::    load snippets from path/of/your/nvim/config/my cool snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:489::   vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:490::    require("luasnip/loaders/from_vscode").lazy_load()    load snippets of friendly/snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:491::    require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets" )    load your own snippets
