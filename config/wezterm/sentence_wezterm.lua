1:  local wezterm = require 'wezterm' 2:  local io = require 'io'; 3:  local os = require 'os'; 4:   5:  wezterm.
on("trigger-vim-with-scrollback", function(window, pane) 6:    -- Retrieve the current viewport's text.
@??? 7:    -- Pass an optional number of lines (eg: 2000) to retrieve 8:    -- that number of lines starting from the bottom of the viewport.
@??? 9:    local scrollback = pane:get lines as text(); 10:   11:    -- Create a temporary file to pass to vim 12:    local name = os.
tmpname(); 13:    local f = io.
open(name, "w+"); 14:    f:write(scrollback); 15:    f:flush(); 16:    f:close(); 17:   18:    -- Open a new window running vim and tell it to open the file 19:    window:perform action(wezterm.
action SpawnCommandInNewWindow=  20:      args= "nvim", name   21:     , pane) 22:   23:    -- wait "enough" time for vim to read the file before we remove it.
@??? 24:    -- The window creation and process spawn are asynchronous 25:    -- wrt. 
25:++++ running this script and are not awaitable, so we just pick 26:    -- a number. 
26:++++  We don't strictly need to remove this file, but it 27:    -- is nice to avoid cluttering up the temporary file directory 28:    -- location.
@??? 29:    wezterm.
sleep ms(1000); 30:    os.
remove(name); 31:  end) 32:   33:  return   34:    keys =   35:       key="V", mods="CTRL", 36:        action=wezterm.
action EmitEvent="trigger-vim-with-scrollback"  , 37:     , 38:  wezterm.
on("update-right-status", function(window, pane) 39:    -- Each element holds the text for a cell in a "powerline" style << fade 40:    local cells =   ; 41:   42:    -- Figure out the cwd and host of the current pane.
@??? 43:    -- This will pick up the hostname for the remote host if your 44:    -- shell is using OSC 7 on the remote host.
@??? 45:    local cwd uri = pane:get current working dir() 46:    if cwd uri then 47:      cwd uri = cwd uri:sub(8); 48:      local slash = cwd uri:find("/") 49:      local cwd = "" 50:      local hostname = "" 51:      if slash then 52:        hostname = cwd uri:sub(1, slash-1) 53:        -- Remove the domain name portion of the hostname 54:        local dot = hostname:find("[.
]") 55:        if dot then 56:          hostname = hostname:sub(1, dot-1) 57:        end 58:        -- and extract the cwd from the uri 59:        cwd = cwd uri:sub(slash) 60:   61:        table.
insert(cells, cwd); 62:        table.
insert(cells, hostname); 63:      end 64:    end 65:   66:    -- I like my date/time in this style: "Wed Mar 3 08:14" 67:    local date = wezterm.
strftime(" a  b  -d  H: M"); 68:    table.
insert(cells, date); 69:   70:    -- An entry for each battery (typically 0 or 1 battery) 71:    for  , b in ipairs(wezterm.
battery info()) do 72:      table.
insert(cells, string.
format(" .
0f  ", b.
state of charge * 100)) 73:    end 74:   75:    -- The powerline < symbol 76:    local LEFT ARROW = utf8.
char(0xe0b3); 77:    -- The filled in variant of the < symbol 78:    local SOLID LEFT ARROW = utf8.
char(0xe0b2) 79:   80:    -- Color palette for the backgrounds of each cell 81:    local colors =   82:      "#3c1361", 83:      "#52307c", 84:      "#663a82", 85:      "#7c5295", 86:      "#b491c8", 87:     ; 88:   89:    -- Foreground color for the text across the fade 90:    local text fg = "#c0c0c0"; 91:   92:    -- The elements to be formatted 93:    local elements =   ; 94:    -- How many cells have been formatted 95:    local num cells = 0; 96:   97:    -- Translate a cell into elements 98:    function Push(text, is last) 99:      local cell no = num cells + 1 100:      table.
insert(elements,  Foreground= Color=text fg  ) 101:      table.
insert(elements,  Background= Color=colors[cell no]  ) 102:      table.
insert(elements,  Text=" ".
.
text.
.
" " ) 103:      if not is last then 104:        table.
insert(elements,  Foreground= Color=colors[cell no+1]  ) 105:        table.
insert(elements,  Text=SOLID LEFT ARROW ) 106:      end 107:      num cells = num cells + 1 108:    end 109:   110:    while #cells > 0 do 111:      local cell = table.
remove(cells, 1) 112:      Push(cell, #cells == 0) 113:    end 114:   115:    window:set right status(wezterm.
format(elements)); 116:  end); 117:   118:    119:    hide tab bar if only one tab = true, 120:    font = wezterm.
font("Source Code Pro"), 121:    font size = 40.
0, 122:    --color scheme = "Solarized Dark - Patched", 123:    color scheme = "The Hulk", 124:    --color scheme = "JetBrians Dracula", 125:    --color scheme = "Alien Blood", 126:    --color scheme = "Dracula", 127:    --color scheme = "Cobalt Neon", 128:    -- color scheme = "Dark Matrix", 129:    exit behavior = "Close", 130:    keys =   131:      -- This will create a new split and run your default program inside it 132:        133:        --key=" ", mods="CTRL|SHIFT|ALT", 134:        key="d", mods="SUPER", 135:        action=wezterm.
action  136:          SplitHorizontal=  137:            domain="CurrentPaneDomain" 138:            139:          140:       , 141:        142:        --key=" ", mods="CTRL|SHIFT|ALT", 143:        key="h", mods="SUPER", 144:        action=wezterm.
action  145:          SplitVertical=  146:            domain="CurrentPaneDomain" 147:            148:          149:       , 150:     , 151:    harfbuzz features =  "zero" , 152:    scrollback lines = 100000, 153:    154:    