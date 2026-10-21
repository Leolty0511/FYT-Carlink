.class public Lk0/t9;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/t9;->c:I

    const/16 v1, 0x1b

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

    new-array v2, v2, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/t9;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/t9;->e:Z

    .line 5
    new-instance v0, Lk0/t9$a;

    invoke-direct {v0, p0}, Lk0/t9$a;-><init>(Lk0/t9;)V

    iput-object v0, p0, Lk0/t9;->f:Ljava/lang/Runnable;

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
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x12
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x1f
    .end array-data

    :array_d
    .array-data 4
        0x15
        0x1e
    .end array-data

    :array_e
    .array-data 4
        0x20
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x21
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x22
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x23
        0x9
    .end array-data

    :array_12
    .array-data 4
        0x24
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x25
        0x36
    .end array-data

    :array_14
    .array-data 4
        0x26
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x27
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x28
        0xc
    .end array-data

    :array_17
    .array-data 4
        0x29
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x2a
        0x40
    .end array-data

    :array_19
    .array-data 4
        0x2b
        0x18
    .end array-data

    :array_1a
    .array-data 4
        0x2c
        0x26
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 13

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/16 v5, 0xa8

    const/16 v6, 0xe3

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/16 v9, 0x15

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget v2, p1, v10

    const/16 v9, 0x13

    const/16 v11, 0x1b

    if-ne v2, v10, :cond_2

    .line 4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    add-int/2addr p1, v10

    const/16 v2, 0xf

    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    new-array v2, v7, [I

    aput v6, v2, v0

    aput v5, v2, v10

    aput v1, v2, v1

    aput v9, v2, v4

    aput p1, v2, v8

    .line 5
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_2
    aget p1, p1, v10

    if-nez p1, :cond_e

    .line 7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v11

    add-int/2addr p1, v3

    if-gez p1, :cond_3

    move p1, v0

    :cond_3
    new-array v2, v7, [I

    aput v6, v2, v0

    aput v5, v2, v10

    aput v1, v2, v1

    aput v9, v2, v4

    aput p1, v2, v8

    .line 8
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    aget v2, p1, v10

    const/16 v11, 0x12

    if-ne v2, v3, :cond_5

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    add-int/2addr p1, v10

    const/4 v2, 0x7

    if-le p1, v2, :cond_4

    move p1, v2

    :cond_4
    new-array v2, v7, [I

    aput v6, v2, v0

    aput v5, v2, v10

    aput v1, v2, v1

    aput v11, v2, v4

    aput p1, v2, v8

    .line 11
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 12
    :cond_5
    aget v2, p1, v10

    const/4 v12, -0x2

    if-ne v2, v12, :cond_7

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    add-int/2addr p1, v3

    if-gez p1, :cond_6

    move p1, v0

    :cond_6
    new-array v2, v7, [I

    aput v6, v2, v0

    aput v5, v2, v10

    aput v1, v2, v1

    aput v11, v2, v4

    aput p1, v2, v8

    .line 14
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array v2, v7, [I

    aput v6, v2, v0

    aput v5, v2, v10

    aput v1, v2, v1

    aput v11, v2, v4

    .line 15
    aget p1, p1, v10

    aput p1, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :pswitch_3
    aget v0, p1, v10

    const/16 v1, 0xc

    if-ne v0, v10, :cond_8

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_e

    .line 18
    invoke-virtual {p0, v8}, Lk0/t9;->a3(I)V

    goto/16 :goto_0

    .line 19
    :cond_8
    aget p1, p1, v10

    if-nez p1, :cond_e

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v10, :cond_e

    .line 21
    invoke-virtual {p0, v7}, Lk0/t9;->a3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_4
    aget p1, p1, v10

    const/16 v0, 0x10

    if-eqz p1, :cond_9

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_e

    .line 24
    invoke-virtual {p0, v9}, Lk0/t9;->a3(I)V

    goto/16 :goto_0

    .line 25
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v10, :cond_e

    .line 26
    invoke-virtual {p0, v9}, Lk0/t9;->a3(I)V

    goto/16 :goto_0

    .line 27
    :pswitch_5
    aget p1, p1, v10

    const/16 v0, 0x4d

    const/4 v1, 0x6

    if-eqz p1, :cond_a

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_e

    .line 29
    invoke-virtual {p0, v1}, Lk0/t9;->a3(I)V

    goto :goto_0

    .line 30
    :cond_a
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v1, :cond_e

    .line 31
    invoke-virtual {p0, v1}, Lk0/t9;->a3(I)V

    goto :goto_0

    .line 32
    :pswitch_6
    aget p1, p1, v10

    const/16 v0, 0xd

    if-eqz p1, :cond_b

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_e

    .line 34
    invoke-virtual {p0, v1}, Lk0/t9;->a3(I)V

    goto :goto_0

    .line 35
    :cond_b
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v10, :cond_e

    .line 36
    invoke-virtual {p0, v1}, Lk0/t9;->a3(I)V

    goto :goto_0

    .line 37
    :pswitch_7
    aget p1, p1, v10

    const/16 v0, 0xb

    if-eqz p1, :cond_c

    .line 38
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_e

    .line 39
    invoke-virtual {p0, v10}, Lk0/t9;->a3(I)V

    goto :goto_0

    .line 40
    :cond_c
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v10, :cond_e

    .line 41
    invoke-virtual {p0, v10}, Lk0/t9;->a3(I)V

    goto :goto_0

    .line 42
    :pswitch_8
    aget p1, p1, v10

    if-eqz p1, :cond_d

    .line 43
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-nez p1, :cond_e

    .line 44
    invoke-virtual {p0, v10}, Lk0/t9;->a3(I)V

    goto :goto_0

    .line 45
    :cond_d
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-ne p1, v10, :cond_e

    .line 46
    invoke-virtual {p0, v0}, Lk0/t9;->a3(I)V

    :cond_e
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/t9;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 8
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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x26

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v3, :cond_28

    const/16 v3, 0x29

    if-eq v2, v3, :cond_23

    const/16 v3, 0x30

    const/4 v10, 0x2

    if-eq v2, v3, :cond_22

    const/16 v3, 0x7d

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x0

    if-eq v2, v3, :cond_1b

    const/16 v11, 0xc

    const/4 v15, 0x6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_f

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    add-int/lit8 v16, p2, 0x3

    .line 7
    aget-byte v9, v1, v16

    add-int/lit8 v16, p2, 0x4

    .line 8
    aget-byte v3, v1, v16

    add-int/lit8 v16, p2, 0x5

    .line 9
    aget-byte v17, v1, v16

    add-int/lit8 v15, p2, 0x6

    .line 10
    aget-byte v18, v1, v15

    const/16 v8, 0x35

    new-array v12, v7, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v14

    .line 11
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v7

    aput v12, v8, v14

    const/16 v12, 0xb

    .line 12
    invoke-static {v12, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v19, v2, 0x4

    and-int/lit8 v19, v19, 0x3

    aput v19, v8, v14

    .line 13
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v7

    aput v11, v8, v14

    .line 14
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v7

    aput v8, v5, v14

    .line 15
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v4, v14

    const/16 v2, 0x10

    .line 16
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v4, v9, 0xff

    if-eq v4, v7, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v6, :cond_2

    if-eq v4, v13, :cond_1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    move v5, v14

    move v6, v5

    :goto_0
    move v8, v6

    :goto_1
    move v9, v8

    goto :goto_2

    :cond_0
    move v9, v7

    move v5, v14

    move v6, v5

    move v8, v6

    goto :goto_2

    :cond_1
    move v6, v7

    move v8, v6

    move v5, v14

    move v9, v5

    goto :goto_2

    :cond_2
    move v6, v7

    move v5, v14

    move v8, v5

    goto :goto_1

    :cond_3
    move v5, v7

    move v6, v5

    move v8, v14

    goto :goto_1

    :cond_4
    move v5, v7

    move v6, v14

    goto :goto_0

    :goto_2
    const/16 v10, 0x4d

    new-array v11, v7, [I

    aput v4, v11, v14

    .line 17
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    aput v5, v4, v14

    const/16 v5, 0x13

    .line 18
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    aput v6, v4, v14

    const/16 v5, 0x14

    .line 19
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x12

    new-array v5, v7, [I

    aput v8, v5, v14

    .line 20
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v5, v7, [I

    aput v9, v5, v14

    .line 21
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    and-int/lit16 v3, v3, 0xff

    aput v3, v4, v14

    const/16 v3, 0x15

    .line 22
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.fyt.reversetemp"

    .line 23
    invoke-static {v3, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    aget-byte v17, v1, v15

    .line 25
    aget-byte v18, v1, v16

    :cond_5
    move/from16 v1, v17

    move/from16 v3, v18

    .line 26
    sget v4, Lk0/nt;->c:I

    const/16 v5, 0x1c

    const/4 v6, -0x1

    const/16 v8, 0x1b

    if-eq v4, v12, :cond_9

    const/16 v9, 0xf

    if-ne v4, v9, :cond_6

    goto :goto_4

    :cond_6
    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_7

    if-ge v1, v2, :cond_7

    new-array v4, v7, [I

    aput v1, v4, v14

    .line 27
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v1, v7, [I

    aput v6, v1, v14

    .line 28
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v1, v3, 0xff

    if-lez v1, :cond_8

    if-ge v1, v2, :cond_8

    new-array v2, v7, [I

    aput v1, v2, v14

    .line 29
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_8
    new-array v1, v7, [I

    aput v6, v1, v14

    .line 30
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_9
    :goto_4
    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-lt v1, v2, :cond_a

    const/16 v2, 0x40

    if-gt v1, v2, :cond_a

    new-array v2, v7, [I

    aput v1, v2, v14

    .line 31
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_a
    new-array v1, v7, [I

    aput v6, v1, v14

    .line 32
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_5
    and-int/lit16 v1, v3, 0xff

    const/16 v2, 0x20

    if-lt v1, v2, :cond_b

    const/16 v2, 0x40

    if-gt v1, v2, :cond_b

    new-array v2, v7, [I

    aput v1, v2, v14

    .line 33
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_b
    new-array v1, v7, [I

    aput v6, v1, v14

    .line 34
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 35
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 37
    aget-byte v1, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 38
    iput v2, v0, Lk0/t9;->c:I

    move v2, v14

    .line 39
    :goto_6
    iget-object v3, v0, Lk0/t9;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 40
    iget v4, v0, Lk0/t9;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v14

    if-ne v4, v5, :cond_c

    if-eqz v4, :cond_d

    .line 41
    iput v2, v0, Lk0/t9;->b:I

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 42
    :cond_d
    :goto_7
    iget v4, v0, Lk0/t9;->c:I

    if-eq v4, v15, :cond_19

    const/16 v5, 0xa

    if-eq v4, v5, :cond_17

    const/16 v5, 0x14

    if-eq v4, v5, :cond_15

    const/16 v5, 0x15

    if-eq v4, v5, :cond_13

    const/16 v5, 0x20

    if-eq v4, v5, :cond_11

    const/16 v5, 0x21

    if-eq v4, v5, :cond_f

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_e

    .line 43
    array-length v1, v3

    if-ge v2, v1, :cond_29

    .line 44
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 45
    :cond_e
    array-length v1, v3

    if-gt v2, v1, :cond_29

    .line 46
    iget v1, v0, Lk0/t9;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_f
    move v2, v14

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_10

    const/16 v3, 0x8

    .line 47
    invoke-static {v3, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    const/16 v3, 0x8

    .line 48
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_11
    move v2, v14

    :goto_9
    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x7

    if-ge v2, v3, :cond_12

    .line 49
    invoke-static {v4, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 50
    :cond_12
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_13
    move v2, v14

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1e

    .line 51
    invoke-static {v3, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    const/16 v1, 0x1e

    .line 52
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_15
    move v2, v14

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    const/16 v3, 0x1f

    .line 53
    invoke-static {v3, v14}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    const/16 v1, 0x1f

    .line 54
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_17
    if-ne v1, v7, :cond_29

    .line 55
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_18

    .line 56
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_f

    .line 57
    :cond_18
    invoke-static {v14}, Lk0/qt;->a(I)V

    goto/16 :goto_f

    :cond_19
    if-ne v1, v7, :cond_29

    .line 58
    sget v1, Lk0/nt;->a:I

    const v2, 0x160122

    if-eq v1, v2, :cond_1a

    const/16 v1, 0x1a

    .line 59
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 60
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 61
    :cond_1a
    invoke-static {v11, v14}, Ll0/b0;->l0(II)V

    .line 62
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v7, :cond_20

    if-eq v2, v6, :cond_1f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1c

    goto/16 :goto_f

    :cond_1c
    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 65
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 66
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    .line 67
    iput-boolean v7, v0, Lk0/t9;->e:Z

    goto/16 :goto_f

    :cond_1d
    add-int/lit8 v2, p2, 0x3

    .line 68
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const-string v2, "persist.syu.reversefrontdoor"

    .line 69
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1e

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v14

    .line 70
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v14

    .line 71
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_1e
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v14

    .line 72
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v14

    .line 73
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v14

    .line 74
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v14

    .line 75
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v14

    const/4 v3, 0x5

    .line 76
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v7

    aput v1, v2, v14

    .line 77
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1f
    add-int/lit8 v2, p2, 0x4

    .line 78
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v1, v3, v14

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 80
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v10, [I

    aput v7, v4, v14

    aput v1, v4, v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_20
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 81
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_21

    add-int/lit8 v2, p2, 0x3

    .line 82
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v7

    invoke-static {v3, v1, v14}, Ll0/c0;->b(III)V

    goto/16 :goto_f

    :cond_21
    add-int/lit8 v2, p2, 0x3

    .line 83
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v13

    and-int/2addr v1, v7

    invoke-static {v3, v1, v14}, Ll0/c0;->a(III)V

    goto :goto_f

    .line 84
    :cond_22
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    add-int/lit8 v2, p2, 0x2

    .line 85
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 86
    aget-byte v1, v1, v3

    .line 87
    sget v3, Lk0/nt;->c:I

    if-eq v3, v5, :cond_27

    if-ne v3, v4, :cond_24

    goto :goto_e

    :cond_24
    const/16 v4, 0x13

    if-eq v3, v4, :cond_26

    const/16 v4, 0x15

    if-ne v3, v4, :cond_25

    goto :goto_d

    :cond_25
    const/16 v4, 0x16

    if-ne v3, v4, :cond_29

    .line 88
    iget-boolean v3, v0, Lk0/t9;->e:Z

    if-nez v3, :cond_29

    const/16 v3, 0x1900

    .line 89
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_f

    .line 90
    :cond_26
    :goto_d
    iget-boolean v3, v0, Lk0/t9;->e:Z

    if-nez v3, :cond_29

    const/16 v3, 0x1300

    .line 91
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_f

    .line 92
    :cond_27
    :goto_e
    iget-boolean v3, v0, Lk0/t9;->e:Z

    if-nez v3, :cond_29

    const/16 v3, 0x4dce

    .line 93
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_f

    .line 94
    :cond_28
    sget v2, Lk0/nt;->c:I

    if-eq v2, v5, :cond_29

    if-eq v2, v4, :cond_29

    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 96
    aget-byte v1, v1, v3

    .line 97
    iget-boolean v3, v0, Lk0/t9;->e:Z

    if-nez v3, :cond_29

    const/16 v3, 0x21c

    .line 98
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->l(IIZI)V

    :cond_29
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/t9;->f:Ljava/lang/Runnable;

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
    .locals 2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-static {p2, p1}, Lk0/qt;->l0([II)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x5

    new-array p4, p4, [I

    const/16 v0, 0xe3

    const/4 v1, 0x0

    aput v0, p4, v1

    const/16 v0, -0x58

    aput v0, p4, p3

    aput p1, p4, p1

    const/4 p1, 0x3

    .line 2
    aget v0, p2, v1

    aput v0, p4, p1

    const/4 p1, 0x4

    aget p2, p2, p3

    aput p2, p4, p1

    invoke-static {p4}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0xa8

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
