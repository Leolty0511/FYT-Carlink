.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$LoadSoundEffectReply;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;,
        Landroid/media/AudioService$StreamVolumeCommand;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final DEBUG_CERTS:Z = false

.field public static final DEBUG_RC:Z = false

.field public static final DEBUG_VOL:Z = false

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x1388

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MAX_STREAM_VOLUME:[I

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEAM_VOLUME_OPS:[I

.field public static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final SAFE_MEDIA_VOLUME_ACTIVE:I

.field private final SAFE_MEDIA_VOLUME_DISABLED:I

.field private final SAFE_MEDIA_VOLUME_INACTIVE:I

.field private final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_NAMES:[Ljava/lang/String;

.field private final STREAM_VOLUME_ALIAS:[I

.field private final STREAM_VOLUME_ALIAS_NON_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field public mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field public final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field public final mFixedVolumeDevices:I

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private final mHasVibrator:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private final mMediaFocusControl:Landroid/media/MediaFocusControl;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field public final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private final mVoiceCapable:Z

.field private mVolumeControlStream:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    .line 4
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/AudioService;->mMode:I

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    fill-array-data v2, :array_0

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    const/16 v2, 0xa

    new-array v3, v2, [I

    .line 6
    fill-array-data v3, :array_1

    iput-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    new-array v3, v2, [I

    .line 7
    fill-array-data v3, :array_2

    iput-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    const-string v4, "STREAM_VOICE_CALL"

    const-string v5, "STREAM_SYSTEM"

    const-string v6, "STREAM_RING"

    const-string v7, "STREAM_MUSIC"

    const-string v8, "STREAM_ALARM"

    const-string v9, "STREAM_NOTIFICATION"

    const-string v10, "STREAM_BLUETOOTH_SCO"

    const-string v11, "STREAM_SYSTEM_ENFORCED"

    const-string v12, "STREAM_DTMF"

    const-string v13, "STREAM_TTS"

    .line 8
    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 9
    new-instance v3, Landroid/media/AudioService$1;

    invoke-direct {v3, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v3, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 10
    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 11
    new-instance v4, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v4, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 15
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 16
    iput v0, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    const/4 v6, -0x1

    .line 17
    iput v6, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 18
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 19
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 20
    iput v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 21
    iput v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 22
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 23
    new-instance v5, Landroid/media/AudioRoutesInfo;

    invoke-direct {v5}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 24
    new-instance v5, Landroid/os/RemoteCallbackList;

    invoke-direct {v5}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    const/16 v5, 0x7000

    .line 25
    iput v5, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    const/4 v5, 0x1

    .line 26
    iput-boolean v5, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 27
    iput v0, p0, Landroid/media/AudioService;->mDockState:I

    .line 28
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 29
    iput-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 30
    new-instance v6, Landroid/media/AudioService$2;

    invoke-direct {v6, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v6, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v6, 0x7f8c

    .line 31
    iput v6, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 32
    iput v0, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I

    .line 33
    iput v5, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_DISABLED:I

    .line 34
    iput v1, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_INACTIVE:I

    const/4 v1, 0x3

    .line 35
    iput v1, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_ACTIVE:I

    .line 36
    iput v0, p0, Landroid/media/AudioService;->mMcc:I

    const/16 v1, 0xc

    .line 37
    iput v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeDevices:I

    .line 38
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "appops"

    .line 40
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    iput-object v6, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    const-string v6, "power"

    .line 42
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const-string v7, "handleAudioEvent"

    .line 43
    invoke-virtual {v6, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v5, "vibrator"

    .line 44
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    if-nez v5, :cond_0

    move v5, v0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    :goto_0
    iput-boolean v5, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 46
    sget-object v5, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v6, v5, v0

    const-string/jumbo v7, "ro.config.vc_call_vol_steps"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    .line 48
    new-instance v5, Landroid/view/VolumePanel;

    invoke-direct {v5, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 49
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 50
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 51
    new-instance v5, Landroid/media/MediaFocusControl;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-direct {v5, v6, p1, v7, p0}, Landroid/media/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/VolumeController;Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 52
    invoke-static {v3}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1110052

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 54
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v5, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 55
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eqz v3, :cond_1

    const/16 v3, 0xb

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v0

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 56
    new-instance v3, Ljava/lang/Integer;

    const-string v5, "audio_safe_volume_state"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0044

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    .line 59
    invoke-direct {p0, v0}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 60
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 61
    new-instance v1, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v1, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v1, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 62
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 63
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    .line 64
    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 65
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 66
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DOCK_EVENT"

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "ro.audio.monitorOrientation"

    .line 76
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    const-string v3, "AudioService"

    if-eqz v2, :cond_2

    const-string v2, "monitoring device orientation"

    .line 77
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    :cond_2
    const-string/jumbo v2, "ro.audio.monitorRotation"

    .line 79
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "window"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitoring device rotation, initial="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioService;->mDeviceRotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 83
    :cond_3
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 85
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    return-void

    :array_0
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3
        0x2
        0x3
        0x4
        0x2
        0x6
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public static synthetic access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public static synthetic access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$1100(Landroid/media/AudioService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/media/AudioService;)Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$1202(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method public static synthetic access$1300(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1400(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method public static synthetic access$1402(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method public static synthetic access$1500(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p0
.end method

.method public static synthetic access$1502(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method public static synthetic access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method public static synthetic access$2100(Landroid/media/AudioService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method public static synthetic access$2200(Landroid/media/AudioService;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p0
.end method

.method public static synthetic access$2202(Landroid/media/AudioService;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method public static synthetic access$2300(Landroid/media/AudioService;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return p0
.end method

.method public static synthetic access$2302(Landroid/media/AudioService;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return p1
.end method

.method public static synthetic access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method public static synthetic access$2402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method public static synthetic access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static synthetic access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method public static synthetic access$2600(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2700(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$2800(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method public static synthetic access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method public static synthetic access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$3000(Landroid/media/AudioService;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$3100(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method public static synthetic access$3200(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3300()[I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method public static synthetic access$3400(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    return p0
.end method

.method public static synthetic access$3500(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static synthetic access$3700(Landroid/media/AudioService;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object p0
.end method

.method public static synthetic access$3800(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    return p0
.end method

.method public static synthetic access$3900(Landroid/media/AudioService;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$4000(Landroid/media/AudioService;III)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p0

    return p0
.end method

.method public static synthetic access$4100(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object p0
.end method

.method public static synthetic access$4500(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p0
.end method

.method public static synthetic access$4502(Landroid/media/AudioService;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method public static synthetic access$4600(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method public static synthetic access$4700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p0
.end method

.method public static synthetic access$4702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method public static synthetic access$4800()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$4900(Landroid/media/AudioService;)[[I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object p0
.end method

.method public static synthetic access$5000()I
    .locals 1

    .line 1
    sget v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method public static synthetic access$5200()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    return-void
.end method

.method public static synthetic access$5300(Landroid/media/AudioService;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/AudioService;->mMode:I

    return p0
.end method

.method public static synthetic access$5400(Landroid/media/AudioService;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return p0
.end method

.method public static synthetic access$5600(Landroid/media/AudioService;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method public static synthetic access$5700(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method public static synthetic access$5800(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    return p0
.end method

.method public static synthetic access$5900(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method public static synthetic access$600(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6000(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    return p0
.end method

.method public static synthetic access$6100(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    return-void
.end method

.method public static synthetic access$6200(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6300(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return p0
.end method

.method public static synthetic access$6400(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$6500(Landroid/media/AudioService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    return p0
.end method

.method public static synthetic access$6600(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method public static synthetic access$6700(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$6800(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static synthetic access$6900(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public static synthetic access$700(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p0
.end method

.method public static synthetic access$7000(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckMusicActive()V

    return-void
.end method

.method public static synthetic access$702(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method public static synthetic access$7100(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method public static synthetic access$7200(Landroid/media/AudioService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onConfigureSafeVolume(Z)V

    return-void
.end method

.method public static synthetic access$7300(Landroid/media/AudioService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method public static synthetic access$7400(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static synthetic access$7500(Landroid/media/AudioService;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/media/AudioService;->mDockState:I

    return p0
.end method

.method public static synthetic access$7502(Landroid/media/AudioService;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/AudioService;->mDockState:I

    return p1
.end method

.method public static synthetic access$7600(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$7700(Landroid/media/AudioService;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic access$7802(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method public static synthetic access$7900(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$8002(Landroid/media/AudioService;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method public static synthetic access$802(Landroid/media/AudioService;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method public static synthetic access$8100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method public static synthetic access$8200(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$8300(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    return-object p0
.end method

.method public static synthetic access$8400(Landroid/media/AudioService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastRingerMode(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result p1

    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v3, v2, v1

    if-eq v1, v3, :cond_0

    .line 3
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v3, v1

    aget v2, v2, v1

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 4
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkForRingerModeChange(III)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const-string v4, "AudioService"

    const/4 v5, -0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne p2, v5, :cond_3

    .line 3
    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v4, :cond_1

    if-gt p3, p1, :cond_3

    mul-int/2addr p3, v2

    if-ge p1, p3, :cond_3

    move v0, v3

    move v1, v0

    goto :goto_1

    :cond_1
    if-ge p1, p3, :cond_3

    .line 4
    iget p1, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq p1, v5, :cond_3

    move v0, v1

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean p1, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez p1, :cond_4

    const-string p1, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    .line 6
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_4
    if-ne p2, v5, :cond_5

    .line 7
    iget p1, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq p1, v5, :cond_8

    move v0, v1

    goto :goto_1

    :cond_5
    if-ne p2, v3, :cond_8

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    if-ne p2, v3, :cond_8

    .line 8
    iget-boolean p1, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz p1, :cond_6

    move v0, v3

    .line 9
    :cond_8
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 10
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    return v1
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget p1, v1, p1

    if-ne p1, v2, :cond_0

    and-int/lit8 p1, p3, 0xc

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le p2, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkScoAudioState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget v2, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 10

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 1
    iget p2, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3
    iget v4, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    or-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-ne v2, p1, :cond_2

    .line 4
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    move v1, v0

    .line 5
    :cond_2
    iget-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 2
    new-array v1, v0, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    return-void
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 3
    iget v1, p0, Landroid/media/AudioService;->mScoAudioState:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    .line 6
    iget-object v4, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    .line 9
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iput v2, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 11
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private doSetMasterVolume(FI)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 4
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6
    :cond_0
    invoke-direct {p0, p2, v0, v1}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    :cond_1
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "\nRinger mode: "

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "- ringer mode affected streams = 0x"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "- ringer mode muted streams = 0x"

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "\nStream volumes (device: index)"

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    const-string v2, ""

    .line 5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "\n- mute affected streams = 0x"

    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enforceSafeMediaVolume()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v9, v2, 0x1

    const/4 v3, 0x1

    shl-int v10, v3, v2

    and-int v2, v10, v1

    if-nez v2, :cond_0

    :goto_1
    move v2, v9

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v10}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 3
    iget v3, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v2, v3, :cond_1

    .line 4
    invoke-virtual {v0, v3, v10}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 5
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    not-int v2, v10

    and-int/2addr v1, v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidRingerMode(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidSteps(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findVolumeDelta(II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, p1, v1

    .line 2
    array-length p1, p1

    sub-int/2addr p1, v1

    :goto_0
    if-le p1, v1, :cond_6

    .line 3
    iget-object v2, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v3, p1, -0x1

    aget v3, v2, v3

    if-lt p2, v3, :cond_1

    .line 4
    aget p1, v2, p1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    if-nez p2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object p1, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    .line 6
    aget p1, p1, v2

    neg-int p1, p1

    const/4 v2, 0x2

    :goto_1
    if-ge v2, v0, :cond_5

    .line 7
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v4, v3, v2

    if-gt p2, v4, :cond_4

    sub-int/2addr v2, v1

    .line 8
    aget p1, v3, v2

    neg-int v0, p1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_5
    :goto_2
    move v0, p1

    :cond_6
    :goto_3
    return v0
.end method

.method private getActiveStreamType(I)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    const/16 v1, -0xc8

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/high16 v4, -0x80000000

    const/16 v5, 0x1388

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v0, :cond_6

    .line 2
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result p1

    if-ne p1, v7, :cond_0

    return v2

    :cond_0
    return v6

    :cond_1
    if-ne p1, v4, :cond_4

    .line 4
    invoke-direct {p0, v5}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v7

    .line 5
    :cond_2
    iget-object p1, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {p1, v7}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v3

    .line 6
    :cond_4
    invoke-direct {p0, v6}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v7

    :cond_5
    return p1

    .line 7
    :cond_6
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result p1

    if-ne p1, v7, :cond_7

    return v2

    :cond_7
    return v6

    :cond_8
    const/4 v0, 0x5

    .line 9
    invoke-static {v0, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v3, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    if-ne p1, v4, :cond_c

    .line 10
    invoke-direct {p0, v5}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result p1

    if-eqz p1, :cond_a

    return v7

    .line 11
    :cond_a
    iget-object p1, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {p1, v7}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    return v7

    :cond_c
    return p1

    :cond_d
    :goto_0
    return v0
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    const/16 v1, 0xbb8

    :cond_1
    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return v0
.end method

.method private getDeviceForStream(I)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0x380

    :cond_1
    :goto_0
    return p1
.end method

.method public static getMaxStreamVolume(I)I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget p0, v0, p0

    return p0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ScoClient;

    .line 4
    invoke-virtual {v1}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 5
    monitor-exit v0

    return-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    new-instance v1, Landroid/media/AudioService$ScoClient;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    .line 7
    iget-object p1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x3

    shl-int v1, v0, p1

    not-int v1, v1

    and-int/2addr p0, v1

    and-int/2addr p2, v0

    shl-int p1, p2, p1

    or-int/2addr p0, p1

    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget-boolean v2, v1, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v2, :cond_0

    .line 3
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 4
    iget v3, v1, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v2, v3, :cond_0

    .line 5
    iput v2, v1, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 6
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 7
    :cond_0
    iget-boolean v2, v1, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "window"

    move-object/from16 v3, p1

    .line 8
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 9
    iget v3, v1, Landroid/media/AudioService;->mDeviceRotation:I

    if-eq v2, v3, :cond_1

    .line 10
    iput v2, v1, Landroid/media/AudioService;->mDeviceRotation:I

    .line 11
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 12
    :cond_1
    iget-object v4, v1, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 13
    iget-object v2, v1, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 14
    iget-object v3, v1, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object v4, v1, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object v5, v1, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v2, v5, :cond_4

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 18
    iget-object v5, v1, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v7, v5, v6

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v7}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 20
    iget v5, v1, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v1, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    .line 21
    aget-object v5, v5, v8

    invoke-virtual {v7, v5}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 22
    iget v5, v1, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v1, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 23
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    const/4 v7, 0x0

    invoke-direct {v1, v5, v7}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 24
    iget-object v8, v1, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v9, 0x8

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-eqz v2, :cond_3

    const/16 v7, 0xb

    :cond_3
    move v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 25
    iget-object v15, v1, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v16, 0xa

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v2, v1, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v20, v2, v6

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 26
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :try_start_4
    iget-object v2, v1, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/VolumePanel;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 29
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 30
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "AudioService"

    const-string v3, "Error handling configuration change: "

    .line 31
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, v2, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4
    iget-object p1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0

    return v3

    :cond_2
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 6
    invoke-static {p2, v3, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 7
    iget-object p1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v0

    return v3

    .line 9
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isInCommunication()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "phone"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lr/d$a;->J2(Landroid/os/IBinder;)Lr/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lr/d;->q()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AudioService"

    const-string v3, "Couldn\'t connect to phone service"

    .line 4
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .line 1
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "Effect_Tick.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v2, v1

    aput v0, v3, v0

    .line 3
    aget-object v2, v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 11

    const-string v0, "AudioService"

    .line 1
    sget-object v1, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssetDefaults()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10f0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "audio_assets"

    .line 4
    invoke-static {v2, v3}, Lu/n;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v3, "version"

    .line 5
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    :cond_1
    invoke-static {v2}, Lu/n;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const-string v5, "group"

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "name"

    .line 10
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "touch_sounds"

    .line 11
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_5

    .line 12
    invoke-static {v2}, Lu/n;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v6, "asset"

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "id"

    .line 15
    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    .line 16
    invoke-interface {v2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    const-class v7, Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 18
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :try_start_3
    sget-object v7, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 21
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    iget-object v6, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v6, v5

    aput v8, v5, v4

    goto :goto_0

    .line 23
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid touch sound ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_1
    :try_start_4
    const-string v3, "I/O exception reading touch sound assets"

    .line 24
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_6

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_2
    const-string v3, "XML parser exception reading touch sound assets"

    .line 25
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_6

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_3
    const-string v3, "audio assets file not found"

    .line 26
    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_6

    .line 27
    :cond_5
    :goto_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v7, v0, v1

    .line 2
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x80

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    const/16 v1, 0x80

    .line 4
    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    const-string v0, "A2dpSuspended=false"

    .line 5
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 3

    const-string v0, "A2dpSuspended=true"

    .line 1
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x80

    .line 4
    invoke-static {v0, v1, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5
    iget-object p1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    const-string v2, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 6
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    :cond_0
    return-void
.end method

.method private onCheckMusicActive()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 3
    invoke-direct {p0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    and-int/lit8 v3, v2, 0xc

    if-eqz v3, :cond_0

    .line 4
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0xea60

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v2, v1, :cond_0

    .line 7
    iget v1, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v2, 0xea60

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v2, 0x44aa200

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, v1}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 9
    iput v3, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onConfigureSafeVolume(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 3
    iget v2, p0, Landroid/media/AudioService;->mMcc:I

    if-ne v2, v1, :cond_0

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e0044

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 5
    iget-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1110050

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    :cond_1
    move v7, v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    move v7, v3

    .line 10
    :goto_0
    iput v1, p0, Landroid/media/AudioService;->mMcc:I

    .line 11
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x12

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    .line 3
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz v2, :cond_6

    if-eq p2, v3, :cond_6

    .line 5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 6
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 8
    :cond_4
    :goto_1
    iget-object p1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    iget-object p2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, p2, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 10
    iput-object v0, p2, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 11
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 12
    :cond_5
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    :cond_6
    if-nez v2, :cond_a

    if-ne p2, v3, :cond_a

    .line 13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 14
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 15
    iput-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 18
    iget-object p2, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 19
    :cond_8
    :goto_2
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :try_start_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 23
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 24
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 25
    :cond_9
    monitor-exit p2

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 26
    :cond_a
    :goto_3
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method private onSetStreamVolume(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p4, v1}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-nez p3, :cond_0

    .line 2
    iget-object p3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget p1, p3, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result p3

    if-ne p1, p3, :cond_2

    :cond_0
    if-nez p2, :cond_1

    .line 3
    iget-boolean p4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 4
    :cond_1
    invoke-virtual {p0, p4}, Landroid/media/AudioService;->setRingerMode(I)V

    :cond_2
    return-void
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez p2, :cond_1

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    and-int/lit16 v4, p1, 0x6000

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-ne p2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eqz v4, :cond_4

    move-object v6, p3

    goto :goto_3

    :cond_4
    const-string v6, ""

    .line 3
    :goto_3
    invoke-direct {p0, v3, p1, v6}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    if-eqz p2, :cond_7

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_6

    .line 4
    :cond_5
    invoke-virtual {p0, v5}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    :cond_6
    and-int/lit8 v1, p1, 0xc

    if-eqz v1, :cond_7

    .line 5
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0xea60

    invoke-static/range {v5 .. v11}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_7
    if-nez v4, :cond_8

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 7
    :cond_8
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-object v2, p0

    .line 2
    iget-object v3, v2, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    .line 4
    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 2
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v0, :cond_4

    .line 3
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    if-eqz p1, :cond_0

    .line 4
    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    monitor-enter v4

    .line 6
    :try_start_0
    invoke-virtual {v4}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 7
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3

    .line 8
    :cond_2
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_3

    .line 9
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1802(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 10
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v6, v1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_3
    monitor-exit v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result p1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 13
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 14
    iget-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter p1

    .line 15
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 16
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 17
    :cond_5
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 9

    const-string v0, "dock_audio_media_enabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    iget p1, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_1

    .line 3
    :cond_1
    iget p1, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 4
    :goto_1
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    move v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private readPersistedSettings()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mode_ringer"

    const/4 v2, 0x2

    .line 2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3
    invoke-static {v1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 4
    iget-boolean v6, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v6, :cond_1

    move v3, v5

    :cond_1
    if-eq v3, v1, :cond_2

    const-string v1, "mode_ringer"

    .line 5
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6
    :cond_2
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_3

    move v3, v2

    .line 7
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 9
    iget-boolean v6, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    invoke-static {v5, v4, v6}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 10
    iget-boolean v7, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    invoke-static {v6, v5, v2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v2

    iput v2, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 11
    invoke-virtual {p0}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    .line 12
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "mute_streams_affected"

    const/16 v2, 0xe

    const/4 v6, -0x2

    .line 14
    invoke-static {v0, v1, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    const-string/jumbo v1, "volume_master_mute"

    .line 15
    invoke-static {v0, v1, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_6

    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v5

    .line 16
    :goto_3
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    move v0, v5

    .line 18
    :cond_7
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 19
    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 20
    invoke-direct {p0, v3}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 21
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 22
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 23
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->restoreMediaButtonReceiver()V

    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private rescaleIndex(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p3, v0, p3

    invoke-virtual {p3}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p3

    mul-int/2addr p1, p3

    iget-object p3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iget-object p3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p2, p3, p2

    invoke-virtual {p2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    div-int/2addr p1, p2

    return p1
.end method

.method private resetBluetoothSco()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v1, v1}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 3
    iput v1, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 4
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restoreMasterVolume()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x2

    const-string/jumbo v3, "volume_master"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 5
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    :cond_1
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "state"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "name"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x40000000    # 2.0f

    .line 4
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    const-string p1, "android.intent.action.HEADSET_PLUG"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "microphone"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p3, 0x2

    const-string p1, "android.intent.action.HEADSET_PLUG"

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "microphone"

    .line 8
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const/16 p3, 0x800

    if-ne p1, p3, :cond_2

    const-string p1, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    move p3, v3

    goto :goto_1

    :cond_2
    const/16 p3, 0x1000

    if-ne p1, p3, :cond_3

    const-string p1, "android.intent.action.DIGITAL_AUDIO_DOCK_PLUG"

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/16 p3, 0x400

    if-ne p1, p3, :cond_4

    const-string p1, "android.intent.action.HDMI_AUDIO_PLUG"

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move p3, v1

    goto :goto_1

    :cond_4
    move p3, v2

    .line 12
    :goto_1
    iget-object p1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter p1

    if-eqz p3, :cond_6

    .line 13
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eqz p2, :cond_5

    or-int p2, v2, p3

    goto :goto_2

    :cond_5
    not-int p2, p3

    and-int/2addr p2, v2

    :goto_2
    if-eq p2, v2, :cond_6

    .line 14
    iput p2, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 15
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 16
    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    const/4 p3, 0x0

    const/4 v1, -0x1

    .line 18
    :try_start_1
    invoke-static {v0, p3, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    :catchall_1
    move-exception p2

    .line 20
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p2}, Landroid/view/VolumePanel;->postMasterMuteChanged(I)V

    .line 2
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1}, Landroid/view/VolumePanel;->postMasterVolumeChanged(I)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p6

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    move p1, v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p1, p4}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    and-int/lit8 p4, p4, 0x20

    if-nez p4, :cond_1

    add-int/2addr p2, v1

    .line 3
    div-int/lit8 p2, p2, 0xa

    add-int/2addr p3, v1

    .line 4
    div-int/lit8 p3, p3, 0xa

    .line 5
    new-instance p4, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 6
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 7
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 8
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-direct {p0, p4}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "orientation=square"

    .line 3
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "orientation=landscape"

    .line 4
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "orientation=portrait"

    .line 5
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "orientation=undefined"

    .line 6
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    .line 5
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v4, :cond_5

    .line 7
    :cond_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_3

    .line 8
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 9
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 11
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0xa

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_2
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 16
    :cond_3
    :goto_2
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 17
    iget v2, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v3, v1, v0

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq p1, v4, :cond_5

    .line 19
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3, v1}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 20
    iget v2, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v3, v1, v0

    or-int/2addr v2, v3

    iput v2, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 21
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    .line 22
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private setRotationForAudioSystem()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "rotation=270"

    .line 3
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "rotation=180"

    .line 4
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "rotation=90"

    .line 5
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "rotation=0"

    .line 6
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 3
    iget-object v3, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 9
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xea60

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setStreamVolumeInt(IIIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 2
    invoke-virtual {v6, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    :goto_0
    const/4 v0, 0x2

    .line 4
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    move v0, v2

    goto :goto_1

    .line 6
    :cond_1
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 7
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/16 v3, 0x8

    aput v0, v1, v3

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, p1, v3

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 9
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result p1

    invoke-direct {p0, p1, v2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 10
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object p1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, p1, v3

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private waitForAudioHandlerCreation()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "AudioService"

    const-string v1, "Interrupted while waiting on volume handler."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    .locals 2

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {p3, p1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {p3, p1, p2, v0}, Landroid/media/MediaFocusControl;->adjustRemoteVolume(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 3
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;)V

    return-void
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 4
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    .line 5
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v1, v0

    .line 6
    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 7
    invoke-virtual {v7, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    and-int/lit16 v3, v1, 0x380

    if-nez v3, :cond_1

    and-int/lit8 v4, p3, 0x40

    if-eqz v4, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v5, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v5, v5, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p4}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p4, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter p4

    const/4 v4, 0x0

    .line 10
    :try_start_0
    iput-object v4, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 11
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 p3, p3, -0x21

    const/4 p4, 0x3

    if-ne v0, p4, :cond_4

    and-int/lit16 v4, v1, 0x7000

    if-eqz v4, :cond_4

    or-int/lit8 p3, p3, 0x20

    .line 12
    iget-object v4, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p4, :cond_3

    and-int/lit8 v4, v1, 0xc

    if-eqz v4, :cond_3

    .line 13
    iget v4, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v7}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v4

    :goto_0
    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_4
    const/16 v4, 0xa

    .line 15
    invoke-direct {p0, v4, p1, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v4

    :cond_5
    :goto_1
    and-int/lit8 v5, p3, 0x2

    const/4 v6, 0x1

    if-nez v5, :cond_7

    .line 16
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    if-ne v0, v5, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3

    .line 17
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    if-ne v5, v6, :cond_8

    and-int/lit8 p3, p3, -0x11

    .line 18
    :cond_8
    invoke-direct {p0, v2, p2, v4}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v5

    .line 19
    :goto_3
    iget-object v8, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v8, p1

    invoke-virtual {v8, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v9

    if-eqz v5, :cond_c

    if-eqz p2, :cond_c

    if-ne v0, p4, :cond_a

    if-eqz v3, :cond_a

    and-int/lit8 p4, p3, 0x40

    if-nez p4, :cond_a

    .line 20
    iget-object p4, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter p4

    .line 21
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_9

    iget-boolean v5, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v5, :cond_9

    .line 22
    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 23
    :cond_9
    monitor-exit p4

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    :goto_4
    if-ne p2, v6, :cond_b

    add-int/2addr v2, v4

    .line 24
    invoke-direct {p0, v0, v2, v1}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result p4

    if-nez p4, :cond_b

    const-string p2, "AudioService"

    .line 25
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustStreamVolume() safe volume index = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {p2, p3}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    goto :goto_5

    :cond_b
    mul-int/2addr p2, v4

    .line 27
    invoke-virtual {v7, p2, v1}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 28
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 29
    :cond_c
    :goto_5
    iget-object p2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p2, p2, p1

    invoke-virtual {p2, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p2

    .line 30
    invoke-direct {p0, p1, v9, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    return-void

    :catchall_1
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    :goto_0
    const/16 p2, -0xc8

    if-eq v0, p2, :cond_2

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    and-int/lit8 p3, p3, -0x5

    :cond_2
    if-ne v0, p2, :cond_3

    and-int/lit8 p2, p3, -0x25

    .line 4
    iget-object p3, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p1, p2}, Landroid/media/MediaFocusControl;->adjustRemoteVolume(III)V

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, v0, p1, p3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V

    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v2

    move/from16 v0, p2

    .line 2
    :try_start_0
    iput-boolean v0, v1, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 3
    iget-object v3, v1, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x80

    const/4 v7, 0x0

    iget-object v0, v1, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v8, 0x3

    aget-object v8, v0, v8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4
    iget-object v10, v1, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/16 v13, 0x80

    const/4 v14, 0x0

    iget-object v0, v1, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v3, 0x2

    aget-object v15, v0, v3

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioService"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public clearAllScoClients(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$ScoClient;

    .line 4
    invoke-virtual {v4}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 5
    invoke-virtual {v4, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    goto :goto_1

    :cond_0
    move-object v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public disableSafeMediaVolume()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 3
    iget-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_0

    .line 4
    iget v2, v1, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    iget v3, v1, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    iget v4, v1, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    iget v1, v1, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-direct {p0, v2, v3, v4, v1}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    const-string v0, "AudioService"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {p1, p2}, Landroid/media/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 3
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 4
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    const-string p1, "\nAudio routes:"

    .line 5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mMainType=0x"

    .line 6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget p1, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mBluetoothName="

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object p1, p1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public findnavi(Ljava/lang/String;)I
    .locals 17

    const-string v0, "cld.navi.mobile.mainframe"

    const-string/jumbo v1, "title.navi"

    const-string v2, "cld.navi.c2802.mainframe"

    const-string v3, "com.navngo.igo.javaclient"

    const-string v4, "com.autonavi.xmgd.navigator"

    const-string v5, "com.autonavi.xmgd.navigator"

    const-string v6, "cn.com.tiros.android.navidog"

    const-string v7, "cn.com.tiros.android.navidog"

    const-string v8, "cn.com.tiros.android.navidog4x"

    const-string v9, "com.mapbar.android.mapnavi"

    const-string v10, "com.mapbar.android.mapnavi"

    const-string v11, "com.pdager"

    const-string v12, "com.raxtone.flynavi"

    const-string v13, "com.uu.uunavi"

    const-string v14, "com.baidu.navi"

    const-string v15, "com.mapbar.android.mapbarmap"

    const-string v16, "cld.navi.c3280.mainframe"

    .line 1
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x11

    if-ge v2, v3, :cond_1

    .line 2
    aget-object v3, v0, v2

    move-object/from16 v4, p1

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {p1, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getMasterVolume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteStreamMaxVolume()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteStreamMaxVolume()I

    move-result v0

    return v0
.end method

.method public getRemoteStreamVolume()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteStreamVolume()I

    move-result v0

    return v0
.end method

.method public getRingerMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getStreamVolume(I)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    :cond_1
    add-int/lit8 v1, v1, 0x5

    .line 7
    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getVibrateSetting(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 p1, p1, 0x2

    shr-int p1, v0, p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLocalOrRemoteMusicActive()Z
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v2, v0}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public isMasterMute()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamMute(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result p1

    return p1
.end method

.method public ismapapplication(I)I
    .locals 6

    const-string v0, "AudioService"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cmdline"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x100

    new-array p1, p1, [B

    .line 3
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 4
    aget-byte v5, p1, v4

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "ismapapplication IOException"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string p1, "ismapapplication FileNotFound!"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v2, 0x0

    :goto_3
    const-string p1, "com.basarsoft.igo.javaclient"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 10
    :cond_2
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->findnavi(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    return v3

    :cond_3
    const-string p1, "persist.sys.navi.packagename"

    .line 11
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>>   prop_navi is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public loadSoundEffects()Z
    .locals 8

    .line 1
    new-instance v7, Landroid/media/AudioService$LoadSoundEffectReply;

    invoke-direct {v7, p0}, Landroid/media/AudioService$LoadSoundEffectReply;-><init>(Landroid/media/AudioService;)V

    .line 2
    monitor-enter v7

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    const/4 v0, 0x3

    .line 4
    :goto_0
    iget v1, v7, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1388

    .line 5
    :try_start_1
    invoke-virtual {v7, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "AudioService"

    const-string v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v3

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v7

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    return v2

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v1

    float-to-int v4, p2

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public procName(I)Ljava/lang/String;
    .locals 6

    const-string v0, "AudioService"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/cmdline"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x100

    new-array p1, p1, [B

    .line 3
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 4
    aget-byte v5, p1, v4

    if-nez v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "procName IOException"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string p1, "procName FileNotFound!"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v1, 0x0

    :goto_3
    return-object v1
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    return-void
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result p1

    return p1
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method public registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaFocusControl;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioServiceFyt"

    const-string/jumbo v1, "sendToSyuServiceAudioInformation"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Ly/a;->e:[Ly/e;

    invoke-static {p1, v0, p2, p3, p4}, Ly/e;->b([Ly/e;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    sget-object p1, Ly/a;->e:[Ly/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, p4}, Ly/e;->b([Ly/e;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 4
    sget-object p1, Ly/a;->e:[Ly/e;

    invoke-static {p1, v0, p2, p3, p4}, Ly/e;->b([Ly/e;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 5
    sget-object p1, Ly/a;->e:[Ly/e;

    invoke-static {p1, v0, p2, p3, p4}, Ly/e;->b([Ly/e;I[I[F[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 6
    sget-object p1, Ly/a;->e:[Ly/e;

    invoke-static {p1, v0, p2, p3, p4}, Ly/e;->b([Ly/e;I[I[F[Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v0

    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0, v1, v2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v1

    .line 3
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x65

    const/4 v7, 0x0

    move-object v3, p0

    move v6, p2

    move-object v8, p1

    move v9, v1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 3
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    move v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 3
    iget-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 4
    iget-boolean v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    invoke-static {p1, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBluetoothScoOn(Z)V
    .locals 14

    const-string/jumbo v0, "setBluetoothScoOn()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 2
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6
    iget-object v7, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x2

    iget v11, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .locals 7

    .line 1
    iget-boolean p3, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result p3

    if-eq p1, p3, :cond_1

    .line 3
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 4
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    :cond_1
    return-void
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    const/16 p3, 0x64

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    if-le p1, p3, :cond_3

    move p1, p3

    :cond_3
    :goto_0
    int-to-float p1, p1

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    return-void
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "setMode()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-lt p1, v0, :cond_4

    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    if-ne p1, v0, :cond_2

    .line 3
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 4
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result p1

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 6
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public setModeInt(ILandroid/os/IBinder;I)I
    .locals 7

    const-string v0, "AudioService"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string/jumbo p1, "setModeInt() called with null binder"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 2
    iget-object v3, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v5

    if-ne v5, p3, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 7
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-object v2, v4

    :cond_2
    if-nez p1, :cond_3

    .line 8
    iget-object v3, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 9
    iget-object p1, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioService$SetModeDeathHandler;

    .line 10
    invoke-virtual {p1}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result v2

    move v6, v2

    move-object v2, p1

    move p1, v6

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 12
    new-instance v2, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-direct {v2, p0, p2, p3}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 13
    :cond_4
    :try_start_0
    invoke-interface {p2, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMode() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {v2, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    .line 17
    :cond_5
    :goto_1
    iget v3, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v3, :cond_8

    .line 18
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v3

    if-nez v3, :cond_6

    .line 19
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 20
    iget-object p1, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p2, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_7
    move p1, v1

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    if-eqz v3, :cond_9

    .line 22
    iget-object v4, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_9
    if-nez v3, :cond_d

    if-eqz p1, :cond_b

    .line 23
    iget-object p1, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "setMode() different from MODE_NORMAL with empty mode client stack"

    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 25
    :cond_a
    iget-object p1, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {p1}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result p1

    move v1, p1

    :cond_b
    :goto_3
    const/high16 p1, -0x80000000

    .line 26
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result p1

    const/16 p2, -0xc8

    if-ne p1, p2, :cond_c

    const/4 p1, 0x3

    .line 27
    :cond_c
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result p2

    .line 28
    iget-object p3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    aget-object p3, p3, v0

    invoke-virtual {p3, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p3

    .line 29
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p2, v0}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 30
    invoke-direct {p0, v0}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    :cond_d
    return v1
.end method

.method public setPlaybackInfoForRcc(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setPlaybackInfoForRcc(III)V

    return-void
.end method

.method public setPlaybackStateForRcc(IIJF)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaFocusControl;->setPlaybackStateForRcc(IIJF)V

    return-void
.end method

.method public setRemoteControlClientPlaybackPosition(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setRemoteControlClientPlaybackPosition(IJ)V

    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->setRemoteStreamVolume(I)V

    return-void
.end method

.method public setRingerMode(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-boolean v1, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    if-eq p1, v1, :cond_2

    .line 4
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 5
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    :cond_2
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 9

    const-string/jumbo v0, "setSpeakerphoneOn()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 3
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4
    :cond_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p1, v0, p1

    invoke-virtual {p1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    :cond_1
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    .line 4
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    .line 5
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    and-int/lit16 v2, v7, 0x380

    if-nez v2, :cond_1

    and-int/lit8 v3, p3, 0x40

    if-eqz v3, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v4, v4, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p4}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object p4, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter p4

    const/4 v3, 0x0

    .line 8
    :try_start_0
    iput-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 9
    invoke-virtual {v1, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    mul-int/lit8 p2, p2, 0xa

    .line 10
    invoke-direct {p0, p2, p1, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    if-eqz v2, :cond_4

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_4

    .line 11
    iget-object v2, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v5, :cond_3

    .line 13
    div-int/lit8 v5, p2, 0xa

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 14
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_4
    :goto_0
    and-int/lit8 p3, p3, -0x21

    if-ne v0, v3, :cond_6

    and-int/lit16 v2, v7, 0x7000

    if-eqz v2, :cond_6

    or-int/lit8 p3, p3, 0x20

    if-eqz p2, :cond_6

    .line 15
    iget-object p2, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_5

    and-int/lit8 p2, v7, 0xc

    if-eqz p2, :cond_5

    .line 16
    iget p2, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    .line 18
    :cond_6
    :goto_1
    invoke-direct {p0, v0, p2, v7}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p3}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 20
    new-instance v0, Landroid/media/AudioService$StreamVolumeCommand;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    goto :goto_2

    .line 21
    :cond_7
    invoke-direct {p0, p1, p2, p3, v7}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 22
    iget-object p2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object p2, p2, p1

    invoke-virtual {p2, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p2

    .line 23
    :goto_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    invoke-direct {p0, p1, v8, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    return-void

    :catchall_1
    move-exception p1

    .line 25
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public setVibrateSetting(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result p2

    iput p2, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v7

    .line 3
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0x64

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shouldVibrate(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result p1

    if-ne p1, v0, :cond_2

    move v1, v0

    :cond_2
    return v1

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result p1

    if-eqz p1, :cond_4

    move v1, v0

    :cond_4
    return v1
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2

    const-string/jumbo v0, "startBluetoothSco()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object p1

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1, p2}, Landroid/media/AudioService$ScoClient;->incCount(I)V

    .line 5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 3
    iget-object v2, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "stopBluetoothSco()"

    .line 1
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object p1

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioService$ScoClient;->decCount()V

    .line 5
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->unregisterMediaButtonEventReceiverForCalls()V

    return-void
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method public updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->updateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    return-void
.end method

.method public updateRingerModeAffectedStreams()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    or-int/lit8 v0, v0, 0x26

    .line 2
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    :cond_0
    or-int/2addr v0, v2

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit16 v0, v0, -0x81

    goto :goto_1

    :cond_1
    or-int/lit16 v0, v0, 0x80

    .line 5
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x101

    .line 7
    :goto_2
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_3

    .line 8
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 9
    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public verifyX509CertChain(I[BLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    new-array v0, p1, [[B

    .line 2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 4
    new-array v2, v2, [B

    aput-object v2, v0, v1

    .line 5
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {v0, p3, p4}, Landroid/net/http/CertificateChainValidator;->verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to verify chain: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    return p1
.end method
