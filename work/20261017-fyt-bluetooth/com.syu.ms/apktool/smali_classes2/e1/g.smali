.class public Le1/g;
.super Le1/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le1/e;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public J(I)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flushNtscPal  ntcsPal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   i2cInvalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mTypeOrAhd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->s1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2850"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Le1/c;->o:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 3
    :cond_0
    sget v0, Lu0/b;->s1:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/16 v4, 0x10

    if-eqz p1, :cond_10

    if-eq p1, v3, :cond_f

    const-string v3, "AHD_720P_25FPS"

    const-string v5, "TVI_720P_25FPS"

    const/4 v6, 0x2

    const-string v7, "flushNtscPal "

    if-eq p1, v6, :cond_c

    const/4 v8, 0x3

    if-eq p1, v8, :cond_9

    const/4 v8, 0x6

    if-eq p1, v8, :cond_6

    const/4 v8, 0x7

    if-eq p1, v8, :cond_4

    const/16 v4, 0xd

    if-eq p1, v4, :cond_3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0, v6}, Le1/g;->J(I)Z

    goto/16 :goto_9

    :cond_3
    const-string v0, "flushNtscPal  NOR_AHD_DVD_NTSC"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v0, Le1/e;->a0:[I

    invoke-virtual {p0, v0}, Le1/e;->K([I)Z

    move-result v2

    goto/16 :goto_9

    :cond_4
    const-string v2, "flushNtscPal  TVI_1080P_30FPS"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    if-eqz v0, :cond_5

    const v0, 0x7f03006d

    goto :goto_2

    :cond_5
    const v0, 0x7f030073

    :goto_2
    invoke-static {v1, v0, v4}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Le1/e;->K([I)Z

    move-result v2

    goto/16 :goto_9

    .line 10
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushNtscPal  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    const-string v3, " AHD_1080P_25FPS"

    goto :goto_3

    :cond_7
    const-string v3, " TVI_1080P_25FPS"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    if-eqz v0, :cond_8

    const v0, 0x7f03006c

    goto :goto_4

    :cond_8
    const v0, 0x7f030072

    :goto_4
    invoke-static {v1, v0, v4}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Le1/e;->K([I)Z

    move-result v2

    goto/16 :goto_9

    .line 12
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    const-string v3, "AHD_720P_30FPS"

    goto :goto_5

    :cond_a
    const-string v3, "TVI_720P_30FPS"

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    if-eqz v0, :cond_b

    const v0, 0x7f03006f

    goto :goto_6

    :cond_b
    const v0, 0x7f030075

    :goto_6
    invoke-static {v1, v0, v4}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Le1/e;->K([I)Z

    move-result v2

    goto :goto_9

    .line 14
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move-object v3, v5

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    if-eqz v0, :cond_e

    const v0, 0x7f03006e

    goto :goto_8

    :cond_e
    const v0, 0x7f030074

    :goto_8
    invoke-static {v1, v0, v4}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Le1/e;->K([I)Z

    move-result v2

    goto :goto_9

    :cond_f
    const-string v0, "flushNtscPal  NOR_CVBS_PAL"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v1, 0x7f030071

    invoke-static {v0, v1, v4}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Le1/e;->K([I)Z

    move-result v2

    goto :goto_9

    :cond_10
    const-string v0, "flushNtscPal  NOR_CVBS_NTSC"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v1, 0x7f030070

    invoke-static {v0, v1, v4}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Le1/e;->K([I)Z

    move-result v2

    :goto_9
    if-eqz v2, :cond_11

    .line 20
    sget-object v0, Lu0/c;->P:Lo1/z;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_11
    return v2
.end method

.method public m()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Le1/c;->f:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ========>>  flushParams last   imagFormat =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le1/c;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "V2850"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Le1/c;->f:I

    invoke-virtual {p0, v0}, Le1/g;->J(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Le1/c;->w(Z)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le1/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " loaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le1/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
