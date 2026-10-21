.class public Lk0/yq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/yq;->c:I

    const/16 v1, 0x10

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

    const/16 v2, 0xf

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/yq;->d:[[I

    .line 4
    new-instance v0, Lk0/yq$a;

    invoke-direct {v0, p0}, Lk0/yq$a;-><init>(Lk0/yq;)V

    iput-object v0, p0, Lk0/yq;->e:Ljava/lang/Runnable;

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
        0x5
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x19
    .end array-data

    :array_f
    .array-data 4
        0x1a
        0x3f
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
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    sget v1, Lk0/nt;->a:I

    const v3, 0x8201c8

    if-eq v1, v3, :cond_1

    const v0, 0xe801c7

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lk0/yq;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_1
    iput v2, v0, Lk0/mt;->i:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_27

    const/16 v3, 0x29

    if-eq v2, v3, :cond_26

    const/16 v11, 0x67

    const/16 v12, 0x66

    if-eq v2, v12, :cond_24

    if-eq v2, v11, :cond_22

    const/16 v11, 0x7f

    if-eq v2, v11, :cond_21

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v6, p2, 0x3

    .line 3
    aget-byte v7, v1, v6

    and-int/2addr v7, v8

    add-int/lit8 v11, p2, 0x4

    .line 4
    aget-byte v12, v1, v11

    and-int/2addr v12, v8

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v13, v1, v4

    and-int/2addr v8, v13

    if-nez v3, :cond_0

    if-nez v7, :cond_0

    if-nez v12, :cond_0

    if-nez v8, :cond_0

    .line 6
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_1

    sget v9, Ll0/c0;->h:I

    if-ne v9, v7, :cond_1

    sget v9, Ll0/c0;->i:I

    if-ne v9, v12, :cond_1

    sget v9, Ll0/c0;->j:I

    if-eq v9, v8, :cond_2

    .line 8
    :cond_1
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_2

    .line 9
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 10
    sput v5, Ll0/c0;->k:I

    .line 11
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 13
    sput v7, Ll0/c0;->h:I

    .line 14
    sput v12, Ll0/c0;->i:I

    .line 15
    sput v8, Ll0/c0;->j:I

    .line 16
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 17
    aget-byte v2, v1, v6

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 18
    aget-byte v2, v1, v11

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 19
    aget-byte v1, v1, v4

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 23
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v4, p2, 0x3

    .line 25
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    add-int/lit8 v11, p2, 0x4

    .line 26
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    add-int/lit8 v12, p2, 0x5

    .line 27
    aget-byte v13, v1, v12

    and-int/2addr v13, v8

    add-int/lit8 v14, p2, 0x6

    .line 28
    aget-byte v15, v1, v14

    and-int/2addr v15, v8

    const/16 v3, 0x3f

    new-array v5, v10, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v9

    .line 29
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v5, v10, [I

    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v9

    .line 30
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v5, v10, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v9

    .line 31
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v5, v10, [I

    shr-int/lit8 v16, v2, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v9

    .line 32
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v5, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 33
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    and-int/2addr v4, v8

    aput v4, v3, v9

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 35
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v11, 0xff

    if-eqz v2, :cond_7

    if-eq v2, v10, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    move v2, v9

    move v3, v2

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_3
    move v3, v9

    move v4, v3

    move v2, v10

    goto :goto_2

    :cond_4
    move v3, v9

    move v2, v10

    move v4, v2

    goto :goto_2

    :cond_5
    move v2, v9

    move v3, v2

    move v4, v10

    goto :goto_2

    :cond_6
    move v2, v9

    move v3, v10

    goto :goto_1

    :cond_7
    move v2, v9

    move v4, v2

    move v3, v10

    :goto_2
    const/16 v5, 0x12

    new-array v6, v10, [I

    aput v2, v6, v9

    .line 36
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v10, [I

    aput v3, v5, v9

    .line 37
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 39
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 40
    aget-byte v2, v1, v14

    and-int/lit16 v13, v2, 0xff

    .line 41
    aget-byte v1, v1, v12

    and-int/lit16 v15, v1, 0xff

    .line 42
    :cond_8
    sget v1, Lk0/nt;->a:I

    const/4 v2, -0x1

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0x9

    const/16 v6, 0x1c

    const/16 v11, 0x1b

    const v12, 0x8201c8

    if-eq v1, v12, :cond_16

    const v12, 0xd201c7

    const/16 v14, 0xe

    if-eq v1, v12, :cond_f

    if-eq v13, v10, :cond_b

    if-eq v13, v5, :cond_a

    if-le v13, v10, :cond_9

    if-ge v13, v5, :cond_9

    new-array v1, v10, [I

    and-int/lit16 v12, v13, 0xff

    mul-int/2addr v12, v7

    add-int/2addr v12, v14

    aput v12, v1, v9

    .line 43
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 44
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v1, v10, [I

    aput v3, v1, v9

    .line 45
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v1, v10, [I

    aput v4, v1, v9

    .line 46
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    if-eq v15, v10, :cond_e

    if-eq v15, v5, :cond_d

    if-le v15, v10, :cond_c

    if-ge v15, v5, :cond_c

    new-array v1, v10, [I

    and-int/lit16 v2, v15, 0xff

    mul-int/2addr v2, v7

    add-int/2addr v2, v14

    aput v2, v1, v9

    .line 47
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_c
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 48
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    new-array v1, v10, [I

    aput v3, v1, v9

    .line 49
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_e
    new-array v1, v10, [I

    aput v4, v1, v9

    .line 50
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_f
    const/16 v1, 0xf

    if-eqz v13, :cond_12

    if-eq v13, v1, :cond_11

    if-lez v13, :cond_10

    if-ge v13, v14, :cond_10

    new-array v5, v10, [I

    add-int/lit8 v7, v13, 0x11

    aput v7, v5, v9

    .line 51
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v5, v10, [I

    aput v2, v5, v9

    .line 52
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v5, v10, [I

    aput v3, v5, v9

    .line 53
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    new-array v5, v10, [I

    aput v4, v5, v9

    .line 54
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-eqz v15, :cond_15

    if-eq v15, v1, :cond_14

    if-lez v13, :cond_13

    if-ge v13, v14, :cond_13

    new-array v1, v10, [I

    add-int/lit8 v15, v15, 0x11

    aput v15, v1, v9

    .line 55
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_13
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 56
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_14
    new-array v1, v10, [I

    aput v3, v1, v9

    .line 57
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_15
    new-array v1, v10, [I

    aput v4, v1, v9

    .line 58
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_16
    if-eq v13, v10, :cond_19

    if-eq v13, v5, :cond_18

    if-le v13, v10, :cond_17

    if-ge v13, v5, :cond_17

    new-array v1, v10, [I

    aput v13, v1, v9

    .line 59
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 60
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_18
    new-array v1, v10, [I

    aput v3, v1, v9

    .line 61
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_19
    new-array v1, v10, [I

    aput v4, v1, v9

    .line 62
    invoke-static {v11, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eq v15, v10, :cond_1c

    if-eq v15, v5, :cond_1b

    if-le v13, v10, :cond_1a

    if-ge v13, v5, :cond_1a

    new-array v1, v10, [I

    aput v15, v1, v9

    .line 63
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1a
    new-array v1, v10, [I

    aput v2, v1, v9

    .line 64
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1b
    new-array v1, v10, [I

    aput v3, v1, v9

    .line 65
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1c
    new-array v1, v10, [I

    aput v4, v1, v9

    .line 66
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 68
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 69
    iput v2, v0, Lk0/yq;->c:I

    move v2, v9

    .line 70
    :goto_6
    iget-object v3, v0, Lk0/yq;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 71
    iget v4, v0, Lk0/yq;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_1d

    if-eqz v4, :cond_1e

    .line 72
    iput v2, v0, Lk0/yq;->b:I

    goto :goto_7

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    :goto_7
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_1f

    .line 73
    array-length v1, v3

    if-ge v2, v1, :cond_2a

    .line 74
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_1f
    if-nez v1, :cond_2a

    .line 75
    iget v1, v0, Lk0/yq;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_20

    if-eq v1, v8, :cond_20

    .line 76
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 77
    :cond_20
    iput v8, v0, Lk0/yq;->b:I

    goto/16 :goto_9

    .line 78
    :cond_21
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_22
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 79
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_23

    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_9

    :cond_23
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_9

    .line 82
    :cond_24
    sget v2, Lk0/nt;->a:I

    const v3, 0x8201c8

    if-eq v2, v3, :cond_25

    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 83
    aget-byte v13, v1, v5

    shr-int/2addr v13, v4

    and-int/lit8 v13, v13, 0x7

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    .line 84
    aget-byte v5, v1, v5

    const/4 v13, 0x4

    shr-int/2addr v5, v13

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 85
    aget-byte v14, v1, v5

    shr-int/lit8 v13, v14, 0x4

    and-int/2addr v13, v10

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    .line 86
    aget-byte v13, v1, v5

    shr-int/lit8 v6, v13, 0x3

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    .line 87
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    .line 88
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    .line 89
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x4

    .line 90
    aget-byte v5, v1, v3

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v2, v9

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 91
    aget-byte v3, v1, v3

    shr-int/2addr v3, v9

    and-int/2addr v3, v10

    aput v3, v2, v9

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 92
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_25
    const/16 v2, 0x6c

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 93
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 94
    aget-byte v11, v1, v5

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    .line 95
    aget-byte v11, v1, v5

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    .line 96
    aget-byte v11, v1, v5

    shr-int/lit8 v4, v11, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    .line 97
    aget-byte v4, v1, v5

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    .line 98
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    .line 99
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 100
    aget-byte v4, v1, v5

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 101
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 102
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 103
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 104
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_26
    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x1500

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    const-string v5, "persist.syu.reversefrontdoor"

    .line 107
    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_28

    new-array v5, v10, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v10

    aput v8, v5, v9

    .line 108
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v10

    aput v8, v5, v9

    .line 109
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_28
    new-array v5, v10, [I

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v10

    aput v8, v5, v9

    .line 110
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v10

    aput v8, v5, v9

    .line 111
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v5, v10, [I

    shr-int/lit8 v7, v3, 0x4

    and-int/2addr v7, v10

    aput v7, v5, v9

    .line 112
    invoke-static {v6, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v7, v3, 0x5

    and-int/2addr v7, v10

    aput v7, v5, v9

    const/4 v7, 0x4

    .line 113
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v10

    aput v3, v5, v9

    .line 114
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 115
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    if-ne v1, v10, :cond_29

    .line 116
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto :goto_9

    .line 117
    :cond_29
    invoke-static {v9}, Lk0/qt;->a(I)V

    :cond_2a
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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

    .line 3
    iget-object v0, p0, Lk0/yq;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x78

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

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 1
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xe0

    aput v0, p1, v4

    aput v3, p1, v3

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x90

    aput v0, p1, v4

    aput v3, p1, v3

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    array-length p1, p2

    if-lez p1, :cond_3

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x88

    aput v0, p1, v4

    aput v3, p1, v3

    .line 6
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void
.end method
