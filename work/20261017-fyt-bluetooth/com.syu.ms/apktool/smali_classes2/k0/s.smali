.class public Lk0/s;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static l:I


# instance fields
.field public final b:[I

.field public c:Lo1/g0;

.field public final d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:J

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/s;->b:[I

    .line 3
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/s;->c:Lo1/g0;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lk0/s;->d:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lk0/s;->f:I

    const/16 v2, 0x9

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_1

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x4

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v1, 0x5

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v1, 0x8

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/s;->g:[[I

    .line 7
    new-instance v0, Lk0/s$a;

    invoke-direct {v0, p0}, Lk0/s$a;-><init>(Lk0/s;)V

    iput-object v0, p0, Lk0/s;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/s$b;

    invoke-direct {v0, p0}, Lk0/s$b;-><init>(Lk0/s;)V

    iput-object v0, p0, Lk0/s;->i:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lk0/s;->j:J

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/s;->k:I

    return-void

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x17
        0x5
    .end array-data
.end method

.method public static synthetic b3(Lk0/s;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/s;->j:J

    return-wide v0
.end method

.method public static synthetic c3(Lk0/s;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/s;->j:J

    return-wide p1
.end method

.method public static synthetic d3(Lk0/s;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/s;->k:I

    return p0
.end method

.method public static synthetic e3(Lk0/s;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/s;->k:I

    return p1
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
    iget-object v0, p0, Lk0/s;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v0, 0x5

    new-array v2, v0, [I

    .line 4
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    iget-object v0, p0, Lk0/s;->c:Lo1/g0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/s;->f3(I)V

    .line 7
    iget-object v0, p0, Lk0/s;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lk0/s;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x33
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x33
        0x2
    .end array-data
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x3

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p3, v0, :cond_b

    const/16 v0, 0x22

    const/4 v5, 0x5

    if-eq p3, v0, :cond_a

    const/16 v0, 0x24

    const/4 v6, 0x2

    if-eq p3, v0, :cond_8

    const/16 v0, 0x29

    if-eq p3, v0, :cond_7

    const/16 v0, 0x33

    if-eq p3, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    const/16 v0, 0x69

    const/16 v5, 0x68

    const/high16 v7, 0xff0000

    const/16 v8, 0xb

    const v9, 0xff00

    if-eq p3, v4, :cond_4

    if-eq p3, v6, :cond_1

    goto/16 :goto_6

    :cond_1
    const/16 p3, 0x6e

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0x3

    .line 3
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x10

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x4

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, p1, v11

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0x6

    .line 4
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, p1, v11

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0x8

    .line 5
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x10

    and-int/2addr v10, v7

    add-int/lit8 v11, p2, 0x9

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    add-int/lit8 v11, p2, 0xa

    aget-byte v11, p1, v11

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0xb

    .line 6
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0xc

    aget-byte v11, p1, v11

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0xd

    .line 7
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x10

    and-int/2addr v7, v10

    add-int/lit8 v10, p2, 0xe

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    or-int/2addr v7, v10

    add-int/lit8 v10, p2, 0xf

    aget-byte v10, p1, v10

    and-int/2addr v10, v2

    or-int/2addr v7, v10

    aput v7, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v6, v4, [I

    add-int/lit8 v7, p2, 0x10

    .line 8
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v9

    add-int/lit8 v9, p2, 0x11

    aget-byte v9, p1, v9

    and-int/2addr v9, v2

    or-int/2addr v7, v9

    aput v7, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x12

    .line 9
    aget-byte p3, p1, p3

    new-array v6, v4, [I

    and-int/lit8 v7, p3, 0x3

    aput v7, v6, v3

    .line 10
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x2

    and-int/2addr v6, v1

    aput v6, v5, v3

    .line 11
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v1, v6

    aput v1, v5, v3

    .line 12
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v1, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 13
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v1, v4, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v4

    aput p3, v1, v3

    .line 14
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x13

    .line 15
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-gez p1, :cond_2

    move v8, v3

    goto :goto_0

    :cond_2
    if-le p1, v8, :cond_3

    goto :goto_0

    :cond_3
    move v8, p1

    :goto_0
    const/16 p1, 0x6d

    new-array p2, v4, [I

    .line 16
    iget-object p3, p0, Lk0/s;->b:[I

    aget p3, p3, v8

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_4
    const/16 p3, 0x62

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0x3

    .line 17
    aget-byte v10, p1, v10

    and-int/2addr v10, v2

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x63

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0x4

    .line 18
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, p1, v11

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0x6

    .line 19
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, p1, v11

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0x8

    .line 20
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0x9

    aget-byte v11, p1, v11

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    aput v10, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v6, v4, [I

    add-int/lit8 v10, p2, 0xa

    .line 21
    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x10

    and-int/2addr v7, v10

    add-int/lit8 v10, p2, 0xb

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v9

    or-int/2addr v7, v10

    add-int/lit8 v10, p2, 0xc

    aget-byte v10, p1, v10

    and-int/2addr v10, v2

    or-int/2addr v7, v10

    aput v7, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v6, v4, [I

    add-int/lit8 v7, p2, 0xd

    .line 22
    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v9

    add-int/lit8 v9, p2, 0xe

    aget-byte v9, p1, v9

    and-int/2addr v9, v2

    or-int/2addr v7, v9

    aput v7, v6, v3

    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0xf

    .line 23
    aget-byte p3, p1, p3

    new-array v6, v4, [I

    and-int/lit8 v7, p3, 0x3

    aput v7, v6, v3

    .line 24
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x2

    and-int/2addr v6, v1

    aput v6, v5, v3

    .line 25
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v5, v4, [I

    shr-int/lit8 v6, p3, 0x4

    and-int/2addr v1, v6

    aput v1, v5, v3

    .line 26
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6b

    new-array v1, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v1, v3

    .line 27
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v1, v4, [I

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v4

    aput p3, v1, v3

    .line 28
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x10

    .line 29
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-gez p1, :cond_5

    move v8, v3

    goto :goto_1

    :cond_5
    if-le p1, v8, :cond_6

    goto :goto_1

    :cond_6
    move v8, p1

    :goto_1
    const/16 p1, 0x6d

    new-array p2, v4, [I

    .line 30
    iget-object p3, p0, Lk0/s;->b:[I

    aget p3, p3, v8

    aput p3, p2, v3

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_7
    add-int/lit8 p3, p2, 0x2

    .line 31
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    const/16 p2, 0x1200

    invoke-static {p3, p1, v4, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    :cond_8
    add-int/2addr p2, v6

    .line 32
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 33
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_9

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 34
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 35
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 36
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 37
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 38
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x4

    .line 39
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 40
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v4

    aput p1, p2, v3

    .line 41
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 42
    :cond_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_12

    add-int/lit8 p3, p2, 0x2

    .line 43
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-virtual {p0, p3}, Lk0/s;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 44
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-virtual {p0, p3}, Lk0/s;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 45
    aget-byte p3, p1, p3

    and-int/2addr p3, v2

    invoke-virtual {p0, p3}, Lk0/s;->a3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v5

    .line 46
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lk0/s;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_6

    :cond_b
    add-int/lit8 p3, p2, 0x2

    .line 47
    aget-byte v0, p1, p3

    add-int/2addr p2, v1

    .line 48
    aget-byte v1, p1, p2

    const/16 v5, 0x18

    if-ne v0, v5, :cond_d

    if-ne v1, v4, :cond_d

    .line 49
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.canbus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    invoke-static {}, Lo1/u;->k()V

    goto :goto_3

    .line 51
    :cond_c
    invoke-static {}, Lo1/u;->v()I

    .line 52
    :cond_d
    :goto_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 53
    aget-byte p3, p1, p3

    .line 54
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 55
    iput p2, p0, Lk0/s;->f:I

    move p2, v3

    .line 56
    :goto_4
    iget-object p3, p0, Lk0/s;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_f

    .line 57
    iget v0, p0, Lk0/s;->f:I

    aget-object v1, p3, p2

    aget v1, v1, v3

    if-ne v0, v1, :cond_e

    if-eqz v0, :cond_f

    .line 58
    iput p2, p0, Lk0/s;->e:I

    goto :goto_5

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    and-int/2addr p1, v2

    if-ne p1, v4, :cond_10

    .line 59
    array-length p1, p3

    if-ge p2, p1, :cond_12

    .line 60
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_10
    if-nez p1, :cond_12

    .line 61
    iget p1, p0, Lk0/s;->e:I

    array-length p2, p3

    if-ge p1, p2, :cond_11

    if-eq p1, v2, :cond_11

    .line 62
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 63
    :cond_11
    iput v2, p0, Lk0/s;->e:I

    :cond_12
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/s;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/s;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/s;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x75

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
    .locals 2

    const/16 p3, 0x64

    const/4 p4, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x65

    if-eq p1, p3, :cond_1

    const/16 p3, 0x3ed

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v1}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Lk0/s;->f3(I)V

    goto :goto_0

    :cond_1
    new-array p1, p4, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p2, v1}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, p4, [I

    const/16 p3, 0xe3

    aput p3, p1, v0

    const/16 p3, 0x90

    aput p3, p1, v1

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    const/16 p4, 0x33

    aput p4, p1, p3

    const/4 p3, 0x4

    .line 5
    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x33
        0x3
    .end array-data
.end method

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xf

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public final f3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/s;->l:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    const/16 p1, 0x3f5

    new-array v0, v1, [I

    .line 5
    sget v2, Lk0/s;->l:I

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p1, p0, Lk0/s;->c:Lo1/g0;

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/s;->l:I

    if-eq p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lk0/s;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x40
        0x2
    .end array-data
.end method
