.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$PowerControllerInternalCallback;,
        Landroid/os/PowerManagerInternal$WakeLockCallback;,
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# static fields
.field public static final INTERACTION_DURATION_MASK:I = 0xffff

.field public static final INTERACTION_SUBTYPE_MASK:I = 0xff0000

.field public static final INTERACTION_SUBTYPE_SHIFT:I = 0x10

.field public static final POWER_HINT_FLING_1:I = 0x7ffe0000

.field public static final POWER_HINT_SUBTYPE_BUTTON:I = 0x40000

.field public static final POWER_HINT_SUBTYPE_FLING:I = 0x30000

.field public static final POWER_HINT_SUBTYPE_LAUNCH:I = 0x20000

.field public static final POWER_HINT_SUBTYPE_OTHER:I = 0x0

.field public static final POWER_HINT_SUBTYPE_TOUCH:I = 0x10000

.field public static final POWER_HINT_VENDOR:I = 0x10

.field public static final POWER_HINT_VENDOR_CAMERA_HIGH_PERFORMANCE:I = 0xc

.field public static final POWER_HINT_VENDOR_CAMERA_LOW_POWER:I = 0xe

.field public static final POWER_HINT_VENDOR_CAMERA_PERFORMANCE:I = 0x9

.field public static final POWER_HINT_VENDOR_DDR:I = 0x1

.field public static final POWER_HINT_VENDOR_MODE_LOW_POWER:I = 0x7fff0001

.field public static final POWER_HINT_VENDOR_MODE_NORMAL:I = 0x7fff0000

.field public static final POWER_HINT_VENDOR_MODE_PERFORMANCE:I = 0x7fff0004

.field public static final POWER_HINT_VENDOR_MODE_POWER_SAVE:I = 0x7fff0002

.field public static final POWER_HINT_VENDOR_MODE_ULTRA_POWER_SAVE:I = 0x7fff0003

.field public static final POWER_HINT_VENDOR_MP4_PLAYBACK:I = 0x5

.field public static final POWER_HINT_VENDOR_PERFORMANCE:I = 0xd

.field public static final POWER_HINT_VENDOR_PERFORMANCE_CTS:I = 0xb

.field public static final POWER_HINT_VENDOR_PERFORMANCE_GTS:I = 0xa

.field public static final POWER_HINT_VENDOR_PERFORMANCE_MAX:I = 0x12

.field public static final POWER_HINT_VENDOR_RADIO_CALL:I = 0xf

.field public static final POWER_HINT_VENDOR_SCREENOFF_BT_DOWNLOAD:I = 0x10

.field public static final POWER_HINT_VENDOR_SCREENOF_MP3_PLAYBACK:I = 0x7

.field public static final POWER_HINT_VENDOR_SUBTYPE_MASK:I = 0xff

.field public static final POWER_HINT_VENDOR_SUBTYPE_MAX:I = 0x28

.field public static final POWER_HINT_VENDOR_VEDIO_1080P:I = 0x8

.field public static final POWER_HINT_VENDOR_VIDEO_60FPS:I = 0x4

.field public static final POWER_HINT_VENDOR_VIDEO_SYNC:I = 0x3

.field public static final WAKEFULNESS_ASLEEP:I = 0x0

.field public static final WAKEFULNESS_AWAKE:I = 0x1

.field public static final WAKEFULNESS_DOZING:I = 0x3

.field public static final WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteractive(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static wakefulnessToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Dozing"

    return-object p0

    :cond_1
    const-string p0, "Dreaming"

    return-object p0

    :cond_2
    const-string p0, "Awake"

    return-object p0

    :cond_3
    const-string p0, "Asleep"

    return-object p0
.end method


# virtual methods
.method public abstract checkWakeLock(Landroid/os/PowerManagerInternal$WakeLockCallback;J)V
.end method

.method public abstract finishUidChanges()V
.end method

.method public abstract getLowPowerState(I)Landroid/os/PowerSaveState;
.end method

.method public abstract getSceneIdByName(Ljava/lang/String;)I
.end method

.method public abstract powerHint(II)V
.end method

.method public abstract registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract registerPowerControllerInternalCallback(Landroid/os/PowerManagerInternal$PowerControllerInternalCallback;)V
.end method

.method public abstract setDeviceIdleMode(Z)Z
.end method

.method public abstract setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract setDeviceIdleWhitelist([I)V
.end method

.method public abstract setDozeOverrideFromDreamManager(II)V
.end method

.method public abstract setLightDeviceIdleMode(Z)Z
.end method

.method public abstract setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
.end method

.method public abstract setScreenBrightnessOverrideFromWindowManager(I)V
.end method

.method public abstract setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract setUserInactiveOverrideFromWindowManager()V
.end method

.method public abstract startUidChanges()V
.end method

.method public abstract uidActive(I)V
.end method

.method public abstract uidGone(I)V
.end method

.method public abstract uidIdle(I)V
.end method

.method public abstract updateUidProcState(II)V
.end method

.method public abstract updateUidProcWakeLockDisabledState(IZ)V
.end method

.method public abstract updateWakeLockDisabledThreshold(J)V
.end method
