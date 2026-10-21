.class public Lk0/v9;
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
    iput v0, p0, Lk0/v9;->c:I

    const/16 v1, 0x1c

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

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x16

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v3, 0x18

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v3, 0x19

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1b

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/v9;->d:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x15
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x16
    .end array-data

    :array_5
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_9
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_c
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_d
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x1c
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x1d
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x1e
        0x41
    .end array-data

    :array_13
    .array-data 4
        0x1f
        0x42
    .end array-data

    :array_14
    .array-data 4
        0x20
        0x26
    .end array-data

    :array_15
    .array-data 4
        0x21
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x22
        0x40
    .end array-data

    :array_17
    .array-data 4
        0x23
        0x27
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x1b
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x1c
    .end array-data

    :array_1a
    .array-data 4
        0x24
        0xd
    .end array-data

    :array_1b
    .array-data 4
        0x25
        0x36
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
    .locals 4

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p3, p2

    .line 5
    iput p3, p0, Lk0/v9;->c:I

    const/4 p3, 0x0

    move v0, p3

    .line 6
    :goto_0
    iget-object v1, p0, Lk0/v9;->d:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 7
    iget v2, p0, Lk0/v9;->c:I

    aget-object v3, v1, v0

    aget v3, v3, p3

    if-ne v2, v3, :cond_1

    if-eqz v2, :cond_2

    .line 8
    iput v0, p0, Lk0/v9;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/2addr p1, p2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 9
    array-length p1, v1

    if-ge v0, p1, :cond_5

    .line 10
    aget-object p1, v1, v0

    aget p1, p1, v2

    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 11
    :cond_3
    iget p1, p0, Lk0/v9;->b:I

    array-length p3, v1

    if-ge p1, p3, :cond_4

    if-eq p1, p2, :cond_4

    .line 12
    aget-object p1, v1, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 13
    :cond_4
    iput p2, p0, Lk0/v9;->b:I

    :cond_5
    :goto_2
    return-void
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
