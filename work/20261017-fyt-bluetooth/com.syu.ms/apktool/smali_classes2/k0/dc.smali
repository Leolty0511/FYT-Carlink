.class public Lk0/dc;
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
    iput v0, p0, Lk0/dc;->c:I

    const/4 v1, 0x7

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

    const/4 v2, 0x6

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/dc;->d:[[I

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
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

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 7

    add-int/lit8 v0, p2, 0x0

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x21

    const/16 v5, 0x24

    const/4 v6, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v5, :cond_2

    const/16 v4, 0x26

    if-eq v0, v4, :cond_1

    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_3

    :cond_2
    add-int/2addr p2, v2

    .line 4
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 5
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    new-array p2, v4, [I

    and-int/lit8 p3, p1, 0x1

    aput p3, p2, v3

    .line 6
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 7
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 8
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    and-int/lit8 p3, p1, 0x1

    aput p3, p2, v3

    .line 9
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 10
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x4

    .line 11
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 12
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 13
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 15
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 16
    aget-byte v1, p1, v1

    add-int/2addr p2, v6

    .line 17
    aget-byte p1, p1, p2

    const/16 p1, 0xa

    new-array p2, v4, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v4

    aput v2, p2, v3

    .line 18
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xb

    new-array p2, v4, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v4

    aput v2, p2, v3

    .line 19
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p2, v4, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v4

    aput v2, p2, v3

    .line 20
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p2, v4, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v4

    aput v2, p2, v3

    .line 21
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x10

    new-array p2, v4, [I

    shr-int/lit8 v2, p3, 0x3

    and-int/2addr v2, v4

    aput v2, p2, v3

    .line 22
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x41

    new-array p2, v4, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 23
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x12

    new-array p2, v4, [I

    shr-int/lit8 p3, v0, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 24
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v4, [I

    shr-int/lit8 p3, v0, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 25
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p2, v4, [I

    shr-int/lit8 p3, v0, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 26
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x15

    new-array p2, v4, [I

    and-int/lit8 p3, v0, 0xf

    aput p3, p2, v3

    .line 27
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1b

    if-eqz v1, :cond_6

    const/16 p2, 0x1f

    if-eq v1, p2, :cond_5

    if-lt v1, v4, :cond_b

    const/16 p2, 0x11

    if-gt v1, p2, :cond_b

    new-array p2, v4, [I

    sub-int/2addr v1, v4

    add-int/2addr v1, v5

    aput v1, p2, v3

    .line 28
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_5
    new-array p2, v4, [I

    const/4 p3, -0x3

    aput p3, p2, v3

    .line 29
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array p2, v4, [I

    const/4 p3, -0x2

    aput p3, p2, v3

    .line 30
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    .line 31
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_b

    add-int/lit8 p3, p2, 0x2

    .line 32
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 33
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 34
    iput p2, p0, Lk0/dc;->c:I

    move p2, v3

    .line 35
    :goto_1
    iget-object p3, p0, Lk0/dc;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 36
    iget v0, p0, Lk0/dc;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_8

    if-eqz v0, :cond_9

    .line 37
    iput p2, p0, Lk0/dc;->b:I

    goto :goto_2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_a

    .line 38
    array-length p1, p3

    if-ge p2, p1, :cond_b

    .line 39
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 40
    :cond_a
    array-length p1, p3

    if-gt p2, p1, :cond_b

    .line 41
    iget p1, p0, Lk0/dc;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    :cond_b
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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
