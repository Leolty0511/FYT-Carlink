.class public Lk0/o6;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/o6;->e:I

    const/16 v1, 0x17

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

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v2, 0x16

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/o6;->f:[[I

    .line 4
    new-instance v0, Lk0/o6$a;

    invoke-direct {v0, p0}, Lk0/o6$a;-><init>(Lk0/o6;)V

    iput-object v0, p0, Lk0/o6;->g:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x83
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x85
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x86
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8d
        0x22
    .end array-data

    :array_6
    .array-data 4
        0x8e
        0x23
    .end array-data

    :array_7
    .array-data 4
        0x8f
        0x1d
    .end array-data

    :array_8
    .array-data 4
        0x90
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x96
        0x20
    .end array-data

    :array_a
    .array-data 4
        0x97
        0x21
    .end array-data

    :array_b
    .array-data 4
        0x98
        0xd
    .end array-data

    :array_c
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x2
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x3
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x5
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x8
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x9
        0x1d
    .end array-data

    :array_15
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0xb
        0x6
    .end array-data
.end method

.method public static a3()V
    .locals 5

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0xd2

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    .line 2
    invoke-static {}, Lk0/o6;->b3()B

    move-result v4

    aput v4, v1, v3

    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_1
    if-ge v2, v0, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 3
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v2, 0x4

    goto :goto_2

    :pswitch_2
    move v2, v3

    goto :goto_2

    .line 2
    :pswitch_3
    sget v0, Lo0/e;->H:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_6

    :goto_0
    :pswitch_4
    move v2, v5

    goto :goto_2

    .line 3
    :pswitch_5
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v6, v0, v2

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    sub-int v6, v0, v2

    if-ne v3, v6, :cond_3

    goto :goto_0

    :cond_3
    sub-int v2, v0, v2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sub-int/2addr v0, v4

    if-ne v3, v0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    :pswitch_6
    move v2, v4

    .line 4
    :goto_2
    :pswitch_7
    sget v0, Lu0/b;->o:I

    if-ne v0, v3, :cond_7

    goto :goto_3

    :cond_7
    move v4, v2

    :goto_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static c3(I)I
    .locals 2

    const/16 v0, 0xa

    mul-int/2addr p0, v0

    .line 1
    div-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk0/o6;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_12

    const/16 v3, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    iput v1, v0, Lk0/o6;->e:I

    move v1, v5

    .line 4
    :goto_0
    iget-object v2, v0, Lk0/o6;->f:[[I

    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 5
    iget v4, v0, Lk0/o6;->e:I

    aget-object v7, v2, v1

    aget v7, v7, v5

    if-ne v4, v7, :cond_0

    if-eqz v4, :cond_1

    .line 6
    iput v1, v0, Lk0/o6;->c:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget v4, v0, Lk0/o6;->e:I

    if-eqz v4, :cond_2

    .line 8
    array-length v3, v2

    if-ge v1, v3, :cond_13

    .line 9
    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 10
    :cond_2
    iget v1, v0, Lk0/o6;->c:I

    array-length v4, v2

    if-ge v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    .line 11
    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 12
    :cond_3
    iput v3, v0, Lk0/o6;->c:I

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 13
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 14
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x6

    .line 15
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x7

    .line 16
    aget-byte v9, v1, v9

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v6

    aput v11, v10, v5

    const/16 v11, 0xa

    .line 17
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v6

    aput v11, v10, v5

    const/16 v11, 0xc

    .line 18
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v6

    aput v11, v10, v5

    const/16 v11, 0xd

    .line 19
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v6, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v6

    aput v2, v10, v5

    const/16 v2, 0xe

    .line 20
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v10, v7, 0x6

    and-int/2addr v10, v6

    aput v10, v2, v5

    const/16 v10, 0xb

    .line 21
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v10, v6, [I

    shr-int/lit8 v11, v7, 0x5

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 22
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v10, v6, [I

    const/4 v11, 0x4

    shr-int/2addr v7, v11

    and-int/2addr v7, v6

    aput v7, v10, v5

    .line 23
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 24
    aget-byte v7, v1, v2

    add-int/lit8 v10, p2, 0x5

    .line 25
    aget-byte v12, v1, v10

    const-string v13, "persist.fyt.reversetemp"

    .line 26
    invoke-static {v13, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 27
    aget-byte v7, v1, v10

    .line 28
    aget-byte v12, v1, v2

    :cond_4
    and-int/lit16 v2, v7, 0xff

    const/4 v10, -0x3

    const/4 v13, -0x2

    const/4 v14, -0x1

    const/16 v15, 0x1b

    const/4 v11, 0x5

    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v3, :cond_5

    mul-int/2addr v7, v11

    new-array v2, v6, [I

    aput v7, v2, v5

    .line 29
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v2, v6, [I

    aput v10, v2, v5

    .line 30
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v2, v6, [I

    aput v13, v2, v5

    .line 31
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v6, [I

    aput v14, v2, v5

    .line 32
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 v2, v12, 0xff

    const/16 v7, 0x1c

    if-eqz v2, :cond_a

    if-eq v2, v6, :cond_9

    if-eq v2, v3, :cond_8

    mul-int/2addr v12, v11

    new-array v2, v6, [I

    aput v12, v2, v5

    .line 33
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v2, v6, [I

    aput v10, v2, v5

    .line 34
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v2, v6, [I

    aput v13, v2, v5

    .line 35
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v2, v6, [I

    aput v14, v2, v5

    .line 36
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x14

    new-array v3, v6, [I

    shr-int/lit8 v7, v8, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    shr-int/lit8 v7, v8, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    shr-int/lit8 v7, v8, 0x4

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/lit8 v7, v8, 0xf

    aput v7, v3, v5

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v6, [I

    shr-int/lit8 v7, v9, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v6, [I

    shr-int/lit8 v7, v9, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v6, [I

    shr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v6, [I

    and-int/lit8 v7, v9, 0xf

    aput v7, v3, v5

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 45
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 46
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 47
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 48
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 49
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 50
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/4 v3, 0x3

    .line 51
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/4 v3, 0x4

    .line 52
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 53
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v6, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v6, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v6

    aput v1, v3, v5

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 56
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit8 v2, p2, 0x6

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    const/16 v7, 0x8c

    invoke-static {v2, v4, v7}, Lk0/qt;->p(III)V

    add-int/lit8 v2, p2, 0x4

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    iput v2, v0, Lk0/o6;->d:I

    if-eqz v2, :cond_c

    or-int/lit16 v2, v2, 0x80

    .line 59
    iput v2, v0, Lk0/o6;->d:I

    :cond_c
    move v2, v5

    .line 60
    :goto_5
    iget-object v4, v0, Lk0/o6;->f:[[I

    array-length v7, v4

    if-ge v2, v7, :cond_e

    .line 61
    iget v7, v0, Lk0/o6;->d:I

    aget-object v8, v4, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_d

    if-eqz v7, :cond_e

    .line 62
    iput v2, v0, Lk0/o6;->b:I

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 63
    :cond_e
    :goto_6
    iget v7, v0, Lk0/o6;->d:I

    if-eqz v7, :cond_f

    .line 64
    array-length v7, v4

    if-ge v2, v7, :cond_11

    .line 65
    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 66
    :cond_f
    iget v2, v0, Lk0/o6;->b:I

    array-length v5, v4

    if-ge v2, v5, :cond_10

    if-eq v2, v3, :cond_10

    .line 67
    aget-object v2, v4, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 68
    :cond_10
    iput v3, v0, Lk0/o6;->b:I

    :cond_11
    :goto_7
    add-int/lit8 v2, p2, 0x8

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/o6;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 70
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/o6;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 71
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/o6;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xb

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/o6;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0xc

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/o6;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0xd

    .line 74
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/o6;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0xe

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/o6;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0xf

    .line 76
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/o6;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto :goto_8

    .line 77
    :cond_12
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_13
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/o6;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 0

    return-void
.end method
