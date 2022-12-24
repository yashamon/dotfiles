 C:/Users/yasha/dotfiles/scripts/user_config.ahk:1:: ; ====================
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:2:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:3:: ; ====================
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:4:: ; 1. Any lines starting with ; are ignored
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:5:: ; 2. After changing this config file run script file "desktop_switcher.ahk"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:6:: ; 3. Every line is in the format HOTKEY::ACTION
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:7:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:8:: ; === SYMBOLS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:9:: ; !   <  Alt
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:10:: ; +   <  Shift
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:11:: ; ^   <  Ctrl
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:12:: ; #   <  Win
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:13:: ; For more, visit https://autohotkey.com/docs/Hotkeys.htm
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:14:: ; === EXAMPLES ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:15:: ; !n::switchDesktopToRight()             <  <Alt> + <N> will switch to the next desktop (to the right of the current one)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:16:: ; #!space::switchDesktopToRight()        <  <Win> + <Alt> + <Space> will switch to next desktop
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:17:: ; CapsLock & n::switchDesktopToRight()   <  <CapsLock> + <N> will switch to the next desktop (& is necessary when using non modifier key such as CapsLock)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:18:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:19:: ; ===========================
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:20:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:21:: ; ===========================
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:22:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:23:: SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:24:: SetWorkingDir %A_ScriptDir  ; Ensures a consistent starting directory. */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:25:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:26:: ; General remapping script for AutoHotkey
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:27:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:28:: ; The behaviour is such that the control key is located on the home
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:29:: ; row. CapsLock serve as Control, but with one detail: when
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:30:: ; pressed alone (fast enough), it has a different behaviour. When
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:31:: ; CapsLock is pressed fast, it behaves as a Escape key
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:32:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:33:: ; These ideas came from three blog posts, targeted at Mac users:
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:34:: ; 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:35:: ; http://batsov.com/articles/2012/12/06/emacs tip number 7 remap return to control in osx/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:36:: ; http://brettterpstra.com/2012/12/08/a useful caps lock key/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:37:: ; http://stevelosh.com/blog/2012/10/a modern space cadet/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:38:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:39:: ; The basic algorithm come from this discussion:
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:40:: ; https://superuser.com/questions/223831/remap a key depending on whether it was pressed alone or not
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:41:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:42:: ; The limit for 'fast enough' is 150 ms, but this may change
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:43:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:44:: ; I am still learning AutoHotkey, so there is much room to improve
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:45:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:46:: ;    
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:47:: ;   when pressing CapsLock alone, it will activate the Escpae button
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:48:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:49:: SetCapsLockState AlwaysOff
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:50:: CapsLock::Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:51:: ;k::Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:52:: ;Hotkey, k,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:53:: ;CapsLock & k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:54:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:55:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:56:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:57:: ;   Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:58:: ;   Hotkey, k, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:59:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:60:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:61:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:62:: ;j::Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:63:: ;Hotkey, j,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:64:: ;CapsLock & j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:65:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:66:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:67:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:68:: ;   Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:69:: ;   Hotkey, j, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:70:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:71:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:72:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:73:: ;l::Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:74:: ;Hotkey, l,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:75:: ;CapsLock & l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:76:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:77:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:78:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:79:: ;   Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:80:: ;   Hotkey, l, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:81:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:82:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:83:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:84:: ;CapsLock & h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:85:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:86:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:87:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:88:: ;   Send {Left
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:89:: ;;   Hotkey, h, off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:90:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:91:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:92:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:93:: #A::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:94:: switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:95:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:96:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:97:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:98:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:99:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:100:: #S::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:101:: switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:102:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:103:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:104:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:105:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:106:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:107:: #X::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:108:: WinClose A 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:109:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:110:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:111:: #J::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:112:: switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:113:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:114:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:115:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:116:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:117:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:118:: #D::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:119:: switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:120:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:121:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:122:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:123:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:124:: #C::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:125:: switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:126:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:127:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:128:: Send !{Esc 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:129:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:130:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:131:: #Space::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:132:: send {F11
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:133:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:134:: home::CapsLock
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:135:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:136:: #!s::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:137:: #!d::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:138:: #!f::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:139:: #!c::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:140:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:141:: #!h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:142:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:143:: #h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:144:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:145:: #k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:146:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:147:: #^a::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:148:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:149:: #^f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:150:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:151:: #^d::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:152:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:153:: #^s::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:154:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:155:: #!k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:156:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:157:: #^l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:158:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:159:: #^j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:160:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:161:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:162:: ; Win+Alt+G   Open Gmail in Chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:163:: #q::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:164:: WinKill, A
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:165:: #Enter::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:166::     Run "nu" 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:167::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:168:: #+f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:169::     Run lf
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:170::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:171:: #n::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:172::     Run nu C: Users yasha dotfiles scripts nf.nu
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:173::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:174:: #e::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:175:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:176:: Run chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:177:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:178:: #+j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:179:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:180:: Run xournalpp
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:181:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:182:: ; Win+Shift+Break   Edit this file
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:183:: #+Break::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:184::     Run "neo" "d: AutoHotkey.ahk"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:185::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:186:: CapsLock & Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:187:: CapsLock & Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:188:: CapsLock & Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:189:: CapsLock & Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:190:: CapsLock & Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:191:: CapsLock & Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:192:: CapsLock & Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:193:: CapsLock & Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:194:: CapsLock & Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:195:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:196:: /* #n::switchDesktopToRight() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:197:: /* #p::switchDesktopToLeft() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:198:: CapsLock & s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:199:: CapsLock & a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:200:: CapsLock & tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:201:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:202:: CapsLock & c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:203:: CapsLock & d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:204:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:205:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:206:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:207:: CapsLock & w::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:208:: CapsLock & e::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:209:: CapsLock & r::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:210:: CapsLock & t::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:211:: CapsLock & y::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:212:: CapsLock & u::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:213:: CapsLock & i::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:214:: CapsLock & o::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:215:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:216:: CapsLock & Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:217:: CapsLock & Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:218:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:219:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:220:: ; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:221:: ; Note, that  ^!1  means "Ctrl + Alt + 1" and  ^#1  means "Ctrl + Win + 1"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:222:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:223:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:224:: ; ^!1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:225:: ; ^!2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:226:: ; ^!3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:227:: ; ^!4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:228:: ; ^!5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:229:: ; ^!6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:230:: ; ^!7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:231:: ; ^!8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:232:: ; ^!9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:233:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:234:: ; ^!Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:235:: ; ^!Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:236:: ; ^!Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:237:: ; ^!Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:238:: ; ^!Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:239:: ; ^!Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:240:: ; ^!Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:241:: ; ^!Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:242:: ; ^!Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:243:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:244:: ; ^!n::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:245:: ; ^!p::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:246:: ; ^!s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:247:: ; ^!a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:248:: ; ^!tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:249:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:250:: ; ^!c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:251:: ; ^!d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:252:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:253:: ; ^#1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:254:: ; ^#2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:255:: ; ^#3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:256:: ; ^#4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:257:: ; ^#5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:258:: ; ^#6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:259:: ; ^#7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:260:: ; ^#8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:261:: ; ^#9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:262:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:263:: ; ^#Numpad1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:264:: ; ^#Numpad2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:265:: ; ^#Numpad3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:266:: ; ^#Numpad4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:267:: ; ^#Numpad5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:268:: ; ^#Numpad6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:269:: ; ^#Numpad7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:270:: ; ^#Numpad8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:271:: ; ^#Numpad9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:272:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:273:: ; ^#Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:274:: ; ^#Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:275:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:276:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:277:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:278:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:279:: ; Additional alternative shortcut for moving current window to left or right desktop (ctrl+shift+Win+left/right)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:280:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:281:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:282:: ; ^#+Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:283:: ; ^#+Left::MoveCurrentWindowToLeftDesktop() 
