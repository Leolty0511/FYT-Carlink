.class public Lk0/si;
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
    iput v0, p0, Lk0/si;->c:I

    const/16 v1, 0xa

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

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/si;->d:[[I

    .line 4
    new-instance v0, Lk0/si$a;

    invoke-direct {v0, p0}, Lk0/si$a;-><init>(Lk0/si;)V

    iput-object v0, p0, Lk0/si;->e:Ljava/lang/Runnable;

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
        -0x1
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
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
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

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/16 v2, 0x405

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v0, v1, Lk0/mt;->e:I

    .line 4
    iput v0, v1, Lk0/mt;->f:I

    .line 5
    iput v0, v1, Lk0/mt;->g:I

    .line 6
    iput v0, v1, Lk0/mt;->i:I

    .line 7
    iget-object v1, p0, Lk0/si;->e:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_11

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v2, v7, :cond_f

    const/16 v10, 0x10

    if-eq v2, v10, :cond_e

    const/16 v11, 0x12

    if-eq v2, v11, :cond_b

    const/16 v12, 0x7f

    if-eq v2, v12, :cond_a

    const/16 v13, 0x80

    const/16 v14, 0xa

    if-eq v2, v3, :cond_3

    if-eq v2, v8, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const/16 v2, 0x6d

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 3
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    const/16 v2, 0x78

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 4
    aget-byte v9, v1, v7

    shr-int/2addr v9, v6

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v6, [I

    .line 5
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 6
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x4

    .line 7
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    const/16 v2, 0x3f5

    new-array v3, v6, [I

    and-int/lit8 v4, v1, 0x7f

    aput v4, v3, v5

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eqz v1, :cond_0

    .line 10
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    .line 11
    :cond_0
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_7

    :pswitch_3
    const/16 v2, 0x81

    new-array v8, v6, [I

    add-int/lit8 v10, p2, 0x2

    .line 12
    aget-byte v10, v1, v10

    shr-int/lit8 v3, v10, 0x3

    and-int/2addr v3, v6

    aput v3, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 13
    aget-byte v10, v1, v8

    shr-int/lit8 v9, v10, 0x2

    and-int/2addr v9, v6

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    add-int/lit8 v9, p2, 0x4

    .line 14
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    add-int/lit8 v10, p2, 0x5

    .line 15
    aget-byte v11, v1, v10

    shr-int/2addr v11, v5

    and-int/2addr v11, v6

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v6, [I

    .line 16
    aget-byte v8, v1, v8

    shl-int/2addr v8, v7

    const v11, 0xff00

    and-int/2addr v8, v11

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    const v9, 0xffff

    and-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v6, [I

    .line 17
    aget-byte v8, v1, v10

    shl-int/2addr v8, v7

    and-int/2addr v8, v11

    add-int/lit8 v10, p2, 0x6

    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    or-int/2addr v8, v10

    and-int/2addr v8, v9

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 18
    aget-byte v3, v1, v3

    shl-int/2addr v3, v7

    and-int/2addr v3, v11

    add-int/lit8 v8, p2, 0x8

    aget-byte v10, v1, v8

    and-int/2addr v10, v4

    or-int/2addr v3, v10

    and-int/2addr v3, v9

    aput v3, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 19
    aget-byte v3, v1, v8

    shl-int/2addr v3, v7

    and-int/2addr v3, v11

    add-int/lit8 v6, p2, 0xa

    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    and-int/2addr v1, v9

    aput v1, v2, v5

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_4
    add-int/lit8 v2, p2, 0x4

    .line 20
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    const/16 v1, 0xa00

    invoke-static {v2, v3, v5, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 22
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 23
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    .line 24
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x6

    .line 25
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x7

    .line 26
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x8

    .line 27
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x9

    .line 28
    aget-byte v1, v1, v10

    and-int/2addr v2, v4

    .line 29
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 30
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v5, 0xff

    .line 31
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/lit16 v2, v6, 0xff

    .line 32
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    and-int/lit16 v2, v7, 0xff

    .line 33
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v8, 0xff

    .line 34
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v9, 0xff

    .line 35
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v1, v4

    .line 36
    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 37
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 38
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    add-int/lit8 v8, p2, 0x4

    .line 39
    aget-byte v9, v1, v8

    and-int/2addr v9, v4

    add-int/lit8 v12, p2, 0x5

    .line 40
    aget-byte v15, v1, v12

    and-int/2addr v15, v4

    new-array v7, v6, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v7, v5

    .line 41
    invoke-static {v14, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v7, v5

    const/16 v13, 0xb

    .line 42
    invoke-static {v13, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v13, v6, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v5

    .line 43
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v13, v6, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v13, v5

    .line 44
    invoke-static {v7, v13}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v6

    aput v13, v7, v5

    .line 45
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x14

    new-array v10, v6, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v6

    aput v13, v10, v5

    .line 46
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x13

    new-array v10, v6, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v6

    aput v13, v10, v5

    .line 47
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 48
    invoke-static {v11, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v7, v6, [I

    shr-int/lit8 v10, v3, 0x5

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 49
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v7, v3, 0x4

    and-int/2addr v7, v6

    aput v7, v2, v5

    const/16 v7, 0xc

    .line 50
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v10, v6, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v10, v5

    .line 51
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 52
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    aget-byte v2, v1, v12

    and-int/lit16 v9, v2, 0xff

    .line 54
    aget-byte v2, v1, v8

    and-int/lit16 v15, v2, 0xff

    :cond_4
    and-int/lit16 v2, v9, 0xff

    const/16 v3, 0x11

    const/16 v8, 0x1b

    if-eq v2, v3, :cond_6

    const/16 v3, 0x21

    if-eq v2, v3, :cond_5

    new-array v3, v6, [I

    mul-int/2addr v2, v14

    aput v2, v3, v5

    .line 55
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v6, [I

    const/4 v3, -0x3

    aput v3, v2, v5

    .line 56
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v2, v6, [I

    const/4 v3, -0x2

    aput v3, v2, v5

    .line 57
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 v2, v15, 0xff

    const/16 v3, 0x11

    const/16 v8, 0x1c

    if-eq v2, v3, :cond_8

    const/16 v3, 0x21

    if-eq v2, v3, :cond_7

    new-array v3, v6, [I

    mul-int/2addr v2, v14

    aput v2, v3, v5

    .line 58
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v2, v6, [I

    const/4 v3, -0x3

    aput v3, v2, v5

    .line 59
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v2, v6, [I

    const/4 v3, -0x2

    aput v3, v2, v5

    .line 60
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 v2, p2, 0x6

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_9

    const/16 v3, 0x80

    sub-int/2addr v2, v3

    mul-int/2addr v2, v14

    add-int/lit16 v2, v2, 0x3e8

    .line 62
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto :goto_3

    .line 63
    :cond_9
    invoke-static {v5}, Lu0/d;->A3(I)V

    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 64
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/16 v3, 0x69

    new-array v8, v6, [I

    aput v2, v8, v5

    .line 65
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x403

    new-array v8, v6, [I

    aput v2, v8, v5

    .line 66
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 67
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xc

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    const/16 v2, 0x6a

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 68
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x404

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 69
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 70
    :cond_a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 71
    :cond_b
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    .line 73
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_16

    if-eqz v1, :cond_d

    .line 74
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 75
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_7

    .line 76
    :cond_d
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 77
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v2, v1, v2

    const/16 v3, 0x63

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 79
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 80
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 81
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v7, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 82
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 83
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 84
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 85
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 86
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 88
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 89
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 90
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 91
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 92
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 93
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 94
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    const/4 v3, 0x5

    .line 95
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 96
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 98
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 99
    iput v2, v0, Lk0/si;->c:I

    move v2, v5

    .line 100
    :goto_5
    iget-object v3, v0, Lk0/si;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_13

    .line 101
    iget v7, v0, Lk0/si;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_12

    if-eqz v7, :cond_13

    .line 102
    iput v2, v0, Lk0/si;->b:I

    goto :goto_6

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    :goto_6
    and-int/2addr v1, v4

    if-ne v1, v6, :cond_14

    .line 103
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 104
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_14
    if-nez v1, :cond_16

    .line 105
    iget v1, v0, Lk0/si;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_15

    if-eq v1, v4, :cond_15

    .line 106
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 107
    :cond_15
    iput v4, v0, Lk0/si;->b:I

    :cond_16
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
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
    iget-object v0, p0, Lk0/si;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x85

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

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, p3, :cond_3

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, v2, [I

    aput p4, p1, v3

    const/16 p3, -0x7c

    aput p3, p1, v4

    aput v4, p1, v0

    .line 1
    aget p2, p2, v3

    add-int/2addr p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_8

    .line 2
    array-length p1, p2

    if-lez p1, :cond_8

    .line 3
    aget p1, p2, v3

    if-ne p1, v4, :cond_2

    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v2, [I

    aput p4, p1, v3

    const/16 p3, 0xff

    aput p3, p1, v4

    aput v4, p1, v0

    .line 7
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v2, [I

    aput p4, p1, v3

    const/16 p3, 0x89

    aput p3, p1, v4

    aput v4, p1, v0

    .line 9
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v2, [I

    aput p4, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v4, p1, v0

    .line 11
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :cond_6
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v2, [I

    aput p4, p1, v3

    const/16 p3, 0x88

    aput p3, p1, v4

    aput v4, p1, v0

    .line 13
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v0, p1, v0

    .line 14
    aget p2, p2, v3

    aput p2, p1, v1

    aput v4, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_8
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x7c
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7c
        0x1
        0x1
    .end array-data
.end method
