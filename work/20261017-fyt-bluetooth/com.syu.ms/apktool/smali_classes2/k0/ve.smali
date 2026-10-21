.class public Lk0/ve;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:[[I

.field public g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ve;->c:I

    const/4 v1, 0x7

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
    fill-array-data v4, :array_0

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v6, 0x3

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v8, 0x5

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    iput-object v2, p0, Lk0/ve;->d:[[I

    new-array v1, v1, [[I

    new-array v2, v3, [I

    .line 4
    fill-array-data v2, :array_7

    aput-object v2, v1, v0

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v9

    iput-object v1, p0, Lk0/ve;->e:[[I

    new-array v1, v9, [[I

    new-array v2, v3, [I

    .line 5
    fill-array-data v2, :array_e

    aput-object v2, v1, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    aput-object v0, v1, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    aput-object v0, v1, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    aput-object v0, v1, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    aput-object v0, v1, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    aput-object v0, v1, v8

    iput-object v1, p0, Lk0/ve;->f:[[I

    .line 6
    new-instance v0, Lk0/ve$a;

    invoke-direct {v0, p0}, Lk0/ve$a;-><init>(Lk0/ve;)V

    iput-object v0, p0, Lk0/ve;->g:Ljava/lang/Runnable;

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
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x23
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x22
    .end array-data

    :array_7
    .array-data 4
        0x3
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_a
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x8
        0x43
    .end array-data

    :array_c
    .array-data 4
        0x9
        0x44
    .end array-data

    :array_d
    .array-data 4
        0xa
        0x18
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x1d
    .end array-data

    :array_11
    .array-data 4
        0x4
        0xc
    .end array-data

    :array_12
    .array-data 4
        0x5
        0x36
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x18
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
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 10
    iput v2, v0, Lk0/mt;->f:I

    .line 11
    iput v1, v0, Lk0/mt;->g:I

    .line 12
    iput v2, v0, Lk0/mt;->o:I

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x81
        0x1
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x0

    .line 1
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_8

    const/16 v8, 0x20

    if-eq v2, v8, :cond_1

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
    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v4, v1, v2

    const/16 v8, -0x80

    if-ne v4, v8, :cond_3

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    if-ne v4, v7, :cond_3

    .line 4
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.canbus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_4

    .line 6
    :cond_2
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_4

    .line 7
    :cond_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 8
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 9
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 10
    iput v2, v0, Lk0/ve;->c:I

    move v2, v6

    .line 11
    :goto_0
    iget-object v3, v0, Lk0/ve;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 12
    iget v4, v0, Lk0/ve;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v6

    if-ne v4, v8, :cond_4

    if-eqz v4, :cond_5

    .line 13
    iput v2, v0, Lk0/ve;->b:I

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    and-int/2addr v1, v5

    if-eqz v1, :cond_6

    .line 14
    array-length v1, v3

    if-ge v2, v1, :cond_c

    .line 15
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_4

    .line 16
    :cond_6
    iget v1, v0, Lk0/ve;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_7

    if-eq v1, v5, :cond_7

    .line 17
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 18
    :cond_7
    iput v5, v0, Lk0/ve;->b:I

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v8, p2, 0x3

    .line 20
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 21
    aget-byte v9, v1, v9

    and-int/2addr v9, v5

    add-int/lit8 v10, p2, 0x5

    .line 22
    aget-byte v10, v1, v10

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x6

    .line 23
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    add-int/lit8 v12, p2, 0x7

    .line 24
    aget-byte v12, v1, v12

    and-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x8

    .line 25
    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    add-int/lit8 v14, p2, 0x9

    .line 26
    aget-byte v14, v1, v14

    and-int/2addr v14, v5

    add-int/lit8 v15, p2, 0xa

    .line 27
    aget-byte v15, v1, v15

    and-int/2addr v15, v5

    add-int/lit8 v16, p2, 0xb

    .line 28
    aget-byte v3, v1, v16

    and-int/2addr v3, v5

    add-int/lit8 v16, p2, 0xc

    .line 29
    aget-byte v4, v1, v16

    and-int/2addr v4, v5

    add-int/lit8 v16, p2, 0xd

    .line 30
    aget-byte v16, v1, v16

    add-int/lit8 v16, p2, 0xe

    .line 31
    aget-byte v1, v1, v16

    and-int/2addr v1, v5

    const/16 v5, 0x62

    new-array v0, v7, [I

    aput v2, v0, v6

    .line 32
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x64

    new-array v2, v7, [I

    mul-int/lit16 v8, v8, 0x100

    add-int/2addr v8, v9

    aput v8, v2, v6

    .line 33
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v2, v7, [I

    mul-int/lit16 v10, v10, 0x100

    add-int/2addr v10, v11

    aput v10, v2, v6

    .line 34
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v2, v7, [I

    mul-int/lit16 v12, v12, 0x100

    add-int/2addr v12, v13

    aput v12, v2, v6

    .line 35
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v2, v7, [I

    mul-int/lit16 v14, v14, 0x100

    add-int/2addr v14, v15

    aput v14, v2, v6

    .line 36
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.syu.reversefrontdoor"

    .line 37
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v7, [I

    shr-int/lit8 v2, v4, 0x6

    and-int/2addr v2, v7

    aput v2, v0, v6

    .line 38
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    shr-int/lit8 v2, v4, 0x7

    and-int/2addr v2, v7

    aput v2, v0, v6

    const/4 v2, 0x2

    .line 39
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v0, v7, [I

    shr-int/lit8 v2, v4, 0x7

    and-int/2addr v2, v7

    aput v2, v0, v6

    .line 40
    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    shr-int/lit8 v2, v4, 0x6

    and-int/2addr v2, v7

    aput v2, v0, v6

    const/4 v2, 0x2

    .line 41
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v0, v7, [I

    shr-int/lit8 v2, v4, 0x5

    and-int/2addr v2, v7

    aput v2, v0, v6

    const/4 v2, 0x4

    .line 42
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    shr-int/lit8 v2, v4, 0x4

    and-int/2addr v2, v7

    aput v2, v0, v6

    const/4 v2, 0x3

    .line 43
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    shr-int/lit8 v2, v4, 0x3

    and-int/2addr v2, v7

    aput v2, v0, v6

    const/4 v2, 0x5

    .line 44
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    const/4 v2, 0x2

    shr-int/lit8 v2, v4, 0x2

    and-int/2addr v2, v7

    aput v2, v0, v6

    .line 45
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v2, v7, [I

    aput v1, v2, v6

    .line 46
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 47
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xff

    and-int/2addr v0, v3

    const/16 v1, 0x80

    if-ge v0, v1, :cond_a

    mul-int/lit8 v0, v0, 0xa

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_3

    :cond_a
    rsub-int v0, v0, 0x100

    mul-int/lit8 v0, v0, 0xa

    rsub-int v0, v0, 0x3e8

    :goto_3
    const-string v1, "persist.fyt.temperature"

    .line 48
    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_b

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x1

    .line 49
    :cond_b
    invoke-static {v0}, Lu0/d;->B3(I)V

    :cond_c
    :goto_4
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ve;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x69

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
