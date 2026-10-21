.class public Lk0/x7;
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
    iput v0, p0, Lk0/x7;->c:I

    const/16 v1, 0x10

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

    const/16 v2, 0xf

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/x7;->d:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1d
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
    .end array-data

    :array_5
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x11
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x12
        0x43
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x44
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_b
    .array-data 4
        0x16
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x31
        0x1a
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_4

    const/16 v3, 0x32

    if-eq p3, v3, :cond_3

    const/16 v3, 0x36

    if-eq p3, v3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/2addr p2, v0

    .line 3
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    and-int/lit8 p1, p1, 0x7f

    if-eqz v1, :cond_2

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_0

    :cond_2
    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    :goto_0
    add-int/lit16 p1, p1, -0x190

    .line 4
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_3

    .line 5
    :cond_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/lit8 p3, p2, 0x3

    .line 6
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->J0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 7
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->J0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    .line 8
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->J0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x5

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/c0;->J0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_3

    .line 10
    :cond_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    add-int/2addr p2, v0

    .line 11
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 12
    iput p1, p0, Lk0/x7;->c:I

    move p2, v1

    .line 13
    :goto_1
    iget-object p3, p0, Lk0/x7;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 14
    iget v0, p0, Lk0/x7;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v1

    if-ne v0, v3, :cond_5

    if-eqz v0, :cond_6

    .line 15
    iput p2, p0, Lk0/x7;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 16
    array-length p1, p3

    if-ge p2, p1, :cond_8

    .line 17
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 18
    :cond_7
    array-length p1, p3

    if-gt p2, p1, :cond_8

    .line 19
    iget p1, p0, Lk0/x7;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    :cond_8
    :goto_3
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
