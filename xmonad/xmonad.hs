import XMonad
import XMonad.Hooks.DynamicLog
import qualified Data.Map as M
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.ManageDocks
import XMonad.Actions.FloatKeys
import XMonad.Layout.NoBorders
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.Spacing
import XMonad.Hooks.UrgencyHook
import XMonad.Util.EZConfig(additionalKeysP, additionalKeys, removeMouseBindings)
myWorkspaces :: [String]
myWorkspaces = [ "shell", "zathura", "chrome", "media", "shell-misc", "torrent", "7", "8"
               , "mail" ]

-- layoutHook = avoidStruts $ smartBorders (tall ||| Full)
mylayoutHook =  avoidStruts $ noBorders (spacing 2 tall ||| Full)
                   where  tall = Tall 1 (3/100) (1/2)
myManageHook = composeAll
   [ 
     className =? "Zathura" --> doShift "zathura"
   , className =? "Chromium" --> doShift "web"
   , className =? "Transmission-gtk" --> doShift "torrent"
   , className =? "Steam" --> doShift "media"
   , className =? "Vlc" --> doShift "media"
   , className =? "vlc" --> doShift "media"
   , manageDocks
   -- , className =? "Vlc" --> doFloat
   -- , isFullscreen --> doFullFloat
   ]
myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
      where fadeAmount = 0.70

myNormalBorderColor, myFocusedBorderColor :: String
myNormalBorderColor  = "black"
myFocusedBorderColor = "black"

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList
            [
                  ((modm,               xK_d     ), withFocused (keysAbsResizeWindow (-10,-10) (1024,752)))
                , ((modm,               xK_s     ), withFocused (keysAbsResizeWindow (10,10) (1024,752)))
                , ((modm .|. shiftMask, xK_d     ), withFocused (keysAbsResizeWindow (10,10) (1024,752)))
                , ((modm .|. shiftMask, xK_s     ), withFocused (keysAbsResizeWindow (10,10) (1024,752)))
                -- , ((modm,               xK_a     ), withFocused (keysMoveWindowTo (512,384) (1%2,1%2)))
            ]
main = xmonad =<< xmobar myConfig
-- main = xmonad  myConfig
myConfig = defaultConfig
        { 
          modMask = mod3Mask -- Use control instead of Alt
        , terminal = "urxvtc"
        , keys          = \c -> myKeys c `M.union` keys defaultConfig c
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
