import XMonad
import XMonad.Hooks.DynamicLog
import qualified Data.Map as M
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Hooks.UrgencyHook
import XMonad.Util.EZConfig(additionalKeysP, additionalKeys, removeMouseBindings)
myWorkspaces :: [String]
myWorkspaces = [ "shell", "web", "media", "torrent", "shell-misc", "6", "7", "8"
               , "mail" ]

-- layoutHook = avoidStruts $ smartBorders (tall ||| Full)
mylayoutHook = avoidStruts $ smartBorders (tall ||| Full)
                   where  tall = Tall 1 (3/100) (1/2)
myManageHook = composeAll
   [ className =? "Chromium" --> doShift "web"
   , className =? "Transmission-gtk" --> doShift "torrent"
   , className =? "Steam" --> doShift "media"
   , className =? "Vlc" --> doShift "media"
   , className =? "vlc" --> doShift "media"
   , manageDocks
   ]
myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
      where fadeAmount = 0.7

myNormalBorderColor, myFocusedBorderColor :: String
myNormalBorderColor  = "black"
myFocusedBorderColor = "blue"

main = xmonad =<< xmobar myConfig
myConfig = defaultConfig
        { 
         modMask = controlMask -- Use control instead of Alt
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
        -- `removeMouseBindings` 
        -- [(modMask, button1)
        -- ] 
