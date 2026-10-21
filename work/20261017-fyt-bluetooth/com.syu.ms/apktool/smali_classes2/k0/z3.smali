.class public Lk0/z3;
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
    iput v0, p0, Lk0/z3;->d:I

    const/16 v0, 0x1d

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

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_1c

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/z3;->e:[[I

    .line 4
    new-instance v0, Lk0/z3$a;

    invoke-direct {v0, p0}, Lk0/z3$a;-><init>(Lk0/z3;)V

    iput-object v0, p0, Lk0/z3;->f:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4a
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x27
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x28
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x29
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x2a
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x2b
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2c
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2d
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x3
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x4
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x36
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x40
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x37
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x19
    .end array-data

    :array_11
    .array-data 4
        0x12
        0xb
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x41
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x49
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x42
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x36
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x4b
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x1c
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x1b
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ll0/g;->i()V

    .line 3
    iget-object v0, p0, Lk0/z3;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 4

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p3, p2, 0x1

    .line 2
    aget-byte p3, p1, p3

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 p2, p2, 0x4

    .line 3
    aget-byte p3, p1, p2

    and-int/2addr p3, v0

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_1

    .line 4
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x7f

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_0

    .line 5
    :cond_1
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x7f

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    :goto_0
    const/16 p2, 0x258

    if-le p1, p2, :cond_7

    .line 6
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x4

    .line 7
    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    iput p1, p0, Lk0/z3;->c:I

    const/4 p1, 0x0

    move p2, p1

    .line 8
    :goto_1
    iget-object p3, p0, Lk0/z3;->e:[[I

    array-length v2, p3

    if-ge p2, v2, :cond_4

    .line 9
    iget v2, p0, Lk0/z3;->c:I

    aget-object v3, p3, p2

    aget v3, v3, p1

    if-ne v2, v3, :cond_3

    if-eqz v2, :cond_4

    .line 10
    iput p2, p0, Lk0/z3;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 11
    :cond_4
    :goto_2
    iget v2, p0, Lk0/z3;->c:I

    if-eqz v2, :cond_5

    .line 12
    array-length v0, p3

    if-ge p2, v0, :cond_7

    .line 13
    aget-object p2, p3, p2

    aget p2, p2, v1

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_5
    if-nez v2, :cond_7

    .line 14
    iget p1, p0, Lk0/z3;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_6

    if-eq p1, v0, :cond_6

    .line 15
    aget-object p1, p3, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 16
    :cond_6
    iput v0, p0, Lk0/z3;->b:I

    :cond_7
    :goto_3
    return-void
.end method

.method public V2()V
    .locals 10

    .line 1
    invoke-static {}, Ll0/g;->g()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Ll0/g;->h(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xaa

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    invoke-static {v5}, Ll0/g;->h(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x55

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    .line 3
    invoke-static {v3}, Ll0/g;->h(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    .line 4
    invoke-static {v4}, Ll0/g;->h(I)B

    move-result v4

    add-int/lit8 v6, v3, 0x5

    if-gt v6, v0, :cond_3

    add-int v0, v3, v4

    int-to-byte v0, v0

    move v6, v2

    :goto_0
    if-ge v6, v3, :cond_0

    .line 5
    sget-object v7, Ll0/g;->g:[B

    add-int/lit8 v8, v6, 0x2

    add-int/lit8 v9, v6, 0x4

    invoke-static {v9}, Ll0/g;->h(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 6
    sget-object v7, Ll0/g;->g:[B

    aget-byte v7, v7, v8

    add-int/2addr v0, v7

    int-to-byte v0, v0

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    goto :goto_0

    .line 7
    :cond_0
    sget-object v7, Ll0/g;->g:[B

    int-to-byte v8, v3

    aput-byte v8, v7, v2

    .line 8
    aput-byte v4, v7, v5

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    add-int/lit8 v6, v6, 0x4

    .line 9
    invoke-static {v6}, Ll0/g;->h(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-ne v0, v4, :cond_1

    .line 10
    sget-object v0, Ll0/g;->g:[B

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v0, v2, v4}, Lk0/z3;->U2([BII)V

    .line 11
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    goto :goto_1

    .line 12
    :cond_1
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v5

    sput v0, Ll0/g;->c:I

    .line 13
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    goto :goto_1

    .line 14
    :cond_2
    sget v0, Ll0/g;->c:I

    add-int/2addr v0, v5

    sput v0, Ll0/g;->c:I

    .line 15
    sget v1, Ll0/g;->e:I

    rem-int/2addr v0, v1

    sput v0, Ll0/g;->c:I

    :cond_3
    :goto_1
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/z3;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_0
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
