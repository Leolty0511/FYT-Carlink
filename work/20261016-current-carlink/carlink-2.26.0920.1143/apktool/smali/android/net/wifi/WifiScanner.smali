.class public Landroid/net/wifi/WifiScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ServiceHandler;,
        Landroid/net/wifi/WifiScanner$OperationResult;,
        Landroid/net/wifi/WifiScanner$HotlistSettings;,
        Landroid/net/wifi/WifiScanner$BssidListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeListener;,
        Landroid/net/wifi/WifiScanner$WifiChangeSettings;,
        Landroid/net/wifi/WifiScanner$BssidInfo;,
        Landroid/net/wifi/WifiScanner$PnoScanListener;,
        Landroid/net/wifi/WifiScanner$ScanListener;,
        Landroid/net/wifi/WifiScanner$PnoSettings;,
        Landroid/net/wifi/WifiScanner$ParcelableScanResults;,
        Landroid/net/wifi/WifiScanner$ParcelableScanData;,
        Landroid/net/wifi/WifiScanner$ScanData;,
        Landroid/net/wifi/WifiScanner$ScanSettings;,
        Landroid/net/wifi/WifiScanner$ChannelSpec;,
        Landroid/net/wifi/WifiScanner$ActionListener;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27000

.field public static final CMD_AP_FOUND:I = 0x27009

.field public static final CMD_AP_LOST:I = 0x2700a

.field public static final CMD_DEREGISTER_SCAN_LISTENER:I = 0x2701c

.field public static final CMD_FULL_SCAN_RESULT:I = 0x27014

.field public static final CMD_GET_SCAN_RESULTS:I = 0x27004

.field public static final CMD_GET_SINGLE_SCAN_RESULTS:I = 0x2701d

.field public static final CMD_OP_FAILED:I = 0x27012

.field public static final CMD_OP_SUCCEEDED:I = 0x27011

.field public static final CMD_PERIOD_CHANGED:I = 0x27013

.field public static final CMD_PNO_NETWORK_FOUND:I = 0x2701a

.field public static final CMD_REGISTER_SCAN_LISTENER:I = 0x2701b

.field public static final CMD_SCAN:I = 0x27000

.field public static final CMD_SCAN_RESULT:I = 0x27005

.field public static final CMD_SINGLE_SCAN_COMPLETED:I = 0x27017

.field public static final CMD_START_BACKGROUND_SCAN:I = 0x27002

.field public static final CMD_START_PNO_SCAN:I = 0x27018

.field public static final CMD_START_SINGLE_SCAN:I = 0x27015

.field public static final CMD_STOP_BACKGROUND_SCAN:I = 0x27003

.field public static final CMD_STOP_PNO_SCAN:I = 0x27019

.field public static final CMD_STOP_SINGLE_SCAN:I = 0x27016

.field public static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27010

.field public static final CMD_WIFI_CHANGE_DETECTED:I = 0x2700f

.field private static final DBG:Z = false

.field public static final GET_AVAILABLE_CHANNELS_EXTRA:Ljava/lang/String; = "Channels"

.field private static final INVALID_KEY:I = 0x0

.field public static final MAX_SCAN_PERIOD_MS:I = 0xfa000

.field public static final MIN_SCAN_PERIOD_MS:I = 0x3e8

.field public static final PNO_PARAMS_PNO_SETTINGS_KEY:Ljava/lang/String; = "PnoSettings"

.field public static final PNO_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final REASON_DUPLICATE_REQEUST:I = -0x5

.field public static final REASON_INVALID_LISTENER:I = -0x2

.field public static final REASON_INVALID_REQUEST:I = -0x3

.field public static final REASON_NOT_AUTHORIZED:I = -0x4

.field public static final REASON_SUCCEEDED:I = 0x0

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final REPORT_EVENT_AFTER_BUFFER_FULL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPORT_EVENT_AFTER_EACH_SCAN:I = 0x1

.field public static final REPORT_EVENT_FULL_SCAN_RESULT:I = 0x2

.field public static final REPORT_EVENT_NO_BATCH:I = 0x4

.field public static final SCAN_PARAMS_SCAN_SETTINGS_KEY:Ljava/lang/String; = "ScanSettings"

.field public static final SCAN_PARAMS_WORK_SOURCE_KEY:Ljava/lang/String; = "WorkSource"

.field private static final TAG:Ljava/lang/String; = "WifiScanner"

.field public static final WIFI_BAND_24_GHZ:I = 0x1

.field public static final WIFI_BAND_5_GHZ:I = 0x2

.field public static final WIFI_BAND_5_GHZ_DFS_ONLY:I = 0x4

.field public static final WIFI_BAND_5_GHZ_WITH_DFS:I = 0x6

.field public static final WIFI_BAND_BOTH:I = 0x3

.field public static final WIFI_BAND_BOTH_WITH_DFS:I = 0x7

.field public static final WIFI_BAND_UNSPECIFIED:I


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mContext:Landroid/content/Context;

.field private final mInternalHandler:Landroid/os/Handler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mService:Landroid/net/wifi/IWifiScanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiScanner;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    .line 24
    .line 25
    :try_start_0
    invoke-interface {p2}, Landroid/net/wifi/IWifiScanner;->getMessenger()Landroid/os/Messenger;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance p2, Lcom/android/internal/util/AsyncChannel;

    .line 32
    .line 33
    invoke-direct {p2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 37
    .line 38
    new-instance p2, Landroid/net/wifi/WifiScanner$ServiceHandler;

    .line 39
    .line 40
    invoke-direct {p2, p0, p3}, Landroid/net/wifi/WifiScanner$ServiceHandler;-><init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    .line 44
    .line 45
    iget-object p3, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 46
    .line 47
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {p3, v0, p2, p1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 53
    .line 54
    const p2, 0x11001

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p2, "getMessenger() returned null!  This is invalid."

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    throw p1
.end method

.method public static synthetic access$002(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method public static synthetic access$100(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListener(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->putListener(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 21
    .line 22
    const-string v3, "Outstanding request with same key not stopped yet"

    .line 23
    .line 24
    const/4 v4, -0x5

    .line 25
    invoke-direct {v1, v4, v3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Landroid/net/wifi/WifiScanner;->mInternalHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const v4, 0x27012

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return v2

    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
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
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

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
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

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
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

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
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :cond_1
    :try_start_0
    iget v1, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    .line 9
    .line 10
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    iput v2, p0, Landroid/net/wifi/WifiScanner;->mListenerKey:I

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

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

.method private removeListener(Ljava/lang/Object;)I
    .locals 2

    .line 6
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->getListenerKey(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const-string v0, "WifiScanner"

    const-string/jumbo v1, "listener cannot be found"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 11
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
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroid/net/wifi/WifiScanner;->mListenerMap:Landroid/util/SparseArray;

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

.method private startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 8
    .line 9
    const-string v1, "ScanSettings"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "PnoSettings"

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 20
    .line 21
    const p2, 0x27018

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, p2, v1, p3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private validateChannel()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public configureWifiChange(IIIII[Landroid/net/wifi/WifiScanner$BssidInfo;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public deregisterScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 18
    .line 19
    const v1, 0x2701c

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getAvailableChannels(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mService:Landroid/net/wifi/IWifiScanner;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiScanner;->getAvailableChannels(I)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "Channels"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public getScanResults()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 5
    .line 6
    const v1, 0x27004

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    const v1, 0x27011

    .line 17
    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    :cond_0
    return v2
.end method

.method public getSingleScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 5
    .line 6
    const v1, 0x2701d

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    const v2, 0x27011

    .line 17
    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Error retrieving SingleScan results reason: "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v2, v0, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " description: "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "WifiScanner"

    .line 65
    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public registerScanListener(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 18
    .line 19
    const v1, 0x2701b

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method public startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 2

    const-string/jumbo v0, "listener cannot be null"

    .line 2
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ScanSettings"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "WorkSource"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const p3, 0x27002

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startConnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pnoSettings cannot be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public startDisconnectedPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$PnoScanListener;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "pnoSettings cannot be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p2, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiScanner;->startPnoScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$PnoSettings;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    return-void
.end method

.method public startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V
    .locals 2

    const-string/jumbo v0, "listener cannot be null"

    .line 2
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiScanner;->addListener(Landroid/net/wifi/WifiScanner$ActionListener;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ScanSettings"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "WorkSource"

    .line 7
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object p1, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const p3, 0x27015

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startTrackingBssids([Landroid/net/wifi/WifiScanner$BssidInfo;ILandroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public startTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 18
    .line 19
    const v1, 0x27003

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public stopPnoScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 18
    .line 19
    const v1, 0x27019

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiScanner;->removeListener(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiScanner;->validateChannel()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/net/wifi/WifiScanner;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 18
    .line 19
    const v1, 0x27016

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public stopTrackingBssids(Landroid/net/wifi/WifiScanner$BssidListener;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public stopTrackingWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeListener;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
