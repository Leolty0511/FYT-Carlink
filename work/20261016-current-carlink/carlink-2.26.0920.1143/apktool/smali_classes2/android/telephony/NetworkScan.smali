.class public Landroid/telephony/NetworkScan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_INTERRUPTED:I = 0x2712

.field public static final ERROR_INVALID_SCAN:I = 0x2

.field public static final ERROR_INVALID_SCANID:I = 0x2711

.field public static final ERROR_MODEM_BUSY:I = 0x3

.field public static final ERROR_MODEM_ERROR:I = 0x1

.field public static final ERROR_RIL_ERROR:I = 0x2710

.field public static final ERROR_UNSUPPORTED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "NetworkScan"


# instance fields
.field private final mScanId:I

.field private final mSubId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/telephony/NetworkScan;->mScanId:I

    .line 5
    .line 6
    iput p2, p0, Landroid/telephony/NetworkScan;->mSubId:I

    .line 7
    .line 8
    return-void
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


# virtual methods
.method public stop()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/NetworkScan;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Landroid/telephony/NetworkScan;->mSubId:I

    .line 8
    .line 9
    iget v2, p0, Landroid/telephony/NetworkScan;->mScanId:I

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->stopNetworkScan(II)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    .line 16
    .line 17
    const-string v1, "Failed to get the ITelephony instance."

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v1, "NetworkScan"

    .line 25
    .line 26
    const-string/jumbo v2, "stopNetworkScan  RemoteException"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/os/RemoteException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Failed to stop the network scan with id "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v2, p0, Landroid/telephony/NetworkScan;->mScanId:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method
