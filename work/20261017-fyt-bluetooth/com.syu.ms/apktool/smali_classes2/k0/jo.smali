.class public Lk0/jo;
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
    iput v0, p0, Lk0/jo;->c:I

    const/4 v1, 0x6

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

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/jo;->d:[[I

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

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->j:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 4

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 3
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p3, p2

    .line 4
    iput p3, p0, Lk0/jo;->c:I

    const/4 p3, 0x0

    move v0, p3

    .line 5
    :goto_0
    iget-object v1, p0, Lk0/jo;->d:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 6
    iget v2, p0, Lk0/jo;->c:I

    aget-object v3, v1, v0

    aget v3, v3, p3

    if-ne v2, v3, :cond_1

    if-eqz v2, :cond_2

    .line 7
    iput v0, p0, Lk0/jo;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/2addr p1, p2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 8
    array-length p1, v1

    if-ge v0, p1, :cond_5

    .line 9
    aget-object p1, v1, v0

    aget p1, p1, v2

    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_5

    .line 10
    iget p1, p0, Lk0/jo;->b:I

    array-length p3, v1

    if-ge p1, p3, :cond_4

    if-eq p1, p2, :cond_4

    .line 11
    aget-object p1, v1, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 12
    :cond_4
    iput p2, p0, Lk0/jo;->b:I

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
