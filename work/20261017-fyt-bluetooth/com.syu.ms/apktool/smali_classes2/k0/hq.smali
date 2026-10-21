.class public Lk0/hq;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hq;->c:I

    const/16 v1, 0xa

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

    new-array v2, v2, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/hq;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/hq;->e:Z

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
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

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1a
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

    const/4 v1, 0x0

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
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p3, v0, :cond_6

    const/16 v0, 0x26

    const/16 v5, 0x21c

    if-eq p3, v0, :cond_5

    const/16 v0, 0x7d

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    if-eq p3, v4, :cond_3

    const/16 v0, 0x8

    if-eq p3, v3, :cond_2

    if-eq p3, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x4

    .line 4
    aget-byte p1, p1, p2

    .line 5
    invoke-static {p3, p1, v4, v5}, Lk0/qt;->i(IIZI)V

    .line 6
    iput-boolean v4, p0, Lk0/hq;->e:Z

    goto/16 :goto_2

    :cond_2
    add-int/lit8 p3, p2, 0x4

    .line 7
    aget-byte p3, p1, p3

    shl-int/2addr p3, v0

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v4, [I

    aput p1, p3, v2

    .line 8
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 9
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v4, v0, v2

    aput p1, v0, v4

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 10
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_4

    add-int/2addr p2, v3

    .line 11
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x4

    and-int/2addr p1, v4

    invoke-static {p3, p1, v2}, Ll0/c0;->b(III)V

    goto :goto_2

    :cond_4
    add-int/2addr p2, v3

    .line 12
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x4

    and-int/2addr p1, v4

    invoke-static {p3, p1, v2}, Ll0/c0;->a(III)V

    goto :goto_2

    .line 13
    :cond_5
    iget-boolean p3, p0, Lk0/hq;->e:Z

    if-nez p3, :cond_b

    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    invoke-static {p3, p1, v2, v5}, Lk0/qt;->i(IIZI)V

    goto :goto_2

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 15
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 16
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 17
    iput p2, p0, Lk0/hq;->c:I

    move p2, v2

    .line 18
    :goto_0
    iget-object p3, p0, Lk0/hq;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 19
    iget v0, p0, Lk0/hq;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v2

    if-ne v0, v3, :cond_7

    if-eqz v0, :cond_8

    .line 20
    iput p2, p0, Lk0/hq;->b:I

    goto :goto_1

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    and-int/2addr p1, v1

    if-ne p1, v4, :cond_9

    .line 21
    array-length p1, p3

    if-ge p2, p1, :cond_b

    .line 22
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_9
    if-nez p1, :cond_b

    .line 23
    iget p1, p0, Lk0/hq;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v1, :cond_a

    .line 24
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 25
    :cond_a
    iput v1, p0, Lk0/hq;->b:I

    :cond_b
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
