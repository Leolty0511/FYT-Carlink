.class public Lk0/yp;
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
    iput v0, p0, Lk0/yp;->c:I

    const/16 v1, 0x9

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

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/yp;->d:[[I

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x12
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
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 6

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x40

    const/4 v2, 0x2

    if-eq v0, v1, :cond_9

    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    if-eq p3, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x3

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v5

    invoke-static {p3, v0, v3}, Ll0/c0;->a(III)V

    .line 5
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v2, [I

    const/16 v2, 0xb

    aput v2, v1, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p2, 0x3

    .line 6
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    const/16 p2, 0x1550

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_2

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 7
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 8
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 9
    iput p2, p0, Lk0/yp;->c:I

    move p2, v3

    .line 10
    :goto_0
    iget-object p3, p0, Lk0/yp;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 11
    iget v0, p0, Lk0/yp;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 12
    iput p2, p0, Lk0/yp;->b:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    and-int/2addr p1, v4

    if-ne p1, v5, :cond_7

    .line 13
    array-length p1, p3

    if-ge p2, p1, :cond_a

    .line 14
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_7
    if-nez p1, :cond_a

    .line 15
    iget p1, p0, Lk0/yp;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v4, :cond_8

    .line 16
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 17
    :cond_8
    iput v4, p0, Lk0/yp;->b:I

    goto :goto_2

    .line 18
    :cond_9
    new-instance p3, Ljava/lang/String;

    add-int/2addr p2, v2

    const/16 v0, 0xc

    invoke-direct {p3, p1, p2, v0}, Ljava/lang/String;-><init>([BII)V

    const/16 p1, 0x62

    .line 19
    invoke-static {p1, p3}, Lk0/qt;->x0(ILjava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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
