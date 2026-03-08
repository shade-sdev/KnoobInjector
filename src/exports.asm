EXTERN g_funcPtrs:QWORD

.CODE

CloseDriver PROC
    mov rax, QWORD PTR [g_funcPtrs + 0]
    jmp rax
CloseDriver ENDP

DefDriverProc PROC
    mov rax, QWORD PTR [g_funcPtrs + 8]
    jmp rax
DefDriverProc ENDP

DriverCallback PROC
    mov rax, QWORD PTR [g_funcPtrs + 16]
    jmp rax
DriverCallback ENDP

DrvGetModuleHandle PROC
    mov rax, QWORD PTR [g_funcPtrs + 24]
    jmp rax
DrvGetModuleHandle ENDP

GetDriverModuleHandle PROC
    mov rax, QWORD PTR [g_funcPtrs + 32]
    jmp rax
GetDriverModuleHandle ENDP

NotifyCallbackData PROC
    mov rax, QWORD PTR [g_funcPtrs + 40]
    jmp rax
NotifyCallbackData ENDP

OpenDriver PROC
    mov rax, QWORD PTR [g_funcPtrs + 48]
    jmp rax
OpenDriver ENDP

PlaySound PROC
    mov rax, QWORD PTR [g_funcPtrs + 56]
    jmp rax
PlaySound ENDP

PlaySoundA PROC
    mov rax, QWORD PTR [g_funcPtrs + 64]
    jmp rax
PlaySoundA ENDP

PlaySoundW PROC
    mov rax, QWORD PTR [g_funcPtrs + 72]
    jmp rax
PlaySoundW ENDP

SendDriverMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 80]
    jmp rax
SendDriverMessage ENDP

WOW32DriverCallback PROC
    mov rax, QWORD PTR [g_funcPtrs + 88]
    jmp rax
WOW32DriverCallback ENDP

WOW32ResolveMultiMediaHandle PROC
    mov rax, QWORD PTR [g_funcPtrs + 96]
    jmp rax
WOW32ResolveMultiMediaHandle ENDP

WOWAppExit PROC
    mov rax, QWORD PTR [g_funcPtrs + 104]
    jmp rax
WOWAppExit ENDP

aux32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 112]
    jmp rax
aux32Message ENDP

auxGetDevCapsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 120]
    jmp rax
auxGetDevCapsA ENDP

auxGetDevCapsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 128]
    jmp rax
auxGetDevCapsW ENDP

auxGetNumDevs PROC
    mov rax, QWORD PTR [g_funcPtrs + 136]
    jmp rax
auxGetNumDevs ENDP

auxGetVolume PROC
    mov rax, QWORD PTR [g_funcPtrs + 144]
    jmp rax
auxGetVolume ENDP

auxOutMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 152]
    jmp rax
auxOutMessage ENDP

auxSetVolume PROC
    mov rax, QWORD PTR [g_funcPtrs + 160]
    jmp rax
auxSetVolume ENDP

joy32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 168]
    jmp rax
joy32Message ENDP

joyConfigChanged PROC
    mov rax, QWORD PTR [g_funcPtrs + 176]
    jmp rax
joyConfigChanged ENDP

joyGetDevCapsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 184]
    jmp rax
joyGetDevCapsA ENDP

joyGetDevCapsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 192]
    jmp rax
joyGetDevCapsW ENDP

joyGetNumDevs PROC
    mov rax, QWORD PTR [g_funcPtrs + 200]
    jmp rax
joyGetNumDevs ENDP

joyGetPos PROC
    mov rax, QWORD PTR [g_funcPtrs + 208]
    jmp rax
joyGetPos ENDP

joyGetPosEx PROC
    mov rax, QWORD PTR [g_funcPtrs + 216]
    jmp rax
joyGetPosEx ENDP

joyGetThreshold PROC
    mov rax, QWORD PTR [g_funcPtrs + 224]
    jmp rax
joyGetThreshold ENDP

joyReleaseCapture PROC
    mov rax, QWORD PTR [g_funcPtrs + 232]
    jmp rax
joyReleaseCapture ENDP

joySetCapture PROC
    mov rax, QWORD PTR [g_funcPtrs + 240]
    jmp rax
joySetCapture ENDP

joySetThreshold PROC
    mov rax, QWORD PTR [g_funcPtrs + 248]
    jmp rax
joySetThreshold ENDP

mci32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 256]
    jmp rax
mci32Message ENDP

mciDriverNotify PROC
    mov rax, QWORD PTR [g_funcPtrs + 264]
    jmp rax
mciDriverNotify ENDP

mciDriverYield PROC
    mov rax, QWORD PTR [g_funcPtrs + 272]
    jmp rax
mciDriverYield ENDP

mciExecute PROC
    mov rax, QWORD PTR [g_funcPtrs + 280]
    jmp rax
mciExecute ENDP

mciFreeCommandResource PROC
    mov rax, QWORD PTR [g_funcPtrs + 288]
    jmp rax
mciFreeCommandResource ENDP

mciGetCreatorTask PROC
    mov rax, QWORD PTR [g_funcPtrs + 296]
    jmp rax
mciGetCreatorTask ENDP

mciGetDeviceIDA PROC
    mov rax, QWORD PTR [g_funcPtrs + 304]
    jmp rax
mciGetDeviceIDA ENDP

mciGetDeviceIDFromElementIDA PROC
    mov rax, QWORD PTR [g_funcPtrs + 312]
    jmp rax
mciGetDeviceIDFromElementIDA ENDP

mciGetDeviceIDFromElementIDW PROC
    mov rax, QWORD PTR [g_funcPtrs + 320]
    jmp rax
mciGetDeviceIDFromElementIDW ENDP

mciGetDeviceIDW PROC
    mov rax, QWORD PTR [g_funcPtrs + 328]
    jmp rax
mciGetDeviceIDW ENDP

mciGetDriverData PROC
    mov rax, QWORD PTR [g_funcPtrs + 336]
    jmp rax
mciGetDriverData ENDP

mciGetErrorStringA PROC
    mov rax, QWORD PTR [g_funcPtrs + 344]
    jmp rax
mciGetErrorStringA ENDP

mciGetErrorStringW PROC
    mov rax, QWORD PTR [g_funcPtrs + 352]
    jmp rax
mciGetErrorStringW ENDP

mciGetYieldProc PROC
    mov rax, QWORD PTR [g_funcPtrs + 360]
    jmp rax
mciGetYieldProc ENDP

mciLoadCommandResource PROC
    mov rax, QWORD PTR [g_funcPtrs + 368]
    jmp rax
mciLoadCommandResource ENDP

mciSendCommandA PROC
    mov rax, QWORD PTR [g_funcPtrs + 376]
    jmp rax
mciSendCommandA ENDP

mciSendCommandW PROC
    mov rax, QWORD PTR [g_funcPtrs + 384]
    jmp rax
mciSendCommandW ENDP

mciSendStringA PROC
    mov rax, QWORD PTR [g_funcPtrs + 392]
    jmp rax
mciSendStringA ENDP

mciSendStringW PROC
    mov rax, QWORD PTR [g_funcPtrs + 400]
    jmp rax
mciSendStringW ENDP

mciSetDriverData PROC
    mov rax, QWORD PTR [g_funcPtrs + 408]
    jmp rax
mciSetDriverData ENDP

mciSetYieldProc PROC
    mov rax, QWORD PTR [g_funcPtrs + 416]
    jmp rax
mciSetYieldProc ENDP

mid32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 424]
    jmp rax
mid32Message ENDP

midiConnect PROC
    mov rax, QWORD PTR [g_funcPtrs + 432]
    jmp rax
midiConnect ENDP

midiDisconnect PROC
    mov rax, QWORD PTR [g_funcPtrs + 440]
    jmp rax
midiDisconnect ENDP

midiInAddBuffer PROC
    mov rax, QWORD PTR [g_funcPtrs + 448]
    jmp rax
midiInAddBuffer ENDP

midiInClose PROC
    mov rax, QWORD PTR [g_funcPtrs + 456]
    jmp rax
midiInClose ENDP

midiInGetDevCapsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 464]
    jmp rax
midiInGetDevCapsA ENDP

midiInGetDevCapsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 472]
    jmp rax
midiInGetDevCapsW ENDP

midiInGetErrorTextA PROC
    mov rax, QWORD PTR [g_funcPtrs + 480]
    jmp rax
midiInGetErrorTextA ENDP

midiInGetErrorTextW PROC
    mov rax, QWORD PTR [g_funcPtrs + 488]
    jmp rax
midiInGetErrorTextW ENDP

midiInGetID PROC
    mov rax, QWORD PTR [g_funcPtrs + 496]
    jmp rax
midiInGetID ENDP

midiInGetNumDevs PROC
    mov rax, QWORD PTR [g_funcPtrs + 504]
    jmp rax
midiInGetNumDevs ENDP

midiInMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 512]
    jmp rax
midiInMessage ENDP

midiInOpen PROC
    mov rax, QWORD PTR [g_funcPtrs + 520]
    jmp rax
midiInOpen ENDP

midiInPrepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 528]
    jmp rax
midiInPrepareHeader ENDP

midiInReset PROC
    mov rax, QWORD PTR [g_funcPtrs + 536]
    jmp rax
midiInReset ENDP

midiInStart PROC
    mov rax, QWORD PTR [g_funcPtrs + 544]
    jmp rax
midiInStart ENDP

midiInStop PROC
    mov rax, QWORD PTR [g_funcPtrs + 552]
    jmp rax
midiInStop ENDP

midiInUnprepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 560]
    jmp rax
midiInUnprepareHeader ENDP

midiOutCacheDrumPatches PROC
    mov rax, QWORD PTR [g_funcPtrs + 568]
    jmp rax
midiOutCacheDrumPatches ENDP

midiOutCachePatches PROC
    mov rax, QWORD PTR [g_funcPtrs + 576]
    jmp rax
midiOutCachePatches ENDP

midiOutClose PROC
    mov rax, QWORD PTR [g_funcPtrs + 584]
    jmp rax
midiOutClose ENDP

midiOutGetDevCapsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 592]
    jmp rax
midiOutGetDevCapsA ENDP

midiOutGetDevCapsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 600]
    jmp rax
midiOutGetDevCapsW ENDP

midiOutGetErrorTextA PROC
    mov rax, QWORD PTR [g_funcPtrs + 608]
    jmp rax
midiOutGetErrorTextA ENDP

midiOutGetErrorTextW PROC
    mov rax, QWORD PTR [g_funcPtrs + 616]
    jmp rax
midiOutGetErrorTextW ENDP

midiOutGetID PROC
    mov rax, QWORD PTR [g_funcPtrs + 624]
    jmp rax
midiOutGetID ENDP

midiOutGetNumDevs PROC
    mov rax, QWORD PTR [g_funcPtrs + 632]
    jmp rax
midiOutGetNumDevs ENDP

midiOutGetVolume PROC
    mov rax, QWORD PTR [g_funcPtrs + 640]
    jmp rax
midiOutGetVolume ENDP

midiOutLongMsg PROC
    mov rax, QWORD PTR [g_funcPtrs + 648]
    jmp rax
midiOutLongMsg ENDP

midiOutMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 656]
    jmp rax
midiOutMessage ENDP

midiOutOpen PROC
    mov rax, QWORD PTR [g_funcPtrs + 664]
    jmp rax
midiOutOpen ENDP

midiOutPrepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 672]
    jmp rax
midiOutPrepareHeader ENDP

midiOutReset PROC
    mov rax, QWORD PTR [g_funcPtrs + 680]
    jmp rax
midiOutReset ENDP

midiOutSetVolume PROC
    mov rax, QWORD PTR [g_funcPtrs + 688]
    jmp rax
midiOutSetVolume ENDP

midiOutShortMsg PROC
    mov rax, QWORD PTR [g_funcPtrs + 696]
    jmp rax
midiOutShortMsg ENDP

midiOutUnprepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 704]
    jmp rax
midiOutUnprepareHeader ENDP

midiStreamClose PROC
    mov rax, QWORD PTR [g_funcPtrs + 712]
    jmp rax
midiStreamClose ENDP

midiStreamOpen PROC
    mov rax, QWORD PTR [g_funcPtrs + 720]
    jmp rax
midiStreamOpen ENDP

midiStreamOut PROC
    mov rax, QWORD PTR [g_funcPtrs + 728]
    jmp rax
midiStreamOut ENDP

midiStreamPause PROC
    mov rax, QWORD PTR [g_funcPtrs + 736]
    jmp rax
midiStreamPause ENDP

midiStreamPosition PROC
    mov rax, QWORD PTR [g_funcPtrs + 744]
    jmp rax
midiStreamPosition ENDP

midiStreamProperty PROC
    mov rax, QWORD PTR [g_funcPtrs + 752]
    jmp rax
midiStreamProperty ENDP

midiStreamRestart PROC
    mov rax, QWORD PTR [g_funcPtrs + 760]
    jmp rax
midiStreamRestart ENDP

midiStreamStop PROC
    mov rax, QWORD PTR [g_funcPtrs + 768]
    jmp rax
midiStreamStop ENDP

mixerClose PROC
    mov rax, QWORD PTR [g_funcPtrs + 776]
    jmp rax
mixerClose ENDP

mixerGetControlDetailsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 784]
    jmp rax
mixerGetControlDetailsA ENDP

mixerGetControlDetailsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 792]
    jmp rax
mixerGetControlDetailsW ENDP

mixerGetDevCapsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 800]
    jmp rax
mixerGetDevCapsA ENDP

mixerGetDevCapsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 808]
    jmp rax
mixerGetDevCapsW ENDP

mixerGetID PROC
    mov rax, QWORD PTR [g_funcPtrs + 816]
    jmp rax
mixerGetID ENDP

mixerGetLineControlsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 824]
    jmp rax
mixerGetLineControlsA ENDP

mixerGetLineControlsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 832]
    jmp rax
mixerGetLineControlsW ENDP

mixerGetLineInfoA PROC
    mov rax, QWORD PTR [g_funcPtrs + 840]
    jmp rax
mixerGetLineInfoA ENDP

mixerGetLineInfoW PROC
    mov rax, QWORD PTR [g_funcPtrs + 848]
    jmp rax
mixerGetLineInfoW ENDP

mixerGetNumDevs PROC
    mov rax, QWORD PTR [g_funcPtrs + 856]
    jmp rax
mixerGetNumDevs ENDP

mixerMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 864]
    jmp rax
mixerMessage ENDP

mixerOpen PROC
    mov rax, QWORD PTR [g_funcPtrs + 872]
    jmp rax
mixerOpen ENDP

mixerSetControlDetails PROC
    mov rax, QWORD PTR [g_funcPtrs + 880]
    jmp rax
mixerSetControlDetails ENDP

mmDrvInstall PROC
    mov rax, QWORD PTR [g_funcPtrs + 888]
    jmp rax
mmDrvInstall ENDP

mmGetCurrentTask PROC
    mov rax, QWORD PTR [g_funcPtrs + 896]
    jmp rax
mmGetCurrentTask ENDP

mmTaskBlock PROC
    mov rax, QWORD PTR [g_funcPtrs + 904]
    jmp rax
mmTaskBlock ENDP

mmTaskCreate PROC
    mov rax, QWORD PTR [g_funcPtrs + 912]
    jmp rax
mmTaskCreate ENDP

mmTaskSignal PROC
    mov rax, QWORD PTR [g_funcPtrs + 920]
    jmp rax
mmTaskSignal ENDP

mmTaskYield PROC
    mov rax, QWORD PTR [g_funcPtrs + 928]
    jmp rax
mmTaskYield ENDP

mmioAdvance PROC
    mov rax, QWORD PTR [g_funcPtrs + 936]
    jmp rax
mmioAdvance ENDP

mmioAscend PROC
    mov rax, QWORD PTR [g_funcPtrs + 944]
    jmp rax
mmioAscend ENDP

mmioClose PROC
    mov rax, QWORD PTR [g_funcPtrs + 952]
    jmp rax
mmioClose ENDP

mmioCreateChunk PROC
    mov rax, QWORD PTR [g_funcPtrs + 960]
    jmp rax
mmioCreateChunk ENDP

mmioDescend PROC
    mov rax, QWORD PTR [g_funcPtrs + 968]
    jmp rax
mmioDescend ENDP

mmioFlush PROC
    mov rax, QWORD PTR [g_funcPtrs + 976]
    jmp rax
mmioFlush ENDP

mmioGetInfo PROC
    mov rax, QWORD PTR [g_funcPtrs + 984]
    jmp rax
mmioGetInfo ENDP

mmioInstallIOProcA PROC
    mov rax, QWORD PTR [g_funcPtrs + 992]
    jmp rax
mmioInstallIOProcA ENDP

mmioInstallIOProcW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1000]
    jmp rax
mmioInstallIOProcW ENDP

mmioOpenA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1008]
    jmp rax
mmioOpenA ENDP

mmioOpenW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1016]
    jmp rax
mmioOpenW ENDP

mmioRead PROC
    mov rax, QWORD PTR [g_funcPtrs + 1024]
    jmp rax
mmioRead ENDP

mmioRenameA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1032]
    jmp rax
mmioRenameA ENDP

mmioRenameW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1040]
    jmp rax
mmioRenameW ENDP

mmioSeek PROC
    mov rax, QWORD PTR [g_funcPtrs + 1048]
    jmp rax
mmioSeek ENDP

mmioSendMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 1056]
    jmp rax
mmioSendMessage ENDP

mmioSetBuffer PROC
    mov rax, QWORD PTR [g_funcPtrs + 1064]
    jmp rax
mmioSetBuffer ENDP

mmioSetInfo PROC
    mov rax, QWORD PTR [g_funcPtrs + 1072]
    jmp rax
mmioSetInfo ENDP

mmioStringToFOURCCA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1080]
    jmp rax
mmioStringToFOURCCA ENDP

mmioStringToFOURCCW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1088]
    jmp rax
mmioStringToFOURCCW ENDP

mmioWrite PROC
    mov rax, QWORD PTR [g_funcPtrs + 1096]
    jmp rax
mmioWrite ENDP

mmsystemGetVersion PROC
    mov rax, QWORD PTR [g_funcPtrs + 1104]
    jmp rax
mmsystemGetVersion ENDP

mod32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 1112]
    jmp rax
mod32Message ENDP

mxd32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 1120]
    jmp rax
mxd32Message ENDP

sndPlaySoundA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1128]
    jmp rax
sndPlaySoundA ENDP

sndPlaySoundW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1136]
    jmp rax
sndPlaySoundW ENDP

tid32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 1144]
    jmp rax
tid32Message ENDP

timeBeginPeriod PROC
    mov rax, QWORD PTR [g_funcPtrs + 1152]
    jmp rax
timeBeginPeriod ENDP

timeEndPeriod PROC
    mov rax, QWORD PTR [g_funcPtrs + 1160]
    jmp rax
timeEndPeriod ENDP

timeGetDevCaps PROC
    mov rax, QWORD PTR [g_funcPtrs + 1168]
    jmp rax
timeGetDevCaps ENDP

timeGetSystemTime PROC
    mov rax, QWORD PTR [g_funcPtrs + 1176]
    jmp rax
timeGetSystemTime ENDP

timeGetTime PROC
    mov rax, QWORD PTR [g_funcPtrs + 1184]
    jmp rax
timeGetTime ENDP

timeKillEvent PROC
    mov rax, QWORD PTR [g_funcPtrs + 1192]
    jmp rax
timeKillEvent ENDP

timeSetEvent PROC
    mov rax, QWORD PTR [g_funcPtrs + 1200]
    jmp rax
timeSetEvent ENDP

waveInAddBuffer PROC
    mov rax, QWORD PTR [g_funcPtrs + 1208]
    jmp rax
waveInAddBuffer ENDP

waveInClose PROC
    mov rax, QWORD PTR [g_funcPtrs + 1216]
    jmp rax
waveInClose ENDP

waveInGetDevCapsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1224]
    jmp rax
waveInGetDevCapsA ENDP

waveInGetDevCapsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1232]
    jmp rax
waveInGetDevCapsW ENDP

waveInGetErrorTextA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1240]
    jmp rax
waveInGetErrorTextA ENDP

waveInGetErrorTextW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1248]
    jmp rax
waveInGetErrorTextW ENDP

waveInGetID PROC
    mov rax, QWORD PTR [g_funcPtrs + 1256]
    jmp rax
waveInGetID ENDP

waveInGetNumDevs PROC
    mov rax, QWORD PTR [g_funcPtrs + 1264]
    jmp rax
waveInGetNumDevs ENDP

waveInGetPosition PROC
    mov rax, QWORD PTR [g_funcPtrs + 1272]
    jmp rax
waveInGetPosition ENDP

waveInMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 1280]
    jmp rax
waveInMessage ENDP

waveInOpen PROC
    mov rax, QWORD PTR [g_funcPtrs + 1288]
    jmp rax
waveInOpen ENDP

waveInPrepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 1296]
    jmp rax
waveInPrepareHeader ENDP

waveInReset PROC
    mov rax, QWORD PTR [g_funcPtrs + 1304]
    jmp rax
waveInReset ENDP

waveInStart PROC
    mov rax, QWORD PTR [g_funcPtrs + 1312]
    jmp rax
waveInStart ENDP

waveInStop PROC
    mov rax, QWORD PTR [g_funcPtrs + 1320]
    jmp rax
waveInStop ENDP

waveInUnprepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 1328]
    jmp rax
waveInUnprepareHeader ENDP

waveOutBreakLoop PROC
    mov rax, QWORD PTR [g_funcPtrs + 1336]
    jmp rax
waveOutBreakLoop ENDP

waveOutClose PROC
    mov rax, QWORD PTR [g_funcPtrs + 1344]
    jmp rax
waveOutClose ENDP

waveOutGetDevCapsA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1352]
    jmp rax
waveOutGetDevCapsA ENDP

waveOutGetDevCapsW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1360]
    jmp rax
waveOutGetDevCapsW ENDP

waveOutGetErrorTextA PROC
    mov rax, QWORD PTR [g_funcPtrs + 1368]
    jmp rax
waveOutGetErrorTextA ENDP

waveOutGetErrorTextW PROC
    mov rax, QWORD PTR [g_funcPtrs + 1376]
    jmp rax
waveOutGetErrorTextW ENDP

waveOutGetID PROC
    mov rax, QWORD PTR [g_funcPtrs + 1384]
    jmp rax
waveOutGetID ENDP

waveOutGetNumDevs PROC
    mov rax, QWORD PTR [g_funcPtrs + 1392]
    jmp rax
waveOutGetNumDevs ENDP

waveOutGetPitch PROC
    mov rax, QWORD PTR [g_funcPtrs + 1400]
    jmp rax
waveOutGetPitch ENDP

waveOutGetPlaybackRate PROC
    mov rax, QWORD PTR [g_funcPtrs + 1408]
    jmp rax
waveOutGetPlaybackRate ENDP

waveOutGetPosition PROC
    mov rax, QWORD PTR [g_funcPtrs + 1416]
    jmp rax
waveOutGetPosition ENDP

waveOutGetVolume PROC
    mov rax, QWORD PTR [g_funcPtrs + 1424]
    jmp rax
waveOutGetVolume ENDP

waveOutMessage PROC
    mov rax, QWORD PTR [g_funcPtrs + 1432]
    jmp rax
waveOutMessage ENDP

waveOutOpen PROC
    mov rax, QWORD PTR [g_funcPtrs + 1440]
    jmp rax
waveOutOpen ENDP

waveOutPause PROC
    mov rax, QWORD PTR [g_funcPtrs + 1448]
    jmp rax
waveOutPause ENDP

waveOutPrepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 1456]
    jmp rax
waveOutPrepareHeader ENDP

waveOutReset PROC
    mov rax, QWORD PTR [g_funcPtrs + 1464]
    jmp rax
waveOutReset ENDP

waveOutRestart PROC
    mov rax, QWORD PTR [g_funcPtrs + 1472]
    jmp rax
waveOutRestart ENDP

waveOutSetPitch PROC
    mov rax, QWORD PTR [g_funcPtrs + 1480]
    jmp rax
waveOutSetPitch ENDP

waveOutSetPlaybackRate PROC
    mov rax, QWORD PTR [g_funcPtrs + 1488]
    jmp rax
waveOutSetPlaybackRate ENDP

waveOutSetVolume PROC
    mov rax, QWORD PTR [g_funcPtrs + 1496]
    jmp rax
waveOutSetVolume ENDP

waveOutUnprepareHeader PROC
    mov rax, QWORD PTR [g_funcPtrs + 1504]
    jmp rax
waveOutUnprepareHeader ENDP

waveOutWrite PROC
    mov rax, QWORD PTR [g_funcPtrs + 1512]
    jmp rax
waveOutWrite ENDP

wid32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 1520]
    jmp rax
wid32Message ENDP

wod32Message PROC
    mov rax, QWORD PTR [g_funcPtrs + 1528]
    jmp rax
wod32Message ENDP

END