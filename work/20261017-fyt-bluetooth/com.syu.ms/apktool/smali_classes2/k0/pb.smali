.class public Lk0/pb;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/Runnable;

.field public h:J

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/pb;->c:I

    const/16 v1, 0x18

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

    new-array v2, v2, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/pb;->d:[[I

    .line 4
    iput v0, p0, Lk0/pb;->e:I

    .line 5
    iput-boolean v0, p0, Lk0/pb;->f:Z

    .line 6
    new-instance v0, Lk0/pb$a;

    invoke-direct {v0, p0}, Lk0/pb$a;-><init>(Lk0/pb;)V

    iput-object v0, p0, Lk0/pb;->g:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lk0/pb;->h:J

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lk0/pb;->i:I

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x36
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x10
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x11
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x1f
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x20
        0x20
    .end array-data

    :array_f
    .array-data 4
        0x21
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x80
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_13
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_14
    .array-data 4
        0xa
        0x1b
    .end array-data

    :array_15
    .array-data 4
        0xb
        0x1c
    .end array-data

    :array_16
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_17
    .array-data 4
        0xf
        0x23
    .end array-data
.end method

.method public static synthetic c3(Lk0/pb;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/pb;->h:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/pb;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/pb;->h:J

    return-wide p1
.end method

.method public static synthetic e3(Lk0/pb;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/pb;->i:I

    return p0
.end method

.method public static synthetic f3(Lk0/pb;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/pb;->i:I

    return p1
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

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iget-object v0, p0, Lk0/pb;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Lk0/pb;->a3(I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x29

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x7d

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v2, v3, :cond_15

    const/16 v3, 0x1f

    const/16 v10, 0x12

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v9

    .line 4
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v9

    .line 5
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v9

    .line 6
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v9

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v9

    .line 8
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v9

    .line 9
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v2, v9

    .line 10
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lk0/pb;->b3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 13
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lk0/pb;->b3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    .line 14
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lk0/pb;->b3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 15
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Lk0/pb;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    .line 16
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ll0/e0;->m(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    .line 18
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ll0/e0;->m(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 19
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ll0/e0;->m(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    .line 20
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/e0;->m(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 22
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x4

    .line 23
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 24
    aget-byte v7, v1, v7

    const/16 v8, 0xa

    new-array v14, v6, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v6

    aput v15, v14, v9

    .line 25
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v14, v6, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v6

    aput v15, v14, v9

    .line 26
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xc

    new-array v14, v6, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v6

    aput v2, v14, v9

    .line 27
    invoke-static {v8, v14}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v4, 0x7

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v9

    :goto_1
    move v8, v2

    shr-int/lit8 v11, v4, 0x6

    and-int/2addr v11, v6

    if-ne v11, v6, :cond_2

    move v2, v6

    :cond_2
    shr-int/lit8 v11, v4, 0x5

    and-int/2addr v11, v6

    if-ne v11, v6, :cond_3

    move v8, v6

    :cond_3
    shr-int/lit8 v11, v4, 0x4

    and-int/2addr v11, v6

    if-ne v11, v6, :cond_4

    move v8, v6

    move v11, v8

    goto :goto_2

    :cond_4
    move v11, v9

    :goto_2
    new-array v14, v6, [I

    aput v11, v14, v9

    .line 28
    invoke-static {v10, v14}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x13

    new-array v14, v6, [I

    aput v2, v14, v9

    .line 29
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v11, v6, [I

    aput v8, v11, v9

    .line 30
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v4, 0xf

    const/16 v4, 0x15

    new-array v8, v6, [I

    aput v2, v8, v9

    .line 31
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v6, [I

    shr-int/lit8 v8, v7, 0x7

    and-int/2addr v8, v6

    aput v8, v4, v9

    .line 32
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v6, [I

    shr-int/2addr v7, v12

    and-int/2addr v7, v6

    aput v7, v4, v9

    .line 33
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v5, 0xff

    shr-int/lit8 v4, v5, 0x7

    and-int/2addr v4, v6

    const/16 v7, 0x1b

    if-nez v4, :cond_5

    new-array v3, v6, [I

    aput v2, v3, v9

    .line 34
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_5
    and-int/lit8 v2, v5, 0x7f

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_6

    if-lt v2, v6, :cond_8

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_8

    new-array v3, v6, [I

    add-int/2addr v2, v10

    aput v2, v3, v9

    .line 35
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array v2, v6, [I

    const/4 v3, -0x3

    aput v3, v2, v9

    .line 36
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v2, v6, [I

    const/4 v3, -0x2

    aput v3, v2, v9

    .line 37
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :cond_8
    :goto_3
    const/16 v2, 0x25

    new-array v3, v6, [I

    aput v4, v3, v9

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 39
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int/lit8 v2, p2, 0x7

    .line 40
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/f0;->k(B)V

    goto/16 :goto_a

    .line 41
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int/lit8 v2, p2, 0x2

    .line 42
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 43
    aget-byte v1, v1, v4

    and-int/lit16 v2, v2, 0xff

    .line 44
    iput v2, v0, Lk0/pb;->c:I

    move v2, v9

    .line 45
    :goto_4
    iget-object v4, v0, Lk0/pb;->d:[[I

    array-length v8, v4

    if-ge v2, v8, :cond_a

    .line 46
    iget v8, v0, Lk0/pb;->c:I

    aget-object v14, v4, v2

    aget v14, v14, v9

    if-ne v8, v14, :cond_9

    if-eqz v8, :cond_a

    .line 47
    iput v2, v0, Lk0/pb;->b:I

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 48
    :cond_a
    :goto_5
    iget v8, v0, Lk0/pb;->c:I

    if-eq v8, v12, :cond_13

    const/16 v5, 0x20

    if-eq v8, v5, :cond_11

    const/16 v5, 0x21

    if-eq v8, v5, :cond_f

    const/16 v3, 0x81

    if-eq v8, v3, :cond_d

    const/16 v3, 0x82

    if-eq v8, v3, :cond_b

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_1d

    .line 49
    array-length v1, v4

    if-ge v2, v1, :cond_1d

    .line 50
    iget v1, v0, Lk0/pb;->b:I

    aget-object v1, v4, v1

    aget v1, v1, v6

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 51
    iget-object v1, v0, Lk0/pb;->d:[[I

    iget v2, v0, Lk0/pb;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_b
    move v2, v9

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_c

    .line 52
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 53
    :cond_c
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_d
    move v2, v9

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_e

    .line 54
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 55
    :cond_e
    invoke-static {v13, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_f
    move v2, v9

    :goto_8
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_10

    .line 56
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 57
    :cond_10
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_11
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_12

    .line 58
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 59
    :cond_12
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_13
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_1d

    .line 60
    sget v1, Lh0/c;->E:I

    if-eq v1, v5, :cond_14

    if-eq v1, v11, :cond_14

    .line 61
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    .line 62
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_14
    const/16 v1, 0x1a

    .line 63
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_15
    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v6, :cond_18

    if-eq v2, v5, :cond_17

    if-eq v2, v7, :cond_16

    goto/16 :goto_a

    :cond_16
    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 67
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 68
    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    .line 69
    iput-boolean v6, v0, Lk0/pb;->f:Z

    goto/16 :goto_a

    :cond_17
    add-int/lit8 v2, p2, 0x4

    .line 70
    aget-byte v2, v1, v2

    shl-int/2addr v2, v7

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v6, [I

    aput v1, v3, v9

    .line 71
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 72
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v4, [I

    aput v6, v4, v9

    aput v1, v4, v6

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_a

    :cond_18
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 73
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_19

    add-int/lit8 v2, p2, 0x3

    .line 74
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    invoke-static {v3, v1, v9}, Ll0/c0;->b(III)V

    goto :goto_a

    :cond_19
    add-int/lit8 v2, p2, 0x3

    .line 75
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v6

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    invoke-static {v3, v1, v9}, Ll0/c0;->a(III)V

    goto :goto_a

    .line 76
    :cond_1a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_a

    .line 77
    :cond_1b
    iget-boolean v2, v0, Lk0/pb;->f:Z

    if-nez v2, :cond_1d

    .line 78
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x1ff4

    const v7, 0x8000

    if-ne v2, v6, :cond_1c

    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    invoke-static {v2, v1, v7, v6, v3}, Lk0/qt;->m(IIIZI)V

    goto :goto_a

    :cond_1c
    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    invoke-static {v2, v1, v7, v6, v3}, Lk0/qt;->m(IIIZI)V

    :cond_1d
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/pb;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lk0/pb;->a3(I)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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

.method public final a3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x81

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xf

    :cond_0
    return p1
.end method
