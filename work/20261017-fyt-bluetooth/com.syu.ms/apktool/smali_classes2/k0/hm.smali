.class public Lk0/hm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hm;->c:I

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

    const/4 v7, 0x6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v7, 0x7

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v7, 0x8

    aput-object v3, v1, v7

    iput-object v1, p0, Lk0/hm;->d:[[I

    .line 4
    iput v0, p0, Lk0/hm;->f:I

    new-array v1, v6, [[I

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_9

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v5

    iput-object v1, p0, Lk0/hm;->g:[[I

    .line 6
    iput v0, p0, Lk0/hm;->h:I

    .line 7
    iput v0, p0, Lk0/hm;->i:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lk0/hm;->j:I

    .line 9
    new-instance v1, Lk0/hm$a;

    invoke-direct {v1, p0}, Lk0/hm$a;-><init>(Lk0/hm;)V

    iput-object v1, p0, Lk0/hm;->k:Ljava/lang/Runnable;

    .line 10
    iput v0, p0, Lk0/hm;->l:I

    .line 11
    new-instance v0, Lk0/hm$b;

    invoke-direct {v0, p0}, Lk0/hm$b;-><init>(Lk0/hm;)V

    iput-object v0, p0, Lk0/hm;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/hm$c;

    invoke-direct {v0, p0}, Lk0/hm$c;-><init>(Lk0/hm;)V

    iput-object v0, p0, Lk0/hm;->n:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1e
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1f
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1f
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

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->l:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/hm;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/hm;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ""

    .line 1
    aget-byte v0, v2, p2

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_23

    const/16 v10, 0x71

    const/16 v11, 0x9

    const/16 v12, 0xf

    const/16 v13, 0x8

    const/16 v14, 0xff

    if-eq v0, v10, :cond_1e

    if-eq v0, v4, :cond_1d

    const/16 v15, 0xb

    const/16 v10, 0xc

    const/4 v6, 0x5

    if-eq v0, v13, :cond_17

    if-eq v0, v15, :cond_16

    if-eq v0, v10, :cond_15

    const/16 v3, 0xe

    const v15, 0xff00

    if-eq v0, v3, :cond_f

    if-eq v0, v12, :cond_5

    const/16 v3, 0x24

    if-eq v0, v3, :cond_3

    const/16 v3, 0x25

    if-eq v0, v3, :cond_1

    const/high16 v3, 0xff0000

    const/high16 v4, -0x1000000

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const/16 v0, 0x72

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 2
    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v6, v4

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v2, v7

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v2, v7

    shl-int/2addr v7, v13

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v2, v7

    and-int/2addr v7, v14

    or-int/2addr v6, v7

    aput v6, v5, v8

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x73

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 3
    aget-byte v6, v2, v6

    and-int/2addr v6, v14

    aput v6, v5, v8

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x74

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x7

    .line 4
    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v3, v6

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, v2, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v15

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, v2, v4

    and-int/2addr v4, v14

    or-int/2addr v3, v4

    aput v3, v5, v8

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x75

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 5
    aget-byte v4, v2, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0xc

    aget-byte v2, v2, v5

    and-int/2addr v2, v14

    or-int/2addr v2, v4

    aput v2, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_1
    const/16 v0, 0x6e

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 6
    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v6, v4

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v2, v7

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v2, v7

    shl-int/2addr v7, v13

    and-int/2addr v7, v15

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v2, v7

    and-int/2addr v7, v14

    or-int/2addr v6, v7

    aput v6, v5, v8

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6f

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 7
    aget-byte v6, v2, v6

    and-int/2addr v6, v14

    aput v6, v5, v8

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x70

    new-array v5, v9, [I

    add-int/lit8 v6, p2, 0x7

    .line 8
    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x10

    and-int/2addr v3, v6

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, v2, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v15

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, v2, v4

    and-int/2addr v4, v14

    or-int/2addr v3, v4

    aput v3, v5, v8

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0xb

    .line 9
    aget-byte v4, v2, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0xc

    aget-byte v2, v2, v5

    and-int/2addr v2, v14

    or-int/2addr v2, v4

    aput v2, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_2
    const/16 v0, 0x68

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x2

    .line 10
    aget-byte v4, v2, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v2, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x4

    .line 11
    aget-byte v4, v2, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v2, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x6

    .line 12
    aget-byte v4, v2, v4

    and-int/2addr v4, v14

    aput v4, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x7

    .line 13
    aget-byte v4, v2, v4

    and-int/2addr v4, v14

    aput v4, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x8

    .line 14
    aget-byte v4, v2, v4

    and-int/2addr v4, v14

    aput v4, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6d

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x9

    .line 15
    aget-byte v2, v2, v4

    and-int/2addr v2, v14

    aput v2, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 16
    aget-byte v0, v2, v0

    shl-int/2addr v0, v13

    and-int/2addr v0, v15

    add-int/lit8 v3, p2, 0x3

    aget-byte v2, v2, v3

    and-int/2addr v2, v14

    or-int/2addr v0, v2

    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x10000

    sub-int/2addr v2, v0

    mul-int/2addr v2, v6

    rsub-int v0, v2, 0x3e8

    goto :goto_0

    :cond_0
    mul-int/2addr v0, v6

    add-int/lit16 v0, v0, 0x3e8

    .line 17
    :goto_0
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_b

    :cond_1
    const-string v0, "persist.syu.reversefrontdoor"

    .line 18
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 19
    aget-byte v10, v2, v3

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v9

    aput v4, v0, v8

    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 20
    aget-byte v3, v2, v3

    const/4 v4, 0x6

    shr-int/2addr v3, v4

    and-int/2addr v3, v9

    aput v3, v0, v8

    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_2
    new-array v0, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 21
    aget-byte v10, v2, v3

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v9

    aput v4, v0, v8

    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 22
    aget-byte v3, v2, v3

    const/4 v4, 0x6

    shr-int/2addr v3, v4

    and-int/2addr v3, v9

    aput v3, v0, v8

    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array v0, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 23
    aget-byte v4, v2, v3

    const/4 v10, 0x4

    shr-int/2addr v4, v10

    and-int/2addr v4, v9

    aput v4, v0, v8

    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 24
    aget-byte v4, v2, v3

    shr-int/2addr v4, v6

    and-int/2addr v4, v9

    aput v4, v0, v8

    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 25
    aget-byte v4, v2, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v0, v8

    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 26
    aget-byte v2, v2, v3

    shr-int/2addr v2, v7

    and-int/2addr v2, v9

    aput v2, v0, v8

    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_3
    add-int/lit8 v0, p2, 0x2

    .line 27
    aget-byte v3, v2, v0

    and-int/2addr v3, v14

    const/16 v4, 0x80

    if-lt v3, v4, :cond_4

    .line 28
    aget-byte v0, v2, v0

    const/16 v2, 0x80

    const/16 v3, 0x32

    invoke-static {v0, v8, v2, v9, v3}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_b

    .line 29
    :cond_4
    aget-byte v0, v2, v0

    const/16 v2, 0x32

    invoke-static {v0, v8, v8, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v0, p2, 0x2

    .line 30
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x3

    .line 31
    aget-byte v2, v2, v3

    and-int/2addr v0, v14

    .line 32
    iput v0, v1, Lk0/hm;->c:I

    move v0, v8

    .line 33
    :goto_2
    iget-object v3, v1, Lk0/hm;->d:[[I

    array-length v11, v3

    if-ge v0, v11, :cond_7

    .line 34
    iget v11, v1, Lk0/hm;->c:I

    aget-object v12, v3, v0

    aget v12, v12, v8

    if-ne v11, v12, :cond_6

    if-eqz v11, :cond_7

    .line 35
    iput v0, v1, Lk0/hm;->b:I

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 36
    :cond_7
    :goto_3
    iget v11, v1, Lk0/hm;->c:I

    const/4 v12, 0x6

    if-eq v11, v12, :cond_d

    if-eq v11, v4, :cond_a

    and-int/2addr v2, v14

    if-ne v2, v9, :cond_8

    .line 37
    array-length v2, v3

    if-ge v0, v2, :cond_25

    .line 38
    aget-object v0, v3, v0

    aget v0, v0, v9

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_8
    if-nez v2, :cond_25

    .line 39
    iget v0, v1, Lk0/hm;->b:I

    array-length v2, v3

    if-ge v0, v2, :cond_9

    if-eq v0, v14, :cond_9

    .line 40
    aget-object v0, v3, v0

    aget v0, v0, v9

    invoke-static {v0, v9}, Ll0/b0;->l0(II)V

    .line 41
    :cond_9
    iput v14, v1, Lk0/hm;->b:I

    goto/16 :goto_b

    :cond_a
    and-int/lit16 v0, v2, 0xff

    if-ne v0, v9, :cond_25

    .line 42
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    if-eq v0, v6, :cond_c

    .line 43
    invoke-static {v7, v8}, Ll0/b0;->l0(II)V

    .line 44
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_b
    const/16 v0, 0x12

    .line 45
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 46
    invoke-static {v0, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_c
    const/16 v0, 0x1a

    .line 47
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 48
    invoke-static {v0, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_d
    and-int/lit16 v0, v2, 0xff

    if-ne v0, v9, :cond_25

    .line 49
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_e

    if-eq v0, v6, :cond_e

    const/16 v0, 0x15

    .line 50
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 51
    invoke-static {v0, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 52
    :cond_e
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    .line 54
    :cond_f
    iget v0, v1, Lk0/hm;->i:I

    if-ne v0, v9, :cond_10

    const/16 v0, 0x7f

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 55
    aget-byte v4, v2, v4

    shl-int/2addr v4, v13

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v14

    or-int/2addr v2, v4

    aput v2, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_10
    add-int/lit8 v0, p2, 0x2

    .line 56
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x3

    .line 57
    aget-byte v2, v2, v3

    and-int/2addr v0, v14

    .line 58
    iput v0, v1, Lk0/hm;->f:I

    move v0, v8

    .line 59
    :goto_4
    iget-object v3, v1, Lk0/hm;->g:[[I

    array-length v4, v3

    if-ge v0, v4, :cond_12

    .line 60
    iget v4, v1, Lk0/hm;->f:I

    aget-object v5, v3, v0

    aget v5, v5, v8

    if-ne v4, v5, :cond_11

    if-eqz v4, :cond_12

    .line 61
    iput v0, v1, Lk0/hm;->e:I

    goto :goto_5

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    :goto_5
    and-int/2addr v2, v14

    if-ne v2, v9, :cond_13

    .line 62
    array-length v2, v3

    if-ge v0, v2, :cond_25

    .line 63
    aget-object v0, v3, v0

    aget v0, v0, v9

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_b

    :cond_13
    if-nez v2, :cond_25

    .line 64
    iget v0, v1, Lk0/hm;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_14

    if-eq v0, v14, :cond_14

    .line 65
    aget-object v0, v3, v0

    aget v0, v0, v9

    invoke-static {v0, v9}, Ll0/b0;->l0(II)V

    .line 66
    :cond_14
    iput v14, v1, Lk0/hm;->e:I

    goto/16 :goto_b

    :cond_15
    add-int/lit8 v6, p2, 0x2

    .line 67
    aget-byte v0, v2, v6

    const/4 v7, 0x6

    shr-int/2addr v0, v7

    and-int/2addr v0, v9

    iput v0, v1, Lk0/hm;->i:I

    const/16 v0, 0x76

    new-array v7, v9, [I

    .line 68
    aget-byte v10, v2, v6

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v9

    aput v4, v7, v8

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v4, v9, [I

    .line 69
    aget-byte v7, v2, v6

    const/4 v10, 0x6

    shr-int/2addr v7, v10

    and-int/2addr v7, v9

    aput v7, v4, v8

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x78

    new-array v4, v9, [I

    .line 70
    aget-byte v7, v2, v6

    const/4 v10, 0x4

    shr-int/2addr v7, v10

    and-int/2addr v7, v5

    aput v7, v4, v8

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v7, p3, -0x4

    const-string v10, "UTF-16BE"

    invoke-direct {v0, v2, v4, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v3

    .line 73
    :goto_6
    aget-byte v4, v2, v6

    const/4 v7, 0x4

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    .line 74
    aget-byte v2, v2, v6

    and-int/2addr v2, v12

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_4
    const/16 v0, 0x79

    new-array v2, v9, [I

    aput v8, v2, v8

    .line 75
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x7a

    new-array v2, v9, [I

    aput v8, v2, v8

    .line 76
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x7b

    new-array v2, v9, [I

    aput v8, v2, v8

    .line 77
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x7c

    new-array v2, v9, [I

    aput v8, v2, v8

    .line 78
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x7d

    new-array v2, v9, [I

    aput v8, v2, v8

    .line 79
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/16 v0, 0x7e

    new-array v2, v9, [I

    aput v8, v2, v8

    .line 80
    invoke-static {v0, v2, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_b

    :pswitch_5
    const/16 v2, 0x7e

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 81
    invoke-static {v2, v3, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_b

    :pswitch_6
    const/16 v2, 0x7d

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 82
    invoke-static {v2, v3, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_b

    :pswitch_7
    const/16 v2, 0x7c

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 83
    invoke-static {v2, v3, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_b

    :pswitch_8
    const/16 v2, 0x7b

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 84
    invoke-static {v2, v3, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_b

    :pswitch_9
    const/16 v2, 0x7a

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 85
    invoke-static {v2, v3, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_b

    :pswitch_a
    const/16 v2, 0x79

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 86
    invoke-static {v2, v3, v0}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_16
    const/16 v0, 0x66

    new-array v3, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 87
    aget-byte v4, v2, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v12

    aput v4, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    :try_start_1
    new-array v3, v9, [I

    aput v8, v3, v8

    .line 88
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x4

    add-int/lit8 v6, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    const-string v7, "UTF-16BE"

    invoke-direct {v4, v2, v6, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0, v3, v4}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_b

    :cond_17
    new-array v0, v9, [I

    add-int/lit8 v3, p2, 0x2

    .line 90
    aget-byte v7, v2, v3

    shr-int/2addr v7, v4

    and-int/2addr v7, v9

    aput v7, v0, v8

    const/16 v7, 0xa

    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 91
    aget-byte v7, v2, v3

    const/4 v11, 0x6

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v0, v8

    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    .line 92
    aget-byte v7, v2, v3

    shr-int/2addr v7, v6

    and-int/2addr v7, v9

    aput v7, v0, v8

    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v7, v9, [I

    .line 93
    aget-byte v10, v2, v3

    const/4 v11, 0x4

    shr-int/2addr v10, v11

    and-int/2addr v10, v9

    aput v10, v7, v8

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x34

    new-array v7, v9, [I

    .line 94
    aget-byte v10, v2, v3

    shr-int/lit8 v5, v10, 0x3

    and-int/2addr v5, v9

    aput v5, v7, v8

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v5, v9, [I

    .line 95
    aget-byte v3, v2, v3

    shr-int/2addr v3, v9

    and-int/2addr v3, v9

    aput v3, v5, v8

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    new-array v0, v9, [I

    add-int/lit8 v3, p2, 0x3

    .line 96
    aget-byte v5, v2, v3

    shr-int/lit8 v4, v5, 0x7

    and-int/2addr v4, v9

    aput v4, v0, v8

    const/16 v4, 0x12

    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v4, v9, [I

    .line 97
    aget-byte v5, v2, v3

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v4, v9, [I

    .line 98
    aget-byte v5, v2, v3

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x31

    new-array v4, v9, [I

    .line 99
    aget-byte v5, v2, v3

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v9

    aput v5, v4, v8

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v4, v9, [I

    .line 100
    aget-byte v3, v2, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v12

    aput v3, v4, v8

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x4

    .line 101
    aget-byte v3, v2, v0

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x5

    .line 102
    aget-byte v5, v2, v4

    and-int/2addr v5, v14

    const-string v6, "persist.fyt.reversetemp"

    .line 103
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 104
    aget-byte v3, v2, v4

    and-int/2addr v3, v14

    .line 105
    aget-byte v0, v2, v0

    and-int/lit16 v5, v0, 0xff

    :cond_18
    if-nez v3, :cond_19

    const/16 v0, 0x1c

    new-array v3, v9, [I

    const/4 v4, -0x2

    aput v4, v3, v8

    .line 106
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_19
    if-ne v3, v14, :cond_1a

    const/16 v0, 0x1c

    new-array v3, v9, [I

    const/4 v4, -0x3

    aput v4, v3, v8

    .line 107
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1a
    const/16 v0, 0x1c

    new-array v4, v9, [I

    aput v3, v4, v8

    .line 108
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    :goto_7
    if-nez v5, :cond_1b

    const/16 v0, 0x1b

    new-array v3, v9, [I

    const/4 v4, -0x2

    aput v4, v3, v8

    .line 109
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    if-ne v5, v14, :cond_1c

    const/16 v0, 0x1b

    new-array v3, v9, [I

    const/4 v4, -0x3

    aput v4, v3, v8

    .line 110
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1c
    const/16 v0, 0x1b

    new-array v3, v9, [I

    aput v5, v3, v8

    .line 111
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v0, 0x25

    new-array v3, v9, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 112
    aget-byte v2, v2, v4

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_1d
    const/16 v0, 0x65

    :try_start_2
    new-array v3, v9, [I

    aput v8, v3, v8

    .line 113
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, -0x2

    const-string v7, "UTF-16BE"

    invoke-direct {v4, v2, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0, v3, v4}, Lk0/qt;->z0(I[ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_b

    :cond_1e
    const-string v0, "LZ_"

    add-int/lit8 v3, p2, 0x2

    .line 115
    aget-byte v3, v2, v3

    and-int/2addr v3, v14

    if-eq v3, v11, :cond_1f

    goto :goto_9

    .line 116
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Oubao_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    add-int/lit8 v3, p2, 0x3

    .line 117
    aget-byte v3, v2, v3

    and-int/2addr v3, v14

    if-eqz v3, :cond_22

    if-eq v3, v9, :cond_21

    if-eq v3, v7, :cond_20

    goto :goto_a

    .line 118
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Andela_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 119
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Astra_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 120
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "All_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "20"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x4

    aget-byte v4, v2, v0

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v0, v2, v0

    shr-int/2addr v0, v8

    and-int/2addr v0, v12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x5

    aget-byte v4, v2, v0

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v0, v2, v0

    shr-int/2addr v0, v8

    and-int/2addr v0, v12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p2, 0x6

    aget-byte v4, v2, v0

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v0, v2, v0

    shr-int/2addr v0, v8

    and-int/2addr v0, v12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_V"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x8

    invoke-direct {v0, v2, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_b

    :cond_23
    const/16 v0, 0x62

    new-array v3, v9, [I

    add-int/lit8 v6, p2, 0x2

    .line 123
    aget-byte v7, v2, v6

    shr-int/2addr v7, v4

    and-int/2addr v7, v9

    aput v7, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v3, v9, [I

    .line 124
    aget-byte v7, v2, v6

    const/4 v10, 0x4

    shr-int/2addr v7, v10

    and-int/2addr v7, v4

    aput v7, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    .line 125
    iget v0, v1, Lk0/hm;->h:I

    aget-byte v3, v2, v6

    shr-int/2addr v3, v10

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_24

    .line 126
    aget-byte v0, v2, v6

    shr-int/2addr v0, v10

    and-int/2addr v0, v4

    iput v0, v1, Lk0/hm;->h:I

    if-ne v0, v9, :cond_24

    .line 127
    invoke-virtual/range {p0 .. p0}, Lk0/hm;->a3()V

    :cond_24
    const/16 v0, 0x64

    new-array v3, v9, [I

    .line 128
    aget-byte v2, v2, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    aput v2, v3, v8

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    :cond_25
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/hm;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/hm;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/hm;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x80

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
    .locals 4

    const/4 p3, 0x3

    const/4 p4, 0x2

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x90

    aput v0, p1, v3

    aput v3, p1, p4

    .line 1
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x82

    aput v0, p1, v3

    aput v3, p1, p4

    .line 2
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final a3()V
    .locals 3

    const-string v0, "com.syu.carinfo.luz.oubao.Luz_Oubao_CarInfo"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
