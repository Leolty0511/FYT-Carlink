.class public Lk0/aq;
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
    iput v0, p0, Lk0/aq;->c:I

    const/16 v1, 0xa

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

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/aq;->d:[[I

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
    .locals 10

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xff

    if-eq p3, v0, :cond_8

    const/16 v0, 0x26

    if-eq p3, v0, :cond_7

    const/16 v0, 0x7d

    const/4 v4, 0x4

    if-eq p3, v0, :cond_5

    const/16 v0, 0x22

    if-eq p3, v0, :cond_4

    const/16 v0, 0x23

    if-eq p3, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v3

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v6, p1, v5

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x4

    .line 4
    aget-byte v8, p1, v7

    and-int/2addr v8, v3

    add-int/lit8 p2, p2, 0x5

    .line 5
    aget-byte v9, p1, p2

    and-int/2addr v9, v3

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 6
    invoke-static {v1}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget v1, Ll0/c0;->g:I

    if-ne v1, v0, :cond_2

    sget v1, Ll0/c0;->h:I

    if-ne v1, v6, :cond_2

    sget v1, Ll0/c0;->i:I

    if-ne v1, v8, :cond_2

    sget v1, Ll0/c0;->j:I

    if-eq v1, v9, :cond_3

    .line 8
    :cond_2
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_3

    .line 9
    invoke-static {v2}, Lu0/d;->C2(I)V

    .line 10
    sput v4, Ll0/c0;->k:I

    .line 11
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_3
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v6, Ll0/c0;->h:I

    .line 14
    sput v8, Ll0/c0;->i:I

    .line 15
    sput v9, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v5

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v7

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->K1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_3

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->K1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/lit8 p2, p2, 0x5

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-static {p1}, Ll0/c0;->K1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_3

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v2, :cond_6

    goto/16 :goto_3

    :cond_6
    add-int/lit8 p2, p2, 0x3

    .line 25
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x3

    and-int/2addr p3, v2

    aget-byte v0, p1, p2

    shr-int/2addr v0, v4

    and-int/2addr v0, v2

    invoke-static {p3, v0, v1}, Ll0/c0;->a(III)V

    .line 26
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/16 v5, 0xb

    aput v5, v4, v1

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v4, v2

    const/4 p1, 0x0

    invoke-static {p3, v0, v4, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 27
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v1, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_3

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 28
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 29
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 30
    iput p2, p0, Lk0/aq;->c:I

    move p2, v1

    .line 31
    :goto_1
    iget-object p3, p0, Lk0/aq;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 32
    iget v0, p0, Lk0/aq;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v1

    if-ne v0, v4, :cond_9

    if-eqz v0, :cond_a

    .line 33
    iput p2, p0, Lk0/aq;->b:I

    goto :goto_2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    and-int/2addr p1, v3

    if-ne p1, v2, :cond_b

    .line 34
    array-length p1, p3

    if-ge p2, p1, :cond_d

    .line 35
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_b
    if-nez p1, :cond_d

    .line 36
    iget p1, p0, Lk0/aq;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v3, :cond_c

    .line 37
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 38
    :cond_c
    iput v3, p0, Lk0/aq;->b:I

    :cond_d
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
