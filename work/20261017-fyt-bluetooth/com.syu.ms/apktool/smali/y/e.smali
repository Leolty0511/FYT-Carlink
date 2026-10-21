.class public Ly/e;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Ly/b;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Ly/b;II)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    .line 2
    invoke-interface {p0, p1, v0, p2, p2}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

.method public static b([Ly/e;I[I[F[Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length p2, p0

    if-ge p1, p2, :cond_0

    aget-object p0, p0, p1

    :cond_0
    return-void
.end method
