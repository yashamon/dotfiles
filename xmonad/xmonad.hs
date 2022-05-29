import XMonad 
-- import XMonad.W
import XMonad.Hooks.DynamicLog
import qualified Data.Map as M 
import System.IO
import Data.Monoid
import qualified XMonad.StackSet as W 
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
myWorkspaces = [ "primary", "chrome", "chrome2", "media", "shell-misc", "torrent", "mail", "8"
               , "mail" ]

-- layoutHook = avoidStruts $ smartBorders (tall ||| Full)
mylayoutHook =  avoidStruts $ noBorders (spacing 2 tall ||| Full)
                   where  tall = Tall 1 (3/100) (1/2)
myManageHook = composeAll
   [ 
     className =? "Zathura" --> doShift "primary"
   , className =? "Chromium" --> doShift "chrome"
   , className =? "Firefox" --> doShift "chrome" 
   , className =? "firefox" --> doShift "chrome"  
   , className =? "google-chrome-beta" --> doShift "chrome"
   , className =? "google-chrome" --> doShift "chrome"
   , className =? "Google-chrome" --> doShift "chrome"
   , className =? "Google-Chrome-Beta" --> doShift "chrome"
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
      where fadeAmount = 0.8

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
          modMask = mod4Mask -- Use control instead of Alt
        , terminal = "kitty"
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
          -- ("Alt-Tab",  "M-k")
      ]`additionalKeys`
    [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock"),
      ((0                     , 0x1008FF11), spawn "amixer -q sset Master 2%-"),
      ((0                     , 0x1008FF13), spawn "amixer -q sset Master 2%+"), 
      ((mod1Mask,  xK_Tab), windows W.focusDown), 
      ((mod1Mask .|. shiftMask, xK_Tab), windows W.focusUp)
-- ((0                     , 0x1008FF12), spawn "amixer set Master toggle")
    ]
        -- `removeMouseBindings` 
        -- [(modMask, button1)
        -- ] 

