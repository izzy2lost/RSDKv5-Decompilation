#ifndef DUMMY_CORE_HPP
#define DUMMY_CORE_HPP

#include "UserCore.hpp"

#if RETRO_REV02

struct DummyCore : UserCore {
    DummyCore();

    void StageLoad();
    bool32 CheckFocusLost();
    int32 GetUserLanguage();
    int32 GetUserRegion();
    int32 GetUserPlatform();
    bool32 GetConfirmButtonFlip();
    void LaunchManual();
    void ExitGame();
    int32 GetDefaultGamepadType();
    bool32 IsOverlayEnabled(uint32 overlay);
#if RETRO_VER_EGS
    bool32 CanShowExtensionOverlay(int32 overlay);
    bool32 ShowExtensionOverlay(int32 overlay);
    bool32 CanShowAltExtensionOverlay(int32 overlay);
    bool32 ShowAltExtensionOverlay(int32 overlay);
    int32 GetConnectingStringID();
    bool32 ShowLimitedVideoOptions(int32 id);
    void InitInputDevices();
#else
    bool32 ShowExtensionOverlay(int32 overlay);
#endif
};

extern DummyCore *dummyCore;

DummyCore *InitDummyCore();

uint32 GetAPIValueID(const char *identifier, int32 charIndex);
int32 GetAPIValue(uint32 id);

#endif // RETRO_REV02

#endif // DUMMY_CORE_HPP
