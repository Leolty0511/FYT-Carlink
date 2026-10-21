.class public abstract Lf1/s;
.super Lf1/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/s$a;
    }
.end annotation


# instance fields
.field public final P:I

.field public Q:Landroid/util/SparseIntArray;

.field public R:Lo1/l0;

.field public final S:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILp1/a;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/16 p1, 0x3e8

    .line 2
    iput p1, p0, Lf1/s;->P:I

    .line 3
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    .line 4
    new-instance p1, Lo1/l0;

    invoke-direct {p1}, Lo1/l0;-><init>()V

    iput-object p1, p0, Lf1/s;->R:Lo1/l0;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/s;->S:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public C(ILy/b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/s$a;

    .line 3
    invoke-virtual {v2, p1, p2}, Lf1/s$a;->i(ILy/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public G(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lf1/q;->G(II)V

    .line 2
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf1/s$a;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p2, Lf1/s$a;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public H(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lf1/q;->H(Z)V

    .line 2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf1/s;->e0()V

    :cond_1
    return-void
.end method

.method public I(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lf1/q;->D:Z

    const-string v1, "    readyToReversing: "

    const-string v2, "ImageDevice2"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isSupportReversing:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->D:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v0, p0, Lf1/q;->x:Z

    :cond_1
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const-string v4, "persist.lesc.video.ignore"

    .line 6
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 7
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    const/16 v0, 0x7d0

    goto :goto_2

    :cond_4
    const/16 v0, 0xbb8

    :goto_2
    iput v0, p0, Lf1/q;->o:I

    if-nez p1, :cond_7

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ==========>>> 003    reversing    :   HandlerMain.backcar(0);  chipid : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {v3}, Lu0/d;->C(I)V

    .line 10
    invoke-virtual {p0}, Lf1/s;->a()V

    .line 11
    invoke-virtual {p0}, Lf1/s;->d0()Lf1/s$a;

    move-result-object v0

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXIT last readyToReversing  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lf1/q;->x:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "   recersingBeforeChannel : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lf1/s$a;->g:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chipid : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->h:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget p1, v0, Lf1/s$a;->g:I

    if-eqz p1, :cond_6

    const-wide/16 v1, 0x96

    .line 14
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    .line 15
    iget-object p1, p0, Lf1/q;->g:Ljava/util/ArrayList;

    iget v1, v0, Lf1/s$a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget p1, v0, Lf1/s$a;->g:I

    invoke-virtual {p0, p1}, Lf1/s;->c(I)V

    .line 17
    :cond_5
    iput v3, v0, Lf1/s$a;->g:I

    const-wide/32 v0, 0x7fffffff

    .line 18
    iput-wide v0, p0, Lf1/q;->z:J

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {v0}, Lf1/s$a;->b()V

    .line 20
    :goto_3
    iput-boolean v3, p0, Lf1/q;->x:Z

    goto :goto_4

    .line 21
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lf1/q;->z:J

    .line 22
    invoke-virtual {p0}, Lf1/s;->S()V

    :cond_8
    :goto_4
    return-void
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf1/q;->D()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public Q()V
    .locals 0

    return-void
.end method

.method public R()V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>>syncReservingk()    loaded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " readyToReversing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chip id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lf1/q;->p()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lf1/q;->x:Z

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lf1/s;->d0()Lf1/s$a;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lf1/s;->m()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    iget v2, v0, Lf1/s$a;->d:I

    iput v2, v0, Lf1/s$a;->g:I

    const-string v2, "  closeVideo 000"

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v0}, Lf1/s$a;->b()V

    const-wide/16 v1, 0x96

    .line 11
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    goto :goto_0

    .line 12
    :cond_3
    iget v1, v0, Lf1/s$a;->d:I

    iput v1, v0, Lf1/s$a;->g:I

    .line 13
    :goto_0
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Lf1/s$a;->m(I)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lf1/s$a;->k(Z)V

    return-void
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf1/q;->q:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>> endDetection  chip id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs Z([I)Z
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lf1/s;->q([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a0(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->f:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lf1/q;->b()V

    return-void
.end method

.method public b0(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lf1/s;->a0(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/s$a;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p1, Lf1/s$a;->f:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result p2

    :cond_2
    if-nez p2, :cond_3

    .line 6
    invoke-virtual {p1}, Lf1/s$a;->b()V

    .line 7
    iget-object p2, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget v0, p1, Lf1/s$a;->b:I

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_4

    .line 8
    iget-object p2, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget p1, p1, Lf1/s$a;->b:I

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1, p2}, Lf1/s$a;->m(I)V

    .line 10
    iget-object v0, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget v1, p1, Lf1/s$a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_4

    .line 11
    iget-object v0, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget p1, p1, Lf1/s$a;->b:I

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============>>  openVideo  init chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lf1/q;->p()V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lf1/s;->a0(I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/s$a;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Lf1/s$a;->m(I)V

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Lf1/s$a;->k(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c0(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============>>  openVideo  init chipid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lf1/q;->p()V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lf1/s;->b0(II)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf1/s;->Y()V

    .line 2
    invoke-super {p0}, Lf1/q;->d()V

    return-void
.end method

.method public d0()Lf1/s$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v0

    invoke-virtual {p0, v0}, Lf1/s;->a0(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/s$a;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, v0, Lf1/s$a;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lf1/s$a;->f:Z

    :cond_0
    return-object v0
.end method

.method public e0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf1/q;->q:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>> startDetection  chip id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget v1, p0, Lf1/q;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 4
    iget-object v5, p0, Lf1/q;->e:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/s$a;

    .line 5
    iget-boolean v5, v3, Lf1/s$a;->f:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lf1/q;->x:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v4

    .line 6
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " sync VideoId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " readyToReversing :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lf1/q;->x:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Signal"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v3, v4}, Lf1/s$a;->m(I)V

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 8
    :goto_1
    invoke-virtual {v3, v4}, Lf1/s$a;->k(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract g0()V
.end method

.method public h(IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf1/s;->a0(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/s$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3, p4}, Lf1/s$a;->g(III)V

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf1/q;->j(I)V

    .line 2
    invoke-virtual {p0, p1}, Lf1/s;->v(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lf1/s;->d0()Lf1/s$a;

    :cond_0
    return-void
.end method

.method public k()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_6

    .line 3
    :cond_1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4
    iget-object v3, p0, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v3

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_3

    .line 5
    :try_start_0
    iget-object v6, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf1/s$a;

    if-eqz v6, :cond_2

    .line 6
    invoke-virtual {p0}, Lf1/s;->X()V

    .line 7
    invoke-virtual {v6}, Lf1/s$a;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    iget v6, v6, Lf1/s$a;->b:I

    shl-int v6, v1, v6

    or-int/2addr v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_7

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_8

    .line 10
    iget-object v6, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf1/s$a;

    if-nez v4, :cond_5

    .line 11
    iget-boolean v4, v6, Lf1/s$a;->k:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v4, v2

    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 12
    invoke-virtual {p0}, Lf1/s;->g0()V

    :cond_9
    if-lez v5, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    return v1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    :goto_6
    return v2
.end method

.method public m()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/s;->d0()Lf1/s$a;

    move-result-object v0

    .line 2
    iget v0, v0, Lf1/s$a;->d:I

    invoke-virtual {p0}, Lf1/q;->E()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q([I)Z
    .locals 14

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 2
    iget-boolean v0, p0, Lf1/q;->v:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    .line 4
    :try_start_0
    array-length v3, p1

    div-int/2addr v3, v1

    const/4 v4, 0x1

    move v5, v2

    move v6, v4

    :goto_0
    if-ge v5, v3, :cond_3

    mul-int/lit8 v6, v5, 0x2

    .line 5
    aget v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    .line 6
    aget v6, p1, v6

    .line 7
    invoke-virtual {p0, v7, v6}, Lf1/q;->V(II)I

    move-result v8

    if-ltz v8, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    const-string v10, "ImageDevice2"

    .line 8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ %02X,  %02X]"

    new-array v13, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v13, v4

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ret : "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v6, v9

    goto :goto_0

    :cond_3
    :goto_2
    const-string v1, "ImageDevice2"

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushParams  END  data  length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    monitor-exit v0

    return v6

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "flushParams  data is NULL  or  data  size < 2 !!!! "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lf1/q;->q:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Lf1/s;->k()I

    .line 4
    invoke-virtual {p0}, Lf1/s;->d0()Lf1/s$a;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v1

    const-string v2, " chipid : "

    const-string v3, "   recersingBeforeChannel : "

    const-string v4, "    readyToReversing: "

    const/4 v5, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const-string v8, "ImageDevice2"

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lf1/s$a;->l:Z

    if-eqz v0, :cond_2

    .line 6
    :cond_1
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lf1/q;->z:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  001  ==========>>>    reversing    :   HandlerMain.backcar(1);  chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v5}, Lu0/d;->C(I)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENTER REVERSING HAS SIGNAL setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-wide v6, p0, Lf1/q;->z:J

    .line 11
    :cond_2
    iget-boolean v0, p0, Lf1/q;->D:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v9, p0, Lf1/q;->z:J

    sub-long/2addr v0, v9

    iget v9, p0, Lf1/q;->o:I

    int-to-long v9, v9

    cmp-long v0, v0, v9

    if-ltz v0, :cond_3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>>>002    reversing    :   HandlerMain.backcar(1);  chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v5}, Lu0/d;->C(I)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENTER REVERSING CHECK TIMEOUT setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/q;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput-wide v6, p0, Lf1/q;->z:J

    .line 16
    :cond_3
    iget-boolean v0, p0, Lf1/q;->q:Z

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget v1, p0, Lf1/q;->c:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_4
    iget-object v0, p0, Lf1/s;->R:Lo1/l0;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lf1/s;->R:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    :cond_5
    :goto_0
    return-void
.end method

.method public v(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf1/q;->v(I)Z

    move-result p1

    return p1
.end method
