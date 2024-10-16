Config
   { font = "xft:Fira\ Code:size=10"
   , additionalFonts = []        -- default: []
   , borderColor = "white"
   , border = NoBorder
   , bgColor = "black"
   , fgColor = "white"
   , alpha = 255                 -- default: 255
   , position = TopSize C 100 28
   , textOffset = -1             -- default: -1
   , iconOffset = -1             -- default: -1
   , lowerOnStart = True
   , pickBroadest = False        -- default: False
   , persistent = True
   , hideOnStart = False
   , iconRoot = "/home/dino/.xmonad/resources"  -- default: "."
   , allDesktops = True          -- default: True
   , overrideRedirect = False    -- default: True
   , commands =
      -- Version with a static on-battery icon
      -- [ Run Battery
      --    [ "-t", "<acstatus> <left>"
      --    , "--"
      --    , "-O", "<icon=fa6-plug-solid_24.xpm/>"
      --    , "-i", "<icon=fa6-plug-solid_24.xpm/>"
      --    , "-o", "<icon=fa6-battery-three-quarters-solid_24.xpm/>"
      --    , "-L", "20", "-l", "red"
      --    , "-H", "80", "-h", "green"
      --    , "-m", "white"
      --    , "-p", "green"  -- This appears to not be working on my X1 Carbon
      --    , "-P"
      --    ] 600
      -- Version with different icons for better level ranges
      [ Run Battery
         [ "-t", "<acstatus> <left>"
         , "--"
         , "-O", "<icon=fa6-plug-solid_24.xpm/>"
         , "-i", "<icon=fa6-plug-solid_24.xpm/>"
         , "-o", ""
         , "-L", "20", "-l", "red"
         , "-H", "80", "-h", "green"
         , "-m", "white"
         , "-p", "green"  -- This appears to not work on some systems (Lenovo X1, Legion)
         , "-P"
         , "--lows", "<icon=fa6-battery-quarter-solid_24.xpm/>"
         , "--mediums", "<icon=fa6-battery-half-solid_24.xpm/>"
         , "--highs", "<icon=fa6-battery-full-solid_24.xpm/>"
         ] 600
      , Run CoreTemp
         [ "-t", "<icon=fa6-thermometer-three-quarters-solid_24.xpm/> <core0>°C"
         , "-H", "60", "-h", "red"
         , "-L", "40", "-l", "lightblue"
         , "-n", "white"
         ] 50
      , Run Cpu
         [ "-t", "<icon=fa6-microchip-solid_24.xpm/> <total>%"
         , "-p", "3"
         , "-H", "50", "-h", "red"
         , "-L", "3"
         , "-n", "green"
         ] 10
      , Run Date "<fc=#ee9a00>%Y-%b-%0d %a %H:%M:%S</fc>" "date" 10
      , Run DateZone "<fc=lightblue>%H:%M Z</fc>" "" "GMT" "utc" 10
      , Run DiskU
         [ ("/", "<icon=fa6-hdd-solid_24.xpm/> <usedp>% used, <free> free") ]
         [] 20
      , Run DynNetwork
         [ "-t", "<icon=fa6-wifi-solid_24.xpm/> <icon=fa6-download-solid_24.xpm/><rx>KB <icon=fa6-upload-solid_24.xpm/><tx>KB . "
         ] 10
      , Run Mail
        [ ( "<icon=fa6-envelope-solid_24.xpm/> ", "~/.mail/Inbox")
        , ( "<icon=fa6-beer-solid_24.xpm/> ", "~/.mail/Drafts")
        , ( "<icon=fa6-bacteria-solid_24.xpm/> ", "~/.mail/spam")
        ] "mail"
      , Run Memory
         [ "-t", "<icon=fa6-memory-solid_24.xpm/> <usedratio>% used, <available>M free"] 10
      , Run StdinReader
      , Run Weather "KRDU"
         [ "-t", "KRDU: <tempF>°F"
         , "-L", "34", "-H", "93"
         , "--normal", "green", "--high", "red", "--low", "lightblue"
         ] 36000
      ]
   , sepChar = "%"
   , alignSep = "}{"

   , template = "%StdinReader% . %cpu% . %coretemp% . %memory% . %disku% }{ %mail% . %dynnetwork%%battery% . <icon=fa6-cloud-sun-rain-solid_24.xpm/> %KRDU% . <icon=fa6-clock-solid_24.xpm/> %utc% %date%"
   }
