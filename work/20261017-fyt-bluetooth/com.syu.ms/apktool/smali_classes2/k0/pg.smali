.class public Lk0/pg;
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
    iput-byte v0, p0, Lk0/pg;->b:B

    .line 3
    new-instance v0, Lk0/pg$a;

    invoke-direct {v0, p0}, Lk0/pg$a;-><init>(Lk0/pg;)V

    iput-object v0, p0, Lk0/pg;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lk0/pg$b;

    invoke-direct {v0, p0}, Lk0/pg$b;-><init>(Lk0/pg;)V

    iput-object v0, p0, Lk0/pg;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a3(Lk0/pg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/pg;->d:Ljava/lang/Runnable;

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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->l:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/pg;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 15

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v2, :cond_3

    const/16 v6, 0x9

    const/4 v7, 0x2

    if-eq v0, v6, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v0, p2, 0x3

    .line 2
    aget-byte v0, p1, v0

    const-string v1, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 4
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 5
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 6
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x7

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 7
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x5

    and-int/2addr v6, v5

    aput v6, v1, v4

    .line 8
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/lit8 v6, v0, 0x4

    and-int/2addr v6, v5

    aput v6, v1, v4

    const/4 v6, 0x4

    .line 9
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v5, [I

    shr-int/2addr v0, v3

    and-int/2addr v0, v5

    aput v0, v1, v4

    .line 10
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v0, p2, 0x2

    .line 11
    aget-byte v0, p1, v0

    const/16 v1, 0x80

    const/16 v2, 0x7f

    invoke-static {v0, v4, v1, v5, v2}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v0, p2, 0x2

    .line 12
    aget-byte v0, p1, v0

    add-int/lit8 v6, p2, 0x3

    .line 13
    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x4

    .line 14
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x5

    .line 15
    aget-byte v9, p1, v8

    add-int/lit8 v10, p2, 0x6

    .line 16
    aget-byte v11, p1, v10

    new-array v12, v5, [I

    shr-int/lit8 v13, v0, 0x7

    and-int/2addr v13, v5

    aput v13, v12, v4

    .line 17
    invoke-static {v1, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v12, v5, [I

    shr-int/lit8 v13, v0, 0x6

    and-int/2addr v13, v5

    aput v13, v12, v4

    .line 18
    invoke-static {v1, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v12, v5, [I

    shr-int/lit8 v13, v0, 0x4

    and-int/2addr v13, v5

    aput v13, v12, v4

    .line 19
    invoke-static {v1, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v12, v5, [I

    shr-int/lit8 v13, v0, 0x2

    and-int/lit8 v14, v13, 0x3

    aput v14, v12, v4

    .line 20
    invoke-static {v1, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v12, v5, [I

    and-int/2addr v13, v5

    aput v13, v12, v4

    .line 21
    invoke-static {v1, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v12, v5, [I

    shr-int/2addr v0, v5

    and-int/2addr v0, v5

    aput v0, v12, v4

    .line 22
    invoke-static {v1, v12}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v1, v5, [I

    shr-int/lit8 v12, v6, 0x6

    and-int/2addr v3, v12

    aput v3, v1, v4

    .line 23
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v1, v5, [I

    and-int/lit8 v3, v6, 0xf

    aput v3, v1, v4

    .line 24
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v1, v5, [I

    shr-int/lit8 v3, v7, 0x6

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 25
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v1, v5, [I

    shr-int/lit8 v3, v7, 0x4

    and-int/2addr v3, v5

    aput v3, v1, v4

    .line 26
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v1, v5, [I

    shr-int/lit8 v2, v7, 0x5

    and-int/2addr v2, v5

    aput v2, v1, v4

    .line 27
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.fyt.reversetemp"

    .line 28
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    aget-byte v9, p1, v10

    .line 30
    aget-byte v11, p1, v8

    :cond_4
    const/4 v0, -0x3

    const/4 v1, -0x2

    const/16 v2, 0x40

    const/16 v3, 0x24

    const/16 v6, 0x1b

    if-ge v9, v3, :cond_5

    new-array v7, v5, [I

    aput v1, v7, v4

    .line 31
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    if-le v9, v2, :cond_6

    new-array v7, v5, [I

    aput v0, v7, v4

    .line 32
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v7, v5, [I

    aput v9, v7, v4

    .line 33
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v6, 0x1c

    if-ge v11, v3, :cond_7

    new-array v0, v5, [I

    aput v1, v0, v4

    .line 34
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    if-le v11, v2, :cond_8

    new-array v1, v5, [I

    aput v0, v1, v4

    .line 35
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v0, v5, [I

    aput v11, v0, v4

    .line 36
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/pg;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/pg;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
