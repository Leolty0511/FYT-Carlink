.class public Lk0/j1;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public final g:I

.field public h:Lo1/g0;

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/j1;->c:I

    const/16 v2, 0x10

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x9

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v14, 0xa

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v15, 0xb

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v16, 0xc

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v17, 0xd

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v18, 0xe

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v19, 0xf

    aput-object v5, v3, v19

    iput-object v3, v0, Lk0/j1;->d:[[I

    new-array v2, v2, [[I

    new-array v3, v4, [I

    .line 4
    fill-array-data v3, :array_10

    aput-object v3, v2, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_11

    aput-object v1, v2, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_12

    aput-object v1, v2, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_13

    aput-object v1, v2, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_14

    aput-object v1, v2, v8

    new-array v1, v4, [I

    fill-array-data v1, :array_15

    aput-object v1, v2, v9

    new-array v1, v4, [I

    fill-array-data v1, :array_16

    aput-object v1, v2, v10

    new-array v1, v4, [I

    fill-array-data v1, :array_17

    aput-object v1, v2, v11

    new-array v1, v4, [I

    fill-array-data v1, :array_18

    aput-object v1, v2, v12

    new-array v1, v4, [I

    fill-array-data v1, :array_19

    aput-object v1, v2, v13

    new-array v1, v4, [I

    fill-array-data v1, :array_1a

    aput-object v1, v2, v14

    new-array v1, v4, [I

    fill-array-data v1, :array_1b

    aput-object v1, v2, v15

    new-array v1, v4, [I

    fill-array-data v1, :array_1c

    aput-object v1, v2, v16

    new-array v1, v4, [I

    fill-array-data v1, :array_1d

    aput-object v1, v2, v17

    new-array v1, v4, [I

    fill-array-data v1, :array_1e

    aput-object v1, v2, v18

    new-array v1, v4, [I

    fill-array-data v1, :array_1f

    aput-object v1, v2, v19

    iput-object v2, v0, Lk0/j1;->e:[[I

    .line 5
    new-instance v1, Lk0/j1$a;

    invoke-direct {v1, v0}, Lk0/j1$a;-><init>(Lk0/j1;)V

    iput-object v1, v0, Lk0/j1;->f:Ljava/lang/Runnable;

    .line 6
    iput v6, v0, Lk0/j1;->g:I

    .line 7
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/j1;->h:Lo1/g0;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x26
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x21
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x60
        0xc
    .end array-data

    :array_10
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_16
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x8
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x9
        0x26
    .end array-data

    :array_19
    .array-data 4
        0xa
        0x21
    .end array-data

    :array_1a
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_1b
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_1c
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_1d
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_1e
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_1f
    .array-data 4
        0x60
        0xd
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
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lk0/j1;->i:I

    .line 2
    iget-object v0, p0, Lk0/j1;->h:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 3
    iget-object v0, p0, Lk0/j1;->h:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/j1;->b3(I)V

    .line 4
    iget-object v0, p0, Lk0/j1;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v1, v0, Lk0/mt;->e:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->f:I

    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x29

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_12

    const/4 v2, 0x4

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    const-string v6, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    new-array v6, v4, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v4

    aput v8, v6, v7

    .line 4
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v4, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v4

    aput v8, v6, v7

    .line 5
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v6, v4, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v4

    aput v8, v6, v7

    .line 6
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v4, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v4

    aput v8, v6, v7

    .line 7
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v6, v4, [I

    shr-int/lit8 v8, v1, 0x5

    and-int/2addr v8, v4

    aput v8, v6, v7

    .line 8
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v6, v1, 0x4

    and-int/2addr v6, v4

    aput v6, v2, v7

    .line 9
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    aput v1, v2, v7

    const/4 v1, 0x5

    .line 10
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v1, p2, 0x2

    .line 12
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lk0/j1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 13
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lk0/j1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 14
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lk0/j1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 15
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lk0/j1;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    .line 16
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v1, p2, 0x2

    .line 17
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lk0/j1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    .line 18
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lk0/j1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    .line 19
    aget-byte v2, p1, v1

    and-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lk0/j1;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    .line 20
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    invoke-virtual {p0, v1}, Lk0/j1;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 21
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    add-int/lit8 v5, p2, 0x3

    .line 22
    aget-byte v5, p1, v5

    and-int/2addr v5, v6

    add-int/lit8 v8, p2, 0x4

    .line 23
    aget-byte v8, p1, v8

    and-int/2addr v8, v6

    add-int/lit8 v9, p2, 0x6

    .line 24
    aget-byte v9, p1, v9

    and-int/2addr v9, v6

    new-array v10, v4, [I

    shr-int/lit8 v11, v1, 0x7

    and-int/2addr v11, v4

    aput v11, v10, v7

    const/16 v11, 0xa

    .line 25
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xb

    new-array v12, v4, [I

    shr-int/lit8 v13, v1, 0x6

    and-int/2addr v13, v4

    aput v13, v12, v7

    .line 26
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xc

    new-array v12, v4, [I

    shr-int/lit8 v13, v1, 0x5

    and-int/2addr v13, v4

    aput v13, v12, v7

    .line 27
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xd

    new-array v12, v4, [I

    shr-int/lit8 v13, v1, 0x3

    and-int/2addr v13, v4

    aput v13, v12, v7

    .line 28
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0xe

    new-array v12, v4, [I

    shr-int/lit8 v13, v1, 0x2

    and-int/2addr v13, v4

    aput v13, v12, v7

    .line 29
    invoke-static {v10, v12}, Lk0/qt;->y0(I[I)V

    new-array v10, v4, [I

    shr-int/lit8 v12, v1, 0x1

    and-int/2addr v12, v4

    aput v12, v10, v7

    const/16 v12, 0x41

    .line 30
    invoke-static {v12, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v4, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v4

    aput v1, v10, v7

    const/16 v1, 0x10

    .line 31
    invoke-static {v1, v10}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    if-eq v10, v4, :cond_4

    if-eq v10, v3, :cond_3

    if-eq v10, v2, :cond_2

    const/16 v2, 0x8

    if-eq v10, v2, :cond_1

    move v2, v7

    move v3, v2

    move v10, v3

    goto :goto_1

    :cond_1
    move v3, v4

    move v10, v3

    move v2, v7

    goto :goto_1

    :cond_2
    move v3, v4

    move v2, v7

    move v10, v2

    goto :goto_1

    :cond_3
    move v10, v4

    move v2, v7

    move v3, v2

    goto :goto_1

    :cond_4
    move v2, v4

    move v10, v2

    move v3, v7

    :goto_1
    const/16 v13, 0x31

    new-array v14, v4, [I

    aput v7, v14, v7

    .line 32
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x12

    new-array v14, v4, [I

    aput v2, v14, v7

    .line 33
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v13, v4, [I

    aput v3, v13, v7

    .line 34
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v4, [I

    aput v10, v3, v7

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v4, [I

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v8, 0x80

    const/16 v3, 0x80

    const/16 v5, 0x1b

    if-ne v2, v3, :cond_7

    if-eqz v8, :cond_6

    const/16 v2, 0x1f

    if-eq v8, v2, :cond_5

    new-array v2, v4, [I

    and-int/lit8 v3, v8, 0x7f

    aput v3, v2, v7

    .line 37
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v2, v4, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 38
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v2, v4, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 39
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v4, [I

    and-int/lit8 v3, v8, 0x7f

    aput v3, v2, v7

    .line 40
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v4, [I

    shr-int/lit8 v3, v9, 0x7

    and-int/2addr v3, v4

    aput v3, v2, v7

    .line 41
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/lit8 v3, v9, 0x6

    and-int/2addr v3, v4

    aput v3, v2, v7

    .line 42
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 43
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v1, p2, 0x7

    .line 44
    aget-byte v1, p1, v1

    and-int/2addr v1, v6

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_8

    and-int/lit8 v1, v1, 0x7f

    mul-int/2addr v1, v11

    rsub-int v1, v1, 0x3e8

    goto :goto_3

    :cond_8
    and-int/lit8 v1, v1, 0x7f

    mul-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x3e8

    .line 45
    :goto_3
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    .line 46
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v1, p2, 0x2

    .line 47
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v2, p1, v2

    and-int/2addr v1, v6

    .line 49
    iput v1, v0, Lk0/j1;->c:I

    .line 50
    iget v1, v0, Lk0/j1;->i:I

    if-ne v1, v4, :cond_d

    move v1, v7

    .line 51
    :goto_4
    iget-object v3, v0, Lk0/j1;->e:[[I

    array-length v5, v3

    if-ge v1, v5, :cond_a

    .line 52
    iget v5, v0, Lk0/j1;->c:I

    aget-object v8, v3, v1

    aget v8, v8, v7

    if-ne v5, v8, :cond_9

    if-eqz v5, :cond_a

    .line 53
    iput v1, v0, Lk0/j1;->b:I

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    and-int/2addr v2, v6

    if-eqz v2, :cond_b

    .line 54
    array-length v2, v3

    if-ge v1, v2, :cond_13

    .line 55
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 56
    :cond_b
    iget v1, v0, Lk0/j1;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_c

    if-eq v1, v6, :cond_c

    .line 57
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 58
    :cond_c
    iput v6, v0, Lk0/j1;->b:I

    goto :goto_9

    :cond_d
    move v1, v7

    .line 59
    :goto_6
    iget-object v3, v0, Lk0/j1;->d:[[I

    array-length v5, v3

    if-ge v1, v5, :cond_f

    .line 60
    iget v5, v0, Lk0/j1;->c:I

    aget-object v8, v3, v1

    aget v8, v8, v7

    if-ne v5, v8, :cond_e

    if-eqz v5, :cond_f

    .line 61
    iput v1, v0, Lk0/j1;->b:I

    goto :goto_7

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    and-int/2addr v2, v6

    if-eqz v2, :cond_10

    .line 62
    array-length v2, v3

    if-ge v1, v2, :cond_13

    .line 63
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_9

    .line 64
    :cond_10
    iget v1, v0, Lk0/j1;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_11

    if-eq v1, v6, :cond_11

    .line 65
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 66
    :cond_11
    iput v6, v0, Lk0/j1;->b:I

    goto :goto_9

    :cond_12
    :goto_8
    add-int/lit8 v1, p2, 0x3

    .line 67
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    const v3, 0x8000

    const/16 v5, 0x1e53

    invoke-static {v1, v2, v3, v4, v5}, Lk0/qt;->m(IIIZI)V

    :cond_13
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/j1;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/j1;->b3(I)V

    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xf

    :cond_0
    return p1
.end method

.method public final b3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x62

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/j1;->j:I

    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0x99

    aput v3, v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v0, v1, v3

    aput p1, v1, v4

    const/4 p1, 0x5

    aput v2, v1, p1

    const/4 p1, 0x6

    aput v2, v1, p1

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/j1;->h:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/j1;->j:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/j1;->h:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
