.class public Lk0/cq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/cq;->c:I

    const/16 v1, 0xd

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

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/cq;->d:[[I

    .line 4
    new-instance v1, Lk0/cq$a;

    invoke-direct {v1, p0}, Lk0/cq$a;-><init>(Lk0/cq;)V

    iput-object v1, p0, Lk0/cq;->e:Ljava/lang/Runnable;

    .line 5
    iput v0, p0, Lk0/cq;->f:I

    .line 6
    new-instance v0, Lk0/cq$b;

    invoke-direct {v0, p0}, Lk0/cq$b;-><init>(Lk0/cq;)V

    iput-object v0, p0, Lk0/cq;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/cq$c;

    invoke-direct {v0, p0}, Lk0/cq$c;-><init>(Lk0/cq;)V

    iput-object v0, p0, Lk0/cq;->h:Ljava/lang/Runnable;

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

    :array_7
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_c
    .array-data 4
        0x18
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
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cq;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/cq;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->f:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x3

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_7

    const/16 v0, 0x24

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eq p3, v0, :cond_5

    const/16 v0, 0x29

    if-eq p3, v0, :cond_4

    const/16 v0, 0x7d

    const/16 v8, 0xb

    if-eq p3, v0, :cond_2

    const/16 v0, 0x31

    const v1, 0xff00

    const/16 v6, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x32

    if-eq p3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p3, 0xe

    new-array v0, v4, [I

    add-int/lit8 v7, p2, 0x2

    .line 2
    aget-byte v7, p1, v7

    and-int/2addr v7, v2

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xf

    new-array v0, v4, [I

    add-int/lit8 v7, p2, 0x3

    .line 3
    aget-byte v7, p1, v7

    and-int/2addr v7, v2

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v0, v4, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, p1, v4

    shl-int/2addr v4, v6

    and-int/2addr v1, v4

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_1
    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x2

    .line 5
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    aput v0, p3, v3

    const/4 v0, 0x7

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x3

    .line 6
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    aput v0, p3, v3

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x4

    .line 7
    aget-byte v0, p1, v0

    shl-int/2addr v0, v6

    and-int/2addr v0, v1

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/2addr v5, v2

    or-int/2addr v0, v5

    aput v0, p3, v3

    const/16 v0, 0x9

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x6

    .line 8
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    aput v0, p3, v3

    const/16 v0, 0xa

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/lit8 v5, p2, 0x7

    .line 9
    aget-byte v5, p1, v5

    and-int/2addr v5, v2

    aput v5, p3, v3

    invoke-static {v8, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v5, v4, [I

    add-int/lit8 v7, p2, 0x8

    .line 10
    aget-byte v7, p1, v7

    shl-int/lit8 v6, v7, 0x8

    and-int/2addr v1, v6

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, p1, v6

    and-int/2addr v6, v2

    or-int/2addr v1, v6

    aput v1, v5, v3

    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v1, v4, [I

    add-int/2addr p2, v0

    .line 11
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    if-eq p3, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    add-int/2addr p2, v1

    .line 13
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v4

    aget-byte v0, p1, p2

    shr-int/2addr v0, v6

    and-int/2addr v0, v4

    invoke-static {p3, v0, v3}, Ll0/c0;->a(III)V

    .line 14
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v7, [I

    aput v8, v1, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    aput p1, v1, v4

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 15
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x1464

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_3

    :cond_5
    add-int/2addr p2, v7

    .line 16
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 17
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_6

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 18
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 19
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 20
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 21
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 22
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 23
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 24
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 25
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 26
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 27
    iput p2, p0, Lk0/cq;->c:I

    move p2, v3

    .line 28
    :goto_1
    iget-object p3, p0, Lk0/cq;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 29
    iget v0, p0, Lk0/cq;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_8

    if-eqz v0, :cond_9

    .line 30
    iput p2, p0, Lk0/cq;->b:I

    goto :goto_2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    and-int/2addr p1, v2

    if-ne p1, v4, :cond_a

    .line 31
    array-length p1, p3

    if-ge p2, p1, :cond_c

    .line 32
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_a
    if-nez p1, :cond_c

    .line 33
    iget p1, p0, Lk0/cq;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v2, :cond_b

    .line 34
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 35
    :cond_b
    iput v2, p0, Lk0/cq;->b:I

    :cond_c
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/cq;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/cq;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/cq;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x11

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x90

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput v0, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
