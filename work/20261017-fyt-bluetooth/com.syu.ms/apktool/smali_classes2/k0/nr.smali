.class public Lk0/nr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/nr;->c:I

    const/16 v1, 0x11

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

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/nr;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/nr;->e:Z

    .line 5
    new-instance v1, Lk0/nr$a;

    invoke-direct {v1, p0}, Lk0/nr$a;-><init>(Lk0/nr;)V

    iput-object v1, p0, Lk0/nr;->f:Ljava/lang/Runnable;

    .line 6
    iput v0, p0, Lk0/nr;->g:I

    .line 7
    new-instance v0, Lk0/nr$b;

    invoke-direct {v0, p0}, Lk0/nr$b;-><init>(Lk0/nr;)V

    iput-object v0, p0, Lk0/nr;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/nr$c;

    invoke-direct {v0, p0}, Lk0/nr$c;-><init>(Lk0/nr;)V

    iput-object v0, p0, Lk0/nr;->i:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x52
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x53
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x30
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x31
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x32
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x33
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x34
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x35
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x36
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x37
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x41
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x42
        0x8
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nr;->h:Ljava/lang/Runnable;

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

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iget-object v0, p0, Lk0/nr;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/16 v4, 0x52

    const/16 v6, 0xc

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x3f

    const/16 v15, 0x10

    if-eq v2, v3, :cond_19

    if-eq v2, v4, :cond_18

    const/16 v3, 0x60

    if-eq v2, v3, :cond_17

    const/16 v3, 0x7d

    const/16 v4, 0xb

    const/16 v8, 0xa

    const/4 v7, 0x2

    if-eq v2, v3, :cond_10

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_f

    const/16 v3, 0x28

    if-eq v2, v3, :cond_d

    const/16 v3, 0x29

    if-eq v2, v3, :cond_c

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    add-int/lit8 v16, p2, 0x5

    .line 4
    aget-byte v5, v1, v16

    and-int/2addr v5, v12

    new-array v9, v14, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v13

    .line 5
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    new-array v8, v14, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v14

    aput v9, v8, v13

    .line 6
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    new-array v4, v14, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v14

    aput v8, v4, v13

    .line 7
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v6, v14, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v14

    aput v8, v6, v13

    .line 8
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x34

    new-array v6, v14, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v14

    aput v8, v6, v13

    .line 9
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v4, v14, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v14

    aput v6, v4, v13

    .line 10
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v6, v14, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v14

    aput v2, v6, v13

    .line 11
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    if-eq v2, v14, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v11, :cond_2

    if-eq v2, v10, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move v2, v13

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    move v3, v13

    move v4, v3

    move v2, v14

    goto :goto_1

    :cond_1
    move v3, v13

    move v2, v14

    move v4, v2

    goto :goto_1

    :cond_2
    move v2, v13

    move v3, v2

    move v4, v14

    goto :goto_1

    :cond_3
    move v2, v13

    move v3, v14

    goto :goto_0

    :cond_4
    move v2, v13

    move v4, v2

    move v3, v14

    :goto_1
    new-array v6, v14, [I

    aput v2, v6, v13

    const/16 v2, 0x12

    .line 12
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v14, [I

    aput v3, v6, v13

    .line 13
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v14, [I

    aput v4, v3, v13

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x4

    .line 15
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1b

    if-eqz v5, :cond_7

    if-eq v5, v12, :cond_6

    if-lt v5, v14, :cond_5

    const/16 v2, 0x1e

    if-gt v5, v2, :cond_5

    new-array v2, v14, [I

    const/4 v3, 0x5

    mul-int/2addr v5, v3

    add-int/lit16 v5, v5, 0xaa

    aput v5, v2, v13

    .line 16
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_5
    new-array v2, v14, [I

    const/4 v3, -0x1

    aput v3, v2, v13

    .line 17
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_6
    new-array v2, v14, [I

    const/4 v3, -0x3

    aput v3, v2, v13

    .line 18
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_7
    new-array v2, v14, [I

    const/4 v3, -0x2

    aput v3, v2, v13

    .line 19
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    const-string v2, "persist.syu.reversefrontdoor"

    .line 21
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 22
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 23
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 24
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 25
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 26
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 27
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v14

    aput v1, v2, v13

    const/4 v1, 0x5

    .line 28
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x3

    .line 30
    aget-byte v5, v1, v4

    and-int/2addr v5, v12

    add-int/lit8 v6, p2, 0x4

    .line 31
    aget-byte v7, v1, v6

    and-int/2addr v7, v12

    const/4 v8, 0x5

    add-int/lit8 v8, p2, 0x5

    .line 32
    aget-byte v9, v1, v8

    and-int/2addr v9, v12

    if-nez v3, :cond_9

    if-nez v5, :cond_9

    if-nez v7, :cond_9

    if-nez v9, :cond_9

    .line 33
    invoke-static {v13}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 34
    :cond_9
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_a

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_a

    sget v11, Ll0/c0;->i:I

    if-ne v11, v7, :cond_a

    sget v11, Ll0/c0;->j:I

    if-eq v11, v9, :cond_b

    .line 35
    :cond_a
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_b

    .line 36
    invoke-static {v14}, Lu0/d;->C2(I)V

    .line 37
    sput v10, Ll0/c0;->k:I

    .line 38
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 39
    :cond_b
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 40
    sput v5, Ll0/c0;->h:I

    .line 41
    sput v7, Ll0/c0;->i:I

    .line 42
    sput v9, Ll0/c0;->j:I

    .line 43
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 44
    aget-byte v2, v1, v4

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 45
    aget-byte v2, v1, v6

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 46
    aget-byte v1, v1, v8

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 49
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->u1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 50
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->u1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    .line 51
    :cond_c
    iget-boolean v2, v0, Lk0/nr;->e:Z

    if-nez v2, :cond_2d

    add-int/lit8 v2, p2, 0x3

    .line 52
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    const/16 v3, 0x21c

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_a

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 53
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    and-int/lit8 v2, v1, 0x7f

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e

    mul-int/2addr v2, v8

    rsub-int v1, v2, 0x3e8

    goto :goto_4

    :cond_e
    mul-int/2addr v2, v8

    add-int/lit16 v1, v2, 0x3e8

    .line 54
    :goto_4
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_a

    .line 55
    :cond_f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    const/16 v3, 0x419

    const/4 v5, 0x0

    if-eq v2, v14, :cond_15

    const/4 v9, 0x6

    if-eq v2, v9, :cond_14

    const/16 v4, 0x8

    if-eq v2, v4, :cond_13

    if-eq v2, v11, :cond_12

    if-eq v2, v10, :cond_11

    goto/16 :goto_a

    :cond_11
    add-int/lit8 v2, p2, 0x7

    .line 57
    aget-byte v2, v1, v2

    shl-int/2addr v2, v4

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    or-int/2addr v1, v2

    div-int/2addr v1, v8

    .line 58
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    const/4 v6, 0x5

    aput v6, v4, v13

    aput v1, v4, v14

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_12
    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v4, v14, [I

    aput v1, v4, v13

    .line 60
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 61
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    aput v14, v4, v13

    aput v1, v4, v14

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->i(IIZI)V

    .line 63
    iput-boolean v14, v0, Lk0/nr;->e:Z

    goto/16 :goto_a

    .line 64
    :cond_14
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v7, [I

    aput v6, v4, v13

    add-int/lit8 v6, p2, 0x3

    aget-byte v8, v1, v6

    const/4 v9, 0x6

    shr-int/2addr v8, v9

    and-int/2addr v8, v14

    aput v8, v4, v14

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v7, [I

    aput v11, v4, v13

    .line 65
    aget-byte v6, v1, v6

    shr-int/2addr v6, v13

    and-int/2addr v6, v14

    aput v6, v4, v14

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v7, [I

    aput v10, v4, v13

    add-int/lit8 v6, p2, 0x4

    .line 66
    aget-byte v1, v1, v6

    shr-int/2addr v1, v13

    and-int/lit8 v1, v1, 0xf

    aput v1, v4, v14

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_15
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 67
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 v2, p2, 0x3

    .line 68
    aget-byte v6, v1, v2

    shr-int/2addr v6, v11

    and-int/2addr v6, v14

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v14

    invoke-static {v6, v2, v13}, Ll0/c0;->b(III)V

    goto :goto_5

    :cond_16
    add-int/lit8 v2, p2, 0x3

    .line 69
    aget-byte v6, v1, v2

    shr-int/2addr v6, v11

    and-int/2addr v6, v14

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v14

    invoke-static {v6, v2, v13}, Ll0/c0;->a(III)V

    .line 70
    :goto_5
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v6, v7, [I

    aput v4, v6, v13

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v6, v14

    invoke-static {v2, v3, v6, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_17
    const/16 v2, 0x72

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x2

    .line 71
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 72
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x4

    .line 73
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x6

    .line 74
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xa

    .line 75
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xd

    .line 76
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xf

    .line 77
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x10

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x11

    .line 78
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    const/16 v5, 0x12

    add-int/lit8 v5, p2, 0x12

    aget-byte v1, v1, v5

    and-int/2addr v1, v12

    or-int/2addr v1, v4

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_18
    const/16 v2, 0x62

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x2

    .line 79
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 80
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x4

    .line 81
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x5

    .line 82
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x6

    .line 83
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x7

    .line 84
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x8

    .line 85
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x9

    .line 86
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-eq v2, v15, :cond_1b

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1a

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_a

    :pswitch_4
    const/16 v2, 0x71

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 88
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_5
    const/16 v2, 0x70

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 89
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_6
    const/16 v2, 0x6f

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 90
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_7
    const/16 v2, 0x6e

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 91
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_8
    const/16 v2, 0x6d

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 92
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :pswitch_9
    const/16 v2, 0x6c

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 93
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_1a
    const/16 v2, 0x6b

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 94
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_1b
    const/16 v2, 0x6a

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 95
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 97
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 98
    iput v2, v0, Lk0/nr;->c:I

    move v2, v13

    .line 99
    :goto_6
    iget-object v3, v0, Lk0/nr;->d:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_1e

    .line 100
    iget v5, v0, Lk0/nr;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v13

    if-ne v5, v7, :cond_1d

    if-eqz v5, :cond_1e

    .line 101
    iput v2, v0, Lk0/nr;->b:I

    goto :goto_7

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 102
    :cond_1e
    :goto_7
    iget v5, v0, Lk0/nr;->c:I

    const/16 v7, 0x1a

    const/4 v8, 0x6

    if-eq v5, v8, :cond_2b

    const/16 v8, 0x8

    if-eq v5, v8, :cond_29

    const/16 v6, 0x41

    if-eq v5, v6, :cond_27

    const/16 v6, 0x42

    if-eq v5, v6, :cond_25

    if-eq v5, v4, :cond_23

    const/16 v4, 0x53

    if-eq v5, v4, :cond_21

    and-int/2addr v1, v12

    if-ne v1, v14, :cond_1f

    .line 103
    array-length v1, v3

    if-ge v2, v1, :cond_2d

    .line 104
    aget-object v1, v3, v2

    aget v1, v1, v14

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_1f
    if-nez v1, :cond_2d

    .line 105
    iget v1, v0, Lk0/nr;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_20

    if-eq v1, v12, :cond_20

    .line 106
    aget-object v1, v3, v1

    aget v1, v1, v14

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 107
    :cond_20
    iput v12, v0, Lk0/nr;->b:I

    goto/16 :goto_a

    :cond_21
    and-int/2addr v1, v12

    if-ne v1, v14, :cond_2d

    .line 108
    sget v1, Lh0/c;->E:I

    if-eq v1, v11, :cond_22

    if-eq v1, v10, :cond_22

    const/4 v2, 0x5

    if-eq v1, v2, :cond_22

    .line 109
    invoke-static {v10, v13}, Ll0/b0;->l0(II)V

    .line 110
    invoke-static {v10, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 111
    :cond_22
    invoke-static {v7, v13}, Ll0/b0;->l0(II)V

    .line 112
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_23
    and-int/2addr v1, v12

    if-ne v1, v14, :cond_2d

    .line 113
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_24

    .line 114
    invoke-static {v11, v13}, Ll0/b0;->l0(II)V

    .line 115
    invoke-static {v11, v14}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_24
    const/16 v1, 0x12

    .line 116
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 117
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_25
    move v2, v13

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_26

    const/16 v3, 0x8

    .line 118
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_26
    const/16 v3, 0x8

    .line 119
    invoke-static {v3, v14}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_27
    move v2, v13

    :goto_9
    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x7

    if-ge v2, v3, :cond_28

    .line 120
    invoke-static {v4, v13}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 121
    :cond_28
    invoke-static {v4, v14}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_29
    and-int/2addr v1, v12

    if-ne v1, v14, :cond_2d

    .line 122
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_2a

    .line 123
    invoke-static {v6, v13}, Ll0/b0;->l0(II)V

    .line 124
    invoke-static {v6, v14}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_2a
    const/16 v1, 0x12

    .line 125
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 126
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_2b
    and-int/2addr v1, v12

    if-ne v1, v14, :cond_2d

    .line 127
    sget v1, Lh0/c;->E:I

    if-eq v1, v11, :cond_2c

    if-eq v1, v10, :cond_2c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2c

    .line 128
    invoke-static {v6, v13}, Ll0/b0;->l0(II)V

    .line 129
    invoke-static {v6, v14}, Ll0/b0;->l0(II)V

    goto :goto_a

    .line 130
    :cond_2c
    invoke-static {v7, v13}, Ll0/b0;->l0(II)V

    .line 131
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    :cond_2d
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nr;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/nr;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/nr;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7b

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x80

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
