.class public Lk0/f5;
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
    iput v0, p0, Lk0/f5;->c:I

    const/4 v1, 0x5

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

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/f5;->d:[[I

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
    .locals 0

    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eq p3, v0, :cond_2

    const/16 v0, 0x24

    if-eq p3, v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p2, p2, 0x2

    .line 3
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0x80

    and-int/2addr p1, v2

    if-eqz p2, :cond_1

    not-int p1, p1

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    .line 4
    :goto_0
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_3

    .line 5
    :cond_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    add-int/lit8 p3, p2, 0x2

    .line 6
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 8
    iput p2, p0, Lk0/f5;->c:I

    const/4 p2, 0x0

    move p3, p2

    .line 9
    :goto_1
    iget-object v0, p0, Lk0/f5;->d:[[I

    array-length v3, v0

    if-ge p3, v3, :cond_4

    .line 10
    iget v3, p0, Lk0/f5;->c:I

    aget-object v4, v0, p3

    aget v4, v4, p2

    if-ne v3, v4, :cond_3

    if-eqz v3, :cond_4

    .line 11
    iput p3, p0, Lk0/f5;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    and-int/2addr p1, v2

    if-eqz p1, :cond_5

    .line 12
    array-length p1, v0

    if-ge p3, p1, :cond_7

    .line 13
    aget-object p1, v0, p3

    aget p1, p1, v1

    invoke-static {p1, p2}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 14
    :cond_5
    iget p1, p0, Lk0/f5;->b:I

    array-length p2, v0

    if-ge p1, p2, :cond_6

    if-eq p1, v2, :cond_6

    .line 15
    aget-object p1, v0, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 16
    :cond_6
    iput v2, p0, Lk0/f5;->b:I

    :cond_7
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
