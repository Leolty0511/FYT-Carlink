.class public Lk0/sm;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/sm;->c:I

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

    iput-object v1, p0, Lk0/sm;->d:[[I

    .line 4
    new-instance v0, Lk0/sm$a;

    invoke-direct {v0, p0}, Lk0/sm$a;-><init>(Lk0/sm;)V

    iput-object v0, p0, Lk0/sm;->e:Ljava/lang/Runnable;

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
        0x12
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
    iget-object v0, p0, Lk0/sm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x1d

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v0, :cond_11

    const/16 v0, 0x1e

    if-eq p3, v0, :cond_10

    const/16 v0, 0x20

    const/4 v6, 0x3

    if-eq p3, v0, :cond_b

    const/16 v0, 0x24

    const/4 v7, 0x2

    if-eq p3, v0, :cond_9

    const/16 v0, 0x7d

    const/16 v8, 0xb

    if-eq p3, v0, :cond_7

    const/16 v9, 0xe

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    const/16 p2, 0x1e78

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_7

    :pswitch_1
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 3
    aget-byte v10, p1, v0

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v5

    aput v10, p3, v4

    const/16 v10, 0xa

    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 4
    aget-byte v10, p1, v0

    shr-int/lit8 v10, v10, 0x6

    and-int/2addr v10, v5

    aput v10, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 5
    aget-byte v8, p1, v0

    shr-int/2addr v8, v1

    and-int/2addr v8, v5

    aput v8, p3, v4

    const/16 v8, 0xc

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x35

    new-array v8, v5, [I

    .line 6
    aget-byte v10, p1, v0

    shr-int/lit8 v2, v10, 0x4

    and-int/2addr v2, v5

    aput v2, v8, v4

    invoke-static {p3, v8}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 7
    aget-byte v2, p1, v0

    shr-int/2addr v2, v6

    and-int/2addr v2, v5

    aput v2, p3, v4

    const/16 v2, 0xd

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 8
    aget-byte v2, p1, v0

    shr-int/2addr v2, v7

    and-int/2addr v2, v5

    aput v2, p3, v4

    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 9
    aget-byte v2, p1, v0

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    aput v2, p3, v4

    const/16 v2, 0xf

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v6, v5, [I

    .line 10
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, v6, v4

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 11
    aget-byte v7, p1, v6

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v5

    aput v7, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v5, [I

    .line 12
    aget-byte v7, p1, v6

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v5

    aput v7, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    .line 13
    aget-byte v7, p1, v6

    shr-int/2addr v7, v1

    and-int/2addr v7, v5

    aput v7, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    .line 14
    aget-byte v6, p1, v6

    shr-int/2addr v6, v4

    and-int/2addr v2, v6

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 15
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v2, p2, 0x5

    .line 16
    aget-byte v6, p1, v2

    and-int/2addr v6, v3

    const-string v7, "persist.fyt.reversetemp"

    .line 17
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 18
    aget-byte v0, p1, v2

    and-int/2addr v0, v3

    .line 19
    aget-byte p3, p1, p3

    and-int/lit16 v6, p3, 0xff

    :cond_0
    const/4 p3, -0x3

    const/4 v2, -0x2

    const/16 v7, 0x1f

    const/16 v8, 0x1b

    if-nez v0, :cond_1

    new-array v0, v5, [I

    aput v2, v0, v4

    .line 20
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    if-ne v0, v7, :cond_2

    new-array v0, v5, [I

    aput p3, v0, v4

    .line 21
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v9, v5, [I

    aput v0, v9, v4

    .line 22
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v0, 0x1c

    if-nez v6, :cond_3

    new-array p3, v5, [I

    aput v2, p3, v4

    .line 23
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    if-ne v6, v7, :cond_4

    new-array v2, v5, [I

    aput p3, v2, v4

    .line 24
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p3, v5, [I

    aput v6, p3, v4

    .line 25
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 p2, p2, 0x7

    .line 26
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    if-eq p1, v3, :cond_6

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    mul-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x258

    .line 27
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    .line 28
    :cond_6
    :goto_2
    invoke-static {v4}, Lu0/d;->A3(I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 p3, 0x62

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x3

    .line 30
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 31
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x5

    .line 32
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x6

    .line 33
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x7

    .line 34
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 35
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x9

    .line 36
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xa

    .line 37
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xb

    .line 38
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xc

    .line 39
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0xd

    .line 40
    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/2addr p2, v9

    .line 41
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v4

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 42
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_8

    goto/16 :goto_7

    :cond_8
    add-int/2addr p2, v6

    .line 43
    aget-byte p3, p1, p2

    shr-int/2addr p3, v6

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v2

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 44
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v7, [I

    aput v8, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    add-int/2addr p2, v7

    .line 45
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 46
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 47
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 48
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 49
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 50
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 51
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 52
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 53
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 54
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    .line 55
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 56
    iput p2, p0, Lk0/sm;->c:I

    move p2, v4

    .line 57
    :goto_4
    iget-object p3, p0, Lk0/sm;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_d

    .line 58
    iget v0, p0, Lk0/sm;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_d

    .line 59
    iput p2, p0, Lk0/sm;->b:I

    goto :goto_5

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_e

    .line 60
    array-length p1, p3

    if-ge p2, p1, :cond_15

    .line 61
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto/16 :goto_7

    :cond_e
    if-nez p1, :cond_15

    .line 62
    iget p1, p0, Lk0/sm;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_f

    if-eq p1, v3, :cond_f

    .line 63
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 64
    :cond_f
    iput v3, p0, Lk0/sm;->b:I

    goto/16 :goto_7

    :cond_10
    add-int/lit8 p3, p2, 0x2

    .line 65
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 66
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 67
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 68
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_7

    :cond_11
    add-int/lit8 p3, p2, 0x2

    .line 69
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v6, p2, 0x3

    .line 70
    aget-byte v7, p1, v6

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0x4

    .line 71
    aget-byte v9, p1, v8

    and-int/2addr v9, v3

    add-int/2addr p2, v1

    .line 72
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    if-nez v0, :cond_12

    if-nez v7, :cond_12

    if-nez v9, :cond_12

    if-nez v1, :cond_12

    .line 73
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_6

    .line 74
    :cond_12
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_13

    sget v4, Ll0/c0;->h:I

    if-ne v4, v7, :cond_13

    sget v4, Ll0/c0;->i:I

    if-ne v4, v9, :cond_13

    sget v4, Ll0/c0;->j:I

    if-eq v4, v1, :cond_14

    .line 75
    :cond_13
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_14

    .line 76
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 77
    sput v2, Ll0/c0;->k:I

    .line 78
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 79
    :cond_14
    :goto_6
    sput v0, Ll0/c0;->g:I

    .line 80
    sput v7, Ll0/c0;->h:I

    .line 81
    sput v9, Ll0/c0;->i:I

    .line 82
    sput v1, Ll0/c0;->j:I

    .line 83
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 84
    aget-byte p3, p1, v6

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 85
    aget-byte p3, p1, v8

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 86
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    :cond_15
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x27
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

    .line 3
    iget-object v0, p0, Lk0/sm;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7e

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

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0x75

    aput v0, p1, v4

    aput v2, p1, v2

    .line 1
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    const/16 v0, 0xe0

    aput v0, p1, v4

    aput v2, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
