.class public Lk0/uq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/uq;->c:I

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

    const/4 v4, 0x6

    aput-object v0, v1, v4

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/uq;->d:[[I

    .line 4
    iput-byte v3, p0, Lk0/uq;->e:B

    .line 5
    new-instance v0, Lk0/uq$a;

    invoke-direct {v0, p0}, Lk0/uq$a;-><init>(Lk0/uq;)V

    iput-object v0, p0, Lk0/uq;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/uq$b;

    invoke-direct {v0, p0}, Lk0/uq$b;-><init>(Lk0/uq;)V

    iput-object v0, p0, Lk0/uq;->g:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0xd
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
        0x13
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x14
        0x4
    .end array-data
.end method

.method public static synthetic a3(Lk0/uq;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/uq;->g:Ljava/lang/Runnable;

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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->b:I

    .line 7
    iput v1, v0, Lk0/mt;->c:I

    .line 8
    iput v1, v0, Lk0/mt;->d:I

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x24

    const/4 v6, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0xa

    new-array v1, v5, [I

    shr-int/lit8 v6, p3, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 4
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb

    new-array v1, v5, [I

    shr-int/lit8 v6, p3, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 5
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v1, v5, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aput p3, v1, v4

    .line 6
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 7
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    const/16 v0, 0x12

    new-array v1, v5, [I

    shr-int/lit8 v2, p3, 0x7

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 8
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v1, v5, [I

    shr-int/lit8 v2, p3, 0x6

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 9
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v5, [I

    shr-int/lit8 v2, p3, 0x5

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 10
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v1, v5, [I

    and-int/lit8 p3, p3, 0xf

    aput p3, v1, v4

    .line 11
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2c

    new-array v0, v5, [I

    add-int/lit8 p2, p2, 0x9

    .line 12
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0x7

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_2
    new-array p3, v5, [I

    add-int/2addr p2, v6

    .line 13
    aget-byte v0, p1, p2

    shr-int/2addr v0, v2

    and-int/2addr v0, v5

    aput v0, p3, v4

    const/4 v0, 0x5

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 14
    aget-byte v1, p1, p2

    shr-int/lit8 v0, v1, 0x5

    and-int/2addr v0, v5

    aput v0, p3, v4

    const/4 v0, 0x4

    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 15
    aget-byte v1, p1, p2

    shr-int/lit8 v0, v1, 0x4

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.syu.reversefrontdoor"

    .line 16
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_3

    new-array p3, v5, [I

    .line 17
    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 18
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v5

    aput p1, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_3
    new-array p3, v5, [I

    .line 19
    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v5

    aput v0, p3, v4

    invoke-static {v5, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    .line 20
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v5

    aput p1, p3, v4

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 21
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 22
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 23
    iput p2, p0, Lk0/uq;->c:I

    move p2, v4

    .line 24
    :goto_0
    iget-object p3, p0, Lk0/uq;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 25
    iget v0, p0, Lk0/uq;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 26
    iput p2, p0, Lk0/uq;->b:I

    goto :goto_1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_7

    .line 27
    array-length p1, p3

    if-ge p2, p1, :cond_9

    .line 28
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_7
    if-nez p1, :cond_9

    .line 29
    iget p1, p0, Lk0/uq;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v3, :cond_8

    .line 30
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 31
    :cond_8
    iput v3, p0, Lk0/uq;->b:I

    :cond_9
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/uq;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/uq;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xe0

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
