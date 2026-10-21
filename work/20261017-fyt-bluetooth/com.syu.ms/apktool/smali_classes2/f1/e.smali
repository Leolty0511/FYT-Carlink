.class public Lf1/e;
.super Lf1/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/e$b;
    }
.end annotation


# static fields
.field public static W:I = 0x40


# instance fields
.field public volatile T:Z

.field public final U:Ljava/lang/Runnable;

.field public V:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0x12

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/s;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf1/e;->T:Z

    .line 3
    new-instance p1, Lf1/e$a;

    invoke-direct {p1, p0}, Lf1/e$a;-><init>(Lf1/e;)V

    iput-object p1, p0, Lf1/e;->U:Ljava/lang/Runnable;

    const/4 p1, 0x6

    .line 4
    iput p1, p0, Lf1/e;->V:I

    const/16 p1, 0x3c

    .line 5
    iput p1, p0, Lf1/q;->c:I

    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lf1/q;->D()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "============>> RESET START  chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip2863"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+===========>> RESET END  chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public E()I
    .locals 2

    .line 1
    sget v0, Lu0/b;->r0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lf1/q;->E()I

    move-result v0

    :goto_0
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf1/e;->D()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public N()V
    .locals 4

    .line 1
    new-instance v0, Lf1/e$b;

    sget v1, Lf1/q;->L:I

    invoke-direct {v0, p0, v1}, Lf1/e$b;-><init>(Lf1/e;I)V

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 2
    invoke-virtual {v0, v1, v2}, Lf1/e$b;->s(II)V

    .line 3
    iget-object v2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v3, Lf1/q;->L:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lbase/Configure$Property;->G:Lbase/Configure$Property;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->d(I)I

    move-result v0

    iput v0, p0, Lf1/e;->V:I

    .line 5
    new-instance v0, Lf1/e$b;

    sget v2, Lf1/q;->M:I

    invoke-direct {v0, p0, v2}, Lf1/e$b;-><init>(Lf1/e;I)V

    .line 6
    sget v2, Lf1/e;->W:I

    invoke-virtual {v0, v1, v2}, Lf1/e$b;->s(II)V

    .line 7
    iget v1, p0, Lf1/e;->V:I

    iput v1, v0, Lf1/s$a;->h:I

    .line 8
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v2, Lf1/q;->M:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public X()V
    .locals 3

    const/16 v0, 0x14

    :goto_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const-string v2, "sys.fyt.cvbs.iic.busy"

    .line 1
    invoke-static {v2, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-wide/16 v1, 0xa

    .line 2
    invoke-static {v1, v2}, La/i;->a0(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c0(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf1/e;->E()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lf1/s;->a0(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/s$a;

    .line 4
    invoke-virtual {v0, p2}, Lf1/s$a;->m(I)V

    .line 5
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_1

    .line 6
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

    .line 7
    invoke-virtual {p0}, Lf1/e;->p()V

    .line 8
    :cond_1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/s$a;

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    iget-boolean v0, p1, Lf1/s$a;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-virtual {p0}, Lf1/e;->E()I

    move-result v0

    if-eq p2, v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lf1/e;->E()I

    move-result p2

    :cond_4
    if-nez p2, :cond_5

    .line 12
    invoke-virtual {p1}, Lf1/s$a;->b()V

    .line 13
    iget-object p2, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget v0, p1, Lf1/s$a;->b:I

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_6

    .line 14
    iget-object p2, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget p1, p1, Lf1/s$a;->b:I

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1, p2}, Lf1/s$a;->m(I)V

    .line 16
    iget-object v0, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget v1, p1, Lf1/s$a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_6

    .line 17
    iget-object v0, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget p1, p1, Lf1/s$a;->b:I

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public d0()Lf1/s$a;
    .locals 5

    .line 1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/s$a;

    .line 3
    iget-object v3, v2, Lf1/s$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lf1/e;->E()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lf1/s$a;->f:Z

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0}, Lf1/s;->d0()Lf1/s$a;

    move-result-object v0

    return-object v0
.end method

.method public g0()V
    .locals 6

    const-string v0, "Chip2863"

    const-string v1, "===============>> updateParameters"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/s$a;

    .line 5
    iput-boolean v2, v4, Lf1/s$a;->l:Z

    .line 6
    invoke-virtual {v4}, Lf1/s$a;->o()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 7
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/s$a;

    .line 8
    iget-boolean v5, v4, Lf1/s$a;->k:Z

    if-nez v5, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v4}, Lf1/s$a;->c()Z

    move-result v5

    .line 10
    iput-boolean v2, v4, Lf1/s$a;->k:Z

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v4}, Lf1/s$a;->l()V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v1}, Lf1/e;->j0(Z)V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h0()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_3

    .line 3
    iget-object v6, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf1/s$a;

    .line 4
    invoke-virtual {v6}, Lf1/s$a;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v6}, Lf1/s$a;->l()V

    :cond_0
    if-nez v4, :cond_2

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0, v5}, Lf1/e;->j0(Z)V

    .line 7
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i0(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    new-instance v0, Lf1/e$b;

    invoke-direct {v0, p0, p2}, Lf1/e$b;-><init>(Lf1/e;I)V

    .line 3
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/s$a;

    .line 5
    :goto_0
    instance-of v1, v0, Lf1/e$b;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lf1/e$b;

    invoke-virtual {v0, p1, p3}, Lf1/e$b;->s(II)V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lf1/s;->G(II)V

    return-void
.end method

.method public j0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/e;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean v0, p0, Lf1/e;->T:Z

    if-eq v0, p1, :cond_2

    .line 3
    iput-boolean p1, p0, Lf1/e;->T:Z

    .line 4
    iget-boolean p1, p0, Lf1/e;->T:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 6
    iget-object v2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/s$a;

    if-eqz v2, :cond_0

    .line 7
    iput-boolean v0, v2, Lf1/s$a;->l:Z

    .line 8
    invoke-virtual {v2}, Lf1/s$a;->o()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v0, p0, Lf1/e;->U:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-super {p0}, Lf1/q;->o()V

    .line 2
    sget v0, Lf1/q;->L:I

    const/4 v1, 0x2

    const/16 v2, 0x11

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 3
    sget v0, Lf1/q;->L:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 4
    sget v0, Lf1/q;->L:I

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 5
    sget v0, Lf1/q;->L:I

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 6
    sget v0, Lf1/q;->L:I

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 7
    sget v0, Lf1/q;->L:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 8
    sget v0, Lf1/q;->L:I

    const/16 v1, 0x9

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 9
    sget v0, Lf1/q;->L:I

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0, v2}, Lf1/e;->i0(III)V

    .line 10
    sget v0, Lf1/q;->M:I

    sget v1, Lf1/e;->W:I

    invoke-virtual {p0, v2, v0, v1}, Lf1/e;->i0(III)V

    return-void
.end method

.method public p()V
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/s$a;

    .line 4
    iget v5, v4, Lf1/s$a;->c:I

    sget v6, Lf1/q;->M:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lf1/e;->V:I

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    :goto_1
    iput v5, v4, Lf1/s$a;->h:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lf1/e;->h0()Z

    move-result v3

    :goto_2
    if-ge v2, v1, :cond_2

    .line 6
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/s$a;

    const/4 v5, -0x1

    .line 7
    iput v5, v4, Lf1/s$a;->h:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v3}, Lf1/s;->H(Z)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
