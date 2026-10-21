.class public Lk0/m1;
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
    iput v0, p0, Lk0/m1;->c:I

    const/16 v1, 0x8

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

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/m1;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/m1;->e:Z

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x7
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_17

    const/16 p3, 0x24

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, p3, :cond_15

    const/16 p3, 0x7d

    const/16 v7, 0x21c

    const/16 v8, 0xb

    const/16 v9, 0xff

    if-eq v0, p3, :cond_10

    const/16 p3, 0x26

    if-eq v0, p3, :cond_f

    const/16 p3, 0x27

    const/16 v7, 0xa

    if-eq v0, p3, :cond_d

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_18

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-virtual {p0, p3}, Lk0/m1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-virtual {p0, p3}, Lk0/m1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-virtual {p0, p3}, Lk0/m1;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-virtual {p0, p1}, Lk0/m1;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 7
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 8
    aget-byte v0, p1, v0

    new-array v10, v6, [I

    shr-int/lit8 v11, p3, 0x7

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 9
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v10, p3, 0x6

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 10
    invoke-static {v8, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xc

    new-array v8, v6, [I

    shr-int/lit8 v10, p3, 0x5

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 11
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v8, v6, [I

    shr-int/lit8 v10, p3, 0x4

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 12
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x37

    new-array v8, v6, [I

    shr-int/lit8 v10, p3, 0x3

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 13
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v8, v6, [I

    shr-int/lit8 v10, p3, 0x2

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 14
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x41

    new-array v8, v6, [I

    shr-int/lit8 v10, p3, 0x1

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 15
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x10

    new-array v8, v6, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v6

    aput p3, v8, v5

    .line 16
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p3, v0, 0x4

    and-int/2addr p3, v9

    if-eq p3, v6, :cond_3

    if-eq p3, v2, :cond_2

    if-eq p3, v4, :cond_1

    if-eq p3, v3, :cond_0

    move p3, v5

    move v2, p3

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    move v2, v5

    move p3, v6

    move v3, p3

    goto :goto_1

    :cond_1
    move p3, v5

    move v2, p3

    move v3, v6

    goto :goto_1

    :cond_2
    move p3, v5

    move v2, v6

    goto :goto_0

    :cond_3
    move p3, v5

    move v3, p3

    move v2, v6

    :goto_1
    const/16 v4, 0x12

    new-array v7, v6, [I

    aput p3, v7, v5

    .line 17
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 18
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v2, v6, [I

    aput v3, v2, v5

    .line 19
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v2, v6, [I

    and-int/lit8 v0, v0, 0x7

    aput v0, v2, v5

    .line 20
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 21
    aget-byte v0, p1, p3

    add-int/2addr p2, v1

    .line 22
    aget-byte v1, p1, p2

    const-string v2, "persist.fyt.reversetemp"

    .line 23
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    aget-byte v0, p1, p2

    .line 25
    aget-byte v1, p1, p3

    :cond_4
    and-int/lit16 p1, v0, 0xff

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v2, 0x1f

    const/16 v3, 0x1b

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    new-array p1, v6, [I

    add-int/lit8 v0, v0, 0x23

    aput v0, p1, v5

    .line 26
    invoke-static {v3, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array p1, v6, [I

    aput p2, p1, v5

    .line 27
    invoke-static {v3, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array p1, v6, [I

    aput p3, p1, v5

    .line 28
    invoke-static {v3, p1}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 p1, v1, 0xff

    const/16 v0, 0x1c

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    new-array p1, v6, [I

    add-int/lit8 v1, v1, 0x23

    aput v1, p1, v5

    .line 29
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_7
    new-array p1, v6, [I

    aput p2, p1, v5

    .line 30
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_8
    new-array p1, v6, [I

    aput p3, p1, v5

    .line 31
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 32
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_18

    add-int/lit8 p3, p2, 0x2

    .line 33
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 34
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 35
    iput p2, p0, Lk0/m1;->c:I

    move p2, v5

    .line 36
    :goto_3
    iget-object p3, p0, Lk0/m1;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 37
    iget v0, p0, Lk0/m1;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_9

    if-eqz v0, :cond_a

    .line 38
    iput p2, p0, Lk0/m1;->b:I

    goto :goto_4

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    and-int/2addr p1, v9

    if-ne p1, v6, :cond_b

    .line 39
    array-length p1, p3

    if-ge p2, p1, :cond_18

    .line 40
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_b
    if-nez p1, :cond_18

    .line 41
    iget p1, p0, Lk0/m1;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v9, :cond_c

    .line 42
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 43
    :cond_c
    iput v9, p0, Lk0/m1;->b:I

    goto/16 :goto_8

    .line 44
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_18

    add-int/2addr p2, v2

    .line 45
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_e

    and-int/lit8 p1, p1, 0x7f

    mul-int/2addr p1, v7

    rsub-int p1, p1, 0x3e8

    goto :goto_5

    :cond_e
    and-int/2addr p1, v9

    mul-int/2addr p1, v7

    add-int/lit16 p1, p1, 0x3e8

    .line 46
    :goto_5
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_8

    .line 47
    :cond_f
    iget-boolean p3, p0, Lk0/m1;->e:Z

    if-nez p3, :cond_18

    add-int/lit8 p3, p2, 0x3

    .line 48
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    invoke-static {p3, p1, v5, v7}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_8

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    const/16 v0, 0x419

    const/4 v1, 0x0

    if-eq p3, v6, :cond_13

    const/16 v8, 0x8

    if-eq p3, v4, :cond_12

    if-eq p3, v8, :cond_11

    goto/16 :goto_8

    :cond_11
    add-int/lit8 p3, p2, 0x3

    .line 50
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 51
    aget-byte p1, p1, p2

    .line 52
    invoke-static {p3, p1, v6, v7}, Lk0/qt;->i(IIZI)V

    .line 53
    iput-boolean v6, p0, Lk0/m1;->e:Z

    goto/16 :goto_8

    :cond_12
    add-int/lit8 p3, p2, 0x4

    .line 54
    aget-byte p3, p1, p3

    shl-int/2addr p3, v8

    const v3, 0xff00

    and-int/2addr p3, v3

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v6, [I

    aput p1, p3, v5

    .line 55
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 56
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    new-array p3, v2, [I

    aput v6, p3, v5

    aput p1, p3, v6

    invoke-static {p2, v0, p3, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_13
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 57
    invoke-static {p3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_14

    add-int/lit8 p3, p2, 0x3

    .line 58
    aget-byte v7, p1, p3

    shr-int/2addr v7, v4

    and-int/2addr v7, v6

    aget-byte p3, p1, p3

    shr-int/2addr p3, v3

    and-int/2addr p3, v6

    invoke-static {v7, p3, v5}, Ll0/c0;->b(III)V

    goto :goto_6

    :cond_14
    add-int/lit8 p3, p2, 0x3

    .line 59
    aget-byte v7, p1, p3

    shr-int/2addr v7, v4

    and-int/2addr v7, v6

    aget-byte p3, p1, p3

    shr-int/2addr p3, v3

    and-int/2addr p3, v6

    invoke-static {v7, p3, v5}, Ll0/c0;->a(III)V

    .line 60
    :goto_6
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    new-array v2, v2, [I

    aput v8, v2, v5

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    aput p1, v2, v6

    invoke-static {p3, v0, v2, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_8

    :cond_15
    add-int/2addr p2, v4

    .line 61
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 62
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_16

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 63
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 64
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 65
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 66
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 67
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v6

    aput p3, p2, v5

    .line 68
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 69
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    .line 70
    :cond_17
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_18
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x20
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
    .locals 0

    return-void
.end method

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :cond_3
    :goto_0
    return v0
.end method
