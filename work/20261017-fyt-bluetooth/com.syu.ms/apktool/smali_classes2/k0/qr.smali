.class public Lk0/qr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qr;->c:I

    const/4 v1, 0x6

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

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/qr;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/qr;->e:Z

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x12
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 5

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x20

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v4

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v1, v0}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v4, v0}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v4

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v1, v1}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v4, v1}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v4

    const/4 v0, -0x2

    const/4 v2, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v1, v2}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v4, v2}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v4

    const/16 v1, 0x8

    const/16 v2, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1, v0}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_a

    .line 16
    invoke-virtual {p0, v1, v0}, Lk0/qr;->a3(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v4

    const/16 v1, 0x10

    const/16 v2, 0x41

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 19
    invoke-virtual {p0, v1, v0}, Lk0/qr;->a3(II)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_a

    .line 21
    invoke-virtual {p0, v1, v0}, Lk0/qr;->a3(II)V

    goto :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v4

    const/16 v1, 0xd

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 24
    invoke-virtual {p0, v3, v0}, Lk0/qr;->a3(II)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v4, :cond_a

    .line 26
    invoke-virtual {p0, v3, v0}, Lk0/qr;->a3(II)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v4

    const/16 v1, 0x40

    const/16 v2, 0xb

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 29
    invoke-virtual {p0, v1, v0}, Lk0/qr;->a3(II)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_a

    .line 31
    invoke-virtual {p0, v1, v0}, Lk0/qr;->a3(II)V

    goto :goto_0

    .line 32
    :pswitch_8
    aget p1, p1, v4

    const/16 v1, 0xa

    if-eqz p1, :cond_9

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 34
    invoke-virtual {p0, v3, v0}, Lk0/qr;->a3(II)V

    goto :goto_0

    .line 35
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v4, :cond_a

    const/16 p1, 0x80

    .line 36
    invoke-virtual {p0, p1, v0}, Lk0/qr;->a3(II)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    .line 12
    iput v1, v0, Lk0/mt;->p:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

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
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/16 v5, 0x12

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_15

    const/16 v3, 0x28

    const/16 v12, 0xa

    const/4 v13, 0x2

    if-eq v2, v3, :cond_13

    const/16 v3, 0x60

    if-eq v2, v3, :cond_12

    const/16 v3, 0x7d

    const/16 v14, 0xc

    const/16 v15, 0xb

    const/4 v4, 0x6

    if-eq v2, v3, :cond_b

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_a

    const/16 v3, 0x24

    if-eq v2, v3, :cond_8

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    add-int/lit8 v16, p2, 0x5

    .line 5
    aget-byte v1, v1, v16

    and-int/2addr v1, v9

    new-array v9, v11, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v9, v10

    .line 6
    invoke-static {v12, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 7
    invoke-static {v15, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v11, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v11

    aput v12, v9, v10

    .line 8
    invoke-static {v14, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v12, v11, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v11

    aput v14, v12, v10

    .line 9
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x35

    new-array v12, v11, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v11

    aput v2, v12, v10

    .line 10
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v3, 0xf

    if-eq v2, v11, :cond_5

    if-eq v2, v13, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    move v2, v10

    move v3, v2

    :goto_0
    move v6, v3

    goto :goto_1

    :cond_1
    move v2, v10

    move v3, v2

    move v6, v11

    goto :goto_1

    :cond_2
    move v2, v10

    move v3, v11

    goto :goto_0

    :cond_3
    move v2, v10

    move v6, v2

    move v3, v11

    goto :goto_1

    :cond_4
    move v6, v10

    move v2, v11

    move v3, v2

    goto :goto_1

    :cond_5
    move v3, v10

    move v6, v3

    move v2, v11

    :goto_1
    const/16 v7, 0x13

    new-array v8, v11, [I

    aput v2, v8, v10

    .line 11
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v7, v11, [I

    aput v3, v7, v10

    .line 12
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    aput v6, v2, v10

    .line 13
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v11, [I

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v10

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    new-array v3, v11, [I

    aput v1, v3, v10

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_6
    new-array v1, v11, [I

    const/4 v3, -0x3

    aput v3, v1, v10

    .line 16
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_7
    new-array v1, v11, [I

    const/4 v3, -0x2

    aput v3, v1, v10

    .line 17
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 18
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 19
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 20
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 21
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_9
    new-array v2, v11, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 22
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v11

    aput v1, v2, v10

    .line 23
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 24
    :cond_a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 25
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v3, 0x419

    const/4 v5, 0x0

    if-eq v2, v11, :cond_10

    if-eq v2, v4, :cond_f

    const/16 v9, 0x8

    if-eq v2, v9, :cond_e

    if-eq v2, v8, :cond_d

    if-eq v2, v7, :cond_c

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v2, p2, 0x7

    .line 26
    aget-byte v2, v1, v2

    shl-int/2addr v2, v9

    const v7, 0xff00

    and-int/2addr v2, v7

    add-int/lit8 v4, p2, 0x6

    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    div-int/2addr v1, v12

    .line 27
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v13, [I

    aput v6, v4, v10

    aput v1, v4, v11

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v2, p2, 0x4

    .line 28
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    const/16 v2, 0x64

    div-int/2addr v1, v2

    const/16 v2, 0x407

    new-array v4, v11, [I

    aput v1, v4, v10

    .line 29
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 30
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v13, [I

    aput v11, v4, v10

    aput v1, v4, v11

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v11, v3}, Lk0/qt;->i(IIZI)V

    .line 32
    iput-boolean v11, v0, Lk0/qr;->e:Z

    goto/16 :goto_7

    .line 33
    :cond_f
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v6, v13, [I

    aput v14, v6, v10

    add-int/lit8 v9, p2, 0x3

    aget-byte v12, v1, v9

    shr-int/lit8 v4, v12, 0x6

    and-int/2addr v4, v11

    aput v4, v6, v11

    invoke-static {v2, v3, v6, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v13, [I

    aput v8, v4, v10

    .line 34
    aget-byte v6, v1, v9

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    aput v6, v4, v11

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v13, [I

    aput v7, v4, v10

    add-int/lit8 v6, p2, 0x4

    .line 35
    aget-byte v1, v1, v6

    shr-int/2addr v1, v10

    and-int/lit8 v1, v1, 0xf

    aput v1, v4, v11

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 36
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_11

    add-int/lit8 v2, p2, 0x3

    .line 37
    aget-byte v4, v1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    invoke-static {v4, v2, v10}, Ll0/c0;->b(III)V

    goto :goto_2

    :cond_11
    add-int/lit8 v2, p2, 0x3

    .line 38
    aget-byte v4, v1, v2

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    invoke-static {v4, v2, v10}, Ll0/c0;->a(III)V

    .line 39
    :goto_2
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v13, [I

    aput v15, v4, v10

    add-int/lit8 v6, p2, 0x3

    aget-byte v1, v1, v6

    const/16 v6, 0xff

    and-int/2addr v1, v6

    aput v1, v4, v11

    invoke-static {v2, v3, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    const/16 v2, 0x63

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 40
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x4

    .line 41
    aget-byte v3, v1, v3

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v10

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 42
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    const/16 v5, 0x9

    add-int/lit8 v5, p2, 0x9

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_13
    move v5, v9

    add-int/lit8 v2, p2, 0x2

    .line 43
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    and-int/lit8 v4, v3, 0x7f

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14

    mul-int/2addr v4, v12

    rsub-int v3, v4, 0x3e8

    goto :goto_3

    :cond_14
    mul-int/2addr v4, v12

    add-int/lit16 v3, v4, 0x3e8

    .line 44
    :goto_3
    invoke-static {v3}, Lu0/d;->B3(I)V

    const/16 v3, 0x62

    new-array v4, v11, [I

    .line 45
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    aput v1, v4, v10

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_15
    move v2, v9

    add-int/lit8 v3, p2, 0x2

    .line 46
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x3

    .line 47
    aget-byte v1, v1, v4

    and-int/2addr v3, v2

    .line 48
    iput v3, v0, Lk0/qr;->c:I

    move v2, v10

    .line 49
    :goto_4
    iget-object v3, v0, Lk0/qr;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_17

    .line 50
    iget v4, v0, Lk0/qr;->c:I

    aget-object v9, v3, v2

    aget v9, v9, v10

    if-ne v4, v9, :cond_16

    if-eqz v4, :cond_17

    .line 51
    iput v2, v0, Lk0/qr;->b:I

    goto :goto_5

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 52
    :cond_17
    :goto_5
    iget v4, v0, Lk0/qr;->c:I

    const/16 v9, 0x9

    if-eq v4, v9, :cond_1b

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_18

    .line 53
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 54
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 55
    :cond_18
    iget v1, v0, Lk0/qr;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_19

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1a

    .line 56
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_19
    const/16 v2, 0xff

    .line 57
    :cond_1a
    :goto_6
    iput v2, v0, Lk0/qr;->b:I

    goto :goto_7

    :cond_1b
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v11, :cond_1e

    .line 58
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_1d

    if-eq v1, v7, :cond_1c

    if-eq v1, v6, :cond_1d

    const/16 v1, 0x1d

    .line 59
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 60
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 61
    :cond_1c
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    .line 62
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_1d
    const/16 v1, 0x1a

    .line 63
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    :cond_1e
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

    const/16 p3, 0x66

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

    const/16 p3, 0xe3

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, v1, [I

    aput p3, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, 0x8a

    aput p3, p1, v4

    aput v1, p1, v2

    .line 4
    aget p3, p2, v3

    aput p3, p1, v0

    aget p3, p2, v4

    aput p3, p1, p4

    aget p3, p2, v2

    aput p3, p1, v1

    const/4 p3, 0x6

    aget v0, p2, v0

    aput v0, p1, p3

    const/4 p3, 0x7

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 11

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/16 v2, -0x76

    const/16 v3, 0xe3

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x0

    if-eqz p2, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v4, [I

    aput v3, p2, v10

    aput v2, p2, v8

    aput v9, p2, v7

    aput v10, p2, v6

    aput v10, p2, v5

    aput v10, p2, v9

    aput v10, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p2, v4, [I

    aput v3, p2, v10

    aput v2, p2, v8

    aput v9, p2, v7

    aput v10, p2, v6

    aput v10, p2, v5

    aput v10, p2, v9

    aput p1, p2, v1

    aput v10, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    aput v3, p2, v10

    aput v2, p2, v8

    aput v9, p2, v7

    aput v10, p2, v6

    aput v10, p2, v5

    aput p1, p2, v9

    aput v10, p2, v1

    aput v10, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    aput v3, p2, v10

    aput v2, p2, v8

    aput v9, p2, v7

    aput v10, p2, v6

    aput p1, p2, v5

    aput v10, p2, v9

    aput v10, p2, v1

    aput v10, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p2, v4, [I

    aput v3, p2, v10

    aput v2, p2, v8

    aput v9, p2, v7

    aput p1, p2, v6

    aput v10, p2, v5

    aput v10, p2, v9

    aput v10, p2, v1

    aput v10, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 6
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v4, [I

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x76
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
