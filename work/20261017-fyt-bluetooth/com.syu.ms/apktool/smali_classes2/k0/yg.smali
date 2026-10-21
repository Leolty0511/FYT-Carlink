.class public Lk0/yg;
.super Lk0/lt;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    return-void
.end method

.method public static a3(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xf

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x88
        0x1
        0x11
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x88
        0x1
        0x21
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x88
        0x1
        0x31
    .end array-data
.end method

.method public U2([BII)V
    .locals 6

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p3, v0, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq p3, v2, :cond_3

    const/16 v4, 0xb

    const/4 v5, 0x1

    if-eq p3, v4, :cond_1

    const/16 v2, 0xd

    if-eq p3, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p3, 0x7

    new-array v2, v5, [I

    add-int/2addr p2, v0

    .line 2
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v2, v1

    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :cond_1
    add-int/2addr p2, v0

    .line 3
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v5, [I

    and-int/lit8 p3, p1, 0x1

    aput p3, p2, v1

    .line 5
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v1

    .line 6
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v1

    .line 7
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    and-int/lit8 p3, p1, 0x1

    aput p3, p2, v1

    .line 8
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v1

    const/4 p3, 0x3

    .line 9
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v1

    .line 10
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v1

    .line 11
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v1

    .line 12
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte v0, p1, p3

    shr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lk0/yg;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    .line 14
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lk0/yg;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 15
    aget-byte v0, p1, p3

    shr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lk0/yg;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    .line 16
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lk0/yg;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 17
    aget-byte v0, p1, p3

    shr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lk0/yg;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    .line 18
    aget-byte p3, p1, p3

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lk0/yg;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    add-int/2addr p2, v2

    .line 19
    aget-byte p3, p1, p2

    shr-int/2addr p3, v3

    and-int/lit8 p3, p3, 0xf

    invoke-static {p3}, Lk0/yg;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 20
    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1}, Lk0/yg;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_1

    :cond_4
    add-int/2addr p2, v0

    .line 21
    aget-byte p1, p1, p2

    const/16 p2, 0x28

    invoke-static {p1, v1, p2}, Lk0/qt;->o(IZI)V

    :goto_1
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
    .locals 0

    return-void
.end method
