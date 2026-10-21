.class public Lk0/c2;
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
    iput v0, p0, Lk0/c2;->c:I

    const/16 v1, 0xa

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

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/c2;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/c2;->e:Z

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
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x17
        0x9
    .end array-data

    :array_9
    .array-data 4
        0x19
        0xc
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
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget v3, Lk0/nt;->c:I

    if-ne v3, v1, :cond_0

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 8
    :cond_0
    iput v2, v0, Lk0/mt;->i:I

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x60

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v2, :cond_11

    const/16 v2, 0x7d

    const/16 v5, 0xb

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    if-eq v1, v2, :cond_c

    const/4 v2, 0x5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    const-string v5, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v4, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v4

    aput v8, v5, v9

    .line 4
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v4

    aput v8, v5, v9

    .line 5
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v5, v4, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v4

    aput v8, v5, v9

    .line 6
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v8, v1, 0x6

    and-int/2addr v8, v4

    aput v8, v5, v9

    .line 7
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v5, v4, [I

    shr-int/lit8 v7, v1, 0x4

    and-int/2addr v7, v4

    aput v7, v5, v9

    .line 8
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v4, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v4

    aput v5, v3, v9

    .line 9
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v4, [I

    shr-int/lit8 v5, v1, 0x3

    and-int/2addr v5, v4

    aput v5, v3, v9

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v4, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v4

    aput v1, v2, v9

    .line 11
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 12
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v1, p2, 0x2

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 14
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 15
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 16
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    .line 17
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v1, p2, 0x2

    .line 18
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 19
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 20
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0x5

    .line 21
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lk0/c2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :pswitch_3
    add-int/lit8 v1, p2, 0x2

    .line 22
    aget-byte v1, p1, v1

    add-int/lit8 v7, p2, 0x3

    .line 23
    aget-byte v7, p1, v7

    add-int/lit8 v10, p2, 0x6

    .line 24
    aget-byte v10, p1, v10

    add-int/lit8 v11, p2, 0x7

    .line 25
    aget-byte v11, p1, v11

    const/16 v12, 0xa

    new-array v13, v4, [I

    shr-int/lit8 v14, v1, 0x7

    and-int/2addr v14, v4

    aput v14, v13, v9

    .line 26
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v12, v4, [I

    shr-int/lit8 v13, v1, 0x6

    and-int/2addr v13, v4

    aput v13, v12, v9

    .line 27
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xc

    new-array v12, v4, [I

    shr-int/lit8 v13, v1, 0x5

    and-int/2addr v13, v4

    aput v13, v12, v9

    .line 28
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v12, v4, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v4

    aput v1, v12, v9

    .line 29
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v3, v4, [I

    shr-int/lit8 v5, v7, 0x7

    and-int/2addr v5, v4

    aput v5, v3, v9

    .line 30
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v3, v4, [I

    shr-int/lit8 v5, v7, 0x6

    and-int/2addr v5, v4

    aput v5, v3, v9

    .line 31
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v3, v4, [I

    shr-int/lit8 v5, v7, 0x5

    and-int/2addr v5, v4

    aput v5, v3, v9

    .line 32
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v3, v4, [I

    and-int/lit8 v5, v7, 0x7

    aput v5, v3, v9

    .line 33
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 34
    aget-byte v3, p1, v1

    add-int/lit8 v5, p2, 0x5

    .line 35
    aget-byte v7, p1, v5

    const-string v12, "persist.fyt.reversetemp"

    .line 36
    invoke-static {v12, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 37
    aget-byte v3, p1, v5

    .line 38
    aget-byte v7, p1, v1

    :cond_1
    and-int/lit16 v1, v3, 0xff

    const/4 v3, -0x3

    const/4 v5, -0x2

    const/16 v12, 0x1b

    const/16 v13, 0x1c

    if-eqz v1, :cond_3

    if-eq v1, v13, :cond_2

    if-lt v1, v4, :cond_4

    if-gt v1, v12, :cond_4

    sub-int/2addr v1, v4

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0xb9

    new-array v14, v4, [I

    aput v1, v14, v9

    .line 39
    invoke-static {v12, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_2
    new-array v1, v4, [I

    aput v3, v1, v9

    .line 40
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    new-array v1, v4, [I

    aput v5, v1, v9

    .line 41
    invoke-static {v12, v1}, Lk0/qt;->y0(I[I)V

    :cond_4
    :goto_1
    and-int/lit16 v1, v7, 0xff

    if-eqz v1, :cond_6

    if-eq v1, v13, :cond_5

    if-lt v1, v4, :cond_7

    if-gt v1, v12, :cond_7

    sub-int/2addr v1, v4

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0xb9

    new-array v2, v4, [I

    aput v1, v2, v9

    .line 42
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v1, v4, [I

    aput v3, v1, v9

    .line 43
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v1, v4, [I

    aput v5, v1, v9

    .line 44
    invoke-static {v13, v1}, Lk0/qt;->y0(I[I)V

    :cond_7
    :goto_2
    const/16 v1, 0x41

    new-array v2, v4, [I

    shr-int/lit8 v3, v10, 0x7

    and-int/2addr v3, v4

    aput v3, v2, v9

    .line 45
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v4, [I

    shr-int/lit8 v3, v10, 0x6

    and-int/2addr v3, v4

    aput v3, v2, v9

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x34

    new-array v2, v4, [I

    shr-int/lit8 v3, v10, 0x4

    and-int/2addr v3, v4

    aput v3, v2, v9

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v4, [I

    shr-int/lit8 v3, v11, 0x7

    and-int/2addr v3, v4

    aput v3, v2, v9

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v4, [I

    shr-int/lit8 v3, v11, 0x6

    and-int/2addr v3, v4

    aput v3, v2, v9

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 50
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v1, p2, 0x2

    .line 51
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 52
    aget-byte v2, p1, v2

    and-int/2addr v1, v8

    .line 53
    iput v1, v0, Lk0/c2;->c:I

    move v1, v9

    .line 54
    :goto_3
    iget-object v3, v0, Lk0/c2;->d:[[I

    array-length v5, v3

    if-ge v1, v5, :cond_9

    .line 55
    iget v5, v0, Lk0/c2;->c:I

    aget-object v6, v3, v1

    aget v6, v6, v9

    if-ne v5, v6, :cond_8

    if-eqz v5, :cond_9

    .line 56
    iput v1, v0, Lk0/c2;->b:I

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    and-int/2addr v2, v8

    if-eqz v2, :cond_a

    .line 57
    array-length v2, v3

    if-ge v1, v2, :cond_12

    .line 58
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_6

    .line 59
    :cond_a
    iget v1, v0, Lk0/c2;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_b

    if-eq v1, v8, :cond_b

    .line 60
    aget-object v1, v3, v1

    aget v1, v1, v4

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    .line 61
    :cond_b
    iput v8, v0, Lk0/c2;->b:I

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v1, p2, 0x2

    .line 62
    aget-byte v1, p1, v1

    and-int/2addr v1, v8

    const/16 v2, 0x419

    const/4 v10, 0x0

    if-eq v1, v4, :cond_f

    const/16 v5, 0x8

    if-eq v1, v3, :cond_e

    if-eq v1, v5, :cond_d

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v1, p2, 0x3

    .line 63
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 64
    aget-byte v2, p1, v2

    const/16 v3, 0x21c

    .line 65
    invoke-static {v1, v2, v4, v3}, Lk0/qt;->i(IIZI)V

    .line 66
    iput-boolean v4, v0, Lk0/c2;->e:Z

    goto :goto_6

    :cond_e
    add-int/lit8 v1, p2, 0x4

    .line 67
    aget-byte v1, p1, v1

    shl-int/2addr v1, v5

    const v5, 0xff00

    and-int/2addr v1, v5

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    or-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    const/16 v3, 0x407

    new-array v5, v4, [I

    aput v1, v5, v9

    .line 68
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 69
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v5, v7, [I

    aput v4, v5, v9

    aput v1, v5, v4

    invoke-static {v3, v2, v5, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const-string v1, "persist.fyt.leftrightlighttype"

    .line 70
    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v1, p2, 0x3

    .line 71
    aget-byte v11, p1, v1

    shr-int/2addr v11, v3

    and-int/2addr v11, v4

    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    invoke-static {v11, v1, v9}, Ll0/c0;->b(III)V

    goto :goto_5

    :cond_10
    add-int/lit8 v1, p2, 0x3

    .line 72
    aget-byte v11, p1, v1

    shr-int/2addr v11, v3

    and-int/2addr v11, v4

    aget-byte v1, p1, v1

    shr-int/2addr v1, v6

    and-int/2addr v1, v4

    invoke-static {v11, v1, v9}, Ll0/c0;->a(III)V

    .line 73
    :goto_5
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    new-array v6, v7, [I

    aput v5, v6, v9

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v8

    aput v3, v6, v4

    invoke-static {v1, v2, v6, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_6

    .line 74
    :cond_11
    iget-boolean v1, v0, Lk0/c2;->e:Z

    if-nez v1, :cond_12

    add-int/lit8 v1, p2, 0x2

    .line 75
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1518

    invoke-static {v1, v2, v4, v3}, Lk0/qt;->l(IIZI)V

    :cond_12
    :goto_6
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
    .locals 0

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

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, p3

    const/16 v1, -0x7a

    aput v1, p1, p4

    aput v0, p1, v0

    const/4 p4, 0x3

    const/4 v0, 0x7

    aput v0, p1, p4

    const/4 p4, 0x4

    .line 2
    aget p2, p2, p3

    int-to-byte p2, p2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    aget p1, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/c2;->b3(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    :cond_2
    :goto_0
    return v0
.end method

.method public final b3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7d

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
