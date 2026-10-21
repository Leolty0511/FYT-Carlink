.class public Lk0/gj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/gj;->c:I

    const/4 v1, 0x7

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    iput-object v2, p0, Lk0/gj;->d:[[I

    .line 4
    iput v0, p0, Lk0/gj;->f:I

    const/16 v2, 0x8

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_7

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v9

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v2, v1

    iput-object v2, p0, Lk0/gj;->g:[[I

    .line 6
    iput v0, p0, Lk0/gj;->h:I

    .line 7
    new-instance v0, Lk0/gj$a;

    invoke-direct {v0, p0}, Lk0/gj$a;-><init>(Lk0/gj;)V

    iput-object v0, p0, Lk0/gj;->i:Ljava/lang/Runnable;

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
        0x4
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x36
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_a
    .array-data 4
        0x4
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x5
        0x37
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0x7
        0x1f
    .end array-data

    :array_e
    .array-data 4
        0x8
        0x1d
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

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/gj;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x7f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xff

    if-eq v0, v1, :cond_9

    const/16 v1, -0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, -0x10

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    iput p3, p0, Lk0/gj;->f:I

    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    move p2, v2

    .line 5
    :goto_0
    iget-object p3, p0, Lk0/gj;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_3

    .line 6
    iget v0, p0, Lk0/gj;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_2

    if-eqz v0, :cond_3

    .line 7
    iput p2, p0, Lk0/gj;->e:I

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget p2, p0, Lk0/gj;->h:I

    if-eq p1, p2, :cond_8

    if-le p1, p2, :cond_5

    move p2, v2

    .line 9
    :goto_2
    iget p3, p0, Lk0/gj;->h:I

    sub-int p3, p1, p3

    const/4 v0, 0x7

    if-ge p2, p3, :cond_4

    .line 10
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 11
    :cond_4
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_5
    if-ge p1, p2, :cond_7

    move p2, v2

    .line 12
    :goto_3
    iget p3, p0, Lk0/gj;->h:I

    sub-int/2addr p3, p1

    const/16 v0, 0x8

    if-ge p2, p3, :cond_6

    .line 13
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 14
    :cond_6
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    .line 15
    :cond_7
    :goto_4
    iput p1, p0, Lk0/gj;->h:I

    goto/16 :goto_8

    .line 16
    :cond_8
    iget p1, p0, Lk0/gj;->f:I

    if-eqz p1, :cond_10

    .line 17
    iget p1, p0, Lk0/gj;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_10

    .line 18
    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 19
    iget-object p1, p0, Lk0/gj;->g:[[I

    iget p2, p0, Lk0/gj;->e:I

    aget-object p1, p1, p2

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :cond_9
    add-int/lit8 p3, p2, 0x4

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    iput p3, p0, Lk0/gj;->c:I

    move p3, v2

    .line 21
    :goto_5
    iget-object v0, p0, Lk0/gj;->d:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_b

    .line 22
    iget v1, p0, Lk0/gj;->c:I

    aget-object v5, v0, p3

    aget v5, v5, v2

    if-ne v1, v5, :cond_a

    if-eqz v1, :cond_b

    .line 23
    iput p3, p0, Lk0/gj;->b:I

    goto :goto_6

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 24
    :cond_b
    :goto_6
    iget p3, p0, Lk0/gj;->c:I

    if-eqz p3, :cond_c

    .line 25
    iget p3, p0, Lk0/gj;->b:I

    array-length v1, v0

    if-ge p3, v1, :cond_c

    .line 26
    aget-object p3, v0, p3

    aget p3, p3, v3

    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    .line 27
    iget-object p3, p0, Lk0/gj;->d:[[I

    iget v0, p0, Lk0/gj;->b:I

    aget-object p3, p3, v0

    aget p3, p3, v3

    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    :cond_c
    add-int/lit8 p3, p2, 0x6

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/2addr v0, v4

    const/16 v1, 0x104

    invoke-static {p3, v0, v1}, Lk0/qt;->p(III)V

    add-int/lit8 p3, p2, 0x8

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x9

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0xa

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p3, p2, 0xb

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0xc

    .line 33
    aget-byte v0, p1, p3

    and-int/2addr v0, v4

    add-int/lit8 v1, p2, 0xd

    .line 34
    aget-byte v5, p1, v1

    and-int/2addr v5, v4

    add-int/lit8 v6, p2, 0xe

    .line 35
    aget-byte v7, p1, v6

    and-int/2addr v7, v4

    add-int/lit8 p2, p2, 0xf

    .line 36
    aget-byte v8, p1, p2

    and-int/2addr v8, v4

    if-ne v0, v4, :cond_d

    if-ne v5, v4, :cond_d

    if-ne v7, v4, :cond_d

    if-ne v8, v4, :cond_d

    .line 37
    invoke-static {v2}, Lu0/d;->C2(I)V

    goto :goto_7

    .line 38
    :cond_d
    sget v2, Ll0/c0;->g:I

    if-ne v2, v0, :cond_e

    sget v2, Ll0/c0;->h:I

    if-ne v2, v5, :cond_e

    sget v2, Ll0/c0;->i:I

    if-ne v2, v7, :cond_e

    sget v2, Ll0/c0;->j:I

    if-eq v2, v8, :cond_f

    .line 39
    :cond_e
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_f

    .line 40
    invoke-static {v3}, Lu0/d;->C2(I)V

    const/4 v2, 0x4

    .line 41
    sput v2, Ll0/c0;->k:I

    .line 42
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 43
    :cond_f
    :goto_7
    sput v0, Ll0/c0;->g:I

    .line 44
    sput v5, Ll0/c0;->h:I

    .line 45
    sput v7, Ll0/c0;->i:I

    .line 46
    sput v8, Ll0/c0;->j:I

    .line 47
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 48
    aget-byte p3, p1, v1

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 49
    aget-byte p3, p1, v6

    and-int/2addr p3, v4

    invoke-static {p3}, Ll0/c0;->X0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 50
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ll0/c0;->X0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    :cond_10
    :goto_8
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gj;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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
