.class public Lk0/mn;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/mn;->c:I

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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v10, 0x9

    aput-object v3, v1, v10

    iput-object v1, p0, Lk0/mn;->d:[[I

    new-array v1, v9, [[I

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_a

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    aput-object v0, v1, v2

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    aput-object v0, v1, v5

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    aput-object v0, v1, v6

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    aput-object v0, v1, v7

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    aput-object v0, v1, v8

    iput-object v1, p0, Lk0/mn;->e:[[I

    .line 5
    new-instance v0, Lk0/mn$a;

    invoke-direct {v0, p0}, Lk0/mn$a;-><init>(Lk0/mn;)V

    iput-object v0, p0, Lk0/mn;->f:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x4
    .end array-data

    :array_4
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xd
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x19
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x1d
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x1c
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x5
        0xd
    .end array-data

    :array_f
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_10
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
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/mn;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x1d

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v0, :cond_1c

    const/16 v0, 0x1e

    if-eq p3, v0, :cond_1b

    const/16 v0, 0x20

    const/4 v6, 0x3

    if-eq p3, v0, :cond_11

    const/16 v7, 0x24

    const/4 v8, 0x2

    if-eq p3, v7, :cond_f

    const/16 v7, 0x7d

    const/16 v9, 0xb

    if-eq p3, v7, :cond_d

    const/16 v7, 0x28

    if-eq p3, v7, :cond_1

    const/16 v0, 0x29

    if-eq p3, v0, :cond_0

    goto/16 :goto_9

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    const/16 p2, 0x1e78

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :cond_1
    const/16 p3, 0xa

    new-array v7, v5, [I

    add-int/lit8 v10, p2, 0x2

    .line 3
    aget-byte v11, p1, v10

    shr-int/lit8 v11, v11, 0x7

    and-int/2addr v11, v5

    aput v11, v7, v4

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 4
    aget-byte v7, p1, v10

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v5

    aput v7, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v7, v5, [I

    .line 5
    aget-byte v9, p1, v10

    shr-int/2addr v9, v1

    and-int/2addr v9, v5

    aput v9, v7, v4

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x35

    new-array v7, v5, [I

    .line 6
    aget-byte v9, p1, v10

    shr-int/lit8 v2, v9, 0x4

    and-int/2addr v2, v5

    aput v2, v7, v4

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v2, v5, [I

    .line 7
    aget-byte v7, p1, v10

    shr-int/lit8 v6, v7, 0x3

    and-int/2addr v6, v5

    aput v6, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v2, v5, [I

    .line 8
    aget-byte v6, p1, v10

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 9
    aget-byte v2, p1, v10

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    aput v2, p3, v4

    const/16 v2, 0xf

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v6, v5, [I

    .line 10
    aget-byte v7, p1, v10

    shr-int/2addr v7, v4

    and-int/2addr v7, v5

    aput v7, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v6, v5, [I

    add-int/lit8 v7, p2, 0x3

    .line 11
    aget-byte v8, p1, v7

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v5

    aput v8, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v6, v5, [I

    .line 12
    aget-byte v8, p1, v7

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v5

    aput v8, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v6, v5, [I

    .line 13
    aget-byte v8, p1, v7

    shr-int/2addr v8, v1

    and-int/2addr v8, v5

    aput v8, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v6, v5, [I

    .line 14
    aget-byte v7, p1, v7

    shr-int/2addr v7, v4

    and-int/2addr v2, v7

    aput v2, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 15
    aget-byte v2, p1, p3

    and-int/2addr v2, v3

    add-int/2addr p2, v1

    .line 16
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    const-string v6, "persist.fyt.reversetemp"

    .line 17
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 18
    aget-byte p2, p1, p2

    and-int/lit16 v2, p2, 0xff

    .line 19
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    .line 20
    :cond_2
    sget p1, Lk0/nt;->a:I

    const p2, 0xfd01c4

    const/4 p3, -0x3

    const/4 v3, -0x2

    const/16 v6, 0x1c

    const/16 v7, 0x1b

    if-eq p1, p2, :cond_8

    const p2, 0xfe01c4

    if-eq p1, p2, :cond_8

    const p2, 0x2d01c5

    if-eq p1, p2, :cond_8

    const p2, 0x3001c5

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    new-array p1, v5, [I

    aput v3, p1, v4

    .line 21
    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    if-ne v2, v0, :cond_5

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 22
    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array p1, v5, [I

    aput v2, p1, v4

    .line 23
    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    :goto_0
    if-nez v1, :cond_6

    new-array p1, v5, [I

    aput v3, p1, v4

    .line 24
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_6
    if-ne v1, v0, :cond_7

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 25
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_7
    new-array p1, v5, [I

    aput v1, p1, v4

    .line 26
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_8
    :goto_1
    const/16 p1, 0x1f

    if-nez v2, :cond_9

    new-array p2, v5, [I

    aput v3, p2, v4

    .line 27
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    if-ne v2, p1, :cond_a

    new-array p2, v5, [I

    aput p3, p2, v4

    .line 28
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array p2, v5, [I

    aput v2, p2, v4

    .line 29
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-nez v1, :cond_b

    new-array p1, v5, [I

    aput v3, p1, v4

    .line 30
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_b
    if-ne v1, p1, :cond_c

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 31
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_c
    new-array p1, v5, [I

    aput v1, p1, v4

    .line 32
    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_d
    add-int/lit8 p3, p2, 0x2

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_e

    goto/16 :goto_9

    :cond_e
    add-int/2addr p2, v6

    .line 34
    aget-byte p3, p1, p2

    shr-int/2addr p3, v6

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v2

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 35
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v8, [I

    aput v9, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_f
    add-int/2addr p2, v8

    .line 36
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 37
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_10

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 38
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 39
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 40
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 41
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 42
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 43
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 44
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 45
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 46
    aget-byte p1, p1, p2

    .line 47
    sget p2, Lk0/nt;->a:I

    const v0, 0xef01c4

    if-ne p2, v0, :cond_16

    and-int/lit16 p2, p3, 0xff

    .line 48
    iput p2, p0, Lk0/mn;->c:I

    move p2, v4

    .line 49
    :goto_4
    iget-object p3, p0, Lk0/mn;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_13

    .line 50
    iget v0, p0, Lk0/mn;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_13

    .line 51
    iput p2, p0, Lk0/mn;->b:I

    goto :goto_5

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_13
    :goto_5
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_14

    .line 52
    array-length p1, p3

    if-ge p2, p1, :cond_20

    .line 53
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_14
    if-nez p1, :cond_20

    .line 54
    iget p1, p0, Lk0/mn;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_15

    if-eq p1, v3, :cond_15

    .line 55
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 56
    :cond_15
    iput v3, p0, Lk0/mn;->b:I

    goto/16 :goto_9

    :cond_16
    and-int/lit16 p2, p3, 0xff

    .line 57
    iput p2, p0, Lk0/mn;->c:I

    move p2, v4

    .line 58
    :goto_6
    iget-object p3, p0, Lk0/mn;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_18

    .line 59
    iget v0, p0, Lk0/mn;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_17

    if-eqz v0, :cond_18

    .line 60
    iput p2, p0, Lk0/mn;->b:I

    goto :goto_7

    :cond_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_18
    :goto_7
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_19

    .line 61
    array-length p1, p3

    if-ge p2, p1, :cond_20

    .line 62
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_19
    if-nez p1, :cond_20

    .line 63
    iget p1, p0, Lk0/mn;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_1a

    if-eq p1, v3, :cond_1a

    .line 64
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 65
    :cond_1a
    iput v3, p0, Lk0/mn;->b:I

    goto/16 :goto_9

    :cond_1b
    add-int/lit8 p3, p2, 0x2

    .line 66
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 67
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 68
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 69
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_9

    :cond_1c
    add-int/lit8 p3, p2, 0x2

    .line 70
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v6, p2, 0x3

    .line 71
    aget-byte v7, p1, v6

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x4

    .line 72
    aget-byte v9, p1, v8

    and-int/2addr v9, v3

    add-int/2addr p2, v1

    .line 73
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    if-nez v0, :cond_1d

    if-nez v7, :cond_1d

    if-nez v9, :cond_1d

    if-nez v1, :cond_1d

    .line 74
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_8

    .line 75
    :cond_1d
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_1e

    sget v4, Ll0/c0;->h:I

    if-ne v4, v7, :cond_1e

    sget v4, Ll0/c0;->i:I

    if-ne v4, v9, :cond_1e

    sget v4, Ll0/c0;->j:I

    if-eq v4, v1, :cond_1f

    .line 76
    :cond_1e
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_1f

    .line 77
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 78
    sput v2, Ll0/c0;->k:I

    .line 79
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 80
    :cond_1f
    :goto_8
    sput v0, Ll0/c0;->g:I

    .line 81
    sput v7, Ll0/c0;->h:I

    .line 82
    sput v9, Ll0/c0;->i:I

    .line 83
    sput v1, Ll0/c0;->j:I

    .line 84
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 85
    aget-byte p3, p1, v6

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 86
    aget-byte p3, p1, v8

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 87
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    :cond_20
    :goto_9
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

    .line 3
    iget-object v0, p0, Lk0/mn;->f:Ljava/lang/Runnable;

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xe0

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
