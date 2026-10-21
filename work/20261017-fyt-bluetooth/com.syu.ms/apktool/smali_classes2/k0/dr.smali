.class public Lk0/dr;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:B

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/dr;->c:I

    const/16 v1, 0x8

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

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/dr;->d:[[I

    .line 4
    iput v0, p0, Lk0/dr;->e:I

    .line 5
    new-instance v0, Lk0/dr$a;

    invoke-direct {v0, p0}, Lk0/dr$a;-><init>(Lk0/dr;)V

    iput-object v0, p0, Lk0/dr;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/dr$b;

    invoke-direct {v0, p0}, Lk0/dr$b;-><init>(Lk0/dr;)V

    iput-object v0, p0, Lk0/dr;->g:Ljava/lang/Runnable;

    .line 7
    iput-byte v4, p0, Lk0/dr;->h:B

    .line 8
    new-instance v0, Lk0/dr$c;

    invoke-direct {v0, p0}, Lk0/dr$c;-><init>(Lk0/dr;)V

    iput-object v0, p0, Lk0/dr;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/dr$d;

    invoke-direct {v0, p0}, Lk0/dr$d;-><init>(Lk0/dr;)V

    iput-object v0, p0, Lk0/dr;->j:Ljava/lang/Runnable;

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
.end method

.method public static synthetic a3(Lk0/dr;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/dr;->j:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lk0/dr;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/dr;->g:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/dr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/dr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->f:I

    .line 8
    iput v1, v0, Lk0/mt;->g:I

    .line 9
    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    return-void
.end method

.method public U2([BII)V
    .locals 9

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x20

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x26

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    const/4 v8, 0x2

    if-eq v0, v1, :cond_5

    const/16 p3, 0x41

    if-eq v0, p3, :cond_2

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    if-eq p3, v7, :cond_1

    goto/16 :goto_2

    :cond_1
    add-int/2addr p2, v4

    .line 3
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v7

    aget-byte v0, p1, p2

    shr-int/2addr v0, v3

    and-int/2addr v0, v7

    invoke-static {p3, v0, v6}, Ll0/c0;->a(III)V

    .line 4
    sget-object p3, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x419

    new-array v1, v8, [I

    const/16 v2, 0xb

    aput v2, v1, v6

    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    aput p1, v1, v7

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    add-int/lit8 p3, p2, 0x2

    .line 5
    aget-byte p3, p1, p3

    if-eq p3, v7, :cond_3

    goto/16 :goto_2

    :cond_3
    add-int/2addr p2, v4

    .line 6
    aget-byte p1, p1, p2

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 7
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 8
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 9
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.syu.reversefrontdoor"

    .line 10
    invoke-static {p2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_4

    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 11
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 12
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_4
    new-array p2, v7, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v7

    aput p3, p2, v6

    .line 13
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v7, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v7

    aput p1, p2, v6

    .line 14
    invoke-static {v8, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v8

    sub-int/2addr p3, v8

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 16
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    const/16 p2, 0x2b08

    invoke-static {p3, p1, v6, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_2

    .line 17
    :cond_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_f

    add-int/lit8 p3, p2, 0x2

    .line 18
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 19
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 20
    iput p2, p0, Lk0/dr;->c:I

    move p2, v6

    .line 21
    :goto_0
    iget-object p3, p0, Lk0/dr;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 22
    iget v0, p0, Lk0/dr;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v6

    if-ne v0, v1, :cond_8

    if-eqz v0, :cond_9

    .line 23
    iput p2, p0, Lk0/dr;->b:I

    goto :goto_1

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 24
    :cond_9
    :goto_1
    iget v0, p0, Lk0/dr;->c:I

    if-eq v0, v2, :cond_c

    and-int/2addr p1, v5

    if-ne p1, v7, :cond_a

    .line 25
    array-length p1, p3

    if-ge p2, p1, :cond_f

    .line 26
    aget-object p1, p3, p2

    aget p1, p1, v7

    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_a
    if-nez p1, :cond_f

    .line 27
    iget p1, p0, Lk0/dr;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_b

    if-eq p1, v5, :cond_b

    .line 28
    aget-object p1, p3, p1

    aget p1, p1, v7

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    .line 29
    :cond_b
    iput v5, p0, Lk0/dr;->b:I

    goto :goto_2

    :cond_c
    and-int/2addr p1, v5

    if-ne p1, v7, :cond_f

    .line 30
    sget p1, Lh0/c;->E:I

    if-eq p1, v4, :cond_e

    const/16 p2, 0x12

    if-eq p1, v3, :cond_d

    if-eq p1, v2, :cond_e

    .line 31
    invoke-static {p2, v6}, Ll0/b0;->l0(II)V

    .line 32
    invoke-static {p2, v7}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 33
    :cond_d
    invoke-static {p2, v6}, Ll0/b0;->l0(II)V

    .line 34
    invoke-static {p2, v7}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_e
    const/16 p1, 0x1a

    .line 35
    invoke-static {p1, v6}, Ll0/b0;->l0(II)V

    .line 36
    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    :cond_f
    :goto_2
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/dr;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/dr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/dr;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/dr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/dr;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/dr;->j:Ljava/lang/Runnable;

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
