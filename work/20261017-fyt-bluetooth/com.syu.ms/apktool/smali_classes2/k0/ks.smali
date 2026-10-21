.class public Lk0/ks;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ks;->c:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    const/4 v4, 0x1

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x3

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v4, 0x4

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    const/4 v4, 0x5

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v4, 0x6

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v2, v3

    iput-object v2, p0, Lk0/ks;->d:[[I

    .line 4
    iput-byte v1, p0, Lk0/ks;->e:B

    .line 5
    new-instance v0, Lk0/ks$a;

    invoke-direct {v0, p0}, Lk0/ks$a;-><init>(Lk0/ks;)V

    iput-object v0, p0, Lk0/ks;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ks$b;

    invoke-direct {v0, p0}, Lk0/ks$b;-><init>(Lk0/ks;)V

    iput-object v0, p0, Lk0/ks;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/ks$c;

    invoke-direct {v0, p0}, Lk0/ks$c;-><init>(Lk0/ks;)V

    iput-object v0, p0, Lk0/ks;->h:Ljava/lang/Runnable;

    return-void

    nop

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x12
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
        0x10
        0xd
    .end array-data
.end method

.method public static synthetic a3(Lk0/ks;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ks;->g:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/ks;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ks;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->b:I

    .line 9
    iput v1, v0, Lk0/mt;->c:I

    .line 10
    iput v1, v0, Lk0/mt;->d:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    iput v1, v0, Lk0/mt;->q:I

    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/16 v2, 0x20

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x24

    if-eq v0, v2, :cond_b

    const/16 v2, 0x30

    if-eq v0, v2, :cond_5

    const/16 v2, 0x51

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    if-eq p3, v7, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 4
    invoke-static {p3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_3

    add-int/2addr p2, v4

    .line 5
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v7

    invoke-static {p3, p1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_4

    :cond_3
    add-int/2addr p2, v4

    .line 6
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v7

    invoke-static {p3, p1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_4

    :cond_4
    new-array p3, v7, [I

    add-int/lit8 v0, p2, 0x2

    .line 7
    aget-byte v1, p1, v0

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, p3, v6

    const/4 v1, 0x7

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x8

    new-array v1, v7, [I

    .line 8
    aget-byte v0, p1, v0

    shr-int/2addr v0, v6

    and-int/2addr v0, v4

    aput v0, v1, v6

    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x9

    new-array v0, v7, [I

    add-int/2addr p2, v4

    .line 9
    aget-byte v1, p1, p2

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xa

    new-array v0, v7, [I

    .line 10
    aget-byte v1, p1, p2

    shr-int/2addr v1, v5

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v0, v7, [I

    .line 11
    aget-byte v1, p1, p2

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v0, v7, [I

    .line 12
    aget-byte p1, p1, p2

    shr-int/2addr p1, v6

    and-int/2addr p1, v7

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_5
    add-int/lit8 p3, p2, 0x3

    .line 13
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    const/16 p2, 0x1900

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_4

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 14
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 15
    aget-byte v0, p1, v0

    and-int/2addr p3, v1

    .line 16
    iput p3, p0, Lk0/ks;->c:I

    move p3, v6

    .line 17
    :goto_0
    iget-object v2, p0, Lk0/ks;->d:[[I

    array-length v8, v2

    if-ge p3, v8, :cond_8

    .line 18
    iget v8, p0, Lk0/ks;->c:I

    aget-object v9, v2, p3

    aget v9, v9, v6

    if-ne v8, v9, :cond_7

    if-eqz v8, :cond_8

    .line 19
    iput p3, p0, Lk0/ks;->b:I

    goto :goto_1

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    and-int/2addr v0, v1

    if-ne v0, v7, :cond_9

    .line 20
    array-length v0, v2

    if-ge p3, v0, :cond_b

    .line 21
    aget-object p3, v2, p3

    aget p3, p3, v7

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_9
    if-nez v0, :cond_b

    .line 22
    iget p3, p0, Lk0/ks;->b:I

    array-length v0, v2

    if-ge p3, v0, :cond_a

    if-eq p3, v1, :cond_a

    .line 23
    aget-object p3, v2, p3

    aget p3, p3, v7

    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    .line 24
    :cond_a
    iput v1, p0, Lk0/ks;->b:I

    :cond_b
    :goto_2
    add-int/2addr p2, v5

    .line 25
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 26
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_c

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 27
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 28
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 29
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 30
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 31
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 32
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 33
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v7

    aput p1, p2, v6

    const/4 p1, 0x5

    .line 34
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ks;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ks;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ks;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xd

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
    .locals 5

    const/4 p3, 0x4

    const/4 p4, 0x3

    const/16 v0, 0xe3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lt p1, v4, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x83

    aput v0, p1, v3

    aput v4, p1, v4

    .line 2
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-lt p1, v4, :cond_2

    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, 0x90

    aput v0, p1, v3

    aput v4, p1, v4

    .line 4
    aget v0, p2, v2

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
