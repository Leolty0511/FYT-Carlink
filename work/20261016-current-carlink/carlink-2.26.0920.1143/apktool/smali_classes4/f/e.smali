.class public final Lf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/transport/ServerSocketProvider;


# instance fields
.field public a:Ljava/net/ServerSocket;

.field public final synthetic b:Lf/k;


# direct methods
.method public constructor <init>(Lf/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e;->b:Lf/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lf/e;->a:Ljava/net/ServerSocket;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getServerSocket()Ljava/net/ServerSocket;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e;->a:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    .line 6
    .line 7
    iget-object v1, p0, Lf/e;->b:Lf/k;

    .line 8
    .line 9
    iget-object v1, v1, Lf/k;->f:Lcom/google/android/projection/sink/settings/Settings;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->getListenTcpPort()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lf/e;->a:Ljava/net/ServerSocket;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/e;->a:Ljava/net/ServerSocket;

    .line 33
    .line 34
    return-object v0
.end method

.method public final invalidateSocket()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/e;->a:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lf/e;->a:Ljava/net/ServerSocket;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_0
    iput-object v1, p0, Lf/e;->a:Ljava/net/ServerSocket;

    .line 22
    .line 23
    throw v0

    .line 24
    :cond_0
    :goto_1
    return-void
.end method
