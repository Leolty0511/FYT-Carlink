.class public Lk0/o8;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/o8;->c:I

    const/16 v1, 0x1f

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

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/o8;->d:[[I

    .line 4
    iput v0, p0, Lk0/o8;->e:I

    .line 5
    iput v0, p0, Lk0/o8;->f:I

    .line 6
    iput-boolean v0, p0, Lk0/o8;->g:Z

    .line 7
    new-instance v0, Lk0/o8$a;

    invoke-direct {v0, p0}, Lk0/o8$a;-><init>(Lk0/o8;)V

    iput-object v0, p0, Lk0/o8;->h:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x23
    .end array-data

    :array_2
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x31
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x32
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x82
        0xb
    .end array-data

    :array_b
    .array-data 4
        0x83
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x84
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x85
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x86
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x87
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x88
        0x37
    .end array-data

    :array_11
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_12
    .array-data 4
        0x8a
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x8b
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x8c
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x8d
        0x4c
    .end array-data

    :array_16
    .array-data 4
        0x8e
        0xd
    .end array-data

    :array_17
    .array-data 4
        0xa1
        0x28
    .end array-data

    :array_18
    .array-data 4
        0xa2
        0x29
    .end array-data

    :array_19
    .array-data 4
        0xa3
        0x2a
    .end array-data

    :array_1a
    .array-data 4
        0xa4
        0x2b
    .end array-data

    :array_1b
    .array-data 4
        0xa5
        0x2c
    .end array-data

    :array_1c
    .array-data 4
        0xa6
        0x2d
    .end array-data

    :array_1d
    .array-data 4
        0xa7
        0x27
    .end array-data

    :array_1e
    .array-data 4
        0xa8
        0x40
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/o8;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v4, :cond_1d

    const/16 v8, 0x103

    const/16 v9, 0xff

    if-eq v2, v3, :cond_16

    const/16 v10, 0x24

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v2, v10, :cond_14

    const/16 v10, 0x50

    if-eq v2, v10, :cond_b

    const/16 v3, 0x55

    if-eq v2, v3, :cond_7

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_9

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 4
    aget-byte v3, v1, v3

    and-int/2addr v2, v9

    .line 5
    iput v2, v0, Lk0/o8;->e:I

    and-int/lit16 v2, v3, 0xff

    .line 6
    iput v2, v0, Lk0/o8;->f:I

    add-int/lit8 v2, p2, 0x4

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/o8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/o8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 9
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/o8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 10
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lk0/o8;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 13
    aget-byte v3, v1, v3

    and-int/2addr v2, v9

    .line 14
    iput v2, v0, Lk0/o8;->e:I

    and-int/lit16 v2, v3, 0xff

    .line 15
    iput v2, v0, Lk0/o8;->f:I

    add-int/lit8 v2, p2, 0x4

    .line 16
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/o8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/o8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/o8;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 19
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lk0/o8;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    .line 20
    :pswitch_2
    iget-boolean v2, v0, Lk0/o8;->g:Z

    if-nez v2, :cond_24

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x1e00

    const/16 v4, 0x1300

    invoke-static {v2, v1, v3, v7, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_9

    :goto_0
    :pswitch_3
    add-int/lit8 v2, p3, -0x3

    if-ge v6, v2, :cond_1

    add-int/lit8 v2, v6, 0x2

    .line 22
    aget-byte v2, v1, v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v6, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 23
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v1, v3, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    if-eq v2, v7, :cond_5

    const/16 v3, 0x8

    if-eq v2, v5, :cond_4

    if-eq v2, v3, :cond_3

    goto/16 :goto_9

    :cond_3
    add-int/lit8 v2, p2, 0x3

    .line 25
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 26
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 27
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    .line 28
    iput-boolean v7, v0, Lk0/o8;->g:Z

    goto/16 :goto_9

    :cond_4
    add-int/lit8 v2, p2, 0x4

    .line 29
    aget-byte v2, v1, v2

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v9

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 31
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v12, [I

    aput v7, v4, v6

    aput v1, v4, v7

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 32
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v2, p2, 0x3

    .line 33
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_9

    :cond_6
    add-int/lit8 v2, p2, 0x3

    .line 34
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_9

    .line 35
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, p2, 0x9

    .line 36
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_8

    goto/16 :goto_9

    :cond_8
    const/16 v2, 0x28

    if-ge v1, v2, :cond_9

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0xa

    rsub-int v6, v2, 0x3e8

    goto :goto_1

    :cond_9
    if-lt v1, v2, :cond_a

    const/16 v3, 0xc8

    if-gt v1, v3, :cond_a

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v6, v1, 0x3e8

    .line 37
    :cond_a
    :goto_1
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_9

    .line 38
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 40
    aget-byte v1, v1, v5

    and-int/2addr v2, v9

    or-int/lit16 v5, v2, 0x80

    .line 41
    iput v5, v0, Lk0/o8;->c:I

    move v5, v6

    .line 42
    :goto_2
    iget-object v10, v0, Lk0/o8;->d:[[I

    array-length v11, v10

    if-ge v5, v11, :cond_d

    .line 43
    iget v11, v0, Lk0/o8;->c:I

    aget-object v12, v10, v5

    aget v12, v12, v6

    if-ne v11, v12, :cond_c

    if-eqz v11, :cond_d

    .line 44
    iput v5, v0, Lk0/o8;->b:I

    goto :goto_3

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    if-lt v2, v4, :cond_11

    const/16 v11, 0x13

    if-gt v2, v11, :cond_11

    if-ne v2, v4, :cond_e

    .line 45
    invoke-static {}, Lu0/d;->O1()V

    goto/16 :goto_9

    :cond_e
    const/16 v1, 0x11

    if-ne v2, v1, :cond_f

    .line 46
    invoke-static {}, Lu0/d;->M1()V

    goto/16 :goto_9

    :cond_f
    if-ne v2, v3, :cond_10

    .line 47
    invoke-static {}, Lu0/d;->I1()V

    goto/16 :goto_9

    .line 48
    :cond_10
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_9

    .line 49
    :cond_11
    sget v2, Lk0/nt;->a:I

    if-eq v2, v8, :cond_12

    const v3, 0x10118

    if-eq v2, v3, :cond_12

    const v3, 0x30118

    if-eq v2, v3, :cond_12

    const v3, 0x40118

    if-eq v2, v3, :cond_12

    const/16 v3, 0x197

    if-eq v2, v3, :cond_12

    const v3, 0x10197

    if-ne v2, v3, :cond_24

    :cond_12
    and-int/2addr v1, v9

    if-eqz v1, :cond_13

    .line 50
    array-length v1, v10

    if-ge v5, v1, :cond_24

    .line 51
    aget-object v1, v10, v5

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 52
    :cond_13
    array-length v1, v10

    if-gt v5, v1, :cond_24

    .line 53
    iget v1, v0, Lk0/o8;->b:I

    aget-object v1, v10, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 55
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_15

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 56
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 57
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 58
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 59
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 60
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 61
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x5

    .line 62
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 63
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    .line 64
    :cond_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 66
    aget-byte v1, v1, v3

    and-int/2addr v2, v9

    .line 67
    iput v2, v0, Lk0/o8;->c:I

    move v3, v6

    .line 68
    :goto_5
    iget-object v4, v0, Lk0/o8;->d:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_18

    .line 69
    iget v5, v0, Lk0/o8;->c:I

    aget-object v10, v4, v3

    aget v10, v10, v6

    if-ne v5, v10, :cond_17

    if-eqz v5, :cond_18

    .line 70
    iput v3, v0, Lk0/o8;->b:I

    goto :goto_6

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 71
    :cond_18
    :goto_6
    sget v5, Lk0/nt;->a:I

    if-eq v5, v8, :cond_1b

    const v8, 0x10118

    if-eq v5, v8, :cond_1b

    const v8, 0x30118

    if-eq v5, v8, :cond_1b

    const v8, 0x40118

    if-eq v5, v8, :cond_1b

    const/16 v8, 0x197

    if-eq v5, v8, :cond_1b

    const v8, 0x10197

    if-ne v5, v8, :cond_19

    goto :goto_7

    :cond_19
    if-eqz v2, :cond_1a

    .line 72
    array-length v1, v4

    if-ge v3, v1, :cond_24

    .line 73
    aget-object v1, v4, v3

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 74
    :cond_1a
    array-length v1, v4

    if-gt v3, v1, :cond_24

    .line 75
    iget v1, v0, Lk0/o8;->b:I

    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_1b
    :goto_7
    and-int/2addr v1, v9

    if-eqz v1, :cond_1c

    .line 76
    array-length v1, v4

    if-ge v3, v1, :cond_24

    .line 77
    aget-object v1, v4, v3

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 78
    :cond_1c
    array-length v1, v4

    if-gt v3, v1, :cond_24

    .line 79
    iget v1, v0, Lk0/o8;->b:I

    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v8, p2, 0x3

    .line 81
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x4

    .line 82
    aget-byte v9, v1, v9

    const/16 v10, 0x19

    new-array v11, v7, [I

    aput v2, v11, v6

    .line 83
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v10, v7, [I

    shr-int/lit8 v11, v8, 0x7

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 84
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v10, v7, [I

    shr-int/lit8 v11, v8, 0x6

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 85
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v10, v8, 0x5

    and-int/2addr v10, v7

    aput v10, v2, v6

    .line 86
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v7, [I

    shr-int/lit8 v10, v8, 0x4

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 87
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v4, v8, 0x3

    and-int/2addr v4, v7

    aput v4, v2, v6

    .line 88
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v7, [I

    shr-int/lit8 v4, v8, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v7, [I

    shr-int/lit8 v4, v8, 0x0

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 90
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 92
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    shr-int/lit8 v4, v9, 0x0

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    .line 93
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 94
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x6

    .line 95
    aget-byte v8, v1, v4

    const-string v9, "persist.fyt.reversetemp"

    .line 96
    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 97
    aget-byte v3, v1, v4

    .line 98
    aget-byte v8, v1, v2

    :cond_1e
    const/16 v1, 0x37

    const/4 v2, -0x3

    const/4 v4, -0x2

    const/16 v9, 0x39

    const/16 v10, 0x1b

    if-eq v3, v7, :cond_20

    if-eq v3, v9, :cond_1f

    if-lt v3, v5, :cond_21

    if-ge v3, v1, :cond_21

    const-wide v11, 0x4066800000000000L    # 180.0

    sub-int/2addr v3, v7

    int-to-double v13, v3

    const-wide/high16 v15, 0x4004000000000000L    # 2.5

    mul-double/2addr v13, v15

    add-double/2addr v13, v11

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v13, v11

    double-to-int v3, v13

    new-array v11, v7, [I

    aput v3, v11, v6

    .line 99
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1f
    new-array v3, v7, [I

    aput v2, v3, v6

    .line 100
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_20
    new-array v3, v7, [I

    aput v4, v3, v6

    .line 101
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :cond_21
    :goto_8
    const/16 v3, 0x1c

    if-eq v8, v7, :cond_23

    if-eq v8, v9, :cond_22

    if-lt v8, v5, :cond_24

    if-ge v8, v1, :cond_24

    const-wide v1, 0x4066800000000000L    # 180.0

    sub-int/2addr v8, v7

    int-to-double v4, v8

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    mul-double/2addr v4, v8

    add-double/2addr v4, v1

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v1

    double-to-int v1, v4

    new-array v2, v7, [I

    aput v1, v2, v6

    .line 102
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_22
    new-array v1, v7, [I

    aput v2, v1, v6

    .line 103
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_23
    new-array v1, v7, [I

    aput v4, v1, v6

    .line 104
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :cond_24
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/o8;->h:Ljava/lang/Runnable;

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

    return-void
.end method

.method public final a3(I)I
    .locals 4

    .line 1
    iget v0, p0, Lk0/o8;->e:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v1, :cond_2

    .line 2
    sget v0, Lk0/nt;->a:I

    const/16 v3, 0x103

    if-eq v0, v3, :cond_1

    const v3, 0x10118

    if-eq v0, v3, :cond_1

    const v3, 0x30118

    if-eq v0, v3, :cond_1

    const v3, 0x40118

    if-eq v0, v3, :cond_1

    const/16 v3, 0x197

    if-eq v0, v3, :cond_1

    const v3, 0x10197

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    add-int/lit8 v2, p1, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x7f

    if-eq p1, v0, :cond_5

    const/16 v0, 0xff

    if-eq p1, v0, :cond_5

    .line 3
    div-int/2addr p1, v2

    add-int/lit8 v2, p1, -0x2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 4
    iget v0, p0, Lk0/o8;->f:I

    if-gt v0, v2, :cond_3

    if-lez v0, :cond_3

    .line 5
    div-int/2addr v2, v0

    mul-int/2addr v2, p1

    goto :goto_1

    .line 6
    :cond_3
    div-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 7
    div-int v2, p1, v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    return v2
.end method
