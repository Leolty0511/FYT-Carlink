.class public Lk0/og;
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
    iput v0, p0, Lk0/og;->c:I

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

    iput-object v1, p0, Lk0/og;->d:[[I

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
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1f
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1e
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

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->l:I

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/16 v2, 0x28

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v0, v2, :cond_9

    const/16 v2, 0x30

    if-eq v0, v2, :cond_8

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte v0, p1, p3

    and-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v5, p1, v2

    and-int/2addr v5, v1

    add-int/lit8 v6, p2, 0x4

    .line 4
    aget-byte v9, p1, v6

    and-int/2addr v9, v1

    add-int/2addr p2, v3

    .line 5
    aget-byte v3, p1, p2

    and-int/2addr v3, v1

    if-nez v0, :cond_0

    if-nez v5, :cond_0

    if-nez v9, :cond_0

    if-nez v3, :cond_0

    .line 6
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v7, Ll0/c0;->g:I

    if-ne v7, v0, :cond_1

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_1

    sget v7, Ll0/c0;->i:I

    if-ne v7, v9, :cond_1

    sget v7, Ll0/c0;->j:I

    if-eq v7, v3, :cond_2

    .line 8
    :cond_1
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_2

    .line 9
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 10
    sput v4, Ll0/c0;->k:I

    .line 11
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v0, Ll0/c0;->g:I

    .line 13
    sput v5, Ll0/c0;->h:I

    .line 14
    sput v9, Ll0/c0;->i:I

    .line 15
    sput v3, Ll0/c0;->j:I

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/c0;->Q0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 17
    aget-byte p3, p1, v2

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/c0;->Q0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 18
    aget-byte p3, p1, v6

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/c0;->Q0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 19
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-static {p1}, Ll0/c0;->Q0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 20
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/c0;->Q0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 21
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/c0;->Q0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 22
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    invoke-static {p3}, Ll0/c0;->Q0(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v3

    .line 23
    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    invoke-static {p1}, Ll0/c0;->Q0(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 24
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    .line 25
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 26
    iput p2, p0, Lk0/og;->c:I

    move p2, v7

    .line 27
    :goto_1
    iget-object p3, p0, Lk0/og;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_4

    .line 28
    iget v0, p0, Lk0/og;->c:I

    aget-object v2, p3, p2

    aget v2, v2, v7

    if-ne v0, v2, :cond_3

    if-eqz v0, :cond_4

    .line 29
    iput p2, p0, Lk0/og;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    and-int/2addr p1, v1

    if-ne p1, v8, :cond_5

    .line 30
    array-length p1, p3

    if-ge p2, p1, :cond_b

    .line 31
    aget-object p1, p3, p2

    aget p1, p1, v8

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    :cond_5
    if-nez p1, :cond_b

    .line 32
    iget p1, p0, Lk0/og;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_6

    if-eq p1, v1, :cond_6

    .line 33
    aget-object p1, p3, p1

    aget p1, p1, v8

    invoke-static {p1, v8}, Ll0/b0;->l0(II)V

    .line 34
    :cond_6
    iput v1, p0, Lk0/og;->b:I

    goto/16 :goto_4

    .line 35
    :cond_7
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    new-array p1, v3, [I

    .line 36
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_8
    add-int/lit8 p3, p2, 0x2

    .line 37
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    invoke-static {p3, p1, v7, p2}, Lk0/qt;->l(IIZI)V

    goto :goto_4

    :cond_9
    add-int/2addr p2, v6

    .line 38
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 39
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 40
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 41
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 42
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 43
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 44
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 45
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v8

    aput p3, p2, v7

    .line 46
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v8, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v8

    aput p1, p2, v7

    .line 47
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :cond_b
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x8f
        0x2
        0x1
        0x0
    .end array-data
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
