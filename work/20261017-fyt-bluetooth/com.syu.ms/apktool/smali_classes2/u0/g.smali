.class public Lu0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lo1/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    sput-object v0, Lu0/g;->a:Lo1/l0;

    return-void
.end method

.method public static a([I[F[Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2a

    .line 1
    invoke-static {v0, p0, p1, p2}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public static b([I[F[Ljava/lang/String;)V
    .locals 7

    const-string v0, "kuwo"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vaCmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  DataMain.sAppId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3
    :pswitch_1
    array-length v0, p0

    if-lt v0, v5, :cond_1

    const/16 v0, 0x13

    .line 4
    invoke-static {v0}, Li1/s;->g(I)Li1/s;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    .line 5
    invoke-virtual {v0, v1, p0, p1, p2}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    aget p1, p0, v6

    invoke-static {p1}, Lc1/n;->V2(I)V

    .line 7
    :cond_1
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    if-eqz p1, :cond_18

    .line 8
    invoke-virtual {p1, p0}, Lk0/lt;->O2([I)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    array-length p1, p0

    if-lt p1, v5, :cond_2

    .line 10
    aget p1, p0, v6

    invoke-static {p1}, Lu0/d;->b0(I)V

    .line 11
    :cond_2
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    if-eqz p1, :cond_18

    .line 12
    invoke-virtual {p1, p0}, Lk0/lt;->O2([I)V

    goto/16 :goto_1

    :pswitch_3
    const/16 p1, 0x15

    .line 13
    invoke-static {p1}, Li1/s;->g(I)Li1/s;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 14
    instance-of p2, p1, Li1/f;

    if-eqz p2, :cond_3

    .line 15
    check-cast p1, Li1/f;

    aget p0, p0, v6

    invoke-interface {p1, p0}, Li1/f;->f(I)V

    goto/16 :goto_1

    .line 16
    :cond_3
    aget p0, p0, v6

    invoke-static {p0}, Lc1/n;->a3(I)V

    goto/16 :goto_1

    .line 17
    :pswitch_4
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1, p0}, Lk0/lt;->O2([I)V

    .line 19
    :cond_4
    invoke-static {p0, v5}, Lo1/p0;->b([II)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 20
    aget p0, p0, v6

    if-eqz p0, :cond_5

    .line 21
    sget p0, Lu0/b;->T0:I

    if-nez p0, :cond_18

    .line 22
    invoke-static {}, Lu0/d;->G3()V

    goto/16 :goto_1

    .line 23
    :cond_5
    sget p0, Lu0/b;->T0:I

    if-eqz p0, :cond_18

    .line 24
    invoke-static {}, Lu0/d;->G3()V

    goto/16 :goto_1

    .line 25
    :pswitch_5
    sget-object p1, Lk0/nt;->d:Lk0/lt;

    if-eqz p1, :cond_18

    .line 26
    invoke-virtual {p1, p0}, Lk0/lt;->O2([I)V

    goto/16 :goto_1

    .line 27
    :pswitch_6
    array-length p1, p0

    if-lt p1, v5, :cond_18

    .line 28
    sget-object p1, Lu0/d;->g:Ljava/lang/Runnable;

    monitor-enter p1

    .line 29
    :try_start_0
    aget p0, p0, v6

    if-nez p0, :cond_8

    .line 30
    sget p0, Lu0/b;->i4:I

    if-le p0, v5, :cond_6

    const/16 p0, 0x39

    new-array p2, v6, [I

    aput v0, p2, v0

    .line 31
    invoke-static {p0, p2}, Lu0/d;->I3(I[I)V

    .line 32
    :cond_6
    sget p0, Lu0/b;->j4:I

    if-eqz p0, :cond_7

    move v0, v6

    :cond_7
    sget-object p0, Lu0/g;->a:Lo1/l0;

    const/16 p2, 0x7d0

    invoke-virtual {p0, p2}, Lo1/l0;->c(I)Z

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    .line 33
    sget-object p0, Lu0/g;->a:Lo1/l0;

    invoke-virtual {p0}, Lo1/l0;->a()V

    .line 34
    sput v5, Lu0/b;->i4:I

    goto :goto_0

    .line 35
    :cond_8
    sget-object p0, Lu0/g;->a:Lo1/l0;

    invoke-virtual {p0}, Lo1/l0;->b()V

    const/16 p0, 0xa

    .line 36
    sput p0, Lu0/b;->i4:I

    .line 37
    invoke-static {v6}, Lu0/d;->P3(I)V

    .line 38
    :cond_9
    :goto_0
    monitor-exit p1

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :pswitch_7
    invoke-static {p2, v6}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 40
    aget-object p0, p2, v0

    invoke-static {p0}, Lh0/e;->q(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 41
    :pswitch_8
    invoke-static {p0, p1, p2}, Lu0/g;->a([I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 42
    :pswitch_9
    invoke-static {p0, p1, p2}, Lu0/g;->a([I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 43
    :pswitch_a
    array-length p1, p0

    if-lt p1, v5, :cond_18

    .line 44
    sget p1, Lw0/d;->a:I

    if-ne p1, v6, :cond_18

    .line 45
    aget p0, p0, v6

    if-ltz p0, :cond_18

    const/4 p1, 0x5

    if-gt p0, p1, :cond_18

    add-int/2addr p0, v6

    .line 46
    invoke-static {p0}, Lw0/f;->B(I)V

    goto/16 :goto_1

    .line 47
    :pswitch_b
    invoke-static {p2, v6}, Lo1/p0;->h([Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 48
    :try_start_1
    aget-object p0, p2, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 49
    sget p1, Lu0/b;->D:I

    if-ne p1, v6, :cond_18

    .line 50
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v6, p0}, Lw0/g;->l(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 52
    :pswitch_c
    invoke-static {p0, p1, p2}, Lu0/g;->a([I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 53
    :pswitch_d
    invoke-static {p0, p1, p2}, Lu0/g;->a([I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 54
    :pswitch_e
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->save()V

    goto/16 :goto_1

    .line 55
    :pswitch_f
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0, v5}, Lw0/g;->v(I)V

    goto/16 :goto_1

    .line 56
    :pswitch_10
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->B()V

    goto/16 :goto_1

    .line 57
    :pswitch_11
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->h()V

    goto/16 :goto_1

    .line 58
    :pswitch_12
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->i()V

    goto/16 :goto_1

    .line 59
    :pswitch_13
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->d()V

    goto/16 :goto_1

    .line 60
    :pswitch_14
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0, v2}, Lw0/g;->x(I)V

    goto/16 :goto_1

    .line 61
    :pswitch_15
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->k()V

    goto/16 :goto_1

    .line 62
    :pswitch_16
    invoke-static {}, Lo1/u;->U0()V

    goto/16 :goto_1

    .line 63
    :pswitch_17
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0, v6}, Lh0/f;->P(I)V

    goto/16 :goto_1

    .line 64
    :pswitch_18
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0, v0}, Lh0/f;->P(I)V

    goto/16 :goto_1

    :pswitch_19
    const/4 p0, -0x2

    .line 65
    invoke-static {p0}, Ly0/h;->u0(I)V

    goto/16 :goto_1

    .line 66
    :pswitch_1a
    invoke-static {v2}, Ly0/h;->u0(I)V

    goto/16 :goto_1

    .line 67
    :pswitch_1b
    sget p0, Lu0/b;->D:I

    if-eq p0, v6, :cond_c

    if-eq p0, v3, :cond_b

    if-eq p0, v4, :cond_a

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_1

    .line 68
    :pswitch_1c
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p0

    const/16 p1, 0x57

    invoke-virtual {p0, p1}, Lc/e;->c(I)Z

    goto/16 :goto_1

    .line 69
    :cond_a
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->l()V

    goto/16 :goto_1

    .line 70
    :cond_b
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0}, Lh0/f;->V()V

    goto/16 :goto_1

    .line 71
    :cond_c
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->c()V

    goto/16 :goto_1

    .line 72
    :pswitch_1d
    sget p0, Lu0/b;->D:I

    if-eq p0, v6, :cond_f

    if-eq p0, v3, :cond_e

    if-eq p0, v4, :cond_d

    packed-switch p0, :pswitch_data_2

    goto/16 :goto_1

    .line 73
    :pswitch_1e
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p0

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lc/e;->c(I)Z

    goto/16 :goto_1

    .line 74
    :cond_d
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->r()V

    goto/16 :goto_1

    .line 75
    :cond_e
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0}, Lh0/f;->i()V

    goto/16 :goto_1

    .line 76
    :cond_f
    sget-object p0, Lw0/d;->b:Lw0/g;

    invoke-interface {p0}, Lw0/g;->g()V

    goto/16 :goto_1

    .line 77
    :pswitch_1f
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0, v6}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 78
    :pswitch_20
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0, v0}, Lh0/f;->h(I)V

    goto/16 :goto_1

    .line 79
    :pswitch_21
    sget p0, Lo0/e;->h:I

    if-eqz p0, :cond_18

    .line 80
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->f()V

    goto/16 :goto_1

    .line 81
    :pswitch_22
    sget p0, Lo0/e;->h:I

    if-nez p0, :cond_18

    .line 82
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->f()V

    goto/16 :goto_1

    .line 83
    :pswitch_23
    sget p0, Lu0/b;->D:I

    if-eq p0, v4, :cond_10

    packed-switch p0, :pswitch_data_3

    goto/16 :goto_1

    .line 84
    :pswitch_24
    invoke-static {p0}, La/i;->E(I)V

    goto/16 :goto_1

    .line 85
    :cond_10
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->i()V

    goto/16 :goto_1

    .line 86
    :pswitch_25
    sget p0, Lu0/b;->D:I

    if-eq p0, v4, :cond_11

    packed-switch p0, :pswitch_data_4

    goto/16 :goto_1

    .line 87
    :pswitch_26
    invoke-static {p0}, La/i;->F(I)V

    goto :goto_1

    .line 88
    :cond_11
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->j()V

    goto :goto_1

    .line 89
    :pswitch_27
    sget p0, Lu0/b;->D:I

    if-eq p0, v3, :cond_13

    if-eq p0, v4, :cond_12

    packed-switch p0, :pswitch_data_5

    goto :goto_1

    .line 90
    :pswitch_28
    invoke-static {p0}, La/i;->P(I)V

    goto :goto_1

    .line 91
    :cond_12
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->x()V

    goto :goto_1

    .line 92
    :cond_13
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0}, Lh0/f;->k()V

    goto :goto_1

    .line 93
    :pswitch_29
    sget p0, Lu0/b;->D:I

    if-eq p0, v3, :cond_15

    if-eq p0, v4, :cond_14

    packed-switch p0, :pswitch_data_6

    goto :goto_1

    .line 94
    :pswitch_2a
    invoke-static {p0}, La/i;->K(I)V

    goto :goto_1

    .line 95
    :cond_14
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->n()V

    goto :goto_1

    .line 96
    :cond_15
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0}, Lh0/f;->E()V

    goto :goto_1

    .line 97
    :pswitch_2b
    sget p0, Lu0/b;->D:I

    if-eq p0, v3, :cond_17

    if-eq p0, v4, :cond_16

    packed-switch p0, :pswitch_data_7

    goto :goto_1

    .line 98
    :pswitch_2c
    invoke-static {p0}, La/i;->L(I)V

    goto :goto_1

    .line 99
    :cond_16
    sget-object p0, Lo0/e;->b:Lo0/h;

    invoke-virtual {p0}, Lo0/h;->o()V

    goto :goto_1

    .line 100
    :cond_17
    sget-object p0, Lh0/c;->b:Lh0/f;

    invoke-interface {p0}, Lh0/f;->w()V

    goto :goto_1

    .line 101
    :pswitch_2d
    invoke-static {}, La/i;->A()V

    :cond_18
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x8
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x8
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method
