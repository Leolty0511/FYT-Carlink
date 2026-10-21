.class public Lk0/jh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:J

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/jh;->c:I

    const/16 v2, 0xd

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

    iput-object v3, v0, Lk0/jh;->d:[[I

    .line 4
    iput v1, v0, Lk0/jh;->f:I

    const/16 v3, 0x12

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_d

    aput-object v5, v3, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_e

    aput-object v1, v3, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_f

    aput-object v1, v3, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_10

    aput-object v1, v3, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_11

    aput-object v1, v3, v8

    new-array v1, v4, [I

    fill-array-data v1, :array_12

    aput-object v1, v3, v9

    new-array v1, v4, [I

    fill-array-data v1, :array_13

    aput-object v1, v3, v10

    new-array v1, v4, [I

    fill-array-data v1, :array_14

    aput-object v1, v3, v11

    new-array v1, v4, [I

    fill-array-data v1, :array_15

    aput-object v1, v3, v12

    new-array v1, v4, [I

    fill-array-data v1, :array_16

    aput-object v1, v3, v13

    new-array v1, v4, [I

    fill-array-data v1, :array_17

    aput-object v1, v3, v14

    new-array v1, v4, [I

    fill-array-data v1, :array_18

    aput-object v1, v3, v15

    new-array v1, v4, [I

    fill-array-data v1, :array_19

    aput-object v1, v3, v16

    new-array v1, v4, [I

    fill-array-data v1, :array_1a

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1b

    const/16 v2, 0xe

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1c

    const/16 v2, 0xf

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1d

    const/16 v2, 0x10

    aput-object v1, v3, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_1e

    const/16 v2, 0x11

    aput-object v1, v3, v2

    iput-object v3, v0, Lk0/jh;->g:[[I

    .line 6
    new-instance v1, Lk0/jh$a;

    invoke-direct {v1, v0}, Lk0/jh$a;-><init>(Lk0/jh;)V

    iput-object v1, v0, Lk0/jh;->h:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 7
    iput-wide v1, v0, Lk0/jh;->i:J

    const/4 v1, -0x1

    .line 8
    iput v1, v0, Lk0/jh;->j:I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x21
        0x18
    .end array-data

    :array_8
    .array-data 4
        0x22
        0x36
    .end array-data

    :array_9
    .array-data 4
        0x23
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x24
        0x4c
    .end array-data

    :array_b
    .array-data 4
        0x25
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x26
        0xd
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x37
    .end array-data

    :array_13
    .array-data 4
        0x7
        0x1d
    .end array-data

    :array_14
    .array-data 4
        0x8
        0x43
    .end array-data

    :array_15
    .array-data 4
        0x9
        0x44
    .end array-data

    :array_16
    .array-data 4
        0xe
        0x9
    .end array-data

    :array_17
    .array-data 4
        0xf
        0x36
    .end array-data

    :array_18
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_19
    .array-data 4
        0x11
        0x3a
    .end array-data

    :array_1a
    .array-data 4
        0x12
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x13
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x14
        0x1d
    .end array-data

    :array_1d
    .array-data 4
        0x16
        0x7
    .end array-data

    :array_1e
    .array-data 4
        0x17
        0x8
    .end array-data
.end method

.method public static synthetic a3(Lk0/jh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/jh;->i:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/jh;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/jh;->i:J

    return-wide p1
.end method

.method public static synthetic c3(Lk0/jh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/jh;->j:I

    return p0
.end method

.method public static synthetic d3(Lk0/jh;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/jh;->j:I

    return p1
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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/jh;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x29

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v4, :cond_28

    const/16 v4, 0x30

    const/4 v7, 0x2

    if-eq v2, v4, :cond_27

    const/16 v4, 0x40

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x1

    if-eq v2, v4, :cond_26

    const/16 v4, 0x7d

    const/16 v12, 0xb

    if-eq v2, v4, :cond_24

    const/16 v4, 0x33

    const/16 v13, 0xa

    const v14, 0xffff

    const v15, 0xff00

    const/16 v8, 0x8

    if-eq v2, v4, :cond_23

    const/16 v4, 0x34

    if-eq v2, v4, :cond_11

    const/16 v4, 0x9

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    new-array v2, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    and-int/2addr v5, v14

    aput v5, v2, v6

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 3
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    and-int/2addr v5, v14

    aput v5, v2, v6

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 4
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    and-int/2addr v5, v14

    aput v5, v2, v6

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v5, v11, [I

    add-int/lit8 v7, p2, 0x8

    .line 5
    aget-byte v7, v1, v7

    shl-int/2addr v7, v8

    and-int/2addr v7, v15

    add-int/lit8 v4, p2, 0x9

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    or-int/2addr v1, v7

    and-int/2addr v1, v14

    aput v1, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 7
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 8
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 9
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 10
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 11
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 12
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 13
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v6

    .line 14
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    aput v1, v2, v6

    .line 15
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 19
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_16

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 23
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_16

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 25
    aget-byte v1, v1, v5

    and-int/2addr v2, v3

    .line 26
    iput v2, v0, Lk0/jh;->f:I

    move v2, v6

    .line 27
    :goto_1
    iget-object v5, v0, Lk0/jh;->g:[[I

    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 28
    iget v7, v0, Lk0/jh;->f:I

    aget-object v9, v5, v2

    aget v9, v9, v6

    if-ne v7, v9, :cond_1

    if-eqz v7, :cond_2

    .line 29
    iput v2, v0, Lk0/jh;->e:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_2
    :goto_2
    iget v7, v0, Lk0/jh;->f:I

    if-eq v7, v8, :cond_b

    if-eq v7, v4, :cond_9

    const/16 v4, 0x16

    if-eq v7, v4, :cond_7

    const/16 v4, 0x17

    if-eq v7, v4, :cond_5

    and-int/2addr v1, v3

    if-ne v1, v11, :cond_3

    .line 31
    array-length v1, v5

    if-ge v2, v1, :cond_29

    .line 32
    aget-object v1, v5, v2

    aget v1, v1, v11

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_3
    if-nez v1, :cond_29

    .line 33
    iget v1, v0, Lk0/jh;->e:I

    array-length v2, v5

    if-ge v1, v2, :cond_4

    if-eq v1, v3, :cond_4

    .line 34
    aget-object v1, v5, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 35
    :cond_4
    iput v3, v0, Lk0/jh;->e:I

    goto/16 :goto_16

    :cond_5
    move v2, v6

    :goto_3
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_6

    const/16 v4, 0x1f

    .line 36
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/16 v1, 0x1f

    .line 37
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_7
    move v2, v6

    :goto_4
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_8

    const/16 v4, 0x1e

    .line 38
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    const/16 v1, 0x1e

    .line 39
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_9
    move v2, v6

    :goto_5
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_a

    const/4 v4, 0x7

    .line 40
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x7

    .line 41
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_b
    move v2, v6

    :goto_6
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_c

    .line 42
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 43
    :cond_c
    invoke-static {v8, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 45
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 46
    iput v2, v0, Lk0/jh;->c:I

    move v2, v6

    .line 47
    :goto_7
    iget-object v4, v0, Lk0/jh;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_e

    .line 48
    iget v5, v0, Lk0/jh;->c:I

    aget-object v7, v4, v2

    aget v7, v7, v6

    if-ne v5, v7, :cond_d

    if-eqz v5, :cond_e

    .line 49
    iput v2, v0, Lk0/jh;->b:I

    goto :goto_8

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    and-int/2addr v1, v3

    if-ne v1, v11, :cond_f

    .line 50
    array-length v1, v4

    if-ge v2, v1, :cond_29

    .line 51
    aget-object v1, v4, v2

    aget v1, v1, v11

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_f
    if-nez v1, :cond_29

    .line 52
    iget v1, v0, Lk0/jh;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_10

    if-eq v1, v3, :cond_10

    .line 53
    aget-object v1, v4, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 54
    :cond_10
    iput v3, v0, Lk0/jh;->b:I

    goto/16 :goto_16

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 55
    aget-byte v2, v1, v2

    shl-int/2addr v2, v8

    and-int/2addr v2, v15

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    or-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x5

    .line 56
    aget-byte v4, v1, v4

    shl-int/2addr v4, v8

    and-int/2addr v4, v15

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v1, v7

    and-int/2addr v3, v7

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    .line 57
    aget-byte v1, v1, v4

    const/16 v4, 0xc8

    const/4 v7, -0x1

    const/16 v12, 0x2bc

    const/16 v13, 0x12c

    if-ge v2, v4, :cond_14

    if-le v3, v13, :cond_12

    move v14, v11

    goto :goto_9

    :cond_12
    move v14, v6

    :goto_9
    if-ge v3, v12, :cond_13

    move v15, v11

    goto :goto_a

    :cond_13
    move v15, v6

    :goto_a
    and-int/2addr v14, v15

    if-eqz v14, :cond_14

    goto/16 :goto_15

    :cond_14
    if-ge v3, v4, :cond_17

    if-le v2, v13, :cond_15

    move v4, v11

    goto :goto_b

    :cond_15
    move v4, v6

    :goto_b
    if-ge v2, v12, :cond_16

    move v5, v11

    goto :goto_c

    :cond_16
    move v5, v6

    :goto_c
    and-int/2addr v4, v5

    if-eqz v4, :cond_17

    const/4 v5, 0x7

    goto/16 :goto_15

    :cond_17
    const/16 v4, 0x320

    if-le v2, v4, :cond_1a

    if-le v3, v13, :cond_18

    move v5, v11

    goto :goto_d

    :cond_18
    move v5, v6

    :goto_d
    if-ge v3, v12, :cond_19

    move v14, v11

    goto :goto_e

    :cond_19
    move v14, v6

    :goto_e
    and-int/2addr v5, v14

    if-eqz v5, :cond_1a

    move v5, v10

    goto :goto_15

    :cond_1a
    if-le v3, v4, :cond_1d

    if-le v2, v13, :cond_1b

    move v4, v11

    goto :goto_f

    :cond_1b
    move v4, v6

    :goto_f
    if-ge v2, v12, :cond_1c

    move v5, v11

    goto :goto_10

    :cond_1c
    move v5, v6

    :goto_10
    and-int/2addr v4, v5

    if-eqz v4, :cond_1d

    move v5, v8

    goto :goto_15

    :cond_1d
    const/16 v4, 0x190

    if-le v2, v4, :cond_1e

    move v5, v11

    goto :goto_11

    :cond_1e
    move v5, v6

    :goto_11
    const/16 v8, 0x258

    if-ge v2, v8, :cond_1f

    move v2, v11

    goto :goto_12

    :cond_1f
    move v2, v6

    :goto_12
    and-int/2addr v2, v5

    if-eqz v2, :cond_22

    if-le v3, v4, :cond_20

    move v2, v11

    goto :goto_13

    :cond_20
    move v2, v6

    :goto_13
    const/16 v4, 0x258

    if-ge v3, v4, :cond_21

    move v3, v11

    goto :goto_14

    :cond_21
    move v3, v6

    :goto_14
    and-int/2addr v2, v3

    if-eqz v2, :cond_22

    move v5, v9

    goto :goto_15

    :cond_22
    move v5, v7

    :goto_15
    if-eq v5, v7, :cond_29

    if-ne v1, v11, :cond_29

    .line 58
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 59
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_16

    :cond_23
    const/16 v2, 0xd

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x2

    .line 60
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    and-int/2addr v5, v14

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 61
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    and-int/2addr v5, v14

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 62
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    and-int/2addr v5, v14

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x8

    .line 63
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v15

    add-int/lit8 v7, p2, 0x9

    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    or-int/2addr v5, v7

    and-int/2addr v5, v14

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xa

    .line 64
    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    if-eq v2, v11, :cond_25

    goto :goto_16

    :cond_25
    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v4, v1, v2

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aget-byte v5, v1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v11

    invoke-static {v4, v5, v6}, Ll0/c0;->a(III)V

    .line 67
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v7, v7, [I

    aput v12, v7, v6

    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    aput v1, v7, v11

    const/4 v1, 0x0

    invoke-static {v4, v5, v7, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_16

    :cond_26
    const/16 v2, 0x12

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 68
    aget-byte v5, v1, v4

    const/4 v7, 0x7

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v11, [I

    .line 69
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    .line 70
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    .line 71
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v11

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    .line 72
    :cond_27
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_16

    :cond_28
    add-int/lit8 v2, p2, 0x2

    .line 73
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    :cond_29
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/jh;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x16

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x83

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
