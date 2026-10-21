.class public Lk0/zj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:B

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/zj;->c:I

    const/4 v1, 0x3

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    iput-object v2, p0, Lk0/zj;->d:[[I

    .line 4
    iput v0, p0, Lk0/zj;->f:I

    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v2, v3, [I

    .line 5
    fill-array-data v2, :array_3

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/zj;->g:[[I

    .line 6
    iput-byte v5, p0, Lk0/zj;->h:B

    .line 7
    new-instance v0, Lk0/zj$a;

    invoke-direct {v0, p0}, Lk0/zj$a;-><init>(Lk0/zj;)V

    iput-object v0, p0, Lk0/zj;->i:Ljava/lang/Runnable;

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
        0xb
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x2b
        0x9
    .end array-data

    :array_8
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x46
        0x8
    .end array-data
.end method

.method public static synthetic a3(Lk0/zj;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/zj;->i:Ljava/lang/Runnable;

    return-object p0
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_13

    const/16 p3, 0x11

    const/4 v1, 0x4

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, p3, :cond_e

    const/16 p3, 0x1a

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eq v0, p3, :cond_c

    const/16 p3, 0x1e

    const/16 v8, 0xb

    if-eq v0, p3, :cond_b

    const/16 p3, 0x21

    if-eq v0, p3, :cond_6

    const/16 p3, 0x31

    if-eq v0, p3, :cond_1

    const/16 p3, 0x78

    if-eq v0, p3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 p3, 0x62

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x9

    .line 2
    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_1
    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 3
    aget-byte v2, p1, v0

    const/4 v9, 0x6

    shr-int/2addr v2, v9

    and-int/2addr v2, v5

    aput v2, p3, v4

    const/16 v2, 0xa

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 4
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x3

    .line 5
    aget-byte v0, p1, v0

    shr-int/2addr v0, v1

    and-int/2addr v0, v5

    aput v0, p3, v4

    const/16 v0, 0xc

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v2, v5, [I

    add-int/lit8 v8, p2, 0x4

    .line 6
    aget-byte v8, p1, v8

    shr-int/lit8 v1, v8, 0x4

    and-int/2addr v1, v5

    aput v1, v2, v4

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x6

    .line 7
    aget-byte v8, p1, v2

    and-int/2addr v8, v3

    aput v8, v1, v4

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    .line 8
    aget-byte p3, p1, v2

    and-int/2addr p3, v3

    if-eq p3, v7, :cond_5

    if-eq p3, v0, :cond_4

    if-eq p3, v6, :cond_3

    if-eq p3, v9, :cond_2

    move p3, v4

    move v0, p3

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    move p3, v4

    move v1, p3

    move v0, v5

    goto :goto_1

    :cond_3
    move p3, v4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v4

    move p3, v5

    move v1, p3

    goto :goto_1

    :cond_5
    move p3, v4

    move v0, p3

    move v1, v5

    :goto_1
    const/16 v2, 0x12

    new-array v6, v5, [I

    aput p3, v6, v4

    .line 9
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v2, v5, [I

    aput v0, v2, v4

    .line 10
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 11
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x7

    .line 12
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x1b

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x8

    .line 13
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_6
    add-int/2addr p2, v2

    .line 14
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    .line 15
    iput p1, p0, Lk0/zj;->f:I

    move p1, v4

    .line 16
    :goto_2
    iget-object p2, p0, Lk0/zj;->g:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_8

    .line 17
    iget p3, p0, Lk0/zj;->f:I

    aget-object v0, p2, p1

    aget v0, v0, v4

    if-ne p3, v0, :cond_7

    if-eqz p3, :cond_8

    .line 18
    iput p1, p0, Lk0/zj;->e:I

    goto :goto_3

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 19
    :cond_8
    :goto_3
    iget p3, p0, Lk0/zj;->f:I

    if-eqz p3, :cond_9

    .line 20
    array-length p3, p2

    if-ge p1, p3, :cond_14

    .line 21
    iget-byte p3, p0, Lk0/zj;->h:B

    if-nez p3, :cond_14

    add-int/2addr p3, v5

    int-to-byte p3, p3

    .line 22
    iput-byte p3, p0, Lk0/zj;->h:B

    .line 23
    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 24
    iget-object p1, p0, Lk0/zj;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 25
    :cond_9
    iget p1, p0, Lk0/zj;->b:I

    array-length p3, p2

    if-ge p1, p3, :cond_a

    iget p1, p0, Lk0/zj;->e:I

    if-eq p1, v3, :cond_a

    .line 26
    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 27
    iget-object p1, p0, Lk0/zj;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 28
    iput-byte v4, p0, Lk0/zj;->h:B

    .line 29
    :cond_a
    iput v3, p0, Lk0/zj;->e:I

    goto/16 :goto_7

    :cond_b
    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x5

    .line 30
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v6, 0xff00

    and-int/2addr v2, v6

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 31
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0xa

    .line 32
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/2addr p2, v8

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_c
    add-int/lit8 p3, p2, 0x3

    .line 33
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 34
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 35
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 36
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 37
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v5

    aput v3, v0, v4

    .line 38
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 39
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v2, p3, 0x4

    and-int/2addr v2, v5

    aput v2, v0, v4

    .line 40
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/2addr p3, v7

    and-int/2addr p3, v5

    aput p3, v0, v4

    .line 41
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x9

    .line 42
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_7

    :cond_e
    add-int/2addr p2, v1

    .line 43
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    .line 44
    iput p1, p0, Lk0/zj;->c:I

    move p1, v4

    .line 45
    :goto_5
    iget-object p2, p0, Lk0/zj;->d:[[I

    array-length p3, p2

    if-ge p1, p3, :cond_10

    .line 46
    iget p3, p0, Lk0/zj;->c:I

    aget-object v0, p2, p1

    aget v0, v0, v4

    if-ne p3, v0, :cond_f

    if-eqz p3, :cond_10

    .line 47
    iput p1, p0, Lk0/zj;->b:I

    goto :goto_6

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 48
    :cond_10
    :goto_6
    iget p3, p0, Lk0/zj;->c:I

    if-eqz p3, :cond_11

    .line 49
    array-length p3, p2

    if-ge p1, p3, :cond_14

    .line 50
    iget-byte p3, p0, Lk0/zj;->h:B

    if-nez p3, :cond_14

    add-int/2addr p3, v5

    int-to-byte p3, p3

    .line 51
    iput-byte p3, p0, Lk0/zj;->h:B

    .line 52
    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 53
    iget-object p1, p0, Lk0/zj;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 54
    :cond_11
    iget p1, p0, Lk0/zj;->b:I

    array-length p3, p2

    if-ge p1, p3, :cond_12

    if-eq p1, v3, :cond_12

    .line 55
    aget-object p1, p2, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 56
    iget-object p1, p0, Lk0/zj;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 57
    iput-byte v4, p0, Lk0/zj;->h:B

    .line 58
    :cond_12
    iput v3, p0, Lk0/zj;->b:I

    goto :goto_7

    .line 59
    :cond_13
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_14
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x66

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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x2

    aput v0, p1, p3

    const/16 v1, 0x6e

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, v0

    const/4 p4, 0x4

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
