.class public Lk0/ij;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/ij$a;

    invoke-direct {v0, p0}, Lk0/ij$a;-><init>(Lk0/ij;)V

    iput-object v0, p0, Lk0/ij;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static a3()V
    .locals 13

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    const/16 v4, 0x11

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 1
    sget v4, Ly0/f;->i:I

    const/4 v6, 0x7

    const/4 v7, 0x2

    if-eq v4, v5, :cond_1

    sget v4, Ly0/f;->C0:I

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    shl-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xf8

    aput v4, v1, v7

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    aget v4, v1, v7

    and-int/2addr v4, v6

    aput v4, v1, v7

    .line 3
    :goto_1
    sget v4, Lu0/b;->D:I

    const/16 v8, 0x9

    const/4 v9, 0x3

    if-eq v4, v5, :cond_3

    if-eq v4, v3, :cond_2

    if-eq v4, v8, :cond_2

    .line 4
    aget v4, v1, v7

    or-int/2addr v4, v9

    aput v4, v1, v7

    goto :goto_4

    .line 5
    :cond_2
    aget v4, v1, v7

    or-int/2addr v4, v2

    aput v4, v1, v7

    goto :goto_4

    .line 6
    :cond_3
    sget v4, Lw0/d;->h:I

    const/high16 v10, 0x10000

    sub-int v11, v4, v10

    const/4 v12, 0x4

    if-eqz v11, :cond_5

    sub-int v11, v4, v10

    if-eq v5, v11, :cond_5

    sub-int/2addr v4, v10

    if-ne v7, v4, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    aget v4, v1, v7

    or-int/2addr v4, v7

    aput v4, v1, v7

    .line 8
    sget v4, Lw0/d;->i:I

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v12

    const/4 v6, 0x5

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v6

    goto :goto_3

    .line 9
    :cond_5
    :goto_2
    aget v4, v1, v7

    or-int/2addr v4, v5

    aput v4, v1, v7

    .line 10
    sget v4, Lw0/d;->i:I

    add-int/lit16 v4, v4, -0x222e

    .line 11
    div-int/2addr v4, v0

    const/4 v7, 0x6

    shr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    aput v10, v1, v7

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v6

    .line 12
    :goto_3
    sget v4, Lw0/d;->j:I

    shl-int/2addr v4, v12

    and-int/lit16 v4, v4, 0xf0

    aput v4, v1, v9

    .line 13
    :goto_4
    sget v4, Lu0/b;->K3:I

    if-eq v4, v5, :cond_6

    .line 14
    aget v4, v1, v9

    or-int/2addr v4, v5

    aput v4, v1, v9

    goto :goto_5

    .line 15
    :cond_6
    aget v4, v1, v9

    or-int/2addr v4, v2

    aput v4, v1, v9

    .line 16
    :goto_5
    new-instance v4, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 18
    iget v5, v4, Landroid/text/format/Time;->hour:I

    int-to-byte v5, v5

    .line 19
    iget v4, v4, Landroid/text/format/Time;->minute:I

    int-to-byte v4, v4

    aput v5, v1, v3

    aput v4, v1, v8

    const/16 v3, 0xb

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_6
    if-ge v2, v0, :cond_7

    add-int/lit8 v4, v2, 0x1

    .line 20
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_6

    .line 21
    :cond_7
    invoke-static {v3}, Lz/k;->s([I)V

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

    const/4 v1, 0x0

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

    .line 6
    iget-object v0, p0, Lk0/ij;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 0

    add-int/lit8 p2, p2, 0x1

    .line 1
    aget-byte p1, p1, p2

    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ij;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

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
