;^ = ctrl, + = shift, ! = Alt

:o:zx::carlin.mackenzie@gmail.com
:o:xz::s1724780@ed.ac.uk
:o:abyz::abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
::,l::• 
::,o::Ω
::,a::α
:o:,c::✔

;    Vivaldi exiting
F1::
MouseMove,500, 15
Sleep 100
Click
Send {Alt}
Sleep 200
Send f
Send t
Sleep 200
Send, %A_YYYY%.%A_MM%.%A_DD%{space}
FormatTime, Time, ,H.mm
SendInput, %Time%
Sleep 200
Send {Enter} 
Sleep 200
Send {Alt}
Sleep 750
Send f
Send x
Return

;    Create a new file
!n:: 
KeyWait Alt
Send {AppsKey}
Sleep 20
Send w
Send t
Sleep 20
Send +{Right}
Send +{Right}
Send +{Right}
Send +{Right}
return
Exit

;    Always keep window visible
^SPACE::  Winset, Alwaysontop, , A

;    Hotstring to enter date stamp 
::ttt::
Send, %A_YYYY%.%A_MM%.%A_DD%{space}
FormatTime, Time, ,H.mm
SendInput, %Time%
Return 

;    Open paint on screenshot
; ::Printscreen::
;Send {Printscreen}
IfWinExist Untitled - Paint 
{
    WinActivate, Untitled - Paint
    WinWaitActive, Untitled - Paint
}else {
    Run Mspaint
    Sleep 10
    WinActivate, Untitled - Paint
    WinWaitActive, Untitled - Paint
}
{
   Send ^v
   return
}

;    Select previous word
!CapsLock::^+Left
;    Backspace
CapsLock::sc00E
;    Toggle CapsLock
^CapsLock::CapsLock

;    Mouse side buttons
XButton1::^+Tab
;XButton1::
Click,Enter
return
XButton2::^Tab

;    my corrections 
::thsi::this
::jsut::just
::kow::know
::adn::and
::knwo::know
::sya::say
::wiht::with
::pn::on
::hsi::his
::ahve::have
::evr:: ever
::hae::have
::agian::again
::cna::can
::remeber::remember
::fr::for
::tp::to
::beacause::because
::reliased::realised
::thinnk::think
::si::is
::te::the
::annd::and
::relise::realise
::aparently::apparently
::reccommend::recommend
::teh::the