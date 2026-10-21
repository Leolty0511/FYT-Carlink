.class public Lf1/h;
.super Lf1/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/h$c;
    }
.end annotation


# instance fields
.field public final T:Z

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:Ljava/lang/Object;

.field public volatile a0:Z

.field public final b0:Ljava/lang/Runnable;

.field public c0:Z

.field public final d0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0x11

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/s;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf1/h;->T:Z

    const/4 p2, 0x2

    .line 3
    iput p2, p0, Lf1/h;->U:I

    const/16 p2, 0xa

    .line 4
    iput p2, p0, Lf1/h;->V:I

    const/16 p2, 0xf0

    .line 5
    iput p2, p0, Lf1/h;->W:I

    const/16 p2, 0xc0

    .line 6
    iput p2, p0, Lf1/h;->X:I

    const/4 p2, 0x7

    .line 7
    iput p2, p0, Lf1/h;->Y:I

    .line 8
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lf1/h;->Z:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 9
    iput-boolean p3, p0, Lf1/h;->a0:Z

    .line 10
    new-instance p4, Lf1/h$a;

    invoke-direct {p4, p0}, Lf1/h$a;-><init>(Lf1/h;)V

    iput-object p4, p0, Lf1/h;->b0:Ljava/lang/Runnable;

    .line 11
    iput-boolean p3, p0, Lf1/h;->c0:Z

    .line 12
    new-instance p4, Lf1/h$b;

    invoke-direct {p4, p0}, Lf1/h$b;-><init>(Lf1/h;)V

    iput-object p4, p0, Lf1/h;->d0:Ljava/lang/Runnable;

    .line 13
    sget-object p4, Lbase/Configure$Property;->E:Lbase/Configure$Property;

    invoke-virtual {p4, p2}, Lbase/Configure$Property;->d(I)I

    move-result p2

    iput p2, p0, Lf1/h;->Y:I

    const/16 p2, 0x3c

    .line 14
    iput p2, p0, Lf1/q;->c:I

    const/16 p2, 0x2d0

    const/16 p4, 0x1f8

    .line 15
    invoke-virtual {p0, p3, p2, p4}, Lf1/q;->l(III)V

    const/16 p3, 0x25c

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lf1/q;->l(III)V

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "------------->> setupVChannels mVirtualChannels : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Chip6854"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic h0(Lf1/h;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf1/h;->i0(Z)V

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

    const-string v1, "==============================>> RESET  Waiting onUEvent START 1 chipid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/q;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip6854"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lf1/q;->h:I

    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============================>> RESET Waiting onUEvent END 1 chipid : "

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

.method public I(Z)V
    .locals 8

    const-string v0, "chip"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setReadyToReversing:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf1/h;->Z:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lf1/q;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "Chip6854"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReadyToReversing:  last readyToReversing  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->x:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "    readyToReversing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Chip6854"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isSupportReversing:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->D:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-boolean v1, p0, Lf1/q;->D:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lf1/q;->x:Z

    if-eq v1, p1, :cond_c

    .line 7
    iput-boolean p1, p0, Lf1/q;->x:Z

    .line 8
    iget-object v1, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v2, p0, Lf1/h;->d0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lf1/h;->c0:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const-string v3, "persist.lesc.video.ignore"

    .line 10
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 11
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    const/16 v3, 0x7d0

    goto :goto_2

    :cond_3
    const/16 v3, 0xbb8

    :goto_2
    iput v3, p0, Lf1/q;->o:I

    if-nez p1, :cond_8

    const-string v3, "Chip6854"

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   ==========>>> 003  reversing HandlerMain.backcar(0);  chipid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lf1/q;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reverseId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf1/h;->E()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v1}, Lu0/d;->C(I)V

    .line 14
    invoke-virtual {p0}, Lf1/s;->a()V

    .line 15
    iget-object v3, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 16
    invoke-virtual {p0}, Lf1/s;->d0()Lf1/s$a;

    move-result-object v4

    const-string v5, "Signal"

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   ==========>>>  0101  rvChannel  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lf1/s$a;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lf1/s$a;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget v5, v4, Lf1/s$a;->g:I

    invoke-virtual {p0}, Lf1/h;->E()I

    move-result v6

    if-eq v5, v6, :cond_4

    const-string v5, "Signal"

    const-string v6, "   ==========>>>    setVideoId  VIDEO_ID_NULL"

    .line 19
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v4, v1}, Lf1/s$a;->m(I)V

    .line 21
    invoke-virtual {v4, v1}, Lf1/s$a;->k(Z)V

    const-wide/16 v4, 0x96

    .line 22
    invoke-static {v4, v5}, Lo1/s0;->C(J)V

    const-wide/32 v4, 0x7fffffff

    .line 23
    iput-wide v4, p0, Lf1/q;->z:J

    :cond_4
    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_9

    .line 24
    iget-object v5, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/s$a;

    .line 25
    iget v6, v5, Lf1/s$a;->g:I

    if-eqz v6, :cond_6

    .line 26
    iget-object v7, p0, Lf1/q;->g:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 27
    iget v6, v5, Lf1/s$a;->g:I

    invoke-virtual {p0, v6}, Lf1/s;->c(I)V

    .line 28
    :cond_5
    iput v1, v5, Lf1/s$a;->g:I

    goto :goto_4

    .line 29
    :cond_6
    iget v6, v5, Lf1/s$a;->c:I

    sget v7, Lf1/q;->L:I

    if-eq v6, v7, :cond_7

    .line 30
    invoke-virtual {v5}, Lf1/s$a;->b()V

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 31
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lf1/q;->z:J

    .line 32
    invoke-virtual {p0}, Lf1/h;->S()V

    .line 33
    :cond_9
    invoke-virtual {p0, p1}, Lf1/h;->p0(Z)I

    move-result p1

    .line 34
    iget v3, p0, Lf1/h;->V:I

    if-eq p1, v3, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p0, Lf1/h;->c0:Z

    .line 35
    iget-object v2, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v3, p0, Lf1/h;->d0:Ljava/lang/Runnable;

    if-eqz v1, :cond_b

    const-wide/16 v4, 0x1f4

    goto :goto_5

    :cond_b
    const-wide/16 v4, 0x0

    :goto_5
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "Signal"

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 0000   ==========>>>    isWaitingFix0x81 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/h;->c0:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " channelSignalFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/h;->V:I

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_c
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf1/q;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf1/h;->D()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lf1/q;->r:Z

    return v0
.end method

.method public N()V
    .locals 14

    .line 1
    new-instance v6, Lf1/h$c;

    sget v2, Lf1/q;->M:I

    sget v3, Lf1/q;->L:I

    const/4 v7, 0x0

    new-array v5, v7, [I

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lf1/h$c;-><init>(Lf1/h;IIZ[I)V

    .line 2
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v1, Lf1/q;->M:I

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    new-instance v0, Lf1/h$c;

    sget v11, Lf1/q;->N:I

    new-array v13, v7, [I

    const/4 v12, 0x0

    move-object v8, v0

    move-object v9, p0

    move v10, v11

    invoke-direct/range {v8 .. v13}, Lf1/h$c;-><init>(Lf1/h;IIZ[I)V

    .line 4
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v2, Lf1/q;->N:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    new-instance v0, Lf1/h$c;

    sget v11, Lf1/q;->O:I

    new-array v13, v7, [I

    move-object v8, v0

    move v10, v11

    invoke-direct/range {v8 .. v13}, Lf1/h$c;-><init>(Lf1/h;IIZ[I)V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lf1/s$a;->l:Z

    .line 7
    iget-object v2, v0, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v2, v1}, Lq1/b;->h(I)V

    const/4 v1, 0x2

    .line 8
    iput v1, v0, Lf1/s$a;->h:I

    .line 9
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v2, Lf1/q;->O:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------->> Chip6854  setupVirtualChannels :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip6854"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public S()V
    .locals 7

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

    const-string v1, "Chip6854"

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
    invoke-virtual {p0}, Lf1/h;->p()V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lf1/q;->x:Z

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lf1/s;->d0()Lf1/s$a;

    move-result-object v2

    .line 8
    iget v3, v2, Lf1/s$a;->d:I

    iput v3, v2, Lf1/s$a;->g:I

    .line 9
    invoke-virtual {p0}, Lf1/s;->m()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "  closeVideo 000"

    .line 10
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Signal"

    const-string v3, "   ==========>>> 01    setVideoId  VIDEO_ID_NULL"

    .line 11
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v2, v4}, Lf1/s$a;->m(I)V

    const-wide/16 v5, 0x96

    .line 13
    invoke-static {v5, v6}, Lo1/s0;->C(J)V

    :cond_3
    :goto_0
    if-ge v4, v0, :cond_7

    .line 14
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/s$a;

    .line 15
    iget v3, v1, Lf1/s$a;->c:I

    sget v5, Lf1/q;->L:I

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v2, :cond_5

    .line 16
    invoke-virtual {p0}, Lf1/s;->m()Z

    move-result v3

    if-nez v3, :cond_5

    .line 17
    invoke-virtual {p0}, Lf1/h;->E()I

    move-result v3

    invoke-virtual {v1, v3}, Lf1/s$a;->m(I)V

    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v3}, Lf1/s$a;->k(Z)V

    goto :goto_1

    :cond_5
    if-eq v1, v2, :cond_6

    .line 19
    iget v3, v1, Lf1/s$a;->d:I

    if-eqz v3, :cond_6

    .line 20
    iput v3, v1, Lf1/s$a;->g:I

    .line 21
    invoke-virtual {v1}, Lf1/s$a;->b()V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public c0(II)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lf1/q;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf1/h;->E()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf1/h;->Z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Chip6854"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00 ==>> requestVideo  videoId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5
    invoke-virtual {p0, p1}, Lf1/s;->a0(I)I

    move-result v2

    .line 6
    iget-object v3, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/s$a;

    const/4 v3, 0x1

    if-ne p1, p2, :cond_4

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_4

    .line 7
    iget-object v5, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/s$a;

    .line 8
    iget v6, v5, Lf1/s$a;->c:I

    sget v7, Lf1/q;->L:I

    if-eq v6, v7, :cond_2

    .line 9
    iget-object v6, v5, Lf1/s$a;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    iget-object v7, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget v8, v5, Lf1/s$a;->b:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, p1, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v5, v6}, Lf1/s$a;->k(Z)V

    if-nez v6, :cond_3

    const-string v6, "Signal"

    const-string v7, "   ==========>>> 02   setVideoId  VIDEO_ID_NULL"

    .line 12
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v5, v2}, Lf1/s$a;->m(I)V

    .line 14
    iget-object v6, p0, Lf1/s;->Q:Landroid/util/SparseIntArray;

    iget v7, v5, Lf1/s$a;->b:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v5, v3}, Lf1/s$a;->k(Z)V

    :cond_3
    :goto_1
    const-string v6, "Chip6854"

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestVideo ===  vChannel index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lf1/s$a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " vChannel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lf1/s$a;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Lf1/s$a;->a:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "Chip6854"

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "01 ==>> requestVideo() videoId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-super {p0, p1, p2}, Lf1/s;->c0(II)V

    const-string p1, "Chip6854"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "02 ==>> requestVideo() videoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    .line 20
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object p2, p0, Lf1/h;->d0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    iput-boolean v3, p0, Lf1/h;->c0:Z

    .line 22
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object p2, p0, Lf1/h;->d0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f0()V
    .locals 4

    .line 1
    invoke-super {p0}, Lf1/s;->f0()V

    .line 2
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/h;->d0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf1/h;->c0:Z

    .line 4
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/h;->d0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public g0()V
    .locals 7

    const-string v0, "Chip6854"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateParameters  index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channelHdFlag: %02X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lf1/h;->W:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channelSignalFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf1/h;->V:I

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lf1/h;->j0()V

    .line 4
    invoke-virtual {p0}, Lf1/h;->m0()Z

    .line 5
    invoke-virtual {p0}, Lf1/h;->k0()Z

    .line 6
    invoke-virtual {p0}, Lf1/h;->l0()Z

    .line 7
    invoke-virtual {p0, v3}, Lf1/h;->o0(Z)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Chip6854"

    const-string v1, "updateParameters  END!!"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h(IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf1/s;->a0(I)I

    move-result p1

    if-lez p1, :cond_1

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

.method public final i0(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START fix0x81  mChannelHdEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/h;->U:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channelSignalFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf1/h;->V:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chip6854"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lf1/h;->V:I

    .line 3
    invoke-virtual {p0, p1}, Lf1/h;->p0(Z)I

    move-result p1

    iput p1, p0, Lf1/h;->V:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v2, 0x81

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    .line 4
    invoke-virtual {p0, v0}, Lf1/s;->Z([I)Z

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "End fix0x81 channelSignalFlag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/h;->V:I

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mChannelHdEnable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf1/h;->U:I

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Signal"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-boolean p1, p0, Lf1/h;->c0:Z

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x64

    .line 7
    invoke-static {v2, v3}, Lo1/s0;->C(J)V

    .line 8
    iput-boolean v1, p0, Lf1/h;->c0:Z

    :cond_1
    return-void
.end method

.method public final j0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0xc0

    if-ge v2, v0, :cond_1

    .line 2
    iget-object v5, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/s$a;

    .line 3
    invoke-virtual {v5}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v5

    iget v5, v5, Lf1/q$c;->b:I

    const/16 v6, 0x438

    if-ne v5, v6, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iput v3, p0, Lf1/h;->X:I

    :goto_1
    if-ge v1, v0, :cond_4

    .line 5
    iget-object v2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/s$a;

    .line 6
    instance-of v3, v2, Lf1/h$c;

    if-eqz v3, :cond_3

    .line 7
    check-cast v2, Lf1/h$c;

    iget v3, p0, Lf1/h;->X:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    iput v3, v2, Lf1/h$c;->n:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public k0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/s$a;

    if-nez v4, :cond_0

    move v5, v1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v4}, Lf1/s$a;->c()Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_1

    .line 4
    invoke-virtual {v4}, Lf1/s$a;->l()V

    :cond_1
    if-nez v3, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public final l0()Z
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postFlush  index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v0, Lf1/h;->W:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, " channelHdFlag: %02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v0, Lf1/h;->V:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, " channelSignalFlag: %02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Chip6854"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x12

    new-array v1, v1, [I

    const/16 v3, 0xff

    aput v3, v1, v5

    const/16 v4, 0x9

    aput v4, v1, v2

    const/4 v6, 0x2

    aput v5, v1, v6

    const/4 v7, 0x3

    aput v7, v1, v7

    const/4 v8, 0x4

    aput v3, v1, v8

    const/4 v9, 0x5

    const/16 v10, 0x8

    aput v10, v1, v9

    const/4 v11, 0x6

    aput v8, v1, v11

    const/4 v12, 0x7

    aput v7, v1, v12

    const/16 v13, 0x6c

    aput v13, v1, v10

    .line 2
    iget v14, v0, Lf1/h;->V:I

    const/16 v15, 0x10

    or-int/2addr v14, v15

    aput v14, v1, v4

    const/16 v14, 0xa

    aput v11, v1, v14

    const/16 v16, 0xb

    const/16 v17, 0x7c

    aput v17, v1, v16

    const/16 v18, 0x21

    const/16 v19, 0xc

    aput v18, v1, v19

    const/16 v18, 0xd

    aput v2, v1, v18

    const/16 v20, 0x34

    const/16 v4, 0xe

    aput v20, v1, v4

    const/16 v20, 0xf

    aput v11, v1, v20

    const/16 v20, 0x35

    aput v20, v1, v15

    const/16 v20, 0x11

    aput v16, v1, v20

    invoke-virtual {v0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v5

    .line 3
    :goto_0
    iget-object v15, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v14, Lf1/q;->L:I

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    if-ltz v14, :cond_2

    .line 4
    iget-object v14, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v15, Lf1/q;->L:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf1/s$a;

    if-eqz v14, :cond_2

    .line 5
    iget-boolean v15, v14, Lf1/s$a;->l:Z

    if-eqz v15, :cond_2

    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v15

    invoke-virtual {v15}, Lf1/q$c;->a()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 6
    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v14

    if-eqz v1, :cond_1

    new-array v1, v8, [I

    const/16 v15, 0x78

    aput v15, v1, v5

    .line 7
    iget v15, v14, Lf1/q$c;->a:I

    div-int/2addr v15, v6

    .line 8
    invoke-static {v15, v5}, Lo1/s0;->c(II)I

    move-result v15

    aput v15, v1, v2

    const/16 v15, 0x79

    aput v15, v1, v6

    iget v14, v14, Lf1/q$c;->a:I

    div-int/2addr v14, v6

    .line 9
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v14

    aput v14, v1, v7

    .line 10
    invoke-virtual {v0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v5

    .line 11
    :cond_2
    :goto_1
    iget-object v14, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v15, Lf1/q;->M:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    if-ltz v14, :cond_4

    .line 12
    iget-object v14, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v15, Lf1/q;->M:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf1/s$a;

    if-eqz v14, :cond_4

    .line 13
    iget-boolean v15, v14, Lf1/s$a;->l:Z

    if-eqz v15, :cond_4

    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v15

    invoke-virtual {v15}, Lf1/q$c;->a()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 14
    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v14

    if-eqz v1, :cond_3

    new-array v1, v8, [I

    const/16 v15, 0x7a

    aput v15, v1, v5

    .line 15
    iget v15, v14, Lf1/q$c;->a:I

    div-int/2addr v15, v6

    .line 16
    invoke-static {v15, v5}, Lo1/s0;->c(II)I

    move-result v15

    aput v15, v1, v2

    const/16 v15, 0x7b

    aput v15, v1, v6

    iget v14, v14, Lf1/q$c;->a:I

    div-int/2addr v14, v6

    .line 17
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v14

    aput v14, v1, v7

    .line 18
    invoke-virtual {v0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v5

    .line 19
    :cond_4
    :goto_2
    iget-object v14, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v15, Lf1/q;->N:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    if-ltz v14, :cond_6

    .line 20
    iget-object v14, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v15, Lf1/q;->N:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf1/s$a;

    if-eqz v14, :cond_6

    .line 21
    iget-boolean v15, v14, Lf1/s$a;->l:Z

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v15

    invoke-virtual {v15}, Lf1/q$c;->a()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 22
    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v14

    if-eqz v1, :cond_5

    new-array v1, v8, [I

    aput v17, v1, v5

    .line 23
    iget v15, v14, Lf1/q$c;->a:I

    div-int/2addr v15, v6

    .line 24
    invoke-static {v15, v5}, Lo1/s0;->c(II)I

    move-result v15

    aput v15, v1, v2

    const/16 v15, 0x7d

    aput v15, v1, v6

    iget v14, v14, Lf1/q$c;->a:I

    div-int/2addr v14, v6

    .line 25
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v14

    aput v14, v1, v7

    .line 26
    invoke-virtual {v0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v5

    .line 27
    :cond_6
    :goto_3
    iget-object v14, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v15, Lf1/q;->O:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v14

    if-ltz v14, :cond_8

    .line 28
    iget-object v14, v0, Lf1/q;->e:Landroid/util/SparseArray;

    sget v15, Lf1/q;->O:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf1/s$a;

    if-eqz v14, :cond_8

    .line 29
    iget-boolean v15, v14, Lf1/s$a;->l:Z

    if-eqz v15, :cond_8

    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v15

    invoke-virtual {v15}, Lf1/q$c;->a()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 30
    invoke-virtual {v14}, Lf1/s$a;->e()Lf1/q$c;

    move-result-object v14

    if-eqz v1, :cond_7

    new-array v1, v8, [I

    const/16 v15, 0x7e

    aput v15, v1, v5

    .line 31
    iget v15, v14, Lf1/q$c;->a:I

    div-int/2addr v15, v6

    .line 32
    invoke-static {v15, v5}, Lo1/s0;->c(II)I

    move-result v15

    aput v15, v1, v2

    const/16 v15, 0x7f

    aput v15, v1, v6

    iget v14, v14, Lf1/q$c;->a:I

    div-int/2addr v14, v6

    .line 33
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v14

    aput v14, v1, v7

    .line 34
    invoke-virtual {v0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v5

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    new-array v1, v4, [I

    aput v13, v1, v5

    .line 35
    iget v4, v0, Lf1/h;->V:I

    aput v4, v1, v2

    aput v8, v1, v6

    aput v5, v1, v7

    const/16 v4, 0x20

    aput v4, v1, v8

    const/16 v4, 0xaa

    aput v4, v1, v9

    aput v12, v1, v11

    aput v9, v1, v12

    aput v3, v1, v10

    const/16 v4, 0xa

    const/16 v6, 0x9

    aput v4, v1, v6

    aput v13, v1, v4

    const/16 v4, 0x10

    aput v4, v1, v16

    aput v3, v1, v19

    aput v5, v1, v18

    invoke-virtual {v0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v2, v5

    :goto_5
    return v2
.end method

.method public final m0()Z
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x81

    aput v2, v0, v1

    .line 1
    iget v1, p0, Lf1/h;->V:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xdf

    aput v1, v0, v2

    iget v1, p0, Lf1/h;->W:I

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0xf0

    aput v2, v0, v1

    iget v1, p0, Lf1/h;->X:I

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v3, 0xf6

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd3

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x50

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lf1/s;->Z([I)Z

    move-result v0

    return v0
.end method

.method public n0()Z
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-virtual {p0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v4, 0xfb

    .line 3
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    .line 4
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    .line 5
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    .line 6
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    .line 7
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v5

    .line 8
    invoke-virtual {p0, v4}, Lf1/q;->A(I)I

    move-result v4

    const/16 v6, 0xc

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-eqz v1, :cond_1

    new-array v1, v6, [I

    .line 9
    fill-array-data v1, :array_2

    invoke-virtual {p0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    const/16 v7, 0x34

    if-ne v4, v7, :cond_3

    const/16 v7, 0xa9

    if-eq v5, v7, :cond_4

    :cond_3
    const/16 v7, 0x2c

    if-ne v4, v7, :cond_5

    const/16 v4, 0xa8

    if-ne v5, v4, :cond_5

    :cond_4
    if-eqz v1, :cond_1

    const/16 v1, 0xe

    new-array v1, v1, [I

    .line 10
    fill-array-data v1, :array_3

    invoke-virtual {p0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_1

    new-array v1, v6, [I

    .line 11
    fill-array-data v1, :array_4

    invoke-virtual {p0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 12
    :goto_2
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_7

    .line 13
    iget-object v6, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf1/s$a;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v7, 0xff

    aput v7, v1, v3

    .line 14
    iget v6, v6, Lf1/s$a;->b:I

    aput v6, v1, v2

    const/16 v6, 0x49

    aput v6, v1, v0

    const/4 v6, 0x3

    const/16 v7, 0x81

    aput v7, v1, v6

    const/4 v6, 0x4

    const/16 v7, 0x19

    aput v7, v1, v6

    const/4 v6, 0x5

    const/16 v7, 0xa

    aput v7, v1, v6

    const/4 v6, 0x6

    const/16 v7, 0xd3

    aput v7, v1, v6

    const/4 v6, 0x7

    const/16 v7, 0x50

    aput v7, v1, v6

    invoke-virtual {p0, v1}, Lf1/s;->Z([I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    return v1

    :array_0
    .array-data 4
        0xe1
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xfa
        0x81
    .end array-data

    :array_2
    .array-data 4
        0xef
        0xaa
        0xe7
        0xff
        0xff
        0x9
        0x3
        0xc
        0xff
        0xb
        0x3
        0xc
    .end array-data

    :array_3
    .array-data 4
        0xef
        0xaa
        0xe7
        0xff
        0xfc
        0x60
        0xff
        0x9
        0x3
        0x18
        0xff
        0xb
        0x3
        0x18
    .end array-data

    :array_4
    .array-data 4
        0xef
        0xaa
        0xfc
        0x60
        0xff
        0x9
        0x3
        0x18
        0xff
        0xb
        0x3
        0x18
    .end array-data
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-super {p0}, Lf1/q;->o()V

    .line 2
    sget v0, Lf1/q;->O:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 3
    sget v0, Lf1/q;->N:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 4
    sget v0, Lf1/q;->N:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 5
    sget v0, Lf1/q;->N:I

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 6
    sget v0, Lf1/q;->N:I

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 7
    sget v0, Lf1/q;->N:I

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 8
    sget v0, Lf1/q;->N:I

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 9
    sget v0, Lf1/q;->N:I

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 10
    sget v0, Lf1/q;->O:I

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 11
    sget v0, Lf1/q;->O:I

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    .line 12
    sget v0, Lf1/q;->M:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lf1/s;->G(II)V

    return-void
.end method

.method public o0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v1, p0, Lf1/h;->b0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-boolean v0, p0, Lf1/h;->a0:Z

    if-eq v0, p1, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReady  old == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/h;->a0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to new : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Chip6854"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lf1/h;->a0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageDevice2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-boolean p1, p0, Lf1/h;->a0:Z

    .line 6
    iget-boolean p1, p0, Lf1/h;->a0:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 8
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/s$a;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lf1/s$a;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lf1/q;->s:Landroid/os/Handler;

    iget-object v0, p0, Lf1/h;->b0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public declared-synchronized p()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "Chip6854"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------->> flushParams  mVirtualChannels :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lf1/h;->n0()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/s$a;

    .line 5
    iget v5, v4, Lf1/s$a;->c:I

    sget v6, Lf1/q;->L:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    .line 6
    iput-boolean v5, v4, Lf1/s$a;->l:Z

    .line 7
    iget-object v6, v4, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v6, v5}, Lq1/b;->h(I)V

    .line 8
    iget v5, p0, Lf1/h;->Y:I

    iput v5, v4, Lf1/s$a;->h:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lf1/h;->g0()V

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 10
    iget-object v4, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/s$a;

    .line 11
    iget v5, v4, Lf1/s$a;->c:I

    sget v6, Lf1/q;->L:I

    if-eq v5, v6, :cond_2

    .line 12
    iput-boolean v2, v4, Lf1/s$a;->l:Z

    .line 13
    iget-object v5, v4, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v5, v2}, Lq1/b;->h(I)V

    const/4 v5, -0x1

    .line 14
    iput v5, v4, Lf1/s$a;->h:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "Chip6854"

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==>> flushParams() chipid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0, v0}, Lf1/s;->H(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p0(Z)I
    .locals 9

    .line 1
    iget-object v0, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2
    iget v1, p0, Lf1/h;->V:I

    const-string v2, " "

    const-string v3, " vChannel: "

    const-string v4, "Chip6854"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_2

    :goto_0
    if-ge v5, v0, :cond_5

    .line 3
    iget-object p1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/s$a;

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "000 fix0x81 vChannel index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lf1/s$a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lf1/s$a;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lf1/s$a;->a:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v7, p1, Lf1/s$a;->c:I

    sget v8, Lf1/q;->L:I

    if-eq v7, v8, :cond_1

    iget-boolean v7, p1, Lf1/s$a;->a:Z

    if-eqz v7, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget p1, p1, Lf1/s$a;->b:I

    shl-int p1, v6, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0xf

    and-int/2addr p1, v1

    goto :goto_2

    .line 7
    :cond_1
    :goto_1
    iget p1, p1, Lf1/s$a;->b:I

    shl-int p1, v6, p1

    or-int/lit8 p1, p1, 0x2

    :goto_2
    move v1, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    if-ge v5, v0, :cond_5

    .line 8
    iget-object p1, p0, Lf1/q;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/s$a;

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "001 fix0x81 vChannel index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lf1/s$a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lf1/s$a;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lf1/s$a;->a:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget v7, p1, Lf1/s$a;->c:I

    sget v8, Lf1/q;->L:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p1, Lf1/s$a;->f:Z

    if-eqz v7, :cond_3

    goto :goto_4

    .line 11
    :cond_3
    iget p1, p1, Lf1/s$a;->b:I

    shl-int p1, v6, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0xf

    and-int/2addr p1, v1

    goto :goto_5

    .line 12
    :cond_4
    :goto_4
    iget p1, p1, Lf1/s$a;->b:I

    shl-int p1, v6, p1

    or-int/lit8 p1, p1, 0x2

    :goto_5
    move v1, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    return v1
.end method

.method public z()Ljava/lang/String;
    .locals 1

    const-string v0, "sys.fyt.main2.vc_"

    return-object v0
.end method
