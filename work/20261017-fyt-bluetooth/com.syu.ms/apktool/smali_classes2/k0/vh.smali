.class public Lk0/vh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:B

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput-byte v0, p0, Lk0/vh;->b:B

    .line 3
    new-instance v0, Lk0/vh$a;

    invoke-direct {v0, p0}, Lk0/vh$a;-><init>(Lk0/vh;)V

    iput-object v0, p0, Lk0/vh;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lk0/vh$b;

    invoke-direct {v0, p0}, Lk0/vh$b;-><init>(Lk0/vh;)V

    iput-object v0, p0, Lk0/vh;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a3(Lk0/vh;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vh;->d:Ljava/lang/Runnable;

    return-object p0
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

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vh;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xb

    const/16 v2, 0x7f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_3

    const/16 v6, 0x7d

    if-eq v0, v6, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    if-eq p3, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x3

    .line 4
    aget-byte p3, p1, p2

    shr-int/lit8 p3, p3, 0x3

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 5
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v2, v3, [I

    aput v1, v2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v2, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v2, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 6
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 7
    aget-byte v0, p1, v0

    add-int/lit8 v3, p2, 0x4

    .line 8
    aget-byte v6, p1, v3

    add-int/lit8 v7, p2, 0x5

    .line 9
    aget-byte v8, p1, v7

    add-int/lit8 p2, p2, 0x7

    .line 10
    aget-byte p2, p1, p2

    const/16 v9, 0xa

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x7

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 11
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x6

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 12
    invoke-static {v1, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x3

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 13
    invoke-static {v1, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v9, v5, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aput p3, v9, v4

    .line 14
    invoke-static {v1, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v1, v5, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v5

    aput v9, v1, v4

    .line 15
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v5, [I

    shr-int/lit8 v9, v0, 0x6

    and-int/2addr v9, v5

    aput v9, v1, v4

    .line 16
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v5, [I

    shr-int/lit8 v9, v0, 0x5

    and-int/2addr v9, v5

    aput v9, v1, v4

    .line 17
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v1, v5, [I

    and-int/lit8 v0, v0, 0xf

    aput v0, v1, v4

    .line 18
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 19
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 20
    aget-byte v6, p1, v7

    .line 21
    aget-byte v8, p1, v3

    :cond_4
    and-int/lit16 p1, v6, 0xff

    const/4 p3, -0x3

    const/16 v0, 0x1b

    const/4 v1, -0x1

    const/4 v3, -0x2

    if-ne v6, v3, :cond_5

    new-array p1, v5, [I

    aput v3, p1, v4

    .line 22
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    if-ne v6, v1, :cond_6

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 23
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    if-ne v6, v2, :cond_7

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 24
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_7
    new-array v6, v5, [I

    aput p1, v6, v4

    .line 25
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 p1, v8, 0xff

    const/16 v0, 0x1c

    if-ne v8, v3, :cond_8

    new-array p1, v5, [I

    aput v3, p1, v4

    .line 26
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    if-ne v8, v1, :cond_9

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 27
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    if-ne v8, v2, :cond_a

    new-array p1, v5, [I

    aput v1, p1, v4

    .line 28
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array p3, v5, [I

    aput p1, p3, v4

    .line 29
    invoke-static {v0, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 p1, 0x50

    if-lt p2, p1, :cond_b

    mul-int/lit8 p2, p2, 0x5

    add-int/lit16 p2, p2, 0x3e8

    add-int/lit16 p2, p2, -0x190

    goto :goto_2

    :cond_b
    mul-int/lit8 p2, p2, 0x5

    rsub-int p1, p2, 0x190

    rsub-int p2, p1, 0x3e8

    :goto_2
    const/16 p1, 0x258

    if-le p2, p1, :cond_c

    .line 30
    invoke-static {p2}, Lu0/d;->A3(I)V

    :cond_c
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vh;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/vh;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x61

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
