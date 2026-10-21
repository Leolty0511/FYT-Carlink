.class public Lf1/c;
.super Lf1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILp1/a;ILandroid/os/Handler;)V
    .locals 6

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lf1/a;-><init>(IILp1/a;ILandroid/os/Handler;)V

    const-string p1, "Chip2854"

    .line 2
    sput-object p1, Lf1/a;->G0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized X(I)Z
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushNtscPal  ntcsPal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   i2cInvalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf1/q;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lf1/q;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    :try_start_1
    const-string v0, "persist.syu.camera360.format"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f03006b

    const/16 v2, 0x10

    if-eqz p1, :cond_d

    const/4 v3, 0x1

    if-eq p1, v3, :cond_c

    const/4 v4, 0x2

    if-eq p1, v4, :cond_9

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    const/4 v4, 0x6

    if-eq p1, v4, :cond_5

    const/16 v4, 0xd

    if-eq p1, v4, :cond_4

    .line 5
    sget v4, Lu0/b;->s1:I

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 6
    :goto_0
    sget-object v4, Lf1/a;->G0:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flushNtscPal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const-string v3, "AHD_720P_25FPS"

    goto :goto_1

    :cond_3
    const-string v3, "TVI_720P_25FPS"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto/16 :goto_6

    .line 8
    :cond_4
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    const-string v4, "flushNtscPal  NOR_AHD_DVD_NTSC"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto/16 :goto_6

    .line 10
    :cond_5
    sget-object v0, Lf1/a;->G0:Ljava/lang/String;

    const-string v4, "flushNtscPal  TVI_1080P_25FPS"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget v0, Lu0/b;->s1:I

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v3, 0x7f03006a

    invoke-static {v0, v3, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto/16 :goto_6

    .line 13
    :cond_6
    sget v4, Lu0/b;->s1:I

    if-ne v4, v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v1

    .line 14
    :goto_2
    sget-object v4, Lf1/a;->G0:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flushNtscPal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    const-string v3, "AHD_720P_30FPS"

    goto :goto_3

    :cond_8
    const-string v3, "TVI_720P_30FPS"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto :goto_6

    .line 16
    :cond_9
    sget v4, Lu0/b;->s1:I

    if-ne v4, v3, :cond_a

    goto :goto_4

    :cond_a
    move v3, v1

    .line 17
    :goto_4
    sget-object v4, Lf1/a;->G0:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flushNtscPal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_b

    const-string v3, "AHD_720P_25FPS"

    goto :goto_5

    :cond_b
    const-string v3, "TVI_720P_25FPS"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto :goto_6

    .line 19
    :cond_c
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    const-string v4, "flushNtscPal  NOR_CVBS_PAL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    goto :goto_6

    .line 21
    :cond_d
    sget-object v3, Lf1/a;->G0:Ljava/lang/String;

    const-string v4, "flushNtscPal  NOR_CVBS_NTSC"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lf1/a;->q([I)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_e

    .line 23
    iput v1, p0, Lf1/a;->q0:I

    .line 24
    sget-object v1, Lu0/c;->P:Lo1/z;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo1/z;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_e
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
