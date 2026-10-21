.class public Lk0/fr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fr;->c:I

    const/4 v1, 0x6

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    iput-object v2, p0, Lk0/fr;->d:[[I

    .line 4
    iput v0, p0, Lk0/fr;->f:I

    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_6

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/fr;->g:[[I

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
        0x9
        0xd
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x8
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x7
    .end array-data

    :array_c
    .array-data 4
        0x11
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x14
        0xd
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    sget v3, Lk0/nt;->a:I

    const v4, 0x6e01c6

    if-eq v3, v4, :cond_1

    const v1, 0x6f01c6

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput v2, v0, Lk0/mt;->i:I

    const-string v1, "com.syu.canbus"

    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iput v1, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x28

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x7d

    const/16 v8, 0xb

    const/16 v9, 0xff

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_19

    const/16 p3, 0x12

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v9

    add-int/lit8 v1, p2, 0x3

    .line 3
    aget-byte v4, p1, v1

    and-int/2addr v4, v9

    add-int/lit8 v5, p2, 0x4

    .line 4
    aget-byte v8, p1, v5

    and-int/2addr v8, v9

    add-int/2addr p2, v2

    .line 5
    aget-byte v2, p1, p2

    and-int/2addr v2, v9

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v8, :cond_0

    if-nez v2, :cond_0

    .line 6
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v6, Ll0/c0;->g:I

    if-ne v6, v0, :cond_1

    sget v6, Ll0/c0;->h:I

    if-ne v6, v4, :cond_1

    sget v6, Ll0/c0;->i:I

    if-ne v6, v8, :cond_1

    sget v6, Ll0/c0;->j:I

    if-eq v6, v2, :cond_2

    .line 8
    :cond_1
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_2

    .line 9
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 10
    sput v3, Ll0/c0;->k:I

    .line 11
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v4, Ll0/c0;->h:I

    .line 14
    sput v8, Ll0/c0;->i:I

    .line 15
    sput v2, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->k1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v1

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v5

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-static {p1}, Ll0/c0;->k1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->k1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v2

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    invoke-static {p1}, Ll0/c0;->k1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 v0, p2, 0x2

    .line 24
    aget-byte v0, p1, v0

    const/16 v1, 0xa

    new-array v2, v7, [I

    shr-int/lit8 v10, v0, 0x7

    and-int/2addr v10, v7

    aput v10, v2, v6

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    .line 26
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v7, [I

    shr-int/lit8 v8, v0, 0x5

    and-int/2addr v8, v7

    aput v8, v2, v6

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v7, [I

    shr-int/lit8 v8, v0, 0x4

    and-int/2addr v8, v7

    aput v8, v2, v6

    .line 28
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v7, [I

    shr-int/lit8 v8, v0, 0x1

    and-int/2addr v8, v7

    aput v8, v2, v6

    .line 29
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xf

    new-array v2, v7, [I

    shr-int/2addr v0, v6

    and-int/2addr v0, v7

    aput v0, v2, v6

    .line 30
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x3

    .line 31
    aget-byte v0, p1, v0

    if-eqz v0, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    move v1, v6

    move v2, v1

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_3
    move v2, v6

    move v3, v2

    move v1, v7

    goto :goto_2

    :cond_4
    move v2, v6

    move v1, v7

    move v3, v1

    goto :goto_2

    :cond_5
    move v1, v6

    move v2, v1

    move v3, v7

    goto :goto_2

    :cond_6
    move v1, v6

    move v2, v7

    goto :goto_1

    :cond_7
    move v1, v6

    move v3, v1

    move v2, v7

    :goto_2
    new-array v4, v7, [I

    aput v1, v4, v6

    .line 32
    invoke-static {p3, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v7, [I

    aput v2, v1, v6

    .line 33
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v7, [I

    aput v3, v1, v6

    .line 34
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v1, v7, [I

    and-int/2addr v0, v9

    aput v0, v1, v6

    .line 35
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x4

    .line 36
    aget-byte v1, p1, v1

    and-int/2addr v1, v9

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 37
    aget-byte v0, p1, p3

    and-int/2addr v0, v9

    add-int/lit8 p2, p2, 0x6

    .line 38
    aget-byte v1, p1, p2

    and-int/2addr v1, v9

    const-string v2, "persist.fyt.reversetemp"

    .line 39
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 40
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 41
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_8
    const/4 p1, -0x3

    const/4 p2, -0x1

    const/4 p3, -0x2

    const/16 v2, 0xfe

    const/16 v3, 0x1b

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    if-eq v0, v9, :cond_9

    new-array v4, v7, [I

    aput v0, v4, v6

    .line 42
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v0, v7, [I

    aput p1, v0, v6

    .line 43
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v0, v7, [I

    aput p2, v0, v6

    .line 44
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v0, v7, [I

    aput p3, v0, v6

    .line 45
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v0, 0x1c

    if-eqz v1, :cond_e

    if-eq v1, v2, :cond_d

    if-eq v1, v9, :cond_c

    new-array p1, v7, [I

    aput v1, p1, v6

    .line 46
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_c
    new-array p2, v7, [I

    aput p1, p2, v6

    .line 47
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    new-array p1, v7, [I

    aput p2, p1, v6

    .line 48
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_e
    new-array p1, v7, [I

    aput p3, p1, v6

    .line 49
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 50
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 51
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 52
    iput p2, p0, Lk0/fr;->f:I

    move p2, v6

    .line 53
    :goto_4
    iget-object p3, p0, Lk0/fr;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_10

    .line 54
    iget v0, p0, Lk0/fr;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_f

    if-eqz v0, :cond_10

    .line 55
    iput p2, p0, Lk0/fr;->e:I

    goto :goto_5

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_10
    :goto_5
    and-int/2addr p1, v9

    if-ne p1, v7, :cond_11

    .line 56
    array-length p1, p3

    if-ge p2, p1, :cond_20

    .line 57
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_11
    if-nez p1, :cond_20

    .line 58
    iget p1, p0, Lk0/fr;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_12

    if-eq p1, v9, :cond_12

    .line 59
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 60
    :cond_12
    iput v9, p0, Lk0/fr;->e:I

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 v0, p2, 0x2

    .line 61
    aget-byte v0, p1, v0

    add-int/2addr p2, v4

    .line 62
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 63
    iput p2, p0, Lk0/fr;->c:I

    move p2, v6

    .line 64
    :goto_6
    iget-object v0, p0, Lk0/fr;->d:[[I

    array-length v1, v0

    if-ge p2, v1, :cond_14

    .line 65
    iget v1, p0, Lk0/fr;->c:I

    aget-object v3, v0, p2

    aget v3, v3, v6

    if-ne v1, v3, :cond_13

    if-eqz v1, :cond_14

    .line 66
    iput p2, p0, Lk0/fr;->b:I

    goto :goto_7

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 67
    :cond_14
    :goto_7
    iget v1, p0, Lk0/fr;->c:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_17

    and-int/2addr p1, v9

    if-ne p1, v7, :cond_15

    .line 68
    array-length p1, v0

    if-ge p2, p1, :cond_20

    .line 69
    aget-object p1, v0, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_15
    if-nez p1, :cond_20

    .line 70
    iget p1, p0, Lk0/fr;->b:I

    array-length p2, v0

    if-ge p1, p2, :cond_16

    if-eq p1, v9, :cond_16

    .line 71
    aget-object p1, v0, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 72
    :cond_16
    iput v9, p0, Lk0/fr;->b:I

    goto/16 :goto_9

    :cond_17
    and-int/2addr p1, v9

    if-ne p1, v7, :cond_20

    .line 73
    sget p1, Lh0/c;->E:I

    if-eq p1, v4, :cond_18

    if-eq p1, v2, :cond_18

    .line 74
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_18
    const/16 p1, 0x1a

    .line 76
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 78
    :cond_19
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1a
    add-int/lit8 p3, p2, 0x2

    .line 79
    aget-byte p3, p1, p3

    and-int/2addr p3, v9

    if-eq p3, v7, :cond_1b

    goto/16 :goto_9

    :cond_1b
    add-int/2addr p2, v4

    .line 80
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v7

    invoke-static {p3, v0, v6}, Ll0/c0;->a(III)V

    .line 81
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v5, [I

    aput v8, v1, v6

    aget-byte p1, p1, p2

    and-int/2addr p1, v9

    aput p1, v1, v7

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1c
    const/16 p3, 0x62

    new-array v0, v7, [I

    add-int/2addr p2, v5

    .line 82
    aget-byte v1, p1, p2

    shr-int/2addr v1, v2

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v7, [I

    .line 83
    aget-byte v1, p1, p2

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v7, [I

    .line 84
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v7, [I

    .line 85
    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v4

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1d
    add-int/lit8 p3, p2, 0x2

    .line 86
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 87
    aget-byte p1, p1, p2

    const/16 p2, 0x1e68

    const/16 v0, 0x1737

    .line 88
    invoke-static {p1, p3, p2, v6, v0}, Lk0/qt;->m(IIIZI)V

    goto :goto_9

    :cond_1e
    add-int/2addr p2, v5

    .line 89
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 90
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1f

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 91
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 92
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1f
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 93
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 94
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 95
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 96
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 97
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :cond_20
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, p4, [I

    aput v1, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v3

    .line 1
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0xe0

    aput p3, p1, v4

    aput v3, p1, v3

    .line 2
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, p3, [I

    aput v1, p1, v2

    const/16 p3, 0x80

    aput p3, p1, v4

    aput v3, p1, v3

    .line 3
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
