.class public Lk0/gk;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/gk;->c:I

    const/16 v0, 0xb

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/gk;->d:[[I

    .line 4
    iput v3, p0, Lk0/gk;->e:I

    .line 5
    new-instance v0, Lk0/gk$a;

    invoke-direct {v0, p0}, Lk0/gk$a;-><init>(Lk0/gk;)V

    iput-object v0, p0, Lk0/gk;->f:Ljava/lang/Runnable;

    .line 6
    iput v3, p0, Lk0/gk;->g:I

    .line 7
    new-instance v0, Lk0/gk$b;

    invoke-direct {v0, p0}, Lk0/gk$b;-><init>(Lk0/gk;)V

    iput-object v0, p0, Lk0/gk;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/gk$c;

    invoke-direct {v0, p0}, Lk0/gk$c;-><init>(Lk0/gk;)V

    iput-object v0, p0, Lk0/gk;->i:Ljava/lang/Runnable;

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
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/gk;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/gk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/gk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 9

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_a

    const/16 p3, 0x11

    const/4 v1, 0x3

    const/16 v3, 0x12

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, p3, :cond_2

    if-eq v0, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p3, 0x4

    add-int/2addr p2, p3

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 4
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 5
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 6
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 7
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 8
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v6

    aput v0, p2, v5

    .line 9
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v6, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v6

    aput p1, p2, v5

    .line 10
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v6

    iput p3, p0, Lk0/gk;->e:I

    add-int/lit8 p3, p2, 0x4

    .line 12
    aget-byte p3, p1, p3

    const/16 v0, 0xff

    and-int/2addr p3, v0

    .line 13
    iput p3, p0, Lk0/gk;->c:I

    move p3, v5

    .line 14
    :goto_1
    iget-object v2, p0, Lk0/gk;->d:[[I

    array-length v7, v2

    if-ge p3, v7, :cond_4

    .line 15
    iget v7, p0, Lk0/gk;->c:I

    aget-object v8, v2, p3

    aget v8, v8, v5

    if-ne v7, v8, :cond_3

    if-eqz v7, :cond_4

    .line 16
    iput p3, p0, Lk0/gk;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 17
    :cond_4
    :goto_2
    iget v7, p0, Lk0/gk;->c:I

    if-eq v7, v4, :cond_7

    if-eqz v7, :cond_5

    add-int/lit8 v1, p2, 0x5

    .line 18
    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    .line 19
    array-length v1, v2

    if-ge p3, v1, :cond_9

    .line 20
    aget-object p3, v2, p3

    aget p3, p3, v6

    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 21
    :cond_5
    iget p3, p0, Lk0/gk;->b:I

    if-eq p3, v0, :cond_6

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    if-nez v1, :cond_6

    .line 22
    aget-object p3, v2, p3

    aget p3, p3, v6

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    .line 23
    :cond_6
    iput v0, p0, Lk0/gk;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 p3, p2, 0x5

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    if-ne p3, v6, :cond_9

    .line 25
    sget p3, Lh0/c;->E:I

    if-eq p3, v1, :cond_8

    if-eq p3, v4, :cond_8

    .line 26
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    .line 27
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_8
    const/16 p3, 0x1a

    .line 28
    invoke-static {p3, v5}, Ll0/b0;->l0(II)V

    .line 29
    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    :cond_9
    :goto_3
    add-int/lit8 p3, p2, 0x9

    .line 30
    aget-byte p3, p1, p3

    and-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x8

    aget-byte p1, p1, p2

    and-int/2addr p1, v0

    const/16 p2, 0x21c

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    .line 31
    :cond_a
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gk;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/gk;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/gk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/gk;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x7

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
