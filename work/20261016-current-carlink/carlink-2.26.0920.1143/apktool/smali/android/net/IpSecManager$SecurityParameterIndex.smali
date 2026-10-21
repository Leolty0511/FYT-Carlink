.class public final Landroid/net/IpSecManager$SecurityParameterIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecurityParameterIndex"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mRemoteAddress:Ljava/net/InetAddress;

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;

.field private mSpi:I


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;I)V
    .locals 5

    const-string v0, "Invalid Resource ID returned by IpSecService: "

    const-string v1, "Invalid SPI returned by IpSecService: "

    const-string v2, "Unknown status returned by IpSecService: "

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v4, 0x0

    .line 4
    iput v4, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 5
    iput-object p1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 6
    iput-object p3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mRemoteAddress:Ljava/net/InetAddress;

    .line 7
    :try_start_0
    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p3

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 8
    invoke-interface {p1, p2, p3, p4, v4}, Landroid/net/IIpSecService;->reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    iget p2, p1, Landroid/net/IpSecSpiResponse;->status:I

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_0
    new-instance p1, Landroid/net/IpSecManager$SpiUnavailableException;

    const-string p2, "Requested SPI is unavailable"

    invoke-direct {p1, p2, p4}, Landroid/net/IpSecManager$SpiUnavailableException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string p2, "No more SPIs may be allocated by this requester."

    invoke-direct {p1, p2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    iget p3, p1, Landroid/net/IpSecSpiResponse;->spi:I

    iput p3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    .line 14
    iget p1, p1, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput p1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    const-string/jumbo p1, "open"

    .line 15
    invoke-virtual {v3, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Received null response from IpSecService"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    .line 2
    .line 3
    iget v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/net/IIpSecService;->releaseSecurityParameterIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    return v0
.end method

.method public getSpi()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    return v0
.end method
