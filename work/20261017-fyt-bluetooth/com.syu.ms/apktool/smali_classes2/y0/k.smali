.class public Ly0/k;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# instance fields
.field public I0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, v0}, Ly0/k;-><init>(II)V

    .line 2
    iget-boolean v1, p0, Ly0/k;->I0:Z

    if-eqz v1, :cond_0

    .line 3
    sget-boolean v1, Lu0/b;->V3:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    .line 4
    invoke-static {v1, v0}, Ly0/h;->X(IZ)V

    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lmodule/sound/AudioDevice;-><init>(II)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Ly0/k;->I0:Z

    return-void
.end method


# virtual methods
.method public A1(IZ)V
    .locals 3

    if-ltz p1, :cond_4

    const/16 v0, 0x24

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-ne p1, p2, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "volune vol = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " this.vol = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "soundMute"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_4

    .line 4
    iget-boolean p2, p0, Ly0/k;->I0:Z

    if-eqz p2, :cond_3

    if-lez p1, :cond_3

    .line 5
    sget-boolean p2, Lu0/b;->V3:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/16 p2, 0x10

    .line 6
    invoke-static {p2, v2}, Ly0/h;->X(IZ)V

    .line 7
    :cond_2
    iput-boolean v2, p0, Ly0/k;->I0:Z

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute vol unmute = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    :cond_4
    :goto_0
    return-void
.end method

.method public final D1(II)I
    .locals 1

    int-to-float p1, p1

    int-to-float p2, p2

    .line 1
    sget v0, Ly0/f;->g:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public R()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget v1, Lu0/b;->D:I

    .line 2
    sget v2, Lh0/c;->G:I

    const/16 v3, 0xf

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    sget-boolean v2, Lh0/c;->m0:Z

    if-nez v2, :cond_1

    .line 3
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2}, Lu0/i;->r3()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 4
    :goto_1
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_3

    sget v6, Lu0/b;->Z:I

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v4

    .line 5
    :goto_3
    sget v7, Ly0/f;->C0:I

    .line 6
    sget v8, Ly0/f;->g:I

    .line 7
    iget-object v8, v0, Lmodule/sound/AudioDevice;->G:Ljava/lang/Integer;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_4

    .line 8
    iget-object v7, v0, Lmodule/sound/AudioDevice;->G:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 9
    :cond_4
    sget v8, Ly0/f;->F0:I

    if-ltz v8, :cond_5

    if-le v7, v8, :cond_5

    move v7, v8

    .line 10
    :cond_5
    invoke-virtual {v0, v1}, Ly0/k;->j0(I)I

    move-result v8

    .line 11
    sget v9, Ly0/f;->F0:I

    if-ltz v9, :cond_6

    .line 12
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 13
    :cond_6
    invoke-static {}, La/c;->m()I

    move-result v9

    invoke-virtual {v0, v9, v7}, Ly0/k;->D1(II)I

    move-result v9

    .line 14
    invoke-static {}, La/c;->w()I

    move-result v10

    invoke-virtual {v0, v10, v7}, Ly0/k;->D1(II)I

    move-result v10

    .line 15
    invoke-static {}, La/c;->t()I

    move-result v11

    invoke-virtual {v0, v11, v7}, Ly0/k;->D1(II)I

    move-result v11

    .line 16
    sget v12, Ly0/f;->K0:I

    and-int/lit16 v12, v12, -0x101

    and-int/lit8 v12, v12, -0x11

    const v13, 0xffff

    and-int/2addr v12, v13

    if-eqz v12, :cond_7

    if-nez v2, :cond_7

    .line 17
    invoke-virtual {v0, v4}, Ly0/k;->u0(Z)V

    return-void

    :cond_7
    const/high16 v12, 0x3f000000    # 0.5f

    const-string v13, "sound"

    const/4 v14, 0x2

    if-eqz v2, :cond_c

    .line 18
    sget v2, Ly0/f;->J0:I

    if-ge v7, v2, :cond_8

    move v7, v2

    .line 19
    :cond_8
    invoke-static {}, Lh0/e;->C()Z

    move-result v2

    if-eqz v2, :cond_9

    if-ne v1, v14, :cond_9

    move v7, v5

    .line 20
    :cond_9
    iget-boolean v2, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v2, :cond_b

    if-lez v7, :cond_a

    move v2, v4

    goto :goto_4

    :cond_a
    move v2, v5

    :goto_4
    move v3, v7

    goto :goto_5

    :cond_b
    move v2, v5

    move v3, v2

    .line 21
    :goto_5
    invoke-static {}, La/c;->g()I

    move-result v6

    invoke-virtual {v0, v6, v7}, Ly0/k;->D1(II)I

    move-result v6

    sget v9, Lh0/c;->a0:I

    mul-int/2addr v6, v9

    sget v9, Lh0/c;->b0:I

    div-int/2addr v6, v9

    int-to-float v6, v6

    add-float/2addr v6, v12

    float-to-int v6, v6

    move v12, v5

    move v9, v7

    move v11, v10

    move v10, v12

    move v7, v6

    move v6, v10

    goto/16 :goto_13

    :cond_c
    if-eqz v6, :cond_e

    .line 22
    sget v2, Ly0/f;->x:I

    if-nez v2, :cond_d

    sget v2, Ly0/f;->R:I

    mul-int/2addr v7, v2

    sget v2, Ly0/f;->S:I

    div-int/2addr v7, v2

    int-to-float v2, v7

    add-float/2addr v2, v12

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    float-to-int v7, v2

    .line 23
    invoke-static {}, La/c;->m()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v9

    .line 24
    invoke-static {}, La/c;->w()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v10

    .line 25
    invoke-static {}, La/c;->t()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v11

    :cond_e
    if-nez v7, :cond_f

    .line 26
    invoke-virtual {v0, v4}, Ly0/k;->u0(Z)V

    return-void

    .line 27
    :cond_f
    sget v2, Ly0/f;->R0:I

    if-eqz v2, :cond_10

    move v2, v4

    goto :goto_7

    :cond_10
    move v2, v5

    .line 28
    :goto_7
    sget v6, Ly0/f;->T0:I

    if-eqz v6, :cond_11

    move v6, v4

    goto :goto_8

    :cond_11
    move v6, v5

    .line 29
    :goto_8
    sget v16, Ly0/f;->Q0:I

    if-eqz v16, :cond_12

    move v5, v4

    :cond_12
    if-nez v2, :cond_13

    if-nez v6, :cond_13

    if-eqz v5, :cond_14

    :cond_13
    if-nez v8, :cond_14

    move/from16 v17, v4

    goto :goto_9

    :cond_14
    const/16 v17, 0x0

    .line 30
    :goto_9
    iget-boolean v15, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v15, :cond_15

    if-ne v1, v14, :cond_15

    move v12, v7

    goto :goto_b

    :cond_15
    if-eqz v17, :cond_17

    .line 31
    sget-object v15, Ly0/f;->y0:[I

    const/16 v17, 0x7

    aget v15, v15, v17

    .line 32
    sget-object v18, Ly0/f;->w0:[I

    aget v17, v18, v17

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    if-nez v5, :cond_16

    int-to-float v12, v7

    goto :goto_a

    :cond_16
    mul-int v17, v17, v7

    .line 33
    div-int v17, v17, v15

    add-int v15, v7, v17

    int-to-float v15, v15

    add-float/2addr v12, v15

    :goto_a
    float-to-int v12, v12

    goto :goto_b

    :cond_17
    const/4 v12, 0x0

    :goto_b
    if-lez v12, :cond_18

    move v15, v4

    goto :goto_c

    :cond_18
    const/4 v15, 0x0

    .line 34
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "========================>>>>>   002   tipAudio = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "  voiceAudio = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "  naviAudio = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "   DataMain.sArmMuteAndAmpMute = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lu0/b;->V3:Z

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_19

    .line 35
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->w1()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v2

    move v10, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    goto/16 :goto_11

    :cond_19
    if-eqz v2, :cond_1c

    .line 36
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v2

    .line 37
    invoke-static {}, La/c;->t()I

    move-result v3

    invoke-virtual {v0, v3, v7}, Ly0/k;->D1(II)I

    move-result v11

    :cond_1a
    :goto_d
    const/4 v3, -0x1

    :cond_1b
    :goto_e
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_1c
    if-eqz v15, :cond_1d

    if-eqz v5, :cond_1d

    .line 38
    invoke-virtual {v0, v7}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v2

    move v7, v2

    goto/16 :goto_10

    :cond_1d
    const/4 v2, 0x3

    if-eq v1, v4, :cond_28

    const/4 v3, 0x2

    if-eq v1, v3, :cond_22

    if-eq v1, v2, :cond_22

    const/16 v2, 0xf

    if-eq v1, v2, :cond_22

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1f

    packed-switch v1, :pswitch_data_0

    .line 39
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v2

    if-eqz v5, :cond_1a

    .line 40
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v2

    goto :goto_d

    .line 41
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v2

    if-eqz v5, :cond_1e

    .line 42
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v2

    :cond_1e
    const/4 v3, 0x0

    goto :goto_e

    .line 43
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->t1()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v2

    .line 44
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v3

    invoke-virtual {v0, v3, v7}, Ly0/k;->D1(II)I

    move-result v3

    if-eqz v5, :cond_20

    .line 45
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_20
    if-eqz v5, :cond_21

    .line 46
    invoke-virtual {v0, v3}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_21
    move v6, v2

    move v2, v3

    :goto_f
    const/4 v3, -0x1

    goto :goto_11

    .line 47
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->t1()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v2

    if-eqz v5, :cond_23

    .line 48
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 49
    :cond_23
    sget v3, Lu0/b;->L3:I

    if-gtz v3, :cond_24

    sget-boolean v3, Lu0/b;->M3:Z

    if-eqz v3, :cond_25

    :cond_24
    const/4 v2, 0x0

    .line 50
    :cond_25
    invoke-static {}, Lh0/e;->C()Z

    move-result v3

    if-eqz v3, :cond_26

    const/16 v3, 0xf

    if-eq v1, v3, :cond_26

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 51
    :cond_26
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    invoke-virtual {v3}, Lu0/i;->r3()Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v9, 0x0

    :cond_27
    move v6, v2

    const/4 v2, 0x0

    goto :goto_f

    .line 52
    :cond_28
    sget v3, Lw0/d;->a:I

    if-ne v3, v2, :cond_2a

    .line 53
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ly0/k;->D1(II)I

    move-result v2

    .line 54
    invoke-virtual/range {p0 .. p0}, Lmodule/sound/AudioDevice;->v1()I

    move-result v3

    invoke-virtual {v0, v3, v7}, Ly0/k;->D1(II)I

    move-result v3

    if-eqz v5, :cond_29

    .line 55
    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_29
    if-eqz v5, :cond_1b

    .line 56
    invoke-virtual {v0, v3}, Lmodule/sound/AudioDevice;->a0(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_e

    :cond_2a
    :goto_10
    const/4 v2, -0x1

    goto/16 :goto_d

    .line 57
    :goto_11
    sget v5, Ly0/f;->p:I

    if-lez v5, :cond_2b

    move v2, v15

    const/4 v5, 0x0

    goto :goto_12

    :cond_2b
    move v5, v2

    move v2, v15

    :goto_12
    move/from16 v19, v6

    move v6, v3

    move v3, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v7

    move/from16 v7, v19

    .line 58
    :goto_13
    sget v14, Ly0/f;->i:I

    if-ne v14, v4, :cond_2c

    move v14, v4

    goto :goto_14

    :cond_2c
    const/4 v14, 0x0

    .line 59
    :goto_14
    invoke-virtual {v0, v1}, Lmodule/sound/AudioDevice;->w(I)Z

    move-result v15

    if-eqz v15, :cond_2d

    move v8, v4

    move v14, v8

    const/4 v4, 0x0

    goto :goto_17

    :cond_2d
    const-string v15, "fix Stream =========  <<<<< *** >>>>>>  vol"

    .line 60
    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========================>>>>>   002  mixOn = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  mixVol = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vol = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-boolean v4, v0, Lmodule/sound/AudioDevice;->v:Z

    if-eqz v4, :cond_2e

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2e

    goto :goto_15

    :cond_2e
    if-eqz v8, :cond_2f

    xor-int/lit8 v4, v2, 0x1

    goto :goto_16

    :cond_2f
    :goto_15
    const/4 v4, 0x1

    .line 63
    :goto_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "========================>>>>>   hasMainVol = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v4

    const/4 v4, 0x1

    :goto_17
    if-nez v4, :cond_30

    if-eqz v14, :cond_30

    .line 64
    invoke-virtual {v0, v14}, Ly0/k;->u0(Z)V

    :cond_30
    const/4 v15, -0x1

    if-eq v7, v15, :cond_31

    .line 65
    invoke-static {v7}, La/c;->f(I)V

    :cond_31
    if-eq v5, v15, :cond_32

    .line 66
    invoke-static {v5}, La/c;->p(I)V

    :cond_32
    if-eq v6, v15, :cond_33

    .line 67
    invoke-static {v6}, La/c;->i(I)V

    .line 68
    :cond_33
    invoke-static {v10}, La/c;->l(I)V

    .line 69
    invoke-static {v11}, La/c;->v(I)V

    const/16 v5, 0x3b

    .line 70
    invoke-static {v5}, Lg/e;->j(I)Z

    move-result v5

    if-nez v5, :cond_34

    .line 71
    invoke-static {v12}, La/c;->s(I)V

    :cond_34
    if-eqz v4, :cond_37

    if-eqz v8, :cond_35

    move v4, v9

    goto :goto_18

    :cond_35
    const/4 v4, 0x0

    .line 72
    :goto_18
    invoke-virtual {v0, v4}, Lmodule/sound/AudioDevice;->y1(I)V

    if-eqz v2, :cond_36

    move v5, v3

    goto :goto_19

    :cond_36
    const/4 v5, 0x0

    .line 73
    :goto_19
    invoke-virtual {v0, v5}, Ly0/k;->r0(I)V

    .line 74
    invoke-virtual {v0, v14}, Ly0/k;->v0(Z)V

    .line 75
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vol = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mutePlayer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/c;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "   appid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c1()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j0(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public r0(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1
    :goto_0
    iget v0, p0, Lmodule/sound/AudioDevice;->h:I

    if-ne v0, p1, :cond_1

    return-void

    .line 2
    :cond_1
    sput p1, Ly0/f;->Y:I

    .line 3
    sget-object v0, Ly0/g;->w:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 4
    invoke-static {p1}, Lcom/syu/jni/ToolsJni;->cmd_2_soundMix(I)I

    return-void
.end method

.method public u0(Z)V
    .locals 9

    .line 1
    sget v0, Ly0/f;->g:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v1}, La/c;->f(I)V

    .line 3
    invoke-static {v1}, La/c;->p(I)V

    .line 4
    invoke-static {v1}, La/c;->i(I)V

    .line 5
    invoke-static {v1}, La/c;->l(I)V

    .line 6
    invoke-static {v1}, La/c;->v(I)V

    .line 7
    invoke-static {v1}, La/c;->s(I)V

    .line 8
    invoke-virtual {p0, v1}, Ly0/k;->r0(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, La/c;->j()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lmodule/sound/AudioDevice;->g:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 10
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->t1()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lmodule/sound/AudioDevice;->g:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v4, v4

    .line 11
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lmodule/sound/AudioDevice;->g:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    float-to-int v5, v5

    .line 12
    invoke-static {}, La/c;->m()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lmodule/sound/AudioDevice;->g:I

    int-to-float v7, v7

    div-float/2addr v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v6, v3

    float-to-int v6, v6

    .line 13
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->w1()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lmodule/sound/AudioDevice;->g:I

    int-to-float v8, v8

    div-float/2addr v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    float-to-int v0, v7

    .line 14
    invoke-static {v4}, La/c;->f(I)V

    .line 15
    invoke-static {v5}, La/c;->p(I)V

    .line 16
    invoke-static {v2}, La/c;->i(I)V

    .line 17
    invoke-static {v6}, La/c;->l(I)V

    .line 18
    invoke-static {v0}, La/c;->v(I)V

    .line 19
    invoke-static {}, La/c;->d()I

    move-result v0

    iget v2, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {p0, v0, v2}, Ly0/k;->D1(II)I

    move-result v0

    invoke-static {v0}, La/c;->s(I)V

    .line 20
    iget v0, p0, Lmodule/sound/AudioDevice;->h:I

    if-lez v0, :cond_1

    .line 21
    invoke-virtual {p0, v0}, Ly0/k;->r0(I)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 22
    iget p1, p0, Lmodule/sound/AudioDevice;->g:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Ly0/k;->v0(Z)V

    return-void
.end method

.method public v0(Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->v0(Z)V

    .line 2
    iget-boolean v0, p0, Ly0/k;->I0:Z

    const/16 v1, 0x10

    const-string v2, " mute: "

    const-string v3, " this.vol = "

    const-string v4, "mute vol = "

    const-string v5, "soundMute"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3
    sget-boolean v0, Lu0/b;->V3:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v1, v6}, Ly0/h;->X(IZ)V

    .line 5
    :cond_0
    iput-boolean v6, p0, Ly0/k;->I0:Z

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 7
    sget-boolean v0, Lu0/b;->V3:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v1, v6}, Ly0/h;->X(IZ)V

    .line 9
    :cond_2
    iput-boolean v6, p0, Ly0/k;->I0:Z

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmodule/sound/AudioDevice;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public w0(I)V
    .locals 0

    return-void
.end method
