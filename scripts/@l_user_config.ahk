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
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:23:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:24:: ; General remapping script for AutoHotkey
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:25:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:26:: ; The behaviour is such that the control key is located on the home
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:27:: ; row. CapsLock serve as Control, but with one detail: when
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:28:: ; pressed alone (fast enough), it has a different behaviour. When
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:29:: ; CapsLock is pressed fast, it behaves as a Escape key
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:30:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:31:: ; These ideas came from three blog posts, targeted at Mac users:
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:32:: ; 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:33:: ; http://batsov.com/articles/2012/12/06/emacs tip number 7 remap return to control in osx/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:34:: ; http://brettterpstra.com/2012/12/08/a useful caps lock key/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:35:: ; http://stevelosh.com/blog/2012/10/a modern space cadet/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:36:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:37:: ; The basic algorithm come from this discussion:
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:38:: ; https://superuser.com/questions/223831/remap a key depending on whether it was pressed alone or not
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:39:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:40:: ; The limit for 'fast enough' is 150 ms, but this may change
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:41:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:42:: ; I am still learning AutoHotkey, so there is much room to improve
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:43:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:44:: ;    
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:45:: ;   when pressing CapsLock alone, it will activate the Escpae button
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:46:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:47:: SetCapsLockState AlwaysOff
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:48:: !Space::^Tab
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:49:: CapsLock::Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:50:: ;k::Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:51:: ;Hotkey, k,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:52:: ;CapsLock & k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:53:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:54:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:55:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:56:: ;   Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:57:: ;   Hotkey, k, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:58:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:59:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:60:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:61:: ;j::Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:62:: ;Hotkey, j,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:63:: ;CapsLock & j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:64:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:65:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:66:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:67:: ;   Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:68:: ;   Hotkey, j, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:69:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:70:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:71:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:72:: ;l::Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:73:: ;Hotkey, l,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:74:: ;CapsLock & l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:75:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:76:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:77:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:78:: ;   Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:79:: ;   Hotkey, l, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:80:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:81:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:82:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:83:: ;CapsLock & h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:84:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:85:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:86:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:87:: ;   Send {Left
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:88:: ;;   Hotkey, h, off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:89:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:90:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:91:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:92:: #A::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:93:: switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:94:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:95:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:96:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:97:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:98:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:99:: #S::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:100:: switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:101:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:102:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:103:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:104:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:105:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:106:: #X::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:107:: WinClose A 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:108:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:109:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:110:: #J::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:111:: switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:112:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:113:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:114:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:115:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:116:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:117:: #D::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:118:: switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:119:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:120:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:121:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:122:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:123:: #C::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:124:: switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:125:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:126:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:127:: Send !{Esc 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:128:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:129:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:130:: #Space::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:131:: send {F11
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:132:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:133:: home::CapsLock
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:134:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:135:: #!s::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:136:: #!d::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:137:: #!f::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:138:: #!c::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:139:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:140:: #!h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:141:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:142:: #h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:143:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:144:: #k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:145:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:146:: #^a::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:147:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:148:: #^f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:149:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:150:: #^d::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:151:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:152:: #^s::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:153:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:154:: #!k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:155:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:156:: #^l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:157:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:158:: #^j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:159:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:160:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:161:: ; Win+Alt+G   Open Gmail in Chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:162:: #q::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:163:: WinKill, A
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:164:: #Enter::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:165::     Run "nu" 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:166::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:167:: #+f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:168::     Run lf
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:169::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:170:: #n::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:171::     Run nu C: Users yasha dotfiles scripts nf.nu
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:172::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:173:: #e::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:174:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:175:: Run chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:176:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:177:: #+j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:178:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:179:: Run xournalpp
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:180:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:181:: ; Win+Shift+Break   Edit this file
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:182:: #+Break::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:183::     Run "neo" "d: AutoHotkey.ahk"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:184::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:185:: CapsLock & Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:186:: CapsLock & Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:187:: CapsLock & Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:188:: CapsLock & Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:189:: CapsLock & Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:190:: CapsLock & Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:191:: CapsLock & Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:192:: CapsLock & Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:193:: CapsLock & Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:194:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:195:: /* #n::switchDesktopToRight() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:196:: /* #p::switchDesktopToLeft() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:197:: CapsLock & s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:198:: CapsLock & a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:199:: CapsLock & tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:200:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:201:: CapsLock & c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:202:: CapsLock & d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:203:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:204:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:205:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:206:: CapsLock & w::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:207:: CapsLock & e::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:208:: CapsLock & r::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:209:: CapsLock & t::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:210:: CapsLock & y::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:211:: CapsLock & u::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:212:: CapsLock & i::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:213:: CapsLock & o::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:214:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:215:: CapsLock & Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:216:: CapsLock & Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:217:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:218:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:219:: ; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:220:: ; Note, that  ^!1  means "Ctrl + Alt + 1" and  ^#1  means "Ctrl + Win + 1"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:221:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:222:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:223:: ; ^!1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:224:: ; ^!2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:225:: ; ^!3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:226:: ; ^!4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:227:: ; ^!5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:228:: ; ^!6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:229:: ; ^!7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:230:: ; ^!8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:231:: ; ^!9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:232:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:233:: ; ^!Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:234:: ; ^!Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:235:: ; ^!Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:236:: ; ^!Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:237:: ; ^!Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:238:: ; ^!Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:239:: ; ^!Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:240:: ; ^!Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:241:: ; ^!Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:242:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:243:: ; ^!n::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:244:: ; ^!p::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:245:: ; ^!s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:246:: ; ^!a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:247:: ; ^!tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:248:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:249:: ; ^!c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:250:: ; ^!d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:251:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:252:: ; ^#1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:253:: ; ^#2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:254:: ; ^#3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:255:: ; ^#4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:256:: ; ^#5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:257:: ; ^#6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:258:: ; ^#7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:259:: ; ^#8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:260:: ; ^#9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:261:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:262:: ; ^#Numpad1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:263:: ; ^#Numpad2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:264:: ; ^#Numpad3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:265:: ; ^#Numpad4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:266:: ; ^#Numpad5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:267:: ; ^#Numpad6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:268:: ; ^#Numpad7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:269:: ; ^#Numpad8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:270:: ; ^#Numpad9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:271:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:272:: ; ^#Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:273:: ; ^#Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:274:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:275:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:276:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:277:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:278:: ; Additional alternative shortcut for moving current window to left or right desktop (ctrl+shift+Win+left/right)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:279:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:280:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:281:: ; ^#+Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:282:: ; ^#+Left::MoveCurrentWindowToLeftDesktop() 
