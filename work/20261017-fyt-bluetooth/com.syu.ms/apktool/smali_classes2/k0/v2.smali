.class public Lk0/v2;
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
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    const/16 p3, 0x7a

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const/4 v0, 0x1

    new-array v1, v0, [I

    shr-int/lit8 v3, p3, 0x6

    const/4 v4, 0x3

    and-int/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v1, v5

    .line 3
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v0

    aput v3, v1, v5

    .line 4
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    shr-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v0

    aput v3, v1, v5

    .line 5
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    shr-int/lit8 v3, p3, 0x3

    and-int/2addr v3, v0

    aput v3, v1, v5

    const/4 v3, 0x4

    .line 6
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    shr-int/2addr p3, v2

    and-int/2addr p3, v0

    aput p3, v1, v5

    const/4 p3, 0x5

    .line 7
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 8
    aget-byte v1, p1, v1

    new-array v2, v0, [I

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v5

    const/4 v1, 0x6

    .line 9
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/2addr p2, p3

    .line 10
    aget-byte p1, p1, p2

    const/4 p2, 0x7

    new-array p3, v0, [I

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v5

    .line 11
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8

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

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 2
    aget p3, p2, p4

    aget p2, p2, v0

    invoke-virtual {p0, p1, p3, p2}, Lk0/v2;->b3(III)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2, v0}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 4
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/v2;->a3(II)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, p2, v0}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 6
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/v2;->a3(II)V

    goto :goto_0

    .line 7
    :pswitch_3
    invoke-virtual {p0, p2, v0}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 8
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/v2;->a3(II)V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p0, p2, v0}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    aget p1, p2, p4

    invoke-virtual {p0, p3, p1}, Lk0/v2;->a3(II)V

    goto :goto_0

    .line 11
    :pswitch_5
    invoke-virtual {p0, p2, v0}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    aget p1, p2, p4

    invoke-virtual {p0, v0, p1}, Lk0/v2;->a3(II)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, -0x66

    aput v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(III)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v3, -0x66

    aput v3, v0, v1

    int-to-byte p1, p1

    aput p1, v0, v2

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x5

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
