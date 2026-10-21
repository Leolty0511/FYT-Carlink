.class public Lk0/v4;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/v4;->c:I

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

    iput-object v1, p0, Lk0/v4;->d:[[I

    .line 4
    new-instance v0, Lk0/v4$a;

    invoke-direct {v0, p0}, Lk0/v4$a;-><init>(Lk0/v4;)V

    iput-object v0, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/v4$b;

    invoke-direct {v0, p0}, Lk0/v4$b;-><init>(Lk0/v4;)V

    iput-object v0, p0, Lk0/v4;->f:Ljava/lang/Runnable;

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
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
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

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/v4;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/v4;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 15

    move-object v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/4 v2, 0x3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_d

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 4
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    .line 5
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x5

    .line 6
    aget-byte v5, p1, v5

    and-int/2addr v1, v3

    .line 7
    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    and-int/lit16 v1, v2, 0xff

    .line 8
    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    and-int/lit16 v1, v4, 0xff

    .line 9
    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    and-int/lit16 v1, v5, 0xff

    .line 10
    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    add-int/lit8 v1, p2, 0x6

    .line 11
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x7

    .line 12
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x8

    .line 13
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    add-int/lit8 v1, p2, 0x9

    .line 14
    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lk0/v4;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 15
    aget-byte v1, p1, v1

    new-array v7, v5, [I

    shr-int/lit8 v8, v1, 0x7

    and-int/2addr v8, v5

    aput v8, v7, v4

    const/16 v8, 0xa

    .line 16
    invoke-static {v8, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb

    new-array v9, v5, [I

    shr-int/lit8 v10, v1, 0x6

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 17
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd

    new-array v9, v5, [I

    shr-int/lit8 v10, v1, 0x4

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 18
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x1a

    new-array v9, v5, [I

    shr-int/lit8 v10, v1, 0x3

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 19
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe

    new-array v9, v5, [I

    shr-int/lit8 v10, v1, 0x2

    and-int/2addr v10, v5

    aput v10, v9, v4

    .line 20
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    new-array v7, v5, [I

    shr-int/lit8 v9, v1, 0x1

    and-int/2addr v9, v5

    aput v9, v7, v4

    const/16 v9, 0xf

    .line 21
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x26

    new-array v10, v5, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v10, v4

    .line 22
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x3

    .line 23
    aget-byte v1, p1, v1

    const/16 v7, 0x12

    new-array v10, v5, [I

    shr-int/lit8 v11, v1, 0x7

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 24
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x13

    new-array v10, v5, [I

    shr-int/lit8 v11, v1, 0x6

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 25
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x14

    new-array v10, v5, [I

    shr-int/lit8 v11, v1, 0x5

    and-int/2addr v11, v5

    aput v11, v10, v4

    .line 26
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    and-int/2addr v1, v9

    const/4 v7, 0x7

    if-le v1, v7, :cond_2

    move v1, v7

    :cond_2
    const/16 v7, 0x15

    new-array v9, v5, [I

    aput v1, v9, v4

    .line 27
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 28
    aget-byte v7, p1, v1

    and-int/2addr v7, v3

    add-int/lit8 v9, p2, 0x5

    .line 29
    aget-byte v10, p1, v9

    and-int/2addr v10, v3

    const-string v11, "persist.fyt.reversetemp"

    .line 30
    invoke-static {v11, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 31
    aget-byte v7, p1, v9

    and-int/2addr v7, v3

    .line 32
    aget-byte v1, p1, v1

    and-int/lit16 v10, v1, 0xff

    :cond_3
    const/16 v1, 0x40

    const/4 v3, -0x3

    const/4 v9, -0x2

    const/16 v11, 0x7f

    const/16 v12, 0x1e

    const/16 v13, 0x1b

    if-nez v7, :cond_4

    new-array v7, v5, [I

    aput v9, v7, v4

    .line 33
    invoke-static {v13, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    if-ne v7, v11, :cond_5

    new-array v7, v5, [I

    aput v3, v7, v4

    .line 34
    invoke-static {v13, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    if-le v7, v12, :cond_6

    if-ge v7, v1, :cond_6

    new-array v14, v5, [I

    .line 35
    div-int/2addr v7, v6

    mul-int/2addr v7, v8

    aput v7, v14, v4

    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    :cond_6
    :goto_0
    const/16 v7, 0x1c

    if-nez v10, :cond_7

    new-array v1, v5, [I

    aput v9, v1, v4

    .line 36
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    if-ne v10, v11, :cond_8

    new-array v1, v5, [I

    aput v3, v1, v4

    .line 37
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    if-le v10, v12, :cond_9

    if-ge v10, v1, :cond_9

    new-array v1, v5, [I

    .line 38
    div-int/2addr v10, v6

    mul-int/2addr v10, v8

    aput v10, v1, v4

    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    :cond_9
    :goto_1
    add-int/lit8 v1, p2, 0x6

    .line 39
    aget-byte v1, p1, v1

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v2

    const/16 v7, 0xc

    if-ne v3, v5, :cond_a

    new-array v3, v5, [I

    aput v4, v3, v4

    .line 40
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    if-ne v3, v6, :cond_b

    new-array v3, v5, [I

    aput v5, v3, v4

    .line 41
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    if-ne v3, v2, :cond_c

    new-array v3, v5, [I

    aput v6, v3, v4

    .line 42
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :cond_c
    :goto_2
    const/16 v3, 0x1d

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x4

    and-int/2addr v7, v2

    aput v7, v6, v4

    .line 43
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x3

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 44
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v6, v5, [I

    shr-int/lit8 v7, v1, 0x2

    and-int/2addr v7, v5

    aput v7, v6, v4

    .line 45
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    and-int/2addr v1, v2

    aput v1, v3, v4

    .line 46
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    .line 47
    :cond_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v1, p2, 0x2

    .line 48
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v2, p1, v2

    and-int/2addr v1, v3

    .line 50
    iput v1, v0, Lk0/v4;->c:I

    move v1, v4

    .line 51
    :goto_3
    iget-object v6, v0, Lk0/v4;->d:[[I

    array-length v7, v6

    if-ge v1, v7, :cond_f

    .line 52
    iget v7, v0, Lk0/v4;->c:I

    aget-object v8, v6, v1

    aget v8, v8, v4

    if-ne v7, v8, :cond_e

    if-eqz v7, :cond_f

    .line 53
    iput v1, v0, Lk0/v4;->b:I

    goto :goto_4

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    :goto_4
    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    .line 54
    array-length v2, v6

    if-ge v1, v2, :cond_12

    .line 55
    aget-object v1, v6, v1

    aget v1, v1, v5

    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_5

    .line 56
    :cond_10
    iget v1, v0, Lk0/v4;->b:I

    array-length v2, v6

    if-ge v1, v2, :cond_11

    if-eq v1, v3, :cond_11

    .line 57
    aget-object v1, v6, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 58
    :cond_11
    iput v3, v0, Lk0/v4;->b:I

    :cond_12
    :goto_5
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/v4;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/v4;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/v4;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
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

.method public final a3(I)I
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0xff

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p1, v0

    .line 1
    div-int/lit16 v0, p1, 0xa0

    :goto_0
    return v0
.end method
