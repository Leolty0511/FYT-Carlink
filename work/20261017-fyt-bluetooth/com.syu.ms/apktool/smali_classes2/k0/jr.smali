.class public Lk0/jr;
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
    iput v0, p0, Lk0/jr;->c:I

    const/16 v1, 0x8

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

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/jr;->d:[[I

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1a
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

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Lk0/jr;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lk0/jr;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p1}, Lk0/jr;->a3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lk0/jr;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v2}, Lk0/jr;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 11
    invoke-virtual {p0, p1}, Lk0/jr;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v3

    const/16 v0, 0x19

    const/16 v1, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 14
    invoke-virtual {p0, v0}, Lk0/jr;->a3(I)V

    goto :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_9

    .line 16
    invoke-virtual {p0, v0}, Lk0/jr;->a3(I)V

    goto :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v3

    const/16 v0, 0x13

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 19
    invoke-virtual {p0, v0}, Lk0/jr;->a3(I)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_9

    .line 21
    invoke-virtual {p0, v0}, Lk0/jr;->a3(I)V

    goto :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v3

    const/16 v0, 0x17

    const/16 v1, 0xb

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 24
    invoke-virtual {p0, v0}, Lk0/jr;->a3(I)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_9

    .line 26
    invoke-virtual {p0, v0}, Lk0/jr;->a3(I)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v3

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    const/16 p1, 0x15

    .line 29
    invoke-virtual {p0, p1}, Lk0/jr;->a3(I)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_9

    .line 31
    invoke-virtual {p0, v3}, Lk0/jr;->a3(I)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_0
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

    .line 6
    iput v1, v0, Lk0/mt;->l:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

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
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x20

    const/16 v5, 0x8

    const/16 v6, 0x12

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v4, :cond_f

    const/16 v4, 0x24

    const/4 v14, 0x2

    if-eq v2, v4, :cond_d

    const/16 v4, 0x30

    if-eq v2, v4, :cond_c

    const/16 v4, 0x7d

    const/16 v15, 0xb

    if-eq v2, v4, :cond_8

    const/16 v4, 0x28

    if-eq v2, v4, :cond_1

    const/16 v4, 0x29

    if-eq v2, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x1e77

    invoke-static {v2, v1, v12, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x4

    .line 5
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    add-int/lit8 v9, p2, 0x5

    .line 6
    aget-byte v1, v1, v9

    and-int/2addr v1, v3

    const/16 v3, 0xa

    new-array v9, v13, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v13

    aput v10, v9, v12

    .line 7
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v13

    aput v9, v3, v12

    .line 8
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v13

    aput v9, v3, v12

    .line 9
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v8, v13, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v13

    aput v9, v8, v12

    .line 10
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v13

    aput v8, v3, v12

    .line 11
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v7, v13, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v13

    aput v8, v7, v12

    .line 12
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v7, v13, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v13

    aput v8, v7, v12

    .line 13
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v7, v13, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v13

    aput v2, v7, v12

    .line 14
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v4, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 15
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v13, [I

    shr-int/lit8 v6, v4, 0x6

    and-int/2addr v6, v13

    aput v6, v3, v12

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v13, [I

    shr-int/lit8 v6, v4, 0x5

    and-int/2addr v6, v13

    aput v6, v3, v12

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v13, [I

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v12

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/4 v2, -0x1

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v6, 0x1f

    const/16 v7, 0x1b

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_3

    if-lt v5, v13, :cond_2

    const/16 v8, 0x1d

    if-gt v5, v8, :cond_2

    new-array v8, v13, [I

    aput v5, v8, v12

    .line 19
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v5, v13, [I

    aput v2, v5, v12

    .line 20
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v5, v13, [I

    aput v3, v5, v12

    .line 21
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v5, v13, [I

    aput v4, v5, v12

    .line 22
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v5, 0x1c

    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_6

    if-lt v1, v13, :cond_5

    const/16 v3, 0x1d

    if-gt v1, v3, :cond_5

    new-array v2, v13, [I

    aput v1, v2, v12

    .line 23
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_5
    new-array v1, v13, [I

    aput v2, v1, v12

    .line 24
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_6
    new-array v1, v13, [I

    aput v3, v1, v12

    .line 25
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_7
    new-array v1, v13, [I

    aput v4, v1, v12

    .line 26
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x419

    const/4 v6, 0x0

    if-eq v2, v13, :cond_a

    if-eq v2, v11, :cond_9

    goto/16 :goto_5

    :cond_9
    add-int/lit8 v2, p2, 0x4

    .line 28
    aget-byte v2, v1, v2

    shl-int/2addr v2, v5

    const v5, 0xff00

    and-int/2addr v2, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v13, [I

    aput v1, v3, v12

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 30
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v14, [I

    aput v13, v3, v12

    aput v1, v3, v13

    invoke-static {v2, v4, v3, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 31
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v2, p2, 0x3

    .line 32
    aget-byte v5, v1, v2

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v13

    invoke-static {v5, v2, v12}, Ll0/c0;->b(III)V

    goto :goto_1

    :cond_b
    add-int/lit8 v2, p2, 0x3

    .line 33
    aget-byte v5, v1, v2

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v13

    invoke-static {v5, v2, v12}, Ll0/c0;->a(III)V

    .line 34
    :goto_1
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v14, [I

    aput v15, v5, v12

    add-int/lit8 v7, p2, 0x3

    aget-byte v1, v1, v7

    and-int/2addr v1, v3

    aput v1, v5, v13

    invoke-static {v2, v4, v5, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_5

    .line 35
    :cond_c
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 37
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 38
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 39
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 40
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 41
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 42
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 43
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v13

    aput v1, v2, v12

    .line 44
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 46
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 47
    iput v2, v0, Lk0/jr;->c:I

    move v2, v12

    .line 48
    :goto_3
    iget-object v4, v0, Lk0/jr;->d:[[I

    array-length v14, v4

    if-ge v2, v14, :cond_11

    .line 49
    iget v14, v0, Lk0/jr;->c:I

    aget-object v15, v4, v2

    aget v15, v15, v12

    if-ne v14, v15, :cond_10

    if-eqz v14, :cond_11

    .line 50
    iput v2, v0, Lk0/jr;->b:I

    goto :goto_4

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 51
    :cond_11
    :goto_4
    iget v14, v0, Lk0/jr;->c:I

    if-eq v14, v9, :cond_16

    if-eq v14, v5, :cond_14

    and-int/2addr v1, v3

    if-ne v1, v13, :cond_12

    .line 52
    array-length v1, v4

    if-ge v2, v1, :cond_18

    .line 53
    aget-object v1, v4, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_12
    if-nez v1, :cond_18

    .line 54
    iget v1, v0, Lk0/jr;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_13

    if-eq v1, v3, :cond_13

    .line 55
    aget-object v1, v4, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    .line 56
    :cond_13
    iput v3, v0, Lk0/jr;->b:I

    goto :goto_5

    :cond_14
    and-int/2addr v1, v3

    if-ne v1, v13, :cond_18

    .line 57
    sget v1, Lh0/c;->E:I

    if-eq v1, v11, :cond_15

    if-eq v1, v10, :cond_15

    if-eq v1, v9, :cond_15

    .line 58
    invoke-static {v7, v12}, Ll0/b0;->l0(II)V

    .line 59
    invoke-static {v7, v13}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_15
    const/16 v1, 0x1a

    .line 60
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 61
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_16
    and-int/2addr v1, v3

    if-ne v1, v13, :cond_18

    .line 62
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_17

    .line 63
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    .line 64
    invoke-static {v8, v13}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 65
    :cond_17
    invoke-static {v6, v12}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v6, v13}, Ll0/b0;->l0(II)V

    :cond_18
    :goto_5
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
    .locals 5

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [I

    aput p4, p1, v2

    const/16 p4, 0x77

    aput p4, p1, v4

    aput v1, p1, v3

    .line 1
    aget p4, p2, v2

    aput p4, p1, v0

    aget p4, p2, v4

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, p3

    const/4 p3, 0x6

    aget p4, p2, v0

    aput p4, p1, p3

    const/4 p3, 0x7

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    array-length p1, p2

    if-lt p1, v3, :cond_2

    new-array p1, p3, [I

    aput p4, p1, v2

    const/16 p3, 0xe0

    aput p3, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
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

    const/16 v5, -0x20

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x32

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
