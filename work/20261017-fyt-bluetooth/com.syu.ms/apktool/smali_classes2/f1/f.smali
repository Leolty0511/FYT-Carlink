.class public Lf1/f;
.super Lf1/r;
.source "SourceFile"


# instance fields
.field public S:I

.field public T:Z

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:I

.field public a0:I

.field public b0:I

.field public c0:I

.field public d0:I


# direct methods
.method public constructor <init>(IILp1/a;ILandroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lf1/r;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lf1/f;->S:I

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lf1/f;->T:Z

    .line 5
    iput p2, p0, Lf1/f;->U:I

    .line 6
    iput p1, p0, Lf1/f;->V:I

    .line 7
    iput p2, p0, Lf1/f;->W:I

    .line 8
    iput p2, p0, Lf1/f;->X:I

    .line 9
    iput-boolean p2, p0, Lf1/f;->Y:Z

    .line 10
    iput p2, p0, Lf1/f;->Z:I

    const/4 p3, 0x3

    .line 11
    iput p3, p0, Lf1/f;->a0:I

    .line 12
    iput p2, p0, Lf1/f;->b0:I

    .line 13
    iput p1, p0, Lf1/f;->c0:I

    .line 14
    iput p1, p0, Lf1/f;->d0:I

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
    invoke-direct/range {v0 .. v5}, Lf1/f;-><init>(IILp1/a;ILandroid/os/Handler;)V

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

    const-string v1, "=========>> 2863 Limit RESET  Waiting onUEvent START 1 chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip2863Limit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========>> 2863 Limit RESET Waiting onUEvent END 1 chipid : "

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
    invoke-virtual {p0}, Lf1/f;->D()V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    iget v2, p0, Lf1/q;->h:I

    invoke-virtual {v0, v2, v1}, Lf1/o;->E(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lf1/q;->i:I

    .line 4
    invoke-super {p0}, Lf1/q;->a()V

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lf1/f;->T:Z

    :cond_1
    return-void
.end method

.method public b0()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lf1/r;->P:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [I

    const/16 v3, 0x40

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2
    iget v3, p0, Lf1/f;->d0:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-virtual {p0, v2}, Lf1/r;->X([I)Z

    .line 3
    invoke-virtual {p0, v5}, Lf1/q;->A(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v2, 0x70

    const/16 v6, 0x70

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/lit8 v6, v2, 0x60

    const/16 v7, 0x60

    if-ne v6, v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const/4 v7, 0x3

    if-nez v3, :cond_4

    if-eqz v6, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget v3, p0, Lf1/f;->Z:I

    if-lez v3, :cond_b

    .line 5
    iget v6, p0, Lf1/f;->a0:I

    if-ne v3, v6, :cond_3

    .line 6
    iput v4, p0, Lf1/f;->Z:I

    goto/16 :goto_5

    :cond_3
    sub-int/2addr v3, v5

    .line 7
    iput v3, p0, Lf1/f;->Z:I

    goto/16 :goto_5

    .line 8
    :cond_4
    :goto_2
    iget v8, p0, Lf1/f;->Z:I

    iget v9, p0, Lf1/f;->a0:I

    if-ge v8, v9, :cond_8

    add-int/2addr v8, v5

    .line 9
    iput v8, p0, Lf1/f;->Z:I

    .line 10
    iget-boolean v9, p0, Lf1/f;->T:Z

    if-eqz v9, :cond_7

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v5

    .line 11
    invoke-virtual {p0, v8}, Lf1/f;->i0(I)I

    move-result v8

    .line 12
    iget-object v9, p0, Lf1/r;->R:Landroid/util/SparseArray;

    iget v10, p0, Lf1/q;->j:I

    new-instance v11, Lf1/r$a;

    invoke-direct {v11}, Lf1/r$a;-><init>()V

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf1/r$a;

    .line 13
    iget v10, p0, Lf1/f;->W:I

    if-eq v10, v8, :cond_5

    const-string v3, "Chip2863Limit"

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " CHECK SIGNAL  SURE old Ahd : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lf1/f;->W:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  to New AHD: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  this.videoId : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lf1/q;->j:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " chipid : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lf1/q;->h:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput v8, p0, Lf1/f;->W:I

    .line 16
    iput v8, v9, Lf1/r$a;->b:I

    .line 17
    iget-object v3, p0, Lf1/r;->R:Landroid/util/SparseArray;

    iget v6, p0, Lf1/q;->j:I

    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget v3, p0, Lf1/q;->k:I

    invoke-virtual {p0, v3}, Lf1/f;->d0(I)Z

    .line 19
    iput v5, p0, Lf1/f;->Z:I

    .line 20
    iput v7, p0, Lf1/f;->a0:I

    goto/16 :goto_5

    :cond_5
    if-eqz v3, :cond_6

    .line 21
    iput v7, p0, Lf1/f;->a0:I

    const-string v3, "Chip2863Limit"

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " 111111  CHECK SIGNAL  SURE old Ahd : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lf1/f;->W:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  to New AHD: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " chipid : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/q;->h:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    if-eqz v6, :cond_b

    const-string v3, "Chip2863Limit"

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " 222222  CHECK SIGNAL  SURE old Ahd : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lf1/f;->W:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  to New AHD: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " chipid : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/q;->h:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 24
    :cond_7
    iput v7, p0, Lf1/f;->a0:I

    .line 25
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lf1/f;->Z:I

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_b

    if-nez v3, :cond_b

    .line 26
    iget v3, p0, Lf1/q;->k:I

    const/16 v8, 0xd

    if-eq v3, v8, :cond_9

    if-eqz v3, :cond_9

    if-eq v3, v5, :cond_9

    move v3, v5

    goto :goto_3

    :cond_9
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lf1/f;->T:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x6

    goto :goto_4

    :cond_a
    move v3, v7

    .line 27
    :goto_4
    iput v3, p0, Lf1/f;->a0:I

    const-string v3, "Chip2863Limit"

    .line 28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " CHECK SIGNAL  SURE  is0x60:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ahd imagFormat : "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->k:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  needCheckAhd : "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lf1/f;->T:Z

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_b
    :goto_5
    iget-object v3, p0, Lf1/r;->Q:Lo1/k0;

    const/16 v6, 0x12c

    invoke-virtual {v3, v6}, Lo1/k0;->c(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 30
    iget-object v3, p0, Lf1/r;->Q:Lo1/k0;

    invoke-virtual {v3}, Lo1/k0;->b()V

    const-string v3, "Chip2863Limit"

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasSignal() "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " 0x01: %02X 0x03: %02X"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v7}, Lf1/q;->A(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_c
    iget v1, p0, Lf1/f;->Z:I

    iget v2, p0, Lf1/f;->a0:I

    if-lt v1, v2, :cond_d

    move v4, v5

    :cond_d
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized c(I)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf1/q;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, v1}, Lf1/q;->T(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_2
    iget v0, p0, Lf1/q;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, p1, :cond_c

    invoke-virtual {p0}, Lf1/q;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 6
    :cond_2
    invoke-super {p0, p1}, Lf1/q;->c(I)V

    .line 7
    invoke-virtual {p0, p1}, Lf1/f;->e0(I)I

    move-result v0

    const/4 v4, -0x1

    .line 8
    iput v4, p0, Lf1/f;->d0:I

    .line 9
    iput v4, p0, Lf1/f;->c0:I

    const/4 v5, 0x3

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v5, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iput v1, p0, Lf1/f;->d0:I

    .line 11
    iput v3, p0, Lf1/f;->c0:I

    goto :goto_0

    .line 12
    :cond_4
    iput v3, p0, Lf1/f;->d0:I

    .line 13
    iput v1, p0, Lf1/f;->c0:I

    goto :goto_0

    .line 14
    :cond_5
    iput v3, p0, Lf1/f;->d0:I

    .line 15
    iput v3, p0, Lf1/f;->c0:I

    :goto_0
    const-string v2, "Signal"

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "======>> openVideo   chipId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->h:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to Channel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " videoPort: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " value0x40:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/f;->d0:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget v0, p0, Lf1/f;->c0:I

    if-eq v0, v4, :cond_b

    move v0, v3

    :goto_1
    const/16 v2, 0x40

    const/4 v6, 0x4

    .line 18
    invoke-virtual {p0, v2, v6}, Lf1/q;->V(II)I

    .line 19
    iget v2, p0, Lf1/f;->c0:I

    const/16 v6, 0x50

    invoke-virtual {p0, v6, v2}, Lf1/q;->V(II)I

    const-wide/16 v7, 0x5

    .line 20
    invoke-static {v7, v8}, Lo1/s0;->C(J)V

    .line 21
    invoke-virtual {p0, v6}, Lf1/q;->A(I)I

    move-result v2

    iget v6, p0, Lf1/f;->c0:I

    if-ne v2, v6, :cond_6

    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    const-string v6, "Chip2863Limit"

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   channel :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  value0x50 :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/f;->c0:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " chipid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lf1/q;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cnt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_7

    const-wide/16 v6, 0x14

    .line 23
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    :cond_7
    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x5

    if-ge v0, v7, :cond_9

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v0, v6

    goto :goto_1

    .line 24
    :cond_9
    :goto_3
    iput p1, p0, Lf1/q;->i:I

    .line 25
    iget-object v0, p0, Lf1/r;->R:Landroid/util/SparseArray;

    new-instance v2, Lf1/r$a;

    invoke-direct {v2}, Lf1/r$a;-><init>()V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/r$a;

    .line 26
    iget v2, v0, Lf1/r$a;->a:I

    if-eq v2, v4, :cond_b

    .line 27
    iget v3, p0, Lf1/q;->k:I

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a

    if-eqz v2, :cond_a

    if-eq v2, v1, :cond_a

    .line 28
    iget v1, p0, Lf1/f;->W:I

    iget v0, v0, Lf1/r$a;->b:I

    if-eq v1, v0, :cond_a

    .line 29
    iput v0, p0, Lf1/f;->W:I

    :cond_a
    const-string v0, "Chip2863Limit"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   channel :  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Last imagFormat :  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chipid : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->h:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lf1/r;->P:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :try_start_3
    invoke-virtual {p0, v2}, Lf1/f;->d0(I)Z

    .line 33
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    iput v2, p0, Lf1/q;->k:I

    .line 35
    iput v5, p0, Lf1/f;->a0:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 36
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 37
    :cond_b
    :goto_4
    monitor-exit p0

    return-void

    :cond_c
    :goto_5
    const/16 p1, 0x46

    :try_start_7
    new-array v0, v2, [I

    .line 38
    iget v4, p0, Lf1/q;->l:I

    aput v4, v0, v3

    iget v4, p0, Lf1/q;->j:I

    aput v4, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    const/16 p1, 0x45

    new-array v0, v2, [I

    .line 39
    iget v2, p0, Lf1/q;->m:I

    aput v2, v0, v3

    iget v2, p0, Lf1/q;->j:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    const-string p1, "Signal"

    .line 40
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

    .line 41
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
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 42
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c0()V
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

.method public d0(I)Z
    .locals 13

    .line 1
    iget v0, p0, Lf1/f;->d0:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lf1/f;->W:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x3

    if-eqz p1, :cond_d

    if-eq p1, v2, :cond_c

    const/4 v5, 0x2

    const-string v6, "AHD"

    const-string v7, "TVI"

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_4

    const/4 v5, 0x7

    if-eq p1, v5, :cond_2

    const-string v0, "VIDEO_UNKNOW"

    move-object v5, v0

    move v0, v1

    goto/16 :goto_8

    :cond_2
    if-eqz v0, :cond_3

    const v0, 0x7f030032

    goto :goto_1

    :cond_3
    const v0, 0x7f030038

    :goto_1
    const-string v5, "VIDEO_NP_R1080P30"

    goto :goto_8

    :cond_4
    if-eqz v0, :cond_5

    const v0, 0x7f030031

    goto :goto_2

    :cond_5
    const v0, 0x7f030037

    :goto_2
    const-string v5, "VIDEO_NP_R1080P25"

    goto :goto_8

    :cond_6
    if-eqz v0, :cond_7

    const v5, 0x7f030034

    goto :goto_3

    :cond_7
    const v5, 0x7f03003a

    .line 3
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VIDEO_NP_R720P30_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v6, v7

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_a

    const v5, 0x7f030033

    goto :goto_5

    :cond_a
    const v5, 0x7f030039

    .line 4
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VIDEO_NP_R720P25_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    move-object v6, v7

    :goto_6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    move v12, v5

    move-object v5, v0

    move v0, v12

    goto :goto_8

    :cond_c
    const v0, 0x7f030036

    const-string v5, "VIDEO_NP_PAL"

    goto :goto_8

    :cond_d
    const v0, 0x7f030035

    const-string v5, "VIDEO_NP_NTSC"

    :goto_8
    if-nez v0, :cond_e

    return v1

    .line 5
    :cond_e
    iget-object v6, p0, Lf1/q;->u:Lp1/a;

    invoke-interface {v6}, Lp1/a;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 6
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move v8, v7

    :goto_9
    const-string v9, "lockhandle"

    if-ltz v8, :cond_f

    const/16 v7, 0xf9

    const-string v10, "i2cindex"

    .line 7
    invoke-static {v7, v10, v8, v9}, Lcom/syu/jni/ToolsJni;->callSystemCtrl(ILjava/lang/String;ILjava/lang/String;)I

    move-result v7

    .line 8
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "i2cName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " i2cIndex:"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " lockRet:"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "lseccamm"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flush START: value0x40 : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lf1/f;->d0:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " videoFormat:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " imageSignal:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lf1/q;->n:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v6

    const/16 v11, 0x10

    invoke-static {v6, v0, v11}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/r;->q([I)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_a

    :cond_10
    move v0, v1

    :goto_a
    if-ltz v7, :cond_11

    const/16 v6, 0xf8

    .line 11
    invoke-static {v6, v9, v7}, Lcom/syu/jni/ToolsJni;->callSystemCtrl(ILjava/lang/String;I)I

    .line 12
    :cond_11
    iget v6, p0, Lf1/q;->j:I

    if-eqz v6, :cond_12

    .line 13
    iget-object v7, p0, Lf1/r;->R:Landroid/util/SparseArray;

    new-instance v9, Lf1/r$a;

    invoke-direct {v9}, Lf1/r$a;-><init>()V

    invoke-virtual {v7, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf1/r$a;

    .line 14
    iput p1, v6, Lf1/r$a;->a:I

    .line 15
    iget-object v7, p0, Lf1/r;->R:Landroid/util/SparseArray;

    iget v9, p0, Lf1/q;->j:I

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    if-eqz p1, :cond_13

    if-eq p1, v2, :cond_13

    move v1, v2

    .line 16
    :cond_13
    iput-boolean v1, p0, Lf1/f;->T:Z

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CHECK SIGNAL  SURE ahd format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  needCheckAhd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/f;->T:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Chip2863Limit"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-boolean v1, p0, Lf1/f;->T:Z

    if-eqz v1, :cond_14

    goto :goto_b

    :cond_14
    move v3, v4

    :goto_b
    iput v3, p0, Lf1/f;->a0:I

    .line 19
    invoke-virtual {p0, p1}, Lf1/r;->a0(I)V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flush END:  value0x40 : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/f;->d0:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ret : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public e0(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/q;->f:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public f0(I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    .line 1
    :goto_0
    iget v2, p0, Lf1/q;->h:I

    if-ne v2, v0, :cond_1

    const-string v0, "sys.fyt.cvbs.needdeinterlace"

    goto :goto_1

    :cond_1
    const-string v0, "sys.fyt.cvbs_2.needdeinterlace"

    :goto_1
    const-string v2, ""

    .line 2
    invoke-static {v0, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************ ===============needdeinterlace  ntcsPal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " key : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " chipid : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lf1/q;->h:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chip2863Limit"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public g0()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lf1/q;->k:I

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/r;->P:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    move-result v2

    const/4 v3, 0x7

    and-int/2addr v2, v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x2f

    const/16 v2, 0x9

    .line 4
    invoke-virtual {p0, v1, v2}, Lf1/q;->V(II)I

    const-wide/16 v1, 0x32

    .line 5
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    .line 6
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v1

    const/16 v2, 0x93

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x94

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_3
    move v1, v3

    goto :goto_1

    :pswitch_4
    move v1, v4

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    :pswitch_6
    move v1, v5

    .line 7
    :goto_1
    :pswitch_7
    invoke-virtual {p0, v1}, Lf1/f;->w(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public h(IIII)V
    .locals 6

    .line 1
    iget-object p1, p0, Lf1/r;->P:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lf1/f;->c0()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x40

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 3
    iget v4, p0, Lf1/f;->d0:I

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-virtual {p0, v1}, Lf1/r;->X([I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    const/16 v4, 0x10

    aput v4, v1, v3

    and-int/lit16 p2, p2, 0xff

    aput p2, v1, v5

    .line 4
    invoke-virtual {p0, v1}, Lf1/r;->X([I)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v5

    goto :goto_0

    :cond_0
    move p2, v3

    .line 5
    :goto_0
    invoke-virtual {p0}, Lf1/f;->c0()V

    if-eqz p2, :cond_1

    new-array p2, v0, [I

    aput v2, p2, v3

    .line 6
    iget v1, p0, Lf1/f;->d0:I

    aput v1, p2, v5

    invoke-virtual {p0, p2}, Lf1/r;->X([I)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v5

    goto :goto_1

    :cond_1
    move p2, v3

    :goto_1
    if-eqz p2, :cond_2

    new-array p2, v0, [I

    const/16 v1, 0x11

    aput v1, p2, v3

    and-int/lit16 p4, p4, 0xff

    aput p4, p2, v5

    .line 7
    invoke-virtual {p0, p2}, Lf1/r;->X([I)Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v5

    goto :goto_2

    :cond_2
    move p2, v3

    .line 8
    :goto_2
    invoke-virtual {p0}, Lf1/f;->c0()V

    if-eqz p2, :cond_3

    new-array p2, v0, [I

    aput v2, p2, v3

    .line 9
    iget p4, p0, Lf1/f;->d0:I

    aput p4, p2, v5

    invoke-virtual {p0, p2}, Lf1/r;->X([I)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v5

    goto :goto_3

    :cond_3
    move p2, v3

    :goto_3
    if-eqz p2, :cond_4

    new-array p2, v0, [I

    const/16 p4, 0x12

    aput p4, p2, v3

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v5

    .line 10
    invoke-virtual {p0, p2}, Lf1/r;->X([I)Z

    move-result p2

    .line 11
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final h0()V
    .locals 10

    const-string v0, "sys.fyt.cvbs.iic.busy"

    const/4 v1, -0x1

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lf1/f;->Y:Z

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lf1/r;->P:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const/16 v3, 0x40

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 5
    iget v3, p0, Lf1/f;->d0:I

    aput v3, v2, v1

    invoke-virtual {p0, v2}, Lf1/r;->X([I)Z

    .line 6
    invoke-virtual {p0, v1}, Lf1/q;->A(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x7

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 7
    :goto_0
    iget-object v5, p0, Lf1/r;->Q:Lo1/k0;

    const/16 v6, 0x12c

    invoke-virtual {v5, v6}, Lo1/k0;->c(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Chip2863Limit"

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===============>> checkFormat value0x40: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/f;->d0:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " value0x50: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/f;->c0:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Reg 0x01 : %02X"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " imagFormat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/q;->k:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " hasSingnal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    iget-boolean v5, p0, Lf1/f;->Y:Z

    if-eq v5, v3, :cond_4

    .line 10
    iput-boolean v3, p0, Lf1/f;->Y:Z

    const-string v5, "Chip2863Limit"

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value0x40 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lf1/f;->d0:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " signalOn= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lf1/f;->Y:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "    0x01 REG : %02X"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  this.videoId  = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->j:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  imagFormat :  "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->k:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    hasSingnal:  "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " chipid : "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i0(I)I
    .locals 3

    .line 1
    iget v0, p0, Lf1/q;->k:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 2
    iget v0, p0, Lf1/f;->V:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget v0, p0, Lf1/f;->U:I

    add-int/2addr v0, v2

    iput v0, p0, Lf1/f;->U:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 4
    iget p1, p0, Lf1/f;->W:I

    goto :goto_0

    .line 5
    :cond_0
    iput v1, p0, Lf1/f;->U:I

    goto :goto_0

    .line 6
    :cond_1
    iput v2, p0, Lf1/f;->U:I

    .line 7
    iput p1, p0, Lf1/f;->V:I

    .line 8
    iget p1, p0, Lf1/f;->W:I

    goto :goto_0

    .line 9
    :cond_2
    iput v1, p0, Lf1/f;->V:I

    :goto_0
    return p1
.end method

.method public k()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lf1/f;->Y:Z

    .line 3
    iget-boolean v2, p0, Lf1/q;->I:Z

    const/4 v3, -0x1

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lf1/f;->h0()V

    .line 5
    invoke-virtual {p0}, Lf1/f;->b0()Z

    move-result v0

    .line 6
    iget-boolean v2, p0, Lf1/f;->Y:Z

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lf1/f;->g0()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 8
    :goto_0
    iget-boolean v4, p0, Lf1/f;->Y:Z

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p0, v2}, Lf1/f;->f0(I)V

    if-eq v2, v3, :cond_3

    .line 10
    iget v4, p0, Lf1/q;->k:I

    if-eq v4, v2, :cond_3

    .line 11
    iput v2, p0, Lf1/q;->k:I

    .line 12
    iget v4, p0, Lf1/q;->i:I

    if-eqz v4, :cond_2

    const-string v4, "Chip2863Limit"

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " record  channel :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " TO  imagFormat :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " chipid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v4, p0, Lf1/r;->R:Landroid/util/SparseArray;

    iget v5, p0, Lf1/q;->i:I

    new-instance v6, Lf1/r$a;

    invoke-direct {v6}, Lf1/r$a;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/r$a;

    .line 15
    iget v5, p0, Lf1/q;->k:I

    iput v5, v4, Lf1/r$a;->a:I

    .line 16
    iget-object v5, p0, Lf1/r;->R:Landroid/util/SparseArray;

    iget v6, p0, Lf1/q;->i:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const-string v4, "Chip2863Limit"

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  CHECK SIGNAL  SURE : imagType :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->i:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " last     imagFormat :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   imagFormat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " signalOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lf1/f;->Y:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "     hasSignal  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " chipid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lf1/q;->h:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v4, p0, Lf1/r;->P:Ljava/lang/Object;

    monitor-enter v4

    .line 19
    :try_start_0
    invoke-virtual {p0, v2}, Lf1/f;->d0(I)Z

    .line 20
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 21
    :cond_3
    :goto_1
    iget v2, p0, Lf1/f;->W:I

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 22
    :cond_4
    iget-object v0, p0, Lf1/r;->Q:Lo1/k0;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lf1/r;->Q:Lo1/k0;

    invoke-virtual {v0}, Lo1/k0;->b()V

    :cond_5
    return v1
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-super {p0}, Lf1/q;->o()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, v0}, Lf1/q;->G(II)V

    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v1, v0}, Lf1/q;->G(II)V

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v1, v0}, Lf1/q;->G(II)V

    const/4 v1, 0x6

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v1, v2}, Lf1/q;->G(II)V

    const/4 v1, 0x7

    .line 6
    invoke-virtual {p0, v1, v0}, Lf1/q;->G(II)V

    const/16 v1, 0x8

    .line 7
    invoke-virtual {p0, v1, v0}, Lf1/q;->G(II)V

    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lf1/q;->G(II)V

    .line 9
    invoke-virtual {p0, v1, v1}, Lf1/q;->G(II)V

    return-void
.end method

.method public p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf1/q;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lf1/q;->k:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lf1/f;->d0:I

    .line 4
    iput v1, p0, Lf1/f;->c0:I

    .line 5
    invoke-virtual {p0}, Lf1/q;->R()V

    .line 6
    iget-object v2, p0, Lf1/r;->P:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-array v0, v0, [I

    const/16 v3, 0x50

    aput v3, v0, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 7
    invoke-virtual {p0, v0}, Lf1/r;->X([I)Z

    .line 8
    iget v0, p0, Lf1/q;->k:I

    invoke-virtual {p0, v0}, Lf1/f;->d0(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lf1/q;->H(Z)V

    .line 9
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w(I)I
    .locals 4

    .line 1
    iget v0, p0, Lf1/q;->k:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    .line 2
    iget v2, p0, Lf1/f;->S:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 3
    iget v2, p0, Lf1/f;->X:I

    add-int/2addr v2, v3

    iput v2, p0, Lf1/f;->X:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Lf1/f;->X:I

    goto :goto_1

    .line 5
    :cond_1
    iput v3, p0, Lf1/f;->X:I

    .line 6
    iput p1, p0, Lf1/f;->S:I

    :goto_0
    move p1, v0

    goto :goto_1

    .line 7
    :cond_2
    iput v1, p0, Lf1/f;->X:I

    :goto_1
    return p1
.end method
