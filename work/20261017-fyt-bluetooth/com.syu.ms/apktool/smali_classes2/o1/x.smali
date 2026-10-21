.class public Lo1/x;
.super Landroid/os/RemoteCallbackList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/x$b;,
        Lo1/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Ly/b;",
        ">;"
    }
.end annotation


# static fields
.field public static j:I


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo1/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo1/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lo1/x$b;

.field public final i:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/x;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo1/x;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lo1/x;->c:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo1/x;->d:Z

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lo1/x;->e:Ljava/util/LinkedHashMap;

    const-string v0, "IPC-TRAN"

    .line 7
    iput-object v0, p0, Lo1/x;->f:Ljava/lang/String;

    const-string v1, "-TRAN"

    const-string v2, ""

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo1/x;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo1/x;->h:Lo1/x$b;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/x;->i:Ljava/lang/Object;

    .line 11
    new-instance v0, Lo1/x$b;

    invoke-direct {v0, p0}, Lo1/x$b;-><init>(Lo1/x;)V

    iput-object v0, p0, Lo1/x;->h:Lo1/x$b;

    return-void
.end method

.method public static A([Lo1/x;ILjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    .line 2
    aget-object p0, p0, p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    :goto_0
    invoke-virtual {p0, p1, v0, v0, v1}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static B([Lo1/x;I[I)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 2
    aget-object p0, p0, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static C([Lo1/x;I[I[F[Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 2
    aget-object p0, p0, p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static D([Lo1/x;[III)V
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 2
    aget v0, p1, p2

    if-eq v0, p3, :cond_0

    .line 3
    aput p3, p1, p2

    if-eqz p0, :cond_0

    .line 4
    array-length p1, p0

    if-ge p2, p1, :cond_0

    aget-object p1, p0, p2

    if-eqz p1, :cond_0

    .line 5
    aget-object p0, p0, p2

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p3, p1, v0

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lo1/x;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lo1/x;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lo1/x;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lo1/x;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static k(Lo1/x;Ly/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    return-void
.end method

.method public static o(Lo1/x;Ly/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    return-void
.end method

.method public static t(Ly/b;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    new-array p2, v0, [Ljava/lang/String;

    aput-object p3, p2, v2

    const/4 p3, 0x0

    .line 1
    invoke-static {p0, p1, v1, p3, p2}, Lo1/x;->w(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static u(Ly/b;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2, p2, v0}, Lo1/x;->w(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs v(Ly/b;I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v0}, Lo1/x;->w(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized w(Ly/b;I[I[F[Ljava/lang/String;)V
    .locals 1

    const-class v0, Lo1/x;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Ly/b;->H0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "TRAN"

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ERROR : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit v0

    throw p0

    .line 4
    :cond_0
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static x([Lo1/x;II)V
    .locals 2

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 2
    aget-object p0, p0, p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static y([Lo1/x;III)V
    .locals 2

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 2
    aget-object p0, p0, p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static z([Lo1/x;IILjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 2
    aget-object p0, p0, p1

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x0

    new-array v0, v0, [Ljava/lang/String;

    aput-object p3, v0, v2

    invoke-virtual {p0, p1, v1, p2, v0}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public E(Ly/b;IILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v1, 0x0

    aput p3, v4, v1

    new-array v6, v0, [Ljava/lang/String;

    aput-object p4, v6, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 1
    invoke-virtual/range {v1 .. v6}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public F(Ly/b;ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 1
    invoke-virtual/range {v1 .. v6}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public varargs G(Ly/b;I[I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lo1/x;->H(Ly/b;I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public H(Ly/b;I[I[F[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lo1/x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lo1/x;->c()Lo1/x$a;

    move-result-object v7

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 3
    invoke-virtual/range {v1 .. v6}, Lo1/x$a;->c(Ly/b;I[I[F[Ljava/lang/String;)V

    .line 4
    invoke-virtual {v7}, Lo1/x$a;->a()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Lo1/x$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/x;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lo1/x;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/x$a;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lo1/x$a;

    invoke-direct {v0, p0}, Lo1/x$a;-><init>(Lo1/x;)V

    :goto_0
    return-object v0
.end method

.method public final d()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lo1/x;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo1/x;->f:Ljava/lang/String;

    const-string v2, " start checkCallbacks ===>> "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Ly/b;

    .line 4
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    .line 6
    iget-boolean v4, p0, Lo1/x;->d:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lo1/x;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " List: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " binder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lo1/x;->f(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bitSet:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lo1/x;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo1/x;->f:Ljava/lang/String;

    const-string v1, "end checkCallbacks <<=== "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public e(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/x;->e:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo1/x;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/x;->e:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo1/x;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "UNKNOWN"

    .line 4
    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/x;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ly/b;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 2
    invoke-virtual {p0, p1}, Lo1/x;->q(Ly/b;)Z

    .line 3
    iget-boolean v0, p0, Lo1/x;->d:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lo1/x;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " List: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ======>>>>  onCallbackDied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo1/x;->f(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/x;->e(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/x;->e:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lo1/x;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Lo1/x$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/x;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo1/x;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized l(Ly/b;)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public m(Ly/b;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lo1/x;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_3

    move v5, v1

    :goto_0
    if-ge v1, v4, :cond_2

    .line 4
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Ly/b;

    .line 5
    invoke-interface {v6}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    .line 8
    invoke-virtual {v6, p2}, Ljava/util/BitSet;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v2

    :cond_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v5

    .line 9
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception v3

    move v5, v1

    move-object v1, v3

    .line 10
    :goto_2
    :try_start_3
    iget-boolean v3, p0, Lo1/x;->d:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lo1/x;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register -- ERROR!! ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    move v1, v5

    :goto_3
    if-nez v1, :cond_5

    .line 13
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 14
    invoke-virtual {v1, p2}, Ljava/util/BitSet;->set(I)V

    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move v2, v1

    .line 16
    :goto_4
    iget-boolean v1, p0, Lo1/x;->d:Z

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p0, Lo1/x;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " register binder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/x;->f(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lo1/x;->d()V

    .line 19
    :cond_6
    monitor-exit v0

    return v2

    .line 20
    :goto_5
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 21
    throw p1

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lo1/x;->f:Ljava/lang/String;

    const-string v0, "-TRAN"

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo1/x;->g:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 1
    check-cast p1, Ly/b;

    invoke-virtual {p0, p1}, Lo1/x;->h(Ly/b;)V

    return-void
.end method

.method public p(Ly/b;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo1/x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Ly/b;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4, p2}, Ljava/util/BitSet;->clear(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 9
    throw p1

    .line 10
    :goto_1
    iget-boolean v1, p0, Lo1/x;->d:Z

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lo1/x;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " unregister binder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/x;->f(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lo1/x;->d()V

    .line 13
    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public declared-synchronized q(Ly/b;)Z
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public r(II)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, p2}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic register(Landroid/os/IInterface;)Z
    .locals 0

    .line 1
    check-cast p1, Ly/b;

    invoke-virtual {p0, p1}, Lo1/x;->l(Ly/b;)Z

    move-result p1

    return p1
.end method

.method public s(I[I[F[Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lo1/x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-virtual {v3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ly/b;

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p0}, Lo1/x;->c()Lo1/x$a;

    move-result-object v3

    move-object v4, v3

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 6
    invoke-virtual/range {v4 .. v9}, Lo1/x$a;->c(Ly/b;I[I[F[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lo1/x$a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    :try_start_2
    iget-boolean p2, p0, Lo1/x;->d:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo1/x;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update -- ERROR!! ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 11
    throw p1

    .line 12
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public bridge synthetic unregister(Landroid/os/IInterface;)Z
    .locals 0

    .line 1
    check-cast p1, Ly/b;

    invoke-virtual {p0, p1}, Lo1/x;->q(Ly/b;)Z

    move-result p1

    return p1
.end method
