.class public final Landroid/hardware/hdmi/HdmiControlManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;,
        Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_OSD_MESSAGE:Ljava/lang/String; = "android.hardware.hdmi.action.OSD_MESSAGE"

.field public static final AVR_VOLUME_MUTED:I = 0x65

.field public static final CLEAR_TIMER_STATUS_CEC_DISABLE:I = 0xa2

.field public static final CLEAR_TIMER_STATUS_CHECK_RECORDER_CONNECTION:I = 0xa0

.field public static final CLEAR_TIMER_STATUS_FAIL_TO_CLEAR_SELECTED_SOURCE:I = 0xa1

.field public static final CLEAR_TIMER_STATUS_TIMER_CLEARED:I = 0x80

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_INFO_AVAILABLE:I = 0x2

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_NO_MATCHING:I = 0x1

.field public static final CLEAR_TIMER_STATUS_TIMER_NOT_CLEARED_RECORDING:I = 0x0

.field public static final CONTROL_STATE_CHANGED_REASON_SETTING:I = 0x1

.field public static final CONTROL_STATE_CHANGED_REASON_STANDBY:I = 0x3

.field public static final CONTROL_STATE_CHANGED_REASON_START:I = 0x0

.field public static final CONTROL_STATE_CHANGED_REASON_WAKEUP:I = 0x2

.field public static final DEVICE_EVENT_ADD_DEVICE:I = 0x1

.field public static final DEVICE_EVENT_REMOVE_DEVICE:I = 0x2

.field public static final DEVICE_EVENT_UPDATE_DEVICE:I = 0x3

.field public static final EXTRA_MESSAGE_EXTRA_PARAM1:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "android.hardware.hdmi.extra.MESSAGE_ID"

.field public static final ONE_TOUCH_RECORD_ALREADY_RECORDING:I = 0x12

.field public static final ONE_TOUCH_RECORD_CEC_DISABLED:I = 0x33

.field public static final ONE_TOUCH_RECORD_CHECK_RECORDER_CONNECTION:I = 0x31

.field public static final ONE_TOUCH_RECORD_DISALLOW_TO_COPY:I = 0xd

.field public static final ONE_TOUCH_RECORD_DISALLOW_TO_FUTHER_COPIES:I = 0xe

.field public static final ONE_TOUCH_RECORD_FAIL_TO_RECORD_DISPLAYED_SCREEN:I = 0x32

.field public static final ONE_TOUCH_RECORD_INVALID_EXTERNAL_PHYSICAL_ADDRESS:I = 0xa

.field public static final ONE_TOUCH_RECORD_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x9

.field public static final ONE_TOUCH_RECORD_MEDIA_PROBLEM:I = 0x15

.field public static final ONE_TOUCH_RECORD_MEDIA_PROTECTED:I = 0x13

.field public static final ONE_TOUCH_RECORD_NOT_ENOUGH_SPACE:I = 0x16

.field public static final ONE_TOUCH_RECORD_NO_MEDIA:I = 0x10

.field public static final ONE_TOUCH_RECORD_NO_OR_INSUFFICIENT_CA_ENTITLEMENTS:I = 0xc

.field public static final ONE_TOUCH_RECORD_NO_SOURCE_SIGNAL:I = 0x14

.field public static final ONE_TOUCH_RECORD_OTHER_REASON:I = 0x1f

.field public static final ONE_TOUCH_RECORD_PARENT_LOCK_ON:I = 0x17

.field public static final ONE_TOUCH_RECORD_PLAYING:I = 0x11

.field public static final ONE_TOUCH_RECORD_PREVIOUS_RECORDING_IN_PROGRESS:I = 0x30

.field public static final ONE_TOUCH_RECORD_RECORDING_ALREADY_TERMINATED:I = 0x1b

.field public static final ONE_TOUCH_RECORD_RECORDING_ANALOGUE_SERVICE:I = 0x3

.field public static final ONE_TOUCH_RECORD_RECORDING_CURRENTLY_SELECTED_SOURCE:I = 0x1

.field public static final ONE_TOUCH_RECORD_RECORDING_DIGITAL_SERVICE:I = 0x2

.field public static final ONE_TOUCH_RECORD_RECORDING_EXTERNAL_INPUT:I = 0x4

.field public static final ONE_TOUCH_RECORD_RECORDING_TERMINATED_NORMALLY:I = 0x1a

.field public static final ONE_TOUCH_RECORD_UNABLE_ANALOGUE_SERVICE:I = 0x6

.field public static final ONE_TOUCH_RECORD_UNABLE_DIGITAL_SERVICE:I = 0x5

.field public static final ONE_TOUCH_RECORD_UNABLE_SELECTED_SERVICE:I = 0x7

.field public static final ONE_TOUCH_RECORD_UNSUPPORTED_CA:I = 0xb

.field public static final OSD_MESSAGE_ARC_CONNECTED_INVALID_PORT:I = 0x1

.field public static final OSD_MESSAGE_AVR_VOLUME_CHANGED:I = 0x2

.field public static final POWER_STATUS_ON:I = 0x0

.field public static final POWER_STATUS_STANDBY:I = 0x1

.field public static final POWER_STATUS_TRANSIENT_TO_ON:I = 0x2

.field public static final POWER_STATUS_TRANSIENT_TO_STANDBY:I = 0x3

.field public static final POWER_STATUS_UNKNOWN:I = -0x1

.field public static final RESULT_ALREADY_IN_PROGRESS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_COMMUNICATION_FAILED:I = 0x7

.field public static final RESULT_EXCEPTION:I = 0x5

.field public static final RESULT_INCORRECT_MODE:I = 0x6

.field public static final RESULT_SOURCE_NOT_AVAILABLE:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_TARGET_NOT_AVAILABLE:I = 0x3

.field public static final RESULT_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlManager"

.field public static final TIMER_RECORDING_RESULT_EXTRA_CEC_DISABLED:I = 0x3

.field public static final TIMER_RECORDING_RESULT_EXTRA_CHECK_RECORDER_CONNECTION:I = 0x1

.field public static final TIMER_RECORDING_RESULT_EXTRA_FAIL_TO_RECORD_SELECTED_SOURCE:I = 0x2

.field public static final TIMER_RECORDING_RESULT_EXTRA_NO_ERROR:I = 0x0

.field public static final TIMER_RECORDING_TYPE_ANALOGUE:I = 0x2

.field public static final TIMER_RECORDING_TYPE_DIGITAL:I = 0x1

.field public static final TIMER_RECORDING_TYPE_EXTERNAL:I = 0x3

.field public static final TIMER_STATUS_MEDIA_INFO_NOT_PRESENT:I = 0x2

.field public static final TIMER_STATUS_MEDIA_INFO_PRESENT_NOT_PROTECTED:I = 0x0

.field public static final TIMER_STATUS_MEDIA_INFO_PRESENT_PROTECTED:I = 0x1

.field public static final TIMER_STATUS_NOT_PROGRAMMED_CA_NOT_SUPPORTED:I = 0x6

.field public static final TIMER_STATUS_NOT_PROGRAMMED_CLOCK_FAILURE:I = 0xa

.field public static final TIMER_STATUS_NOT_PROGRAMMED_DATE_OUT_OF_RANGE:I = 0x2

.field public static final TIMER_STATUS_NOT_PROGRAMMED_DUPLICATED:I = 0xe

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PHYSICAL_NUMBER:I = 0x5

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_EXTERNAL_PLUG_NUMBER:I = 0x4

.field public static final TIMER_STATUS_NOT_PROGRAMMED_INVALID_SEQUENCE:I = 0x3

.field public static final TIMER_STATUS_NOT_PROGRAMMED_NO_CA_ENTITLEMENTS:I = 0x7

.field public static final TIMER_STATUS_NOT_PROGRAMMED_NO_FREE_TIME:I = 0x1

.field public static final TIMER_STATUS_NOT_PROGRAMMED_PARENTAL_LOCK_ON:I = 0x9

.field public static final TIMER_STATUS_NOT_PROGRAMMED_UNSUPPORTED_RESOLUTION:I = 0x8

.field public static final TIMER_STATUS_PROGRAMMED_INFO_ENOUGH_SPACE:I = 0x8

.field public static final TIMER_STATUS_PROGRAMMED_INFO_MIGHT_NOT_ENOUGH_SPACE:I = 0xb

.field public static final TIMER_STATUS_PROGRAMMED_INFO_NOT_ENOUGH_SPACE:I = 0x9

.field public static final TIMER_STATUS_PROGRAMMED_INFO_NO_MEDIA_INFO:I = 0xa


# instance fields
.field private final mHasPlaybackDevice:Z

.field private final mHasTvDevice:Z

.field private final mHotplugEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;",
            "Landroid/hardware/hdmi/IHdmiHotplugEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/hardware/hdmi/IHdmiControlService;


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlService;->getSupportedTypes()[I

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    const/4 v0, 0x0

    .line 28
    invoke-static {p1, v0}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-static {p1, v0}, Landroid/hardware/hdmi/HdmiControlManager;->hasDeviceType([II)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    .line 40
    .line 41
    return-void
.end method

.method private getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .locals 1

    new-instance v0, Landroid/hardware/hdmi/HdmiControlManager$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$1;-><init>(Landroid/hardware/hdmi/HdmiControlManager;Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V

    return-object v0
.end method

.method private static hasDeviceType([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public addHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    const-string v1, "HdmiControlManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "HdmiControlService is not available"

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string/jumbo p1, "listener is already registered"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager;->getHotplugEventListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    throw p1
.end method

.method public getClient(I)Landroid/hardware/hdmi/HdmiClient;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    if-eqz p1, :cond_3

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq p1, v2, :cond_1

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_1
    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasPlaybackDevice:Z

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance v1, Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Landroid/hardware/hdmi/HdmiPlaybackClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-object v1

    .line 23
    :cond_3
    iget-boolean p1, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHasTvDevice:Z

    .line 24
    .line 25
    if-eqz p1, :cond_4

    .line 26
    .line 27
    new-instance v1, Landroid/hardware/hdmi/HdmiTvClient;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    .line 30
    .line 31
    .line 32
    :cond_4
    return-object v1
.end method

.method public getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPlaybackClient;

    return-object v0
.end method

.method public getTvClient()Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/HdmiControlManager;->getClient(I)Landroid/hardware/hdmi/HdmiClient;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/HdmiControlManager$HotplugEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    const-string v1, "HdmiControlManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "HdmiControlService is not available"

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mHotplugEventListeners:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const-string/jumbo p1, "tried to remove not-registered listener"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    throw p1
.end method

.method public setStandbyMode(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setStandbyMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    throw p1
.end method
