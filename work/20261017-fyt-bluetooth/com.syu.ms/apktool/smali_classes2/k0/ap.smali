.class public Lk0/ap;
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


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ap;->c:I

    const/16 v1, 0xb

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    iput-object v2, p0, Lk0/ap;->d:[[I

    .line 4
    iput v0, p0, Lk0/ap;->f:I

    const/16 v2, 0xe

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_b

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    aput-object v0, v2, v9

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    aput-object v0, v2, v10

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    aput-object v0, v2, v11

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    aput-object v0, v2, v12

    new-array v0, v3, [I

    fill-array-data v0, :array_15

    aput-object v0, v2, v13

    new-array v0, v3, [I

    fill-array-data v0, :array_16

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_17

    const/16 v1, 0xc

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_18

    const/16 v1, 0xd

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/ap;->g:[[I

    .line 6
    new-instance v0, Lk0/ap$a;

    invoke-direct {v0, p0}, Lk0/ap$a;-><init>(Lk0/ap;)V

    iput-object v0, p0, Lk0/ap;->h:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x5
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x10
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0x81
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x82
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x18
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x5
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x37
    .end array-data

    :array_12
    .array-data 4
        0x10
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0x11
        0x22
    .end array-data

    :array_14
    .array-data 4
        0x12
        0x23
    .end array-data

    :array_15
    .array-data 4
        0x13
        0x20
    .end array-data

    :array_16
    .array-data 4
        0x14
        0x21
    .end array-data

    :array_17
    .array-data 4
        0x81
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x82
        -0x1
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
    iget-object v0, p0, Lk0/ap;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x10

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v3, :cond_2a

    const/16 v10, 0x12

    const/16 v11, 0xff

    if-eq v2, v10, :cond_26

    const/16 v10, 0x19

    const/16 v12, 0xf

    if-eq v2, v10, :cond_25

    const/16 v10, 0x24

    if-eq v2, v10, :cond_24

    const/16 v10, 0x28

    const/16 v13, 0xa

    if-eq v2, v10, :cond_20

    const/16 v10, 0x30

    if-eq v2, v10, :cond_1f

    const/16 v10, 0x46

    if-eq v2, v10, :cond_1e

    const/16 v10, 0x50

    if-eq v2, v10, :cond_19

    const/16 v10, 0x40

    const v14, 0xff00

    if-eq v2, v10, :cond_18

    const/16 v10, 0x41

    if-eq v2, v10, :cond_17

    const/16 v10, 0x1e

    const/16 v15, 0x82

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_0
    const/16 v2, 0x98

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 6
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v9, [I

    .line 7
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v9, [I

    .line 8
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 9
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 10
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 11
    aget-byte v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 12
    aget-byte v4, v1, v4

    const/high16 v5, 0xf0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_1
    const/16 v2, 0x94

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 13
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v9, [I

    .line 14
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v9, [I

    .line 15
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 16
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_2
    const/16 v2, 0x81

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 17
    aget-byte v10, v1, v4

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 18
    aget-byte v3, v1, v4

    shr-int/2addr v3, v6

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v8

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 19
    aget-byte v3, v1, v4

    shr-int/2addr v3, v8

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 20
    aget-byte v10, v1, v4

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v9, [I

    .line 21
    aget-byte v10, v1, v4

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v9, [I

    .line 22
    aget-byte v10, v1, v4

    shr-int/2addr v10, v5

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v9, [I

    .line 23
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 24
    aget-byte v10, v1, v4

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v9, [I

    .line 25
    aget-byte v10, v1, v4

    shr-int/lit8 v6, v10, 0x4

    and-int/2addr v6, v7

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v9, [I

    .line 26
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 27
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 28
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xa

    .line 29
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xc

    .line 30
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xe

    .line 31
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xf

    .line 32
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x11

    .line 33
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x10

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x13

    .line 34
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x12

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x15

    .line 35
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x14

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x17

    .line 36
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x16

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_3
    const/16 v2, 0x7e

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 37
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 38
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 39
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 41
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 42
    iput v2, v0, Lk0/ap;->f:I

    move v2, v8

    .line 43
    :goto_0
    iget-object v3, v0, Lk0/ap;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 44
    iget v4, v0, Lk0/ap;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_0

    if-eqz v4, :cond_1

    .line 45
    iput v2, v0, Lk0/ap;->e:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iget v4, v0, Lk0/ap;->f:I

    const/16 v5, 0x81

    if-eq v4, v5, :cond_6

    if-eq v4, v15, :cond_4

    and-int/2addr v1, v11

    if-ne v1, v9, :cond_2

    .line 47
    array-length v1, v3

    if-ge v2, v1, :cond_2c

    .line 48
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_2
    if-nez v1, :cond_2c

    .line 49
    iget v1, v0, Lk0/ap;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_3

    if-eq v1, v11, :cond_3

    .line 50
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 51
    :cond_3
    iput v11, v0, Lk0/ap;->e:I

    goto/16 :goto_d

    :cond_4
    move v2, v8

    :goto_2
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_5

    .line 52
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 53
    :cond_5
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_6
    move v2, v8

    :goto_3
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_7

    const/16 v3, 0x1f

    .line 54
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const/16 v1, 0x1f

    .line 55
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 56
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 57
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 58
    iput v2, v0, Lk0/ap;->c:I

    move v2, v8

    .line 59
    :goto_4
    iget-object v3, v0, Lk0/ap;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 60
    iget v4, v0, Lk0/ap;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_8

    if-eqz v4, :cond_9

    .line 61
    iput v2, v0, Lk0/ap;->b:I

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 62
    :cond_9
    :goto_5
    iget v4, v0, Lk0/ap;->c:I

    const/16 v5, 0x81

    if-eq v4, v5, :cond_e

    if-eq v4, v15, :cond_c

    and-int/2addr v1, v11

    if-ne v1, v9, :cond_a

    .line 63
    array-length v1, v3

    if-ge v2, v1, :cond_2c

    .line 64
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_a
    if-nez v1, :cond_2c

    .line 65
    iget v1, v0, Lk0/ap;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_b

    if-eq v1, v11, :cond_b

    .line 66
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 67
    :cond_b
    iput v11, v0, Lk0/ap;->b:I

    goto/16 :goto_d

    :cond_c
    move v2, v8

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_d

    const/16 v3, 0x1f

    .line 68
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/16 v1, 0x1f

    .line 69
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_e
    move v2, v8

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_f

    .line 70
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 71
    :cond_f
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :pswitch_6
    new-array v2, v9, [I

    add-int/lit8 v10, p2, 0x2

    .line 72
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x7

    and-int/2addr v14, v9

    aput v14, v2, v8

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v13, v9, [I

    .line 73
    aget-byte v14, v1, v10

    shr-int/lit8 v14, v14, 0x6

    and-int/2addr v14, v9

    aput v14, v13, v8

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v13, v9, [I

    .line 74
    aget-byte v14, v1, v10

    shr-int/lit8 v6, v14, 0x4

    and-int/2addr v6, v7

    aput v6, v13, v8

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 75
    aget-byte v6, v1, v10

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v2, v8

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v9, [I

    .line 76
    aget-byte v6, v1, v10

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v9, [I

    .line 77
    aget-byte v5, v1, v10

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 78
    aget-byte v3, v1, v10

    shr-int/2addr v3, v8

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 79
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v9, [I

    .line 80
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    .line 81
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    .line 82
    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 83
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v5, p2, 0x5

    .line 84
    aget-byte v6, v1, v5

    and-int/2addr v6, v11

    const-string v7, "persist.fyt.reversetemp"

    .line 85
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 86
    aget-byte v3, v1, v5

    and-int/2addr v3, v11

    .line 87
    aget-byte v1, v1, v2

    and-int/lit16 v6, v1, 0xff

    :cond_10
    const/16 v1, 0x1b

    const/16 v2, 0x38

    const/16 v5, 0x20

    if-eq v3, v5, :cond_13

    if-eq v3, v2, :cond_12

    if-le v3, v5, :cond_11

    if-ge v3, v2, :cond_11

    new-array v7, v9, [I

    sub-int/2addr v3, v5

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xa0

    aput v3, v7, v8

    .line 88
    invoke-static {v1, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array v3, v9, [I

    const/4 v7, -0x1

    aput v7, v3, v8

    .line 89
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    new-array v3, v9, [I

    const/4 v7, -0x3

    aput v7, v3, v8

    .line 90
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_13
    new-array v3, v9, [I

    const/4 v7, -0x2

    aput v7, v3, v8

    .line 91
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v1, 0x1c

    if-eq v6, v5, :cond_16

    if-eq v6, v2, :cond_15

    if-le v6, v5, :cond_14

    if-ge v6, v2, :cond_14

    new-array v2, v9, [I

    sub-int/2addr v6, v5

    mul-int/2addr v6, v4

    add-int/lit16 v6, v6, 0xa0

    aput v6, v2, v8

    .line 92
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_14
    new-array v2, v9, [I

    const/4 v3, -0x1

    aput v3, v2, v8

    .line 93
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_15
    new-array v2, v9, [I

    const/4 v3, -0x3

    aput v3, v2, v8

    .line 94
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_16
    new-array v2, v9, [I

    const/4 v3, -0x2

    aput v3, v2, v8

    .line 95
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_17
    add-int/lit8 v2, p2, 0x5

    .line 96
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v9

    aget-byte v4, v1, v2

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    invoke-static {v3, v4, v1}, Ll0/c0;->N1(III)V

    goto/16 :goto_d

    :cond_18
    const/16 v2, 0x65

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 97
    aget-byte v5, v1, v5

    shl-int/lit8 v3, v5, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v14

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v3, v5

    aput v3, v4, v8

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 98
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eq v2, v9, :cond_1d

    if-eq v2, v5, :cond_1c

    if-eq v2, v7, :cond_1b

    if-eq v2, v6, :cond_1a

    goto/16 :goto_d

    :cond_1a
    const/16 v2, 0xbe

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 100
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v9, [I

    .line 101
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v9, [I

    .line 102
    aget-byte v5, v1, v5

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 103
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 104
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 105
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 106
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1b
    const/16 v2, 0xbc

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 107
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v9, [I

    .line 108
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1c
    const/16 v2, 0xba

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 109
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v9, [I

    .line 110
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1d
    const/16 v2, 0xb4

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 111
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v9, [I

    .line 112
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v9, [I

    .line 113
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v9, [I

    .line 114
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v9, [I

    .line 115
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v9, [I

    .line 116
    aget-byte v1, v1, v4

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1e
    const/16 v2, 0x67

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x2

    .line 117
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    .line 118
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    .line 119
    aget-byte v13, v1, v10

    shr-int/2addr v13, v4

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v9, [I

    .line 120
    aget-byte v13, v1, v10

    shr-int/2addr v13, v6

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v9, [I

    .line 121
    aget-byte v10, v1, v10

    shr-int/2addr v10, v7

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x3

    .line 122
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    .line 123
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v7

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x4

    .line 124
    aget-byte v13, v1, v10

    shr-int/2addr v13, v6

    and-int/2addr v13, v12

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    .line 125
    aget-byte v13, v1, v10

    shr-int/2addr v13, v5

    and-int/2addr v13, v7

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    .line 126
    aget-byte v13, v1, v10

    shr-int/2addr v13, v9

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v9, [I

    .line 127
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x5

    .line 128
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v9, [I

    .line 129
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v9, [I

    .line 130
    aget-byte v13, v1, v10

    shr-int/2addr v13, v4

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v9, [I

    .line 131
    aget-byte v10, v1, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v9

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x6

    .line 132
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v10, v11

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x7

    .line 133
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v9, [I

    .line 134
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v9, [I

    .line 135
    aget-byte v13, v1, v10

    shr-int/lit8 v4, v13, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v9, [I

    .line 136
    aget-byte v4, v1, v10

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v9, [I

    .line 137
    aget-byte v4, v1, v10

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v9, [I

    .line 138
    aget-byte v4, v1, v10

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v9, [I

    .line 139
    aget-byte v4, v1, v10

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 140
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v9, [I

    .line 141
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p2, 0x9

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 142
    :cond_1f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_20
    add-int/lit8 v2, p2, 0x3

    .line 143
    aget-byte v3, v1, v2

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x4

    .line 144
    aget-byte v5, v1, v4

    and-int/2addr v5, v11

    add-int/lit8 v7, p2, 0x5

    .line 145
    aget-byte v10, v1, v7

    and-int/2addr v10, v11

    add-int/lit8 v12, p2, 0x6

    .line 146
    aget-byte v14, v1, v12

    and-int/2addr v14, v11

    const/16 v15, 0xfd

    if-lt v3, v15, :cond_21

    if-lt v5, v15, :cond_21

    if-lt v10, v15, :cond_21

    if-lt v14, v15, :cond_21

    .line 147
    invoke-static {v8}, Lu0/d;->C2(I)V

    goto :goto_9

    .line 148
    :cond_21
    sget v8, Ll0/c0;->g:I

    if-ne v8, v3, :cond_22

    sget v8, Ll0/c0;->h:I

    if-ne v8, v5, :cond_22

    sget v8, Ll0/c0;->i:I

    if-ne v8, v10, :cond_22

    sget v8, Ll0/c0;->j:I

    if-eq v8, v14, :cond_23

    .line 149
    :cond_22
    sget v8, Lu0/b;->o:I

    if-nez v8, :cond_23

    .line 150
    invoke-static {v9}, Lu0/d;->C2(I)V

    .line 151
    sput v6, Ll0/c0;->k:I

    .line 152
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 153
    :cond_23
    :goto_9
    sput v3, Ll0/c0;->g:I

    .line 154
    sput v5, Ll0/c0;->h:I

    .line 155
    sput v10, Ll0/c0;->i:I

    .line 156
    sput v14, Ll0/c0;->j:I

    .line 157
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 158
    aget-byte v2, v1, v4

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 159
    aget-byte v2, v1, v7

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 160
    aget-byte v2, v1, v12

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 161
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 162
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 163
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    invoke-static {v2}, Ll0/c0;->a1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0xa

    .line 164
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    invoke-static {v1}, Ll0/c0;->a1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_d

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 165
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v9

    const/16 v2, 0x34

    invoke-static {v3, v8, v1, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_d

    :cond_25
    const/16 v2, 0xa3

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x2

    .line 166
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v9, [I

    .line 167
    aget-byte v13, v1, v10

    shr-int/lit8 v13, v13, 0x6

    and-int/2addr v13, v9

    aput v13, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v9, [I

    .line 168
    aget-byte v10, v1, v10

    shr-int/2addr v10, v8

    and-int/2addr v10, v12

    aput v10, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v9, [I

    add-int/lit8 v10, p2, 0x3

    .line 169
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x7

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v9, [I

    .line 170
    aget-byte v12, v1, v10

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v9

    aput v12, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v9, [I

    .line 171
    aget-byte v12, v1, v10

    shr-int/lit8 v4, v12, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v9, [I

    .line 172
    aget-byte v4, v1, v10

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v9, [I

    .line 173
    aget-byte v4, v1, v10

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v9, [I

    .line 174
    aget-byte v4, v1, v10

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v9, [I

    .line 175
    aget-byte v4, v1, v10

    shr-int/2addr v4, v9

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v9, [I

    .line 176
    aget-byte v4, v1, v10

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 177
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 178
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 179
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 180
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v11

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_26
    const/16 v2, 0x62

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 181
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v9

    aput v6, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    .line 182
    aget-byte v5, v1, v5

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 183
    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    aput v5, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 184
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    const-string v2, "persist.fyt.temperature"

    .line 185
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_28

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    and-int/lit8 v1, v1, 0x7f

    mul-int/lit8 v1, v1, 0x9

    rsub-int v1, v1, 0x528

    goto :goto_a

    :cond_27
    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x528

    :goto_a
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_28
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_29

    and-int/lit8 v1, v1, 0x7f

    mul-int/2addr v1, v4

    rsub-int v1, v1, 0x3e8

    goto :goto_b

    :cond_29
    mul-int/2addr v1, v4

    add-int/lit16 v1, v1, 0x3e8

    .line 186
    :goto_b
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_d

    :cond_2a
    const-string v2, "persist.syu.reversefrontdoor"

    .line 187
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2b

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 188
    aget-byte v10, v1, v3

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v9

    aput v10, v2, v8

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 189
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_2b
    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 190
    aget-byte v10, v1, v3

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v9

    aput v10, v2, v8

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 191
    aget-byte v3, v1, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 192
    aget-byte v10, v1, v3

    shr-int/2addr v10, v4

    and-int/2addr v10, v9

    aput v10, v2, v8

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 193
    aget-byte v10, v1, v3

    shr-int/2addr v10, v6

    and-int/2addr v10, v9

    aput v10, v2, v8

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 194
    aget-byte v6, v1, v3

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v2, v8

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 195
    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    aput v1, v2, v8

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :cond_2c
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
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
    iget-object v0, p0, Lk0/ap;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xc5

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
    .locals 7

    const/16 p3, 0x9a

    const/16 p4, 0xe3

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_5

    const/4 v6, 0x6

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    const/16 p3, 0x9b

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, v6, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v2, p1, v4

    .line 1
    aget p3, p2, v3

    aput p3, p1, v2

    aget p3, p2, v5

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v0, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v4, p1, v4

    .line 2
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p4, p1, v3

    const/16 p3, 0x99

    aput p3, p1, v5

    aput v6, p1, v4

    .line 3
    aget p3, p2, v3

    aput p3, p1, v2

    aget p3, p2, v5

    aput p3, p1, v1

    aget p3, p2, v4

    aput p3, p1, v0

    aget p3, p2, v2

    aput p3, p1, v6

    const/4 p3, 0x7

    aget p4, p2, v1

    aput p4, p1, p3

    const/16 p3, 0x8

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [I

    aput p4, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v5

    aput v5, p1, v4

    .line 4
    aget p2, p2, v3

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, v6, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v2, p1, v4

    .line 5
    aget p3, p2, v3

    aput p3, p1, v2

    aget p3, p2, v5

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v0, [I

    aput p4, p1, v3

    aput p3, p1, v5

    aput v4, p1, v4

    .line 6
    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v5

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
