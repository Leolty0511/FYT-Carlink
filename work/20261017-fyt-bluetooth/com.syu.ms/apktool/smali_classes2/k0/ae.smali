.class public Lk0/ae;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:J

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ae;->c:I

    const/4 v1, 0x6

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

    iput-object v2, p0, Lk0/ae;->d:[[I

    const/16 v2, 0x8

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_6

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    aput-object v0, v2, v5

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    aput-object v0, v2, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    aput-object v0, v2, v7

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    aput-object v0, v2, v8

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/4 v1, 0x7

    aput-object v0, v2, v1

    iput-object v2, p0, Lk0/ae;->e:[[I

    .line 5
    new-instance v0, Lk0/ae$a;

    invoke-direct {v0, p0}, Lk0/ae$a;-><init>(Lk0/ae;)V

    iput-object v0, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/ae$b;

    invoke-direct {v0, p0}, Lk0/ae$b;-><init>(Lk0/ae;)V

    iput-object v0, p0, Lk0/ae;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/ae$c;

    invoke-direct {v0, p0}, Lk0/ae$c;-><init>(Lk0/ae;)V

    iput-object v0, p0, Lk0/ae;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/ae$d;

    invoke-direct {v0, p0}, Lk0/ae$d;-><init>(Lk0/ae;)V

    iput-object v0, p0, Lk0/ae;->i:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lk0/ae;->j:J

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/ae;->k:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x12
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x8
    .end array-data
.end method

.method public static synthetic d3(Lk0/ae;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ae;->c3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/ae;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ae;->j:J

    return-wide v0
.end method

.method public static synthetic f3(Lk0/ae;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ae;->j:J

    return-wide p1
.end method

.method public static synthetic g3(Lk0/ae;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ae;->k:I

    return p0
.end method

.method public static synthetic h3(Lk0/ae;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ae;->k:I

    return p1
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

    iget-object v2, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    invoke-virtual {p0, v1}, Lk0/ae;->a3(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    iput v1, v0, Lk0/mt;->e:I

    .line 10
    iput v1, v0, Lk0/mt;->f:I

    .line 11
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 12
    iput v2, v0, Lk0/mt;->o:I

    .line 13
    iget-object v0, p0, Lk0/ae;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/ae;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 16
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lk0/ae;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0xf1
        0x1
        0x1
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget v2, Lk0/nt;->a:I

    const/16 v3, 0x41

    const/16 v4, 0xc

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x24

    const/4 v15, 0x5

    const/4 v8, 0x4

    const/16 v13, 0xff

    const/4 v11, 0x0

    const/4 v14, 0x1

    const v12, 0x10199

    if-ne v2, v12, :cond_10

    .line 2
    aget-byte v2, v1, p2

    if-eq v2, v8, :cond_e

    if-eq v2, v15, :cond_c

    if-eq v2, v10, :cond_a

    const/16 v10, 0x29

    if-eq v2, v10, :cond_9

    const/16 v10, 0x30

    if-eq v2, v10, :cond_8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 3
    :pswitch_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lk0/ae;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lk0/ae;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lk0/ae;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lk0/ae;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    goto/16 :goto_8

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 8
    aget-byte v2, v1, v2

    add-int/lit8 v10, p2, 0x3

    .line 9
    aget-byte v10, v1, v10

    add-int/lit8 v12, p2, 0x4

    .line 10
    aget-byte v15, v1, v12

    add-int/lit8 v15, p2, 0x5

    .line 11
    aget-byte v16, v1, v15

    add-int/lit8 v16, p2, 0x6

    .line 12
    aget-byte v16, v1, v16

    new-array v8, v14, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    .line 13
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v14, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v11

    .line 14
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    new-array v7, v14, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v14

    aput v8, v7, v11

    .line 15
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    new-array v4, v14, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v14

    aput v7, v4, v11

    .line 16
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v14, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v14

    aput v6, v4, v11

    .line 17
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v14, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v14

    aput v2, v4, v11

    .line 18
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v14, [I

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v14, [I

    shr-int/lit8 v4, v10, 0x6

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v14, [I

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v14, [I

    and-int/lit8 v4, v10, 0xf

    aput v4, v3, v11

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 23
    aget-byte v2, v1, v12

    and-int/2addr v2, v13

    int-to-byte v2, v2

    .line 24
    aget-byte v3, v1, v15

    and-int/2addr v3, v13

    int-to-byte v3, v3

    const-string v4, "persist.fyt.reversetemp"

    .line 25
    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    aget-byte v2, v1, v15

    and-int/2addr v2, v13

    .line 27
    aget-byte v3, v1, v12

    and-int/2addr v3, v13

    :cond_0
    if-gtz v2, :cond_1

    new-array v2, v14, [I

    const/4 v4, -0x2

    aput v4, v2, v11

    const/16 v4, 0x1b

    .line 28
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x1b

    if-lt v2, v13, :cond_2

    new-array v2, v14, [I

    const/4 v5, -0x3

    aput v5, v2, v11

    .line 29
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v5, v14, [I

    aput v2, v5, v11

    .line 30
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    if-gtz v3, :cond_3

    new-array v2, v14, [I

    const/4 v3, -0x2

    aput v3, v2, v11

    const/16 v4, 0x1c

    .line 31
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_3
    const/16 v4, 0x1c

    if-lt v3, v13, :cond_4

    new-array v2, v14, [I

    const/4 v3, -0x3

    aput v3, v2, v11

    .line 32
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_4
    new-array v2, v14, [I

    aput v3, v2, v11

    .line 33
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 34
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 36
    aget-byte v3, v1, v3

    and-int/2addr v2, v13

    .line 37
    iput v2, v0, Lk0/ae;->c:I

    move v2, v11

    .line 38
    :goto_1
    iget-object v4, v0, Lk0/ae;->e:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 39
    iget v5, v0, Lk0/ae;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v11

    if-ne v5, v6, :cond_5

    if-eqz v5, :cond_6

    .line 40
    iput v2, v0, Lk0/ae;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    and-int/2addr v3, v13

    if-eqz v3, :cond_7

    .line 41
    array-length v3, v4

    if-ge v2, v3, :cond_1e

    .line 42
    aget-object v2, v4, v2

    aget v2, v2, v14

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 43
    :cond_7
    array-length v3, v4

    if-gt v2, v3, :cond_1e

    .line 44
    iget v2, v0, Lk0/ae;->b:I

    aget-object v2, v4, v2

    aget v2, v2, v14

    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 45
    :cond_8
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 46
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    const/16 v4, 0x2300

    invoke-static {v2, v3, v14, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 48
    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_b

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 49
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v14

    aput v4, v3, v11

    const/4 v4, 0x2

    .line 50
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    const/4 v4, 0x2

    new-array v3, v14, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v14

    aput v5, v3, v11

    .line 51
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 52
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v14

    aput v4, v3, v11

    const/4 v4, 0x3

    .line 53
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v14

    aput v4, v3, v11

    const/4 v4, 0x4

    .line 54
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 55
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    const/4 v4, 0x2

    shr-int/2addr v2, v4

    and-int/2addr v2, v14

    aput v2, v3, v11

    .line 56
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 57
    :cond_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_d

    .line 59
    invoke-static {v14}, Lk0/qt;->b(I)V

    goto/16 :goto_8

    .line 60
    :cond_d
    invoke-static {v11}, Lk0/qt;->b(I)V

    goto/16 :goto_8

    .line 61
    :cond_e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v2, v1, v2

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 63
    invoke-static {v14}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 64
    :cond_f
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 65
    :cond_10
    aget-byte v2, v1, p2

    const/4 v8, 0x4

    if-eq v2, v8, :cond_1a

    if-eq v2, v15, :cond_18

    const/4 v8, 0x7

    if-eq v2, v8, :cond_12

    const/16 v3, 0x71

    if-eq v2, v3, :cond_11

    goto/16 :goto_8

    .line 66
    :cond_11
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    add-int/lit8 v8, p2, 0x3

    .line 68
    aget-byte v8, v1, v8

    add-int/lit8 v12, p2, 0x4

    .line 69
    aget-byte v15, v1, v12

    add-int/lit8 v15, p2, 0x5

    .line 70
    aget-byte v17, v1, v15

    add-int/lit8 v17, p2, 0x6

    .line 71
    aget-byte v17, v1, v17

    new-array v10, v14, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v10, v11

    .line 72
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v14, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v10, v11

    .line 73
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v7, v14, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v14

    aput v10, v7, v11

    .line 74
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    new-array v6, v14, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v14

    aput v7, v6, v11

    .line 75
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    new-array v5, v14, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v14

    aput v6, v5, v11

    .line 76
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v4, v14, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v14

    aput v5, v4, v11

    .line 77
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v14

    aput v2, v3, v11

    const/16 v2, 0x10

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v14, [I

    and-int/lit8 v4, v8, 0xf

    aput v4, v3, v11

    .line 79
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 80
    aget-byte v2, v1, v12

    and-int/2addr v2, v13

    .line 81
    aget-byte v3, v1, v15

    and-int/2addr v3, v13

    const-string v4, "persist.fyt.reversetemp"

    .line 82
    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 83
    aget-byte v2, v1, v15

    and-int/2addr v2, v13

    .line 84
    aget-byte v3, v1, v12

    and-int/2addr v3, v13

    :cond_13
    if-gtz v2, :cond_14

    new-array v2, v14, [I

    const/4 v4, -0x2

    aput v4, v2, v11

    const/16 v4, 0x1b

    .line 85
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_14
    const/16 v4, 0x1b

    const/16 v5, 0x1e

    if-lt v2, v5, :cond_15

    new-array v2, v14, [I

    const/4 v5, -0x3

    aput v5, v2, v11

    .line 86
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v5, v14, [I

    sub-int/2addr v2, v14

    const/16 v6, 0x24

    add-int/2addr v2, v6

    aput v2, v5, v11

    .line 87
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-gtz v3, :cond_16

    new-array v2, v14, [I

    const/4 v3, -0x2

    aput v3, v2, v11

    const/16 v4, 0x1c

    .line 88
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_16
    const/16 v4, 0x1c

    const/16 v2, 0x1e

    if-lt v3, v2, :cond_17

    new-array v2, v14, [I

    const/4 v3, -0x3

    aput v3, v2, v11

    .line 89
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    new-array v2, v14, [I

    sub-int/2addr v3, v14

    const/16 v5, 0x24

    add-int/2addr v3, v5

    aput v3, v2, v11

    .line 90
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v2, 0x12

    new-array v3, v14, [I

    shr-int/lit8 v4, v17, 0x6

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v14, [I

    shr-int/lit8 v4, v17, 0x5

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 92
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v14, [I

    const/4 v4, 0x4

    shr-int/lit8 v5, v17, 0x4

    and-int/lit8 v4, v5, 0x1

    aput v4, v3, v11

    .line 93
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 94
    :cond_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_19

    .line 96
    invoke-static {v14}, Lk0/qt;->b(I)V

    goto/16 :goto_8

    .line 97
    :cond_19
    invoke-static {v11}, Lk0/qt;->b(I)V

    goto/16 :goto_8

    .line 98
    :cond_1a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v2, p2, 0x2

    .line 99
    aget-byte v2, v1, v2

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_1b

    .line 100
    invoke-static {v14}, Lk0/qt;->a(I)V

    goto :goto_6

    .line 101
    :cond_1b
    invoke-static {v11}, Lk0/qt;->a(I)V

    :cond_1c
    :goto_6
    add-int/lit8 v2, p2, 0x3

    .line 102
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 103
    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1d

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 104
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v14

    aput v4, v3, v11

    const/4 v4, 0x2

    .line 105
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1d
    const/4 v4, 0x2

    new-array v3, v14, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v14

    aput v5, v3, v11

    .line 106
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 107
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v14

    aput v4, v3, v11

    const/4 v4, 0x3

    .line 108
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v14

    aput v4, v3, v11

    const/4 v4, 0x4

    .line 109
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v14

    aput v4, v3, v11

    .line 110
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v14, [I

    const/4 v4, 0x2

    shr-int/2addr v2, v4

    and-int/2addr v2, v14

    aput v2, v3, v11

    .line 111
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    .line 112
    :cond_1e
    :goto_8
    aget-byte v2, v1, p2

    if-eq v2, v14, :cond_25

    const/4 v3, 0x6

    if-eq v2, v3, :cond_24

    const/4 v3, 0x7

    if-eq v2, v3, :cond_21

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1f

    goto/16 :goto_d

    :cond_1f
    add-int/lit8 v2, p2, 0x4

    .line 113
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    const/4 v4, 0x2

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v14

    if-ne v1, v14, :cond_20

    goto :goto_9

    :cond_20
    move v11, v14

    :goto_9
    const/16 v1, 0x21c

    invoke-static {v2, v3, v11, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_d

    .line 114
    :cond_21
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x7

    add-int/lit8 v2, p2, 0x7

    .line 115
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    mul-int/2addr v1, v9

    const/4 v2, 0x2

    .line 116
    div-int/2addr v1, v2

    const/16 v2, 0x226

    if-ge v1, v2, :cond_22

    sub-int/2addr v2, v1

    rsub-int v11, v2, 0x3e8

    goto :goto_a

    :cond_22
    if-lt v1, v2, :cond_23

    const/16 v3, 0x578

    if-gt v1, v3, :cond_23

    add-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v11, v1, -0x226

    .line 117
    :cond_23
    :goto_a
    invoke-static {v11}, Lu0/d;->A3(I)V

    goto/16 :goto_d

    .line 118
    :cond_24
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, p2, 0x2

    .line 119
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 120
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    invoke-static {v3}, Ll0/c0;->b1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 121
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 122
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_d

    .line 123
    :cond_25
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, p2, 0x2

    .line 124
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 125
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    .line 126
    iput v2, v0, Lk0/ae;->c:I

    move v2, v11

    .line 127
    :goto_b
    iget-object v3, v0, Lk0/ae;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_27

    .line 128
    iget v4, v0, Lk0/ae;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v11

    if-ne v4, v5, :cond_26

    if-eqz v4, :cond_27

    .line 129
    iput v2, v0, Lk0/ae;->b:I

    goto :goto_c

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    :goto_c
    and-int/2addr v1, v13

    if-eqz v1, :cond_28

    .line 130
    array-length v1, v3

    if-ge v2, v1, :cond_29

    .line 131
    aget-object v1, v3, v2

    aget v1, v1, v14

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_d

    .line 132
    :cond_28
    array-length v1, v3

    if-gt v2, v1, :cond_29

    .line 133
    iget v1, v0, Lk0/ae;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v14

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    :cond_29
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lk0/ae;->a3(I)V

    .line 2
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ae;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/ae;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/ae;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x66

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

.method public final a3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x81

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final c3(I)V
    .locals 8

    .line 1
    sget v0, Lk0/nt;->a:I

    const/16 v1, 0xe3

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0x10199

    if-ne v0, v7, :cond_1

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v1, v0, v6

    const/16 v1, 0xc6

    aput v1, v0, v5

    aput v3, v0, v4

    const/16 v1, 0xa4

    aput v1, v0, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x1b

    :goto_0
    aput v4, v0, v2

    const/4 p1, 0x5

    aput v6, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_1
    new-array v0, v2, [I

    aput v1, v0, v6

    const/16 v1, 0x84

    aput v1, v0, v5

    aput v5, v0, v4

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    aput v5, v0, v3

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    :goto_2
    return-void
.end method
