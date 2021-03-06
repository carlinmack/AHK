; Reference for the common AHK keys 
; ^ = ctrl, + = shift, ! = Alt

; Miscellaneous String Insertions
:o:abyz::abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
::lipsum::Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in lobortis ante, varius commodo felis. Fusce nec sollicitudin velit. Nulla accumsan turpis id erat mattis, vel vestibulum felis luctus. Morbi nec egestas ante. Proin suscipit a felis vel iaculis. Etiam pharetra, lacus eget condimentum bibendum, leo eros aliquam risus, et auctor nunc risus non libero. In laoreet nibh id viverra commodo.
:?:^1::¹
:?:^2::²
:?:^3::³
:?:^n::ⁿ
:?:^x::ˣ
:?:,_0::₀
:?:,_1::₁
:?:,_2::₂
:?:,_i::ᵢ
:?:,_j::ⱼ
:?:,_ij::ᵢⱼ
:?:,_n::ₙ
:?:,_k::ₖ
:?:,times::×
:?:,degree::°
::,y^::ŷ
::,em::—
::,l::• 
::,o::Ω
::,ne::≠
::,alpha::α
::,omega::Ω
::,lambda::λ
::,theta::θ
::,Sigma::Σ
::,uparrow::↑
::,rightarrow::→
::,downarrow::↓
::,leftarrow::←
::,in::∈
::,subset::⊂
::,subseteq::⊆
::,cap::∩
::,cup::∪
::,vdash::⊢
:o:,c::✔
::,...::…
::,scotland::🏴󠁧󠁢󠁳󠁣󠁴󠁿

;    Exiting Vivaldi browser and saving a session so that state is never lost
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

;    Create a new text file and delete name including extension so that any file of choosing can be created
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

;    Always keep window visible on top of other windows
^SPACE::  Winset, Alwaysontop, , A

;    Hotstring to enter date stamp of format YYYY.MM.DD HH.MM
::ttt::
Send, %A_YYYY%.%A_MM%.%A_DD%{space}
FormatTime, Time, ,H.mm
SendInput, %Time%
Return 

;    Open paint on screenshot and paste the screenshot taken, remove semicolon on next line to activate this
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

;    Select previous word - Doesn't work, in progress
; !CapsLock::^+Left
;    Set CapsLock to Backspace
CapsLock::sc00E
;    Toggle CapsLock, replaces the actual caps lock button with the combination of ctrl+capslock
^CapsLock::CapsLock

;    Mouse side button, go back a tab
XButton1::^+Tab

;    Doesn't work, would add a new line when pressed
;XButton1::
;Click,Enter
;return

;    Mouse side button, go forward a tab
XButton2::^Tab

;    Silly spelling corrections 
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
::int his::in this
::ont he::on the
::oft he::of the
::craete::create
::haev::have
