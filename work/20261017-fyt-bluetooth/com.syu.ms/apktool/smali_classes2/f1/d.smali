.class public Lf1/d;
.super Lf1/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0xe

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/b;-><init>(IILp1/a;ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public b0(I)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lf1/q;->u:Lp1/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "Chip2860"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushNtscPal  ntcsPal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   i2cInvalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lf1/q;->v:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mTypeOrAhd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/b;->d0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chipid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lf1/q;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-boolean v1, p0, Lf1/q;->v:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    .line 4
    :cond_0
    iget v1, p0, Lf1/b;->d0:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/16 v4, 0xd

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/16 v7, 0x10

    if-eqz p1, :cond_10

    if-eq p1, v3, :cond_f

    const/4 v8, 0x2

    if-eq p1, v8, :cond_c

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_6

    const/4 v9, 0x7

    if-eq p1, v9, :cond_4

    if-eq p1, v4, :cond_3

    const-string v7, "Chip2860"

    .line 5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flushNtscPal "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v1, "AHD_720P_25FPS"

    goto :goto_1

    :cond_2
    const-string v1, "TVI_720P_25FPS"

    :goto_1
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, v8}, Lf1/d;->b0(I)Z

    move v1, v2

    goto/16 :goto_9

    :cond_3
    const-string v1, "Chip2860"

    const-string v7, "flushNtscPal  NOR_AHD_DVD_NTSC"

    .line 7
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v1, Lf1/b;->x0:[I

    invoke-virtual {p0, v1}, Lf1/b;->q([I)Z

    move-result v1

    goto/16 :goto_9

    :cond_4
    const-string v8, "Chip2860"

    const-string v9, "flushNtscPal  TVI_1080P_30FPS"

    .line 9
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v8

    if-eqz v1, :cond_5

    const v1, 0x7f03006d

    goto :goto_2

    :cond_5
    const v1, 0x7f030073

    :goto_2
    invoke-static {v8, v1, v7}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lf1/b;->q([I)Z

    move-result v1

    goto/16 :goto_9

    :cond_6
    const-string v8, "Chip2860"

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flushNtscPal  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    const-string v10, " AHD_1080P_25FPS"

    goto :goto_3

    :cond_7
    const-string v10, " TVI_1080P_25FPS"

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v8

    if-eqz v1, :cond_8

    const v1, 0x7f03006c

    goto :goto_4

    :cond_8
    const v1, 0x7f030072

    :goto_4
    invoke-static {v8, v1, v7}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lf1/b;->q([I)Z

    move-result v1

    goto/16 :goto_9

    :cond_9
    const-string v8, "Chip2860"

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flushNtscPal "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    const-string v10, "AHD_720P_30FPS"

    goto :goto_5

    :cond_a
    const-string v10, "TVI_720P_30FPS"

    :goto_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v8

    if-eqz v1, :cond_b

    const v1, 0x7f03006f

    goto :goto_6

    :cond_b
    const v1, 0x7f030075

    :goto_6
    invoke-static {v8, v1, v7}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lf1/b;->q([I)Z

    move-result v1

    goto :goto_9

    :cond_c
    const-string v8, "Chip2860"

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flushNtscPal "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_d

    const-string v10, "AHD_720P_25FPS"

    goto :goto_7

    :cond_d
    const-string v10, "TVI_720P_25FPS"

    :goto_7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v8

    if-eqz v1, :cond_e

    const v1, 0x7f03006e

    goto :goto_8

    :cond_e
    const v1, 0x7f030074

    :goto_8
    invoke-static {v8, v1, v7}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lf1/b;->q([I)Z

    move-result v1

    goto :goto_9

    :cond_f
    const-string v1, "Chip2860"

    const-string v8, "flushNtscPal  NOR_CVBS_PAL"

    .line 17
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    const v8, 0x7f030071

    invoke-static {v1, v8, v7}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lf1/b;->q([I)Z

    move-result v1

    goto :goto_9

    :cond_10
    const-string v1, "Chip2860"

    const-string v8, "flushNtscPal  NOR_CVBS_NTSC"

    .line 19
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    const v8, 0x7f030070

    invoke-static {v1, v8, v7}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lf1/b;->q([I)Z

    move-result v1

    :goto_9
    if-eq p1, v4, :cond_11

    if-eqz p1, :cond_11

    if-eq p1, v3, :cond_11

    move v2, v3

    .line 21
    :cond_11
    iput-boolean v2, p0, Lf1/b;->e0:Z

    const-string v2, "Chip2860"

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CHECK SIGNAL  SURE ahd format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  needCheckAhd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lf1/b;->e0:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-boolean v2, p0, Lf1/b;->e0:Z

    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    move v5, v6

    :goto_a
    iput v5, p0, Lf1/q;->C:I

    const-string v2, "Chip2860"

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flushNtscPal result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " lisenter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf1/q;->J:Lf1/q$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " chipid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lf1/q;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_13

    .line 25
    iget-object v2, p0, Lf1/q;->J:Lf1/q$b;

    if-eqz v2, :cond_13

    .line 26
    invoke-interface {v2, p0, p1}, Lf1/q$b;->a(Lf1/q;I)V

    .line 27
    :cond_13
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
