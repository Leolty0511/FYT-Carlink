.class public Lk0/rj;
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

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/rj;->c:I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/rj;->d:[[I

    .line 4
    iput v3, p0, Lk0/rj;->e:I

    .line 5
    new-instance v0, Lk0/rj$a;

    invoke-direct {v0, p0}, Lk0/rj$a;-><init>(Lk0/rj;)V

    iput-object v0, p0, Lk0/rj;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/rj$b;

    invoke-direct {v0, p0}, Lk0/rj$b;-><init>(Lk0/rj;)V

    iput-object v0, p0, Lk0/rj;->g:Ljava/lang/Runnable;

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
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->q:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/rj;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_d

    const/16 p3, 0x11

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v0, p3, :cond_6

    const/16 p3, 0x18

    if-eq v0, p3, :cond_4

    const/16 p3, 0x41

    if-eq v0, p3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0x5

    .line 5
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 6
    aget-byte v0, p1, p3

    and-int/2addr v0, v5

    add-int/lit8 v2, p2, 0x7

    .line 7
    aget-byte v3, p1, v2

    and-int/2addr v3, v5

    .line 8
    aget-byte v7, p1, v2

    and-int/2addr v7, v5

    add-int/lit8 v8, p2, 0x8

    .line 9
    aget-byte v8, p1, v8

    and-int/2addr v8, v5

    if-ne v0, v5, :cond_1

    if-ne v3, v5, :cond_1

    if-ne v7, v5, :cond_1

    if-ne v8, v5, :cond_1

    .line 10
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 11
    :cond_1
    sget v4, Ll0/c0;->g:I

    if-ne v4, v0, :cond_2

    sget v4, Ll0/c0;->h:I

    if-ne v4, v3, :cond_2

    sget v4, Ll0/c0;->i:I

    if-ne v4, v7, :cond_2

    sget v4, Ll0/c0;->j:I

    if-eq v4, v8, :cond_3

    .line 12
    :cond_2
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_3

    .line 13
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 14
    sput v1, Ll0/c0;->k:I

    .line 15
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 16
    :cond_3
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 17
    sput v3, Ll0/c0;->h:I

    .line 18
    sput v7, Ll0/c0;->i:I

    .line 19
    sput v8, Ll0/c0;->j:I

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->b1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 21
    aget-byte p3, p1, v2

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 22
    aget-byte p3, p1, v2

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->E0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    add-int/lit8 p2, p2, 0x9

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Ll0/c0;->b1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :cond_4
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 24
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_5

    add-int/2addr p2, v3

    .line 25
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v6

    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    invoke-static {p3, v0, p1}, Ll0/c0;->b(III)V

    goto/16 :goto_5

    :cond_5
    add-int/2addr p2, v3

    .line 26
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v6

    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v6

    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v6

    invoke-static {p3, v0, p1}, Ll0/c0;->a(III)V

    goto/16 :goto_5

    :cond_6
    add-int/lit8 p3, p2, 0x4

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    iput p3, p0, Lk0/rj;->c:I

    add-int/lit8 p3, p2, 0x5

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    move v0, v4

    .line 29
    :goto_1
    iget-object v7, p0, Lk0/rj;->d:[[I

    array-length v8, v7

    if-ge v0, v8, :cond_8

    .line 30
    iget v8, p0, Lk0/rj;->c:I

    aget-object v9, v7, v0

    aget v9, v9, v4

    if-ne v8, v9, :cond_7

    if-eqz v8, :cond_8

    .line 31
    iput v0, p0, Lk0/rj;->b:I

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    and-int/2addr p3, v5

    if-ne p3, v6, :cond_9

    .line 32
    array-length p3, v7

    if-ge v0, p3, :cond_b

    .line 33
    aget-object p3, v7, v0

    aget p3, p3, v6

    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_9
    if-nez p3, :cond_b

    .line 34
    iget p3, p0, Lk0/rj;->b:I

    array-length v0, v7

    if-ge p3, v0, :cond_a

    if-eq p3, v5, :cond_a

    .line 35
    aget-object p3, v7, p3

    aget p3, p3, v6

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 36
    :cond_a
    iput v5, p0, Lk0/rj;->b:I

    :cond_b
    :goto_3
    add-int/lit8 p3, p2, 0x6

    .line 37
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 38
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    new-array v0, v6, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v6

    aput v7, v0, v4

    .line 39
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v6

    aput v7, v0, v4

    .line 40
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v0, v6, [I

    shr-int/lit8 v7, p3, 0x7

    and-int/2addr v7, v6

    aput v7, v0, v4

    .line 41
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v7, p3, 0x6

    and-int/2addr v7, v6

    aput v7, v0, v4

    .line 42
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v0, v6, [I

    shr-int/lit8 v7, p3, 0x4

    and-int/2addr v7, v6

    aput v7, v0, v4

    .line 43
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v6

    aput v3, v0, v4

    .line 44
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/lit8 v1, p3, 0x3

    and-int/2addr v1, v6

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 45
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v6, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v6

    aput p3, v0, v4

    .line 46
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x9

    .line 47
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    const/16 p2, 0x21c

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_5

    .line 48
    :cond_d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/rj;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/rj;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/4 p3, 0x7

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v3

    aput v2, p1, v4

    const/16 v0, 0x1b

    aput v0, p1, v2

    .line 2
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v1, [I

    aput v0, p1, v3

    aput v2, p1, v4

    const/16 v0, 0x3d

    aput v0, p1, v2

    .line 3
    aget v0, p2, v3

    aput v0, p1, p4

    aget p2, p2, v4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x3
        0x1
        0x1
    .end array-data
.end method
