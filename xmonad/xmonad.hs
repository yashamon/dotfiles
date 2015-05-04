import XMonad
import XMonad.Hooks.DynamicLog
import qualified Data.Map as M
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Hooks.UrgencyHook
import XMonad.Util.EZConfig(additionalKeysP, additionalKeys)
myWorkspaces :: [String]
myWorkspaces = [ "shell", "web", "steam-music", "torrent", "shell-misc", "6", "7", "8"
               , "mail" ]

-- layoutHook = avoidStruts $ smartBorders (tall ||| Full)
mylayoutHook = avoidStruts $ smartBorders (tall ||| Full)
                   where  tall = Tall 1 (3/100) (1/2)
myManageHook = composeAll
   [ className =? "Chromium" --> doShift "web"
   , className =? "Transmission-gtk" --> doShift "torrent"
   , className =? "Steam" --> doShift "music-steam"
   , manageDocks
   ]
myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
      where fadeAmount = 0.7

myNormalBorderColor, myFocusedBorderColor :: String
myNormalBorderColor  = "black"
myFocusedBorderColor = "black"

main = xmonad =<< xmobar myConfig
myConfig = defaultConfig
        { modMask = mod4Mask -- Use Super instead of Alt
        , terminal = "urxvtc"
        , manageHook = myManageHook
        , layoutHook = mylayoutHook
        , logHook = myLogHook
        , workspaces = myWorkspaces
        , normalBorderColor  = myNormalBorderColor
        , focusFollowsMouse  = True
        , focusedBorderColor = myFocusedBorderColor }
        `additionalKeysP`
        [ ("M-b", sendMessage ToggleStruts)
        ]
