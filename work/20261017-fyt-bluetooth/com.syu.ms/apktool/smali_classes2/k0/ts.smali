.class public Lk0/ts;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ts;->c:I

    const/16 v1, 0x9

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

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ts;->d:[[I

    .line 4
    iput v0, p0, Lk0/ts;->e:I

    .line 5
    new-instance v0, Lk0/ts$a;

    invoke-direct {v0, p0}, Lk0/ts$a;-><init>(Lk0/ts;)V

    iput-object v0, p0, Lk0/ts;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ts$b;

    invoke-direct {v0, p0}, Lk0/ts$b;-><init>(Lk0/ts;)V

    iput-object v0, p0, Lk0/ts;->g:Ljava/lang/Runnable;

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
        0x8
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xb6
        0xc
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v1, v0, Lk0/mt;->l:I

    .line 6
    iput v2, v0, Lk0/mt;->b:I

    .line 7
    iput v2, v0, Lk0/mt;->c:I

    .line 8
    iput v2, v0, Lk0/mt;->d:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    iput v2, v0, Lk0/mt;->h:I

    .line 11
    iput v2, v0, Lk0/mt;->p:I

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

    if-eq v0, v1, :cond_5

    const/16 v1, 0x24

    const/4 v6, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x29

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 p3, 0x52

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/2addr p2, v6

    .line 2
    aget-byte p3, p1, p2

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v5

    invoke-static {p3, p1, v4}, Ll0/c0;->a(III)V

    goto/16 :goto_3

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 4
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    const/16 p2, 0x17c

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_3

    :cond_3
    add-int/2addr p2, v6

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const-string p2, "persist.syu.reversefrontdoor"

    .line 6
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 7
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 8
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 9
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 10
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x4

    .line 11
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 12
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 14
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 15
    iput p2, p0, Lk0/ts;->c:I

    move p2, v4

    .line 16
    :goto_1
    iget-object p3, p0, Lk0/ts;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_7

    .line 17
    iget v0, p0, Lk0/ts;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_6

    if-eqz v0, :cond_7

    .line 18
    iput p2, p0, Lk0/ts;->b:I

    goto :goto_2

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_8

    .line 19
    array-length p1, p3

    if-ge p2, p1, :cond_a

    .line 20
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_8
    if-nez p1, :cond_a

    .line 21
    iget p1, p0, Lk0/ts;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_9

    if-eq p1, v3, :cond_9

    .line 22
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 23
    :cond_9
    iput v3, p0, Lk0/ts;->b:I

    :cond_a
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x7

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
