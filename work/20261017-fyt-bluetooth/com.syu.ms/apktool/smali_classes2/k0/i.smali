.class public Lk0/i;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/i;->c:I

    const/4 v1, 0x6

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

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/i;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/i;->e:B

    .line 5
    new-instance v0, Lk0/i$a;

    invoke-direct {v0, p0}, Lk0/i$a;-><init>(Lk0/i;)V

    iput-object v0, p0, Lk0/i;->f:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_4
    .array-data 4
        0xd
        0x20
    .end array-data

    :array_5
    .array-data 4
        0xe
        0x21
    .end array-data
.end method

.method public static synthetic a3(Lk0/i;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/i;->f:Ljava/lang/Runnable;

    return-object p0
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

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_c

    const/16 p3, 0x72

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, p3, :cond_7

    const/16 p3, 0x73

    if-eq v0, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    new-array v4, v3, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v3

    aput v5, v4, v1

    const/16 v5, 0xa

    .line 4
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v4, p3, 0x4

    const/4 v6, 0x3

    and-int/2addr v4, v6

    const/16 v7, 0xc

    if-ne v4, v6, :cond_1

    new-array v4, v3, [I

    aput v2, v4, v1

    .line 5
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_1
    new-array v2, v3, [I

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    aput v4, v2, v1

    .line 6
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0xd

    new-array v4, v3, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v3

    aput p3, v4, v1

    .line 7
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v2, v3, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v1

    .line 8
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v2, v3, [I

    shr-int/lit8 v4, v0, 0x5

    and-int/2addr v4, v3

    aput v4, v2, v1

    .line 9
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v2, v3, [I

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v3

    aput v0, v2, v1

    .line 10
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x4

    .line 11
    aget-byte v0, p1, p3

    const/4 v2, -0x1

    const/16 v4, 0x1b

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    .line 12
    aget-byte v0, p1, p3

    and-int/lit8 v0, v0, 0x7f

    mul-int/2addr v0, v5

    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v3

    mul-int/lit8 p3, p3, 0x5

    add-int/2addr v0, p3

    new-array p3, v3, [I

    aput v0, p3, v1

    .line 13
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_3
    new-array p3, v3, [I

    const/4 v0, -0x2

    aput v0, p3, v1

    .line 14
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    new-array p3, v3, [I

    aput v2, p3, v1

    .line 15
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array p3, v3, [I

    const/4 v0, -0x3

    aput v0, p3, v1

    .line 16
    invoke-static {v4, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    add-int/lit8 p3, p2, 0x6

    .line 17
    aget-byte p3, p1, p3

    const/16 v0, 0x14

    new-array v2, v3, [I

    shr-int/lit8 v4, p3, 0x6

    and-int/2addr v4, v3

    aput v4, v2, v1

    .line 18
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v2, v3, [I

    shr-int/lit8 v4, p3, 0x5

    and-int/2addr v4, v3

    aput v4, v2, v1

    .line 19
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v2, v3, [I

    shr-int/lit8 v4, p3, 0x4

    and-int/2addr v4, v3

    aput v4, v2, v1

    .line 20
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v2, v3, [I

    and-int/lit8 p3, p3, 0xf

    aput p3, v2, v1

    .line 21
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 22
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p2, p2, 0x8

    .line 23
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x7f

    const/16 p2, 0x28

    if-lt p1, p2, :cond_6

    sub-int/2addr p1, p2

    mul-int/2addr p1, v5

    add-int/lit16 p1, p1, 0x3e8

    goto :goto_3

    :cond_6
    sub-int/2addr p2, p1

    mul-int/2addr p2, v5

    rsub-int p1, p2, 0x3e8

    :goto_3
    const/16 p2, 0x258

    if-le p1, p2, :cond_d

    .line 24
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_6

    .line 25
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_d

    add-int/lit8 p2, p2, 0x4

    .line 26
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p1, p2

    iput p1, p0, Lk0/i;->c:I

    move p1, v1

    .line 27
    :goto_4
    iget-object p3, p0, Lk0/i;->d:[[I

    array-length v0, p3

    if-ge p1, v0, :cond_9

    .line 28
    iget v0, p0, Lk0/i;->c:I

    aget-object v2, p3, p1

    aget v2, v2, v1

    if-ne v0, v2, :cond_8

    if-eqz v0, :cond_9

    .line 29
    iput p1, p0, Lk0/i;->b:I

    goto :goto_5

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 30
    :cond_9
    :goto_5
    iget v0, p0, Lk0/i;->c:I

    if-eqz v0, :cond_a

    .line 31
    array-length p2, p3

    if-ge p1, p2, :cond_d

    .line 32
    iget-byte p2, p0, Lk0/i;->e:B

    if-nez p2, :cond_d

    add-int/2addr p2, v3

    int-to-byte p2, p2

    .line 33
    iput-byte p2, p0, Lk0/i;->e:B

    .line 34
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 35
    iget-object p1, p0, Lk0/i;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 36
    :cond_a
    iget p1, p0, Lk0/i;->b:I

    array-length v0, p3

    if-ge p1, v0, :cond_b

    if-eq p1, p2, :cond_b

    .line 37
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 38
    iget-object p1, p0, Lk0/i;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 39
    iput-byte v1, p0, Lk0/i;->e:B

    .line 40
    :cond_b
    iput p2, p0, Lk0/i;->b:I

    goto :goto_6

    .line 41
    :cond_c
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
