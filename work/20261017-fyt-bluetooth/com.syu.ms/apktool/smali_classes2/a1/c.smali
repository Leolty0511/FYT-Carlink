.class public La1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)V
    .locals 3

    .line 1
    sget v0, La1/b;->l:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, La1/b;->l:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v1, v0, v2

    const/4 v1, 0x2

    add-int/lit8 v2, p0, 0x50

    aput v2, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    const/16 v0, 0xb1

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 3

    .line 1
    sget v0, La1/b;->e:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, La1/b;->e:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, La1/c;->l(I[I)V

    .line 4
    sget v0, La1/b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5
    sget-object v0, La1/b;->b:La1/d;

    sget v1, La1/b;->f:I

    invoke-interface {v0, v1, p0}, La1/d;->c(II)V

    :cond_0
    return-void
.end method

.method public static c(II)V
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, La1/b;->d:[I

    aget v1, v0, p0

    if-eq v1, p1, :cond_0

    .line 2
    aput p1, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    .line 3
    invoke-static {v0, v1}, La1/c;->l(I[I)V

    :cond_0
    return-void
.end method

.method public static final d(II)V
    .locals 2

    if-gez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customeKeyStudied  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " adc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataSteer.KEY_ADC[keyCode] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La1/b;->c:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_1
    sget-object v0, La1/b;->c:[I

    aget v1, v0, p0

    if-eq v1, p1, :cond_2

    .line 3
    aput p1, v0, p0

    .line 4
    sget-object v0, La1/b;->b:La1/d;

    instance-of v1, v0, La1/a;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, La1/a;

    invoke-virtual {v0, p0, p1}, La1/a;->w(II)V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    .line 6
    invoke-static {p0, v0}, La1/c;->l(I[I)V

    return-void
.end method

.method public static e(I)V
    .locals 3

    .line 1
    sget v0, La1/b;->g:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, La1/b;->g:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, La1/c;->l(I[I)V

    :cond_0
    return-void
.end method

.method public static f(II)V
    .locals 2

    .line 1
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---- keyAdc  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " adc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataSteer.KEY_ADC[keyCode] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, La1/b;->c:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x32

    if-ge p0, v0, :cond_1

    .line 2
    sget-object v0, La1/b;->c:[I

    aget v1, v0, p0

    if-eq v1, p1, :cond_1

    .line 3
    aput p1, v0, p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 4
    invoke-static {v1, v0}, La1/c;->l(I[I)V

    .line 5
    sget-object v0, La1/b;->b:La1/d;

    instance-of v1, v0, La1/a;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, La1/a;

    invoke-virtual {v0, p0, p1}, La1/a;->w(II)V

    :cond_1
    return-void
.end method

.method public static g(I)V
    .locals 3

    .line 1
    sget v0, La1/b;->f:I

    const/4 v1, -0x1

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, La1/b;->f:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p0, v0, v2

    .line 3
    invoke-static {v2, v0}, La1/c;->l(I[I)V

    if-eq p0, v1, :cond_1

    .line 4
    sget-object v0, La1/b;->b:La1/d;

    sget v1, La1/b;->e:I

    invoke-interface {v0, p0, v1}, La1/d;->c(II)V

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 5
    invoke-static {v1}, La1/c;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static h(I)V
    .locals 3

    .line 1
    sget v0, La1/b;->h:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, La1/b;->h:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, La1/c;->l(I[I)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized i(I)V
    .locals 2

    const-class v0, La1/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, La1/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sput p0, La1/b;->a:I

    .line 3
    sget-object v1, La1/b;->b:La1/d;

    invoke-interface {v1}, La1/d;->b()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 4
    new-instance p0, La1/d$a;

    invoke-direct {p0}, La1/d$a;-><init>()V

    sput-object p0, La1/b;->b:La1/d;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, La1/a;

    invoke-direct {p0}, La1/a;-><init>()V

    sput-object p0, La1/b;->b:La1/d;

    .line 6
    :goto_0
    sget-object p0, La1/b;->b:La1/d;

    invoke-interface {p0}, La1/d;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static j(II)V
    .locals 10

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    .line 2
    sget v1, Lm0/b;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    sget v1, Lu0/b;->o:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0xf3

    if-eq p0, v1, :cond_1

    if-nez p1, :cond_1

    sget-boolean v1, Lu0/b;->l2:Z

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    sget-boolean v1, Lw0/d;->J:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lw0/f;->i()I

    move-result v1

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lg/e;->a()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lg/e;->a()I

    move-result v1

    if-eq v1, v2, :cond_3

    if-nez p1, :cond_3

    .line 6
    sget-object v1, Ly0/f;->b:Ly0/e;

    instance-of v4, v1, Lmodule/sound/AudioDevice;

    if-eqz v4, :cond_3

    .line 7
    check-cast v1, Lmodule/sound/AudioDevice;

    invoke-virtual {v1, v3}, Lmodule/sound/AudioDevice;->z(Z)V

    .line 8
    :cond_3
    sget-object v4, Le/c;->a:Lo1/o;

    const/4 v1, 0x2

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    new-array v6, v1, [I

    aput p0, v6, v3

    aput p1, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 9
    invoke-interface/range {v4 .. v9}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq p1, v2, :cond_4

    return-void

    :cond_4
    if-ltz p0, :cond_6

    const/16 v4, 0x18

    if-gt p0, v4, :cond_6

    .line 10
    sget-boolean v1, La1/b;->k:Z

    if-eqz v1, :cond_5

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----> func MCU to UI keycode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "steera"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 12
    :pswitch_0
    invoke-static {p1}, Le/g;->t(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_1
    invoke-static {p1}, Le/g;->o(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_2
    invoke-static {p1}, Le/g;->g(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_3
    invoke-static {p1}, Le/g;->c(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_4
    invoke-static {p1}, Le/g;->y(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    invoke-static {p1}, Le/g;->z(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_6
    invoke-static {p1}, Le/g;->p(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_7
    invoke-static {p1}, Le/g;->e(I)V

    goto/16 :goto_0

    :pswitch_8
    const/16 p0, 0x55

    .line 20
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    .line 21
    :pswitch_9
    invoke-static {p1}, Le/g;->u(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_a
    invoke-static {p1}, Le/g;->f(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_b
    invoke-static {p1}, Le/g;->A(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_c
    invoke-static {p1}, Le/g;->l(I)V

    goto/16 :goto_0

    .line 25
    :pswitch_d
    invoke-static {p1}, Le/g;->h(I)V

    goto/16 :goto_0

    .line 26
    :pswitch_e
    invoke-static {p1}, Le/g;->a(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_f
    invoke-static {p1}, Le/g;->j(I)V

    goto/16 :goto_0

    .line 28
    :pswitch_10
    invoke-static {p1}, Le/g;->C(I)V

    goto/16 :goto_0

    .line 29
    :pswitch_11
    invoke-static {p1}, Le/g;->D(I)V

    goto/16 :goto_0

    .line 30
    :pswitch_12
    invoke-static {p1}, Le/g;->b(I)V

    goto/16 :goto_0

    .line 31
    :pswitch_13
    invoke-static {p1}, Le/g;->i(I)V

    goto/16 :goto_0

    :pswitch_14
    const/16 p0, 0x57

    .line 32
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_15
    const/16 p0, 0x58

    .line 33
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    .line 34
    :pswitch_16
    invoke-static {p1}, Le/g;->k(I)V

    goto/16 :goto_0

    .line 35
    :pswitch_17
    invoke-static {p1}, Le/g;->m(I)V

    goto/16 :goto_0

    .line 36
    :pswitch_18
    invoke-static {p1}, Le/g;->r(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x23

    if-lt p0, v4, :cond_9

    const/16 v4, 0x37

    if-ge p0, v4, :cond_9

    .line 37
    sget-object v4, La1/b;->b:La1/d;

    invoke-interface {v4, p0, v2}, La1/d;->d(II)I

    move-result v4

    if-eqz p1, :cond_7

    return-void

    .line 38
    :cond_7
    sget-boolean p1, La1/b;->k:Z

    if-eqz p1, :cond_8

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcu func to keycode = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " func = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Steer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 p0, 0x3c

    packed-switch v4, :pswitch_data_1

    :pswitch_19
    goto/16 :goto_0

    :pswitch_1a
    const/16 p0, 0x416

    .line 40
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_1b
    const/16 p0, 0x279

    .line 41
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_1c
    const/16 p0, 0x21b

    .line 42
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_1d
    const/16 p0, 0x415

    .line 43
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_1e
    const/16 p0, 0x233

    .line 44
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_1f
    const/16 p0, 0x54

    .line 45
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_20
    const/16 p0, 0x254

    .line 46
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_21
    const/16 p0, 0x253

    .line 47
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_22
    const/16 p0, 0x250

    .line 48
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_23
    const/16 p0, 0x24f

    .line 49
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_24
    const/16 p0, 0x24e

    .line 50
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    .line 51
    :pswitch_25
    invoke-static {}, Lo1/u;->M()V

    goto/16 :goto_0

    :pswitch_26
    const/16 p0, 0x3f0

    const/4 p1, 0x0

    .line 52
    invoke-static {p0, p1, p1, p1}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :pswitch_27
    invoke-static {}, Lo1/u;->L()I

    goto/16 :goto_0

    .line 54
    :pswitch_28
    invoke-static {}, Lo1/u;->L()I

    goto/16 :goto_0

    :pswitch_29
    const/4 p0, 0x6

    .line 55
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    .line 56
    :pswitch_2a
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_0

    :pswitch_2b
    const/16 p0, 0x232

    .line 57
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_2c
    const/16 p0, 0x231

    .line 58
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto/16 :goto_0

    :pswitch_2d
    new-array p1, v2, [I

    aput v3, p1, v3

    .line 59
    invoke-static {p0, p1}, Lu0/d;->I3(I[I)V

    goto/16 :goto_0

    :pswitch_2e
    new-array p1, v2, [I

    const/4 v0, 0x4

    aput v0, p1, v3

    .line 60
    invoke-static {p0, p1}, Lu0/d;->I3(I[I)V

    goto/16 :goto_0

    :pswitch_2f
    new-array p1, v2, [I

    const/4 v0, 0x3

    aput v0, p1, v3

    .line 61
    invoke-static {p0, p1}, Lu0/d;->I3(I[I)V

    goto/16 :goto_0

    :pswitch_30
    new-array p1, v2, [I

    aput v1, p1, v3

    .line 62
    invoke-static {p0, p1}, Lu0/d;->I3(I[I)V

    goto/16 :goto_0

    :pswitch_31
    new-array p1, v2, [I

    aput v2, p1, v3

    .line 63
    invoke-static {p0, p1}, Lu0/d;->I3(I[I)V

    goto/16 :goto_0

    .line 64
    :pswitch_32
    invoke-static {}, Lu0/d;->Z0()V

    goto/16 :goto_0

    .line 65
    :pswitch_33
    invoke-static {}, Lu0/d;->b1()V

    goto/16 :goto_0

    .line 66
    :pswitch_34
    invoke-static {}, Lu0/d;->a1()V

    goto/16 :goto_0

    .line 67
    :pswitch_35
    invoke-static {}, Lu0/d;->Y0()V

    goto :goto_0

    .line 68
    :pswitch_36
    invoke-static {}, Lu0/d;->X0()V

    goto :goto_0

    .line 69
    :pswitch_37
    invoke-static {}, Lu0/d;->W0()V

    goto :goto_0

    .line 70
    :pswitch_38
    invoke-static {}, Lu0/d;->V0()V

    goto :goto_0

    .line 71
    :pswitch_39
    invoke-static {}, Lu0/d;->U0()V

    goto :goto_0

    .line 72
    :pswitch_3a
    invoke-static {}, Lu0/d;->T0()V

    goto :goto_0

    .line 73
    :pswitch_3b
    invoke-static {}, Lu0/d;->S0()V

    goto :goto_0

    .line 74
    :pswitch_3c
    invoke-static {}, Lu0/d;->R0()V

    goto :goto_0

    .line 75
    :pswitch_3d
    invoke-static {}, Lu0/d;->Q0()V

    goto :goto_0

    .line 76
    :pswitch_3e
    invoke-static {}, Lu0/d;->P0()V

    goto :goto_0

    .line 77
    :pswitch_3f
    invoke-static {v1}, Lu0/d;->u3(I)V

    goto :goto_0

    .line 78
    :pswitch_40
    invoke-static {}, Lo1/u;->G0()V

    goto :goto_0

    .line 79
    :pswitch_41
    invoke-static {}, Lo1/u;->y()V

    goto :goto_0

    .line 80
    :pswitch_42
    invoke-static {}, Lo1/u;->Z0()I

    goto :goto_0

    .line 81
    :pswitch_43
    invoke-static {}, Lo1/u;->J()I

    goto :goto_0

    .line 82
    :pswitch_44
    invoke-static {}, Lo1/u;->q()V

    goto :goto_0

    .line 83
    :pswitch_45
    invoke-static {}, Lo1/u;->r()V

    goto :goto_0

    .line 84
    :pswitch_46
    invoke-static {}, Lo1/u;->T0()I

    goto :goto_0

    :pswitch_47
    const/16 p0, 0x207

    .line 85
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto :goto_0

    :pswitch_48
    const/16 p0, 0x206

    .line 86
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    goto :goto_0

    :pswitch_49
    const/16 p0, 0x22c

    .line 87
    invoke-virtual {v0, p0}, Lc/e;->c(I)Z

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_19
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public static k([B)V
    .locals 13

    if-eqz p0, :cond_8

    .line 1
    array-length v0, p0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v0, La1/b;->b:La1/d;

    instance-of v1, v0, La1/a;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    check-cast v0, La1/a;

    .line 4
    sget-boolean v1, La1/b;->k:Z

    const-string v2, "Steer"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6240\u6709MCU\u6309\u952e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p0

    invoke-static {p0, v3, v5}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ln1/b;->s(Ljava/lang/String;)V

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCU\u6309\u952e\u603b\u6570 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ln1/b;->s(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->mcu to UI keycode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-static {p0, v3, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " keyCnt = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    aget-byte v1, p0, v3

    const/4 v4, -0x1

    const/16 v5, 0x37

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v1, v4, :cond_3

    .line 9
    invoke-virtual {v0}, La1/a;->m()V

    move p0, v3

    :goto_0
    if-ge p0, v5, :cond_8

    new-array v0, v7, [I

    aput p0, v0, v3

    aput v7, v0, v8

    .line 10
    invoke-static {v6, v0}, La1/c;->l(I[I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    .line 11
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_8

    .line 12
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    if-ltz v4, :cond_4

    const/16 v9, 0x18

    if-gt v4, v9, :cond_4

    new-array v9, v7, [I

    aput v4, v9, v3

    aput v8, v9, v8

    .line 13
    invoke-static {v6, v9}, La1/c;->l(I[I)V

    .line 14
    sget-boolean v9, La1/b;->k:Z

    if-eqz v9, :cond_7

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<----to UI keycode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const/16 v9, 0x23

    if-lt v4, v9, :cond_7

    if-ge v4, v5, :cond_7

    .line 16
    sget v9, La1/b;->j:I

    .line 17
    sget v10, La1/b;->i:I

    const-string v11, " func = "

    if-ne v4, v10, :cond_5

    .line 18
    invoke-virtual {v0, v4, v9}, La1/a;->y(II)V

    .line 19
    sget-boolean v10, La1/b;->k:Z

    if-eqz v10, :cond_6

    .line 20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "curr keycode = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v0, v4, v8}, La1/a;->d(II)I

    move-result v9

    :cond_6
    :goto_2
    new-array v10, v7, [I

    aput v4, v10, v3

    aput v9, v10, v8

    .line 22
    invoke-static {v6, v10}, La1/c;->l(I[I)V

    .line 23
    sget-boolean v10, La1/b;->k:Z

    if-eqz v10, :cond_7

    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<---- to UI keycode = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method public static varargs l(I[I)V
    .locals 2

    .line 1
    invoke-static {}, La1/e;->X2()La1/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, p1, v1, v1}, Lbase/b;->H0(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
