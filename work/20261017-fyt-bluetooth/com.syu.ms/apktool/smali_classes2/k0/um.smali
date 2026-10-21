.class public Lk0/um;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/um;->c:I

    const/16 v1, 0x9

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
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

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/um;->d:[[I

    .line 4
    new-instance v0, Lk0/um$a;

    invoke-direct {v0, p0}, Lk0/um$a;-><init>(Lk0/um;)V

    iput-object v0, p0, Lk0/um;->e:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data
.end method

.method public static a3()V
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 3
    :cond_0
    sget v0, Lw0/d;->h:I

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    const v3, 0x10002

    if-gt v0, v3, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    const/16 v3, 0x8

    new-array v5, v3, [I

    const/16 v6, 0xe3

    aput v6, v5, v4

    const/16 v4, 0xc0

    aput v4, v5, v2

    const/4 v4, 0x2

    aput v1, v5, v4

    const/4 v4, 0x3

    aput v2, v5, v4

    const/4 v4, 0x4

    aput v2, v5, v4

    aput v0, v5, v1

    const/4 v0, 0x6

    .line 4
    sget v1, Lw0/d;->i:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v5, v0

    const/4 v0, 0x7

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v5, v0

    invoke-static {v5}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x2
        0xff
        0x0
    .end array-data
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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->i:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v0, p0, Lk0/um;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    const/4 v6, 0x2

    if-eq v0, v1, :cond_5

    const/16 p3, 0x7d

    const/4 v1, 0x4

    if-eq v0, p3, :cond_3

    const/16 p3, 0x41

    if-eq v0, p3, :cond_1

    const/16 p3, 0x42

    if-eq v0, p3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p3, 0x7

    new-array v0, v5, [I

    add-int/2addr p2, v6

    .line 2
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v0, v4

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_1
    add-int/2addr p2, v6

    .line 3
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 4
    invoke-static {p2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 5
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 6
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 7
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 8
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 9
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, v2

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 10
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 p3, p2, 0x2

    .line 11
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    if-eq p3, v5, :cond_4

    goto/16 :goto_3

    :cond_4
    add-int/2addr p2, v2

    .line 12
    aget-byte p3, p1, p2

    shr-int/2addr p3, v2

    and-int/2addr p3, v5

    aget-byte v0, p1, p2

    shr-int/2addr v0, v1

    and-int/2addr v0, v5

    invoke-static {p3, v0, v4}, Ll0/c0;->a(III)V

    .line 13
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v6, [I

    const/16 v2, 0xb

    aput v2, v1, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, v1, v5

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_3

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v6

    sub-int/2addr p3, v6

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 15
    aget-byte p3, p1, p3

    add-int/2addr p2, v2

    .line 16
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 17
    iput p2, p0, Lk0/um;->c:I

    move p2, v4

    .line 18
    :goto_1
    iget-object p3, p0, Lk0/um;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_8

    .line 19
    iget v0, p0, Lk0/um;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v4

    if-ne v0, v1, :cond_7

    if-eqz v0, :cond_8

    .line 20
    iput p2, p0, Lk0/um;->b:I

    goto :goto_2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    and-int/2addr p1, v3

    if-ne p1, v5, :cond_9

    .line 21
    array-length p1, p3

    if-ge p2, p1, :cond_b

    .line 22
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_9
    if-nez p1, :cond_b

    .line 23
    iget p1, p0, Lk0/um;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v3, :cond_a

    .line 24
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 25
    :cond_a
    iput v3, p0, Lk0/um;->b:I

    :cond_b
    :goto_3
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/um;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8

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
    .locals 4

    const/4 p3, 0x3

    const/4 p4, 0x2

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x70

    aput v0, p1, v3

    aput v3, p1, p4

    .line 1
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    aput v0, p1, v2

    const/16 v0, -0x7d

    aput v0, p1, v3

    aput v3, p1, p4

    .line 2
    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
