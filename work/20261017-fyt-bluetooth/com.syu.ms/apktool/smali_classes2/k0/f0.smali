.class public Lk0/f0;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/f0;->d:I

    const/16 v0, 0x13

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_12

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/f0;->e:[[I

    .line 4
    new-instance v0, Lk0/f0$a;

    invoke-direct {v0, p0}, Lk0/f0$a;-><init>(Lk0/f0;)V

    iput-object v0, p0, Lk0/f0;->f:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x15
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x40
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x8
    .end array-data
.end method

.method public static a3()V
    .locals 9

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v4, 0xd2

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 2
    sget v4, Lu0/b;->D:I

    const/4 v6, 0x3

    const/16 v7, 0xa

    const/4 v8, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    aput v3, v1, v8

    goto :goto_1

    :pswitch_2
    const/16 v3, 0xb

    aput v3, v1, v8

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x8

    aput v3, v1, v8

    goto :goto_1

    :pswitch_4
    const/16 v3, 0xc

    aput v3, v1, v8

    goto :goto_1

    .line 3
    :pswitch_5
    sget v4, Lo0/e;->H:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x7

    aput v3, v1, v8

    goto :goto_1

    :cond_1
    if-ne v4, v8, :cond_2

    const/16 v3, 0xe

    aput v3, v1, v8

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_7

    aput v3, v1, v8

    goto :goto_1

    :pswitch_6
    aput v7, v1, v8

    goto :goto_1

    :pswitch_7
    aput v7, v1, v8

    goto :goto_1

    .line 4
    :pswitch_8
    sget v3, Lw0/d;->h:I

    const/high16 v4, 0x10000

    sub-int v7, v3, v4

    if-nez v7, :cond_3

    aput v5, v1, v8

    goto :goto_1

    :cond_3
    sub-int v7, v3, v4

    if-ne v5, v7, :cond_4

    aput v8, v1, v8

    goto :goto_1

    :cond_4
    sub-int v4, v3, v4

    if-ne v8, v4, :cond_5

    aput v6, v1, v8

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x0

    if-nez v4, :cond_6

    const/4 v3, 0x4

    aput v3, v1, v8

    goto :goto_1

    :cond_6
    sub-int/2addr v3, v2

    if-ne v5, v3, :cond_7

    const/4 v3, 0x5

    aput v3, v1, v8

    goto :goto_1

    :pswitch_9
    const/16 v3, 0x9

    aput v3, v1, v8

    .line 5
    :cond_7
    :goto_1
    sget v3, Lu0/b;->o:I

    const/16 v4, 0x10

    if-ne v3, v5, :cond_8

    aput v4, v1, v8

    :cond_8
    new-array v3, v4, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_2
    if-ge v2, v0, :cond_9

    add-int/lit8 v4, v2, 0x1

    .line 6
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_2

    .line 7
    :cond_9
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/f0;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lk0/mt;->e:I

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_10

    const/16 p3, 0xb

    const/4 v1, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 2
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_11

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    iput p3, p0, Lk0/f0;->d:I

    move p3, v4

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/f0;->e:[[I

    array-length v2, v0

    if-ge p3, v2, :cond_1

    .line 5
    iget v2, p0, Lk0/f0;->d:I

    aget-object v6, v0, p3

    aget v6, v6, v4

    if-ne v2, v6, :cond_0

    if-eqz v2, :cond_1

    .line 6
    iput p3, p0, Lk0/f0;->b:I

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget v2, p0, Lk0/f0;->d:I

    if-eqz v2, :cond_2

    .line 8
    array-length v2, v0

    if-ge p3, v2, :cond_4

    .line 9
    aget-object p3, v0, p3

    aget p3, p3, v5

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 10
    :cond_2
    iget p3, p0, Lk0/f0;->b:I

    array-length v2, v0

    if-ge p3, v2, :cond_3

    if-eq p3, v3, :cond_3

    .line 11
    aget-object p3, v0, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 12
    :cond_3
    iput v3, p0, Lk0/f0;->b:I

    .line 13
    :cond_4
    :goto_2
    iget p3, p0, Lk0/f0;->d:I

    if-nez p3, :cond_11

    add-int/2addr p2, v1

    .line 14
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v3

    iput p1, p0, Lk0/f0;->d:I

    if-eqz p1, :cond_5

    and-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x11

    .line 15
    iput p1, p0, Lk0/f0;->d:I

    :cond_5
    move p1, v4

    .line 16
    :goto_3
    iget-object p2, p0, Lk0/f0;->e:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_7

    .line 17
    iget p3, p0, Lk0/f0;->d:I

    aget-object v0, p2, p1

    aget v0, v0, v4

    if-ne p3, v0, :cond_6

    if-eqz p3, :cond_7

    .line 18
    iput p1, p0, Lk0/f0;->c:I

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 19
    :cond_7
    :goto_4
    array-length p3, p2

    if-ge p1, p3, :cond_11

    .line 20
    aget-object p2, p2, p1

    aget p2, p2, v5

    invoke-static {p2, v4}, Ll0/b0;->l0(II)V

    .line 21
    iget-object p2, p0, Lk0/f0;->e:[[I

    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v0, p2, 0x2

    .line 22
    aget-byte v0, p1, v0

    add-int/lit8 v6, p2, 0x3

    .line 23
    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x4

    .line 24
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x6

    .line 25
    aget-byte v8, p1, v8

    add-int/lit8 v9, p2, 0x7

    .line 26
    aget-byte v9, p1, v9

    add-int/lit8 p2, p2, 0x8

    .line 27
    aget-byte p1, p1, p2

    new-array p2, v5, [I

    shr-int/lit8 v10, v0, 0x6

    and-int/2addr v10, v5

    aput v10, p2, v4

    const/16 v10, 0xa

    .line 28
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    const/4 v10, 0x5

    shr-int/2addr v0, v10

    and-int/2addr v0, v5

    aput v0, p2, v4

    const/16 v0, 0xc

    .line 29
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 v0, v6, 0x6

    and-int/2addr v0, v5

    aput v0, p2, v4

    .line 30
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1b

    new-array p3, v5, [I

    and-int/lit16 v0, v7, 0xff

    aput v0, p3, v4

    .line 31
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/4 p2, 0x4

    if-eqz v8, :cond_c

    if-eq v8, v5, :cond_b

    if-eq v8, v2, :cond_a

    if-eq v8, v1, :cond_9

    if-eq v8, p2, :cond_8

    move p3, v4

    move v0, p3

    :goto_5
    move v6, v0

    goto :goto_6

    :cond_8
    move p3, v4

    move v0, p3

    move v6, v5

    goto :goto_6

    :cond_9
    move p3, v4

    move v0, v5

    goto :goto_5

    :cond_a
    move p3, v4

    move v6, p3

    move v0, v5

    goto :goto_6

    :cond_b
    move v6, v4

    move p3, v5

    move v0, p3

    goto :goto_6

    :cond_c
    move v0, v4

    move v6, v0

    move p3, v5

    :goto_6
    const/16 v7, 0x13

    new-array v8, v5, [I

    aput p3, v8, v4

    .line 32
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v7, v5, [I

    aput v0, v7, v4

    .line 33
    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v5, [I

    aput v6, v0, v4

    .line 34
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    and-int/2addr v3, v9

    aput v3, v0, v4

    .line 35
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.syu.reversefrontdoor"

    .line 36
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_d

    new-array p3, v5, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 37
    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 38
    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_d
    new-array p3, v5, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 39
    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 40
    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array p3, v5, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 41
    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v5

    aput v0, p3, v4

    .line 42
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 43
    invoke-static {v10, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 44
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    sget v0, Lk0/nt;->a:I

    const v1, 0x20022

    if-ne v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x7

    .line 46
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    const/16 v4, 0x226

    invoke-static {v0, v2, v5, v4}, Lk0/qt;->i(IIZI)V

    .line 47
    :cond_e
    sget v0, Lk0/nt;->a:I

    if-ne v0, v1, :cond_f

    add-int/lit8 p3, p2, 0x8

    .line 48
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/f0;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 49
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/f0;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0xa

    .line 50
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/f0;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0xb

    .line 51
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/f0;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0xc

    .line 52
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lk0/f0;->b3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p2, p2, 0xf

    .line 53
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/f0;->b3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_8

    :cond_f
    add-int/lit8 v0, p2, 0x8

    .line 54
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lk0/f0;->b3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/2addr p2, p3

    .line 55
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk0/f0;->b3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_8

    .line 56
    :cond_10
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_11
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/f0;->f:Ljava/lang/Runnable;

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

.method public b3(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    .line 1
    div-int/lit8 p1, p1, 0x8

    return p1
.end method
