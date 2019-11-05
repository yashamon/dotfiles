
Config { font = "-*-Fixed-Bold-R-Normal-*-13-*-*-*-*-*-*-*"
       , bgColor = "black"
       , fgColor = "grey"
       , position = TopW L 90
       , commands = [ 
                      Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: %"] 10
                    , Run Swap [] 10
                    , Run Date "%a %b %_d %l:%M" "date" 10
                    , Run Battery [ "--template" , "Batt: <acstatus>"
                             , "--Low"      , "10"        -- units: %
                             , "--High"     , "80"        -- units: %
                             , "--low"      , "darkred"
                             , "--normal"   , "darkorange"
                             , "--high"     , "darkgreen"

                             , "--" -- battery specific options
                                       -- discharging status
                                       , "-o"	, "<left>% (<timeleft>)"
                                       -- AC "on" status
                                       , "-O"	, "<fc=#dAA520>Charging</fc>"
                                       -- charged status
                                       , "-i"	, "<fc=#006000>Charged</fc>"
                             ] 50
                    , Run StdinReader
                    , Run CommandReader "/usr/bin/ledmon" "LED"
                    ]
       ,  sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader% }{ %cpu% | %battery% | %wlan1%   %date% |"
       }
