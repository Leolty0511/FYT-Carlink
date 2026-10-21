.class public Lk0/yj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/yj;->c:I

    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/yj;->d:[[I

    .line 4
    new-instance v0, Lk0/yj$a;

    invoke-direct {v0, p0}, Lk0/yj$a;-><init>(Lk0/yj;)V

    iput-object v0, p0, Lk0/yj;->e:Ljava/lang/Runnable;

    .line 5
    iput v3, p0, Lk0/yj;->f:I

    .line 6
    new-instance v0, Lk0/yj$b;

    invoke-direct {v0, p0}, Lk0/yj$b;-><init>(Lk0/yj;)V

    iput-object v0, p0, Lk0/yj;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/yj$c;

    invoke-direct {v0, p0}, Lk0/yj$c;-><init>(Lk0/yj;)V

    iput-object v0, p0, Lk0/yj;->h:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x2
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/yj;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/yj;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

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

    if-eq v2, v3, :cond_14

    const/16 v3, 0x31

    const/16 v5, 0x41

    const/16 v6, 0xa

    const/16 v7, 0x12

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v2, v3, :cond_d

    if-eq v2, v5, :cond_c

    const/16 v3, 0x48

    const v5, 0xff00

    const/16 v15, 0x8

    if-eq v2, v3, :cond_b

    const/16 v3, 0x61

    if-eq v2, v3, :cond_a

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/16 v2, 0x64

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v12

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x4

    .line 3
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v12

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, v1, v7

    and-int/2addr v7, v12

    or-int/2addr v4, v7

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x8

    .line 5
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xa

    .line 6
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x4

    .line 7
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 8
    invoke-static {v2, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 9
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 10
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 11
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 12
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 13
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v14

    aput v3, v2, v13

    .line 14
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v14

    aput v1, v2, v13

    .line 15
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x4

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    .line 17
    iput v2, v0, Lk0/yj;->c:I

    move v2, v13

    .line 18
    :goto_1
    iget-object v3, v0, Lk0/yj;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 19
    iget v4, v0, Lk0/yj;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v13

    if-ne v4, v5, :cond_1

    if-eqz v4, :cond_2

    .line 20
    iput v2, v0, Lk0/yj;->b:I

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_2
    :goto_2
    iget v4, v0, Lk0/yj;->c:I

    if-eq v4, v15, :cond_7

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    if-eqz v4, :cond_3

    add-int/lit8 v4, p2, 0x5

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    if-eqz v4, :cond_3

    .line 23
    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 24
    aget-object v2, v3, v2

    aget v2, v2, v14

    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 25
    :cond_3
    iget v2, v0, Lk0/yj;->b:I

    if-eq v2, v12, :cond_4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    if-nez v4, :cond_4

    .line 26
    aget-object v2, v3, v2

    aget v2, v2, v14

    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    .line 27
    :cond_4
    iput v12, v0, Lk0/yj;->b:I

    goto :goto_3

    :cond_5
    add-int/lit8 v2, p2, 0x5

    .line 28
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-ne v2, v14, :cond_9

    .line 29
    sget v2, Lh0/c;->E:I

    if-eq v2, v11, :cond_6

    .line 30
    invoke-static {v11, v13}, Ll0/b0;->l0(II)V

    .line 31
    invoke-static {v11, v14}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_6
    const/16 v2, 0x1a

    .line 32
    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    .line 33
    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, p2, 0x5

    .line 34
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-ne v2, v14, :cond_9

    .line 35
    sget v2, Lh0/c;->E:I

    if-eq v2, v9, :cond_8

    if-eq v2, v11, :cond_8

    if-eq v2, v10, :cond_8

    .line 36
    invoke-static {v9, v13}, Ll0/b0;->l0(II)V

    .line 37
    invoke-static {v9, v14}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 38
    :cond_8
    invoke-static {v7, v13}, Ll0/b0;->l0(II)V

    .line 39
    invoke-static {v7, v14}, Ll0/b0;->l0(II)V

    :cond_9
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 40
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    const/16 v3, 0x21c

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_a
    const/16 v2, 0x62

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x2

    .line 41
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v14

    aput v5, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v14, [I

    .line 42
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v14

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_b
    const/16 v2, 0x69

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x2

    .line 43
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v14

    aput v6, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v14, [I

    .line 44
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v14

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 45
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v14

    aput v6, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v14, [I

    .line 46
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v14, [I

    .line 47
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v14

    aput v6, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v14, [I

    .line 48
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v14

    aput v6, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v14, [I

    .line 49
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v14

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x4

    .line 50
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    or-int/2addr v4, v6

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x6

    .line 51
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    or-int/2addr v4, v6

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x8

    .line 52
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    or-int/2addr v4, v6

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xa

    .line 53
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0xb

    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    or-int/2addr v4, v6

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xc

    .line 54
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xe

    .line 55
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0xf

    .line 56
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x10

    .line 57
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x11

    .line 58
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    aput v4, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v14, [I

    add-int/lit8 v4, p2, 0x12

    .line 59
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v13

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2}, Ll0/c0;->j1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 63
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-static {v1}, Ll0/c0;->j1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :cond_d
    new-array v2, v14, [I

    add-int/lit8 v3, p2, 0x2

    .line 64
    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v14

    aput v4, v2, v13

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    .line 65
    aget-byte v3, v1, v3

    shr-int/2addr v3, v9

    and-int/2addr v3, v14

    aput v3, v2, v13

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    add-int/lit8 v4, p2, 0x3

    .line 66
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v2, v13

    const/16 v6, 0xb

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    .line 67
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v14

    aput v4, v2, v13

    const/16 v4, 0xc

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    add-int/lit8 v6, p2, 0x4

    .line 68
    aget-byte v15, v1, v6

    shr-int/2addr v15, v10

    and-int/2addr v15, v14

    aput v15, v2, v13

    const/16 v15, 0x10

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v14, [I

    .line 69
    aget-byte v6, v1, v6

    shr-int/2addr v6, v11

    and-int/2addr v6, v14

    aput v6, v2, v13

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v5, v14, [I

    add-int/lit8 v6, p2, 0x6

    .line 70
    aget-byte v11, v1, v6

    and-int/2addr v11, v12

    aput v11, v5, v13

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 71
    aget-byte v2, v1, v6

    and-int/2addr v2, v12

    if-eq v2, v9, :cond_11

    if-eq v2, v4, :cond_10

    if-eq v2, v10, :cond_f

    if-eq v2, v8, :cond_e

    move v2, v13

    move v4, v2

    :goto_4
    move v5, v4

    goto :goto_5

    :cond_e
    move v2, v13

    move v5, v2

    move v4, v14

    goto :goto_5

    :cond_f
    move v2, v13

    move v4, v14

    goto :goto_4

    :cond_10
    move v4, v13

    move v2, v14

    move v5, v2

    goto :goto_5

    :cond_11
    move v2, v13

    move v4, v2

    move v5, v14

    :goto_5
    new-array v6, v14, [I

    aput v2, v6, v13

    .line 72
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v14, [I

    aput v4, v6, v13

    .line 73
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v14, [I

    aput v5, v4, v13

    .line 74
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v14, [I

    add-int/lit8 v5, p2, 0x7

    .line 75
    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    aput v5, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v4, v14, [I

    add-int/lit8 v5, p2, 0x8

    .line 76
    aget-byte v5, v1, v5

    and-int/2addr v5, v12

    aput v5, v4, v13

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xd

    .line 77
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    if-eq v1, v12, :cond_13

    if-nez v1, :cond_12

    goto :goto_6

    :cond_12
    mul-int/2addr v1, v10

    add-int/lit16 v1, v1, 0x258

    .line 78
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_7

    .line 79
    :cond_13
    :goto_6
    invoke-static {v13}, Lu0/d;->A3(I)V

    goto :goto_7

    .line 80
    :cond_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/yj;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/yj;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/yj;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7a

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
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x4

    aput v0, p1, p3

    const/4 v1, 0x2

    const/16 v2, 0x6f

    aput v2, p1, v1

    const/4 v1, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, v1

    aget p2, p2, p3

    aput p2, p1, v0

    const/4 p2, 0x5

    const/16 p3, 0xff

    aput p3, p1, p2

    const/4 p2, 0x6

    aput p3, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
