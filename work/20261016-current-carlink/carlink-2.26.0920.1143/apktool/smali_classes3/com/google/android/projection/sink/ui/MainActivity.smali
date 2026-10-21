.class public final Lcom/google/android/projection/sink/ui/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/transport/TransportFactory$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;,
        Lcom/google/android/projection/sink/ui/MainActivity$BtListener;
    }
.end annotation


# static fields
.field private static final ACTION_USB_ACCESSORY_PERMISSION:Ljava/lang/String; = "com.google.android.projection.sink.transport.usb.ACTION_USB_ACCESSORY_PERMISSION"

.field private static final ACTION_USB_DEVICE_PERMISSION:Ljava/lang/String; = "com.google.android.projection.sink.transport.usb.ACTION_USB_DEVICE_PERMISSION"

.field private static final AUDIO_BITS_MEDIA:I = 0x10

.field private static final AUDIO_BITS_SYSTEM:I = 0x10

.field private static final AUDIO_BITS_TTS:I = 0x10

.field private static final AUDIO_CHANNELS_MEDIA:I = 0x2

.field private static final AUDIO_CHANNELS_SYSTEM:I = 0x1

.field private static final AUDIO_CHANNELS_TTS:I = 0x1

.field private static final DBG_LATENCY:Z = true

.field private static final DECODER_ADDITIONAL_DEPTH:I = 0x3

.field public static final LAUNCHER_MODE:I = 0x2

.field public static final LAUNCH_MODE:Ljava/lang/String; = "launch_mode"

.field public static final LOCAL_MODE:I = 0x3

.field private static final PHONE_SCREEN_OFF_MSG:Ljava/lang/String; = "Please turn phone screen on."

.field private static final SAMPLING_RATE_MEDIA:I = 0xbb80

.field private static final SAMPLING_RATE_SYSTEM:I = 0x3e80

.field private static final SAMPLING_RATE_TTS:I = 0x3e80

.field public static final SAVED_BT_KEY:Ljava/lang/String; = "saved_bt"

.field private static final TAG:Ljava/lang/String; = "AHU.MAIN_ACTIVITY"

.field public static final USB_ACCESSORY_MODE:I = 0x0

.field public static final USB_HOST_MODE:I = 0x1


# instance fields
.field btConnected:Z

.field private final mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

.field private final mAudioFocusListener:Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;

.field private mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

.field private final mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

.field private final mAudioSinkMediaStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

.field private final mAudioSinkSystemStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

.field private final mAudioSinkTtsStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

.field private final mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

.field private mBluetoothStartBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

.field private mConnectLayout:Landroid/view/View;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

.field private mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

.field private mGal:Lcom/google/android/projection/sink/GalIntegration;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentControllerReceiver:Landroid/content/BroadcastReceiver;

.field mIsBound:Z

.field private mLaunchMode:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLocalMode:Z

.field private mLocalModeCallbacks:Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;

.field private final mLock:Ljava/lang/Object;

.field private mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

.field private final mProjectedModeIconReceiver:Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;

.field private final mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

.field private mProjectionRenderer:Lcom/google/android/projection/sink/video/ProjectionRenderer;

.field private final mProjectionRendererListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

.field private mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

.field mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

.field private mSettings:Lcom/google/android/projection/sink/settings/Settings;

.field private final mSurfaceTouchListener:Landroid/view/View$OnTouchListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

.field private mTransport:Lcom/google/android/projection/protocol/Transport;

.field private mTransportFactory:Lcom/google/android/projection/transport/TransportFactory;

.field private mTransportHandle:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

.field private final mUsbDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserSwitchListener:Lcom/google/android/projection/protocol/GalReceiver$UserSwitchListener;

.field private final mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

.field resumed:Z

.field usbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalMode:Z

    .line 13
    .line 14
    new-instance v1, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$1;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mUsbDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/google/android/projection/sink/video/VideoLatencyChecker;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    .line 34
    .line 35
    new-instance v7, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 36
    .line 37
    invoke-direct {v7}, Lcom/google/android/projection/sink/audio/AudioLatencyChecker;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v7, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    .line 41
    .line 42
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$6;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$6;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionRendererListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    .line 48
    .line 49
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$7;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 55
    .line 56
    new-instance v1, Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    const v4, 0xbb80

    .line 60
    .line 61
    .line 62
    const/16 v5, 0xc

    .line 63
    .line 64
    const/4 v6, 0x2

    .line 65
    move-object v2, v1

    .line 66
    invoke-direct/range {v2 .. v7}, Lcom/google/android/projection/sink/audio/AudioPlayer;-><init>(IIIILcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkMediaStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 70
    .line 71
    new-instance v1, Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 72
    .line 73
    const/4 v9, 0x5

    .line 74
    const/16 v10, 0x3e80

    .line 75
    .line 76
    const/4 v11, 0x4

    .line 77
    const/4 v12, 0x2

    .line 78
    const/4 v13, 0x0

    .line 79
    move-object v8, v1

    .line 80
    invoke-direct/range {v8 .. v13}, Lcom/google/android/projection/sink/audio/AudioPlayer;-><init>(IIIILcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkTtsStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 84
    .line 85
    new-instance v1, Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    const/16 v4, 0x3e80

    .line 89
    .line 90
    const/4 v5, 0x4

    .line 91
    const/4 v7, 0x0

    .line 92
    move-object v2, v1

    .line 93
    invoke-direct/range {v2 .. v7}, Lcom/google/android/projection/sink/audio/AudioPlayer;-><init>(IIIILcom/google/android/projection/sink/audio/AudioLatencyChecker;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkSystemStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 97
    .line 98
    new-instance v1, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 99
    .line 100
    invoke-direct {v1}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 104
    .line 105
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$11;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$11;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSurfaceTouchListener:Landroid/view/View$OnTouchListener;

    .line 111
    .line 112
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$12;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$12;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    .line 118
    .line 119
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$13;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$13;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusListener:Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;

    .line 125
    .line 126
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$14;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$14;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectedModeIconReceiver:Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;

    .line 132
    .line 133
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$15;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$15;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 136
    .line 137
    .line 138
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

    .line 139
    .line 140
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$16;

    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$16;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 143
    .line 144
    .line 145
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mUserSwitchListener:Lcom/google/android/projection/protocol/GalReceiver$UserSwitchListener;

    .line 146
    .line 147
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$17;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$17;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 150
    .line 151
    .line 152
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    .line 154
    const/4 v1, 0x0

    .line 155
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 156
    .line 157
    iput-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mIsBound:Z

    .line 158
    .line 159
    iput-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->resumed:Z

    .line 160
    .line 161
    new-instance v1, Lcom/google/android/projection/sink/ui/MainActivity$18;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/ui/MainActivity$18;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 167
    .line 168
    iput-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->btConnected:Z

    .line 169
    .line 170
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mUsbDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/ui/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLaunchMode:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/TestTools;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportHandle:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportHandle:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    return-object p1
.end method

.method public static synthetic access$1302(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/protocol/Transport;)Lcom/google/android/projection/protocol/Transport;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransport:Lcom/google/android/projection/protocol/Transport;

    return-object p1
.end method

.method public static synthetic access$1400(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mConnectLayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p1
.end method

.method public static synthetic access$1600(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSurfaceTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionRendererListener:Lcom/google/android/projection/sink/video/ProjectionRenderer$Listener;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/VideoLatencyChecker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mVideoLatencyChecker:Lcom/google/android/projection/sink/video/VideoLatencyChecker;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/hardware/usb/UsbAccessory;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/ui/MainActivity;->startAccessoryMode(Landroid/hardware/usb/UsbAccessory;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioLatencyChecker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioLatencyChecker:Lcom/google/android/projection/sink/audio/AudioLatencyChecker;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/google/android/projection/sink/ui/MainActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/ui/MainActivity;->startGAL(II)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/MicrophoneRecorder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkMediaStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkTtsStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioPlayer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkSystemStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/sensors/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    return-object p0
.end method

.method public static synthetic access$2602(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/sensors/SensorManager;)Lcom/google/android/projection/sink/sensors/SensorManager;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    return-object p1
.end method

.method public static synthetic access$2700(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mIntentControllerReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mIntentControllerReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static synthetic access$2800(Lcom/google/android/projection/sink/ui/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/navigation/NavigationFocusManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/ui/MainActivity;->startHostMode(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioFocusManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalModeCallbacks:Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->showConnections()V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/ui/MainActivity;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/GalIntegration;)Lcom/google/android/projection/sink/GalIntegration;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/video/ProjectionRenderer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionRenderer:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/sink/video/ProjectionRenderer;)Lcom/google/android/projection/sink/video/ProjectionRenderer;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionRenderer:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    return-object p0
.end method

.method private checkUsbHostPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    .line 1
    const-string v0, "usb"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 16
    .line 17
    const-string v2, "no permission for the device. asking user"

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v2, "com.google.android.projection.sink.transport.usb.ACTION_USB_DEVICE_PERMISSION"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/high16 v2, 0x40000000    # 2.0f

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 37
    .line 38
    .line 39
    return v3

    .line 40
    :cond_0
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method private handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq p1, v2, :cond_5

    .line 15
    .line 16
    const/16 v2, 0x42

    .line 17
    .line 18
    if-eq p1, v2, :cond_4

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    if-eq p1, v2, :cond_3

    .line 23
    .line 24
    const/16 v2, 0x9

    .line 25
    .line 26
    if-eq p1, v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0x54

    .line 29
    .line 30
    if-eq p1, v2, :cond_5

    .line 31
    .line 32
    const/16 v2, 0x55

    .line 33
    .line 34
    if-eq p1, v2, :cond_5

    .line 35
    .line 36
    const/16 v2, 0x57

    .line 37
    .line 38
    if-eq p1, v2, :cond_5

    .line 39
    .line 40
    const/16 v2, 0x58

    .line 41
    .line 42
    if-eq p1, v2, :cond_5

    .line 43
    .line 44
    const/16 v2, 0x66

    .line 45
    .line 46
    if-eq p1, v2, :cond_3

    .line 47
    .line 48
    const/16 v2, 0x67

    .line 49
    .line 50
    if-eq p1, v2, :cond_2

    .line 51
    .line 52
    const/16 v2, 0x7e

    .line 53
    .line 54
    if-eq p1, v2, :cond_5

    .line 55
    .line 56
    const/16 v2, 0x7f

    .line 57
    .line 58
    if-eq p1, v2, :cond_5

    .line 59
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Got keycode: "

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string p2, "AHU.MAIN_ACTIVITY"

    .line 78
    .line 79
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/sink/settings/Settings;->volumeToggleDebug()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, v3, :cond_6

    .line 96
    .line 97
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/android/projection/sink/settings/Settings;->isDebugMode()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/google/android/projection/sink/ui/TestTools;->toggleDebugToolbarVisibility()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p1, v3, :cond_7

    .line 120
    .line 121
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 124
    .line 125
    sget-object p2, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-virtual {p1, p2, v3}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-ne p1, v3, :cond_7

    .line 140
    .line 141
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 142
    .line 143
    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 144
    .line 145
    sget-object p2, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    const/4 v0, -0x1

    .line 152
    invoke-virtual {p1, p2, v0}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    new-instance p1, Landroid/view/KeyEvent;

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    const/16 v0, 0x17

    .line 163
    .line 164
    invoke-direct {p1, p2, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 168
    .line 169
    iget-object p2, p2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 170
    .line 171
    invoke-virtual {p2, p1}, Lcom/google/android/projection/protocol/InputSource;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    :pswitch_1
    invoke-virtual {v0, p2}, Lcom/google/android/projection/protocol/InputSource;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 176
    .line 177
    .line 178
    :cond_6
    :goto_0
    move v1, v3

    .line 179
    :cond_7
    :goto_1
    return v1

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initializeSensorServices()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->isGpsTabletEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Start in GPS mode"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->isGpsSimulationEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v0, "Start in simulation mode"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 36
    .line 37
    const/4 v1, 0x5

    .line 38
    new-array v1, v1, [Lcom/google/android/projection/sink/sensors/SensorCollectorBase;

    .line 39
    .line 40
    new-instance v2, Lcom/google/android/projection/sink/sensors/FakeSensors;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/sensors/FakeSensors;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    aput-object v2, v1, v3

    .line 47
    .line 48
    new-instance v2, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 51
    .line 52
    invoke-direct {v2, p0, v3}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    new-instance v2, Lcom/google/android/projection/sink/sensors/LocationSensors;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 61
    .line 62
    invoke-direct {v2, p0, v3}, Lcom/google/android/projection/sink/sensors/LocationSensors;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    aput-object v2, v1, v3

    .line 67
    .line 68
    new-instance v2, Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/sensors/TabletSensors;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x3

    .line 74
    aput-object v2, v1, v3

    .line 75
    .line 76
    new-instance v2, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x4

    .line 82
    aput-object v2, v1, v3

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/sensors/SensorManager;->init([Lcom/google/android/projection/sink/sensors/SensorCollectorBase;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private initializeViews()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/google/android/projection/sink/R$layout;->activity_main:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    sget v0, Lcom/google/android/projection/sink/R$id;->frame:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    sget v0, Lcom/google/android/projection/sink/R$id;->connect_layout:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mConnectLayout:Landroid/view/View;

    .line 32
    .line 33
    return-void
.end method

.method private showConnections()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mConnectLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startAccessoryMode(Landroid/hardware/usb/UsbAccessory;)V
    .locals 4

    .line 1
    const-string v0, "Starting in accessory mode"

    .line 2
    .line 3
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string v0, "accessory is null"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string v0, "usb"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    const-string v2, "Prompting the user for access to the accessory."

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v2, "com.google.android.projection.sink.transport.usb.ACTION_USB_ACCESSORY_PERMISSION"

    .line 37
    .line 38
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/high16 v3, 0x40000000    # 2.0f

    .line 50
    .line 51
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportFactory:Lcom/google/android/projection/transport/TransportFactory;

    .line 60
    .line 61
    invoke-virtual {v0, p1, p0}, Lcom/google/android/projection/transport/TransportFactory;->open(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->showConnections()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v3, "Failed to start connection with "

    .line 72
    .line 73
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method private startGAL(II)V
    .locals 52

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    iget-object v11, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v11

    .line 10
    :try_start_0
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v11

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 17
    .line 18
    invoke-static {v0, v10, v1}, Lcom/google/android/projection/sink/video/DimensionUtils;->makeRequestedVideoSize(IILcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;)Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v12

    .line 22
    new-instance v1, Lcom/google/android/projection/sink/GalIntegration;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/google/android/projection/sink/GalIntegration;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 28
    .line 29
    const/4 v13, 0x3

    .line 30
    new-array v15, v13, [Lcom/google/android/projection/protocol/AudioSink$AudioListener;

    .line 31
    .line 32
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkMediaStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 33
    .line 34
    const/4 v14, 0x0

    .line 35
    aput-object v2, v15, v14

    .line 36
    .line 37
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkTtsStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 38
    .line 39
    const/4 v8, 0x1

    .line 40
    aput-object v2, v15, v8

    .line 41
    .line 42
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkSystemStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    aput-object v2, v15, v7

    .line 46
    .line 47
    new-instance v2, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Lcom/google/android/projection/sink/navigation/NavigationFocusManager;-><init>(Lcom/google/android/projection/sink/GalIntegration;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 53
    .line 54
    new-instance v1, Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 55
    .line 56
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 57
    .line 58
    iget-object v3, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/google/android/projection/sink/settings/Settings;->isRestrictedAudioFocusUsed()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-direct {v1, v2, v3}, Lcom/google/android/projection/sink/audio/AudioFocusManager;-><init>(Lcom/google/android/projection/sink/GalIntegration;Z)V

    .line 65
    .line 66
    .line 67
    iput-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 68
    .line 69
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkMediaStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 75
    .line 76
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkTtsStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 82
    .line 83
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkSystemStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->registerFocusChangeListener(Lcom/google/android/projection/sink/audio/AudioFocusManager$FocusChangeListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkMediaStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 89
    .line 90
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioFocusManager(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkTtsStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 96
    .line 97
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioFocusManager(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkSystemStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 103
    .line 104
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioFocusManager(Lcom/google/android/projection/sink/audio/AudioFocusManager;)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Lcom/google/android/projection/sink/ui/MainActivity$4;

    .line 110
    .line 111
    invoke-direct {v6, v9}, Lcom/google/android/projection/sink/ui/MainActivity$4;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 112
    .line 113
    .line 114
    new-instance v5, Lcom/google/android/projection/sink/ui/TestTools;

    .line 115
    .line 116
    iget-object v3, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 117
    .line 118
    iget-object v4, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 119
    .line 120
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 121
    .line 122
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mNavigationFocusManager:Lcom/google/android/projection/sink/navigation/NavigationFocusManager;

    .line 123
    .line 124
    iget-object v7, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 125
    .line 126
    iget-object v8, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 127
    .line 128
    move-object/from16 v18, v1

    .line 129
    .line 130
    move-object v1, v5

    .line 131
    move-object/from16 v19, v2

    .line 132
    .line 133
    move-object/from16 v2, p0

    .line 134
    .line 135
    move-object v13, v5

    .line 136
    move-object/from16 v5, v19

    .line 137
    .line 138
    move-object/from16 v28, v6

    .line 139
    .line 140
    move-object/from16 v6, v18

    .line 141
    .line 142
    invoke-direct/range {v1 .. v8}, Lcom/google/android/projection/sink/ui/TestTools;-><init>(Landroid/content/Context;Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/GalIntegration;Lcom/google/android/projection/sink/audio/AudioFocusManager;Lcom/google/android/projection/sink/navigation/NavigationFocusManager;Lcom/google/android/projection/sink/sensors/SensorManager;Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    iput-object v13, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

    .line 146
    .line 147
    new-instance v1, Lcom/google/android/projection/sink/InstrumentClusterListener;

    .line 148
    .line 149
    invoke-virtual {v13}, Lcom/google/android/projection/sink/ui/TestTools;->getTestUiUpdateHandler()Landroid/os/Handler;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-direct {v1, v2}, Lcom/google/android/projection/sink/InstrumentClusterListener;-><init>(Landroid/os/Handler;)V

    .line 154
    .line 155
    .line 156
    const-string v51, "Google"

    .line 157
    .line 158
    const-string v42, "2014"

    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const-string v3, "android_id"

    .line 165
    .line 166
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v43

    .line 170
    const/16 v44, 0x0

    .line 171
    .line 172
    const-string v45, "AHU"

    .line 173
    .line 174
    const-string v47, ""

    .line 175
    .line 176
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v3, v4, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .line 192
    :catch_0
    move-object/from16 v48, v2

    .line 193
    .line 194
    const/16 v49, 0x0

    .line 195
    .line 196
    :try_start_2
    iget-boolean v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalMode:Z

    .line 197
    .line 198
    if-eqz v2, :cond_1

    .line 199
    .line 200
    const-string v2, "GalReceiver-Local"

    .line 201
    .line 202
    const-string v3, "Local"

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_1
    const-string v2, "GalReceiver"

    .line 206
    .line 207
    const-string v3, "Projected"

    .line 208
    .line 209
    :goto_0
    move-object/from16 v41, v2

    .line 210
    .line 211
    move-object/from16 v46, v3

    .line 212
    .line 213
    const/16 v50, 0x0

    .line 214
    .line 215
    new-instance v31, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;

    .line 216
    .line 217
    move-object/from16 v39, v31

    .line 218
    .line 219
    move-object/from16 v40, v51

    .line 220
    .line 221
    invoke-direct/range {v39 .. v51}, Lcom/google/android/projection/protocol/GalReceiver$CarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/google/android/projection/sink/sensors/SensorManager;->getSupportedSensors()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    new-array v3, v3, [I

    .line 235
    .line 236
    move v4, v14

    .line 237
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-ge v4, v5, :cond_2

    .line 242
    .line 243
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    check-cast v5, Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    aput v5, v3, v4

    .line 254
    .line 255
    add-int/lit8 v4, v4, 0x1

    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_2
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 259
    .line 260
    iget-object v4, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 261
    .line 262
    invoke-virtual {v4}, Lcom/google/android/projection/sink/settings/Settings;->getCarBluetoothAddress()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    iget-object v5, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 267
    .line 268
    invoke-virtual {v5}, Lcom/google/android/projection/sink/settings/Settings;->getSupportedBluetoothPairingMethods()[I

    .line 269
    .line 270
    .line 271
    move-result-object v16

    .line 272
    iget-object v5, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 273
    .line 274
    iget-object v6, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionListener:Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;

    .line 275
    .line 276
    iget-object v7, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 277
    .line 278
    invoke-virtual {v7}, Lcom/google/android/projection/sink/settings/Settings;->grantFocusOnStart()Z

    .line 279
    .line 280
    .line 281
    move-result v20

    .line 282
    iget-object v7, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 283
    .line 284
    iget-object v8, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAppMessageListener:Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    .line 285
    .line 286
    iget-object v13, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusListener:Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;

    .line 287
    .line 288
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectedModeIconReceiver:Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;

    .line 289
    .line 290
    iget-object v10, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

    .line 291
    .line 292
    move-object/from16 v39, v12

    .line 293
    .line 294
    iget-object v12, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mUserSwitchListener:Lcom/google/android/projection/protocol/GalReceiver$UserSwitchListener;

    .line 295
    .line 296
    move-object/from16 v29, v1

    .line 297
    .line 298
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioFocusManager:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 299
    .line 300
    new-instance v32, Lcom/google/android/projection/protocol/RadioStub;

    .line 301
    .line 302
    invoke-direct/range {v32 .. v32}, Lcom/google/android/projection/protocol/RadioStub;-><init>()V

    .line 303
    .line 304
    .line 305
    new-instance v33, Lcom/google/android/projection/protocol/CarWifiStub;

    .line 306
    .line 307
    invoke-direct/range {v33 .. v33}, Lcom/google/android/projection/protocol/CarWifiStub;-><init>()V

    .line 308
    .line 309
    .line 310
    move-object/from16 v30, v1

    .line 311
    .line 312
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mHandler:Landroid/os/Handler;

    .line 313
    .line 314
    iget-object v14, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalModeCallbacks:Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;

    .line 315
    .line 316
    invoke-interface {v14}, Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;->getRootCert()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v35

    .line 320
    iget-object v14, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalModeCallbacks:Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;

    .line 321
    .line 322
    invoke-interface {v14}, Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;->getClientCert()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v36

    .line 326
    iget-object v14, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalModeCallbacks:Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;

    .line 327
    .line 328
    invoke-interface {v14}, Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;->getPrivateKey()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v37

    .line 332
    const-string v38, "00:11:22:aa:bb:cc"

    .line 333
    .line 334
    const/16 v40, 0x0

    .line 335
    .line 336
    move-object v14, v2

    .line 337
    move-object v2, v15

    .line 338
    move-object v15, v4

    .line 339
    move-object/from16 v17, v3

    .line 340
    .line 341
    move-object/from16 v18, v5

    .line 342
    .line 343
    move-object/from16 v19, v6

    .line 344
    .line 345
    move-object/from16 v21, v2

    .line 346
    .line 347
    move-object/from16 v22, v7

    .line 348
    .line 349
    move-object/from16 v23, v8

    .line 350
    .line 351
    move-object/from16 v24, v13

    .line 352
    .line 353
    move-object/from16 v25, v0

    .line 354
    .line 355
    move-object/from16 v26, v10

    .line 356
    .line 357
    move-object/from16 v27, v12

    .line 358
    .line 359
    move-object/from16 v34, v1

    .line 360
    .line 361
    invoke-virtual/range {v14 .. v38}, Lcom/google/android/projection/sink/GalIntegration;->init(Ljava/lang/String;[I[ILandroid/view/SurfaceView;Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;Z[Lcom/google/android/projection/protocol/AudioSink$AudioListener;Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;Lcom/google/android/projection/protocol/GalReceiver$UserSwitchListener;Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;Lcom/google/android/projection/sink/InstrumentClusterListener;Lcom/google/android/projection/sink/audio/AudioFocusManager;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Lcom/google/android/projection/protocol/Radio;Lcom/google/android/projection/protocol/CarWifi;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->isFpsLimited()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_3

    .line 371
    .line 372
    const/16 v0, 0x1e

    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_3
    const/16 v0, 0x3c

    .line 376
    .line 377
    :goto_2
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 378
    .line 379
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 380
    .line 381
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Rect;->width()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Rect;->height()I

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    iget-object v4, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 390
    .line 391
    invoke-virtual {v4}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getEmulatedDpi()F

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    float-to-int v4, v4

    .line 396
    iget-object v5, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 397
    .line 398
    invoke-virtual {v5}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getPhysicalDpi()F

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    float-to-int v5, v5

    .line 403
    const/4 v7, 0x3

    .line 404
    move v6, v0

    .line 405
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/projection/protocol/VideoSink;->nearestVideoConfiguration(IIIIII)Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 410
    .line 411
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 412
    .line 413
    invoke-virtual {v2, v1}, Lcom/google/android/projection/protocol/VideoSink;->addSupportedConfiguration(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 417
    .line 418
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 419
    .line 420
    const/16 v2, 0x500

    .line 421
    .line 422
    const/16 v3, 0x2d0

    .line 423
    .line 424
    iget-object v4, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 425
    .line 426
    invoke-virtual {v4}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getEmulatedDpi()F

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    float-to-int v4, v4

    .line 431
    mul-int/lit16 v4, v4, 0x500

    .line 432
    .line 433
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Rect;->width()I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    div-int/2addr v4, v5

    .line 438
    iget-object v5, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mEmulatedScreen:Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;

    .line 439
    .line 440
    invoke-virtual {v5}, Lcom/google/android/projection/sink/video/DimensionUtils$ScreenSettings;->getPhysicalDpi()F

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    float-to-int v5, v5

    .line 445
    const/4 v7, 0x3

    .line 446
    move v6, v0

    .line 447
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/projection/protocol/VideoSink;->nearestVideoConfiguration(IIIIII)Lcom/google/android/projection/proto/Protos$VideoConfiguration;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 452
    .line 453
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 454
    .line 455
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/VideoSink;->addSupportedConfiguration(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 459
    .line 460
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 461
    .line 462
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/VideoSink;->addSupportedConfiguration(Lcom/google/android/projection/proto/Protos$VideoConfiguration;)V

    .line 463
    .line 464
    .line 465
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 466
    .line 467
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 468
    .line 469
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_VIDEO_H264_BP:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 470
    .line 471
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/VideoSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 472
    .line 473
    .line 474
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 475
    .line 476
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 477
    .line 478
    aget-object v0, v0, v40

    .line 479
    .line 480
    const v1, 0xbb80

    .line 481
    .line 482
    .line 483
    const/16 v2, 0x10

    .line 484
    .line 485
    const/4 v3, 0x2

    .line 486
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/projection/protocol/AudioSink;->addSupportedConfiguration(III)V

    .line 487
    .line 488
    .line 489
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 490
    .line 491
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 492
    .line 493
    aget-object v0, v0, v40

    .line 494
    .line 495
    sget-object v1, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_MEDIA:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/AudioSink;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V

    .line 498
    .line 499
    .line 500
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 501
    .line 502
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 503
    .line 504
    aget-object v0, v0, v40

    .line 505
    .line 506
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 507
    .line 508
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->isAAcEnabledForMedia()Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-eqz v1, :cond_4

    .line 513
    .line 514
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_AAC_LC:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 515
    .line 516
    goto :goto_3

    .line 517
    :cond_4
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 518
    .line 519
    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/AudioSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 520
    .line 521
    .line 522
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 523
    .line 524
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 525
    .line 526
    const/4 v1, 0x1

    .line 527
    aget-object v0, v0, v1

    .line 528
    .line 529
    const/16 v4, 0x3e80

    .line 530
    .line 531
    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/projection/protocol/AudioSink;->addSupportedConfiguration(III)V

    .line 532
    .line 533
    .line 534
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 535
    .line 536
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 537
    .line 538
    aget-object v0, v0, v1

    .line 539
    .line 540
    sget-object v5, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_GUIDANCE:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 541
    .line 542
    invoke-virtual {v0, v5}, Lcom/google/android/projection/protocol/AudioSink;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V

    .line 543
    .line 544
    .line 545
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 546
    .line 547
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 548
    .line 549
    aget-object v0, v0, v1

    .line 550
    .line 551
    iget-object v5, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 552
    .line 553
    invoke-virtual {v5}, Lcom/google/android/projection/sink/settings/Settings;->isAAcEnabledForTts()Z

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    if-eqz v5, :cond_5

    .line 558
    .line 559
    sget-object v5, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_AAC_LC:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 560
    .line 561
    goto :goto_4

    .line 562
    :cond_5
    sget-object v5, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 563
    .line 564
    :goto_4
    invoke-virtual {v0, v5}, Lcom/google/android/projection/protocol/AudioSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 565
    .line 566
    .line 567
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 568
    .line 569
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 570
    .line 571
    aget-object v0, v0, v3

    .line 572
    .line 573
    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/projection/protocol/AudioSink;->addSupportedConfiguration(III)V

    .line 574
    .line 575
    .line 576
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 577
    .line 578
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 579
    .line 580
    aget-object v0, v0, v3

    .line 581
    .line 582
    sget-object v4, Lcom/google/android/projection/proto/Protos$AudioStreamType;->AUDIO_STREAM_SYSTEM_AUDIO:Lcom/google/android/projection/proto/Protos$AudioStreamType;

    .line 583
    .line 584
    invoke-virtual {v0, v4}, Lcom/google/android/projection/protocol/AudioSink;->setAudioType(Lcom/google/android/projection/proto/Protos$AudioStreamType;)V

    .line 585
    .line 586
    .line 587
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 588
    .line 589
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 590
    .line 591
    aget-object v0, v0, v3

    .line 592
    .line 593
    sget-object v4, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 594
    .line 595
    invoke-virtual {v0, v4}, Lcom/google/android/projection/protocol/AudioSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 596
    .line 597
    .line 598
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 599
    .line 600
    iget-object v4, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 601
    .line 602
    iget-object v4, v4, Lcom/google/android/projection/sink/GalIntegration;->audioSource:Lcom/google/android/projection/protocol/AudioSource;

    .line 603
    .line 604
    invoke-virtual {v0, v4}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->setGalAudioSource(Lcom/google/android/projection/protocol/AudioSource;)V

    .line 605
    .line 606
    .line 607
    const/16 v0, 0x11

    .line 608
    .line 609
    new-array v0, v0, [I

    .line 610
    .line 611
    const/16 v4, 0x13

    .line 612
    .line 613
    aput v4, v0, v40

    .line 614
    .line 615
    const/16 v4, 0x14

    .line 616
    .line 617
    aput v4, v0, v1

    .line 618
    .line 619
    const/16 v4, 0x15

    .line 620
    .line 621
    aput v4, v0, v3

    .line 622
    .line 623
    const/16 v4, 0x16

    .line 624
    .line 625
    const/4 v5, 0x3

    .line 626
    aput v4, v0, v5

    .line 627
    .line 628
    const/16 v4, 0x17

    .line 629
    .line 630
    const/4 v5, 0x4

    .line 631
    aput v4, v0, v5

    .line 632
    .line 633
    const/16 v4, 0x54

    .line 634
    .line 635
    const/4 v6, 0x5

    .line 636
    aput v4, v0, v6

    .line 637
    .line 638
    const/4 v4, 0x6

    .line 639
    aput v5, v0, v4

    .line 640
    .line 641
    const/4 v5, 0x7

    .line 642
    const/16 v7, 0x7e

    .line 643
    .line 644
    aput v7, v0, v5

    .line 645
    .line 646
    const/16 v5, 0x8

    .line 647
    .line 648
    const/16 v7, 0x7f

    .line 649
    .line 650
    aput v7, v0, v5

    .line 651
    .line 652
    const/16 v5, 0x9

    .line 653
    .line 654
    const/16 v7, 0x55

    .line 655
    .line 656
    aput v7, v0, v5

    .line 657
    .line 658
    const/16 v5, 0xa

    .line 659
    .line 660
    const/16 v7, 0x58

    .line 661
    .line 662
    aput v7, v0, v5

    .line 663
    .line 664
    const/16 v5, 0xb

    .line 665
    .line 666
    const/16 v7, 0x57

    .line 667
    .line 668
    aput v7, v0, v5

    .line 669
    .line 670
    const/16 v5, 0xc

    .line 671
    .line 672
    const/16 v7, 0xd1

    .line 673
    .line 674
    aput v7, v0, v5

    .line 675
    .line 676
    const/16 v5, 0xd

    .line 677
    .line 678
    aput v6, v0, v5

    .line 679
    .line 680
    const/16 v5, 0xe

    .line 681
    .line 682
    aput v4, v0, v5

    .line 683
    .line 684
    sget-object v4, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_NAVIGATION:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 685
    .line 686
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 687
    .line 688
    .line 689
    move-result v4

    .line 690
    const/16 v5, 0xf

    .line 691
    .line 692
    aput v4, v0, v5

    .line 693
    .line 694
    sget-object v4, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_TEL:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 695
    .line 696
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    aput v4, v0, v2

    .line 701
    .line 702
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 703
    .line 704
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isRotaryControllerEnabled()Z

    .line 705
    .line 706
    .line 707
    move-result v2

    .line 708
    if-eqz v2, :cond_6

    .line 709
    .line 710
    const/16 v2, 0x12

    .line 711
    .line 712
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    array-length v2, v0

    .line 717
    sub-int/2addr v2, v1

    .line 718
    sget-object v4, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 719
    .line 720
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 721
    .line 722
    .line 723
    move-result v4

    .line 724
    aput v4, v0, v2

    .line 725
    .line 726
    :cond_6
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 727
    .line 728
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 729
    .line 730
    invoke-virtual {v2, v0}, Lcom/google/android/projection/protocol/InputSource;->registerKeyCodes([I)V

    .line 731
    .line 732
    .line 733
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 734
    .line 735
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->isTouchScreenEnabled()Z

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    if-eqz v0, :cond_7

    .line 740
    .line 741
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 742
    .line 743
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 744
    .line 745
    sget v2, Lcom/google/android/projection/protocol/InputSource;->TOUCHSCREEN_TYPE_CAPACITIVE:I

    .line 746
    .line 747
    move/from16 v4, p1

    .line 748
    .line 749
    move/from16 v5, p2

    .line 750
    .line 751
    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/projection/protocol/InputSource;->registerTouchScreen(III)V

    .line 752
    .line 753
    .line 754
    :cond_7
    sget v0, Lcom/google/android/projection/sink/R$id;->touchpad:I

    .line 755
    .line 756
    invoke-virtual {v9, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 761
    .line 762
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->isTouchpadNavigationEnabled()Z

    .line 763
    .line 764
    .line 765
    move-result v15

    .line 766
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 767
    .line 768
    iget-object v12, v2, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 769
    .line 770
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 771
    .line 772
    .line 773
    move-result v13

    .line 774
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 775
    .line 776
    .line 777
    move-result v14

    .line 778
    const/16 v16, 0x32

    .line 779
    .line 780
    const/16 v17, 0x32

    .line 781
    .line 782
    const/16 v18, 0x0

    .line 783
    .line 784
    const/16 v19, 0x0

    .line 785
    .line 786
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/projection/protocol/InputSource;->registerTouchPad(IIZIIZZ)V

    .line 787
    .line 788
    .line 789
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 790
    .line 791
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 792
    .line 793
    const/4 v2, 0x3

    .line 794
    new-array v2, v2, [I

    .line 795
    .line 796
    sget v4, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_SELECT:I

    .line 797
    .line 798
    aput v4, v2, v40

    .line 799
    .line 800
    sget v4, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_DRAG_SELECT:I

    .line 801
    .line 802
    aput v4, v2, v1

    .line 803
    .line 804
    sget v4, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_FOCUS_CHANGE:I

    .line 805
    .line 806
    aput v4, v2, v3

    .line 807
    .line 808
    new-instance v4, Lcom/google/android/projection/sink/ui/MainActivity$5;

    .line 809
    .line 810
    invoke-direct {v4, v9}, Lcom/google/android/projection/sink/ui/MainActivity$5;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0, v2, v4}, Lcom/google/android/projection/protocol/InputSource;->registerFeedbackEvents([ILcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;)V

    .line 814
    .line 815
    .line 816
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 817
    .line 818
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSource:Lcom/google/android/projection/protocol/AudioSource;

    .line 819
    .line 820
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 821
    .line 822
    invoke-virtual {v2}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->getSamplingRate()I

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    iget-object v4, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 827
    .line 828
    invoke-virtual {v4}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->getNumberOfBits()I

    .line 829
    .line 830
    .line 831
    move-result v4

    .line 832
    iget-object v5, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSourceListener:Lcom/google/android/projection/sink/audio/MicrophoneRecorder;

    .line 833
    .line 834
    invoke-virtual {v5}, Lcom/google/android/projection/sink/audio/MicrophoneRecorder;->getNumberOfChannels()I

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/projection/protocol/AudioSource;->setConfig(III)V

    .line 839
    .line 840
    .line 841
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkMediaStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 842
    .line 843
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 844
    .line 845
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 846
    .line 847
    aget-object v2, v2, v40

    .line 848
    .line 849
    invoke-virtual {v0, v2}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V

    .line 850
    .line 851
    .line 852
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkTtsStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 853
    .line 854
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 855
    .line 856
    iget-object v2, v2, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 857
    .line 858
    aget-object v1, v2, v1

    .line 859
    .line 860
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V

    .line 861
    .line 862
    .line 863
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mAudioSinkSystemStreamPlayer:Lcom/google/android/projection/sink/audio/AudioPlayer;

    .line 864
    .line 865
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 866
    .line 867
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 868
    .line 869
    aget-object v1, v1, v3

    .line 870
    .line 871
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/audio/AudioPlayer;->registerAudioSink(Lcom/google/android/projection/protocol/AudioSink;)V

    .line 872
    .line 873
    .line 874
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 875
    .line 876
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mTransport:Lcom/google/android/projection/protocol/Transport;

    .line 877
    .line 878
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/GalIntegration;->start(Lcom/google/android/projection/protocol/Transport;)V

    .line 879
    .line 880
    .line 881
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 882
    .line 883
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/sensors/SensorManager;->setGalIntegration(Lcom/google/android/projection/sink/GalIntegration;)V

    .line 886
    .line 887
    .line 888
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    if-eqz v0, :cond_8

    .line 893
    .line 894
    iget-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

    .line 895
    .line 896
    invoke-virtual {v0}, Lcom/google/android/projection/sink/ui/TestTools;->forceKeyboardLockoutOverride()V

    .line 897
    .line 898
    .line 899
    :cond_8
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 900
    new-instance v0, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;

    .line 901
    .line 902
    iget-object v1, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 903
    .line 904
    iget-object v2, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 905
    .line 906
    invoke-direct {v0, v1, v2}, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;-><init>(Lcom/google/android/projection/sink/debug/DebugContext;Lcom/google/android/projection/sink/GalIntegration;)V

    .line 907
    .line 908
    .line 909
    iput-object v0, v9, Lcom/google/android/projection/sink/ui/MainActivity;->mIntentControllerReceiver:Landroid/content/BroadcastReceiver;

    .line 910
    .line 911
    invoke-static {}, Lcom/google/android/projection/sink/ui/IntentControllerBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    .line 912
    .line 913
    .line 914
    move-result-object v1

    .line 915
    invoke-virtual {v9, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 916
    .line 917
    .line 918
    return-void

    .line 919
    :catchall_0
    move-exception v0

    .line 920
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 921
    throw v0
.end method

.method private startHostMode(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    .line 1
    const-string v0, "Starting in host mode"

    .line 2
    .line 3
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/ui/MainActivity;->checkUsbHostPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/projection/sink/transport/usb/UsbHostSetup;->processDevice(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->showConnections()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportFactory:Lcom/google/android/projection/transport/TransportFactory;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p0}, Lcom/google/android/projection/transport/TransportFactory;->open(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "Failed to start connection with "

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string p1, "Not attached to accessory yet"

    .line 56
    .line 57
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x11

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x12

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-float/2addr v1, v0

    .line 29
    const/high16 v0, 0x40a00000    # 5.0f

    .line 30
    .line 31
    mul-float/2addr v1, v0

    .line 32
    float-to-int v0, v1

    .line 33
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 44
    .line 45
    sget-object v2, Lcom/google/android/projection/proto/Protos$KeyCode;->KEYCODE_ROTARY_CONTROLLER:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$KeyCode;->getNumber()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/google/android/projection/protocol/InputSource;->sendRelativeEvent(II)Z

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/projection/sink/ui/MainActivity$10;

    .line 57
    .line 58
    invoke-direct {v2, p0, v0}, Lcom/google/android/projection/sink/ui/MainActivity$10;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;I)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v3, 0xc8

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public doBindService()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 12
    .line 13
    .line 14
    iput-boolean v2, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mIsBound:Z

    .line 15
    .line 16
    return-void
.end method

.method public doUnbindService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mIsBound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->setListener(Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mIsBound:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 3

    .line 1
    const-string v0, "usb"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "usb attached "

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "AHU.MAIN_ACTIVITY"

    .line 56
    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/projection/protocol/InputSource;->sendBackEvent()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public onConnected(Lcom/google/android/projection/protocol/Transport;)V
    .locals 1

    new-instance v0, Lcom/google/android/projection/sink/ui/MainActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/projection/sink/ui/MainActivity$8;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/protocol/Transport;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/projection/sink/LocalModeCallbacksImpl;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/google/android/projection/sink/LocalModeCallbacksImpl;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalModeCallbacks:Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/projection/sink/ui/MainActivity$LocalModeCallbacks;->isLocalMode()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalMode:Z

    .line 16
    .line 17
    new-instance p1, Lcom/google/android/projection/sink/settings/Settings;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/projection/transport/TransportFactory;->builder()Lcom/google/android/projection/transport/TransportFactory$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Lcom/google/android/projection/transport/TransportFactory$Builder;->setContext(Landroid/content/Context;)Lcom/google/android/projection/transport/TransportFactory$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/projection/transport/TransportFactory$Builder;->build()Lcom/google/android/projection/transport/TransportFactory;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportFactory:Lcom/google/android/projection/transport/TransportFactory;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Start with intent: "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const-string v0, "stop"

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    iput v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLaunchMode:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLocalMode:Z

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const/4 v1, 0x3

    .line 89
    iput v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLaunchMode:I

    .line 90
    .line 91
    :cond_2
    :goto_0
    new-instance v1, Lcom/google/android/projection/sink/debug/DebugContext;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/debug/DebugContext;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->initializeViews()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->initializeSensorServices()V

    .line 102
    .line 103
    .line 104
    sget v1, Lcom/google/android/projection/sink/R$id;->surface:I

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v2, Lcom/google/android/projection/sink/ui/MainActivity$2;

    .line 115
    .line 116
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/projection/sink/ui/MainActivity$2;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    .line 125
    .line 126
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 127
    .line 128
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportFactory:Lcom/google/android/projection/transport/TransportFactory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/projection/transport/TransportFactory;->shutdown()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportFactory:Lcom/google/android/projection/transport/TransportFactory;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTestTools:Lcom/google/android/projection/sink/ui/TestTools;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->shutdown()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSensorDispatcher:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/projection/sink/debug/DebugContext;->shutdown()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mDebugContext:Lcom/google/android/projection/sink/debug/DebugContext;

    .line 34
    .line 35
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionRenderer:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->release()V

    .line 40
    .line 41
    .line 42
    :cond_4
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mUsbDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mBluetoothStartBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->doUnbindService()V

    .line 64
    .line 65
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/sink/ui/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/ui/MainActivity$9;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/ui/MainActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/sink/ui/MainActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "stop"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mByeByeHandler:Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;

    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;->onByeByeRequest(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionRenderer:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->isStarted()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 17
    .line 18
    sget v1, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_NATIVE:I

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->resumed:Z

    .line 27
    .line 28
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mProjectionRenderer:Lcom/google/android/projection/sink/video/ProjectionRenderer;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/projection/sink/video/ProjectionRenderer;->isStarted()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mGal:Lcom/google/android/projection/sink/GalIntegration;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 18
    .line 19
    sget v2, Lcom/google/android/projection/protocol/VideoSink;->VIDEO_FOCUS_PROJECTED:I

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x12

    .line 28
    .line 29
    if-le v0, v2, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/projection/sink/ui/SystemUiHider;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    invoke-direct {v0, v2}, Lcom/google/android/projection/sink/ui/SystemUiHider;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/projection/sink/ui/SystemUiHider;->setup()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/projection/sink/ui/MainActivity;->resumed:Z

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mService:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->start()Z

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public startConnectionEstablishing(Lcom/google/android/projection/protocol/Transport;)V
    .locals 1

    new-instance v0, Lcom/google/android/projection/sink/ui/MainActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/projection/sink/ui/MainActivity$3;-><init>(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/protocol/Transport;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTcpServerMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportHandle:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 2
    .line 3
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v2, "Failed to interrupt previous attempt to establish Transport"

    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/projection/sink/ui/MainActivity;->showConnections()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportFactory:Lcom/google/android/projection/transport/TransportFactory;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v2, p0}, Lcom/google/android/projection/transport/TransportFactory;->open(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mTransportHandle:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_1
    move-exception v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Failed to start TCP server on port "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    .line 56
    .line 57
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "Starting in TCP server mode on port "

    .line 60
    .line 61
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/projection/sink/ui/MainActivity;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-void
.end method
