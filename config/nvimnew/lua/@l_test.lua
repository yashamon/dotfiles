 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:1::    require("noice").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:2::      lsp = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:3::           override markdown rendering so that **cmp** and other plugins use **Treesitter**
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:4::        override = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:5::          ["vim.lsp.util.convert_input_to_markdown_lines"  = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:6::          ["vim.lsp.util.stylize_markdown"  = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:7::          ["cmp.entry.get_documentation"  = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:8::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:9::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:10::         you can enable a preset for easier configuration
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:11::      presets = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:12::        bottom_search = true,    use a classic bottom cmdline for search
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:13::        command_palette = true,    position the cmdline and popupmenu together
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:14::        long_message_to_split = true,    long messages will be sent to a split
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:15::        inc_rename = false,    enables an input dialog for inc rename.nvim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:16::        lsp_doc_border = false,    add a border to hover docs and signature help
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:17::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:18::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:19:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:20:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:21:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:22:: require'nvim treesitter.configs'.setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:23::    ensure_installed = "all",    one of "all", "maintained" (parsers with maintainers), or a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:24::   incremental_selection = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:25::     enable = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:26::     keymaps = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:27::       init_selection = '<m CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:28::         scope_incremental = '<CR>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:29::       node_incremental = '<TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:30::       node_decremental = '<S TAB>',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:31::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:32::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:33::   highlight = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:34::     enable = true,                 false will disable the whole extension
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:35::        Instead of true it can also be a list of languages
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:36::     additional_vim_regex_highlighting = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:37::   ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:38:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:39::    require('leap').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:40::      max_aot_targets = nil,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:41::      highlight_unlabeled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:42::      max_highlighted_traversal_targets = 20,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:43::      case_sensitive = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:44::         Sets of characters that should match each other.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:45::         Obvious candidates are braces and quotes ('([{', ') ', '`" '').
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:46::      equivalence_classes =
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:47::      {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:48::          {' ', " r", " n" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:49::          {' '','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', ' ', '`', '/', '  ', ',', '.',';', ' ', '[', '', '{', ')', '(', ' '
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:50::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:51::         Leaving the   appropriate list emapty effectively disables "smart" mode,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:52::         and forces auto jump to be on or off.%
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:53::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:54::    vim.api.nvim_set_hl(0, 'LeapMatch', { fg='white' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:55::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:56::    require("todo comments").setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:57::           your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:58::           or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:59::           refer to the configuration section below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:60::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:61::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:62::    require('telescope').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:63::      defaults = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:64::        layout_config = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:65::          vertical = { width = 0.9 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:66::             other layout configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:67::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:68::        scroll_strategy = 'limit',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:69::         previewers = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:70::        {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:71::          filesize_limit = 25,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:72::          timeout = 300,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:73::          use_highlighter = false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:74::        
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:75::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:76::           other defaults configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:77::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:78::         other configuration values here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:79::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:80::       require("tokyonight").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:81::            your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:82::            or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:83::         style = "storm",    The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:84::         light_style = "day",    The theme is used when the background is set to light
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:85::         transparent = false,    Enable this to disable setting the background color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:86::         terminal_colors = true,    Configure the colors used when opening a `:terminal` in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:87::         styles = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:88::              Style to be applied to different syntax groups
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:89::              Value is any valid attr list value for `:help nvim_set_hl`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:90::           comments = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:91::           keywords = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:92::           functions = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:93::           variables = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:94::              Background styles. Can be "dark", "transparent" or "normal"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:95::           sidebars = "dark",    style for sidebars, see below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:96::           floats = "dark",    style for floating windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:97::         ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:98::         sidebars = { "qf", "help" ,    Set a darker background on sidebar like windows. For example: `["qf", "vista_kind", "terminal", "packer" `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:99::         day_brightness = 0.1,    Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:100::         hide_inactive_statusline = true,    Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:101::         dim_inactive = true,    dims inactive windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:102::         lualine_bold = false,    When `true`, section headers in the lualine theme will be bold
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:103::      
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:104::             You can override specific color groups to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:105::             function will be called with a ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:106::            @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:107::           on_colors = function(colors) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:108::           colors.normal = colors.black 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:109::           end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:110::      
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:111::             You can override specific highlights to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:112::             function will be called with a Highlights and ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:113::            @param highlights Highlights
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:114::            @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:115::            on_highlights = function(highlights, colors)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:116::            end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:117::       )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:118::    require("which key").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:119::      plugins = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:120::        marks = true,    shows a list of your marks on ' and `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:121::        registers = true,    shows your registers on " in NORMAL or <C r> in INSERT mode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:122::        spelling = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:123::          enabled = false,    enabling this will show WhichKey when pressing z= to select spelling suggestions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:124::          suggestions = 50,    how many suggestions should be shown in the list?
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:125::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:126::           the presets plugin, adds help for a bunch of default keybindings in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:127::           No actual key bindings are created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:128::        presets = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:129::          operators = true,    adds help for operators like d, y, ... and registers them for motion / text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:130::          motions = true,    adds help for motions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:131::          text_objects = true,    help for text objects triggered after entering an operator
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:132::          windows = true,    default bindings on <c w>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:133::          nav = true,    misc bindings to work with windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:134::          z = true,    bindings for folds, spelling and others prefixed with z
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:135::          g = true,    bindings for prefixed with g
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:136::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:137::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:138::         add operators that will trigger motion and text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:139::         to enable all native operators, set the preset / operators plugin above
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:140::      operators = { gc = "Comments" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:141::      key_labels = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:142::           override the label used to display some keys. It doesn't effect WK in any other way.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:143::           For example:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:144::           ["<space>"  = "SPC",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:145::           ["<cr>"  = "RET",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:146::           ["<tab>"  = "TAB",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:147::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:148::      icons = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:149::        breadcrumb = "»",    symbol used in the command line area that shows your active key combo
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:150::        separator = "➜",    symbol used between a key and it's label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:151::        group = "+",    symbol prepended to a group
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:152::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:153::      popup_mappings = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:154::        scroll_down = '<c d>',    binding to scroll down inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:155::        scroll_up = '<c u>',    binding to scroll up inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:156::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:157::      window = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:158::        border = "none",    none, single, double, shadow
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:159::        position = "bottom",    bottom, top
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:160::        margin = { 1, 0, 1, 0 ,    extra window margin [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:161::        padding = { 2, 2, 2, 2 ,    extra window padding [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:162::        winblend = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:163::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:164::      layout = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:165::        height = { min = 50, max = 50 ,    min and max height of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:166::        width = { min = 10, max = 50 ,    min and max width of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:167::        spacing = 3,    spacing between columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:168::        align = "left",    align columns left, center or right
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:169::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:170::      ignore_missing = false,    enable this to hide mappings for which you didn't specify a label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:171::      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ",    hide mapping boilerplate
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:172::      show_help = true,    show help message on the command line when the popup is visible
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:173::      show_keys = true,    show the currently pressed key and its label as a message in the command line
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:174::      triggers = {"<leader>", "g", ";",    automatically setup triggers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:175::         triggers = {"<leader>"    or specify a list manually
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:176::      triggers_blacklist = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:177::           list of mode / prefixes that should never be hooked by WhichKey
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:178::           this is mostly relevant for key maps that start with a native binding
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:179::           most people should not need to change this
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:180::        i = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:181::        v = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:182::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:183::         disable the WhichKey popup for certain buf types and file types.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:184::         Disabled by deafult for Telescope
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:185::      disable = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:186::        buftypes = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:187::        filetypes = { "TelescopePrompt" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:188::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:189::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:190:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:191::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:192::       nvim LSP
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:193::    require('snippets')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:194::    require("mason").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:195::    require("mason lspconfig").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:196::    require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:197::       LSP config
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:198::    local lspconfig = require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:199::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:200::        lspconfig.sumneko_lua.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:201::        lspconfig.tsserver.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:202::        lspconfig.jsonls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:203::        lspconfig.rome.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:204::        lspconfig.vimls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:205::        lspconfig.ltex.setup { autostart = false;
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:206::           on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:207::        lspconfig.texlab.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:208::       lspconfig stuff    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:209::       local nvim_lsp = require('lspconfig')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:210::       Use an on_attach function to only map the following keys
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:211::       after the language server attaches to the current buffer
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:212::    local on_attach = function(client, bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:213::    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:214::      
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:215::       local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:216::       Enable completion triggered by <c x><c o>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:217::    buf_set_keymap('omnifunc', 'v:lua.vim.lsp.omnifunc')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:218::    require'lspconfig'.sumneko_lua.setup(require("lualsp"))    Mappings.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:219::    local opts = { noremap=true, silent=true 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:220::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:221::         See `:help vim.lsp.*` for documentation on any of the below functions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:222::      buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:223::      buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:224::        buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:225::      buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:226::      buf_set_keymap('n', '<S C k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:227::      buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:228::      buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:229::      buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:230::      buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:231::      buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:232::      buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:233::      buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:234::      buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:235::      buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:236::      buf_set_keymap('n', ' d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:237::      buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:238::      buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:239::    end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:240:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:241::      Setup cmp.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:242:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:243:: local has_words_before = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:244::   unpack = unpack or table.unpack
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:245::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:246::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line   1, line, true)[1 :sub(col, col):match("%s") == nil
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:247:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:248:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:249:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:250:: local luasnip = require("luasnip")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:251:: local cmp = require'cmp'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:252:: cmp.setup ({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:253:: snippet = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:254::   expand = function(args)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:255::     luasnip.lsp_expand(args.body)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:256::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:257:: ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:258:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:259:: mapping = cmp.mapping.preset.insert({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:260::         ["<C p>"  = cmp.mapping.select_prev_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:261::         ["<C n>"  = cmp.mapping.select_next_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:262::        ['<C d>'  = cmp.mapping.scroll_docs( 4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:263::       ['<C f>'  = cmp.mapping.scroll_docs(4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:264::       ['<C x>'  = cmp.mapping.complete(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:265::       ['<C e>'  = cmp.mapping.close(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:266::       ['<CR>'  = cmp.mapping.confirm({ select = true ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:267::    ... Your other mappings ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:268:: ["<Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:269:: 			if luasnip.expandable() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:270:: 				luasnip.expand()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:271::                         elseif cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:272::                              cmp.select_next_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:273:: 			else cmp.complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:274:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:275:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:276:: 		["<S Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:277:: 			if cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:278:: 				cmp.select_prev_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:279:: 			elseif luasnip.jumpable( 1) then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:280:: 				luasnip.jump( 1)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:281:: 			else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:282:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:283:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:284:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:285:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:286:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:287:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:288:: requires = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:289::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:290::       'quangnguyen30192/cmp nvim tags',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:291::          if you want the sources is available for some file types
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:292::       ft = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:293::         'tex',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:294::         'latex'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:295::       
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:296::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:297::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:298::    ... Your other configuration ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:299:: sources = cmp.config.sources({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:300::          For vsnip user. 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:301:: { name = 'tags' ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:302:: { name = 'nvim_lsp', keyword_length = 2 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:303:: { name = 'luasnip', keyword_length = 2 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:304::    { name = 'omni', keyword_length = 4,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:305::           { name = 'spell' , 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:306::         { name = 'treesitter', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:307:: { name = 'buffer', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:308::   { name = 'fuzzy_buffer', keyword_length = 8 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:309:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:310:: completion = { autocomplete = false 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:311:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:312:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:313::    require('nvim_comment').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:314::          Linters prefer comment and line to have a space in between markers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:315::       marker_padding = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:316::          should comment out empty or whitespace only lines
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:317::       comment_empty = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:318::          Should key mappings be created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:319::       create_mappings = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:320::          Normal mode mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:321::       line_mapping = "gc",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:322::          Visual/Operator mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:323::       operator_mapping = "<leader>c",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:324::          Hook function to call before commenting takes place
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:325::         hook = nil 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:326::     )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:327::    require('spellsitter').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:328::      hl = 'SpellBad',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:329::      captures = {,     set to { to spellcheck everything
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:330::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:331::         Spellchecker to use. values:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:332::         * vimfn: built in spell checker using vim.fn.spellbadword()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:333::         * ffi: built in spell checker using the FFI to access the
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:334::           internal spell_check() function
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:335::    spellchecker = 'vimfn'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:336::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:337::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:338::    require('lualine').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:339::      options = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:340::           theme = 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:341::        theme = require('theme').theme(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:342::        icons_enabled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:343::        component_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:344::        section_separators = { left = '', right = '',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:345::        disabled_filetypes = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:346::          statusline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:347::          winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:348::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:349::        ignore_focus = {'tex', 'md', 'text', 'lua', 'latex', 'nu',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:350::        always_divide_middle = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:351::        globalstatus = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:352::        refresh = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:353::          statusline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:354::          tabline = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:355::          winbar = 1000,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:356::        
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:357::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:358::      sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:359::      lualine_a = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:360::            {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:361::              'filename',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:362::              color = 'lualine_a_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:363::              file_status = true,         Displays file status (readonly status, modified status)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:364::              newfile_status = false,      Display new file status (new file means no write after created)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:365::              path = 3,                   0: Just the filename
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:366::                                          1: Relative path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:367::                                          2: Absolute path
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:368::                                          3: Absolute path, with tilde as the home directory
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:369::              symbols = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:370::                modified = '[+ ',         Text to show when the file is modified.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:371::                readonly = '[  ',         Text to show when the file is non modifiable or readonly.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:372::                unnamed = '[No Name ',    Text to show for unnamed buffers.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:373::                newfile = '[New ',        Text to show for new created file before first writting
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:374::             
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:375::            
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:376::          ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:377::          lualine_b = {{'branch', 'diff', 'diagnostics', color = 'lualine_b_normal',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:378::        lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:379::        lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:380::        lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:381::        lualine_z = {{'location', color = 'lualine_z_normal'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:382::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:383::      inactive_sections = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:384::        lualine_a = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:385::        lualine_b = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:386::        lualine_c = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:387::        lualine_x = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:388::        lualine_y = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:389::        lualine_z = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:390::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:391::      tabline = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:392::      winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:393::      inactive_winbar = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:394::      extension = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:395::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:396::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:397:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:398::      gitgutter
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:399::    require('gitsigns').setup{
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:400::      on_attach = function(bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:401::        local gs = package.loaded.gitsigns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:402::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:403::        local function map(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:404::          opts = opts or {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:405::          opts.buffer = bufnr
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:406::          vim.keymap.set(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:407::        end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:408::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:409::           Navigation
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:410::        map('n', ' c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:411::          if vim.wo.diff then return ' c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:412::          vim.schedule(function() gs.next_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:413::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:414::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:415::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:416::        map('n', '[c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:417::          if vim.wo.diff then return '[c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:418::          vim.schedule(function() gs.prev_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:419::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:420::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:421::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:422::           Actions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:423::        map({'n', 'v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:424::        map({'n', 'v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:425::        map('n', '<leader>hS', gs.stage_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:426::        map('n', '<leader>hu', gs.undo_stage_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:427::        map('n', '<leader>hR', gs.reset_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:428::        map('n', '<leader>hp', gs.preview_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:429::        map('n', '<leader>hb', function() gs.blame_line{full=true end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:430::        map('n', '<leader>tb', gs.toggle_current_line_blame)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:431::        map('n', '<leader>hd', gs.diffthis)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:432::        map('n', '<leader>hD', function() gs.diffthis('~') end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:433::        map('n', '<leader>td', gs.toggle_deleted)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:434::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:435::           Text object
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:436::        map({'o', 'x', 'ih', ':<C U>Gitsigns select_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:437::      end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:438::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:439:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:440::    load snippets from path/of/your/nvim/config/my cool snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:441::   vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:442::    require("luasnip/loaders/from_vscode").lazy_load()    load snippets of friendly/snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/test.lua:443::    require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets" )    load your own snippets
