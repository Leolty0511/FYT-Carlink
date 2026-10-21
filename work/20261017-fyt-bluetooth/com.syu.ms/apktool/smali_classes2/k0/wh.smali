.class public Lk0/wh;
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
    iput v0, p0, Lk0/wh;->c:I

    const/16 v1, 0x15

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

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v2, 0x14

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/wh;->d:[[I

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x36
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x3e
    .end array-data

    :array_11
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_12
    .array-data 4
        0x15
        0xd
    .end array-data

    :array_13
    .array-data 4
        0x16
        0xd
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x3a
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_c

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v1, :cond_a

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x26

    if-eq v0, v1, :cond_6

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    const/16 v1, 0x29

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    aget p1, p1, v2

    if-eqz p1, :cond_2

    new-array p1, v3, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v3, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_3
    aget p1, p1, v2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    new-array p1, v3, [I

    .line 7
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array p1, v3, [I

    .line 8
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :cond_6
    aget p1, p1, v2

    const/16 v0, 0xc

    if-eqz p1, :cond_7

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_c

    new-array p1, v3, [I

    .line 11
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v2, :cond_c

    new-array p1, v3, [I

    .line 13
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :cond_8
    aget p1, p1, v2

    const/16 v0, 0xb

    if-eqz p1, :cond_9

    .line 15
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_c

    new-array p1, v3, [I

    .line 16
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v2, :cond_c

    new-array p1, v3, [I

    .line 18
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 19
    :cond_a
    aget p1, p1, v2

    const/16 v0, 0xa

    if-eqz p1, :cond_b

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_c

    new-array p1, v3, [I

    .line 21
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 22
    :cond_b
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v2, :cond_c

    new-array p1, v3, [I

    .line 23
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_c
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xa8
        0x2
        0xd
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xa8
        0x2
        0xe
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xa8
        0x2
        0xb
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xa8
        0x2
        0xc
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xa8
        0x2
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xa8
        0x2
        0x4
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xa8
        0x2
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xa8
        0x2
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xa8
        0x2
        0x0
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xa8
        0x2
        0x0
        0x1
    .end array-data
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 6
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x40

    const/16 v5, 0x64

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v4, :cond_15

    const/16 v4, 0x41

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eq v2, v4, :cond_14

    const/16 v4, 0x43

    if-eq v2, v4, :cond_13

    const/16 v4, 0x7d

    const/4 v14, 0x4

    if-eq v2, v4, :cond_e

    const/16 v4, 0x7f

    if-eq v2, v4, :cond_d

    const/16 v4, 0xc

    const/4 v5, 0x5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 4
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 5
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 6
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 7
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 8
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 9
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 10
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v9

    aput v1, v2, v8

    .line 11
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v7, p2, 0x3

    .line 13
    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    add-int/lit8 v11, p2, 0x4

    .line 14
    aget-byte v11, v1, v11

    and-int/2addr v11, v3

    add-int/lit8 v15, p2, 0x5

    .line 15
    aget-byte v15, v1, v15

    and-int/2addr v15, v3

    add-int/lit8 v16, p2, 0x6

    .line 16
    aget-byte v10, v1, v16

    and-int/2addr v10, v3

    add-int/lit8 v16, p2, 0x7

    .line 17
    aget-byte v1, v1, v16

    and-int/2addr v1, v3

    const/16 v3, 0xa

    new-array v6, v9, [I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v6, v8

    .line 18
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v6, v9, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v6, v8

    .line 19
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v9

    aput v6, v3, v8

    .line 20
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x26

    new-array v4, v9, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v9

    aput v6, v4, v8

    .line 21
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3f

    new-array v4, v9, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v9

    aput v2, v4, v8

    .line 22
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    if-eq v7, v9, :cond_5

    if-eq v7, v13, :cond_4

    if-eq v7, v12, :cond_3

    if-eq v7, v14, :cond_2

    if-eq v7, v5, :cond_1

    move v2, v8

    move v3, v2

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_1
    move v3, v8

    move v4, v3

    move v2, v9

    goto :goto_2

    :cond_2
    move v3, v8

    move v2, v9

    move v4, v2

    goto :goto_2

    :cond_3
    move v2, v8

    move v3, v2

    move v4, v9

    goto :goto_2

    :cond_4
    move v2, v8

    move v3, v9

    goto :goto_1

    :cond_5
    move v2, v8

    move v4, v2

    move v3, v9

    :goto_2
    const/16 v5, 0x12

    new-array v6, v9, [I

    aput v2, v6, v8

    .line 23
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v9, [I

    aput v3, v5, v8

    .line 24
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v9, [I

    aput v4, v3, v8

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v9, [I

    aput v7, v3, v8

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v9, [I

    aput v11, v3, v8

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v9, [I

    aput v15, v3, v8

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    const/16 v4, 0x8

    shl-int/lit8 v4, v10, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    const/16 v6, 0xff

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v8

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :pswitch_2
    move v6, v3

    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 32
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->l1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 33
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->l1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_7

    :pswitch_3
    move v6, v3

    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 35
    aget-byte v1, v1, v3

    and-int/2addr v2, v6

    .line 36
    iput v2, v0, Lk0/wh;->c:I

    move v2, v8

    .line 37
    :goto_3
    iget-object v3, v0, Lk0/wh;->d:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_7

    .line 38
    iget v6, v0, Lk0/wh;->c:I

    aget-object v10, v3, v2

    aget v10, v10, v8

    if-ne v6, v10, :cond_6

    if-eqz v6, :cond_7

    .line 39
    iput v2, v0, Lk0/wh;->b:I

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 40
    :cond_7
    :goto_4
    iget v6, v0, Lk0/wh;->c:I

    if-eq v6, v7, :cond_b

    const/16 v6, 0xff

    and-int/2addr v1, v6

    if-ne v1, v9, :cond_8

    .line 41
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 42
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_8
    if-nez v1, :cond_16

    .line 43
    iget v1, v0, Lk0/wh;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_9

    const/16 v2, 0xff

    if-eq v1, v2, :cond_a

    .line 44
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_9
    const/16 v2, 0xff

    .line 45
    :cond_a
    :goto_5
    iput v2, v0, Lk0/wh;->b:I

    goto/16 :goto_7

    :cond_b
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v9, :cond_16

    .line 46
    sget v1, Lh0/c;->E:I

    if-eq v1, v12, :cond_c

    if-eq v1, v14, :cond_c

    if-eq v1, v5, :cond_c

    .line 47
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    .line 48
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_c
    const/16 v1, 0x1a

    .line 49
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 50
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    .line 51
    :cond_d
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 52
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v9, :cond_11

    if-eq v2, v12, :cond_10

    const/16 v3, 0x8

    if-eq v2, v3, :cond_f

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v2, p2, 0x3

    .line 53
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 54
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 55
    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v2, p2, 0x4

    .line 56
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/2addr v1, v5

    const/16 v2, 0x407

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 57
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 58
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v13, [I

    aput v9, v4, v8

    aput v1, v4, v9

    invoke-static {v2, v3, v4, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_11
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 59
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    add-int/lit8 v2, p2, 0x3

    .line 60
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_7

    :cond_12
    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v3, v1, v2

    shr-int/2addr v3, v12

    and-int/2addr v3, v9

    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v9

    invoke-static {v3, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_7

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/16 v2, 0x67

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 63
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v9

    aput v1, v3, v8

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_14
    move v2, v8

    :goto_6
    const/16 v3, 0x32

    if-ge v2, v3, :cond_16

    .line 65
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x66

    new-array v5, v13, [I

    aput v2, v5, v8

    mul-int/lit8 v6, v2, 0x2

    add-int v6, p2, v6

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v1, v7

    const/16 v10, 0x8

    shl-int/2addr v7, v10

    const v10, 0xff00

    and-int/2addr v7, v10

    add-int/2addr v6, v12

    aget-byte v6, v1, v6

    const/16 v14, 0xff

    and-int/2addr v6, v14

    or-int/2addr v6, v7

    aput v6, v5, v9

    invoke-static {v3, v4, v5, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    move v14, v3

    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    .line 67
    aget-byte v3, v1, v3

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x4

    .line 68
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    add-int/lit8 v6, p2, 0x5

    .line 69
    aget-byte v6, v1, v6

    and-int/2addr v6, v14

    add-int/lit8 v7, p2, 0x6

    .line 70
    aget-byte v1, v1, v7

    and-int/2addr v1, v14

    const/16 v7, 0x62

    new-array v10, v9, [I

    and-int/2addr v2, v14

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v3, v14

    const/16 v11, 0x8

    shl-int/2addr v3, v11

    or-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    or-int/2addr v2, v3

    aput v2, v10, v8

    .line 71
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v9, [I

    shr-int/lit8 v4, v6, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v8

    .line 72
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    and-int/lit8 v3, v6, 0xf

    aput v3, v2, v8

    .line 73
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v9, [I

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v8

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_16
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6a

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

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lt p1, v4, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xa8

    aput v0, p1, v3

    aput v4, p1, v4

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lt p1, v4, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0xa9

    aput v0, p1, v3

    aput v4, p1, v4

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
