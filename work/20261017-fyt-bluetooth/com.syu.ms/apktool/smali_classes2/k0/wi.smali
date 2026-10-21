.class public Lk0/wi;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/wi;->c:I

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

    iput-object v1, p0, Lk0/wi;->d:[[I

    .line 4
    new-instance v0, Lk0/wi$a;

    invoke-direct {v0, p0}, Lk0/wi$a;-><init>(Lk0/wi;)V

    iput-object v0, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/wi$b;

    invoke-direct {v0, p0}, Lk0/wi$b;-><init>(Lk0/wi;)V

    iput-object v0, p0, Lk0/wi;->f:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lk0/wi;->g:I

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
        0x6
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_8
    .array-data 4
        0x17
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x88
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->j:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iget-object v0, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    iget-object v0, p0, Lk0/wi;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1d

    const/4 v4, 0x5

    const/16 v5, 0xff

    if-eq v2, v3, :cond_18

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_17

    const/16 v6, 0x20

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v6, :cond_f

    const/16 v10, 0x24

    const/4 v12, 0x2

    if-eq v2, v10, :cond_d

    const/16 v4, 0x29

    if-eq v2, v4, :cond_b

    const/16 v4, 0x30

    if-eq v2, v4, :cond_a

    const/16 v4, 0x35

    if-eq v2, v4, :cond_9

    const/16 v4, 0x55

    if-eq v2, v4, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v4, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 3
    aget-byte v12, v1, v7

    add-int/lit8 v14, p2, 0x4

    .line 4
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x5

    .line 5
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x6

    .line 6
    aget-byte v16, v1, v16

    const-string v10, "persist.fyt.reversetemp"

    .line 7
    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 8
    aget-byte v4, v1, v7

    and-int/2addr v4, v5

    .line 9
    aget-byte v2, v1, v2

    and-int/lit16 v12, v2, 0xff

    :cond_1
    and-int/lit16 v2, v4, 0xff

    const/4 v7, -0x1

    const/4 v10, -0x3

    const/16 v17, -0x2

    const/16 v5, 0x50

    const/16 v3, 0x10

    const/16 v11, 0x1b

    if-ne v4, v3, :cond_2

    new-array v2, v9, [I

    aput v17, v2, v8

    .line 10
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v4, v5, :cond_3

    new-array v2, v9, [I

    aput v10, v2, v8

    .line 11
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-lt v4, v6, :cond_4

    const/16 v13, 0x40

    if-gt v4, v13, :cond_4

    new-array v4, v9, [I

    aput v2, v4, v8

    .line 12
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v2, v9, [I

    aput v7, v2, v8

    .line 13
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v2, v12, 0xff

    const/16 v4, 0x1c

    if-ne v12, v3, :cond_5

    new-array v2, v9, [I

    aput v17, v2, v8

    .line 14
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    if-ne v12, v5, :cond_6

    new-array v2, v9, [I

    aput v10, v2, v8

    .line 15
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    if-lt v12, v6, :cond_7

    const/16 v5, 0x40

    if-gt v12, v5, :cond_7

    new-array v5, v9, [I

    aput v2, v5, v8

    .line 16
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v2, v9, [I

    aput v7, v2, v8

    .line 17
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x15

    new-array v4, v9, [I

    shr-int/lit8 v5, v14, 0x0

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v4, v8

    .line 18
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v4, v9, [I

    const/4 v5, 0x4

    shr-int/lit8 v5, v14, 0x4

    and-int/2addr v5, v6

    aput v5, v4, v8

    .line 19
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    packed-switch v5, :pswitch_data_0

    move v2, v8

    :goto_2
    move v4, v2

    :goto_3
    move v5, v4

    goto :goto_4

    :pswitch_0
    move v2, v9

    goto :goto_2

    :pswitch_1
    move v4, v8

    move v5, v4

    move v2, v9

    goto :goto_4

    :pswitch_2
    move v5, v8

    move v2, v9

    move v4, v2

    goto :goto_4

    :pswitch_3
    move v4, v8

    move v2, v9

    move v5, v2

    goto :goto_4

    :pswitch_4
    move v2, v8

    move v4, v2

    move v5, v9

    goto :goto_4

    :pswitch_5
    move v2, v8

    move v4, v9

    goto :goto_3

    :pswitch_6
    move v2, v8

    move v5, v2

    move v4, v9

    :goto_4
    new-array v6, v9, [I

    aput v2, v6, v8

    const/16 v2, 0x12

    .line 20
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v9, [I

    aput v4, v6, v8

    .line 21
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v9, [I

    aput v5, v4, v8

    .line 22
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x47

    new-array v4, v9, [I

    shr-int/lit8 v5, v15, 0x6

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 23
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x46

    new-array v4, v9, [I

    shr-int/lit8 v5, v15, 0x7

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 24
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v4, v9, [I

    shr-int/lit8 v5, v16, 0x0

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 25
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v4, v9, [I

    shr-int/lit8 v5, v16, 0x1

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 26
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v9, [I

    shr-int/lit8 v5, v16, 0x2

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 27
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v4, v9, [I

    shr-int/lit8 v5, v16, 0x3

    and-int/2addr v5, v9

    aput v5, v4, v8

    .line 28
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v16, 0x5

    and-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0x24

    .line 29
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v16, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v8

    .line 30
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v16, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/16 v3, 0xf

    .line 31
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 32
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_8

    .line 33
    invoke-static {v8}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    .line 34
    :cond_8
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    .line 35
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 37
    aget-byte v1, v1, v3

    const/16 v3, 0x408

    new-array v4, v9, [I

    const/16 v5, 0xff

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    aput v1, v4, v8

    .line 38
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 39
    :cond_a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v2, p2, 0x3

    .line 40
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x168

    if-eqz v3, :cond_c

    add-int/lit8 v3, p2, 0x2

    .line 41
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    const/16 v2, 0xf

    and-int/2addr v1, v2

    invoke-static {v3, v1, v8, v4}, Lk0/qt;->j(IIII)V

    goto/16 :goto_9

    .line 42
    :cond_c
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xf00

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    rsub-int v1, v1, 0x1000

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    const/16 v3, 0xf

    and-int/2addr v1, v3

    .line 43
    invoke-static {v2, v1, v9, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 45
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 46
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 47
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 48
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 49
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x4

    .line 50
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 51
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 52
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 53
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 55
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 56
    iput v2, v0, Lk0/wi;->c:I

    move v2, v8

    .line 57
    :goto_6
    iget-object v3, v0, Lk0/wi;->d:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_11

    .line 58
    iget v5, v0, Lk0/wi;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v8

    if-ne v5, v6, :cond_10

    if-eqz v5, :cond_11

    .line 59
    iput v2, v0, Lk0/wi;->b:I

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 60
    :cond_11
    :goto_7
    iget v5, v0, Lk0/wi;->c:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_15

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v9, :cond_12

    .line 61
    array-length v1, v3

    if-ge v2, v1, :cond_19

    .line 62
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_12
    if-nez v1, :cond_19

    .line 63
    iget v1, v0, Lk0/wi;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_13

    const/16 v2, 0xff

    if-eq v1, v2, :cond_14

    .line 64
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_13
    const/16 v2, 0xff

    .line 65
    :cond_14
    :goto_8
    iput v2, v0, Lk0/wi;->b:I

    goto/16 :goto_9

    :cond_15
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v9, :cond_19

    .line 66
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_16

    if-eq v1, v4, :cond_16

    const/16 v1, 0x12

    .line 67
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 68
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_16
    const/16 v1, 0x1a

    .line 69
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 70
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 74
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_9

    :cond_18
    move v3, v5

    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 76
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 77
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 78
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_19
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
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
    iget-object v0, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/wi;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/wi;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget p1, p2, p1

    invoke-virtual {p0, p1}, Lk0/wi;->a3(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/wi;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/wi;->g:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x33

    aput v4, v3, v1

    const/4 v1, 0x4

    aput v1, v3, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v3, v2

    if-nez v0, :cond_0

    const/16 p1, 0x22

    goto :goto_0

    :cond_0
    const/16 p1, 0xcc

    :goto_0
    aput p1, v3, v1

    const/4 p1, 0x5

    aput v5, v3, p1

    const/4 p1, 0x6

    aput v5, v3, p1

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
