.class public Lk0/xf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/xf;->d:I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 3
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/xf;->e:[[I

    .line 4
    new-instance v0, Lk0/xf$a;

    invoke-direct {v0, p0}, Lk0/xf$a;-><init>(Lk0/xf;)V

    iput-object v0, p0, Lk0/xf;->f:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x13
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x1a
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

    const/4 v1, 0x0

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
    iget-object v0, p0, Lk0/xf;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/xf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/xf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, -0x10

    const/4 v2, 0x2

    if-eq v0, v1, :cond_d

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v0, p2, 0x2

    .line 2
    aget-byte v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v4, p1, v3

    add-int/lit8 v5, p2, 0x5

    .line 5
    aget-byte v6, p1, v5

    new-array v7, v1, [I

    shr-int/lit8 v8, v0, 0x7

    and-int/2addr v8, v1

    aput v8, v7, p3

    const/16 v8, 0xa

    .line 6
    invoke-static {v8, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb

    new-array v9, v1, [I

    shr-int/lit8 v10, v0, 0x6

    and-int/2addr v10, v1

    aput v10, v9, p3

    .line 7
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x34

    new-array v9, v1, [I

    shr-int/lit8 v10, v0, 0x5

    and-int/2addr v10, v1

    aput v10, v9, p3

    .line 8
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v9, v1, [I

    shr-int/lit8 v10, v0, 0x4

    and-int/2addr v10, v1

    aput v10, v9, p3

    .line 9
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x41

    new-array v9, v1, [I

    shr-int/lit8 v10, v0, 0x3

    and-int/2addr v10, v1

    aput v10, v9, p3

    .line 10
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x10

    new-array v9, v1, [I

    shr-int/lit8 v10, v0, 0x2

    and-int/2addr v10, v1

    aput v10, v9, p3

    .line 11
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v9, v1, [I

    shr-int/lit8 v10, v0, 0x1

    and-int/2addr v10, v1

    aput v10, v9, p3

    .line 12
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xc

    new-array v9, v1, [I

    and-int/2addr v0, v1

    aput v0, v9, p3

    .line 13
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x37

    new-array v7, v1, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v1

    aput v9, v7, p3

    .line 14
    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v7, v1, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v1

    aput v9, v7, p3

    .line 15
    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v7, v1, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v1

    aput v9, v7, p3

    .line 16
    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v7, v1, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v1

    aput v9, v7, p3

    .line 17
    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v7, v1, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v7, p3

    .line 18
    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.fyt.reversetemp"

    .line 19
    invoke-static {v0, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    aget-byte v4, p1, v5

    .line 21
    aget-byte v6, p1, v3

    :cond_1
    and-int/lit16 v0, v4, 0xff

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/4 v5, -0x1

    const/16 v7, 0x1b

    if-nez v4, :cond_2

    new-array v0, v1, [I

    aput v3, v0, p3

    .line 22
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v4, v5, :cond_3

    new-array v0, v1, [I

    aput v2, v0, p3

    .line 23
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v4, v1, [I

    aput v0, v4, p3

    .line 24
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v0, v6, 0xff

    const/16 v4, 0x1c

    if-nez v6, :cond_4

    new-array v0, v1, [I

    aput v3, v0, p3

    .line 25
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    if-ne v6, v5, :cond_5

    new-array v0, v1, [I

    aput v2, v0, p3

    .line 26
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v2, v1, [I

    aput v0, v2, p3

    .line 27
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 p2, p2, 0x6

    .line 28
    aget-byte p1, p1, p2

    and-int/lit8 p2, p1, 0x7f

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    move p3, v1

    :cond_6
    if-eqz p3, :cond_7

    mul-int/2addr p2, v8

    rsub-int p1, p2, 0x3e8

    goto :goto_2

    :cond_7
    mul-int/2addr p2, v8

    add-int/lit16 p1, p2, 0x3e8

    .line 29
    :goto_2
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto :goto_5

    :cond_8
    add-int/lit8 v0, p2, 0x2

    .line 30
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x3

    .line 31
    aget-byte p1, p1, p2

    const/16 p2, 0xff

    and-int/2addr v0, p2

    .line 32
    iput v0, p0, Lk0/xf;->c:I

    move v0, p3

    .line 33
    :goto_3
    iget-object v2, p0, Lk0/xf;->e:[[I

    array-length v3, v2

    if-ge v0, v3, :cond_a

    .line 34
    iget v3, p0, Lk0/xf;->c:I

    aget-object v4, v2, v0

    aget v4, v4, p3

    if-ne v3, v4, :cond_9

    if-eqz v3, :cond_a

    .line 35
    iput v0, p0, Lk0/xf;->b:I

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    and-int/2addr p1, p2

    if-ne p1, v1, :cond_b

    .line 36
    array-length p1, v2

    if-ge v0, p1, :cond_e

    .line 37
    aget-object p1, v2, v0

    aget p1, p1, v1

    invoke-static {p1, p3}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_b
    if-nez p1, :cond_e

    .line 38
    iget p1, p0, Lk0/xf;->b:I

    array-length p3, v2

    if-ge p1, p3, :cond_c

    if-eq p1, p2, :cond_c

    .line 39
    aget-object p1, v2, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    .line 40
    :cond_c
    iput p2, p0, Lk0/xf;->b:I

    goto :goto_5

    .line 41
    :cond_d
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_e
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/xf;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/xf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/xf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
