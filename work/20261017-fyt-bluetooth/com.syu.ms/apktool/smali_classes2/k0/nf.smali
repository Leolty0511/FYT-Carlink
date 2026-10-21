.class public Lk0/nf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/nf;->c:I

    const/16 v1, 0xf

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

    const/16 v2, 0xe

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/nf;->d:[[I

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
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x12
        0x19
    .end array-data

    :array_8
    .array-data 4
        0x20
        0x7
    .end array-data

    :array_9
    .array-data 4
        0x21
        0x8
    .end array-data

    :array_a
    .array-data 4
        0x22
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x23
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x25
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x26
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x27
        0x1
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
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->l:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 9
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v1, v0, Lk0/mt;->e:I

    .line 11
    iput v2, v0, Lk0/mt;->f:I

    .line 12
    iput v1, v0, Lk0/mt;->l:I

    .line 13
    iput v1, v0, Lk0/mt;->g:I

    .line 14
    iput v1, v0, Lk0/mt;->o:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa6
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x21

    const/16 v5, 0x20

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v5, :cond_b

    const/4 v5, 0x2

    if-eq v2, v4, :cond_2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/16 v3, 0x61

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const/16 v2, 0x62

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 3
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 4
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 5
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 6
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 7
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 8
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v7

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 12
    aget-byte v4, v1, v4

    add-int/lit8 v9, p2, 0x4

    .line 13
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x5

    .line 14
    aget-byte v11, v1, v10

    add-int/lit8 v12, p2, 0x6

    .line 15
    aget-byte v13, v1, v12

    const/16 v14, 0x35

    new-array v15, v8, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    .line 16
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xb

    new-array v15, v8, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    .line 17
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xc

    new-array v15, v8, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    .line 18
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xe

    new-array v15, v8, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v7

    .line 19
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    new-array v14, v8, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v14, v7

    const/16 v2, 0x10

    .line 20
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    and-int/2addr v4, v3

    if-eq v4, v8, :cond_7

    if-eq v4, v5, :cond_6

    if-eq v4, v6, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    move v5, v7

    move v6, v5

    move v14, v6

    move v15, v14

    goto :goto_0

    :cond_3
    move v5, v7

    move v6, v5

    move v14, v6

    move v15, v8

    goto :goto_0

    :cond_4
    move v5, v7

    move v15, v5

    move v6, v8

    move v14, v6

    goto :goto_0

    :cond_5
    move v5, v7

    move v14, v5

    move v15, v14

    move v6, v8

    goto :goto_0

    :cond_6
    move v14, v7

    move v15, v14

    move v5, v8

    move v6, v5

    goto :goto_0

    :cond_7
    move v6, v7

    move v14, v6

    move v15, v14

    move v5, v8

    :goto_0
    const/16 v2, 0x4d

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    aput v5, v3, v7

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v8, [I

    aput v6, v3, v7

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v8, [I

    aput v14, v3, v7

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    aput v15, v3, v7

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v9, 0xff

    aput v5, v3, v7

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 27
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    aget-byte v11, v1, v12

    .line 29
    aget-byte v13, v1, v10

    :cond_8
    and-int/lit16 v1, v11, 0xff

    const/4 v2, -0x1

    const/16 v3, 0x1b

    if-lez v1, :cond_9

    const/16 v4, 0x10

    if-ge v1, v4, :cond_9

    new-array v4, v8, [I

    aput v1, v4, v7

    .line 30
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v1, v8, [I

    aput v2, v1, v7

    .line 31
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0xff

    and-int/2addr v1, v13

    const/16 v3, 0x1c

    if-lez v1, :cond_a

    const/16 v4, 0x10

    if-ge v1, v4, :cond_a

    new-array v2, v8, [I

    aput v1, v2, v7

    .line 32
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_a
    new-array v1, v8, [I

    aput v2, v1, v7

    .line 33
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 35
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 36
    iput v2, v0, Lk0/nf;->c:I

    move v2, v7

    .line 37
    :goto_2
    iget-object v3, v0, Lk0/nf;->d:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_d

    .line 38
    iget v6, v0, Lk0/nf;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v7

    if-ne v6, v9, :cond_c

    if-eqz v6, :cond_d

    .line 39
    iput v2, v0, Lk0/nf;->b:I

    goto :goto_3

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 40
    :cond_d
    :goto_3
    iget v6, v0, Lk0/nf;->c:I

    const/16 v9, 0xa

    if-eq v6, v9, :cond_15

    if-eq v6, v5, :cond_13

    if-eq v6, v4, :cond_11

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_e

    .line 41
    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 42
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 43
    :cond_e
    iget v1, v0, Lk0/nf;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_f

    const/16 v2, 0xff

    if-eq v1, v2, :cond_10

    .line 44
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_f
    const/16 v2, 0xff

    .line 45
    :cond_10
    :goto_4
    iput v2, v0, Lk0/nf;->b:I

    goto :goto_7

    :cond_11
    const/16 v2, 0xff

    move v3, v7

    :goto_5
    and-int/lit16 v4, v1, 0xff

    const/16 v5, 0x8

    if-ge v3, v4, :cond_12

    .line 46
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 47
    :cond_12
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_13
    const/16 v2, 0xff

    move v3, v7

    :goto_6
    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x7

    if-ge v3, v4, :cond_14

    .line 48
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 49
    :cond_14
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v8, :cond_17

    .line 50
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_16

    .line 51
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto :goto_7

    :cond_16
    if-ne v1, v8, :cond_17

    .line 52
    invoke-static {v7}, Lk0/qt;->a(I)V

    :cond_17
    :goto_7
    return-void
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

    const/16 p3, 0x69

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
    .locals 2

    const/4 p3, 0x4

    if-eqz p1, :cond_1

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p3, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    array-length p1, p2

    const/4 p4, 0x1

    if-le p1, p4, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v0, 0xe3

    const/4 v1, 0x0

    aput v0, p1, v1

    const/16 v0, -0x7d

    aput v0, p1, p4

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    .line 3
    aget v1, p2, v1

    int-to-byte v1, v1

    aput v1, p1, v0

    aget p2, p2, p4

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data
.end method
