.class public Lk0/mr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Z

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/mr;->c:I

    const/4 v1, 0x5

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

    const/4 v5, 0x4

    aput-object v3, v1, v5

    iput-object v1, p0, Lk0/mr;->d:[[I

    .line 4
    iput v0, p0, Lk0/mr;->f:I

    new-array v1, v4, [[I

    new-array v2, v2, [I

    .line 5
    fill-array-data v2, :array_5

    aput-object v2, v1, v0

    iput-object v1, p0, Lk0/mr;->g:[[I

    .line 6
    iput-boolean v0, p0, Lk0/mr;->h:Z

    .line 7
    new-instance v0, Lk0/mr$a;

    invoke-direct {v0, p0}, Lk0/mr$a;-><init>(Lk0/mr;)V

    iput-object v0, p0, Lk0/mr;->i:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/mr$b;

    invoke-direct {v0, p0}, Lk0/mr$b;-><init>(Lk0/mr;)V

    iput-object v0, p0, Lk0/mr;->j:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/mr$c;

    invoke-direct {v0, p0}, Lk0/mr$c;-><init>(Lk0/mr;)V

    iput-object v0, p0, Lk0/mr;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/mr$d;

    invoke-direct {v0, p0}, Lk0/mr$d;-><init>(Lk0/mr;)V

    iput-object v0, p0, Lk0/mr;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/mr$e;

    invoke-direct {v0, p0}, Lk0/mr$e;-><init>(Lk0/mr;)V

    iput-object v0, p0, Lk0/mr;->m:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x5
    .end array-data
.end method

.method public static synthetic a3(Lk0/mr;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/mr;->b3(BLjava/lang/String;)V

    return-void
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
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/mr;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/mr;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/mr;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/mr;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lk0/mr;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x2f

    const-string v4, "persist.fyt.leftrightlighttype"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v3, -0x2e

    const/16 v8, 0x64

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/16 v11, 0xff

    if-eq v2, v3, :cond_19

    const/16 v3, 0x24

    const/4 v12, 0x5

    if-eq v2, v3, :cond_17

    const/16 v3, 0x29

    if-eq v2, v3, :cond_16

    const/16 v3, 0x30

    if-eq v2, v3, :cond_15

    const/16 v3, 0x32

    if-eq v2, v3, :cond_14

    const/16 v3, 0x40

    const/16 v13, 0x7d

    const v14, 0xff00

    const/16 v15, 0x8

    if-eq v2, v3, :cond_11

    if-eq v2, v13, :cond_c

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 7
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 8
    iput v2, v0, Lk0/mr;->f:I

    move v2, v6

    .line 9
    :goto_0
    iget-object v3, v0, Lk0/mr;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 10
    iget v4, v0, Lk0/mr;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_0

    if-eqz v4, :cond_1

    .line 11
    iput v2, v0, Lk0/mr;->e:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    and-int/2addr v1, v11

    if-ne v1, v7, :cond_2

    .line 12
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 13
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_2
    if-nez v1, :cond_1c

    .line 14
    iget v1, v0, Lk0/mr;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_3

    if-eq v1, v11, :cond_3

    .line 15
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 16
    :cond_3
    iput v11, v0, Lk0/mr;->e:I

    goto/16 :goto_7

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 18
    aget-byte v1, v1, v3

    and-int/2addr v2, v11

    .line 19
    iput v2, v0, Lk0/mr;->c:I

    move v2, v6

    .line 20
    :goto_2
    iget-object v3, v0, Lk0/mr;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 21
    iget v4, v0, Lk0/mr;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_4

    if-eqz v4, :cond_5

    .line 22
    iput v2, v0, Lk0/mr;->b:I

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_5
    :goto_3
    iget v4, v0, Lk0/mr;->c:I

    if-eq v4, v5, :cond_a

    if-eq v4, v10, :cond_8

    and-int/2addr v1, v11

    if-ne v1, v7, :cond_6

    .line 24
    array-length v1, v3

    if-ge v2, v1, :cond_1c

    .line 25
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_6
    if-nez v1, :cond_1c

    .line 26
    iget v1, v0, Lk0/mr;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_7

    if-eq v1, v11, :cond_7

    .line 27
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 28
    :cond_7
    iput v11, v0, Lk0/mr;->b:I

    goto/16 :goto_7

    :cond_8
    and-int/2addr v1, v11

    if-ne v1, v7, :cond_1c

    .line 29
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_9

    .line 30
    invoke-static {v5, v6}, Ll0/b0;->l0(II)V

    .line 31
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_9
    const/16 v1, 0x12

    .line 32
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 33
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_a
    and-int/2addr v1, v11

    if-ne v1, v7, :cond_1c

    .line 34
    sget v1, Lh0/c;->E:I

    if-eq v1, v5, :cond_b

    if-eq v1, v10, :cond_b

    if-eq v1, v12, :cond_b

    .line 35
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 36
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_b
    const/16 v1, 0x1a

    .line 37
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 38
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eq v2, v7, :cond_f

    if-eq v2, v5, :cond_e

    if-eq v2, v15, :cond_d

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v2, p2, 0x3

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 41
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 42
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    .line 43
    iput-boolean v7, v0, Lk0/mr;->h:Z

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v2, p2, 0x4

    .line 44
    aget-byte v2, v1, v2

    shl-int/2addr v2, v15

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    or-int/2addr v1, v2

    div-int/2addr v1, v8

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 46
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v9, [I

    aput v7, v4, v6

    aput v1, v4, v7

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    .line 47
    :cond_f
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    add-int/lit8 v2, p2, 0x3

    .line 48
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_11
    const/16 v2, 0x79

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 50
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    shl-int/2addr v5, v15

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 51
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 52
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xe

    .line 53
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x1a

    .line 54
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    if-eqz v2, :cond_13

    if-ne v2, v11, :cond_12

    goto :goto_4

    :cond_12
    mul-int/2addr v2, v12

    add-int/lit16 v2, v2, 0x258

    .line 55
    invoke-static {v2}, Lu0/d;->B3(I)V

    goto :goto_5

    .line 56
    :cond_13
    :goto_4
    invoke-static {v6}, Lu0/d;->B3(I)V

    :goto_5
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x1b

    .line 57
    aget-byte v3, v1, v3

    and-int/2addr v3, v11

    aput v3, v2, v6

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x1d

    .line 58
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x1e

    aget-byte v5, v1, v5

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x1f

    .line 59
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x20

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_14
    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 60
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    .line 61
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    .line 62
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 63
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/lit8 v8, v8, 0xf

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    .line 64
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 65
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    .line 66
    aget-byte v8, v1, v4

    shr-int/2addr v8, v12

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    .line 67
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    .line 68
    aget-byte v8, v1, v4

    shr-int/2addr v8, v9

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    .line 69
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 70
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 71
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 72
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 73
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 74
    :cond_15
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v11

    add-int/lit8 v3, p2, 0x3

    .line 76
    aget-byte v1, v1, v3

    and-int/2addr v1, v11

    .line 77
    iget-boolean v3, v0, Lk0/mr;->h:Z

    if-nez v3, :cond_1c

    const/16 v3, 0x1200

    .line 78
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v1, v1, v2

    and-int/2addr v1, v11

    const-string v2, "persist.syu.reversefrontdoor"

    .line 80
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 81
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 82
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_18
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 83
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 84
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 85
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 86
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 87
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 88
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_19
    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 89
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 90
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x4

    .line 91
    aget-byte v3, v1, v3

    and-int/2addr v3, v11

    aput v3, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 92
    aget-byte v4, v1, v4

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 93
    aget-byte v8, v1, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    .line 94
    aget-byte v8, v1, v4

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    .line 95
    aget-byte v8, v1, v4

    shr-int/2addr v8, v6

    and-int/2addr v8, v5

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    .line 96
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    .line 97
    :cond_1a
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1b

    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->b(III)V

    goto :goto_7

    :cond_1b
    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->a(III)V

    :cond_1c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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
    iget-object v0, p0, Lk0/mr;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/mr;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/mr;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/mr;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lk0/mr;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, p3, [I

    aput v0, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v3, p1, v1

    .line 2
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    aput v0, p1, v2

    const/16 v0, 0xc6

    aput v0, p1, v3

    aput v1, p1, v1

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b3(BLjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    const-string p2, "Unkown"

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 2
    array-length v0, p2

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    const/16 v0, 0x24

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    .line 3
    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xe3

    aput v0, v2, v3

    const/16 v0, 0xcb

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v0, 0x2

    const/16 v4, 0x21

    aput v4, v2, v0

    const/4 v0, 0x3

    aput p1, v2, v0

    :goto_2
    if-ge v3, v1, :cond_3

    add-int/lit8 p1, v3, 0x4

    .line 4
    aget-byte v0, p2, v3

    aput v0, v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
