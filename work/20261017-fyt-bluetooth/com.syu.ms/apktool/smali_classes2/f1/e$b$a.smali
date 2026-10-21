.class public Lf1/e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:J

.field public final f:J

.field public final synthetic g:Lf1/e$b;


# direct methods
.method public constructor <init>(Lf1/e$b;II)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf1/e$b$a;->g:Lf1/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lf1/e$b$a;->a:I

    .line 3
    iput p1, p0, Lf1/e$b$a;->b:I

    .line 4
    iput-boolean p1, p0, Lf1/e$b$a;->c:Z

    .line 5
    iput-boolean p1, p0, Lf1/e$b$a;->d:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lf1/e$b$a;->e:J

    const-wide/16 v0, 0x1f4

    .line 7
    iput-wide v0, p0, Lf1/e$b$a;->f:J

    .line 8
    iput p2, p0, Lf1/e$b$a;->a:I

    .line 9
    iput p3, p0, Lf1/e$b$a;->b:I

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lf1/e$b$a;->e:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "Chip2863"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupVideoIdTask ====>>> setVideoId videoId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lf1/e$b$a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lastVideoId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lf1/e$b$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v3, v3, Lf1/e$b;->A:Lf1/e;

    iget-boolean v3, v3, Lf1/e;->T:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v3, v3, Lf1/e$b;->y:Lf1/e$b$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v2, v0, Lf1/e$b;->x:Landroid/util/SparseIntArray;

    iget v3, v1, Lf1/e$b$a;->b:I

    iget v0, v0, Lf1/s$a;->c:I

    sget v4, Lf1/q;->M:I

    if-ne v0, v4, :cond_0

    sget v0, Lf1/e;->W:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v3, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v3, v3, Lf1/e$b;->A:Lf1/e;

    iget-boolean v3, v3, Lf1/e;->T:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_8

    const/16 v3, 0xc

    const-string v6, "lseccamm"

    const-string v7, "Cam State Check START!!"

    .line 4
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x8

    move v7, v5

    :goto_1
    if-ge v6, v3, :cond_7

    .line 5
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "sys.fyt.cam%d_sta"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-static {v7, v5}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    if-eqz v8, :cond_5

    const-string v9, "lseccamm"

    .line 7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 1"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean v7, v1, Lf1/e$b$a;->d:Z

    if-eqz v7, :cond_4

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 10
    iget-wide v9, v1, Lf1/e$b$a;->e:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v5

    goto :goto_3

    :cond_4
    move v7, v8

    :goto_3
    if-eqz v7, :cond_6

    goto :goto_4

    :cond_5
    move v7, v8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    const-string v3, "lseccamm"

    const-string v6, "Cam State Check END!!"

    .line 11
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    move v7, v5

    .line 12
    :goto_5
    iget-object v3, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v3, v3, Lf1/e$b;->A:Lf1/e;

    iget-object v3, v3, Lf1/q;->s:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_9

    .line 13
    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v0, v0, Lf1/e$b;->A:Lf1/e;

    iget-object v0, v0, Lf1/q;->s:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 14
    :cond_9
    iget-object v3, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v3, v3, Lf1/e$b;->A:Lf1/e;

    iget-object v3, v3, Lf1/s;->S:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v6, "Chip2863"

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetupVideoIdTask ====>>> setVideoId videoId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lf1/e$b$a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lastVideoId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lf1/e$b$a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v6, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v7, v6, Lf1/e$b;->A:Lf1/e;

    const/16 v8, 0x40

    iget v6, v6, Lf1/s$a;->c:I

    invoke-virtual {v7, v8, v6}, Lf1/q;->V(II)I

    .line 17
    iget-object v6, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v6, v6, Lf1/e$b;->A:Lf1/e;

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Lf1/q;->A(I)I

    move-result v6

    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v8, v8, 0x5

    and-int/lit8 v9, v0, 0x5

    const-string v10, "Chip2863"

    const-string v11, "SetupVideoIdTask setVideoId 0x50 Reg value : %02X to %02X  VIN: %02X"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    and-int/lit16 v14, v6, 0xff

    .line 18
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v15, 0x2

    aput-object v0, v13, v15

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Chip2863"

    const-string v10, "SetupVideoIdTask setVideoId value : %02X, iv: %02X, bit: %02X, ret: %02X"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    .line 19
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v15

    and-int/lit8 v13, v6, 0xf

    and-int/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v13, v9, :cond_c

    .line 20
    iget v0, v1, Lf1/e$b$a;->b:I

    if-lez v0, :cond_a

    move v0, v4

    goto :goto_6

    :cond_a
    move v0, v5

    :goto_6
    if-lez v9, :cond_b

    or-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x5

    const-string v8, "Chip2863"

    const-string v9, "SetupVideoIdTask setVideoId ==== 0x50 Reg value : %02X to %02X "

    new-array v10, v15, [Ljava/lang/Object;

    .line 21
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v8, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v8, v8, Lf1/e$b;->A:Lf1/e;

    new-array v9, v15, [I

    aput v7, v9, v5

    aput v6, v9, v4

    invoke-virtual {v8, v9}, Lf1/s;->Z([I)Z

    goto :goto_7

    :cond_b
    or-int/2addr v9, v6

    xor-int/2addr v6, v8

    and-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x5

    const-string v8, "Chip2863"

    const-string v9, "SetupVideoIdTask setVideoId ==== 0x50 Reg value : %02X to %02X "

    new-array v10, v15, [Ljava/lang/Object;

    .line 23
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v8, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v8, v8, Lf1/e$b;->A:Lf1/e;

    new-array v9, v15, [I

    aput v7, v9, v5

    aput v6, v9, v4

    invoke-virtual {v8, v9}, Lf1/s;->Z([I)Z

    goto :goto_7

    :cond_c
    move v0, v5

    .line 25
    :goto_7
    iget-object v6, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v6, v6, Lf1/e$b;->A:Lf1/e;

    const/16 v7, 0x2a

    invoke-virtual {v6, v7}, Lf1/q;->A(I)I

    move-result v6

    .line 26
    iget-object v8, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget v9, v1, Lf1/e$b$a;->b:I

    iput v9, v8, Lf1/s$a;->d:I

    if-lez v9, :cond_d

    move v10, v4

    goto :goto_8

    :cond_d
    move v10, v5

    .line 27
    :goto_8
    invoke-virtual {v8, v9, v10}, Lf1/s$a;->h(II)[I

    move-result-object v8

    const/16 v9, 0x44

    .line 28
    invoke-static {v9, v8}, Lu0/d;->I3(I[I)V

    const-string v9, "Signal"

    .line 29
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===>>Multi setVideoId  chipId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v11, v11, Lf1/e$b;->A:Lf1/e;

    iget v11, v11, Lf1/q;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " channel : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget v11, v11, Lf1/s$a;->b:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v8, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v9, v8, Lf1/e$b;->w:Landroid/util/SparseArray;

    iget v10, v1, Lf1/e$b$a;->b:I

    new-instance v11, Lf1/e$b$b;

    invoke-direct {v11, v8}, Lf1/e$b$b;-><init>(Lf1/e$b;)V

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf1/e$b$b;

    .line 31
    iget v9, v8, Lf1/e$b$b;->a:I

    const-string v10, "Chip2863"

    .line 32
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setVideoId channelChanged : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " toVideoId: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lf1/e$b$a;->b:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " sChannel : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " videoFormat : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget v13, v13, Lf1/s$a;->h:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-le v9, v2, :cond_f

    .line 33
    iget-object v2, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget v10, v2, Lf1/s$a;->h:I

    if-eq v9, v10, :cond_f

    if-eqz v9, :cond_e

    if-eq v9, v4, :cond_e

    .line 34
    iget v10, v2, Lf1/e$b;->r:I

    iget v11, v8, Lf1/e$b$b;->b:I

    if-eq v10, v11, :cond_e

    .line 35
    iput v11, v2, Lf1/e$b;->r:I

    .line 36
    :cond_e
    iput v9, v2, Lf1/s$a;->h:I

    .line 37
    iget-object v2, v2, Lf1/s$a;->j:Lq1/b;

    invoke-virtual {v2, v5}, Lq1/b;->h(I)V

    .line 38
    iget-object v2, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iput-boolean v5, v2, Lf1/s$a;->l:Z

    .line 39
    iput v12, v2, Lf1/e$b;->v:I

    .line 40
    iput-boolean v4, v2, Lf1/s$a;->k:Z

    :cond_f
    const-string v2, "Signal"

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVideoId channelChanged : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " toVideoId: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lf1/e$b$a;->b:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sChannel : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " videoFormat : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget v0, v0, Lf1/s$a;->h:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, v1, Lf1/e$b$a;->b:I

    if-lez v0, :cond_11

    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-boolean v2, v0, Lf1/s$a;->k:Z

    if-nez v2, :cond_11

    const/16 v2, 0x30

    if-eq v6, v2, :cond_10

    .line 43
    iget-object v0, v0, Lf1/e$b;->A:Lf1/e;

    new-array v6, v15, [I

    aput v7, v6, v5

    aput v2, v6, v4

    invoke-virtual {v0, v6}, Lf1/s;->Z([I)Z

    .line 44
    :cond_10
    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v0, v0, Lf1/e$b;->A:Lf1/e;

    iget-boolean v0, v0, Lf1/e;->T:Z

    if-nez v0, :cond_11

    .line 45
    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v0, v0, Lf1/e$b;->A:Lf1/e;

    invoke-virtual {v0, v4}, Lf1/e;->j0(Z)V

    .line 46
    :cond_11
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    iget-object v0, v0, Lf1/e$b;->y:Lf1/e$b$a;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    iget-object v0, v1, Lf1/e$b$a;->g:Lf1/e$b;

    const/4 v2, 0x0

    iput-object v2, v0, Lf1/e$b;->y:Lf1/e$b$a;

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    .line 49
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
