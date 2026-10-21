.class public Lk0/ai;
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
    iput v0, p0, Lk0/ai;->c:I

    const/16 v1, 0xf

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

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    const/16 v3, 0xb

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    const/16 v3, 0xc

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    const/16 v3, 0xd

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v2, 0xe

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/ai;->d:[[I

    .line 4
    new-instance v0, Lk0/ai$a;

    invoke-direct {v0, p0}, Lk0/ai$a;-><init>(Lk0/ai;)V

    iput-object v0, p0, Lk0/ai;->e:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
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
        0x13
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x15
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x20
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x21
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x22
        0x12
    .end array-data

    :array_c
    .array-data 4
        0x23
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x24
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x25
        0x15
    .end array-data
.end method


# virtual methods
.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lk0/ai;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_13

    const/16 v4, 0x7f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/16 v6, 0x65

    if-eq v0, v6, :cond_1

    if-eq v0, v4, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    const/16 p3, 0x408

    new-array v0, v3, [I

    add-int/lit8 v4, p2, 0x2

    .line 3
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p1, v6

    and-int/2addr v6, v1

    or-int/2addr v4, v6

    aput v4, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x407

    new-array v0, v3, [I

    add-int/lit8 v3, p2, 0x4

    .line 4
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v5

    add-int/lit8 p2, p2, 0x5

    aget-byte p1, p1, p2

    and-int/2addr p1, v1

    or-int/2addr p1, v3

    aput p1, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_7

    :cond_2
    new-array p3, v3, [I

    add-int/lit8 v0, p2, 0x2

    .line 5
    aget-byte v6, p1, v0

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v3

    aput v6, p3, v2

    const/16 v6, 0xa

    invoke-static {v6, p3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xb

    new-array v7, v3, [I

    .line 6
    aget-byte v8, p1, v0

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v3

    aput v8, v7, v2

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x34

    new-array v7, v3, [I

    .line 7
    aget-byte v8, p1, v0

    shr-int/lit8 v8, v8, 0x5

    and-int/2addr v8, v3

    aput v8, v7, v2

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xd

    new-array v7, v3, [I

    .line 8
    aget-byte v8, p1, v0

    shr-int/lit8 v8, v8, 0x4

    and-int/2addr v8, v3

    aput v8, v7, v2

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x41

    new-array v7, v3, [I

    .line 9
    aget-byte v8, p1, v0

    shr-int/lit8 v8, v8, 0x3

    and-int/2addr v8, v3

    aput v8, v7, v2

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x10

    new-array v7, v3, [I

    .line 10
    aget-byte v8, p1, v0

    shr-int/lit8 v5, v8, 0x2

    and-int/2addr v5, v3

    aput v5, v7, v2

    invoke-static {p3, v7}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xe

    new-array v5, v3, [I

    .line 11
    aget-byte v7, p1, v0

    shr-int/2addr v7, v3

    and-int/2addr v7, v3

    aput v7, v5, v2

    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0xc

    new-array v5, v3, [I

    .line 12
    aget-byte v0, p1, v0

    shr-int/2addr v0, v2

    and-int/2addr v0, v3

    aput v0, v5, v2

    invoke-static {p3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x12

    new-array v0, v3, [I

    add-int/lit8 v5, p2, 0x3

    .line 13
    aget-byte v7, p1, v5

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v3

    aput v7, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v0, v3, [I

    .line 14
    aget-byte v7, p1, v5

    shr-int/lit8 v7, v7, 0x5

    and-int/2addr v7, v3

    aput v7, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v3, [I

    .line 15
    aget-byte v7, p1, v5

    shr-int/lit8 v7, v7, 0x4

    and-int/2addr v7, v3

    aput v7, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x15

    new-array v0, v3, [I

    .line 16
    aget-byte v7, p1, v5

    and-int/lit8 v7, v7, 0xf

    aput v7, v0, v2

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 17
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/4 v0, -0x3

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    if-eqz p3, :cond_9

    add-int/lit8 p3, p2, 0x4

    .line 18
    aget-byte v11, p1, p3

    and-int/2addr v11, v1

    if-eqz v11, :cond_5

    if-eq v11, v4, :cond_4

    if-eq v11, v1, :cond_3

    new-array v11, v3, [I

    .line 19
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    aput p3, v11, v2

    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array p3, v3, [I

    aput v0, p3, v2

    .line 20
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array p3, v3, [I

    aput v7, p3, v2

    .line 21
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array p3, v3, [I

    aput v8, p3, v2

    .line 22
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 p3, p2, 0x5

    .line 23
    aget-byte v9, p1, p3

    and-int/2addr v9, v1

    if-eqz v9, :cond_8

    if-eq v9, v4, :cond_7

    if-eq v9, v1, :cond_6

    new-array v0, v3, [I

    .line 24
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    aput p3, v0, v2

    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_6
    new-array p3, v3, [I

    aput v0, p3, v2

    .line 25
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :cond_7
    new-array p3, v3, [I

    aput v7, p3, v2

    .line 26
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_8
    new-array p3, v3, [I

    aput v8, p3, v2

    .line 27
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    add-int/lit8 p3, p2, 0x4

    .line 28
    aget-byte v11, p1, p3

    and-int/2addr v11, v1

    if-eqz v11, :cond_c

    if-eq v11, v4, :cond_b

    if-eq v11, v1, :cond_a

    new-array v11, v3, [I

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    aput p3, v11, v2

    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_a
    new-array p3, v3, [I

    aput v0, p3, v2

    .line 30
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_b
    new-array p3, v3, [I

    aput v7, p3, v2

    .line 31
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_c
    new-array p3, v3, [I

    aput v8, p3, v2

    .line 32
    invoke-static {v10, p3}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 p3, p2, 0x5

    .line 33
    aget-byte v10, p1, p3

    and-int/2addr v10, v1

    if-eqz v10, :cond_f

    if-eq v10, v4, :cond_e

    if-eq v10, v1, :cond_d

    new-array v0, v3, [I

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v1

    aput p3, v0, v2

    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array p3, v3, [I

    aput v0, p3, v2

    .line 35
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    new-array p3, v3, [I

    aput v7, p3, v2

    .line 36
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array p3, v3, [I

    aput v8, p3, v2

    .line 37
    invoke-static {v9, p3}, Lk0/qt;->y0(I[I)V

    .line 38
    :goto_2
    aget-byte p3, p1, v5

    shr-int/lit8 p3, p3, 0x7

    and-int/2addr p3, v3

    if-ne p3, v3, :cond_12

    add-int/lit8 p2, p2, 0x6

    .line 39
    aget-byte p3, p1, p2

    and-int/2addr p3, v4

    .line 40
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0x80

    if-lez p1, :cond_10

    goto :goto_3

    :cond_10
    move v2, v3

    :goto_3
    if-eqz v2, :cond_11

    mul-int/2addr p3, v6

    add-int/lit16 p3, p3, 0x3e8

    goto :goto_4

    :cond_11
    mul-int/2addr p3, v6

    rsub-int p3, p3, 0x3e8

    .line 41
    :goto_4
    invoke-static {p3}, Lu0/d;->A3(I)V

    goto :goto_7

    .line 42
    :cond_12
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto :goto_7

    :cond_13
    add-int/lit8 p3, p2, 0x2

    .line 43
    aget-byte p3, p1, p3

    add-int/lit8 p2, p2, 0x3

    .line 44
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 45
    iput p2, p0, Lk0/ai;->c:I

    move p2, v2

    .line 46
    :goto_5
    iget-object p3, p0, Lk0/ai;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_15

    .line 47
    iget v0, p0, Lk0/ai;->c:I

    aget-object v4, p3, p2

    aget v4, v4, v2

    if-ne v0, v4, :cond_14

    if-eqz v0, :cond_15

    .line 48
    iput p2, p0, Lk0/ai;->b:I

    goto :goto_6

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_15
    :goto_6
    and-int/2addr p1, v1

    if-ne p1, v3, :cond_16

    .line 49
    array-length p1, p3

    if-ge p2, p1, :cond_16

    .line 50
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 51
    iget-object p1, p0, Lk0/ai;->d:[[I

    aget-object p1, p1, p2

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    :cond_16
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ai;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
