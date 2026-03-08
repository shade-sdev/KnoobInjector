#include "proxy.h"

#include <windows.h>
#include <fstream>
#include <string>
#include <sstream>
#include <ctime>

extern "C" FARPROC g_funcPtrs[FUNC_COUNT] = {};

static const char* g_funcNames[FUNC_COUNT] = {
    "CloseDriver",                    // ordinal 1
    "DefDriverProc",                  // ordinal 2
    "DriverCallback",                 // ordinal 3
    "DrvGetModuleHandle",             // ordinal 4
    "GetDriverModuleHandle",          // ordinal 5
    "NotifyCallbackData",             // ordinal 6
    "OpenDriver",                     // ordinal 7
    "PlaySound",                      // ordinal 8
    "PlaySoundA",                     // ordinal 9
    "PlaySoundW",                     // ordinal 10
    "SendDriverMessage",              // ordinal 11
    "WOW32DriverCallback",            // ordinal 12
    "WOW32ResolveMultiMediaHandle",   // ordinal 13
    "WOWAppExit",                     // ordinal 14
    "aux32Message",                   // ordinal 15
    "auxGetDevCapsA",                 // ordinal 16
    "auxGetDevCapsW",                 // ordinal 17
    "auxGetNumDevs",                  // ordinal 18
    "auxGetVolume",                   // ordinal 19
    "auxOutMessage",                  // ordinal 20
    "auxSetVolume",                   // ordinal 21
    "joy32Message",                   // ordinal 22
    "joyConfigChanged",               // ordinal 23
    "joyGetDevCapsA",                 // ordinal 24
    "joyGetDevCapsW",                 // ordinal 25
    "joyGetNumDevs",                  // ordinal 26
    "joyGetPos",                      // ordinal 27
    "joyGetPosEx",                    // ordinal 28
    "joyGetThreshold",                // ordinal 29
    "joyReleaseCapture",              // ordinal 30
    "joySetCapture",                  // ordinal 31
    "joySetThreshold",                // ordinal 32
    "mci32Message",                   // ordinal 33
    "mciDriverNotify",                // ordinal 34
    "mciDriverYield",                 // ordinal 35
    "mciExecute",                     // ordinal 36
    "mciFreeCommandResource",         // ordinal 37
    "mciGetCreatorTask",              // ordinal 38
    "mciGetDeviceIDA",                // ordinal 39
    "mciGetDeviceIDFromElementIDA",   // ordinal 40
    "mciGetDeviceIDFromElementIDW",   // ordinal 41
    "mciGetDeviceIDW",                // ordinal 42
    "mciGetDriverData",               // ordinal 43
    "mciGetErrorStringA",             // ordinal 44
    "mciGetErrorStringW",             // ordinal 45
    "mciGetYieldProc",                // ordinal 46
    "mciLoadCommandResource",         // ordinal 47
    "mciSendCommandA",                // ordinal 48
    "mciSendCommandW",                // ordinal 49
    "mciSendStringA",                 // ordinal 50
    "mciSendStringW",                 // ordinal 51
    "mciSetDriverData",               // ordinal 52
    "mciSetYieldProc",                // ordinal 53
    "mid32Message",                   // ordinal 54
    "midiConnect",                    // ordinal 55
    "midiDisconnect",                 // ordinal 56
    "midiInAddBuffer",                // ordinal 57
    "midiInClose",                    // ordinal 58
    "midiInGetDevCapsA",              // ordinal 59
    "midiInGetDevCapsW",              // ordinal 60
    "midiInGetErrorTextA",            // ordinal 61
    "midiInGetErrorTextW",            // ordinal 62
    "midiInGetID",                    // ordinal 63
    "midiInGetNumDevs",               // ordinal 64
    "midiInMessage",                  // ordinal 65
    "midiInOpen",                     // ordinal 66
    "midiInPrepareHeader",            // ordinal 67
    "midiInReset",                    // ordinal 68
    "midiInStart",                    // ordinal 69
    "midiInStop",                     // ordinal 70
    "midiInUnprepareHeader",          // ordinal 71
    "midiOutCacheDrumPatches",        // ordinal 72
    "midiOutCachePatches",            // ordinal 73
    "midiOutClose",                   // ordinal 74
    "midiOutGetDevCapsA",             // ordinal 75
    "midiOutGetDevCapsW",             // ordinal 76
    "midiOutGetErrorTextA",           // ordinal 77
    "midiOutGetErrorTextW",           // ordinal 78
    "midiOutGetID",                   // ordinal 79
    "midiOutGetNumDevs",              // ordinal 80
    "midiOutGetVolume",               // ordinal 81
    "midiOutLongMsg",                 // ordinal 82
    "midiOutMessage",                 // ordinal 83
    "midiOutOpen",                    // ordinal 84
    "midiOutPrepareHeader",           // ordinal 85
    "midiOutReset",                   // ordinal 86
    "midiOutSetVolume",               // ordinal 87
    "midiOutShortMsg",                // ordinal 88
    "midiOutUnprepareHeader",         // ordinal 89
    "midiStreamClose",                // ordinal 90
    "midiStreamOpen",                 // ordinal 91
    "midiStreamOut",                  // ordinal 92
    "midiStreamPause",                // ordinal 93
    "midiStreamPosition",             // ordinal 94
    "midiStreamProperty",             // ordinal 95
    "midiStreamRestart",              // ordinal 96
    "midiStreamStop",                 // ordinal 97
    "mixerClose",                     // ordinal 98
    "mixerGetControlDetailsA",        // ordinal 99
    "mixerGetControlDetailsW",        // ordinal 100
    "mixerGetDevCapsA",               // ordinal 101
    "mixerGetDevCapsW",               // ordinal 102
    "mixerGetID",                     // ordinal 103
    "mixerGetLineControlsA",          // ordinal 104
    "mixerGetLineControlsW",          // ordinal 105
    "mixerGetLineInfoA",              // ordinal 106
    "mixerGetLineInfoW",              // ordinal 107
    "mixerGetNumDevs",                // ordinal 108
    "mixerMessage",                   // ordinal 109
    "mixerOpen",                      // ordinal 110
    "mixerSetControlDetails",         // ordinal 111
    "mmDrvInstall",                   // ordinal 112
    "mmGetCurrentTask",               // ordinal 113
    "mmTaskBlock",                    // ordinal 114
    "mmTaskCreate",                   // ordinal 115
    "mmTaskSignal",                   // ordinal 116
    "mmTaskYield",                    // ordinal 117
    "mmioAdvance",                    // ordinal 118
    "mmioAscend",                     // ordinal 119
    "mmioClose",                      // ordinal 120
    "mmioCreateChunk",                // ordinal 121
    "mmioDescend",                    // ordinal 122
    "mmioFlush",                      // ordinal 123
    "mmioGetInfo",                    // ordinal 124
    "mmioInstallIOProcA",             // ordinal 125
    "mmioInstallIOProcW",             // ordinal 126
    "mmioOpenA",                      // ordinal 127
    "mmioOpenW",                      // ordinal 128
    "mmioRead",                       // ordinal 129
    "mmioRenameA",                    // ordinal 130
    "mmioRenameW",                    // ordinal 131
    "mmioSeek",                       // ordinal 132
    "mmioSendMessage",                // ordinal 133
    "mmioSetBuffer",                  // ordinal 134
    "mmioSetInfo",                    // ordinal 135
    "mmioStringToFOURCCA",            // ordinal 136
    "mmioStringToFOURCCW",            // ordinal 137
    "mmioWrite",                      // ordinal 138
    "mmsystemGetVersion",             // ordinal 139
    "mod32Message",                   // ordinal 140
    "mxd32Message",                   // ordinal 141
    "sndPlaySoundA",                  // ordinal 142
    "sndPlaySoundW",                  // ordinal 143
    "tid32Message",                   // ordinal 144
    "timeBeginPeriod",                // ordinal 145
    "timeEndPeriod",                  // ordinal 146
    "timeGetDevCaps",                 // ordinal 147
    "timeGetSystemTime",              // ordinal 148
    "timeGetTime",                    // ordinal 149
    "timeKillEvent",                  // ordinal 150
    "timeSetEvent",                   // ordinal 151
    "waveInAddBuffer",                // ordinal 152
    "waveInClose",                    // ordinal 153
    "waveInGetDevCapsA",              // ordinal 154
    "waveInGetDevCapsW",              // ordinal 155
    "waveInGetErrorTextA",            // ordinal 156
    "waveInGetErrorTextW",            // ordinal 157
    "waveInGetID",                    // ordinal 158
    "waveInGetNumDevs",               // ordinal 159
    "waveInGetPosition",              // ordinal 160
    "waveInMessage",                  // ordinal 161
    "waveInOpen",                     // ordinal 162
    "waveInPrepareHeader",            // ordinal 163
    "waveInReset",                    // ordinal 164
    "waveInStart",                    // ordinal 165
    "waveInStop",                     // ordinal 166
    "waveInUnprepareHeader",          // ordinal 167
    "waveOutBreakLoop",               // ordinal 168
    "waveOutClose",                   // ordinal 169
    "waveOutGetDevCapsA",             // ordinal 170
    "waveOutGetDevCapsW",             // ordinal 171
    "waveOutGetErrorTextA",           // ordinal 172
    "waveOutGetErrorTextW",           // ordinal 173
    "waveOutGetID",                   // ordinal 174
    "waveOutGetNumDevs",              // ordinal 175
    "waveOutGetPitch",                // ordinal 176
    "waveOutGetPlaybackRate",         // ordinal 177
    "waveOutGetPosition",             // ordinal 178
    "waveOutGetVolume",               // ordinal 179
    "waveOutMessage",                 // ordinal 180
    "waveOutOpen",                    // ordinal 181
    "waveOutPause",                   // ordinal 182
    "waveOutPrepareHeader",           // ordinal 183
    "waveOutReset",                   // ordinal 184
    "waveOutRestart",                 // ordinal 185
    "waveOutSetPitch",                // ordinal 186
    "waveOutSetPlaybackRate",         // ordinal 187
    "waveOutSetVolume",               // ordinal 188
    "waveOutUnprepareHeader",         // ordinal 189
    "waveOutWrite",                   // ordinal 190
    "wid32Message",                   // ordinal 191
    "wod32Message",                   // ordinal 192
};

// -------------------------------------------------------------------------
// Logging
// -------------------------------------------------------------------------
static std::ofstream g_log;

static void Log(const char* level, const char* msg)
{
    if (!g_log.is_open()) return;

    SYSTEMTIME st;
    GetLocalTime(&st);
    char ts[32];
    snprintf(ts, sizeof(ts), "%02d:%02d:%02d.%03d",
             st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);

    g_log << "[" << ts << "] [" << level << "] " << msg << "\n";
    g_log.flush();
}

static void LogInfo(const std::string& msg) { Log("INFO ", msg.c_str()); }
static void LogError(const std::string& msg) { Log("ERROR", msg.c_str()); }

static void NullStub() { /* empty */ }

// -------------------------------------------------------------------------
// Load the real System32\winmm.dll and fill the function pointer table
// -------------------------------------------------------------------------
static bool LoadRealWinmm()
{
    char sysDir[MAX_PATH];
    GetSystemDirectoryA(sysDir, MAX_PATH);

    std::string path = std::string(sysDir) + "\\winmm.dll";
    LogInfo("Loading real winmm from: " + path);

    HMODULE real = LoadLibraryA(path.c_str());
    if (!real)
    {
        LogError("FATAL: Could not load real winmm.dll from System32 (error "
                 + std::to_string(GetLastError()) + ")");
        return false;
    }
    LogInfo("Real winmm.dll loaded successfully");

    for (int i = 0; i < FUNC_COUNT; i++)
    {
        FARPROC fn = GetProcAddress(real, g_funcNames[i]);
        if (fn)
        {
            g_funcPtrs[i] = fn;
        }
        else
        {
            g_funcPtrs[i] = reinterpret_cast<FARPROC>(NullStub);
            LogInfo(std::string("INFO: ") + g_funcNames[i]
                    + " not found in real winmm.dll — mapped to NullStub");
        }
    }

    LogInfo("All 192 function pointers resolved");
    return true;
}

// -------------------------------------------------------------------------
// Read dlllist.txt from the same folder as winmm.dll and LoadLibrary each
// -------------------------------------------------------------------------
static void LoadDllList(HINSTANCE hinstDLL)
{
    char selfPath[MAX_PATH];
    GetModuleFileNameA(hinstDLL, selfPath, MAX_PATH);

    char* lastSlash = strrchr(selfPath, '\\');
    if (!lastSlash)
    {
        LogError("Could not determine DLL folder from path: " + std::string(selfPath));
        return;
    }

    *(lastSlash + 1) = '\0';

    std::string folder(selfPath);
    std::string listPath = folder + "dlllist.txt";

    LogInfo("Looking for dlllist.txt at: " + listPath);

    std::ifstream file(listPath);
    if (!file.is_open())
    {
        LogInfo("dlllist.txt not found — no DLLs will be injected");
        return;
    }

    LogInfo("dlllist.txt found — processing entries");

    std::string line;
    int lineNum = 0;

    while (std::getline(file, line))
    {
        lineNum++;

        if (!line.empty() && line.back() == '\r')
            line.pop_back();

        if (line.empty())
            continue;

        if (line[0] == '#' || line[0] == ';')
            continue;

        LogInfo("Line " + std::to_string(lineNum) + ": attempting to load \"" + line + "\"");

        HMODULE h = LoadLibraryA(line.c_str());

        if (!h)
        {
            std::string fullPath = folder + line;
            h = LoadLibraryA(fullPath.c_str());
            if (h)
            {
                LogInfo("Loaded \"" + line + "\" from DLL folder as \"" + fullPath + "\"");
            }
        }
        else
        {
            LogInfo("Loaded \"" + line + "\" successfully");
        }

        if (!h)
        {
            LogError("Failed to load \"" + line
                     + "\" (error " + std::to_string(GetLastError()) + ")");
        }
    }

    LogInfo("dlllist.txt processing complete (" + std::to_string(lineNum) + " lines read)");
}

// -------------------------------------------------------------------------
// DllMain
// -------------------------------------------------------------------------
BOOL APIENTRY DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID /*lpvReserved*/)
{
    if (fdwReason == DLL_PROCESS_ATTACH)
    {
        DisableThreadLibraryCalls(hinstDLL);

        char selfPath[MAX_PATH];
        GetModuleFileNameA(hinstDLL, selfPath, MAX_PATH);
        char* lastSlash = strrchr(selfPath, '\\');
        std::string logPath;
        if (lastSlash)
        {
            *(lastSlash + 1) = '\0';
            logPath = std::string(selfPath) + "winmm_log.txt";
        }
        else
        {
            logPath = "winmm_log.txt";
        }

        g_log.open(logPath, std::ios::out | std::ios::trunc);
        LogInfo("winmm proxy DLL loaded");

        if (!LoadRealWinmm())
        {
            LogError("Proxy will use NullStub for all functions");
        }

        LoadDllList(hinstDLL);

        LogInfo("DllMain DLL_PROCESS_ATTACH complete");
    }
    else if (fdwReason == DLL_PROCESS_DETACH)
    {
        LogInfo("winmm proxy DLL unloaded");
        g_log.close();
    }

    return TRUE;
}