.class public Lk0/xb;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/xb;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/xb;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/xb;->e:Z

    .line 5
    iput v0, p0, Lk0/xb;->f:I

    .line 6
    new-instance v0, Lk0/xb$a;

    invoke-direct {v0, p0}, Lk0/xb$a;-><init>(Lk0/xb;)V

    iput-object v0, p0, Lk0/xb;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/xb$b;

    invoke-direct {v0, p0}, Lk0/xb$b;-><init>(Lk0/xb;)V

    iput-object v0, p0, Lk0/xb;->h:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xb;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x14

    const/16 v3, 0x80

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_f

    const/16 v7, 0x1c

    const/16 v8, 0x9

    const/16 v9, 0xff

    if-eq v1, v7, :cond_e

    const/16 v7, 0x24

    if-eq v1, v7, :cond_c

    const/16 v7, 0xf

    const/4 v10, 0x3

    const/4 v11, 0x5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v6

    aput v7, v2, v5

    .line 4
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v6

    aput v7, v2, v5

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 6
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 7
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v6

    aput v7, v2, v5

    .line 8
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v6

    aput v7, v2, v5

    .line 9
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 10
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 11
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 12
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 13
    aget-byte v1, p1, v1

    add-int/lit8 v3, p2, 0x3

    .line 14
    aget-byte v3, p1, v3

    new-array v4, v6, [I

    shr-int/lit8 v8, v1, 0x4

    and-int/2addr v8, v7

    aput v8, v4, v5

    .line 15
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v6, [I

    and-int/2addr v1, v7

    aput v1, v4, v5

    .line 16
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x16

    new-array v2, v6, [I

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 17
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 18
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v1, p2, 0x2

    .line 19
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 20
    aget-byte v2, p1, v2

    and-int/2addr v1, v9

    .line 21
    iput v1, v0, Lk0/xb;->c:I

    move v1, v5

    .line 22
    :goto_1
    iget-object v3, v0, Lk0/xb;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 23
    iget v4, v0, Lk0/xb;->c:I

    aget-object v7, v3, v1

    aget v7, v7, v5

    if-ne v4, v7, :cond_1

    if-eqz v4, :cond_2

    .line 24
    iput v1, v0, Lk0/xb;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    and-int/2addr v2, v9

    if-eqz v2, :cond_3

    .line 25
    array-length v2, v3

    if-ge v1, v2, :cond_11

    .line 26
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 27
    :cond_3
    iget v1, v0, Lk0/xb;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_4

    if-eq v1, v9, :cond_4

    .line 28
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 29
    :cond_4
    iput v9, v0, Lk0/xb;->b:I

    goto/16 :goto_6

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 30
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 32
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 33
    aget-byte v4, p1, v4

    add-int/lit8 v8, p2, 0x6

    .line 34
    aget-byte v8, p1, v8

    new-array v10, v6, [I

    and-int/2addr v1, v9

    aput v1, v10, v5

    .line 35
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v7, v6, [I

    and-int/2addr v2, v9

    aput v2, v7, v5

    .line 36
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x11

    new-array v2, v6, [I

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 37
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v2, v6, [I

    and-int/lit16 v3, v4, 0xff

    aput v3, v2, v5

    .line 38
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v6, [I

    and-int/lit16 v3, v8, 0xff

    aput v3, v2, v5

    .line 39
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 40
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 41
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x5

    .line 42
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x6

    .line 43
    aget-byte v4, p1, v4

    const/16 v7, 0xb

    new-array v8, v6, [I

    and-int/2addr v1, v9

    aput v1, v8, v5

    .line 44
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v7, v6, [I

    and-int/2addr v2, v9

    aput v2, v7, v5

    .line 45
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v6, [I

    and-int/2addr v3, v9

    aput v3, v2, v5

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v6, [I

    and-int/2addr v4, v9

    aput v4, v2, v5

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 48
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v3, :cond_5

    .line 49
    iput-boolean v6, v0, Lk0/xb;->e:Z

    goto/16 :goto_6

    .line 50
    :cond_5
    iput-boolean v5, v0, Lk0/xb;->e:Z

    goto/16 :goto_6

    :pswitch_5
    add-int/lit8 v1, p2, 0x4

    .line 51
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    .line 52
    aget-byte v2, p1, v2

    add-int/lit8 v7, p2, 0x6

    .line 53
    aget-byte v7, p1, v7

    add-int/lit8 v12, p2, 0x7

    .line 54
    aget-byte v12, p1, v12

    add-int/lit8 v13, p2, 0x8

    .line 55
    aget-byte v13, p1, v13

    add-int/lit8 v14, p2, 0x9

    .line 56
    aget-byte v14, p1, v14

    and-int/2addr v1, v9

    mul-int/lit16 v1, v1, 0x100

    and-int/2addr v2, v9

    add-int/2addr v1, v2

    const/16 v2, 0xfa0

    if-ltz v1, :cond_6

    if-gt v1, v2, :cond_6

    new-array v15, v6, [I

    aput v1, v15, v5

    const/16 v1, 0x8

    .line 57
    invoke-static {v1, v15}, Lk0/qt;->y0(I[I)V

    :cond_6
    and-int/lit16 v1, v7, 0xff

    mul-int/lit16 v1, v1, 0x100

    and-int/lit16 v7, v12, 0xff

    add-int/2addr v1, v7

    if-ltz v1, :cond_7

    if-gt v1, v2, :cond_7

    new-array v7, v6, [I

    aput v1, v7, v5

    .line 58
    invoke-static {v8, v7}, Lk0/qt;->y0(I[I)V

    :cond_7
    and-int/lit16 v1, v13, 0xff

    mul-int/lit16 v1, v1, 0x100

    and-int/lit16 v7, v14, 0xff

    add-int/2addr v1, v7

    const/16 v7, 0xa

    if-ltz v1, :cond_8

    if-gt v1, v2, :cond_8

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 59
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    .line 60
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v1, p2, 0x2

    .line 61
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v2, p1, v2

    shl-int/lit8 v5, v1, 0x8

    const v8, 0xff00

    and-int/2addr v5, v8

    and-int/2addr v2, v9

    or-int/2addr v2, v5

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    not-int v1, v2

    add-int/2addr v1, v6

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 63
    iget-boolean v2, v0, Lk0/xb;->e:Z

    if-nez v2, :cond_9

    .line 64
    div-int/lit8 v2, v1, 0x2

    mul-int/2addr v2, v7

    rem-int/2addr v1, v4

    mul-int/2addr v1, v11

    add-int/2addr v2, v1

    goto :goto_3

    :cond_9
    mul-int/lit8 v2, v1, 0xa

    :goto_3
    rsub-int v1, v2, 0x3e8

    goto :goto_5

    .line 65
    :cond_a
    iget-boolean v1, v0, Lk0/xb;->e:Z

    if-nez v1, :cond_b

    .line 66
    div-int/lit8 v1, v2, 0x2

    mul-int/2addr v1, v7

    rem-int/2addr v2, v4

    mul-int/2addr v2, v11

    add-int/2addr v1, v2

    goto :goto_4

    :cond_b
    mul-int/lit8 v1, v2, 0xa

    :goto_4
    add-int/lit16 v1, v1, 0x3e8

    .line 67
    :goto_5
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v1, p2, 0x2

    .line 68
    aget-byte v2, p1, v1

    and-int/2addr v2, v9

    const/16 v4, 0x32

    if-lt v2, v3, :cond_d

    .line 69
    aget-byte v1, p1, v1

    invoke-static {v1, v5, v3, v6, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_6

    .line 70
    :cond_d
    aget-byte v1, p1, v1

    invoke-static {v1, v5, v5, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    .line 71
    :cond_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v1, p2, 0x2

    .line 72
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 73
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 74
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 75
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    add-int/lit8 v1, p2, 0x6

    .line 76
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x7

    .line 77
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x8

    .line 78
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x9

    .line 79
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/c0;->q1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_6

    .line 80
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 v1, p2, 0x2

    .line 81
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    .line 82
    invoke-static {v6}, Lk0/qt;->b(I)V

    goto :goto_6

    .line 83
    :cond_10
    invoke-static {v5}, Lk0/qt;->b(I)V

    :cond_11
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/xb;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/xb;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x17

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 8

    const/4 p3, 0x7

    const/4 p4, 0x6

    const/16 v0, 0x8

    const/16 v1, 0xe3

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-le p1, v7, :cond_4

    new-array p1, v2, [I

    aput v1, p1, v4

    const/16 p3, 0x90

    aput p3, p1, v7

    aput v6, p1, v6

    .line 2
    aget p3, p2, v4

    aput p3, p1, v3

    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    array-length p1, p2

    if-le p1, v7, :cond_4

    new-array p1, v2, [I

    aput v1, p1, v4

    const/16 p3, 0x85

    aput p3, p1, v7

    aput v6, p1, v6

    .line 4
    aget p3, p2, v4

    aput p3, p1, v3

    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 5
    array-length p1, p2

    if-le p1, v5, :cond_4

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 v0, 0x83

    aput v0, p1, v7

    aput v2, p1, v6

    .line 6
    aget v0, p2, v4

    aput v0, p1, v3

    aget v0, p2, v7

    aput v0, p1, v5

    aget v0, p2, v6

    aput v0, p1, v2

    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 7
    array-length p1, p2

    if-le p1, v5, :cond_4

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 v0, 0x82

    aput v0, p1, v7

    aput v2, p1, v6

    .line 8
    aget v0, p2, v4

    aput v0, p1, v3

    invoke-virtual {p0}, Lk0/xb;->a3()I

    move-result v0

    aput v0, p1, v5

    aget v0, p2, v6

    aput v0, p1, v2

    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v5

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a3()I
    .locals 1

    .line 1
    sget v0, Lu0/b;->K3:I

    const/4 v0, 0x1

    return v0
.end method
