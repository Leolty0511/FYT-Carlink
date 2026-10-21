.class public Lk0/ho;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ho;->c:I

    const/16 v1, 0xd

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

    iput-object v1, p0, Lk0/ho;->d:[[I

    new-array v1, v2, [I

    .line 4
    fill-array-data v1, :array_d

    iput-object v1, p0, Lk0/ho;->e:[I

    .line 5
    iput v0, p0, Lk0/ho;->f:I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x17
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x18
        0x6
    .end array-data

    :array_8
    .array-data 4
        0x19
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x86
        0x3f
    .end array-data

    :array_d
    .array-data 4
        0x22
        0xcc
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

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->l:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/16 v5, 0xff

    if-eq v2, v3, :cond_16

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_15

    const/16 v3, 0x20

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v3, :cond_f

    const/16 v3, 0x24

    if-eq v2, v3, :cond_d

    const/16 v3, 0x26

    if-eq v2, v3, :cond_c

    const/16 v3, 0x29

    if-eq v2, v3, :cond_a

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    const/16 v3, 0x54

    if-eq v2, v3, :cond_8

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    const v3, 0xff00

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/16 v2, 0x74

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x2

    .line 2
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v3

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x4

    .line 3
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v3

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x6

    .line 4
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    aput v1, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    const/16 v2, 0x71

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x2

    .line 5
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v3

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x4

    .line 6
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v3

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x6

    .line 7
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    aput v1, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 v2, 0x6e

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x2

    .line 8
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v3

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x4

    .line 9
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v6, v3

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    or-int/2addr v6, v8

    aput v6, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v12, [I

    add-int/lit8 v6, p2, 0x6

    .line 10
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    and-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    aput v1, v4, v11

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v9, p2, 0x3

    .line 12
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v13, p2, 0x4

    .line 13
    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    add-int/lit8 v14, p2, 0x6

    .line 14
    aget-byte v14, v1, v14

    and-int/2addr v14, v5

    add-int/lit8 v15, p2, 0x7

    .line 15
    aget-byte v15, v1, v15

    and-int/2addr v15, v5

    const-string v7, "persist.fyt.reversetemp"

    .line 16
    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 17
    aget-byte v3, v1, v9

    and-int/2addr v3, v5

    .line 18
    aget-byte v1, v1, v2

    and-int/lit16 v10, v1, 0xff

    :cond_1
    and-int/lit16 v1, v3, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/16 v7, 0x50

    const/16 v9, 0x1b

    const/16 v6, 0x10

    if-ne v1, v6, :cond_2

    new-array v1, v12, [I

    aput v3, v1, v11

    .line 19
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v1, v7, :cond_3

    new-array v1, v12, [I

    aput v2, v1, v11

    .line 20
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v4, v12, [I

    aput v1, v4, v11

    .line 21
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v1, v10, 0xff

    const/16 v4, 0x1c

    if-ne v1, v6, :cond_4

    new-array v1, v12, [I

    aput v3, v1, v11

    .line 22
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    new-array v1, v12, [I

    aput v2, v1, v11

    .line 23
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v12, [I

    aput v1, v2, v11

    .line 24
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x15

    new-array v2, v12, [I

    and-int/lit8 v3, v13, 0xf

    aput v3, v2, v11

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4d

    new-array v2, v12, [I

    shr-int/lit8 v3, v13, 0x4

    const/16 v4, 0xf

    and-int/2addr v3, v4

    aput v3, v2, v11

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    const/16 v2, 0x13

    packed-switch v3, :pswitch_data_1

    const/16 v4, 0x12

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 27
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v11, v2, v11

    .line 29
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_3
    new-array v3, v12, [I

    aput v12, v3, v11

    const/16 v4, 0x12

    .line 30
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v12, v3, v11

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v12, v2, v11

    .line 32
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_4
    const/16 v4, 0x12

    new-array v3, v12, [I

    aput v12, v3, v11

    .line 33
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v11, v2, v11

    .line 35
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_5
    const/16 v4, 0x12

    new-array v3, v12, [I

    aput v12, v3, v11

    .line 36
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v12, v3, v11

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v11, v2, v11

    .line 38
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :pswitch_6
    const/16 v4, 0x12

    new-array v3, v12, [I

    aput v12, v3, v11

    .line 39
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v12, v2, v11

    .line 41
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :pswitch_7
    const/16 v4, 0x12

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 42
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v12, v2, v11

    .line 44
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :pswitch_8
    const/16 v4, 0x12

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 45
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v12, v3, v11

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v12, v2, v11

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :pswitch_9
    const/16 v4, 0x12

    new-array v3, v12, [I

    aput v11, v3, v11

    .line 48
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v12, [I

    aput v12, v3, v11

    .line 49
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    aput v11, v2, v11

    .line 50
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0xd

    new-array v2, v12, [I

    shr-int/lit8 v3, v14, 0x0

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v12, [I

    shr-int/lit8 v3, v14, 0x1

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v12, [I

    shr-int/lit8 v3, v14, 0x2

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 53
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v12, [I

    shr-int/lit8 v3, v14, 0x3

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v12, [I

    shr-int/lit8 v3, v14, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 55
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    shr-int/lit8 v2, v14, 0x6

    and-int/2addr v2, v12

    aput v2, v1, v11

    .line 56
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    const/4 v2, 0x7

    shr-int/lit8 v2, v14, 0x7

    and-int/2addr v2, v12

    aput v2, v1, v11

    const/16 v2, 0xf

    .line 57
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    if-eq v15, v5, :cond_7

    if-nez v15, :cond_6

    goto :goto_3

    :cond_6
    mul-int/lit8 v15, v15, 0xa

    add-int/lit16 v15, v15, 0x258

    .line 58
    invoke-static {v15}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    .line 59
    :cond_7
    :goto_3
    invoke-static {v11}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_8
    const/16 v2, 0x77

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x2

    .line 60
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 61
    :cond_9
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a
    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x168

    if-eqz v3, :cond_b

    add-int/lit8 v3, p2, 0x2

    .line 63
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    const/16 v2, 0xf

    and-int/2addr v1, v2

    invoke-static {v3, v1, v11, v4}, Lk0/qt;->j(IIII)V

    goto/16 :goto_7

    .line 64
    :cond_b
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    const/16 v3, 0xf

    and-int/2addr v1, v3

    .line 65
    invoke-static {v2, v1, v12, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_c
    const/16 v2, 0x62

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 66
    aget-byte v6, v1, v5

    shr-int/2addr v6, v11

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v12, [I

    .line 67
    aget-byte v6, v1, v5

    shr-int/2addr v6, v12

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v12, [I

    .line 68
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v12, [I

    .line 69
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v12, [I

    .line 70
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    const/4 v7, 0x7

    and-int/2addr v6, v7

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v12, [I

    .line 71
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x3

    .line 72
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v12, [I

    .line 73
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v12, [I

    .line 74
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v12

    aput v6, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v12, [I

    .line 75
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v12, [I

    .line 76
    aget-byte v1, v1, v5

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v9

    aput v1, v3, v11

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 77
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    const-string v2, "persist.syu.reversefrontdoor"

    .line 78
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 79
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 80
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 81
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 82
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 83
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v12

    aput v3, v2, v11

    .line 84
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v2, v11

    .line 85
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 87
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 88
    iput v2, v0, Lk0/ho;->c:I

    move v2, v11

    .line 89
    :goto_5
    iget-object v3, v0, Lk0/ho;->d:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_11

    .line 90
    iget v6, v0, Lk0/ho;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v11

    if-ne v6, v7, :cond_10

    if-eqz v6, :cond_11

    .line 91
    iput v2, v0, Lk0/ho;->b:I

    goto :goto_6

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 92
    :cond_11
    :goto_6
    iget v6, v0, Lk0/ho;->c:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_12

    and-int/2addr v1, v5

    if-ne v1, v12, :cond_17

    .line 93
    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 94
    aget-object v1, v3, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 95
    iget-object v1, v0, Lk0/ho;->d:[[I

    aget-object v1, v1, v2

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_12
    and-int/2addr v1, v5

    if-ne v1, v12, :cond_17

    .line 96
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_14

    if-eq v1, v8, :cond_13

    if-eq v1, v4, :cond_14

    .line 97
    invoke-static {v10, v11}, Ll0/b0;->l0(II)V

    .line 98
    invoke-static {v10, v12}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_13
    const/16 v1, 0x12

    .line 99
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 100
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_14
    const/16 v1, 0x1a

    .line 101
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 102
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 104
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 106
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_7

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 107
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 108
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 109
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 110
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_17
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
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
    .locals 6

    const/4 p3, 0x6

    const/4 p4, 0x5

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    aput v0, p1, v5

    const/16 p3, 0x83

    aput p3, p1, v3

    aput v4, p1, v4

    .line 1
    aget p3, p2, v5

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    aput v0, p1, v5

    const/16 p3, 0x85

    aput p3, p1, v3

    aput v2, p1, v4

    .line 2
    aget p3, p2, v5

    aput p3, p1, v2

    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p4, [I

    aput v0, p1, v5

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v4, p1, v4

    .line 3
    aget p2, p2, v5

    aput p2, p1, v2

    aput v5, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [I

    aput v0, p1, v5

    const/16 v0, 0x33

    aput v0, p1, v3

    aput v1, p1, v4

    .line 4
    aget p2, p2, v5

    aput p2, p1, v2

    iget-object p2, p0, Lk0/ho;->e:[I

    iget v0, p0, Lk0/ho;->f:I

    rem-int/2addr v0, v4

    aget p2, p2, v0

    aput p2, p1, v1

    aput v5, p1, p4

    aput v5, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    iget p1, p0, Lk0/ho;->f:I

    add-int/2addr p1, v3

    iput p1, p0, Lk0/ho;->f:I

    .line 6
    rem-int/2addr p1, v4

    iput p1, p0, Lk0/ho;->f:I

    :goto_0
    return-void
.end method
