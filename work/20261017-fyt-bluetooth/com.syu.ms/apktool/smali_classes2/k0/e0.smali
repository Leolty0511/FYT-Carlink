.class public Lk0/e0;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:B

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lk0/e0;->b:[[I

    const/16 v1, 0xf

    new-array v1, v1, [[I

    .line 3
    iput-object v1, p0, Lk0/e0;->c:[[I

    const/16 v1, 0xff

    .line 4
    iput v1, p0, Lk0/e0;->e:I

    const/16 v1, 0xe

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v0

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

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/e0;->f:[[I

    .line 6
    iput-byte v4, p0, Lk0/e0;->g:B

    .line 7
    new-instance v0, Lk0/e0$a;

    invoke-direct {v0, p0}, Lk0/e0$a;-><init>(Lk0/e0;)V

    iput-object v0, p0, Lk0/e0;->h:Ljava/lang/Runnable;

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
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xc
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
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1b
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1c
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data
.end method

.method public static a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public static synthetic b3(Lk0/e0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/e0;->h:Ljava/lang/Runnable;

    return-object p0
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

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
    .locals 11

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x18

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, -0x10

    const/4 v6, 0x2

    if-eq v0, v1, :cond_f

    const/16 p3, 0x11

    const/4 v1, 0x3

    if-eq v0, p3, :cond_8

    const/16 p3, 0x13

    const/16 v7, 0x62

    if-eq v0, p3, :cond_7

    const/16 p3, 0x41

    if-eq v0, p3, :cond_6

    const/16 p3, 0x65

    if-eq v0, p3, :cond_4

    const/16 p3, 0x16

    if-eq v0, p3, :cond_2

    const/16 p3, 0x17

    if-eq v0, p3, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 p3, p2, 0x1e

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x18

    move v0, v3

    :goto_0
    const/16 v2, 0xf

    if-ge v0, v2, :cond_12

    new-array v2, v6, [I

    aput v0, v2, v3

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, p2

    add-int/lit8 v8, v7, 0x2

    .line 3
    aget-byte v8, p1, v8

    and-int/2addr v8, v4

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v1

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v7, v8

    or-int/2addr v7, p3

    aput v7, v2, v5

    const/16 v7, 0x74

    .line 4
    iget-object v8, p0, Lk0/e0;->c:[[I

    aget-object v8, v8, v0

    invoke-static {v7, v2, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    iget-object v7, p0, Lk0/e0;->c:[[I

    aput-object v2, v7, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p2, 0xe

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x18

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x2

    .line 7
    aget-byte v8, p1, v1

    and-int/2addr v8, v4

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x3

    aget-byte v10, p1, v9

    and-int/2addr v10, v4

    or-int/2addr v8, v10

    or-int/2addr v8, p3

    aput v8, v0, v3

    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x72

    new-array v7, v5, [I

    .line 8
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x8

    aget-byte v8, p1, v9

    and-int/2addr v8, v4

    or-int/2addr v1, v8

    or-int/2addr v1, p3

    aput v1, v7, v3

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_12

    new-array v1, v6, [I

    aput v0, v1, v3

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, p2

    add-int/lit8 v8, v7, 0x4

    .line 9
    aget-byte v8, p1, v8

    and-int/2addr v8, v4

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v2

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v7, v8

    or-int/2addr v7, p3

    aput v7, v1, v5

    const/16 v7, 0x73

    .line 10
    iget-object v8, p0, Lk0/e0;->b:[[I

    aget-object v8, v8, v0

    invoke-static {v7, v1, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 11
    iget-object v7, p0, Lk0/e0;->b:[[I

    aput-object v1, v7, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 p3, 0x7b

    new-array v0, v5, [I

    add-int/2addr p2, v1

    .line 12
    aget-byte v4, p1, p2

    shr-int/lit8 v1, v4, 0x3

    and-int/2addr v1, v5

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v5, [I

    .line 13
    aget-byte v1, p1, p2

    shr-int/2addr v1, v2

    and-int/2addr v1, v5

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v5, [I

    .line 14
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v5, [I

    .line 15
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v5

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    .line 16
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/e0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 18
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    invoke-static {v0}, Lk0/e0;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 19
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/e0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/e0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/e0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    add-int/lit8 p3, p2, 0x7

    .line 22
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    invoke-static {v0}, Lk0/e0;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    .line 23
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Lk0/e0;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 24
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Lk0/e0;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_7

    :cond_7
    add-int/lit8 p3, p2, 0xc

    .line 25
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    shl-int/lit8 p3, p3, 0x18

    add-int/lit8 v0, p2, 0xd

    .line 26
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x18

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p1, v6

    and-int/2addr v6, v4

    or-int/2addr v2, v6

    or-int/2addr v2, p3

    aput v2, v1, v3

    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 28
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, p1, v6

    and-int/2addr v6, v4

    or-int/2addr v2, v6

    or-int/2addr v0, v2

    aput v0, v1, v3

    const/16 v0, 0x63

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x75

    new-array v2, v5, [I

    add-int/lit8 v6, p2, 0x6

    .line 29
    aget-byte v6, p1, v6

    and-int/2addr v6, v4

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    or-int/2addr p3, v6

    aput p3, v2, v3

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 30
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, p1, v6

    and-int/2addr v6, v4

    or-int/2addr v2, v6

    aput v2, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v1, p2, 0xa

    .line 31
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p2, p2, 0xb

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    or-int/2addr p1, v1

    aput p1, p3, v3

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_8
    add-int/lit8 p3, p2, 0x6

    .line 32
    aget-byte p3, p1, p3

    new-array v0, v5, [I

    shr-int/lit8 v7, p3, 0x3

    and-int/2addr v7, v5

    aput v7, v0, v3

    .line 33
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v5

    aput v2, v0, v3

    .line 34
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x5

    and-int/2addr v1, v5

    aput v1, v0, v3

    const/4 v1, 0x4

    .line 35
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.syu.reversefrontdoor"

    .line 36
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v3

    .line 37
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    aput p3, v0, v3

    .line 38
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v3

    .line 39
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v5

    aput p3, v0, v3

    .line 40
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    .line 41
    :goto_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p3, p2, 0x4

    .line 42
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 43
    aget-byte v0, p1, v0

    and-int/2addr p3, v4

    .line 44
    iput p3, p0, Lk0/e0;->e:I

    move p3, v3

    .line 45
    :goto_4
    iget-object v1, p0, Lk0/e0;->f:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_b

    .line 46
    iget v2, p0, Lk0/e0;->e:I

    aget-object v6, v1, p3

    aget v6, v6, v3

    if-ne v2, v6, :cond_a

    if-eqz v2, :cond_b

    .line 47
    iput p3, p0, Lk0/e0;->d:I

    goto :goto_5

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    and-int/2addr v0, v4

    if-ne v0, v5, :cond_c

    .line 48
    array-length v0, v1

    if-ge p3, v0, :cond_e

    .line 49
    iget-byte v0, p0, Lk0/e0;->g:B

    if-nez v0, :cond_e

    add-int/2addr v0, v5

    int-to-byte v0, v0

    .line 50
    iput-byte v0, p0, Lk0/e0;->g:B

    .line 51
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    .line 52
    iget-object p3, p0, Lk0/e0;->h:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_c
    if-nez v0, :cond_e

    .line 53
    iget p3, p0, Lk0/e0;->d:I

    array-length v0, v1

    if-ge p3, v0, :cond_d

    if-eq p3, v4, :cond_d

    .line 54
    aget-object p3, v1, p3

    aget p3, p3, v5

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 55
    iget-object p3, p0, Lk0/e0;->h:Ljava/lang/Runnable;

    invoke-static {p3}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 56
    iput-byte v3, p0, Lk0/e0;->g:B

    .line 57
    :cond_d
    iput v4, p0, Lk0/e0;->d:I

    :cond_e
    :goto_6
    add-int/lit8 p3, p2, 0x8

    .line 58
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    add-int/lit8 p2, p2, 0x9

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const/16 p2, 0x86

    invoke-static {p3, p1, p2}, Lk0/qt;->p(III)V

    goto :goto_7

    .line 59
    :cond_f
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_7

    .line 60
    :cond_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/2addr p2, v2

    .line 61
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-ne p1, v5, :cond_11

    .line 62
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_7

    .line 63
    :cond_11
    invoke-static {v3}, Lk0/qt;->a(I)V

    :cond_12
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x7d

    if-ge p2, p3, :cond_2

    const/16 p3, 0x73

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x74

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/16 p3, 0xf

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lk0/e0;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lk0/e0;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 4

    const/4 p3, 0x2

    const/4 p4, 0x4

    const/16 v0, 0x6a

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_4

    .line 1
    array-length p1, p2

    if-lez p1, :cond_4

    .line 2
    aget p1, p2, v3

    if-eqz p1, :cond_0

    .line 3
    aput v2, p2, v3

    .line 4
    :cond_0
    aget p1, p2, v3

    int-to-byte p1, p1

    invoke-virtual {p0, v0, v2, p1}, Lk0/e0;->c3(BBB)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_4

    .line 5
    array-length p1, p2

    if-lez p1, :cond_4

    .line 6
    aget p1, p2, v3

    if-eqz p1, :cond_1

    .line 7
    aput v2, p2, v3

    .line 8
    :cond_1
    aget p1, p2, v3

    int-to-byte p1, p1

    invoke-virtual {p0, v0, p3, p1}, Lk0/e0;->c3(BBB)V

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p0, p4, p3, v2}, Lk0/e0;->c3(BBB)V

    new-array p1, v1, [I

    .line 10
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p1, v1, [I

    .line 11
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v1, [I

    .line 12
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, v1, [I

    .line 13
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    if-eqz p2, :cond_4

    .line 14
    array-length p1, p2

    if-lez p1, :cond_4

    .line 15
    aget p1, p2, v3

    if-eqz p1, :cond_2

    .line 16
    aput v2, p2, v3

    :cond_2
    const/4 p1, 0x5

    .line 17
    aget p2, p2, v3

    int-to-byte p2, p2

    invoke-virtual {p0, v0, p1, p2}, Lk0/e0;->c3(BBB)V

    goto :goto_0

    :pswitch_8
    if-eqz p2, :cond_4

    .line 18
    array-length p1, p2

    if-lez p1, :cond_4

    .line 19
    aget p1, p2, v3

    if-eqz p1, :cond_3

    .line 20
    aput v2, p2, v3

    .line 21
    :cond_3
    aget p1, p2, v3

    int-to-byte p1, p1

    invoke-virtual {p0, v0, p4, p1}, Lk0/e0;->c3(BBB)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x4
        0x1b
        0x2
        0x2
        0x1
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x1b
        0x2
        0x2
        0x2
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x1b
        0x3
        0x1
        0x1
        0xff
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        0x1b
        0x3
        0x1
        0x2
        0xff
    .end array-data
.end method

.method public final c3(BBB)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    aput p1, v0, v2

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
