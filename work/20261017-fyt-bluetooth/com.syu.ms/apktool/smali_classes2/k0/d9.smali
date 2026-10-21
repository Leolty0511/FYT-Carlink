.class public Lk0/d9;
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
    iput v0, p0, Lk0/d9;->c:I

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

    iput-object v1, p0, Lk0/d9;->d:[[I

    return-void

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x9
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

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 5
    iput p2, p0, Lk0/d9;->c:I

    const/4 p2, 0x0

    move p3, p2

    .line 6
    :goto_0
    iget-object v1, p0, Lk0/d9;->d:[[I

    array-length v2, v1

    if-ge p3, v2, :cond_2

    .line 7
    iget v2, p0, Lk0/d9;->c:I

    aget-object v3, v1, p3

    aget v3, v3, p2

    if-ne v2, v3, :cond_1

    if-eqz v2, :cond_2

    .line 8
    iput p3, p0, Lk0/d9;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_3

    .line 9
    array-length p1, v1

    if-ge p3, p1, :cond_4

    .line 10
    aget-object p1, v1, p3

    aget p1, p1, v0

    invoke-static {p1, p2}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 11
    :cond_3
    array-length p1, v1

    if-gt p3, p1, :cond_4

    .line 12
    iget p1, p0, Lk0/d9;->b:I

    aget-object p1, v1, p1

    aget p1, p1, v0

    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    :cond_4
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
