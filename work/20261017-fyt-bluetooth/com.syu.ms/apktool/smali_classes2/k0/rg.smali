.class public Lk0/rg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/rg;->c:I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/rg;->d:[[I

    .line 4
    iput v0, p0, Lk0/rg;->e:I

    .line 5
    new-instance v0, Lk0/rg$a;

    invoke-direct {v0, p0}, Lk0/rg$a;-><init>(Lk0/rg;)V

    iput-object v0, p0, Lk0/rg;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/rg$b;

    invoke-direct {v0, p0}, Lk0/rg$b;-><init>(Lk0/rg;)V

    iput-object v0, p0, Lk0/rg;->g:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lk0/rg;->h:I

    .line 8
    iput v0, p0, Lk0/rg;->i:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lk0/rg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/rg;->h:I

    return p0
.end method

.method public static synthetic b3(Lk0/rg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/rg;->h:I

    return p1
.end method

.method public static synthetic c3(Lk0/rg;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/rg;->i:I

    return p0
.end method

.method public static synthetic d3(Lk0/rg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/rg;->i:I

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->b:I

    .line 11
    iget-object v0, p0, Lk0/rg;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x21

    const/4 v6, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v0, 0x408

    new-array v1, v5, [I

    add-int/lit8 v2, p2, 0x4

    .line 2
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v5, 0xff00

    and-int/2addr v2, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/2addr v3, v5

    or-int/2addr v2, v3

    aput v2, v1, v4

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    add-int/2addr p2, v2

    .line 4
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    const-string p2, "persist.syu.reversefrontdoor"

    .line 5
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 6
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 7
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 8
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 9
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x4

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 11
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 12
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 13
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_5

    :cond_4
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 15
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 16
    aget-byte v2, p1, v1

    add-int/lit8 v7, p2, 0x5

    .line 17
    aget-byte v8, p1, v7

    add-int/lit8 p2, p2, 0x6

    .line 18
    aget-byte p2, p1, p2

    const/16 v9, 0xa

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x7

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 19
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xb

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x6

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 20
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xc

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x5

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 21
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x1a

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x4

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 22
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xd

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x3

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 23
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xe

    new-array v10, v5, [I

    shr-int/lit8 v11, p3, 0x2

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 24
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x41

    new-array v10, v5, [I

    shr-int/2addr p3, v4

    and-int/2addr p3, v5

    aput p3, v10, v4

    .line 25
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v9, v5, [I

    shr-int/lit8 v10, v0, 0x7

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 26
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x16

    new-array v9, v5, [I

    aput v10, v9, v4

    .line 27
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v9, v5, [I

    shr-int/lit8 v10, v0, 0x6

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 28
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v9, v5, [I

    shr-int/lit8 v10, v0, 0x5

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 29
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x17

    new-array v9, v5, [I

    shr-int/lit8 v10, v0, 0x4

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 30
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x18

    new-array v9, v5, [I

    shr-int/lit8 v10, v0, 0x3

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 31
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v9, v5, [I

    shr-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x7

    aput v0, v9, v4

    .line 32
    invoke-static {p3, v9}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 33
    invoke-static {p3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 34
    aget-byte p3, p1, v7

    and-int/lit16 v2, p3, 0xff

    .line 35
    aget-byte p1, p1, v1

    and-int/lit16 v8, p1, 0xff

    :cond_5
    and-int/lit16 p1, v2, 0xff

    const/4 p3, -0x3

    const/4 v0, -0x2

    const/16 v1, 0x1e

    const/16 v3, 0x1b

    if-nez v2, :cond_6

    new-array p1, v5, [I

    aput v0, p1, v4

    .line 36
    invoke-static {v3, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    if-ne v2, v1, :cond_7

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 37
    invoke-static {v3, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v2, v5, [I

    aput p1, v2, v4

    .line 38
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    and-int/lit16 p1, v8, 0xff

    const/16 v2, 0x1c

    if-nez v8, :cond_8

    new-array p1, v5, [I

    aput v0, p1, v4

    .line 39
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    if-ne v8, v1, :cond_9

    new-array p1, v5, [I

    aput p3, p1, v4

    .line 40
    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array p3, v5, [I

    aput p1, p3, v4

    .line 41
    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 p1, 0x10

    new-array p3, v5, [I

    shr-int/2addr p2, v6

    and-int/2addr p2, v5

    aput p2, p3, v4

    .line 42
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 43
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 44
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 45
    iput p2, p0, Lk0/rg;->c:I

    move p2, v4

    .line 46
    :goto_3
    iget-object p3, p0, Lk0/rg;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_c

    .line 47
    iget v0, p0, Lk0/rg;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_b

    if-eqz v0, :cond_c

    .line 48
    iput p2, p0, Lk0/rg;->b:I

    goto :goto_4

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_d

    .line 49
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 50
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_d
    if-nez p1, :cond_f

    .line 51
    iget p1, p0, Lk0/rg;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_e

    if-eq p1, v3, :cond_e

    .line 52
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 53
    :cond_e
    iput v3, p0, Lk0/rg;->b:I

    :cond_f
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/rg;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0xa0

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
