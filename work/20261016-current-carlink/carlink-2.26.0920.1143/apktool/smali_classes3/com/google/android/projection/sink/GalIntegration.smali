.class public Lcom/google/android/projection/sink/GalIntegration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;,
        Lcom/google/android/projection/sink/GalIntegration$Display;
    }
.end annotation


# static fields
.field private static final AUDIO_SERVICE_MEDIA_ID:I = 0x4

.field private static final AUDIO_SERVICE_SYSTEM_ID:I = 0x6

.field private static final AUDIO_SERVICE_TTS_ID:I = 0x5

.field public static final AUDIO_SINK_INDEX_MEDIA:I = 0x0

.field public static final AUDIO_SINK_INDEX_SYSTEM:I = 0x2

.field public static final AUDIO_SINK_INDEX_TTS:I = 0x1

.field private static final AUDIO_SOURCE_SERVICE_ID:I = 0x7

.field private static final BLUETOOTH_SERVICE_ID:I = 0x8

.field private static final ECHO_VENDOR_EXTENSION_SERVICE_ID:I = 0xe

.field private static final GAL_VERIFICATION_VENDOR_EXTENSION_SERVICE_ID:I = 0xd

.field public static final MAIN_DISPLAY_ID:I = 0x0

.field private static final MEDIA_BROWSE_SERVICE_ID:I = 0xb

.field private static final MEDIA_PLAYBACK_STATUS_SERVICE_ID:I = 0xa

.field private static final NAVIGATION_STATUS_SERVICE_ID:I = 0x9

.field public static final NUM_AUDIO_SINKS:I = 0x3

.field private static final PHONE_STATUS_SERVICE_ID:I = 0xc

.field private static final RADIO_SERVICE_ID:I = 0x1

.field private static final SENSOR_SERVICE_ID:I = 0x3

.field public static final USB_DISCONNECT_INTENT:Ljava/lang/String; = "usb-disconnect"

.field private static final WIFI_PROJECTION_SERVICE_ID:I = 0x2


# instance fields
.field public audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

.field public audioSource:Lcom/google/android/projection/protocol/AudioSource;

.field public bluetooth:Lcom/google/android/projection/protocol/BluetoothEndpoint;

.field private final currentDisplayId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public displayIdDisplayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/projection/sink/GalIntegration$Display;",
            ">;"
        }
    .end annotation
.end field

.field public echoVendorExtension:Lcom/google/android/projection/protocol/EchoVendorExtension;

.field public galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

.field public galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

.field private mSurfaceView:Landroid/view/View;

.field public mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

.field public mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

.field public mediaBrowse:Lcom/google/android/projection/protocol/MediaBrowser;

.field public mediaPlaybackStatus:Lcom/google/android/projection/protocol/MediaPlaybackStatus;

.field public navigationStatus:Lcom/google/android/projection/protocol/NavigationStatus;

.field private final nextDisplayServiceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public phoneStatus:Lcom/google/android/projection/protocol/PhoneStatus;

.field public radioEndpoint:Lcom/google/android/projection/protocol/RadioEndpoint;

.field public sensors:Lcom/google/android/projection/protocol/SensorSource;

.field public wifiProjEndpoint:Lcom/google/android/projection/protocol/WifiProjectionEndpoint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->nextDisplayServiceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->displayIdDisplayMap:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->currentDisplayId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/GalIntegration;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/GalIntegration;->mSurfaceView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public addDisplay(Lcom/google/android/projection/proto/Protos$DisplayType;Lcom/google/android/projection/protocol/VideoSink;Lcom/google/android/projection/protocol/InputSource;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/projection/sink/GalIntegration$Display;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/GalIntegration;->currentDisplayId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/projection/sink/GalIntegration$Display;-><init>(Lcom/google/android/projection/proto/Protos$DisplayType;Lcom/google/android/projection/protocol/VideoSink;Lcom/google/android/projection/protocol/InputSource;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/projection/sink/GalIntegration;->displayIdDisplayMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/projection/sink/GalIntegration$Display;->getDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public createDefaultInputInjector()Lcom/google/android/projection/protocol/InputSource$InputInjector;
    .locals 2

    new-instance v0, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;

    iget-object v1, p0, Lcom/google/android/projection/sink/GalIntegration;->currentDisplayId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;-><init>(Lcom/google/android/projection/sink/GalIntegration;I)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-virtual {v0}, Lcom/google/android/projection/protocol/GalReceiver;->destroy()V

    return-void
.end method

.method public getCurrentDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->currentDisplayId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;[I[ILandroid/view/SurfaceView;Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;Z[Lcom/google/android/projection/protocol/AudioSink$AudioListener;Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;Lcom/google/android/projection/protocol/GalReceiver$UserSwitchListener;Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;Lcom/google/android/projection/sink/InstrumentClusterListener;Lcom/google/android/projection/sink/audio/AudioFocusManager;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Lcom/google/android/projection/protocol/Radio;Lcom/google/android/projection/protocol/CarWifi;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p15

    move-object/from16 v3, p18

    move-object/from16 v4, p4

    move-object/from16 v5, p24

    .line 1
    iput-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->mSurfaceView:Landroid/view/View;

    .line 2
    new-instance v15, Lcom/google/android/projection/protocol/GalReceiver;

    move-object v6, v15

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p20

    move-object/from16 v12, p17

    move-object/from16 v13, p21

    move-object/from16 v14, p22

    move-object v4, v15

    move-object/from16 v15, p23

    invoke-direct/range {v6 .. v15}, Lcom/google/android/projection/protocol/GalReceiver;-><init>(Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;Lcom/google/android/projection/protocol/GalReceiver$ProjectedModeIconReceiver;Lcom/google/android/projection/protocol/GalReceiver$ByeByeHandler;Landroid/os/Handler;Lcom/google/android/projection/protocol/GalReceiver$CarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    .line 3
    new-instance v4, Lcom/google/android/projection/protocol/InputSource;

    new-instance v6, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/google/android/projection/sink/GalIntegration$DefaultInputInjector;-><init>(Lcom/google/android/projection/sink/GalIntegration;I)V

    invoke-direct {v4, v6}, Lcom/google/android/projection/protocol/InputSource;-><init>(Lcom/google/android/projection/protocol/InputSource$InputInjector;)V

    iput-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 4
    new-instance v4, Lcom/google/android/projection/protocol/SensorSource;

    const/4 v6, 0x2

    new-array v8, v6, [Lcom/google/android/projection/proto/Protos$FuelType;

    sget-object v9, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_UNLEADED:Lcom/google/android/projection/proto/Protos$FuelType;

    aput-object v9, v8, v7

    sget-object v9, Lcom/google/android/projection/proto/Protos$FuelType;->FUEL_TYPE_ELECTRIC:Lcom/google/android/projection/proto/Protos$FuelType;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    new-array v9, v6, [Lcom/google/android/projection/proto/Protos$EvConnectorType;

    sget-object v11, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_CHADEMO:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    aput-object v11, v9, v7

    sget-object v11, Lcom/google/android/projection/proto/Protos$EvConnectorType;->EV_CONNECTOR_TYPE_J1772:Lcom/google/android/projection/proto/Protos$EvConnectorType;

    aput-object v11, v9, v10

    const/16 v11, 0x100

    move-object/from16 v12, p3

    invoke-direct {v4, v12, v11, v8, v9}, Lcom/google/android/projection/protocol/SensorSource;-><init>([II[Lcom/google/android/projection/proto/Protos$FuelType;[Lcom/google/android/projection/proto/Protos$EvConnectorType;)V

    iput-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->sensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 5
    new-instance v4, Lcom/google/android/projection/protocol/VideoSink;

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct {v4, v8, v9, v7}, Lcom/google/android/projection/protocol/VideoSink;-><init>(Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;ZI)V

    iput-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 6
    new-instance v8, Lcom/google/android/projection/sink/GalIntegration$Display;

    sget-object v9, Lcom/google/android/projection/proto/Protos$DisplayType;->DISPLAY_TYPE_MAIN:Lcom/google/android/projection/proto/Protos$DisplayType;

    iget-object v11, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    invoke-direct {v8, v9, v4, v11, v7}, Lcom/google/android/projection/sink/GalIntegration$Display;-><init>(Lcom/google/android/projection/proto/Protos$DisplayType;Lcom/google/android/projection/protocol/VideoSink;Lcom/google/android/projection/protocol/InputSource;I)V

    .line 7
    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->displayIdDisplayMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->displayIdDisplayMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/projection/sink/GalIntegration$Display;

    .line 9
    iget-object v9, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v11, v0, Lcom/google/android/projection/sink/GalIntegration;->nextDisplayServiceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    invoke-virtual {v8}, Lcom/google/android/projection/sink/GalIntegration$Display;->getVideoSink()Lcom/google/android/projection/protocol/VideoSink;

    move-result-object v12

    .line 11
    invoke-virtual {v9, v11, v12}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 12
    iget-object v9, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v11, v0, Lcom/google/android/projection/sink/GalIntegration;->nextDisplayServiceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    invoke-virtual {v8}, Lcom/google/android/projection/sink/GalIntegration$Display;->getInputSource()Lcom/google/android/projection/protocol/InputSource;

    move-result-object v8

    .line 14
    invoke-virtual {v9, v11, v8}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    goto :goto_0

    .line 15
    :cond_0
    array-length v4, v1

    new-array v4, v4, [Lcom/google/android/projection/protocol/AudioSink;

    iput-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    move v4, v7

    .line 16
    :goto_1
    iget-object v8, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 17
    new-instance v9, Lcom/google/android/projection/protocol/AudioSink;

    aget-object v11, v1, v4

    invoke-direct {v9, v11}, Lcom/google/android/projection/protocol/AudioSink;-><init>(Lcom/google/android/projection/protocol/AudioSink$AudioListener;)V

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_1
    new-instance v1, Lcom/google/android/projection/protocol/AudioSource;

    sget-object v4, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_AUDIO_PCM:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    move-object/from16 v8, p8

    invoke-direct {v1, v4, v8}, Lcom/google/android/projection/protocol/AudioSource;-><init>(Lcom/google/android/projection/proto/Protos$MediaCodecType;Lcom/google/android/projection/protocol/AudioSource$AudioSourceListener;)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSource:Lcom/google/android/projection/protocol/AudioSource;

    .line 19
    new-instance v1, Lcom/google/android/projection/protocol/BluetoothEndpoint;

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p14

    invoke-direct {v1, v9, v4, v8}, Lcom/google/android/projection/protocol/BluetoothEndpoint;-><init>(Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;Ljava/lang/String;[I)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->bluetooth:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    .line 20
    new-instance v1, Lcom/google/android/projection/protocol/NavigationStatus;

    const/16 v4, 0x1f4

    sget-object v8, Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;->IMAGE:Lcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;

    const/16 v9, 0x1e0

    const/16 v11, 0x1e0

    const/16 v12, 0x10

    move-object/from16 p5, v1

    move-object/from16 p6, p15

    move/from16 p7, v4

    move-object/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v11

    move/from16 p11, v12

    invoke-direct/range {p5 .. p11}, Lcom/google/android/projection/protocol/NavigationStatus;-><init>(Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;ILcom/google/android/projection/proto/Protos$NavigationStatusService$InstrumentClusterType;III)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->navigationStatus:Lcom/google/android/projection/protocol/NavigationStatus;

    .line 21
    new-instance v1, Lcom/google/android/projection/protocol/MediaPlaybackStatus;

    invoke-direct {v1, v2}, Lcom/google/android/projection/protocol/MediaPlaybackStatus;-><init>(Lcom/google/android/projection/protocol/MediaPlaybackStatus$MediaPlaybackStatusListener;)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->mediaPlaybackStatus:Lcom/google/android/projection/protocol/MediaPlaybackStatus;

    .line 22
    new-instance v1, Lcom/google/android/projection/protocol/MediaBrowser;

    invoke-direct {v1, v2}, Lcom/google/android/projection/protocol/MediaBrowser;-><init>(Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->mediaBrowse:Lcom/google/android/projection/protocol/MediaBrowser;

    .line 23
    new-instance v1, Lcom/google/android/projection/protocol/PhoneStatus;

    invoke-direct {v1, v2}, Lcom/google/android/projection/protocol/PhoneStatus;-><init>(Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->phoneStatus:Lcom/google/android/projection/protocol/PhoneStatus;

    .line 24
    new-instance v1, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->sensors:Lcom/google/android/projection/protocol/SensorSource;

    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    iget-object v8, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayInputSource:Lcom/google/android/projection/protocol/InputSource;

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v4

    move-object/from16 p8, v8

    move-object/from16 p9, p4

    move-object/from16 p10, p16

    invoke-direct/range {p5 .. p10}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;-><init>(Lcom/google/android/projection/protocol/SensorSource;Lcom/google/android/projection/protocol/VideoSink;Lcom/google/android/projection/protocol/InputSource;Landroid/view/SurfaceView;Lcom/google/android/projection/protocol/GalVerificationVendorExtension$AudioFocusManager;)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 25
    new-instance v1, Lcom/google/android/projection/protocol/EchoVendorExtension;

    invoke-direct {v1}, Lcom/google/android/projection/protocol/EchoVendorExtension;-><init>()V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->echoVendorExtension:Lcom/google/android/projection/protocol/EchoVendorExtension;

    .line 26
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->sensors:Lcom/google/android/projection/protocol/SensorSource;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 27
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v2, 0x8

    iget-object v8, v0, Lcom/google/android/projection/sink/GalIntegration;->bluetooth:Lcom/google/android/projection/protocol/BluetoothEndpoint;

    invoke-virtual {v1, v2, v8}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 28
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    array-length v2, v1

    const/4 v8, 0x6

    if-ne v2, v4, :cond_2

    .line 29
    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/4 v4, 0x4

    aget-object v1, v1, v7

    invoke-virtual {v2, v4, v1}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 30
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    aget-object v2, v2, v10

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 31
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSinks:[Lcom/google/android/projection/protocol/AudioSink;

    aget-object v2, v2, v6

    invoke-virtual {v1, v8, v2}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    goto :goto_2

    .line 32
    :cond_2
    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    aget-object v1, v1, v7

    invoke-virtual {v2, v8, v1}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 33
    :goto_2
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/4 v2, 0x7

    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->audioSource:Lcom/google/android/projection/protocol/AudioSource;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 34
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v2, 0x9

    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->navigationStatus:Lcom/google/android/projection/protocol/NavigationStatus;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 35
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v2, 0xa

    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->mediaPlaybackStatus:Lcom/google/android/projection/protocol/MediaPlaybackStatus;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 36
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v2, 0xb

    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->mediaBrowse:Lcom/google/android/projection/protocol/MediaBrowser;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 37
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v2, 0xc

    iget-object v4, v0, Lcom/google/android/projection/sink/GalIntegration;->phoneStatus:Lcom/google/android/projection/protocol/PhoneStatus;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    if-eqz v5, :cond_3

    .line 38
    new-instance v1, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;

    move-object/from16 v2, p19

    invoke-direct {v1, v5, v2}, Lcom/google/android/projection/protocol/WifiProjectionEndpoint;-><init>(Ljava/lang/String;Lcom/google/android/projection/protocol/CarWifi;)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->wifiProjEndpoint:Lcom/google/android/projection/protocol/WifiProjectionEndpoint;

    .line 39
    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-virtual {v2, v6, v1}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    :cond_3
    if-eqz v3, :cond_4

    .line 40
    new-instance v1, Lcom/google/android/projection/protocol/RadioEndpoint;

    invoke-direct {v1, v3}, Lcom/google/android/projection/protocol/RadioEndpoint;-><init>(Lcom/google/android/projection/protocol/Radio;)V

    iput-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->radioEndpoint:Lcom/google/android/projection/protocol/RadioEndpoint;

    .line 41
    invoke-virtual {v3, v1}, Lcom/google/android/projection/protocol/Radio;->setRadioEndpoint(Lcom/google/android/projection/protocol/Radio$RadioEndpoint;)V

    .line 42
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v2, v0, Lcom/google/android/projection/sink/GalIntegration;->radioEndpoint:Lcom/google/android/projection/protocol/RadioEndpoint;

    invoke-virtual {v1, v10, v2}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 43
    :cond_4
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v2, 0xd

    iget-object v3, v0, Lcom/google/android/projection/sink/GalIntegration;->galVerificationVendorExtension:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    .line 44
    iget-object v1, v0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    const/16 v2, 0xe

    iget-object v3, v0, Lcom/google/android/projection/sink/GalIntegration;->echoVendorExtension:Lcom/google/android/projection/protocol/EchoVendorExtension;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/projection/protocol/GalReceiver;->registerCarService(ILcom/google/android/projection/protocol/CarServiceProvider;)Z

    return v10
.end method

.method public start(Lcom/google/android/projection/protocol/Transport;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->start(Lcom/google/android/projection/protocol/Transport;)V

    return-void
.end method

.method public stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration;->galReceiver:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-virtual {v0, p1}, Lcom/google/android/projection/protocol/GalReceiver;->stop(Lcom/google/android/projection/protocol/Transport$StopReason;)V

    return-void
.end method
