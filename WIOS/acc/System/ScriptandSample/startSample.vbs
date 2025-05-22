Option Explicit
Dim WS,Notify_Sound,AirHorn_Sound,i
Set WS = CreateObject("Wscript.Shell")
Notify_Sound = WS.ExpandEnvironmentStrings("System\ScriptandSample\beep.wav")
' Playing Notify sound 10 times inside the loop For ..Loop
For i = 1 to 1
    'WS.Popup i & vbTab & "Do you feel alright ?",2,"Answer This Question:",vbYesNo+vbQuestion+vbSystemModal
    Call Play(Notify_Sound)
    'wscript.Sleep 500
Next
AirHorn_Sound = "https://soundbible.com/mp3/Airhorn-SoundBible.com-975027544.mp3"
Call Play(AirHorn_Sound)
'--------------------------------------------------------------------------------
Sub Play(URL)
    Dim Sound
    Set Sound = CreateObject("WMPlayer.OCX")
    Sound.URL = URL
    Sound.settings.volume = 100
    Sound.Controls.play
    Do while Sound.currentmedia.duration = 0
        wscript.sleep 100
    Loop
    wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
End Sub