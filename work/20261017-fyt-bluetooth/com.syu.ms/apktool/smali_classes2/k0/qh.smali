.class public Lk0/qh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/qh;->c:I

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

    iput-object v1, p0, Lk0/qh;->d:[[I

    .line 4
    new-instance v0, Lk0/qh$a;

    invoke-direct {v0, p0}, Lk0/qh$a;-><init>(Lk0/qh;)V

    iput-object v0, p0, Lk0/qh;->e:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lk0/qh;->f:J

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
        0xd
    .end array-data
.end method

.method public static synthetic a3(Lk0/qh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/qh;->f:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/qh;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/qh;->f:J

    return-wide p1
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
    iget-object v0, p0, Lk0/qh;->e:Ljava/lang/Runnable;

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
    iput v1, v0, Lk0/mt;->l:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 8

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x26

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    const/4 v7, 0x2

    if-eq v0, v1, :cond_5

    const/16 p3, 0x41

    const/4 v1, 0x4

    if-eq v0, p3, :cond_3

    const/16 p3, 0x44

    const/16 v2, 0xb

    if-eq v0, p3, :cond_2

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    if-eq p3, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/2addr p2, v3

    .line 3
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v6

    aget-byte v0, p1, p2

    shr-int/2addr v0, v1

    and-int/2addr v0, v6

    invoke-static {p3, v0, v5}, Ll0/c0;->a(III)V

    .line 4
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v7, [I

    aput v2, v1, v5

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, v1, v6

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0x3

    .line 5
    aget-byte v0, p1, v0

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    const v3, 0xff00

    and-int/2addr v0, v3

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v0, v7

    aput v0, p3, v5

    const/4 v0, 0x7

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0x5

    .line 6
    aget-byte v0, p1, v0

    shl-int/2addr v0, v1

    and-int/2addr v0, v3

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v0, v7

    aput v0, p3, v5

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0x7

    .line 7
    aget-byte v0, p1, v0

    shl-int/2addr v0, v1

    and-int/2addr v0, v3

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v0, v7

    aput v0, p3, v5

    const/16 v0, 0x9

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0x9

    .line 8
    aget-byte v0, p1, v0

    shl-int/2addr v0, v1

    and-int/2addr v0, v3

    add-int/lit8 v7, p2, 0x8

    aget-byte v7, p1, v7

    and-int/2addr v7, v4

    or-int/2addr v0, v7

    aput v0, p3, v5

    const/16 v0, 0xa

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0xb

    .line 9
    aget-byte v0, p1, v0

    shl-int/2addr v0, v1

    and-int/2addr v0, v3

    add-int/lit8 v1, p2, 0xa

    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    aput v0, p3, v5

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0xc

    .line 10
    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    aput v0, p3, v5

    const/16 v0, 0xc

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    const/16 v0, 0xd

    add-int/2addr p2, v0

    .line 11
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    aput p1, p3, v5

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 12
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    if-ne p3, v6, :cond_e

    const-string p3, "persist.syu.reversefrontdoor"

    .line 13
    invoke-static {p3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_4

    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0x3

    .line 14
    aget-byte v4, p1, v0

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, p3, v5

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    .line 15
    aget-byte v0, p1, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v6

    aput v0, p3, v5

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p3, v6, [I

    add-int/lit8 v0, p2, 0x3

    .line 16
    aget-byte v4, p1, v0

    shr-int/2addr v4, v5

    and-int/2addr v4, v6

    aput v4, p3, v5

    invoke-static {v7, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    .line 17
    aget-byte v0, p1, v0

    shr-int/2addr v0, v6

    and-int/2addr v0, v6

    aput v0, p3, v5

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p3, v6, [I

    add-int/2addr p2, v3

    .line 18
    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v6

    aput v0, p3, v5

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    .line 19
    aget-byte v0, p1, p2

    shr-int/2addr v0, v7

    and-int/2addr v0, v6

    aput v0, p3, v5

    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v6, [I

    .line 20
    aget-byte p1, p1, p2

    shr-int/2addr p1, v1

    and-int/2addr p1, v6

    aput p1, p3, v5

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 24
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 25
    iput p2, p0, Lk0/qh;->c:I

    move p2, v5

    .line 26
    :goto_1
    iget-object p3, p0, Lk0/qh;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 27
    iget v0, p0, Lk0/qh;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v5

    if-ne v0, v1, :cond_8

    if-eqz v0, :cond_9

    .line 28
    iput p2, p0, Lk0/qh;->b:I

    goto :goto_2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 29
    :cond_9
    :goto_2
    iget v0, p0, Lk0/qh;->c:I

    if-eq v0, v2, :cond_c

    and-int/2addr p1, v4

    if-eqz p1, :cond_a

    .line 30
    array-length p1, p3

    if-ge p2, p1, :cond_e

    .line 31
    aget-object p1, p3, p2

    aget p1, p1, v6

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 32
    :cond_a
    iget p1, p0, Lk0/qh;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v4, :cond_b

    .line 33
    aget-object p1, p3, p1

    aget p1, p1, v6

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 34
    :cond_b
    iput v4, p0, Lk0/qh;->b:I

    goto :goto_3

    :cond_c
    and-int/2addr p1, v4

    if-ne p1, v6, :cond_e

    .line 35
    sget p1, Lh0/c;->E:I

    if-eq p1, v3, :cond_d

    if-eq p1, v2, :cond_d

    const/16 p1, 0x12

    .line 36
    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 37
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_d
    const/16 p1, 0x1a

    .line 38
    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 39
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    :cond_e
    :goto_3
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

    .line 3
    iget-object v0, p0, Lk0/qh;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xe

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
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x90

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
