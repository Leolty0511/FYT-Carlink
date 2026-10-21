.class public Lk0/ro;
.super Lk0/lt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    return-void
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
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x29

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/4 p3, 0x5

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/2addr p2, v2

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 4
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 5
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 6
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v4

    aput v0, p2, v3

    .line 7
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v4, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v4

    aput v0, p2, v3

    const/4 v0, 0x3

    .line 8
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 v2, p1, 0x5

    and-int/2addr v2, v4

    aput v2, p2, v3

    .line 9
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v0

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v0, p2, 0x2

    .line 11
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, p2, 0x3

    .line 12
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, p2, 0x4

    .line 13
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    add-int/2addr p2, p3

    .line 14
    aget-byte p3, p1, p2

    and-int/lit16 p3, p3, 0xff

    if-nez v2, :cond_1

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    if-nez p3, :cond_1

    .line 15
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 16
    :cond_1
    sget v3, Ll0/c0;->g:I

    if-ne v3, v2, :cond_2

    sget v3, Ll0/c0;->h:I

    if-ne v3, v6, :cond_2

    sget v3, Ll0/c0;->i:I

    if-ne v3, v8, :cond_2

    sget v3, Ll0/c0;->j:I

    if-eq v3, p3, :cond_3

    .line 17
    :cond_2
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_3

    .line 18
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 19
    sput v1, Ll0/c0;->k:I

    .line 20
    sget-object v1, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 21
    :cond_3
    :goto_1
    sput v2, Ll0/c0;->g:I

    .line 22
    sput v6, Ll0/c0;->h:I

    .line 23
    sput v8, Ll0/c0;->i:I

    .line 24
    sput p3, Ll0/c0;->j:I

    .line 25
    aget-byte p3, p1, v0

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->t1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 26
    aget-byte p3, p1, v5

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->t1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 27
    aget-byte p3, p1, v7

    and-int/lit16 p3, p3, 0xff

    invoke-static {p3}, Ll0/c0;->t1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 28
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/c0;->t1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_2

    :pswitch_2
    add-int/lit8 v0, p2, 0x2

    .line 29
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->t1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 30
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->t1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 31
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ll0/c0;->t1(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 32
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ll0/c0;->t1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_2

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/2addr p2, v2

    .line 34
    aget-byte p1, p1, p2

    const/16 p2, 0x80

    const/16 p3, 0x18

    invoke-static {p1, v3, p2, v4, p3}, Lk0/qt;->m(IIIZI)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
