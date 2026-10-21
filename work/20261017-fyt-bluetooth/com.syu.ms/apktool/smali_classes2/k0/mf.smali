.class public Lk0/mf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/mf$a;

    invoke-direct {v0, p0}, Lk0/mf$a;-><init>(Lk0/mf;)V

    iput-object v0, p0, Lk0/mf;->b:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lk0/mf$b;

    invoke-direct {v0, p0}, Lk0/mf$b;-><init>(Lk0/mf;)V

    iput-object v0, p0, Lk0/mf;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a3(Lk0/mf;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mf;->c:Ljava/lang/Runnable;

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/mf;->b:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v2, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x21

    const/16 v2, 0x10

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x24

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x29

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 p3, 0x70

    const/16 v1, 0x68

    const v6, 0xff00

    if-eq v0, v1, :cond_2

    if-eq v0, p3, :cond_1

    const/16 p3, 0x71

    if-eq v0, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 p3, 0x6d

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x8

    .line 2
    aget-byte v1, p1, v1

    shl-int/2addr v1, v2

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x5

    .line 3
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 4
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_1
    const/16 p3, 0x64

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 5
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x6

    .line 6
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0x8

    .line 7
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v7, p2, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v5, [I

    add-int/lit8 v2, p2, 0xa

    .line 8
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v6

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    aput v2, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    new-array p3, v5, [I

    add-int/lit8 v0, p2, 0x2

    .line 9
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p3, v4

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v5, [I

    add-int/2addr p2, v3

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_2
    new-array v0, v5, [I

    add-int/lit8 v1, p2, 0x3

    .line 11
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    add-int/2addr p2, v7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 14
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 15
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 16
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x6

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 17
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x7

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 18
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x5

    and-int/2addr v1, v5

    aput v1, v0, v4

    const/4 v1, 0x4

    .line 19
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/lit8 v1, p3, 0x4

    and-int/2addr v1, v5

    aput v1, v0, v4

    .line 20
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v5

    aput p3, v0, v4

    const/4 p3, 0x5

    .line 21
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 22
    aget-byte p3, p1, p3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    const/16 p2, 0x189f

    invoke-static {p3, p1, v5, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_2

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 23
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, p2, 0x3

    .line 24
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x4

    .line 25
    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, p2, 0x5

    .line 26
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 p2, p2, 0x6

    .line 27
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x7

    and-int/2addr v10, v5

    aput v10, v9, v4

    const/16 v10, 0xa

    .line 28
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x6

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 29
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v9, v5, [I

    shr-int/lit8 v10, p3, 0x5

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 30
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v9, p3, 0x4

    and-int/2addr v9, v5

    aput v9, v3, v4

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v5, [I

    shr-int/lit8 v9, p3, 0x3

    and-int/2addr v9, v5

    aput v9, v3, v4

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v3, v5, [I

    shr-int/lit8 v9, p3, 0x2

    and-int/2addr v9, v5

    aput v9, v3, v4

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    shr-int/2addr p3, v5

    and-int/2addr p3, v5

    aput p3, v2, v4

    const/16 p3, 0xf

    .line 34
    invoke-static {p3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v5, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v5

    aput v9, v3, v4

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v5, [I

    shr-int/lit8 v9, v0, 0x6

    and-int/2addr v9, v5

    aput v9, v3, v4

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v5, [I

    shr-int/lit8 v9, v0, 0x5

    and-int/lit8 v10, v9, 0x1

    aput v10, v3, v4

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v5, [I

    and-int/lit8 v9, v9, 0x7

    aput v9, v3, v4

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v5, [I

    shr-int/2addr v0, v4

    and-int/2addr p3, v0

    aput p3, v3, v4

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x25

    new-array v0, v5, [I

    shr-int/lit8 p2, p2, 0x6

    and-int/2addr p2, v5

    aput p2, v0, v4

    .line 40
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.fyt.reversetemp"

    .line 41
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 42
    aget-byte p2, p1, v7

    and-int/lit16 v6, p2, 0xff

    .line 43
    aget-byte p1, p1, v1

    and-int/lit16 v8, p1, 0xff

    :cond_8
    const/4 p1, -0x3

    const/4 p2, -0x2

    const/16 p3, 0x7f

    const/16 v0, 0x1b

    if-eqz v6, :cond_a

    if-eq v6, p3, :cond_9

    new-array v1, v5, [I

    aput v6, v1, v4

    .line 44
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v1, v5, [I

    aput p1, v1, v4

    .line 45
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array v1, v5, [I

    aput p2, v1, v4

    .line 46
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v0, 0x1c

    if-eqz v8, :cond_c

    if-eq v8, p3, :cond_b

    new-array p1, v5, [I

    aput v8, p1, v4

    .line 47
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array p2, v5, [I

    aput p1, p2, v4

    .line 48
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array p1, v5, [I

    aput p2, p1, v4

    .line 49
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/mf;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x72

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
