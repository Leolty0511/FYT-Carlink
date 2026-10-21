.class public final Landroid/net/IpSecManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecManager$UdpEncapsulationSocket;,
        Landroid/net/IpSecManager$SecurityParameterIndex;,
        Landroid/net/IpSecManager$ResourceUnavailableException;,
        Landroid/net/IpSecManager$SpiUnavailableException;,
        Landroid/net/IpSecManager$Status;
    }
.end annotation


# static fields
.field public static final INVALID_RESOURCE_ID:I = 0x0

.field public static final INVALID_SECURITY_PARAMETER_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpSecManager"


# instance fields
.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method public constructor <init>(Landroid/net/IIpSecService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "missing service"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/net/IIpSecService;

    .line 12
    .line 13
    iput-object p1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 14
    .line 15
    return-void
.end method

.method private applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 16
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/net/IIpSecService;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 16
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/net/IIpSecService;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public applyTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 11
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 12
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 14
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public applyTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 6
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 9
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public applyTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 4
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public applyTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .locals 0

    return-void
.end method

.method public openUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 4

    .line 3
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$1;)V

    return-object v0
.end method

.method public openUdpEncapsulationSocket(I)Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$1;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Specified port must be a valid port number!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 11
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 12
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 14
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 15
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public removeTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 6
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 9
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public removeTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 4
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public removeTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .locals 0

    return-void
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 7

    .line 1
    :try_start_0
    new-instance v6, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$1;)V
    :try_end_0
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 2
    :catch_0
    new-instance p1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string p2, "No SPIs available"

    invoke-direct {p1, p2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 7

    if-eqz p3, :cond_0

    .line 3
    new-instance v6, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$1;)V

    return-object v6

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested SPI must be a valid (non-zero) SPI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
