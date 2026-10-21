.class public Lo0/b;
.super Lo0/h;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo0/h;-><init>()V

    .line 2
    new-instance v0, Lo0/b$a;

    invoke-direct {v0, p0}, Lo0/b$a;-><init>(Lo0/b;)V

    iput-object v0, p0, Lo0/b;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lo0/b$b;

    invoke-direct {v0, p0}, Lo0/b$b;-><init>(Lo0/b;)V

    iput-object v0, p0, Lo0/b;->b:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lo0/b$c;

    invoke-direct {v0, p0}, Lo0/b$c;-><init>(Lo0/b;)V

    iput-object v0, p0, Lo0/b;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lo0/b$d;

    invoke-direct {v0, p0}, Lo0/b$d;-><init>(Lo0/b;)V

    iput-object v0, p0, Lo0/b;->d:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lo0/b;->e:I

    return-void
.end method

.method public static synthetic F(Lo0/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    return-void
.end method

.method public static declared-synchronized I(Ljava/lang/String;)V
    .locals 7

    const-class v0, Lo0/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lo0/e;->g0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [I

    .line 2
    sput v1, Lo0/e;->g0:I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/16 v4, 0x25

    invoke-static {v4, v2}, Lo0/g;->T(I[I)V

    .line 3
    invoke-static {p0}, Lo1/p0;->a(Ljava/lang/String;)I

    move-result v2

    const/high16 v5, 0xa00000

    const/4 v6, 0x2

    if-le v2, v5, :cond_1

    new-array p0, v1, [I

    .line 4
    sput v6, Lo0/e;->g0:I

    aput v6, p0, v3

    invoke-static {v4, p0}, Lo0/g;->T(I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :try_start_2
    invoke-static {p0}, Lo1/p0;->f(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_2

    new-array p0, v1, [I

    .line 7
    sput v6, Lo0/e;->g0:I

    aput v6, p0, v3

    invoke-static {v4, p0}, Lo0/g;->T(I[I)V

    .line 8
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance v1, Lo0/b$e;

    invoke-direct {v1}, Lo0/b$e;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :cond_2
    :try_start_3
    new-array v2, v1, [I

    const/4 v5, 0x3

    .line 10
    sput v5, Lo0/e;->g0:I

    aput v5, v2, v3

    invoke-static {v4, v2}, Lo0/g;->T(I[I)V

    .line 11
    sput-object p0, Lo0/e;->i0:[B

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v3, v2, v3

    const/16 v3, 0xd5

    aput v3, v2, v1

    .line 12
    array-length v1, p0

    shr-int/lit8 v1, v1, 0x18

    aput v1, v2, v6

    array-length v1, p0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v5

    const/4 v1, 0x4

    array-length v3, p0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v1

    const/4 v1, 0x5

    array-length p0, p0

    and-int/lit16 p0, p0, 0xff

    aput p0, v2, v1

    invoke-static {v2}, Lz/k;->o([I)V

    .line 13
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance v1, Lo0/b$f;

    invoke-direct {v1}, Lo0/b$f;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public A(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->o([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->o([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->o([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xd0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xd0
        0x0
    .end array-data
.end method

.method public B()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public C(II)V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 1
    div-int/lit8 v1, p1, 0x64

    aput v1, v0, v2

    rem-int/lit8 p1, p1, 0x64

    const/4 v1, 0x5

    aput p1, v0, v1

    div-int/lit8 p1, p2, 0x64

    const/4 v1, 0x6

    aput p1, v0, v1

    rem-int/lit8 p2, p2, 0x64

    const/4 p1, 0x7

    aput p2, v0, p1

    invoke-static {v0}, Lz/k;->o([I)V

    return-void
.end method

.method public D(I)V
    .locals 12

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    sget v1, Lo0/e;->d0:I

    const/16 v2, 0xd2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v1, v0, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_9

    .line 2
    sget v1, Lo0/e;->F:I

    if-eq v1, v0, :cond_6

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_0

    goto/16 :goto_3

    :cond_0
    if-lez p1, :cond_b

    .line 3
    sget v1, Lo0/e;->v:I

    if-gt p1, v1, :cond_b

    move v1, v9

    .line 4
    :goto_0
    sget v10, Lo0/e;->y:I

    if-ge v1, v10, :cond_b

    .line 5
    sget-object v10, Lo0/e;->c0:[I

    aget v11, v10, v1

    if-gt p1, v11, :cond_2

    if-lez v1, :cond_1

    add-int/lit8 v11, v1, -0x1

    .line 6
    aget v10, v10, v11

    sub-int/2addr p1, v10

    :cond_1
    add-int/2addr v1, v0

    new-array v3, v3, [I

    aput v9, v3, v9

    aput v2, v3, v0

    aput v6, v3, v8

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v7

    and-int/lit16 v0, v1, 0xff

    aput v0, v3, v6

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v3, v4

    .line 7
    invoke-static {v3}, Lz/k;->o([I)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-lez p1, :cond_b

    .line 8
    sget v1, Lo0/e;->u:I

    if-gt p1, v1, :cond_b

    move v1, v9

    .line 9
    :goto_1
    sget v10, Lo0/e;->x:I

    if-ge v1, v10, :cond_b

    .line 10
    sget-object v10, Lo0/e;->b0:[I

    aget v11, v10, v1

    if-gt p1, v11, :cond_5

    if-lez v1, :cond_4

    add-int/lit8 v11, v1, -0x1

    .line 11
    aget v10, v10, v11

    sub-int/2addr p1, v10

    :cond_4
    add-int/2addr v1, v0

    new-array v3, v3, [I

    aput v9, v3, v9

    aput v2, v3, v0

    aput v8, v3, v8

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v7

    and-int/lit16 v0, v1, 0xff

    aput v0, v3, v6

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v3, v4

    .line 12
    invoke-static {v3}, Lz/k;->o([I)V

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-lez p1, :cond_b

    .line 13
    sget v1, Lo0/e;->t:I

    if-gt p1, v1, :cond_b

    move v1, v9

    .line 14
    :goto_2
    sget v10, Lo0/e;->w:I

    if-ge v1, v10, :cond_b

    .line 15
    sget-object v10, Lo0/e;->a0:[I

    aget v11, v10, v1

    if-gt p1, v11, :cond_8

    if-lez v1, :cond_7

    add-int/lit8 v11, v1, -0x1

    .line 16
    aget v10, v10, v11

    sub-int/2addr p1, v10

    :cond_7
    add-int/2addr v1, v0

    new-array v3, v3, [I

    aput v9, v3, v9

    aput v2, v3, v0

    aput v0, v3, v8

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v7

    and-int/lit16 v0, v1, 0xff

    aput v0, v3, v6

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v3, v4

    .line 17
    invoke-static {v3}, Lz/k;->o([I)V

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    new-array v1, v3, [I

    aput v9, v1, v9

    aput v2, v1, v0

    aput v8, v1, v8

    aput v9, v1, v7

    aput v0, v1, v6

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v1, v4

    .line 18
    invoke-static {v1}, Lz/k;->o([I)V

    goto :goto_3

    :cond_a
    new-array v1, v3, [I

    aput v9, v1, v9

    aput v2, v1, v0

    aput v0, v1, v8

    aput v9, v1, v7

    aput v0, v1, v6

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v1, v4

    .line 19
    invoke-static {v1}, Lz/k;->o([I)V

    :cond_b
    :goto_3
    return-void
.end method

.method public E()V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public final G(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->o([I)V

    return-void
.end method

.method public final H()[B
    .locals 9

    .line 1
    invoke-static {}, Lo0/i;->X2()Lo0/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbase/b;->M2()Lo1/h0;

    move-result-object v0

    const/16 v2, 0x2e

    .line 3
    invoke-virtual {v0, v2, v1}, Lo1/h0;->l(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v1, 0xb8

    new-array v1, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 4
    invoke-virtual {v0, v4, v3}, Lo1/h0;->h(II)I

    move-result v5

    mul-int/lit8 v6, v4, 0x4

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    .line 5
    aput-byte v7, v1, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 6
    aput-byte v8, v1, v7

    add-int/lit8 v7, v6, 0x2

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 7
    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x3

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 8
    aput-byte v5, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a()V
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x2a

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public c([BII)V
    .locals 8

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p3, v0, :cond_3

    const/16 v0, 0x50

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    add-int/2addr p2, v3

    .line 2
    aget-byte p1, p1, p2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    sget p1, Lu0/b;->D:I

    if-ne p1, v1, :cond_f

    invoke-static {}, Lo1/u;->b0()Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x7

    .line 4
    invoke-static {p1}, Lg/f;->f(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lo0/e;->b:Lo0/h;

    invoke-virtual {p1}, Lo0/h;->g()V

    goto/16 :goto_0

    .line 6
    :cond_2
    sget-object p1, Ly0/f;->b:Ly0/e;

    invoke-virtual {p1, v1}, Ly0/e;->a(I)V

    goto/16 :goto_0

    :cond_3
    add-int/2addr p2, v3

    .line 7
    aget-byte p3, p1, p2

    const/16 v4, 0xc

    if-eq p3, v4, :cond_e

    const/16 v5, 0x1d

    if-eq p3, v5, :cond_d

    const/16 v5, 0x20

    if-eq p3, v5, :cond_c

    const/16 v5, 0x28

    if-eq p3, v5, :cond_b

    const/16 v5, 0x12

    const/16 v6, 0xa

    if-eq p3, v5, :cond_a

    const/16 v5, 0x13

    if-eq p3, v5, :cond_9

    const/16 v7, 0x2c

    if-eq p3, v7, :cond_8

    const/16 v4, 0x2d

    if-eq p3, v4, :cond_7

    const/16 v4, 0x60

    if-eq p3, v4, :cond_6

    const/16 v4, 0x61

    if-eq p3, v4, :cond_5

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    packed-switch p3, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x18

    .line 8
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0x1a

    .line 9
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 p1, 0x19

    .line 10
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 p1, 0x17

    .line 11
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_5
    invoke-virtual {p0, v3}, Lo0/b;->G(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_6
    invoke-virtual {p0, v4}, Lo0/b;->G(I)V

    .line 15
    invoke-static {}, Lo0/g;->l()V

    goto/16 :goto_0

    :pswitch_7
    const/16 p1, 0x1b

    .line 16
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto/16 :goto_0

    :pswitch_8
    const/16 p1, 0xd

    .line 17
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto/16 :goto_0

    :pswitch_9
    const/16 p1, 0xf

    .line 18
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_a
    invoke-virtual {p0, v5}, Lo0/b;->G(I)V

    goto/16 :goto_0

    .line 20
    :pswitch_b
    invoke-virtual {p0, v2}, Lo0/b;->G(I)V

    goto :goto_0

    .line 21
    :pswitch_c
    invoke-virtual {p0, v1}, Lo0/b;->G(I)V

    goto :goto_0

    :pswitch_d
    const/4 p1, 0x3

    .line 22
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    .line 23
    :pswitch_e
    iget p1, p0, Lo0/b;->e:I

    add-int/2addr p1, v6

    iput p1, p0, Lo0/b;->e:I

    goto :goto_0

    .line 24
    :pswitch_f
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p1, v3

    .line 25
    iget p2, p0, Lo0/b;->e:I

    if-eqz p2, :cond_4

    add-int/2addr p1, p2

    .line 26
    :cond_4
    invoke-virtual {p0, p1}, Lo0/b;->D(I)V

    .line 27
    iput v4, p0, Lo0/b;->e:I

    goto :goto_0

    .line 28
    :pswitch_10
    iget p1, p0, Lo0/b;->e:I

    if-eqz p1, :cond_f

    sub-int/2addr p1, v3

    .line 29
    invoke-virtual {p0, p1}, Lo0/b;->D(I)V

    .line 30
    iput v4, p0, Lo0/b;->e:I

    goto :goto_0

    :cond_5
    const/16 p1, 0x14

    .line 31
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x6

    .line 32
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    :cond_7
    const/16 p1, 0x10

    .line 33
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    .line 34
    :cond_8
    invoke-virtual {p0, v4}, Lo0/b;->G(I)V

    goto :goto_0

    :cond_9
    const/16 p1, 0xe

    .line 35
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    .line 36
    :cond_a
    invoke-virtual {p0, v6}, Lo0/b;->G(I)V

    goto :goto_0

    .line 37
    :cond_b
    invoke-virtual {p0, v2}, Lo0/b;->G(I)V

    goto :goto_0

    :cond_c
    const/16 p1, 0x8

    .line 38
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    :cond_d
    const/16 p1, 0xb

    .line 39
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    :cond_e
    const/16 p1, 0x2a

    .line 40
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    :cond_f
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x63
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lo0/g;->i(I)V

    .line 2
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lo0/b;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lo0/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lo0/b;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lo0/b;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lo0/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lo0/b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lo0/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lo0/b;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lo0/b;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lo0/g;->L(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x20
    .end array-data
.end method

.method public g()V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->d:Lutil/log/LogType;

    const-string v2, "============>>>  enterDvd"

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->o([I)V

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->o([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x10
        0x1b
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x10
        0x0
        0x5
        0x0
    .end array-data
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->o([I)V

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->o([I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x10
        0x1b
        0x9
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x10
        0xe
        0x9
        0x0
    .end array-data
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public k()V
    .locals 1

    const/16 v0, 0x11

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public m()V
    .locals 6

    .line 1
    sget-object v0, Lo0/e;->h0:[B

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo0/b;->H()[B

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 3
    array-length v1, v0

    const/16 v2, 0xb8

    if-lt v1, v2, :cond_2

    const/16 v1, 0xba

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v3, v1, v3

    const/16 v4, 0xf1

    const/4 v5, 0x1

    aput v4, v1, v5

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x2

    .line 4
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Lz/k;->o([I)V

    :cond_2
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public q(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xd3

    aput v2, v0, v1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aput v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->o([I)V

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public s(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 1
    invoke-virtual {p0, p1}, Lo0/b;->G(I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p1, Lo0/e;->P:I

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lo0/b;->s(I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p1, Lo0/e;->P:I

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0, v0}, Lo0/b;->s(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public t()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public u()V
    .locals 7

    .line 1
    invoke-static {}, Lo0/i;->X2()Lo0/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lbase/b;->M2()Lo1/h0;

    move-result-object v0

    .line 3
    sget-object v1, Lo0/e;->h0:[B

    if-eqz v1, :cond_1

    .line 4
    array-length v2, v1

    const/16 v3, 0xb8

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2e

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x3

    .line 5
    aget-byte v4, v1, v4

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v1, v5

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v1, v6

    aget-byte v3, v1, v3

    invoke-static {v4, v5, v6, v3}, Lo1/p0;->e(BBBB)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lo1/h0;->q(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 6
    invoke-virtual {v0, v3, v1}, Lo1/h0;->t(ILjava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lo1/h0;->d()V

    :cond_2
    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 1

    const/16 v0, 0x13

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public x()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public y()V
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p0, v0}, Lo0/b;->G(I)V

    return-void
.end method

.method public z(I)V
    .locals 0

    return-void
.end method
