.class public Lk0/op;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/op;->c:I

    const/16 v1, 0xd

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

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/op;->d:[[I

    .line 4
    iput v0, p0, Lk0/op;->e:I

    .line 5
    new-instance v0, Lk0/op$a;

    invoke-direct {v0, p0}, Lk0/op$a;-><init>(Lk0/op;)V

    iput-object v0, p0, Lk0/op;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/op$b;

    invoke-direct {v0, p0}, Lk0/op$b;-><init>(Lk0/op;)V

    iput-object v0, p0, Lk0/op;->g:Ljava/lang/Runnable;

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x19
        0xd
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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/op;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->b:I

    .line 7
    iput v1, v0, Lk0/mt;->c:I

    .line 8
    iput v1, v0, Lk0/mt;->d:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->h:I

    .line 11
    iput v1, v0, Lk0/mt;->p:I

    return-void
.end method

.method public U2([BII)V
    .locals 6

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    const/16 p1, 0x1e0

    invoke-static {p3, v0, v3, p1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_4

    :cond_3
    add-int/2addr p2, v2

    .line 4
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 5
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 6
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 7
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x6

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 8
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x7

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 9
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v3

    const/4 p3, 0x4

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v3

    .line 11
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v4

    aput p1, p2, v3

    const/4 p1, 0x5

    .line 12
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_5
    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 14
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr p3, p2

    .line 15
    iput p3, p0, Lk0/op;->c:I

    move p3, v3

    .line 16
    :goto_2
    iget-object v0, p0, Lk0/op;->d:[[I

    array-length v1, v0

    if-ge p3, v1, :cond_7

    .line 17
    iget v1, p0, Lk0/op;->c:I

    aget-object v2, v0, p3

    aget v2, v2, v3

    if-ne v1, v2, :cond_6

    if-eqz v1, :cond_7

    .line 18
    iput p3, p0, Lk0/op;->b:I

    goto :goto_3

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    and-int/2addr p1, p2

    if-ne p1, v4, :cond_8

    .line 19
    array-length p1, v0

    if-ge p3, p1, :cond_a

    .line 20
    aget-object p1, v0, p3

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_8
    if-nez p1, :cond_a

    .line 21
    iget p1, p0, Lk0/op;->b:I

    array-length p3, v0

    if-ge p1, p3, :cond_9

    if-eq p1, p2, :cond_9

    .line 22
    aget-object p1, v0, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 23
    :cond_9
    iput p2, p0, Lk0/op;->b:I

    :cond_a
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/op;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/op;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
