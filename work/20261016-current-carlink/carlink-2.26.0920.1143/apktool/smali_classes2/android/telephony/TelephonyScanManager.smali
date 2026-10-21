.class public final Landroid/telephony/TelephonyScanManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyScanManager$NetworkScanInfo;,
        Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_SCAN_COMPLETE:I = 0x3

.field public static final CALLBACK_SCAN_ERROR:I = 0x2

.field public static final CALLBACK_SCAN_RESULTS:I = 0x1

.field public static final SCAN_RESULT_KEY:Ljava/lang/String; = "scanResult"

.field private static final TAG:Ljava/lang/String; = "TelephonyScanManager"


# instance fields
.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private mScanInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyScanManager$NetworkScanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    .line 12
    .line 13
    const-string v1, "TelephonyScanManager"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    .line 26
    .line 27
    new-instance v1, Landroid/os/Messenger;

    .line 28
    .line 29
    new-instance v2, Landroid/telephony/TelephonyScanManager$1;

    .line 30
    .line 31
    invoke-direct {v2, p0, v0}, Landroid/telephony/TelephonyScanManager$1;-><init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .line 1
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private saveScanInfo(ILandroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    .line 5
    .line 6
    new-instance v2, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 7
    .line 8
    invoke-direct {v2, p2, p3}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;-><init>(Landroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

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


# virtual methods
.method public requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .locals 4

    .line 1
    const-string v0, "TelephonyScanManager"

    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyScanManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    .line 10
    .line 11
    new-instance v3, Landroid/os/Binder;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ITelephony;->requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {p0, v1, p2, p3}, Landroid/telephony/TelephonyScanManager;->saveScanInfo(ILandroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Landroid/telephony/NetworkScan;

    .line 24
    .line 25
    invoke-direct {p2, v1, p1}, Landroid/telephony/NetworkScan;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object p2

    .line 29
    :catch_0
    move-exception p1

    .line 30
    const-string p2, "requestNetworkScan NPE"

    .line 31
    .line 32
    invoke-static {v0, p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p1

    .line 37
    const-string p2, "requestNetworkScan RemoteException"

    .line 38
    .line 39
    invoke-static {v0, p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 43
    return-object p1
.end method
