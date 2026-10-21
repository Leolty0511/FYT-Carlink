.class public Lk0/oh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/oh;->c:I

    const/16 v1, 0x18

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

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v4, 0xf

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v4, 0x10

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v4, 0x11

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v4, 0x12

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v4, 0x13

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v4, 0x14

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v4, 0x15

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v4, 0x16

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v2, 0x17

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/oh;->d:[[I

    .line 4
    iput-byte v3, p0, Lk0/oh;->e:B

    .line 5
    new-instance v0, Lk0/oh$a;

    invoke-direct {v0, p0}, Lk0/oh$a;-><init>(Lk0/oh;)V

    iput-object v0, p0, Lk0/oh;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/oh$b;

    invoke-direct {v0, p0}, Lk0/oh$b;-><init>(Lk0/oh;)V

    iput-object v0, p0, Lk0/oh;->g:Ljava/lang/Runnable;

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
        0x14
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x15
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x34
        0x15
    .end array-data

    :array_8
    .array-data 4
        0x35
        0x35
    .end array-data

    :array_9
    .array-data 4
        0x37
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x48
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x52
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x53
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x54
        0xb
    .end array-data

    :array_f
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_10
    .array-data 4
        0x5b
        0x40
    .end array-data

    :array_11
    .array-data 4
        0x5c
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x5d
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x5f
        0x36
    .end array-data

    :array_14
    .array-data 4
        0x60
        0x43
    .end array-data

    :array_15
    .array-data 4
        0x61
        0x44
    .end array-data

    :array_16
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_17
    .array-data 4
        0xf1
        0x8
    .end array-data
.end method

.method public static synthetic a3(Lk0/oh;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/oh;->g:Ljava/lang/Runnable;

    return-object p0
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

    iget-object v1, p0, Lk0/oh;->f:Ljava/lang/Runnable;

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
    iput v1, v0, Lk0/mt;->j:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v8, :cond_13

    const/16 v9, 0xa

    const/16 v10, 0x15

    const/16 v11, 0x14

    const/16 v12, 0x12

    const/16 v13, 0xb

    const/4 v14, 0x5

    const/4 v15, 0x2

    if-eq v2, v15, :cond_c

    if-eq v2, v5, :cond_b

    const/4 v15, 0x4

    if-eq v2, v15, :cond_a

    if-eq v2, v13, :cond_8

    const/16 v13, 0x7d

    if-eq v2, v13, :cond_6

    const/16 v13, 0x7f

    if-eq v2, v13, :cond_5

    const/16 v13, 0x11

    if-eq v2, v13, :cond_4

    if-eq v2, v12, :cond_2

    if-eq v2, v11, :cond_1

    if-eq v2, v10, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v2, 0x71

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 2
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 4
    aget-byte v5, v1, v5

    shl-int/2addr v5, v3

    const v10, 0xff00

    and-int/2addr v5, v10

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 5
    aget-byte v5, v1, v5

    shl-int/2addr v5, v3

    and-int/2addr v5, v10

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v5, v11

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x8

    .line 6
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x9

    .line 7
    aget-byte v5, v1, v5

    shl-int/lit8 v3, v5, 0x8

    and-int/2addr v3, v10

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x2

    .line 8
    aget-byte v9, v1, v6

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    .line 9
    aget-byte v9, v1, v6

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    .line 10
    aget-byte v9, v1, v6

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    .line 11
    aget-byte v9, v1, v6

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    .line 12
    aget-byte v9, v1, v6

    shr-int/2addr v9, v5

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    .line 13
    aget-byte v6, v1, v6

    const/4 v9, 0x2

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 14
    aget-byte v9, v1, v6

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    .line 15
    aget-byte v9, v1, v6

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    .line 16
    aget-byte v9, v1, v6

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    .line 17
    aget-byte v9, v1, v6

    shr-int/2addr v9, v15

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    .line 18
    aget-byte v9, v1, v6

    shr-int/lit8 v5, v9, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    .line 19
    aget-byte v5, v1, v6

    shr-int/2addr v5, v7

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 20
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 21
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_2
    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 22
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    .line 23
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_3
    const/16 v1, 0x3e8

    .line 24
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 25
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x11f8

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    .line 26
    :cond_5
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_7

    goto/16 :goto_7

    :cond_7
    add-int/lit8 v2, p2, 0x3

    .line 28
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v8

    aget-byte v4, v1, v2

    shr-int/2addr v4, v15

    and-int/2addr v4, v8

    invoke-static {v3, v4, v7}, Ll0/c0;->a(III)V

    .line 29
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    const/4 v9, 0x2

    new-array v5, v9, [I

    const/16 v9, 0xb

    aput v9, v5, v7

    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v5, v8

    const/4 v1, 0x0

    invoke-static {v3, v4, v5, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    const/4 v9, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    const-string v2, "persist.syu.reversefrontdoor"

    .line 31
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 32
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 33
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_9
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x2

    .line 34
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 35
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 36
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 37
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 38
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 39
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 42
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 43
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 45
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->v1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 47
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :cond_c
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x2

    .line 48
    aget-byte v13, v1, v3

    shr-int/2addr v13, v4

    and-int/2addr v13, v8

    aput v13, v2, v7

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 49
    aget-byte v9, v1, v3

    shr-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v8

    aput v9, v2, v7

    const/16 v9, 0xb

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v9, v8, [I

    .line 50
    aget-byte v13, v1, v3

    shr-int/2addr v13, v14

    and-int/2addr v13, v8

    aput v13, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v9, v8, [I

    .line 51
    aget-byte v13, v1, v3

    shr-int/2addr v13, v5

    and-int/2addr v13, v8

    aput v13, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v9, v8, [I

    .line 52
    aget-byte v13, v1, v3

    shr-int/2addr v13, v8

    and-int/2addr v13, v8

    aput v13, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v9, v8, [I

    .line 53
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x3

    .line 54
    aget-byte v9, v1, v3

    shr-int/2addr v9, v4

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v8, [I

    .line 55
    aget-byte v12, v1, v3

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v8

    aput v12, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 56
    aget-byte v9, v1, v3

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v9, v8, [I

    .line 57
    aget-byte v11, v1, v3

    shr-int/2addr v11, v14

    and-int/2addr v4, v11

    aput v4, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 58
    aget-byte v3, v1, v3

    shr-int/2addr v3, v7

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v7

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 59
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    const-string v4, "persist.fyt.reversetemp"

    .line 60
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    add-int/lit8 v3, p2, 0x5

    .line 61
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    :cond_d
    const/16 v9, 0xfe

    const/16 v10, 0x1b

    if-nez v3, :cond_e

    new-array v3, v8, [I

    const/4 v11, -0x2

    aput v11, v3, v7

    .line 62
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_e
    if-ne v3, v9, :cond_f

    new-array v3, v8, [I

    const/4 v11, -0x3

    aput v11, v3, v7

    .line 63
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_f
    new-array v11, v8, [I

    aput v3, v11, v7

    .line 64
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v3, p2, 0x5

    .line 65
    aget-byte v10, v1, v3

    and-int/2addr v10, v6

    .line 66
    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 67
    aget-byte v2, v1, v2

    and-int/lit16 v10, v2, 0xff

    :cond_10
    const/16 v2, 0x1c

    if-nez v10, :cond_11

    new-array v4, v8, [I

    const/4 v6, -0x2

    aput v6, v4, v7

    .line 68
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_11
    if-ne v10, v9, :cond_12

    new-array v4, v8, [I

    const/4 v6, -0x3

    aput v6, v4, v7

    .line 69
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_12
    new-array v4, v8, [I

    aput v10, v4, v7

    .line 70
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x35

    new-array v4, v8, [I

    .line 71
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v5

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 73
    aget-byte v1, v1, v5

    and-int/2addr v2, v6

    .line 74
    iput v2, v0, Lk0/oh;->c:I

    move v2, v7

    .line 75
    :goto_3
    iget-object v5, v0, Lk0/oh;->d:[[I

    array-length v9, v5

    if-ge v2, v9, :cond_15

    .line 76
    iget v9, v0, Lk0/oh;->c:I

    aget-object v10, v5, v2

    aget v10, v10, v7

    if-ne v9, v10, :cond_14

    if-eqz v9, :cond_15

    .line 77
    iput v2, v0, Lk0/oh;->b:I

    goto :goto_4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 78
    :cond_15
    :goto_4
    iget v9, v0, Lk0/oh;->c:I

    const/16 v10, 0xf0

    if-eq v9, v10, :cond_1a

    const/16 v4, 0xf1

    if-eq v9, v4, :cond_18

    and-int/2addr v1, v6

    if-ne v1, v8, :cond_16

    .line 79
    array-length v1, v5

    if-ge v2, v1, :cond_1c

    .line 80
    aget-object v1, v5, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_16
    if-nez v1, :cond_1c

    .line 81
    iget v1, v0, Lk0/oh;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_17

    if-eq v1, v6, :cond_17

    .line 82
    aget-object v1, v5, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 83
    :cond_17
    iput v6, v0, Lk0/oh;->b:I

    goto :goto_7

    :cond_18
    move v2, v7

    :goto_5
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_19

    .line 84
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 85
    :cond_19
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_1a
    move v2, v7

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1b

    .line 86
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 87
    :cond_1b
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    :cond_1c
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/oh;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/oh;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x77

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

    const/16 v0, 0x82

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

    const/16 v0, 0x83

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
