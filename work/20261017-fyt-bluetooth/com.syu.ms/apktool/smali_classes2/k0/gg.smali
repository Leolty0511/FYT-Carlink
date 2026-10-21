.class public Lk0/gg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:B

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gg;->c:I

    const/16 v1, 0x9

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v8, 0x7

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v8, 0x8

    aput-object v3, v1, v8

    iput-object v1, p0, Lk0/gg;->d:[[I

    .line 4
    iput v0, p0, Lk0/gg;->f:I

    new-array v1, v6, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_9

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    aput-object v0, v1, v5

    iput-object v1, p0, Lk0/gg;->g:[[I

    .line 6
    iput-byte v7, p0, Lk0/gg;->h:B

    .line 7
    new-instance v0, Lk0/gg$a;

    invoke-direct {v0, p0}, Lk0/gg$a;-><init>(Lk0/gg;)V

    iput-object v0, p0, Lk0/gg;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/gg$b;

    invoke-direct {v0, p0}, Lk0/gg$b;-><init>(Lk0/gg;)V

    iput-object v0, p0, Lk0/gg;->j:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1d
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x22
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x23
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x1e
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x1f
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x9
    .end array-data
.end method

.method public static synthetic a3(Lk0/gg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/gg;->j:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->l:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gg;->i:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v2, v6, :cond_12

    const/16 v8, 0x9

    const/16 v9, 0xb

    const/16 v10, 0x10

    const v11, 0xffff

    const/4 v12, 0x5

    const/4 v13, 0x6

    const v14, 0xff00

    const/16 v15, 0xf

    const/16 v3, 0x8

    const/16 v5, 0xff

    if-eq v2, v4, :cond_11

    const/16 v4, 0x18

    if-eq v2, v12, :cond_10

    if-eq v2, v13, :cond_f

    if-eq v2, v9, :cond_c

    const/16 v9, 0x24

    if-eq v2, v9, :cond_b

    const/16 v9, 0x71

    if-eq v2, v9, :cond_a

    const/16 v9, 0xe

    if-eq v2, v9, :cond_5

    if-eq v2, v15, :cond_0

    const/high16 v9, 0xff0000

    const/high16 v12, -0x1000000

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/16 v2, 0x3e

    new-array v8, v6, [I

    add-int/lit8 v13, p2, 0x2

    .line 2
    aget-byte v13, v0, v13

    shl-int/2addr v13, v4

    and-int/2addr v13, v12

    add-int/lit8 v15, p2, 0x3

    aget-byte v15, v0, v15

    shl-int/2addr v15, v10

    and-int/2addr v15, v9

    or-int/2addr v13, v15

    add-int/lit8 v15, p2, 0x4

    aget-byte v15, v0, v15

    shl-int/2addr v15, v3

    and-int/2addr v15, v14

    or-int/2addr v13, v15

    add-int/lit8 v15, p2, 0x5

    aget-byte v15, v0, v15

    and-int/2addr v15, v5

    or-int/2addr v13, v15

    and-int/lit8 v13, v13, -0x1

    aput v13, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3f

    new-array v8, v6, [I

    add-int/lit8 v13, p2, 0x6

    .line 3
    aget-byte v13, v0, v13

    and-int/2addr v13, v5

    aput v13, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x40

    new-array v8, v6, [I

    add-int/lit8 v13, p2, 0x7

    .line 4
    aget-byte v13, v0, v13

    shl-int/lit8 v4, v13, 0x18

    and-int/2addr v4, v12

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v0, v12

    shl-int/lit8 v10, v12, 0x10

    and-int/2addr v9, v10

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v0, v9

    shl-int/2addr v9, v3

    and-int/2addr v9, v14

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v0, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    and-int/lit8 v4, v4, -0x1

    aput v4, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v6, [I

    add-int/lit8 v6, p2, 0xb

    .line 5
    aget-byte v6, v0, v6

    shl-int/lit8 v3, v6, 0x8

    and-int/2addr v3, v14

    add-int/lit8 v6, p2, 0xc

    aget-byte v0, v0, v6

    and-int/2addr v0, v5

    or-int/2addr v0, v3

    and-int/2addr v0, v11

    aput v0, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    const/16 v2, 0x3a

    new-array v8, v6, [I

    add-int/lit8 v13, p2, 0x2

    .line 6
    aget-byte v13, v0, v13

    shl-int/2addr v13, v4

    and-int/2addr v13, v12

    add-int/lit8 v15, p2, 0x3

    aget-byte v15, v0, v15

    shl-int/2addr v15, v10

    and-int/2addr v15, v9

    or-int/2addr v13, v15

    add-int/lit8 v15, p2, 0x4

    aget-byte v15, v0, v15

    shl-int/2addr v15, v3

    and-int/2addr v15, v14

    or-int/2addr v13, v15

    add-int/lit8 v15, p2, 0x5

    aget-byte v15, v0, v15

    and-int/2addr v15, v5

    or-int/2addr v13, v15

    and-int/lit8 v13, v13, -0x1

    aput v13, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3b

    new-array v8, v6, [I

    add-int/lit8 v13, p2, 0x6

    .line 7
    aget-byte v13, v0, v13

    and-int/2addr v13, v5

    aput v13, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3c

    new-array v8, v6, [I

    add-int/lit8 v13, p2, 0x7

    .line 8
    aget-byte v13, v0, v13

    shl-int/lit8 v4, v13, 0x18

    and-int/2addr v4, v12

    add-int/lit8 v12, p2, 0x8

    aget-byte v12, v0, v12

    shl-int/lit8 v10, v12, 0x10

    and-int/2addr v9, v10

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v0, v9

    shl-int/2addr v9, v3

    and-int/2addr v9, v14

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v0, v9

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    and-int/lit8 v4, v4, -0x1

    aput v4, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3d

    new-array v4, v6, [I

    add-int/lit8 v6, p2, 0xb

    .line 9
    aget-byte v6, v0, v6

    shl-int/lit8 v3, v6, 0x8

    and-int/2addr v3, v14

    add-int/lit8 v6, p2, 0xc

    aget-byte v0, v0, v6

    and-int/2addr v0, v5

    or-int/2addr v0, v3

    and-int/2addr v0, v11

    aput v0, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 v2, 0x35

    new-array v4, v6, [I

    add-int/lit8 v9, p2, 0x2

    .line 10
    aget-byte v9, v0, v9

    shl-int/2addr v9, v3

    and-int/2addr v9, v14

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v0, v10

    and-int/2addr v10, v5

    or-int/2addr v9, v10

    and-int/2addr v9, v11

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v4, v6, [I

    add-int/lit8 v9, p2, 0x4

    .line 11
    aget-byte v9, v0, v9

    shl-int/lit8 v3, v9, 0x8

    and-int/2addr v3, v14

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v0, v9

    and-int/2addr v9, v5

    or-int/2addr v3, v9

    and-int/2addr v3, v11

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 12
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x7

    .line 13
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x38

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 14
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 15
    aget-byte v0, v0, v4

    and-int/2addr v0, v5

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 16
    aget-byte v2, v0, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 17
    aget-byte v0, v0, v3

    and-int/2addr v2, v5

    .line 18
    iput v2, v1, Lk0/gg;->c:I

    move v2, v7

    .line 19
    :goto_0
    iget-object v3, v1, Lk0/gg;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 20
    iget v4, v1, Lk0/gg;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v7

    if-ne v4, v8, :cond_1

    if-eqz v4, :cond_2

    .line 21
    iput v2, v1, Lk0/gg;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/2addr v0, v5

    if-ne v0, v6, :cond_3

    .line 22
    array-length v0, v3

    if-ge v2, v0, :cond_13

    .line 23
    aget-object v0, v3, v2

    aget v0, v0, v6

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_3
    if-nez v0, :cond_13

    .line 24
    iget v0, v1, Lk0/gg;->b:I

    array-length v2, v3

    if-ge v0, v2, :cond_4

    if-eq v0, v5, :cond_4

    .line 25
    aget-object v0, v3, v0

    aget v0, v0, v6

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 26
    :cond_4
    iput v5, v1, Lk0/gg;->b:I

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v0, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 28
    aget-byte v0, v0, v3

    and-int/2addr v2, v5

    .line 29
    iput v2, v1, Lk0/gg;->f:I

    move v2, v7

    .line 30
    :goto_2
    iget-object v3, v1, Lk0/gg;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 31
    iget v4, v1, Lk0/gg;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v7

    if-ne v4, v8, :cond_6

    if-eqz v4, :cond_7

    .line 32
    iput v2, v1, Lk0/gg;->e:I

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    and-int/2addr v0, v5

    if-ne v0, v6, :cond_8

    .line 33
    array-length v0, v3

    if-ge v2, v0, :cond_13

    .line 34
    aget-object v0, v3, v2

    aget v0, v0, v6

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_8
    if-nez v0, :cond_13

    .line 35
    iget v0, v1, Lk0/gg;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_9

    if-eq v0, v5, :cond_9

    .line 36
    aget-object v0, v3, v0

    aget v0, v0, v6

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 37
    :cond_9
    iput v5, v1, Lk0/gg;->e:I

    goto/16 :goto_7

    .line 38
    :cond_a
    iput-byte v7, v1, Lk0/gg;->h:B

    .line 39
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v0, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    const/4 v3, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0x7f

    aget-byte v0, v0, v2

    const/4 v2, 0x7

    shr-int/2addr v0, v2

    and-int/2addr v0, v6

    const/16 v2, 0x32

    invoke-static {v3, v7, v0, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_7

    :cond_c
    const/4 v2, 0x7

    add-int/lit8 v3, p2, 0x2

    .line 41
    aget-byte v4, v0, v3

    shr-int/lit8 v2, v4, 0x7

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_d

    .line 42
    aget-byte v2, v0, v3

    and-int/2addr v2, v10

    goto :goto_4

    :cond_d
    move v2, v7

    .line 43
    :goto_4
    aget-byte v4, v0, v3

    and-int/2addr v4, v15

    if-ne v4, v13, :cond_e

    move v2, v7

    :cond_e
    const/16 v4, 0x26

    new-array v5, v6, [I

    aput v2, v5, v7

    .line 44
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 45
    aget-byte v2, v0, v3

    and-int/2addr v2, v15

    const-string v3, "UTF-8"

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_3
    const/16 v0, 0x27

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 46
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x28

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 47
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x29

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 48
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2a

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 49
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2b

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 50
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2c

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 51
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2d

    new-array v2, v6, [I

    aput v7, v2, v7

    const-string v3, ""

    .line 52
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x2e

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 53
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x2f

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 54
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x30

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 55
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x31

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 56
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x32

    new-array v2, v6, [I

    aput v7, v2, v7

    .line 57
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_4
    const/16 v2, 0x2c

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x3

    .line 58
    aget-byte v5, v0, v5

    and-int/2addr v5, v15

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 59
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    invoke-direct {v2, v0, v4, v5, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v0, 0x32

    new-array v3, v6, [I

    aput v7, v3, v7

    .line 60
    invoke-static {v0, v3, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_5
    const/16 v2, 0x2b

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x3

    .line 62
    aget-byte v5, v0, v5

    and-int/2addr v5, v15

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 63
    :try_start_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    invoke-direct {v2, v0, v4, v5, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v0, 0x31

    new-array v3, v6, [I

    aput v7, v3, v7

    .line 64
    invoke-static {v0, v3, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_6
    const/16 v2, 0x2a

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x3

    .line 66
    aget-byte v5, v0, v5

    and-int/2addr v5, v15

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 67
    :try_start_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    invoke-direct {v2, v0, v4, v5, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v0, 0x30

    new-array v3, v6, [I

    aput v7, v3, v7

    .line 68
    invoke-static {v0, v3, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_7
    const/16 v2, 0x29

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x3

    .line 70
    aget-byte v5, v0, v5

    and-int/2addr v5, v15

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 71
    :try_start_3
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    invoke-direct {v2, v0, v4, v5, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v0, 0x2f

    new-array v3, v6, [I

    aput v7, v3, v7

    .line 72
    invoke-static {v0, v3, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_8
    const/16 v2, 0x28

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x3

    .line 74
    aget-byte v5, v0, v5

    and-int/2addr v5, v15

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 75
    :try_start_4
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    invoke-direct {v2, v0, v4, v5, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v0, 0x2e

    new-array v3, v6, [I

    aput v7, v3, v7

    .line 76
    invoke-static {v0, v3, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_7

    :catch_4
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_9
    const/16 v2, 0x27

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x3

    .line 78
    aget-byte v5, v0, v5

    and-int/2addr v5, v15

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 79
    :try_start_5
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    invoke-direct {v2, v0, v4, v5, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v0, 0x2d

    new-array v3, v6, [I

    aput v7, v3, v7

    .line 80
    invoke-static {v0, v3, v2}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_7

    :catch_5
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    :cond_f
    const/16 v2, 0x1f

    new-array v4, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 82
    aget-byte v8, v0, v8

    shl-int/lit8 v3, v8, 0x8

    and-int/2addr v3, v14

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v3, v8

    and-int/2addr v3, v11

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 83
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 84
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 85
    aget-byte v5, v0, v4

    shr-int/lit8 v5, v5, 0x4

    const/4 v8, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v3, v6, [I

    .line 86
    aget-byte v0, v0, v4

    and-int/2addr v0, v15

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_10
    new-array v2, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 87
    aget-byte v8, v0, v8

    shl-int/lit8 v3, v8, 0x8

    and-int/2addr v3, v14

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v0, v8

    and-int/2addr v8, v5

    or-int/2addr v3, v8

    and-int/2addr v3, v11

    aput v3, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x4

    .line 88
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x5

    .line 89
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 90
    aget-byte v5, v0, v4

    shr-int/lit8 v5, v5, 0x4

    const/4 v8, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v6, [I

    .line 91
    aget-byte v0, v0, v4

    and-int/2addr v0, v15

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_11
    new-array v2, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 92
    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    aput v4, v2, v7

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 93
    aget-byte v2, v0, v2

    shl-int/2addr v2, v3

    and-int/2addr v2, v14

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v0, v4

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    and-int/2addr v2, v11

    add-int/lit8 v4, p2, 0x5

    .line 94
    aget-byte v4, v0, v4

    packed-switch v4, :pswitch_data_2

    :goto_5
    const/4 v2, 0x7

    goto :goto_6

    :pswitch_a
    new-array v3, v6, [I

    aput v2, v3, v7

    .line 95
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_b
    new-array v3, v6, [I

    aput v2, v3, v7

    .line 96
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_c
    const/16 v3, 0xe

    new-array v4, v6, [I

    aput v2, v4, v7

    .line 97
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_d
    const/16 v3, 0xd

    new-array v4, v6, [I

    aput v2, v4, v7

    .line 98
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_e
    const/16 v3, 0xc

    new-array v4, v6, [I

    aput v2, v4, v7

    .line 99
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_f
    new-array v3, v6, [I

    aput v2, v3, v7

    .line 100
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_10
    const/16 v3, 0xa

    new-array v4, v6, [I

    aput v2, v4, v7

    .line 101
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_11
    new-array v3, v6, [I

    aput v2, v3, v7

    .line 102
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_12
    new-array v4, v6, [I

    aput v2, v4, v7

    .line 103
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :pswitch_13
    new-array v3, v6, [I

    aput v2, v3, v7

    const/4 v2, 0x7

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v3, 0x11

    new-array v4, v6, [I

    add-int/lit8 v5, p2, 0x6

    .line 105
    aget-byte v8, v0, v5

    shr-int/lit8 v2, v8, 0x7

    and-int/2addr v2, v6

    aput v2, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    .line 106
    aget-byte v4, v0, v5

    shr-int/2addr v4, v13

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v6, [I

    .line 107
    aget-byte v4, v0, v5

    shr-int/2addr v4, v12

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v6, [I

    .line 108
    aget-byte v4, v0, v5

    shr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v6, [I

    .line 109
    aget-byte v0, v0, v5

    const/4 v4, 0x3

    shr-int/2addr v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_12
    new-array v2, v6, [I

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    .line 110
    aget-byte v3, v0, v4

    const/4 v5, 0x7

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aput v3, v2, v7

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 111
    aget-byte v3, v0, v4

    shr-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v7

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 112
    aget-byte v3, v0, v4

    const/4 v5, 0x3

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aput v3, v2, v7

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 113
    aget-byte v0, v0, v4

    shr-int/2addr v0, v7

    const/4 v3, 0x7

    and-int/2addr v0, v3

    aput v0, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :cond_13
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gg;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/gg;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x42

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

    const/16 p3, 0x92

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
