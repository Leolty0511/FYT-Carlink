.class public Lk0/u2;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Lo1/g0;

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/u2;->b:Lo1/g0;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/u2;->d:I

    const/16 v1, 0x8

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/4 v2, 0x7

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/u2;->e:[[I

    .line 5
    new-instance v0, Lk0/u2$a;

    invoke-direct {v0, p0}, Lk0/u2$a;-><init>(Lk0/u2;)V

    iput-object v0, p0, Lk0/u2;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/u2$b;

    invoke-direct {v0, p0}, Lk0/u2$b;-><init>(Lk0/u2;)V

    iput-object v0, p0, Lk0/u2;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/u2$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lk0/u2$c;-><init>(Lk0/u2;Landroid/os/Looper;)V

    iput-object v0, p0, Lk0/u2;->i:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x10
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x16
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x17
        0x1a
    .end array-data
.end method

.method public static synthetic b3(Lk0/u2;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/u2;->g:I

    return p0
.end method

.method public static synthetic c3(Lk0/u2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/u2;->d3()V

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk0/u2;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lk0/u2;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 9
    iget-object v0, p0, Lk0/u2;->b:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/u2;->a3(I)V

    .line 10
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/u2;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 10

    add-int/lit8 p3, p2, 0x1

    .line 1
    aget-byte p3, p1, p3

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_5

    const/4 v3, 0x2

    if-eq p3, v3, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_e

    add-int/2addr p2, v3

    .line 3
    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    .line 4
    iput p1, p0, Lk0/u2;->d:I

    move p2, v1

    .line 5
    :goto_0
    iget-object p3, p0, Lk0/u2;->e:[[I

    array-length v3, p3

    if-ge p2, v3, :cond_2

    .line 6
    iget v3, p0, Lk0/u2;->d:I

    aget-object v4, p3, p2

    aget v4, v4, v1

    if-ne v3, v4, :cond_1

    if-eqz v3, :cond_2

    .line 7
    iput p2, p0, Lk0/u2;->c:I

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 8
    array-length p1, p3

    if-ge p2, p1, :cond_e

    .line 9
    aget-object p1, p3, p2

    aget p1, p1, v2

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    .line 10
    :cond_3
    iget p1, p0, Lk0/u2;->c:I

    array-length p2, p3

    if-ge p1, p2, :cond_4

    if-eq p1, v0, :cond_4

    .line 11
    aget-object p1, p3, p1

    aget p1, p1, v2

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 12
    :cond_4
    iput v0, p0, Lk0/u2;->c:I

    goto/16 :goto_4

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte v3, p1, p3

    and-int/2addr v3, v0

    add-int/lit8 v4, p2, 0x3

    .line 14
    aget-byte v5, p1, v4

    and-int/2addr v5, v0

    const-string v6, "persist.fyt.reversetemp"

    .line 15
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 16
    aget-byte v3, p1, v4

    and-int/2addr v3, v0

    .line 17
    aget-byte p3, p1, p3

    and-int/lit16 v5, p3, 0xff

    :cond_6
    const/4 p3, -0x3

    const/4 v4, -0x1

    const/4 v6, -0x2

    const/16 v7, 0xfe

    const/16 v8, 0x1b

    if-eqz v3, :cond_9

    if-eq v3, v7, :cond_8

    if-eq v3, v0, :cond_7

    new-array v9, v2, [I

    aput v3, v9, v1

    .line 18
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v3, v2, [I

    aput p3, v3, v1

    .line 19
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array v3, v2, [I

    aput v4, v3, v1

    .line 20
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v3, v2, [I

    aput v6, v3, v1

    .line 21
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v3, 0x1c

    if-eqz v5, :cond_c

    if-eq v5, v7, :cond_b

    if-eq v5, v0, :cond_a

    new-array p3, v2, [I

    aput v5, p3, v1

    .line 22
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v4, v2, [I

    aput p3, v4, v1

    .line 23
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array p3, v2, [I

    aput v4, p3, v1

    .line 24
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array p3, v2, [I

    aput v6, p3, v1

    .line 25
    invoke-static {v3, p3}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 p3, p2, 0x4

    .line 26
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    const/4 v0, 0x7

    if-le p3, v0, :cond_d

    move p3, v0

    :cond_d
    const/16 v3, 0x15

    new-array v4, v2, [I

    aput p3, v4, v1

    .line 27
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 28
    aget-byte p3, p1, p3

    const/16 v3, 0x13

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 29
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 30
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 31
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 32
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x1

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 33
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v4, v2, [I

    shr-int/2addr p3, v1

    and-int/2addr p3, v2

    aput p3, v4, v1

    .line 34
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x6

    .line 35
    aget-byte p3, p1, p3

    const/16 v3, 0xd

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 36
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x4

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 37
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v4, v2, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v2

    aput v5, v4, v1

    .line 38
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x37

    new-array v4, v2, [I

    shr-int/lit8 p3, p3, 0x5

    and-int/2addr p3, v2

    aput p3, v4, v1

    .line 39
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 40
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_e

    add-int/2addr p2, v0

    .line 41
    aget-byte p1, p1, p2

    invoke-static {p1}, Ll0/f0;->d(B)V

    :cond_e
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/u2;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/u2;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/u2;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 2
    aget p2, p2, p1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-virtual {p0, p1}, Lk0/u2;->a3(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 3

    .line 1
    iput p1, p0, Lk0/u2;->g:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x62

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/u2;->b:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    iget v1, p0, Lk0/u2;->g:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/u2;->b:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/u2;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
