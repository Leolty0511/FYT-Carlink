.class public Lk0/na;
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
    iput v0, p0, Lk0/na;->c:I

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

    iput-object v1, p0, Lk0/na;->d:[[I

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
        0xe
        0x22
    .end array-data

    :array_6
    .array-data 4
        0xf
        0x23
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x20
    .end array-data

    :array_8
    .array-data 4
        0x11
        0x21
    .end array-data

    :array_9
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xf0
        0x7
    .end array-data

    :array_c
    .array-data 4
        0xf1
        0x8
    .end array-data

    :array_d
    .array-data 4
        0x34
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x33
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x3f
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x54
        0xb
    .end array-data

    :array_11
    .array-data 4
        0x57
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x5a
        0xc
    .end array-data

    :array_13
    .array-data 4
        0x5b
        0x19
    .end array-data

    :array_14
    .array-data 4
        0x56
        0x27
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 0

    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x35

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p3, v0, :cond_6

    const/4 v0, 0x5

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/4 p3, 0x2

    add-int/2addr p2, p3

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p2, v2, [I

    shr-int/lit8 v4, p1, 0x7

    and-int/2addr v4, v2

    aput v4, p2, v3

    .line 4
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v4, v2

    aput v4, p2, v3

    .line 5
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v2, [I

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v4, v2

    aput v4, p2, v3

    .line 6
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 v4, p1, 0x7

    and-int/2addr v4, v2

    aput v4, p2, v3

    .line 7
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v2

    aput p3, p2, v3

    const/4 p3, 0x4

    .line 8
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v2

    aput p3, p2, v3

    .line 9
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v2, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v2

    aput p1, p2, v3

    .line 10
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/na;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 13
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/na;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 14
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/na;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/2addr p2, v0

    .line 15
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/na;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    .line 16
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/na;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 18
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/na;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 19
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Lk0/na;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v0

    .line 20
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/na;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    .line 21
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 22
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p2, p2, 0x7

    .line 23
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_1

    move v3, v2

    :cond_1
    if-eqz v3, :cond_2

    not-int p1, p1

    add-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_1

    :cond_2
    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    .line 24
    :goto_1
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_4

    .line 25
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p3, p2, 0x2

    .line 26
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 27
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 28
    iput p2, p0, Lk0/na;->c:I

    move p2, v3

    .line 29
    :goto_2
    iget-object p3, p0, Lk0/na;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 30
    iget v0, p0, Lk0/na;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_3

    if-eqz v0, :cond_4

    .line 31
    iput p2, p0, Lk0/na;->b:I

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_5

    .line 32
    array-length p1, p3

    if-ge p2, p1, :cond_7

    .line 33
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_4

    .line 34
    :cond_5
    array-length p1, p3

    if-gt p2, p1, :cond_7

    .line 35
    iget p1, p0, Lk0/na;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x3138

    invoke-static {p3, p1, v2, p2}, Lk0/qt;->i(IIZI)V

    :cond_7
    :goto_4
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
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a3(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xf

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0xa

    .line 1
    div-int/lit8 p1, p1, 0x1e

    :goto_0
    return p1
.end method
