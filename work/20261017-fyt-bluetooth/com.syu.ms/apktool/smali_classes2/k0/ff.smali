.class public Lk0/ff;
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
    .locals 0

    return-void
.end method

.method public U2([BII)V
    .locals 0

    return-void
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 5

    const/16 p3, 0x3eb

    const/4 p4, 0x5

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    const/16 p3, 0x405

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    .line 2
    aget v1, p2, p3

    mul-int/lit16 v1, v1, 0x1000

    invoke-static {}, La/f;->w()I

    move-result v2

    div-int/2addr v1, v2

    .line 3
    aget v2, p2, p1

    mul-int/lit16 v2, v2, 0x1000

    invoke-static {}, La/f;->i()I

    move-result v3

    div-int/2addr v2, v3

    .line 4
    aget p2, p2, v0

    if-nez p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    const/16 v3, 0x8

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v0

    aput p4, v3, p3

    aput p4, v3, p1

    const/4 p1, 0x3

    aput p2, v3, p1

    const/4 p1, 0x4

    shr-int/lit8 p2, v1, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, v3, p1

    and-int/lit16 p1, v1, 0xff

    aput p1, v3, p4

    const/4 p1, 0x6

    shr-int/lit8 p2, v2, 0x8

    and-int/lit16 p2, p2, 0xff

    aput p2, v3, p1

    const/4 p1, 0x7

    and-int/lit16 p2, v2, 0xff

    aput p2, v3, p1

    .line 5
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    .line 6
    :cond_2
    aget p1, p2, v0

    if-nez p1, :cond_3

    new-array p1, p4, [I

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2
        0xf1
        0x0
    .end array-data
.end method
