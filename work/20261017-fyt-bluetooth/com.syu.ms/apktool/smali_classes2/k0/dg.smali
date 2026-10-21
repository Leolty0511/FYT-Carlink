.class public Lk0/dg;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:B

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/dg;->c:I

    const/16 v1, 0x9

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

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/dg;->d:[[I

    .line 4
    iput-byte v0, p0, Lk0/dg;->e:B

    .line 5
    new-instance v0, Lk0/dg$a;

    invoke-direct {v0, p0}, Lk0/dg$a;-><init>(Lk0/dg;)V

    iput-object v0, p0, Lk0/dg;->f:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x24
        0x12
    .end array-data
.end method

.method public static synthetic a3(Lk0/dg;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/dg;->f:Ljava/lang/Runnable;

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

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->e:I

    .line 6
    iput v1, v0, Lk0/mt;->f:I

    .line 7
    iput v1, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->j:I

    .line 9
    iput v1, v0, Lk0/mt;->o:I

    .line 10
    iput v1, v0, Lk0/mt;->i:I

    .line 11
    iput v2, v0, Lk0/mt;->q:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_9

    if-eq v2, v3, :cond_3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x2e2c

    if-eqz v3, :cond_2

    add-int/lit8 v3, p2, 0x2

    .line 4
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    const v2, 0x8000

    invoke-static {v3, v1, v2, v5, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, p2, 0x2

    .line 5
    aget-byte v3, v1, v3

    aget-byte v1, v1, v2

    invoke-static {v3, v1, v6, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 6
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 7
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x4

    .line 8
    aget-byte v9, v1, v8

    add-int/lit8 v10, p2, 0x5

    .line 9
    aget-byte v11, v1, v10

    add-int/lit8 v12, p2, 0x6

    .line 10
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x8

    .line 11
    aget-byte v13, v1, v13

    const/16 v14, 0x15

    new-array v15, v6, [I

    shr-int/lit8 v16, v2, 0x0

    and-int/lit8 v16, v16, 0xf

    aput v16, v15, v5

    .line 12
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x10

    new-array v15, v6, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v5

    .line 13
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x41

    new-array v15, v6, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v5

    .line 14
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0xa

    new-array v15, v6, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    aput v2, v15, v5

    .line 15
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v14, v6, [I

    shr-int/lit8 v15, v7, 0x0

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 16
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v14, v6, [I

    shr-int/lit8 v16, v7, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v5

    .line 17
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v14, v6, [I

    shr-int/lit8 v16, v7, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v5

    .line 18
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v14, v6, [I

    aput v15, v14, v5

    .line 19
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v14, v6, [I

    shr-int/lit8 v15, v7, 0x6

    and-int/2addr v15, v6

    aput v15, v14, v5

    .line 20
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v14, v6, [I

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v14, v5

    .line 21
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 22
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    aget-byte v2, v1, v10

    and-int/lit16 v9, v2, 0xff

    .line 24
    aget-byte v1, v1, v8

    and-int/lit16 v11, v1, 0xff

    :cond_4
    and-int/lit16 v1, v9, 0xff

    const/4 v2, -0x3

    const/4 v4, -0x2

    const/16 v7, 0x1f

    const/16 v8, 0x1b

    if-nez v9, :cond_5

    new-array v1, v6, [I

    aput v4, v1, v5

    .line 25
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    if-ne v9, v7, :cond_6

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 26
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_6
    new-array v9, v6, [I

    aput v1, v9, v5

    .line 27
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v1, v11, 0xff

    const/16 v8, 0x1c

    if-nez v11, :cond_7

    new-array v1, v6, [I

    aput v4, v1, v5

    .line 28
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    if-ne v11, v7, :cond_8

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 29
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v2, v6, [I

    aput v1, v2, v5

    .line 30
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0xc

    new-array v2, v6, [I

    shr-int/lit8 v4, v12, 0x0

    and-int/2addr v3, v4

    aput v3, v2, v5

    .line 31
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v6, [I

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 32
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 34
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 35
    iput v2, v0, Lk0/dg;->c:I

    move v2, v5

    .line 36
    :goto_2
    iget-object v3, v0, Lk0/dg;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_b

    .line 37
    iget v7, v0, Lk0/dg;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_a

    if-eqz v7, :cond_b

    .line 38
    iput v2, v0, Lk0/dg;->b:I

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    and-int/2addr v1, v4

    if-ne v1, v6, :cond_c

    .line 39
    array-length v1, v3

    if-ge v2, v1, :cond_e

    .line 40
    iget-byte v1, v0, Lk0/dg;->e:B

    if-nez v1, :cond_e

    add-int/2addr v1, v6

    int-to-byte v1, v1

    .line 41
    iput-byte v1, v0, Lk0/dg;->e:B

    .line 42
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 43
    iget-object v1, v0, Lk0/dg;->f:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_c
    if-nez v1, :cond_e

    .line 44
    iget v1, v0, Lk0/dg;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_d

    if-eq v1, v4, :cond_d

    .line 45
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 46
    iget-object v1, v0, Lk0/dg;->f:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 47
    iput-byte v5, v0, Lk0/dg;->e:B

    .line 48
    :cond_d
    iput v4, v0, Lk0/dg;->b:I

    :cond_e
    :goto_4
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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x71

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
