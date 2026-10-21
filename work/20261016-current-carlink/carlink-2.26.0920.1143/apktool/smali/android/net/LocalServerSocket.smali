.class public Landroid/net/LocalServerSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LISTEN_BACKLOG:I = 0x32


# instance fields
.field private final impl:Landroid/net/LocalSocketImpl;

.field private final localAddress:Landroid/net/LocalSocketAddress;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0, p1}, Landroid/net/LocalSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/16 p1, 0x32

    .line 9
    invoke-virtual {v0, p1}, Landroid/net/LocalSocketImpl;->listen(I)V

    .line 10
    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getSockAddress()Landroid/net/LocalSocketAddress;

    move-result-object p1

    iput-object p1, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/net/LocalSocketImpl;

    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    iput-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->create(I)V

    .line 4
    new-instance v1, Landroid/net/LocalSocketAddress;

    invoke-direct {v1, p1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    .line 5
    invoke-virtual {v0, v1}, Landroid/net/LocalSocketImpl;->bind(Landroid/net/LocalSocketAddress;)V

    const/16 p1, 0x32

    .line 6
    invoke-virtual {v0, p1}, Landroid/net/LocalSocketImpl;->listen(I)V

    return-void
.end method


# virtual methods
.method public accept()Landroid/net/LocalSocket;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/LocalSocketImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/LocalSocketImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/net/LocalSocketImpl;->accept(Landroid/net/LocalSocketImpl;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/LocalSocket;->createLocalSocketForAccept(Landroid/net/LocalSocketImpl;)Landroid/net/LocalSocket;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalServerSocket;->impl:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/LocalServerSocket;->localAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method
