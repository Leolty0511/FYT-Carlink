.class public Lk0/ng;
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
    iput v0, p0, Lk0/ng;->c:I

    const/16 v1, 0xb

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

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/ng;->d:[[I

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x19
    .end array-data

    :array_9
    .array-data 4
        0xd
        0x43
    .end array-data

    :array_a
    .array-data 4
        0xe
        0x44
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    return-void
.end method

.method public U2([BII)V
    .locals 5

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x70

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eq p3, v0, :cond_1

    const/16 v0, -0x6f

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    new-array p3, v3, [I

    add-int/lit8 p2, p2, 0x2

    .line 2
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, p3, v1

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 5
    iput p2, p0, Lk0/ng;->c:I

    move p2, v1

    .line 6
    :goto_0
    iget-object p3, p0, Lk0/ng;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_3

    .line 7
    iget v0, p0, Lk0/ng;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v1

    if-ne v0, v4, :cond_2

    if-eqz v0, :cond_3

    .line 8
    iput p2, p0, Lk0/ng;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    and-int/2addr p1, v2

    if-ne p1, v3, :cond_4

    .line 9
    array-length p1, p3

    if-ge p2, p1, :cond_6

    .line 10
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_6

    .line 11
    iget p1, p0, Lk0/ng;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_5

    if-eq p1, v2, :cond_5

    .line 12
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 13
    :cond_5
    iput v2, p0, Lk0/ng;->b:I

    :cond_6
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x2

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
