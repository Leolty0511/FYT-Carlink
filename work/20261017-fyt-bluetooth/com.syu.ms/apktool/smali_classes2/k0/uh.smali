.class public Lk0/uh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/uh;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    const/4 v3, 0x1

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    const/4 v3, 0x3

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/uh;->d:[[I

    return-void

    nop

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    .line 7
    sget v3, Lk0/nt;->c:I

    packed-switch v3, :pswitch_data_0

    .line 8
    :pswitch_0
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->g:I

    goto :goto_0

    .line 10
    :pswitch_1
    iput v2, v0, Lk0/mt;->g:I

    .line 11
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 12
    :pswitch_2
    iput v2, v0, Lk0/mt;->i:I

    .line 13
    iput v1, v0, Lk0/mt;->g:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x27

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/16 v7, 0xff

    if-eq v1, v2, :cond_19

    const/16 v2, 0x29

    const/4 v8, 0x0

    if-eq v1, v2, :cond_18

    const/16 v2, 0xb

    const/16 v9, 0x7d

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-eq v1, v9, :cond_16

    const/16 v12, 0x38

    const/16 v14, 0x65

    const/16 v15, 0x64

    const/16 v9, 0x63

    const/16 v13, 0x62

    if-eq v1, v12, :cond_15

    const/16 v12, 0x39

    if-eq v1, v12, :cond_13

    const/16 v12, 0x40

    if-eq v1, v12, :cond_d

    const/16 v9, 0x41

    const/16 v12, 0xf

    if-eq v1, v9, :cond_c

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 4
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 5
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 6
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 7
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 8
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 9
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 10
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v11

    aput v1, v2, v8

    .line 11
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 12
    aget-byte v2, p1, v1

    and-int/2addr v2, v7

    add-int/lit8 v3, p2, 0x3

    .line 13
    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    add-int/lit8 v6, p2, 0x4

    .line 14
    aget-byte v9, p1, v6

    and-int/2addr v9, v7

    add-int/lit8 v5, p2, 0x5

    .line 15
    aget-byte v12, p1, v5

    and-int/2addr v12, v7

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    if-nez v9, :cond_1

    if-nez v12, :cond_1

    .line 16
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 17
    :cond_1
    sget v8, Ll0/c0;->g:I

    if-ne v8, v2, :cond_2

    sget v8, Ll0/c0;->h:I

    if-ne v8, v4, :cond_2

    sget v8, Ll0/c0;->i:I

    if-ne v8, v9, :cond_2

    sget v8, Ll0/c0;->j:I

    if-eq v8, v12, :cond_3

    .line 18
    :cond_2
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_3

    .line 19
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 20
    sput v10, Ll0/c0;->k:I

    .line 21
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_3
    :goto_1
    sput v2, Ll0/c0;->g:I

    .line 23
    sput v4, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput v12, Ll0/c0;->j:I

    .line 26
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    .line 27
    aget-byte v1, p1, v3

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    .line 28
    aget-byte v1, p1, v6

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    .line 29
    aget-byte v1, p1, v5

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v1, p2, 0x2

    .line 30
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 31
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 32
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 33
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 34
    aget-byte v1, p1, v1

    add-int/lit8 v6, p2, 0x3

    .line 35
    aget-byte v6, p1, v6

    add-int/lit8 v13, p2, 0x4

    .line 36
    aget-byte v13, p1, v13

    add-int/lit8 v14, p2, 0x5

    .line 37
    aget-byte v14, p1, v14

    add-int/lit8 v15, p2, 0x6

    .line 38
    aget-byte v15, p1, v15

    new-array v10, v11, [I

    shr-int/lit8 v16, v1, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v10, v8

    .line 39
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v10, v1, 0x6

    and-int/2addr v10, v11

    aput v10, v3, v8

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v11, [I

    shr-int/lit8 v10, v1, 0x5

    and-int/2addr v10, v11

    aput v10, v3, v8

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v11, [I

    shr-int/lit8 v10, v1, 0x4

    and-int/2addr v10, v11

    aput v10, v3, v8

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v11, [I

    shr-int/lit8 v10, v1, 0x3

    and-int/2addr v10, v11

    aput v10, v3, v8

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v11, [I

    shr-int/lit8 v10, v1, 0x2

    and-int/2addr v10, v11

    aput v10, v3, v8

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x26

    new-array v3, v11, [I

    shr-int/lit8 v10, v1, 0x0

    and-int/2addr v10, v11

    aput v10, v3, v8

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v11

    aput v1, v2, v8

    .line 46
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v11, [I

    shr-int/lit8 v3, v6, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v11, [I

    and-int/lit8 v3, v6, 0xf

    aput v3, v2, v8

    .line 50
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v13, 0xff

    const/16 v2, 0x1b

    if-eqz v1, :cond_5

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_4

    new-array v3, v11, [I

    mul-int/lit8 v6, v1, 0x5

    add-int/lit16 v6, v6, 0xaf

    aput v6, v3, v8

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array v3, v11, [I

    const/4 v6, -0x3

    aput v6, v3, v8

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v3, v11, [I

    const/4 v6, -0x2

    aput v6, v3, v8

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 v2, v14, 0xff

    const/16 v3, 0x1c

    if-eqz v2, :cond_7

    const/16 v6, 0x7f

    if-eq v2, v6, :cond_6

    new-array v2, v11, [I

    mul-int/2addr v1, v5

    add-int/lit16 v1, v1, 0xaf

    aput v1, v2, v8

    .line 54
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array v1, v11, [I

    const/4 v2, -0x3

    aput v2, v1, v8

    .line 55
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v1, v11, [I

    const/4 v2, -0x2

    aput v2, v1, v8

    .line 56
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v1, v11, [I

    shr-int/lit8 v2, v15, 0x7

    and-int/2addr v2, v11

    aput v2, v1, v8

    .line 57
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 58
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x36

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 59
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x34

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 60
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v11, [I

    shr-int/lit8 v3, v15, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 61
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x7

    .line 62
    aget-byte v4, p1, v3

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v12

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v11, [I

    .line 63
    aget-byte v3, p1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v12

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v1, p2, 0x2

    .line 64
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 65
    aget-byte v2, p1, v2

    and-int/2addr v1, v7

    .line 66
    iput v1, v0, Lk0/uh;->c:I

    move v1, v8

    .line 67
    :goto_4
    iget-object v3, v0, Lk0/uh;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_9

    .line 68
    iget v4, v0, Lk0/uh;->c:I

    aget-object v5, v3, v1

    aget v5, v5, v8

    if-ne v4, v5, :cond_8

    if-eqz v4, :cond_9

    .line 69
    iput v1, v0, Lk0/uh;->b:I

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    and-int/2addr v2, v7

    if-eqz v2, :cond_a

    .line 70
    array-length v2, v3

    if-ge v1, v2, :cond_1b

    .line 71
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 72
    :cond_a
    iget v1, v0, Lk0/uh;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_b

    if-eq v1, v7, :cond_b

    .line 73
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 74
    :cond_b
    iput v7, v0, Lk0/uh;->b:I

    goto/16 :goto_7

    :cond_c
    const/16 v1, 0xa2

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x2

    .line 75
    aget-byte v5, p1, v3

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa3

    new-array v2, v11, [I

    .line 76
    aget-byte v5, p1, v3

    shr-int/lit8 v4, v5, 0x3

    and-int/2addr v4, v11

    aput v4, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa4

    new-array v2, v11, [I

    .line 77
    aget-byte v3, p1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 78
    :cond_d
    sget v1, Lk0/nt;->a:I

    const v2, 0xb01b7

    if-eq v1, v2, :cond_e

    const v2, 0xe01b7

    if-eq v1, v2, :cond_e

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v1, p2, 0x2

    .line 79
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 81
    aget-byte v3, p1, v3

    add-int/lit8 v5, p2, 0x5

    .line 82
    aget-byte v5, p1, v5

    add-int/lit8 v10, p2, 0x6

    .line 83
    aget-byte v10, p1, v10

    if-eqz v1, :cond_12

    if-eq v1, v11, :cond_11

    if-eq v1, v6, :cond_10

    if-eq v1, v4, :cond_f

    goto/16 :goto_7

    :cond_f
    const/16 v1, 0x69

    new-array v4, v11, [I

    and-int/2addr v2, v7

    aput v2, v4, v8

    .line 84
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/lit16 v2, v3, 0xff

    aput v2, v1, v8

    .line 85
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x97

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 86
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x98

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 87
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x99

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 88
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9a

    new-array v2, v11, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 89
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9b

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 90
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9c

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 91
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9d

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 92
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9e

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 93
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9f

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 94
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa0

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 95
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xa1

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 96
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_10
    const/16 v1, 0x68

    new-array v4, v11, [I

    and-int/2addr v2, v7

    aput v2, v4, v8

    .line 97
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/lit16 v2, v3, 0xff

    aput v2, v1, v8

    .line 98
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8c

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 99
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8d

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 100
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8e

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 101
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8f

    new-array v2, v11, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 102
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x90

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 103
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x91

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 104
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x92

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 105
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x93

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 106
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x94

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 107
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x95

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 108
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x96

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 109
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_11
    const/16 v1, 0x67

    new-array v4, v11, [I

    and-int/2addr v2, v7

    aput v2, v4, v8

    .line 110
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/lit16 v2, v3, 0xff

    aput v2, v1, v8

    .line 111
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x81

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 112
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x82

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 113
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x83

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 114
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x84

    new-array v2, v11, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 115
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x85

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 116
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x86

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 117
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x87

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 118
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x88

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 119
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x89

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 120
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8a

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 121
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8b

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 122
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_12
    new-array v1, v11, [I

    and-int/2addr v2, v7

    aput v2, v1, v8

    const/16 v2, 0x66

    .line 123
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/lit16 v2, v3, 0xff

    aput v2, v1, v8

    .line 124
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x76

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 125
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x77

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 126
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x78

    new-array v2, v11, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 127
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x79

    new-array v2, v11, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v5, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 128
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 129
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7b

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 130
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7c

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 131
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    shr-int/lit8 v2, v10, 0x4

    and-int/2addr v2, v11

    aput v2, v1, v8

    const/16 v2, 0x7d

    .line 132
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7e

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x3

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 133
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7f

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 134
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x80

    new-array v2, v11, [I

    shr-int/lit8 v3, v10, 0x1

    and-int/2addr v3, v11

    aput v3, v2, v8

    .line 135
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 136
    :cond_13
    sget v1, Lk0/nt;->a:I

    const v2, 0xb01b7

    if-eq v1, v2, :cond_14

    const v2, 0xe01b7

    if-eq v1, v2, :cond_14

    const v2, 0xc01b7

    if-eq v1, v2, :cond_14

    goto/16 :goto_7

    :cond_14
    add-int/lit8 v1, p2, 0x2

    .line 137
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 138
    aget-byte v2, p1, v2

    const/16 v3, 0x6a

    new-array v4, v11, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v8

    .line 139
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v11, [I

    shr-int/lit8 v5, v1, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v8

    .line 140
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v11, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v8

    .line 141
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v11, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v11

    aput v5, v4, v8

    .line 142
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v11, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v8

    .line 143
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v4, v11, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v11

    aput v1, v4, v8

    .line 144
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v8

    .line 145
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v8

    .line 146
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v8

    .line 147
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v8

    .line 148
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x74

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v11

    aput v4, v3, v8

    .line 149
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x75

    new-array v3, v11, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v11

    aput v2, v3, v8

    .line 150
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v1, p2, 0x2

    .line 151
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 152
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 153
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 154
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    .line 155
    aget-byte v5, p1, v5

    add-int/lit8 v6, p2, 0x7

    .line 156
    aget-byte v6, p1, v6

    add-int/lit8 v10, p2, 0x8

    .line 157
    aget-byte v10, p1, v10

    add-int/lit8 v12, p2, 0x9

    .line 158
    aget-byte v12, p1, v12

    new-array v14, v11, [I

    and-int/2addr v1, v7

    aput v1, v14, v8

    .line 159
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/2addr v2, v7

    aput v2, v1, v8

    .line 160
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/lit16 v2, v3, 0xff

    aput v2, v1, v8

    .line 161
    invoke-static {v15, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/lit16 v2, v4, 0xff

    aput v2, v1, v8

    const/16 v2, 0x65

    .line 162
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v11, [I

    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v8

    const/16 v2, 0x66

    .line 163
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v2, v11, [I

    and-int/lit16 v3, v6, 0xff

    aput v3, v2, v8

    .line 164
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v11, [I

    and-int/lit16 v3, v10, 0xff

    aput v3, v2, v8

    .line 165
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x69

    new-array v2, v11, [I

    and-int/lit16 v3, v12, 0xff

    aput v3, v2, v8

    .line 166
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    add-int/lit8 v1, p2, 0x2

    .line 167
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    if-eq v1, v11, :cond_17

    goto :goto_7

    :cond_17
    add-int/lit8 v1, p2, 0x3

    .line 168
    aget-byte v3, p1, v1

    shr-int/2addr v3, v4

    and-int/2addr v3, v11

    aget-byte v4, p1, v1

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    invoke-static {v3, v4, v8}, Ll0/c0;->a(III)V

    .line 169
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v6, [I

    aput v2, v5, v8

    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    aput v1, v5, v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    add-int/lit8 v1, p2, 0x2

    .line 170
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const v3, 0x8000

    const/16 v4, 0x2260

    invoke-static {v1, v2, v3, v8, v4}, Lk0/qt;->m(IIIZI)V

    goto :goto_7

    :cond_19
    add-int/lit8 v1, p2, 0x2

    .line 171
    aget-byte v1, p1, v1

    add-int/lit8 v1, p2, 0x3

    .line 172
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    const/16 v2, 0x46

    if-ge v1, v2, :cond_1a

    sub-int/2addr v2, v1

    .line 173
    div-int/lit8 v1, v2, 0x2

    mul-int/2addr v1, v3

    rsub-int v1, v1, 0x3e8

    rem-int/2addr v2, v6

    mul-int/2addr v2, v5

    sub-int/2addr v1, v2

    goto :goto_6

    :cond_1a
    sub-int/2addr v1, v2

    .line 174
    div-int/lit8 v2, v1, 0x2

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x3e8

    rem-int/2addr v1, v6

    mul-int/2addr v1, v5

    add-int/2addr v1, v2

    .line 175
    :goto_6
    invoke-static {v1}, Lu0/d;->A3(I)V

    :cond_1b
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa6

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
    .locals 5

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, -0x3a

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, -0x39

    aput p3, p1, v4

    const/4 p3, 0x6

    aput p3, p1, v2

    .line 4
    aget v3, p2, v3

    aput v3, p1, v1

    aget v3, p2, v4

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, p4

    aget v1, p2, v1

    aput v1, p1, p3

    const/4 p3, 0x7

    aget v0, p2, v0

    aput v0, p1, p3

    const/16 p3, 0x8

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
