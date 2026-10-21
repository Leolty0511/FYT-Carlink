.class public Lk0/an;
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
    iput v0, p0, Lk0/an;->c:I

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

    iput-object v1, p0, Lk0/an;->d:[[I

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
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    add-int/2addr p2, v2

    .line 3
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v1

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 4
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/16 v2, 0xb

    aput v2, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 5
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 6
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 7
    iput p2, p0, Lk0/an;->c:I

    move p2, v4

    .line 8
    :goto_0
    iget-object p3, p0, Lk0/an;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 9
    iget v0, p0, Lk0/an;->c:I

    aget-object v6, p3, p2

    aget v6, v6, v4

    if-ne v0, v6, :cond_3

    if-eqz v0, :cond_4

    .line 10
    iput p2, p0, Lk0/an;->b:I

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    iget v0, p0, Lk0/an;->c:I

    const/16 v6, 0x9

    if-eq v0, v6, :cond_7

    and-int/2addr p1, v3

    if-ne p1, v5, :cond_5

    .line 12
    array-length p1, p3

    if-ge p2, p1, :cond_a

    .line 13
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_a

    .line 14
    iget p1, p0, Lk0/an;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_6

    if-eq p1, v3, :cond_6

    .line 15
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 16
    :cond_6
    iput v3, p0, Lk0/an;->b:I

    goto :goto_2

    :cond_7
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_a

    .line 17
    sget p1, Lh0/c;->E:I

    if-eq p1, v2, :cond_9

    const/16 p2, 0x12

    if-eq p1, v1, :cond_8

    const/4 p3, 0x5

    if-eq p1, p3, :cond_9

    .line 18
    invoke-static {p2, v4}, Ll0/b0;->l0(II)V

    .line 19
    invoke-static {p2, v5}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 20
    :cond_8
    invoke-static {p2, v4}, Ll0/b0;->l0(II)V

    .line 21
    invoke-static {p2, v5}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_9
    const/16 p1, 0x1a

    .line 22
    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 23
    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

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
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
