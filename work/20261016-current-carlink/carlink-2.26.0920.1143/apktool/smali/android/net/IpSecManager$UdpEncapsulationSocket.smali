.class public final Landroid/net/IpSecManager$UdpEncapsulationSocket;
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
    name = "UdpEncapsulationSocket"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private final mPort:I

.field private final mResourceId:I

.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;I)V
    .locals 3

    const-string v0, "Unknown status returned by IpSecService: "

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 4
    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    .line 5
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 6
    invoke-interface {p1, p2, v2}, Landroid/net/IIpSecService;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object p1

    .line 7
    iget p2, p1, Landroid/net/IpSecUdpEncapResponse;->status:I

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 8
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/net/IpSecUdpEncapResponse;->status:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_0
    new-instance p1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string p2, "No more Sockets may be allocated by this requester."

    invoke-direct {p1, p2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    iget p2, p1, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    iput p2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 11
    iget p2, p1, Landroid/net/IpSecUdpEncapResponse;->port:I

    iput p2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    .line 12
    iget-object p1, p1, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "constructor"

    .line 13
    invoke-virtual {v1, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    .line 2
    .line 3
    iget v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/net/IIpSecService;->closeUdpEncapsulationSocket(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 14
    .line 15
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Failed to close UDP Encapsulation Socket with Port= "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    .line 28
    .line 29
    const-string v3, "IpSecManager"

    .line 30
    .line 31
    invoke-static {v1, v2, v3}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

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
    invoke-virtual {p0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    return v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    return v0
.end method

.method public getSocket()Ljava/io/FileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
