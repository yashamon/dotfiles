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
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:23:: ; General remapping script for AutoHotkey
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:24:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:25:: ; The behaviour is such that the control key is located on the home
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:26:: ; row. CapsLock serve as Control, but with one detail: when
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:27:: ; pressed alone (fast enough), it has a different behaviour. When
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:28:: ; CapsLock is pressed fast, it behaves as a Escape key
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:29:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:30:: ; These ideas came from three blog posts, targeted at Mac users:
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:31:: ; 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:32:: ; http://batsov.com/articles/2012/12/06/emacs tip number 7 remap return to control in osx/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:33:: ; http://brettterpstra.com/2012/12/08/a useful caps lock key/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:34:: ; http://stevelosh.com/blog/2012/10/a modern space cadet/
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:35:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:36:: ; The basic algorithm come from this discussion:
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:37:: ; https://superuser.com/questions/223831/remap a key depending on whether it was pressed alone or not
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:38:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:39:: ; The limit for 'fast enough' is 150 ms, but this may change
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:40:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:41:: ; I am still learning AutoHotkey, so there is much room to improve
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:42:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:43:: ;    
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:44:: ;   when pressing CapsLock alone, it will activate the Escpae button
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:45:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:46:: SetCapsLockState AlwaysOff
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:47:: !Space::^Tab
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:48:: CapsLock::Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:49:: ;k::Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:50:: ;Hotkey, k,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:51:: ;CapsLock & k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:52:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:53:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:54:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:55:: ;   Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:56:: ;   Hotkey, k, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:57:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:58:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:59:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:60:: ;j::Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:61:: ;Hotkey, j,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:62:: ;CapsLock & j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:63:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:64:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:65:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:66:: ;   Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:67:: ;   Hotkey, j, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:68:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:69:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:70:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:71:: ;l::Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:72:: ;Hotkey, l,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:73:: ;CapsLock & l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:74:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:75:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:76:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:77:: ;   Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:78:: ;   Hotkey, l, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:79:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:80:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:81:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:82:: ;CapsLock & h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:83:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:84:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:85:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:86:: ;   Send {Left
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:87:: ;;   Hotkey, h, off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:88:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:89:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:90:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:91:: #A::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:92:: switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:93:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:94:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:95:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:96:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:97:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:98:: #S::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:99:: switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:100:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:101:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:102:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:103:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:104:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:105:: #X::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:106:: WinClose A 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:107:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:108:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:109:: #J::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:110:: switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:111:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:112:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:113:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:114:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:115:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:116:: #D::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:117:: switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:118:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:119:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:120:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:121:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:122:: #C::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:123:: switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:124:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:125:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:126:: Send !{Esc 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:127:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:128:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:129:: #Space::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:130:: send {F11
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:131:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:132:: home::CapsLock
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:133:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:134:: #!s::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:135:: #!d::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:136:: #!f::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:137:: #!c::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:138:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:139:: #!h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:140:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:141:: #h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:142:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:143:: #k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:144:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:145:: #^a::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:146:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:147:: #^f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:148:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:149:: #^d::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:150:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:151:: #^s::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:152:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:153:: #!k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:154:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:155:: #^l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:156:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:157:: #^j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:158:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:159:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:160:: ; Win+Alt+G   Open Gmail in Chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:161:: #q::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:162:: WinKill, A
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:163:: #Enter::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:164::     Run "nu" 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:165::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:166:: #+f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:167::     Run lf
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:168::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:169:: #n::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:170::     Run nu C: Users yasha dotfiles scripts nf.nu
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:171::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:172:: #e::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:173:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:174:: Run chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:175:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:176:: #+j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:177:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:178:: Run xournalpp
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:179:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:180:: ; Win+Shift+Break   Edit this file
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:181:: #+Break::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:182::     Run "neo" "d: AutoHotkey.ahk"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:183::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:184:: CapsLock & Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:185:: CapsLock & Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:186:: CapsLock & Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:187:: CapsLock & Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:188:: CapsLock & Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:189:: CapsLock & Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:190:: CapsLock & Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:191:: CapsLock & Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:192:: CapsLock & Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:193:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:194:: /* #n::switchDesktopToRight() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:195:: /* #p::switchDesktopToLeft() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:196:: CapsLock & s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:197:: CapsLock & a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:198:: CapsLock & tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:199:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:200:: CapsLock & c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:201:: CapsLock & d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:202:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:203:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:204:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:205:: CapsLock & w::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:206:: CapsLock & e::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:207:: CapsLock & r::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:208:: CapsLock & t::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:209:: CapsLock & y::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:210:: CapsLock & u::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:211:: CapsLock & i::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:212:: CapsLock & o::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:213:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:214:: CapsLock & Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:215:: CapsLock & Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:216:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:217:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:218:: ; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:219:: ; Note, that  ^!1  means "Ctrl + Alt + 1" and  ^#1  means "Ctrl + Win + 1"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:220:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:221:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:222:: ; ^!1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:223:: ; ^!2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:224:: ; ^!3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:225:: ; ^!4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:226:: ; ^!5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:227:: ; ^!6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:228:: ; ^!7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:229:: ; ^!8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:230:: ; ^!9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:231:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:232:: ; ^!Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:233:: ; ^!Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:234:: ; ^!Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:235:: ; ^!Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:236:: ; ^!Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:237:: ; ^!Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:238:: ; ^!Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:239:: ; ^!Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:240:: ; ^!Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:241:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:242:: ; ^!n::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:243:: ; ^!p::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:244:: ; ^!s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:245:: ; ^!a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:246:: ; ^!tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:247:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:248:: ; ^!c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:249:: ; ^!d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:250:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:251:: ; ^#1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:252:: ; ^#2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:253:: ; ^#3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:254:: ; ^#4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:255:: ; ^#5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:256:: ; ^#6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:257:: ; ^#7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:258:: ; ^#8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:259:: ; ^#9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:260:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:261:: ; ^#Numpad1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:262:: ; ^#Numpad2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:263:: ; ^#Numpad3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:264:: ; ^#Numpad4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:265:: ; ^#Numpad5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:266:: ; ^#Numpad6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:267:: ; ^#Numpad7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:268:: ; ^#Numpad8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:269:: ; ^#Numpad9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:270:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:271:: ; ^#Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:272:: ; ^#Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:273:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:274:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:275:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:276:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:277:: ; Additional alternative shortcut for moving current window to left or right desktop (ctrl+shift+Win+left/right)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:278:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:279:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:280:: ; ^#+Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:281:: ; ^#+Left::MoveCurrentWindowToLeftDesktop() 
