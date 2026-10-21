.class public Lk0/el;
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
    iput v0, p0, Lk0/el;->c:I

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

    iput-object v1, p0, Lk0/el;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/el;->e:B

    .line 5
    new-instance v0, Lk0/el$a;

    invoke-direct {v0, p0}, Lk0/el$a;-><init>(Lk0/el;)V

    iput-object v0, p0, Lk0/el;->f:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/el;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/el;->f:Ljava/lang/Runnable;

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
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput-byte v1, p0, Lk0/el;->e:B

    return-void
.end method

.method public U2([BII)V
    .locals 6

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/4 v0, -0x4

    const/16 v1, 0x12

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_6

    const/4 v0, -0x3

    if-eq p3, v0, :cond_5

    if-eq p3, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 p2, p2, 0x2

    .line 2
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    .line 3
    iput p1, p0, Lk0/el;->c:I

    move p2, v3

    .line 4
    :goto_0
    iget-object p3, p0, Lk0/el;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 5
    iget v0, p0, Lk0/el;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_1

    if-eqz v0, :cond_2

    .line 6
    iput p2, p0, Lk0/el;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 7
    array-length p1, p3

    if-ge p2, p1, :cond_c

    .line 8
    iget-byte p1, p0, Lk0/el;->e:B

    if-nez p1, :cond_c

    add-int/2addr p1, v4

    int-to-byte p1, p1

    .line 9
    iput-byte p1, p0, Lk0/el;->e:B

    .line 10
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 11
    iget-object p1, p0, Lk0/el;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 12
    :cond_3
    iget p1, p0, Lk0/el;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_4

    if-eq p1, v2, :cond_4

    .line 13
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 14
    iget-object p1, p0, Lk0/el;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 15
    iput-byte v3, p0, Lk0/el;->e:B

    .line 16
    :cond_4
    iput v2, p0, Lk0/el;->b:I

    goto/16 :goto_4

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 17
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/lit8 v0, p2, 0x3

    .line 18
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x4

    .line 19
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x5

    .line 20
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x1b

    new-array v5, v4, [I

    aput p3, v5, v3

    .line 21
    invoke-static {p2, v5}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array p3, v4, [I

    shr-int/lit8 v5, v0, 0x7

    and-int/2addr v5, v4

    aput v5, p3, v3

    .line 22
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x41

    new-array p3, v4, [I

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v4

    aput v5, p3, v3

    .line 23
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array p3, v4, [I

    shr-int/lit8 v5, v0, 0x5

    and-int/2addr v5, v4

    aput v5, p3, v3

    .line 24
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x14

    new-array p3, v4, [I

    shr-int/lit8 v5, v0, 0x4

    and-int/2addr v5, v4

    aput v5, p3, v3

    .line 25
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x13

    new-array p3, v4, [I

    shr-int/lit8 v5, v0, 0x3

    and-int/2addr v5, v4

    aput v5, p3, v3

    .line 26
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xd

    new-array p3, v4, [I

    shr-int/lit8 v5, v0, 0x2

    and-int/2addr v5, v4

    aput v5, p3, v3

    .line 27
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array p3, v4, [I

    shr-int/2addr v0, v3

    and-int/2addr v0, v4

    aput v0, p3, v3

    .line 28
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array p3, v4, [I

    and-int/lit16 v0, v1, 0xff

    aput v0, p3, v3

    .line 29
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x38

    new-array p3, v4, [I

    and-int/lit8 p1, p1, 0xf

    aput p1, p3, v3

    .line 30
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    if-eq p3, v1, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 p2, p2, 0x3

    .line 32
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    .line 33
    iput p1, p0, Lk0/el;->c:I

    move p2, v3

    .line 34
    :goto_2
    iget-object p3, p0, Lk0/el;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 35
    iget v0, p0, Lk0/el;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_8

    if-eqz v0, :cond_9

    .line 36
    iput p2, p0, Lk0/el;->b:I

    goto :goto_3

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz p1, :cond_a

    .line 37
    array-length p1, p3

    if-ge p2, p1, :cond_c

    .line 38
    iget-byte p1, p0, Lk0/el;->e:B

    if-nez p1, :cond_c

    add-int/2addr p1, v4

    int-to-byte p1, p1

    .line 39
    iput-byte p1, p0, Lk0/el;->e:B

    .line 40
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    .line 41
    iget-object p1, p0, Lk0/el;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 42
    :cond_a
    iget p1, p0, Lk0/el;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v2, :cond_b

    .line 43
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 44
    iget-object p1, p0, Lk0/el;->f:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 45
    iput-byte v3, p0, Lk0/el;->e:B

    .line 46
    :cond_b
    iput v2, p0, Lk0/el;->b:I

    :cond_c
    :goto_4
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
