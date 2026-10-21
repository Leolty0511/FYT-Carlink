.class public Landroid/net/wifi/RttManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$ServiceHandler;,
        Landroid/net/wifi/RttManager$ResponderConfig;,
        Landroid/net/wifi/RttManager$ResponderCallback;,
        Landroid/net/wifi/RttManager$RttClient;,
        Landroid/net/wifi/RttManager$RttListener;,
        Landroid/net/wifi/RttManager$ParcelableRttResults;,
        Landroid/net/wifi/RttManager$RttResult;,
        Landroid/net/wifi/RttManager$WifiInformationElement;,
        Landroid/net/wifi/RttManager$ParcelableRttParams;,
        Landroid/net/wifi/RttManager$RttParams;,
        Landroid/net/wifi/RttManager$RttCapabilities;,
        Landroid/net/wifi/RttManager$Capabilities;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x27200

.field public static final CMD_OP_ABORTED:I = 0x27204

.field public static final CMD_OP_DISABLE_RESPONDER:I = 0x27206

.field public static final CMD_OP_ENABLE_RESPONDER:I = 0x27205

.field public static final CMD_OP_ENALBE_RESPONDER_FAILED:I = 0x27208

.field public static final CMD_OP_ENALBE_RESPONDER_SUCCEEDED:I = 0x27207

.field public static final CMD_OP_FAILED:I = 0x27202

.field public static final CMD_OP_REG_BINDER:I = 0x27209

.field public static final CMD_OP_START_RANGING:I = 0x27200

.field public static final CMD_OP_STOP_RANGING:I = 0x27201

.field public static final CMD_OP_SUCCEEDED:I = 0x27203

.field private static final DBG:Z = false

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "android.net.wifi.RttManager.Description"

.field private static final INVALID_KEY:I = 0x0

.field public static final PREAMBLE_HT:I = 0x2

.field public static final PREAMBLE_LEGACY:I = 0x1

.field public static final PREAMBLE_VHT:I = 0x4

.field public static final REASON_INITIATOR_NOT_ALLOWED_WHEN_RESPONDER_ON:I = -0x6

.field public static final REASON_INVALID_LISTENER:I = -0x3

.field public static final REASON_INVALID_REQUEST:I = -0x4

.field public static final REASON_NOT_AVAILABLE:I = -0x2

.field public static final REASON_PERMISSION_DENIED:I = -0x5

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final RTT_BW_10_SUPPORT:I = 0x2

.field public static final RTT_BW_160_SUPPORT:I = 0x20

.field public static final RTT_BW_20_SUPPORT:I = 0x4

.field public static final RTT_BW_40_SUPPORT:I = 0x8

.field public static final RTT_BW_5_SUPPORT:I = 0x1

.field public static final RTT_BW_80_SUPPORT:I = 0x10

.field public static final RTT_CHANNEL_WIDTH_10:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_160:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_20:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_40:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_5:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80P80:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_PEER_NAN:I = 0x5

.field public static final RTT_PEER_P2P_CLIENT:I = 0x4

.field public static final RTT_PEER_P2P_GO:I = 0x3

.field public static final RTT_PEER_TYPE_AP:I = 0x1

.field public static final RTT_PEER_TYPE_STA:I = 0x2

.field public static final RTT_PEER_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_STATUS_ABORTED:I = 0x8

.field public static final RTT_STATUS_FAILURE:I = 0x1

.field public static final RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final RTT_STATUS_FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final RTT_STATUS_FAIL_INVALID_TS:I = 0x9

.field public static final RTT_STATUS_FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final RTT_STATUS_FAIL_NO_CAPABILITY:I = 0x7

.field public static final RTT_STATUS_FAIL_NO_RSP:I = 0x2

.field public static final RTT_STATUS_FAIL_PROTOCOL:I = 0xa

.field public static final RTT_STATUS_FAIL_REJECTED:I = 0x3

.field public static final RTT_STATUS_FAIL_SCHEDULE:I = 0xb

.field public static final RTT_STATUS_FAIL_TM_TIMEOUT:I = 0x5

.field public static final RTT_STATUS_INVALID_REQ:I = 0xd

.field public static final RTT_STATUS_NO_WIFI:I = 0xe

.field public static final RTT_STATUS_SUCCESS:I = 0x0

.field public static final RTT_TYPE_11_MC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_11_V:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_ONE_SIDED:I = 0x1

.field public static final RTT_TYPE_TWO_SIDED:I = 0x2

.field public static final RTT_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RttManager"


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mCapabilitiesLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

.field private final mService:Landroid/net/wifi/IRttManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;Landroid/os/Looper;)V
    .locals 4

    .line 1
    const-string v0, "Get the messenger from "

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 29
    .line 30
    iput-object p1, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p2, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    .line 33
    .line 34
    new-array v1, v1, [I

    .line 35
    .line 36
    :try_start_0
    const-string v2, "RttManager"

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    new-instance v0, Landroid/os/Binder;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v0, v1}, Landroid/net/wifi/IRttManager;->getMessenger(Landroid/os/IBinder;[I)Landroid/os/Messenger;

    .line 59
    .line 60
    .line 61
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 70
    .line 71
    new-instance v0, Landroid/net/wifi/RttManager$ServiceHandler;

    .line 72
    .line 73
    invoke-direct {v0, p0, p3}, Landroid/net/wifi/RttManager$ServiceHandler;-><init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 77
    .line 78
    invoke-virtual {p3, p1, v0, p2}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 82
    .line 83
    new-instance p3, Landroid/net/wifi/RttManager$RttClient;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p3, p1}, Landroid/net/wifi/RttManager$RttClient;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const p1, 0x11001

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 99
    .line 100
    const/4 p2, 0x0

    .line 101
    aget p2, v1, p2

    .line 102
    .line 103
    const p3, 0x27209

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    const-string p2, "getMessenger() returned null!  This is invalid."

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1

    .line 118
    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    throw p1
.end method

.method public static synthetic access$002(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListener(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-exit v0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    return v0

    .line 19
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    monitor-exit v1

    .line 26
    return p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    iput v2, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return v1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method private putListenerIfAbsent(Ljava/lang/Object;)I
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :cond_1
    iget v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return v1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

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

.method private rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 2
    .line 3
    const-string v1, "RttManager"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/wifi/RttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p1, "Can not get RTT capabilities"

    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "RTT chip is not working"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    const-string v5, "Request "

    .line 38
    .line 39
    if-eq v0, v2, :cond_3

    .line 40
    .line 41
    if-eq v0, v4, :cond_3

    .line 42
    .line 43
    const-string v0, ": Illegal Request Type: "

    .line 44
    .line 45
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 50
    .line 51
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v3

    .line 55
    :cond_3
    if-ne v0, v2, :cond_4

    .line 56
    .line 57
    iget-object v6, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 58
    .line 59
    iget-boolean v6, v6, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    .line 60
    .line 61
    if-nez v6, :cond_4

    .line 62
    .line 63
    const-string p1, ": One side RTT is not supported"

    .line 64
    .line 65
    invoke-static {v5, p2, p1, v1}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return v3

    .line 69
    :cond_4
    if-ne v0, v4, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 72
    .line 73
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    const-string p1, ": two side RTT is not supported"

    .line 78
    .line 79
    invoke-static {v5, p2, p1, v1}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v3

    .line 83
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v0, :cond_14

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_6
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    const-string v0, ": Illegal number of burst: "

    .line 100
    .line 101
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 106
    .line 107
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :cond_7
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 112
    .line 113
    if-lez v0, :cond_13

    .line 114
    .line 115
    const/16 v4, 0x1f

    .line 116
    .line 117
    if-le v0, v4, :cond_8

    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_8
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 122
    .line 123
    if-ltz v0, :cond_12

    .line 124
    .line 125
    const/4 v4, 0x3

    .line 126
    if-le v0, v4, :cond_9

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_9
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 131
    .line 132
    if-ltz v0, :cond_11

    .line 133
    .line 134
    if-le v0, v4, :cond_a

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_a
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    .line 138
    .line 139
    if-eqz v0, :cond_b

    .line 140
    .line 141
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 142
    .line 143
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    .line 144
    .line 145
    if-nez v0, :cond_b

    .line 146
    .line 147
    const-string p1, ": LCI is not supported"

    .line 148
    .line 149
    invoke-static {v5, p2, p1, v1}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return v3

    .line 153
    :cond_b
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    .line 154
    .line 155
    if-eqz v0, :cond_c

    .line 156
    .line 157
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 158
    .line 159
    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    .line 160
    .line 161
    if-nez v0, :cond_c

    .line 162
    .line 163
    const-string p1, ": LCR is not supported"

    .line 164
    .line 165
    invoke-static {v5, p2, p1, v1}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return v3

    .line 169
    :cond_c
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 170
    .line 171
    if-lt v0, v2, :cond_10

    .line 172
    .line 173
    const/16 v4, 0xb

    .line 174
    .line 175
    if-le v0, v4, :cond_d

    .line 176
    .line 177
    const/16 v4, 0xf

    .line 178
    .line 179
    if-eq v0, v4, :cond_d

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_d
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 183
    .line 184
    iget-object v4, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 185
    .line 186
    iget v6, v4, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    .line 187
    .line 188
    and-int/2addr v0, v6

    .line 189
    if-nez v0, :cond_e

    .line 190
    .line 191
    const-string v0, ": Do not support this preamble: "

    .line 192
    .line 193
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 198
    .line 199
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return v3

    .line 203
    :cond_e
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 204
    .line 205
    iget v4, v4, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    .line 206
    .line 207
    and-int/2addr v0, v4

    .line 208
    if-nez v0, :cond_f

    .line 209
    .line 210
    const-string v0, ": Do not support this bandwidth: "

    .line 211
    .line 212
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 217
    .line 218
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return v3

    .line 222
    :cond_f
    return v2

    .line 223
    :cond_10
    :goto_1
    const-string v0, ": Illegal burst timeout: "

    .line 224
    .line 225
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 230
    .line 231
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    return v3

    .line 235
    :cond_11
    :goto_2
    const-string v0, ": Illegal FTMR frame retry number:"

    .line 236
    .line 237
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 242
    .line 243
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return v3

    .line 247
    :cond_12
    :goto_3
    const-string v0, ": Illegal measurement frame retry number:"

    .line 248
    .line 249
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 254
    .line 255
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return v3

    .line 259
    :cond_13
    :goto_4
    const-string v0, ": Illegal sample number per burst: "

    .line 260
    .line 261
    invoke-static {v5, p2, v0}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    iget p1, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 266
    .line 267
    invoke-static {p2, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return v3

    .line 271
    :cond_14
    :goto_5
    const-string p1, "No BSSID in params"

    .line 272
    .line 273
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    return v3
.end method

.method private validateChannel()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public disableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "RttManager"

    .line 13
    .line 14
    const-string/jumbo v0, "responder not enabled yet"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 22
    .line 23
    const v1, 0x27206

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "callback cannot be null"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public enableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->putListenerIfAbsent(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 11
    .line 12
    const v1, 0x27205

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "callback cannot be null"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public getCapabilities()Landroid/net/wifi/RttManager$Capabilities;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/net/wifi/RttManager$Capabilities;

    invoke-direct {v0, p0}, Landroid/net/wifi/RttManager$Capabilities;-><init>(Landroid/net/wifi/RttManager;)V

    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    .line 9
    .line 10
    invoke-interface {v1}, Landroid/net/wifi/IRttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    throw v1

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v1
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    aget-object v4, p1, v2

    .line 8
    .line 9
    invoke-direct {p0, v4, v3}, Landroid/net/wifi/RttManager;->rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "RTT Request Parameter Illegal"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "RttManager"

    .line 37
    .line 38
    const-string v2, "Send RTT request to RTT Service"

    .line 39
    .line 40
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 44
    .line 45
    const v2, 0x27200

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p2}, Landroid/net/wifi/RttManager;->putListener(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1, v2, v1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public stopRanging(Landroid/net/wifi/RttManager$RttListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v2, 0x27201

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
