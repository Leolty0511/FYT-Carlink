.class public Lk0/al;
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

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/al;->c:I

    const/16 v0, 0xe

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

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/al;->d:[[I

    .line 4
    iput v3, p0, Lk0/al;->e:I

    .line 5
    new-instance v0, Lk0/al$a;

    invoke-direct {v0, p0}, Lk0/al$a;-><init>(Lk0/al;)V

    iput-object v0, p0, Lk0/al;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/al$b;

    invoke-direct {v0, p0}, Lk0/al$b;-><init>(Lk0/al;)V

    iput-object v0, p0, Lk0/al;->g:Ljava/lang/Runnable;

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
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_c
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
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
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->q:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->h:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/al;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Ll0/h0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    add-int/lit8 v0, p2, 0x1

    .line 1
    aget-byte v0, p1, v0

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_9

    const/16 p3, 0x11

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, p3, :cond_2

    const/16 p3, 0x14

    if-eq v0, p3, :cond_1

    const/16 p3, 0x41

    if-eq v0, p3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->A1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 3
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->A1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 4
    aget-byte p3, p1, p3

    and-int/2addr p3, v5

    invoke-static {p3}, Ll0/c0;->A1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v1

    .line 5
    aget-byte p1, p1, p2

    and-int/2addr p1, v5

    invoke-static {p1}, Ll0/c0;->A1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_4

    :cond_1
    const/16 p3, 0x63

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x2

    .line 6
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x64

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x3

    .line 7
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x65

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x4

    .line 8
    aget-byte v1, p1, v1

    and-int/2addr v1, v5

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x66

    new-array v0, v7, [I

    add-int/lit8 v1, p2, 0x5

    .line 9
    aget-byte v5, p1, v1

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x67

    new-array v0, v7, [I

    .line 10
    aget-byte v5, p1, v1

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v7, [I

    .line 11
    aget-byte v5, p1, v1

    shr-int/lit8 v2, v5, 0x2

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v7, [I

    .line 12
    aget-byte v2, p1, v1

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v7, [I

    .line 13
    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/2addr v2, v4

    aput v2, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v7, [I

    .line 14
    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v4

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v7, [I

    add-int/lit8 p2, p2, 0x6

    .line 15
    aget-byte v1, p1, p2

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v7, [I

    .line 16
    aget-byte p1, p1, p2

    shr-int/2addr p1, v7

    and-int/2addr p1, v7

    aput p1, v0, v6

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_2
    add-int/lit8 p3, p2, 0x4

    .line 17
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x5

    .line 18
    aget-byte v0, p1, v0

    and-int/2addr p3, v5

    .line 19
    iput p3, p0, Lk0/al;->c:I

    move p3, v6

    .line 20
    :goto_0
    iget-object v8, p0, Lk0/al;->d:[[I

    array-length v9, v8

    if-ge p3, v9, :cond_4

    .line 21
    iget v9, p0, Lk0/al;->c:I

    aget-object v10, v8, p3

    aget v10, v10, v6

    if-ne v9, v10, :cond_3

    if-eqz v9, :cond_4

    .line 22
    iput p3, p0, Lk0/al;->b:I

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    and-int/2addr v0, v5

    if-ne v0, v7, :cond_5

    .line 23
    array-length v0, v8

    if-ge p3, v0, :cond_7

    .line 24
    aget-object p3, v8, p3

    aget p3, p3, v7

    invoke-static {p3, v6}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_7

    .line 25
    iget p3, p0, Lk0/al;->b:I

    array-length v0, v8

    if-ge p3, v0, :cond_6

    if-eq p3, v5, :cond_6

    .line 26
    aget-object p3, v8, p3

    aget p3, p3, v7

    invoke-static {p3, v7}, Ll0/b0;->l0(II)V

    .line 27
    :cond_6
    iput v5, p0, Lk0/al;->b:I

    :cond_7
    :goto_2
    add-int/lit8 p3, p2, 0x8

    .line 28
    aget-byte v0, p1, p3

    const-string v8, "persist.syu.reversefrontdoor"

    .line 29
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_8

    new-array v8, v7, [I

    shr-int/lit8 v9, v0, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 30
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 31
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v8, v7, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 32
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v7, [I

    shr-int/lit8 v9, v0, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 33
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v8, v7, [I

    shr-int/lit8 v9, v0, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v6

    .line 34
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v8, v0, 0x5

    and-int/2addr v8, v7

    aput v8, v4, v6

    .line 35
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v0, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 36
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/2addr v0, v2

    and-int/2addr v0, v7

    aput v0, v1, v6

    .line 37
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p2, p2, 0x9

    .line 38
    aget-byte p2, p1, p2

    and-int/2addr p2, v5

    aget-byte p1, p1, p3

    and-int/2addr p1, v5

    const/16 p3, 0x21c

    invoke-static {p2, p1, v7, p3}, Lk0/qt;->i(IIZI)V

    goto :goto_4

    .line 39
    :cond_9
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

    iget-object v1, p0, Lk0/al;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/al;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/h0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x6e

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
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x3

    aput v0, p1, p3

    const/16 v1, 0x6a

    const/4 v2, 0x2

    aput v1, p1, v2

    .line 1
    aget p4, p2, p4

    aput p4, p1, v0

    const/4 p4, 0x4

    aget p3, p2, p3

    aput p3, p1, p4

    const/4 p3, 0x5

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
