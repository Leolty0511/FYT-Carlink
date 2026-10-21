.class public final Landroid/bluetooth/BluetoothHeadsetClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_AG_EVENT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_EVENT"

.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_CALL_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_LAST_VTAG:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

.field public static final ACTION_RESULT:Ljava/lang/String; = "android.bluetooth.headsetclient.profile.action.RESULT"

.field public static final ACTION_RESULT_ERROR:I = 0x1

.field public static final ACTION_RESULT_ERROR_BLACKLISTED:I = 0x6

.field public static final ACTION_RESULT_ERROR_BUSY:I = 0x3

.field public static final ACTION_RESULT_ERROR_CME:I = 0x7

.field public static final ACTION_RESULT_ERROR_DELAYED:I = 0x5

.field public static final ACTION_RESULT_ERROR_NO_ANSWER:I = 0x4

.field public static final ACTION_RESULT_ERROR_NO_CARRIER:I = 0x2

.field public static final ACTION_RESULT_OK:I = 0x0

.field public static final CALL_ACCEPT_HOLD:I = 0x1

.field public static final CALL_ACCEPT_NONE:I = 0x0

.field public static final CALL_ACCEPT_TERMINATE:I = 0x2

.field public static final CME_CORPORATE_PERSONALIZATION_PIN_REQUIRED:I = 0x2e

.field public static final CME_CORPORATE_PERSONALIZATION_PUK_REQUIRED:I = 0x2f

.field public static final CME_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final CME_EAP_NOT_SUPPORTED:I = 0x31

.field public static final CME_EMERGENCY_SERVICE_ONLY:I = 0x20

.field public static final CME_HIDDEN_KEY_REQUIRED:I = 0x30

.field public static final CME_INCORRECT_PARAMETERS:I = 0x32

.field public static final CME_INCORRECT_PASSWORD:I = 0x10

.field public static final CME_INVALID_CHARACTER_IN_DIAL_STRING:I = 0x1b

.field public static final CME_INVALID_CHARACTER_IN_TEXT_STRING:I = 0x19

.field public static final CME_INVALID_INDEX:I = 0x15

.field public static final CME_MEMORY_FAILURE:I = 0x17

.field public static final CME_MEMORY_FULL:I = 0x14

.field public static final CME_NETWORK_PERSONALIZATION_PIN_REQUIRED:I = 0x28

.field public static final CME_NETWORK_PERSONALIZATION_PUK_REQUIRED:I = 0x29

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PIN_REQUIRED:I = 0x2a

.field public static final CME_NETWORK_SUBSET_PERSONALIZATION_PUK_REQUIRED:I = 0x2b

.field public static final CME_NETWORK_TIMEOUT:I = 0x1f

.field public static final CME_NOT_FOUND:I = 0x16

.field public static final CME_NOT_SUPPORTED_FOR_VOIP:I = 0x22

.field public static final CME_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final CME_NO_NETWORK_SERVICE:I = 0x1e

.field public static final CME_NO_SIMULTANOUS_VOIP_CS_CALLS:I = 0x21

.field public static final CME_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final CME_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final CME_PHFSIM_PIN_REQUIRED:I = 0x6

.field public static final CME_PHFSIM_PUK_REQUIRED:I = 0x7

.field public static final CME_PHONE_FAILURE:I = 0x0

.field public static final CME_PHSIM_PIN_REQUIRED:I = 0x5

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PIN_REQUIRED:I = 0x2c

.field public static final CME_SERVICE_PROVIDER_PERSONALIZATION_PUK_REQUIRED:I = 0x2d

.field public static final CME_SIM_BUSY:I = 0xe

.field public static final CME_SIM_FAILURE:I = 0xd

.field public static final CME_SIM_NOT_INSERTED:I = 0xa

.field public static final CME_SIM_PIN2_REQUIRED:I = 0x11

.field public static final CME_SIM_PIN_REQUIRED:I = 0xb

.field public static final CME_SIM_PUK2_REQUIRED:I = 0x12

.field public static final CME_SIM_PUK_REQUIRED:I = 0xc

.field public static final CME_SIM_WRONG:I = 0xf

.field public static final CME_SIP_RESPONSE_CODE:I = 0x23

.field public static final CME_TEXT_STRING_TOO_LONG:I = 0x18

.field private static final DBG:Z = true

.field public static final EXTRA_AG_FEATURE_3WAY_CALLING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

.field public static final EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

.field public static final EXTRA_AG_FEATURE_ECC:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

.field public static final EXTRA_AG_FEATURE_MERGE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE"

.field public static final EXTRA_AG_FEATURE_MERGE_AND_DETACH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

.field public static final EXTRA_AG_FEATURE_REJECT_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

.field public static final EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

.field public static final EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

.field public static final EXTRA_AG_FEATURE_RESPONSE_AND_HOLD:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_RESPONSE_AND_HOLD"

.field public static final EXTRA_AG_FEATURE_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

.field public static final EXTRA_AUDIO_WBS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.AUDIO_WBS"

.field public static final EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

.field public static final EXTRA_CALL:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CALL"

.field public static final EXTRA_CME_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.CME_CODE"

.field public static final EXTRA_IN_BAND_RING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.IN_BAND_RING"

.field public static final EXTRA_NETWORK_ROAMING:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

.field public static final EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final EXTRA_NETWORK_STATUS:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

.field public static final EXTRA_NUMBER:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.NUMBER"

.field public static final EXTRA_OPERATOR_NAME:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

.field public static final EXTRA_RESULT_CODE:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.RESULT_CODE"

.field public static final EXTRA_SUBSCRIBER_INFO:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

.field public static final EXTRA_VOICE_RECOGNITION:Ljava/lang/String; = "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

.field public static final STATE_AUDIO_CONNECTED:I = 0x2

.field public static final STATE_AUDIO_CONNECTING:I = 0x1

.field public static final STATE_AUDIO_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadsetClient"

.field private static final VDBG:Z = false


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothHeadsetClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClient$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHeadsetClient$1;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 10
    .line 11
    new-instance v1, Landroid/bluetooth/BluetoothHeadsetClient$2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHeadsetClient$2;-><init>(Landroid/bluetooth/BluetoothHeadsetClient;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 21
    .line 22
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    const-string p2, "BluetoothHeadsetClient"

    .line 40
    .line 41
    const-string v0, ""

    .line 42
    .line 43
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->doBind()Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic access$000(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/IBluetoothHeadsetClient;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method private isEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "BluetoothHeadsetClient"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 1
    const-string v0, "acceptCall()"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 7
    .line 8
    const-string v1, "BluetoothHeadsetClient"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p1

    .line 29
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "Proxy not attached to service"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "BluetoothHeadsetClient"

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :try_start_2
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 32
    .line 33
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception v1

    .line 42
    :try_start_3
    const-string v3, "BluetoothHeadsetClient"

    .line 43
    .line 44
    const-string v4, ""

    .line 45
    .line 46
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    iput-object v2, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1
    const-string v0, "connect("

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/app/m;->g(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 13
    .line 14
    const-string v1, "BluetoothHeadsetClient"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return p1

    .line 36
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string p1, "Proxy not attached to service"

    .line 43
    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    return v2
.end method

.method public connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 28
    .line 29
    invoke-static {v1, p1, v1}, Landroid/app/m;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 3

    .line 1
    const-string v0, "dial()"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 7
    .line 8
    const-string v1, "BluetoothHeadsetClient"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "Proxy not attached to service"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1
    const-string v0, "disconnect("

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/app/m;->g(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 13
    .line 14
    const-string v1, "BluetoothHeadsetClient"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return p1

    .line 36
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string p1, "Proxy not attached to service"

    .line 43
    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_1
    return v2
.end method

.method public disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 28
    .line 29
    invoke-static {v1, p1, v1}, Landroid/app/m;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public doBind()Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v3, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mConnection:Landroid/content/ServiceConnection;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 44
    return v0

    .line 45
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v3, "Could not bind to Bluetooth Headset Client Service with "

    .line 48
    .line 49
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "BluetoothHeadsetClient"

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return v2
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 1
    const-string v0, "enterPrivateMode()"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 7
    .line 8
    const-string v1, "BluetoothHeadsetClient"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p1

    .line 29
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "Proxy not attached to service"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    const-string v0, "explicitCallTransfer()"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 7
    .line 8
    const-string v1, "BluetoothHeadsetClient"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p1

    .line 29
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "Proxy not attached to service"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 28
    .line 29
    invoke-static {v1, p1, v1}, Landroid/app/m;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 28
    .line 29
    invoke-static {v1, p1, v1}, Landroid/app/m;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object v0

    .line 18
    :catch_0
    new-instance v0, Ljava/lang/Throwable;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "Proxy not attached to service"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string p1, "Proxy not attached to service"

    .line 32
    .line 33
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    return v2
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3

    .line 1
    const-string v0, "getCurrentCalls()"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 7
    .line 8
    const-string v1, "BluetoothHeadsetClient"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "Proxy not attached to service"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 28
    .line 29
    invoke-static {v1, p1, v1}, Landroid/app/m;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "getCurrentCalls()"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 7
    .line 8
    const-string v1, "BluetoothHeadsetClient"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p1

    .line 29
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "Proxy not attached to service"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    new-instance p1, Ljava/lang/Throwable;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string p1, "Proxy not attached to service"

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    const-string v0, "getLastVoiceTagNumber()"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 7
    .line 8
    const-string v1, "BluetoothHeadsetClient"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p1

    .line 29
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p1, "Proxy not attached to service"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string p1, "Proxy not attached to service"

    .line 32
    .line 33
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    return v2
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "holdCall()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 8
    .line 9
    const-string v1, "BluetoothHeadsetClient"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p1, "Proxy not attached to service"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "rejectCall()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 8
    .line 9
    const-string v1, "BluetoothHeadsetClient"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p1, "Proxy not attached to service"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "sendDTMF()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 8
    .line 9
    const-string v1, "BluetoothHeadsetClient"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p1, "Proxy not attached to service"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 2
    .line 3
    const-string v1, "BluetoothHeadsetClient"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "Proxy not attached to service"

    .line 27
    .line 28
    invoke-static {v1, p1, v1}, Landroid/app/m;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setPriority("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ")"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 33
    .line 34
    const-string v1, "BluetoothHeadsetClient"

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    const/16 v3, 0x64

    .line 54
    .line 55
    if-eq p2, v3, :cond_0

    .line 56
    .line 57
    return v2

    .line 58
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return p1

    .line 63
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_1
    if-nez v0, :cond_2

    .line 68
    .line 69
    const-string p1, "Proxy not attached to service"

    .line 70
    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    return v2
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "startVoiceRecognition()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 8
    .line 9
    const-string v1, "BluetoothHeadsetClient"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p1, "Proxy not attached to service"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "stopVoiceRecognition()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 8
    .line 9
    const-string v1, "BluetoothHeadsetClient"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetClient;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p1, "Proxy not attached to service"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "terminateCall()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->log(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClient;->mService:Landroid/bluetooth/IBluetoothHeadsetClient;

    .line 8
    .line 9
    const-string v1, "BluetoothHeadsetClient"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadsetClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    invoke-static {v1}, Landroid/app/m;->o(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    const-string p1, "Proxy not attached to service"

    .line 36
    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    return p1
.end method
