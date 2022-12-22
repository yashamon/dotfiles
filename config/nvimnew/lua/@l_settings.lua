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
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:21::    Keymaps
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:22::    LSP
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:23:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:24:: require('leap').setup {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:25::   max_aot_targets = nil,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:26::   highlight_unlabeled = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:27::   max_highlighted_traversal_targets = 20,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:28::   case_sensitive = false,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:29::      Sets of characters that should match each other.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:30::      Obvious candidates are braces and quotes ('([{', ') ', '`" '').
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:31::   equivalence_classes =
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:32::   {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:33::       {' ', " r", " n" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:34::       {' '','"', ':', '=', '#', '&', '%','^', '_', '<', '>', '?', '|', '!', '*', '+', ' ', '`', '/', '  ', ',', '.',';', ' ', '[', '', '{', ')', '(', ' '
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:35::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:36::      Leaving the   appropriate list emapty effectively disables "smart" mode,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:37::      and forces auto jump to be on or off.%
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:38::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:39:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:40:: vim.api.nvim_set_hl(0, 'LeapMatch', { fg='white' )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:41:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:42:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:43::    require('telescope').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:44::      defaults = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:45::        layout_config = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:46::          vertical = { width = 0.9 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:47::             other layout configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:48::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:49::        scroll_strategy = 'limit',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:50::         previewers = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:51::        {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:52::          filesize_limit = 25,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:53::          timeout = 300,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:54::          use_highlighter = false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:55::        
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:56::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:57::           other defaults configuration here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:58::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:59::         other configuration values here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:60::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:61::    require("tokyonight").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:62::         your configuration comes here
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:63::         or leave it empty to use the default settings
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:64::      style = "storm",    The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:65::      light_style = "day",    The theme is used when the background is set to light
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:66::      transparent = false,    Enable this to disable setting the background color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:67::      terminal_colors = true,    Configure the colors used when opening a `:terminal` in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:68::      styles = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:69::           Style to be applied to different syntax groups
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:70::           Value is any valid attr list value for `:help nvim_set_hl`
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:71::        comments = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:72::        keywords = { italic = true ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:73::        functions = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:74::        variables = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:75::           Background styles. Can be "dark", "transparent" or "normal"
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:76::        sidebars = "dark",    style for sidebars, see below
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:77::        floats = "dark",    style for floating windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:78::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:79::      sidebars = { "qf", "help" ,    Set a darker background on sidebar like windows. For example: `["qf", "vista_kind", "terminal", "packer" `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:80::      day_brightness = 0.1,    Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:81::      hide_inactive_statusline = true,    Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:82::      dim_inactive = true,    dims inactive windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:83::      lualine_bold = false,    When `true`, section headers in the lualine theme will be bold
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:84::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:85::          You can override specific color groups to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:86::          function will be called with a ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:87::         @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:88::        on_colors = function(colors) 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:89::        colors.normal = colors.black 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:90::        end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:91::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:92::          You can override specific highlights to use other groups or a hex color
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:93::          function will be called with a Highlights and ColorScheme table
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:94::         @param highlights Highlights
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:95::         @param colors ColorScheme
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:96::         on_highlights = function(highlights, colors)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:97::         end,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:98::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:99::    require("which key").setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:100::      plugins = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:101::        marks = true,    shows a list of your marks on ' and `
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:102::        registers = true,    shows your registers on " in NORMAL or <C r> in INSERT mode
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:103::        spelling = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:104::          enabled = false,    enabling this will show WhichKey when pressing z= to select spelling suggestions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:105::          suggestions = 50,    how many suggestions should be shown in the list?
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:106::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:107::           the presets plugin, adds help for a bunch of default keybindings in Neovim
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:108::           No actual key bindings are created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:109::        presets = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:110::          operators = true,    adds help for operators like d, y, ... and registers them for motion / text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:111::          motions = true,    adds help for motions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:112::          text_objects = true,    help for text objects triggered after entering an operator
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:113::          windows = true,    default bindings on <c w>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:114::          nav = true,    misc bindings to work with windows
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:115::          z = true,    bindings for folds, spelling and others prefixed with z
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:116::          g = true,    bindings for prefixed with g
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:117::        ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:118::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:119::         add operators that will trigger motion and text object completion
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:120::         to enable all native operators, set the preset / operators plugin above
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:121::      operators = { gc = "Comments" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:122::      key_labels = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:123::           override the label used to display some keys. It doesn't effect WK in any other way.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:124::           For example:
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:125::           ["<space>"  = "SPC",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:126::           ["<cr>"  = "RET",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:127::           ["<tab>"  = "TAB",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:128::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:129::      icons = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:130::        breadcrumb = "»",    symbol used in the command line area that shows your active key combo
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:131::        separator = "➜",    symbol used between a key and it's label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:132::        group = "+",    symbol prepended to a group
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:133::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:134::      popup_mappings = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:135::        scroll_down = '<c d>',    binding to scroll down inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:136::        scroll_up = '<c u>',    binding to scroll up inside the popup
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:137::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:138::      window = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:139::        border = "none",    none, single, double, shadow
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:140::        position = "bottom",    bottom, top
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:141::        margin = { 1, 0, 1, 0 ,    extra window margin [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:142::        padding = { 2, 2, 2, 2 ,    extra window padding [top, right, bottom, left 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:143::        winblend = 0
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:144::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:145::      layout = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:146::        height = { min = 50, max = 50 ,    min and max height of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:147::        width = { min = 10, max = 50 ,    min and max width of the columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:148::        spacing = 3,    spacing between columns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:149::        align = "left",    align columns left, center or right
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:150::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:151::      ignore_missing = false,    enable this to hide mappings for which you didn't specify a label
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:152::      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ ",    hide mapping boilerplate
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:153::      show_help = true,    show help message on the command line when the popup is visible
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:154::      show_keys = true,    show the currently pressed key and its label as a message in the command line
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:155::      triggers = {"<leader>", "g", ";",    automatically setup triggers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:156::         triggers = {"<leader>"    or specify a list manually
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:157::      triggers_blacklist = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:158::           list of mode / prefixes that should never be hooked by WhichKey
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:159::           this is mostly relevant for key maps that start with a native binding
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:160::           most people should not need to change this
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:161::        i = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:162::        v = { "j", "k" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:163::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:164::         disable the WhichKey popup for certain buf types and file types.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:165::         Disabled by deafult for Telescope
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:166::      disable = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:167::        buftypes = {,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:168::        filetypes = { "TelescopePrompt" ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:169::      ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:170::    )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:171:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:172::    nvim LSP
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:173:: require('snippets')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:174:: require("mason").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:175:: require("mason lspconfig").setup()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:176:: require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:177::    LSP config
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:178:: local lspconfig = require("lspconfig")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:179:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:180::     lspconfig.sumneko_lua.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:181::     lspconfig.tsserver.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:182::     lspconfig.jsonls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:183::     lspconfig.rome.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:184::     lspconfig.vimls.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:185::     lspconfig.ltex.setup { autostart = false;
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:186::        on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:187::     lspconfig.texlab.setup { on_attach = on_attach 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:188::    lspconfig stuff    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:189::    local nvim_lsp = require('lspconfig')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:190::    Use an on_attach function to only map the following keys
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:191::    after the language server attaches to the current buffer
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:192:: local on_attach = function(client, bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:193:: local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:194:: local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:195:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:196::     Enable completion triggered by <c x><c o>
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:197:: buf_set_keymap('omnifunc', 'v:lua.vim.lsp.omnifunc')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:198:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:199:: require'lspconfig'.sumneko_lua.setup(require("lualsp"))    Mappings.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:200:: local opts = { noremap=true, silent=true 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:201:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:202::      See `:help vim.lsp.*` for documentation on any of the below functions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:203::   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:204::   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:205::     buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:206::   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:207::   buf_set_keymap('n', '<S C k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:208::   buf_set_keymap('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:209::   buf_set_keymap('n', 'gwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:210::   buf_set_keymap('n', 'gwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:211::   buf_set_keymap('n', 'gtD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:212::   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:213::   buf_set_keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:214::   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:215::   buf_set_keymap('n', 'gld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:216::   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:217::   buf_set_keymap('n', ' d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:218::   buf_set_keymap('n', 'gq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:219::   buf_set_keymap('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:220:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:221:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:222::      Setup cmp.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:223:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:224:: local has_words_before = function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:225::   if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:226::     return false
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:227::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:228::   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:229::   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line   1, line, true)[1 :sub(col, col):match("%s") == nil
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:230:: end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:231:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:232:: local luasnip = require("luasnip")
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:233:: local cmp = require'cmp'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:234:: cmp.setup ({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:235:: snippet = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:236::   expand = function(args)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:237::     luasnip.lsp_expand(args.body)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:238::   end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:239:: ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:240:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:241:: mapping = cmp.mapping.preset.insert({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:242::         ["<C p>"  = cmp.mapping.select_prev_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:243::         ["<C n>"  = cmp.mapping.select_next_item(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:244::        ['<C d>'  = cmp.mapping.scroll_docs( 4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:245::       ['<C f>'  = cmp.mapping.scroll_docs(4),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:246::       ['<C x>'  = cmp.mapping.complete(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:247::       ['<C e>'  = cmp.mapping.close(),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:248::       ['<CR>'  = cmp.mapping.confirm({ select = true ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:249::    ... Your other mappings ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:250:: ["<Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:251:: 			if luasnip.expandable() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:252:: 				luasnip.expand()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:253::                         elseif cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:254::                              cmp.select_next_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:255:: 			elseif has_words_before() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:256:: 				cmp.complete()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:257::                              else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:258:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:259:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:260:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:261:: 		["<S Tab>"  = cmp.mapping(function(fallback)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:262:: 			if cmp.visible() then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:263:: 				cmp.select_prev_item()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:264:: 			elseif luasnip.jumpable( 1) then
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:265:: 				luasnip.jump( 1)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:266:: 			else
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:267:: 				fallback()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:268:: 			end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:269:: 		end, { "i", "s" ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:270:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:271:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:272:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:273:: requires = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:274::     {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:275::       'tzachar/fuzzy.nvim',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:276::       'quangnguyen30192/cmp nvim tags',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:277::          if you want the sources is available for some file types
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:278::       ft = {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:279::         'tex',
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:280::         'latex'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:281::       
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:282::     
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:283::     ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:284::    ... Your other configuration ...
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:285:: sources = cmp.config.sources({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:286::          For vsnip user. 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:287:: { name = 'tags' ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:288:: { name = 'nvim_lsp', keyword_length = 2 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:289:: { name = 'luasnip', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:290::    For ultisnips user.
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:291::          { name = 'ultisnips' ,  
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:292::    { name = 'omni', keyword_length = 4,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:293::           { name = 'spell' , 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:294::         { name = 'treesitter', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:295:: { name = 'buffer', keyword_length = 4 ,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:296::   { name = 'fuzzy_buffer', keyword_length = 8 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:297:: ),
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:298:: completion = { autocomplete = false 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:299:: )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:300:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:301:: require('nvim_comment').setup({
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:302::       Linters prefer comment and line to have a space in between markers
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:303::    marker_padding = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:304::       should comment out empty or whitespace only lines
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:305::    comment_empty = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:306::       Should key mappings be created
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:307::    create_mappings = true,
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:308::       Normal mode mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:309::    line_mapping = "gc",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:310::       Visual/Operator mapping left hand side
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:311::    operator_mapping = "<leader>c",
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:312::       Hook function to call before commenting takes place
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:313::      hook = nil 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:314::  )
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:315:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:316:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:317:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:318::      gitgutter
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:319::    require('gitsigns').setup{
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:320::      on_attach = function(bufnr)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:321::        local gs = package.loaded.gitsigns
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:322::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:323::        local function map(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:324::          opts = opts or {
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:325::          opts.buffer = bufnr
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:326::          vim.keymap.set(mode, l, r, opts)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:327::        end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:328::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:329::           Navigation
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:330::        map('n', ' c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:331::          if vim.wo.diff then return ' c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:332::          vim.schedule(function() gs.next_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:333::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:334::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:335::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:336::        map('n', '[c', function()
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:337::          if vim.wo.diff then return '[c' end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:338::          vim.schedule(function() gs.prev_hunk() end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:339::          return '<Ignore>'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:340::        end, {expr=true)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:341::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:342::           Actions
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:343::        map({'n', 'v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:344::        map({'n', 'v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:345::        map('n', '<leader>hS', gs.stage_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:346::        map('n', '<leader>hu', gs.undo_stage_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:347::        map('n', '<leader>hR', gs.reset_buffer)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:348::        map('n', '<leader>hp', gs.preview_hunk)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:349::        map('n', '<leader>hb', function() gs.blame_line{full=true end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:350::        map('n', '<leader>tb', gs.toggle_current_line_blame)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:351::        map('n', '<leader>hd', gs.diffthis)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:352::        map('n', '<leader>hD', function() gs.diffthis('~') end)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:353::        map('n', '<leader>td', gs.toggle_deleted)
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:354::   
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:355::           Text object
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:356::        map({'o', 'x', 'ih', ':<C U>Gitsigns select_hunk<CR>')
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:357::      end
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:358::    
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:359:: 
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:360::    load snippets from path/of/your/nvim/config/my cool snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:361::   vim.o.runtimepath = vim.o.runtimepath .. 'C:/Users/yasha/.config/nvim/lua/snippets,'
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:362::    require("luasnip/loaders/from_vscode").lazy_load()    load snippets of friendly/snippets
 C:/Users/yasha/dotfiles/config/nvimnew/lua/settings.lua:363::    require("luasnip/loaders/from_vscode").load({ paths = "C:/Users/yasha/dotfiles/snippets" )    load your own snippets
