.class public Ly/g;
.super Ly/c$a;
.source "SourceFile"


# instance fields
.field public a:Ly/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public K2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, v1, v1, v1}, Ly/c;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public L2(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x0

    .line 2
    invoke-interface {v0, p1, v1, p2, p2}, Ly/c;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Ly/c;->M1(I[I[F[Ljava/lang/String;)Ly/f;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public M2(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    const/4 p2, 0x0

    .line 2
    invoke-interface {v0, p1, v1, p2, p2}, Ly/c;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public N2(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    .line 2
    invoke-interface {v0, p1, p2, p2, v1}, Ly/c;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public O2(Ly/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly/g;->a:Ly/c;

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2}, Ly/c;->P0(Ly/b;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Ly/c;->Y1(Ly/b;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/g;->a:Ly/c;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Ly/c;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
