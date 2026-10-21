.class public abstract Lbase/b;
.super Ly/c$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbase/b$b;,
        Lbase/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lbase/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lo1/h0;

.field public c:Landroid/os/Looper;

.field public d:Landroid/os/Handler;

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo1/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo1/x;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ly/c$a;-><init>()V

    .line 2
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lbase/b;->a:Landroid/util/Pools$SynchronizedPool;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbase/b;->e:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lo1/x;

    invoke-direct {v0}, Lo1/x;-><init>()V

    iput-object v0, p0, Lbase/b;->f:Lo1/x;

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lbase/b;->c:Landroid/os/Looper;

    .line 8
    new-instance v1, Lbase/b$b;

    invoke-direct {v1, p0, v0}, Lbase/b$b;-><init>(Lbase/b;Landroid/os/Looper;)V

    iput-object v1, p0, Lbase/b;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public H0(I[I[F[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    iget-boolean v1, v0, Lo1/x;->d:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lo1/x;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     updateCode :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  ints :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flts :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  strs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized K2(ILo1/p;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lbase/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lbase/b;->e:Landroid/util/SparseArray;

    new-instance v1, Lo1/z;

    invoke-direct {v1}, Lo1/z;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lbase/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/z;

    invoke-virtual {p1, p2}, Lo1/z;->a(Lo1/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public L2()Lo1/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    return-object v0
.end method

.method public M2()Lo1/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/b;->b:Lo1/h0;

    return-object v0
.end method

.method public abstract N2(I[I[F[Ljava/lang/String;)V
.end method

.method public abstract O2(I[I[F[Ljava/lang/String;)V
.end method

.method public P2(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lo1/h0;

    invoke-direct {v0, p1}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbase/b;->b:Lo1/h0;

    .line 2
    sget-object p1, Lu0/c;->c:Lo1/y;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public abstract Q2(Lo1/h0;)V
.end method

.method public R2(II[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbase/b;->S2()Lbase/b$a;

    move-result-object v0

    .line 2
    iput p1, v0, Lbase/b$a;->a:I

    .line 3
    iput p2, v0, Lbase/b$a;->b:I

    .line 4
    iput-object p3, v0, Lbase/b$a;->c:[I

    .line 5
    iput-object p4, v0, Lbase/b$a;->d:[F

    .line 6
    iput-object p5, v0, Lbase/b$a;->e:[Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lbase/b;->d:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 9
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public S2()Lbase/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/b;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbase/b$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lbase/b$a;

    invoke-direct {v0, p0}, Lbase/b$a;-><init>(Lbase/b;)V

    :cond_0
    return-object v0
.end method

.method public T2(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lbase/b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/z;

    invoke-virtual {p1, p2}, Lo1/z;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public U2(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {v0, p1, p2}, Lo1/h0;->q(II)V

    return-void
.end method

.method public V2(Lbase/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbase/b;->a:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public W2(I[I[F[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lbase/b;->R2(II[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 4

    .line 1
    sget-object v0, Lbase/Configure$Property;->R:Lbase/Configure$Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lo1/x;->d:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/cmdline"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknow"

    invoke-static {v0, v1}, Lq1/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v1}, Lo1/x;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " register =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cmdId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " update: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p2, p0, Lbase/b;->f:Lo1/x;

    iget-boolean p3, p2, Lo1/x;->d:Z

    if-eqz p3, :cond_1

    .line 8
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lo1/x;->i(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lbase/Configure$Property;->R:Lbase/Configure$Property;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    iget-boolean v0, v0, Lo1/x;->d:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/cmdline"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknow"

    invoke-static {v0, v1}, Lq1/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v1}, Lo1/x;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd cmdid =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 10
    invoke-virtual/range {v2 .. v7}, Lbase/b;->R2(II[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbase/b;->b:Lo1/h0;

    invoke-virtual {p0, v0}, Lbase/b;->Q2(Lo1/h0;)V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    invoke-virtual {v0, p0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
