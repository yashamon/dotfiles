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
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:50:: m & Space::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:51:: CapsLock::Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:52:: ;k::Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:53:: ;Hotkey, k,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:54:: ;CapsLock & k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:55:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:56:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:57:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:58:: ;   Send {Up
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:59:: ;   Hotkey, k, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:60:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:61:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:62:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:63:: ;j::Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:64:: ;Hotkey, j,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:65:: ;CapsLock & j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:66:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:67:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:68:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:69:: ;   Send {Down
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:70:: ;   Hotkey, j, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:71:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:72:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:73:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:74:: ;l::Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:75:: ;Hotkey, l,off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:76:: ;CapsLock & l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:77:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:78:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:79:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:80:: ;   Send {Right
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:81:: ;   Hotkey, l, off  
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:82:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:83:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:84:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:85:: ;CapsLock & h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:86:: ;GetKeyState, state,CapsLock,P
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:87:: ;If state=D
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:88:: ;{
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:89:: ;   Send {Left
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:90:: ;;   Hotkey, h, off
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:91:: ;   return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:92:: ;
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:93:: ;Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:94:: #A::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:95:: switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:96:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:97:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:98:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:99:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:100:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:101:: #S::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:102:: switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:103:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:104:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:105:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:106:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:107:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:108:: #X::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:109:: WinClose A 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:110:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:111:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:112:: #J::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:113:: switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:114:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:115:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:116:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:117:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:118:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:119:: #D::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:120:: switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:121:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:122:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:123:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:124:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:125:: #C::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:126:: switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:127:: Send !{Esc
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:128:: sleep 100
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:129:: Send !{Esc 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:130:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:131:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:132:: #Space::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:133:: send {F11
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:134:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:135:: home::CapsLock
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:136:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:137:: #!s::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:138:: #!d::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:139:: #!f::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:140:: #!c::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:141:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:142:: #!h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:143:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:144:: #h::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:145:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:146:: #k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:147:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:148:: #^a::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:149:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:150:: #^f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:151:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:152:: #^d::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:153:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:154:: #^s::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:155:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:156:: #!k::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:157:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:158:: #^l::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:159:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:160:: #^j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:161:: return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:162:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:163:: ; Win+Alt+G   Open Gmail in Chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:164:: #q::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:165:: WinKill, A
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:166:: #Enter::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:167::     Run "nu" 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:168::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:169:: #+f::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:170::     Run lf
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:171::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:172:: #n::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:173::     Run nu C: Users yasha dotfiles scripts nf.nu
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:174::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:175:: #e::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:176:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:177:: Run chrome
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:178:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:179:: #+j::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:180:: ; Run microsoft edge:https://this page intentionally left blank.org/ 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:181:: Run xournalpp
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:182:: Return   
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:183:: ; Win+Shift+Break   Edit this file
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:184:: #+Break::
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:185::     Run "neo" "d: AutoHotkey.ahk"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:186::     Return
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:187:: CapsLock & Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:188:: CapsLock & Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:189:: CapsLock & Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:190:: CapsLock & Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:191:: CapsLock & Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:192:: CapsLock & Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:193:: CapsLock & Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:194:: CapsLock & Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:195:: CapsLock & Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:196:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:197:: /* #n::switchDesktopToRight() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:198:: /* #p::switchDesktopToLeft() */
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:199:: CapsLock & s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:200:: CapsLock & a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:201:: CapsLock & tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:202:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:203:: CapsLock & c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:204:: CapsLock & d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:205:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:206:: #!a::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:207:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:208:: CapsLock & w::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:209:: CapsLock & e::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:210:: CapsLock & r::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:211:: CapsLock & t::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:212:: CapsLock & y::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:213:: CapsLock & u::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:214:: CapsLock & i::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:215:: CapsLock & o::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:216:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:217:: CapsLock & Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:218:: CapsLock & Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:219:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:220:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:221:: ; Below is the alternate key configuration. Delete symbol ; in the beginning of the line to enable.
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:222:: ; Note, that  ^!1  means "Ctrl + Alt + 1" and  ^#1  means "Ctrl + Win + 1"
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:223:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:224:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:225:: ; ^!1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:226:: ; ^!2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:227:: ; ^!3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:228:: ; ^!4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:229:: ; ^!5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:230:: ; ^!6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:231:: ; ^!7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:232:: ; ^!8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:233:: ; ^!9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:234:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:235:: ; ^!Numpad1::switchDesktopByNumber(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:236:: ; ^!Numpad2::switchDesktopByNumber(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:237:: ; ^!Numpad3::switchDesktopByNumber(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:238:: ; ^!Numpad4::switchDesktopByNumber(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:239:: ; ^!Numpad5::switchDesktopByNumber(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:240:: ; ^!Numpad6::switchDesktopByNumber(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:241:: ; ^!Numpad7::switchDesktopByNumber(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:242:: ; ^!Numpad8::switchDesktopByNumber(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:243:: ; ^!Numpad9::switchDesktopByNumber(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:244:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:245:: ; ^!n::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:246:: ; ^!p::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:247:: ; ^!s::switchDesktopToRight()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:248:: ; ^!a::switchDesktopToLeft()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:249:: ; ^!tab::switchDesktopToLastOpened()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:250:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:251:: ; ^!c::createVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:252:: ; ^!d::deleteVirtualDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:253:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:254:: ; ^#1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:255:: ; ^#2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:256:: ; ^#3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:257:: ; ^#4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:258:: ; ^#5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:259:: ; ^#6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:260:: ; ^#7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:261:: ; ^#8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:262:: ; ^#9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:263:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:264:: ; ^#Numpad1::MoveCurrentWindowToDesktop(1)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:265:: ; ^#Numpad2::MoveCurrentWindowToDesktop(2)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:266:: ; ^#Numpad3::MoveCurrentWindowToDesktop(3)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:267:: ; ^#Numpad4::MoveCurrentWindowToDesktop(4)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:268:: ; ^#Numpad5::MoveCurrentWindowToDesktop(5)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:269:: ; ^#Numpad6::MoveCurrentWindowToDesktop(6)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:270:: ; ^#Numpad7::MoveCurrentWindowToDesktop(7)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:271:: ; ^#Numpad8::MoveCurrentWindowToDesktop(8)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:272:: ; ^#Numpad9::MoveCurrentWindowToDesktop(9)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:273:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:274:: ; ^#Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:275:: ; ^#Left::MoveCurrentWindowToLeftDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:276:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:277:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:278:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:279:: ; === INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:280:: ; Additional alternative shortcut for moving current window to left or right desktop (ctrl+shift+Win+left/right)
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:281:: ; === END OF INSTRUCTIONS ===
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:282:: 
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:283:: ; ^#+Right::MoveCurrentWindowToRightDesktop()
 C:/Users/yasha/dotfiles/scripts/user_config.ahk:284:: ; ^#+Left::MoveCurrentWindowToLeftDesktop() 
