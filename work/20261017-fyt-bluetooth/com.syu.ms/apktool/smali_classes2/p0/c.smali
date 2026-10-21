.class public Lp0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)V
    .locals 2

    .line 1
    sget v0, Lp0/b;->f:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Lp0/b;->f:I

    .line 3
    sget-object v0, Lp0/b;->c:[Lo1/x;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lo1/x;->x([Lo1/x;II)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lp0/c;->j(Ly/b;)V

    .line 5
    sget v0, Lp0/b;->j:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xad

    .line 6
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 2

    .line 1
    sget v0, Lp0/b;->j:I

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 4
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 6
    invoke-static {p0}, Lp0/c;->a(I)V

    :cond_5
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0xa3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0xa2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0xa1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x4
        0xa0
    .end array-data
.end method

.method public static c(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput v1, v0, v2

    if-nez p0, :cond_0

    const/16 v1, 0x76

    goto :goto_0

    :cond_0
    const/16 v1, 0x77

    :goto_0
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lc/f;->a(ILjava/lang/Object;)Z

    return-void
.end method

.method public static d(I)V
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p0, v0, [I

    .line 4
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_4

    invoke-static {p0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_5

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_6

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array p0, v0, [I

    .line 8
    fill-array-data p0, :array_7

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array p0, v0, [I

    .line 9
    fill-array-data p0, :array_8

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_9
    new-array p0, v0, [I

    .line 10
    fill-array-data p0, :array_9

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_a
    new-array p0, v0, [I

    .line 11
    fill-array-data p0, :array_a

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_b
    new-array p0, v0, [I

    .line 12
    fill-array-data p0, :array_b

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array p0, v0, [I

    .line 13
    fill-array-data p0, :array_c

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array p0, v0, [I

    .line 14
    fill-array-data p0, :array_d

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array p0, v0, [I

    .line 15
    fill-array-data p0, :array_e

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_f
    new-array p0, v0, [I

    .line 16
    fill-array-data p0, :array_f

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array p0, v0, [I

    .line 17
    fill-array-data p0, :array_10

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    :array_0
    .array-data 4
        0x1
        0x5
        0x48
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x5
        0x47
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x5
        0x46
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x5
        0x45
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x5
        0x44
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x5
        0x43
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x5
        0x42
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x5
        0x41
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x5
        0x40
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x5
        0x39
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x5
        0x38
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x5
        0xe0
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x5
        0xb0
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x5
        0x72
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x5
        0x70
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x5
        0x50
    .end array-data
.end method

.method public static e(I)V
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p0, v0, [I

    .line 4
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_4

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_5

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_6

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x5
        0x38
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x5
        0x70
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x5
        0x90
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x5
        0xe0
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x5
        0x50
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x5
        0x72
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x5
        0xb0
    .end array-data
.end method

.method public static f(II)V
    .locals 1

    .line 1
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Ln0/c4;->y3(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Lp0/b;->g:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lp0/c;->h(I)V

    .line 4
    :cond_2
    invoke-static {p0}, Lp0/c;->d(I)V

    .line 5
    :cond_3
    invoke-static {p0}, Lp0/c;->e(I)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized g(I)V
    .locals 2

    const-class v0, Lp0/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lp0/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sput p0, Lp0/b;->a:I

    .line 3
    sget-object v1, Lp0/b;->b:Lp0/d;

    invoke-interface {v1}, Lp0/d;->b()V

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 4
    new-instance p0, Lp0/d$a;

    invoke-direct {p0}, Lp0/d$a;-><init>()V

    sput-object p0, Lp0/b;->b:Lp0/d;

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Lp0/a;

    invoke-direct {p0}, Lp0/a;-><init>()V

    sput-object p0, Lp0/b;->b:Lp0/d;

    .line 6
    :goto_0
    sget-object p0, Lp0/b;->b:Lp0/d;

    invoke-interface {p0}, Lp0/d;->a()V
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

.method public static h(I)V
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p0, v0, [I

    .line 4
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_4

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_5

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_6

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x9
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x9
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x9
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x9
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x9
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x9
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x9
        0x0
    .end array-data
.end method

.method public static i(III)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_2

    new-array p0, v2, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array p0, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0xe6

    aput v3, p0, v2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, p0, v1

    and-int/lit16 p1, p1, 0xff

    aput p1, p0, v0

    const/4 p1, 0x3

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, p0, p1

    const/4 p1, 0x4

    and-int/lit16 p2, p2, 0xff

    aput p2, p0, p1

    .line 2
    invoke-static {p0}, Lz/k;->s([I)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0xe6
        0xaa
        0xaa
        0xaa
        0xaa
    .end array-data
.end method

.method public static j(Ly/b;)V
    .locals 6

    .line 1
    sget-object v0, Lp0/b;->h:Lo1/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    .line 2
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p0}, Lp0/c;->k(Ly/b;)V

    :cond_1
    return-void
.end method

.method public static k(Ly/b;)V
    .locals 4

    .line 1
    sget p0, Lp0/b;->f:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lg/f;->s()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    move p0, v2

    goto :goto_2

    :cond_4
    :goto_0
    move p0, v1

    :goto_1
    move v0, p0

    .line 3
    :goto_2
    sget-object v3, La/b;->G:Ljava/lang/String;

    if-ne p0, v2, :cond_5

    move p0, v2

    goto :goto_3

    :cond_5
    move p0, v1

    :goto_3
    invoke-static {v3, p0}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 4
    sget-object p0, La/b;->I:Ljava/lang/String;

    if-ne v0, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-static {p0, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V

    return-void
.end method
