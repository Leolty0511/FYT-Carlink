.class public Lf1/j;
.super Lf1/q;
.source "SourceFile"


# instance fields
.field public final P:Lq1/b;

.field public final Q:Lq1/b;

.field public R:Lo1/l0;


# direct methods
.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0x13

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/q;-><init>(IILp1/a;ILandroid/os/Handler;)V

    .line 2
    new-instance p1, Lq1/b;

    const/4 p2, -0x1

    const/4 p3, 0x4

    invoke-direct {p1, p2, p3}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/j;->P:Lq1/b;

    .line 3
    new-instance p1, Lq1/b;

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lq1/b;-><init>(II)V

    iput-object p1, p0, Lf1/j;->Q:Lq1/b;

    .line 4
    new-instance p1, Lo1/l0;

    invoke-direct {p1}, Lo1/l0;-><init>()V

    iput-object p1, p0, Lf1/j;->R:Lo1/l0;

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

    const-string v1, "============>> 7128 RESET  Waiting onUEvent START 1 chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip7128"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============>> 7128 RESET Waiting onUEvent END 1 chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public M()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lf1/j;->D()V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public X(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->f:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public Y()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xe8

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v2}, Lf1/q;->V(II)I

    const/16 v0, 0x26

    .line 3
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    .line 4
    iget-object v3, p0, Lf1/j;->R:Lo1/l0;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lo1/l0;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  CHECK SIGNAL : imagType :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "  signal flag: %02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " chipid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Chip7128"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x6

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public Z()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lf1/q;->k:I

    return v0

    :cond_0
    const/16 v0, 0xe8

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    const/16 v0, 0x25

    .line 3
    invoke-virtual {p0, v0}, Lf1/q;->A(I)I

    move-result v0

    const/4 v2, 0x7

    and-int/2addr v0, v2

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    move v1, v3

    goto :goto_0

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    .line 4
    :goto_0
    :pswitch_5
    iget-object v0, p0, Lf1/j;->Q:Lq1/b;

    invoke-virtual {v0, v1}, Lq1/b;->g(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a0(I)V
    .locals 4

    const/16 v0, 0xd

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/q;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/q$c;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lf1/q$c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lf1/q;->z()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "a.w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lf1/q$c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "a.h"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lf1/q$c;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lf1/q;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0, p1, v1}, Lf1/q;->T(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_2
    :try_start_3
    iget v0, p0, Lf1/q;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, p1, :cond_a

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 7
    :cond_3
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    .line 8
    invoke-virtual {p0, p1}, Lf1/j;->X(I)I

    move-result v0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_4

    move v2, v6

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_0

    :cond_5
    const/16 v2, 0x11

    goto :goto_0

    :cond_6
    move v2, v3

    :cond_7
    :goto_0
    if-eq v2, v6, :cond_9

    .line 9
    iget v0, p0, Lf1/q;->i:I

    if-eq v0, p1, :cond_8

    .line 10
    iput p1, p0, Lf1/q;->i:I

    .line 11
    iget-object p1, p0, Lf1/j;->P:Lq1/b;

    invoke-virtual {p1, v3}, Lq1/b;->h(I)V

    .line 12
    iget-object p1, p0, Lf1/j;->Q:Lq1/b;

    invoke-virtual {p1, v6}, Lq1/b;->h(I)V

    .line 13
    iget-object p1, p0, Lf1/j;->P:Lq1/b;

    invoke-virtual {p1}, Lq1/b;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lf1/q;->P(I)V

    .line 14
    iget-object p1, p0, Lf1/j;->Q:Lq1/b;

    invoke-virtual {p1}, Lq1/b;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lf1/q;->O(I)V

    :cond_8
    const-string p1, "Chip7128"

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==========>> openVideo   chipId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  vChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xe8

    .line 16
    invoke-virtual {p0, p1, v3}, Lf1/q;->V(II)I

    const/16 v0, 0x21

    const/16 v1, 0xc5

    .line 17
    invoke-virtual {p0, v0, v1}, Lf1/q;->V(II)I

    const/16 v0, 0x22

    .line 18
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    const/16 v0, 0x60

    .line 19
    invoke-virtual {p0, v0, v4}, Lf1/q;->V(II)I

    const/16 v1, 0x10

    .line 20
    invoke-virtual {p0, p1, v1}, Lf1/q;->V(II)I

    const/16 v1, 0x50

    const/16 v4, 0xf

    .line 21
    invoke-virtual {p0, v4, v1}, Lf1/q;->V(II)I

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p0, v1, v2}, Lf1/q;->V(II)I

    .line 23
    invoke-virtual {p0, v4, v0}, Lf1/q;->V(II)I

    .line 24
    invoke-virtual {p0, p1, v3}, Lf1/q;->V(II)I

    .line 25
    invoke-virtual {p0, v0, v5}, Lf1/q;->V(II)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :goto_1
    const/16 p1, 0x46

    :try_start_4
    new-array v0, v2, [I

    .line 27
    iget v4, p0, Lf1/q;->l:I

    aput v4, v0, v3

    iget v4, p0, Lf1/q;->j:I

    aput v4, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    const/16 p1, 0x45

    new-array v0, v2, [I

    .line 28
    iget v2, p0, Lf1/q;->m:I

    aput v2, v0, v3

    iget v2, p0, Lf1/q;->j:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    const-string p1, "Signal"

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>> signalNtscPal   chipId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ntscPal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Signal"

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ==========>> signalOn   chipId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sSignalOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/j;->P:Lq1/b;

    invoke-virtual {p0}, Lf1/j;->Y()Z

    move-result v2

    invoke-virtual {v0, v2}, Lq1/b;->g(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lf1/j;->Z()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 4
    iget v2, p0, Lf1/q;->k:I

    if-eq v2, v0, :cond_2

    .line 5
    iput v0, p0, Lf1/q;->k:I

    .line 6
    invoke-virtual {p0, v0}, Lf1/j;->a0(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lf1/j;->R:Lo1/l0;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lf1/j;->R:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CHECK SIGNAL : imagType :  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  formatMark : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/j;->Q:Lq1/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mSignalMarker: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/j;->P:Lq1/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " chipid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Chip7128"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public o()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lf1/q;->G(II)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lf1/q;->G(II)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1, v1}, Lf1/q;->G(II)V

    const/4 v2, 0x3

    const/4 v3, 0x4

    .line 4
    invoke-virtual {p0, v2, v3}, Lf1/q;->G(II)V

    .line 5
    invoke-virtual {p0, v3, v2}, Lf1/q;->G(II)V

    const/4 v3, 0x5

    .line 6
    invoke-virtual {p0, v3, v1}, Lf1/q;->G(II)V

    const/4 v3, 0x6

    .line 7
    invoke-virtual {p0, v3, v1}, Lf1/q;->G(II)V

    const/4 v3, 0x7

    .line 8
    invoke-virtual {p0, v3, v2}, Lf1/q;->G(II)V

    const/16 v2, 0x8

    .line 9
    invoke-virtual {p0, v2, v1}, Lf1/q;->G(II)V

    const/16 v1, 0x9

    .line 10
    invoke-virtual {p0, v1, v0}, Lf1/q;->G(II)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v1, 0x7f030020

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/j;->q([I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    :goto_0
    return-void
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
    const-string v10, "Chip7128"

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
    const-string v1, "Chip7128"

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
