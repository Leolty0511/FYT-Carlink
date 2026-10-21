.class public Lk0/za;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/za;->c:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/za;->d:[[I

    .line 4
    iput v0, p0, Lk0/za;->e:I

    return-void

    :array_0
    .array-data 4
        0x1
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x15
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x26
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x0
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

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8

    const/16 p3, 0x70

    const/16 v1, 0xff

    const/4 v3, 0x1

    if-eq v0, p3, :cond_3

    const/16 p3, 0x71

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0x3

    if-ne p3, v3, :cond_1

    .line 4
    invoke-static {}, Lu0/d;->L1()V

    goto :goto_0

    :cond_1
    if-ne p3, v2, :cond_2

    .line 5
    invoke-static {}, Lu0/d;->x1()V

    :cond_2
    :goto_0
    add-int/lit8 p2, p2, 0x3

    .line 6
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    iput p1, p0, Lk0/za;->e:I

    goto :goto_3

    .line 7
    :cond_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_9

    add-int/2addr p2, v2

    .line 8
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    iput p1, p0, Lk0/za;->c:I

    const/4 p1, 0x0

    move p2, p1

    .line 9
    :goto_1
    iget-object p3, p0, Lk0/za;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_5

    .line 10
    iget v0, p0, Lk0/za;->c:I

    aget-object v2, p3, p2

    aget v2, v2, p1

    if-ne v0, v2, :cond_4

    if-eqz v0, :cond_5

    .line 11
    iput p2, p0, Lk0/za;->b:I

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 12
    :cond_5
    :goto_2
    iget v0, p0, Lk0/za;->c:I

    if-eqz v0, :cond_6

    .line 13
    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 14
    aget-object p2, p3, p2

    aget p2, p2, v3

    invoke-static {p2, p1}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 15
    :cond_6
    iget p1, p0, Lk0/za;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_7

    if-eq p1, v1, :cond_7

    .line 16
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 17
    :cond_7
    iput v1, p0, Lk0/za;->b:I

    goto :goto_3

    .line 18
    :cond_8
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_9
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
