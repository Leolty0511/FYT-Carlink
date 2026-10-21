.class public Lk0/n5;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:F

.field public h:I

.field public i:I

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/n5;->c:I

    const/16 v1, 0xe

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

    const/16 v2, 0xd

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/n5;->d:[[I

    .line 4
    new-instance v0, Lk0/n5$a;

    invoke-direct {v0, p0}, Lk0/n5$a;-><init>(Lk0/n5;)V

    iput-object v0, p0, Lk0/n5;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lk0/n5$b;

    invoke-direct {v0, p0}, Lk0/n5$b;-><init>(Lk0/n5;)V

    iput-object v0, p0, Lk0/n5;->f:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lk0/n5;->g:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Lk0/n5;->h:I

    .line 8
    iput v0, p0, Lk0/n5;->i:I

    .line 9
    new-instance v0, Lk0/n5$c;

    invoke-direct {v0, p0}, Lk0/n5$c;-><init>(Lk0/n5;)V

    iput-object v0, p0, Lk0/n5;->j:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x14
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x44
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x13
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x43
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xe
        0x26
    .end array-data

    :array_9
    .array-data 4
        0xf
        0x26
    .end array-data

    :array_a
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x13
        0xd
    .end array-data

    :array_d
    .array-data 4
        0x14
        0xd
    .end array-data
.end method

.method public static synthetic b3(Lk0/n5;II[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/n5;->j3(II[I)V

    return-void
.end method

.method public static synthetic c3(Lk0/n5;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/n5;->g:F

    return p0
.end method

.method public static synthetic d3(Lk0/n5;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/n5;->g:F

    return p1
.end method

.method public static synthetic e3(Lk0/n5;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/n5;->g:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/n5;->g:F

    return v0
.end method

.method public static synthetic f3(Lk0/n5;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/n5;->i:I

    return p0
.end method

.method public static synthetic g3(Lk0/n5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/n5;->i:I

    return p1
.end method

.method public static synthetic h3(Lk0/n5;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/n5;->h:I

    return p0
.end method

.method public static synthetic i3(Lk0/n5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/n5;->h:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 6

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
    sget v0, Lk0/nt;->a:I

    const v3, 0x400b2

    const v4, 0x300b2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/16 v0, 0x405

    new-array v5, v2, [I

    aput v2, v5, v1

    .line 7
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    .line 8
    :cond_0
    sget v0, Lk0/nt;->a:I

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const v3, 0x200b2

    if-ne v0, v3, :cond_3

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->g:I

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v2, v0, Lk0/mt;->e:I

    .line 12
    iput v2, v0, Lk0/mt;->f:I

    .line 13
    iput v2, v0, Lk0/mt;->g:I

    .line 14
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/n5;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/n5;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/n5;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    :cond_3
    :goto_1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/16 v4, 0x20

    const/16 v5, 0x1f

    const/16 v6, 0x12

    const/4 v13, 0x3

    const/4 v14, 0x7

    const/4 v15, 0x2

    const/16 v8, 0xff

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-eq v1, v15, :cond_1a

    if-eq v1, v4, :cond_14

    const/16 v4, 0x24

    if-eq v1, v4, :cond_12

    const/4 v4, 0x6

    if-eq v1, v4, :cond_11

    if-eq v1, v14, :cond_10

    if-eq v1, v3, :cond_f

    if-eq v1, v2, :cond_e

    const/16 v4, 0x1d

    if-eq v1, v4, :cond_d

    const/16 v14, 0x1e

    if-eq v1, v14, :cond_c

    const/16 v14, 0x28

    if-eq v1, v14, :cond_1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x30c

    invoke-static {v1, v2, v7, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_a

    .line 3
    :cond_1
    sget v1, Lk0/nt;->a:I

    const v13, 0x300b2

    if-eq v1, v13, :cond_2

    const v13, 0x400b2

    if-ne v1, v13, :cond_27

    :cond_2
    add-int/lit8 v1, p2, 0x2

    .line 4
    aget-byte v1, p1, v1

    add-int/lit8 v13, p2, 0x3

    .line 5
    aget-byte v13, p1, v13

    add-int/lit8 v14, p2, 0x4

    .line 6
    aget-byte v14, p1, v14

    add-int/lit8 v15, p2, 0x5

    .line 7
    aget-byte v15, p1, v15

    add-int/lit8 v17, p2, 0x6

    .line 8
    aget-byte v17, p1, v17

    add-int/lit8 v18, p2, 0x7

    .line 9
    aget-byte v9, p1, v18

    and-int/2addr v9, v8

    add-int/lit8 v18, p2, 0x8

    .line 10
    aget-byte v8, p1, v18

    add-int/lit8 v18, p2, 0x9

    .line 11
    aget-byte v18, p1, v18

    const/16 v11, 0xa

    new-array v12, v10, [I

    shr-int/lit8 v19, v1, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    .line 12
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xb

    new-array v12, v10, [I

    shr-int/lit8 v19, v1, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    .line 13
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xc

    new-array v12, v10, [I

    shr-int/lit8 v19, v1, 0x5

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    .line 14
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xd

    new-array v12, v10, [I

    shr-int/lit8 v19, v1, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    .line 15
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xe

    new-array v12, v10, [I

    shr-int/lit8 v19, v1, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    .line 16
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x41

    new-array v12, v10, [I

    shr-int/lit8 v19, v1, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    .line 17
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x10

    new-array v12, v10, [I

    and-int/2addr v1, v10

    aput v1, v12, v7

    .line 18
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v11, v13, 0x7

    and-int/2addr v11, v10

    aput v11, v1, v7

    .line 19
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v6, v10, [I

    shr-int/lit8 v11, v13, 0x6

    and-int/2addr v11, v10

    aput v11, v6, v7

    .line 20
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v6, v13, 0x5

    and-int/2addr v6, v10

    aput v6, v1, v7

    .line 21
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    and-int/lit8 v3, v13, 0xf

    aput v3, v1, v7

    .line 22
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    if-eqz v14, :cond_5

    if-eq v14, v5, :cond_4

    if-lt v14, v10, :cond_3

    if-gt v14, v4, :cond_3

    sub-int/2addr v14, v10

    const/4 v1, 0x5

    mul-int/2addr v14, v1

    add-int/lit16 v1, v14, 0xb4

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v1, -0x3

    goto :goto_0

    :cond_5
    const/4 v1, -0x2

    :goto_0
    new-array v2, v10, [I

    aput v1, v2, v7

    const/16 v1, 0x1b

    .line 23
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    if-eqz v15, :cond_8

    if-eq v15, v5, :cond_7

    if-lt v15, v10, :cond_6

    if-gt v15, v4, :cond_6

    sub-int/2addr v15, v10

    const/4 v1, 0x5

    mul-int/2addr v15, v1

    add-int/lit16 v1, v15, 0xb4

    goto :goto_1

    :cond_6
    const/4 v1, -0x1

    goto :goto_1

    :cond_7
    const/4 v1, -0x3

    goto :goto_1

    :cond_8
    const/4 v1, -0x2

    :goto_1
    new-array v2, v10, [I

    aput v1, v2, v7

    const/16 v1, 0x1c

    .line 24
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x31

    new-array v2, v10, [I

    shr-int/lit8 v3, v17, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v10, [I

    shr-int/lit8 v3, v17, 0x2

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v2, v10, [I

    shr-int/lit8 v3, v17, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v10, [I

    shr-int/lit8 v3, v17, 0x0

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 28
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xff

    and-int/2addr v1, v9

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x190

    add-int/lit16 v1, v1, 0x3e8

    .line 29
    invoke-static {v1}, Lu0/d;->A3(I)V

    if-eqz v8, :cond_b

    if-eq v8, v5, :cond_a

    if-lt v8, v10, :cond_9

    if-gt v8, v4, :cond_9

    sub-int/2addr v8, v10

    const/4 v1, 0x5

    mul-int/2addr v8, v1

    add-int/lit16 v1, v8, 0xb4

    move/from16 v16, v1

    goto :goto_2

    :cond_9
    const/16 v16, -0x1

    goto :goto_2

    :cond_a
    const/16 v16, -0x3

    goto :goto_2

    :cond_b
    const/16 v16, -0x2

    :goto_2
    const/16 v1, 0x28

    new-array v2, v10, [I

    aput v16, v2, v7

    .line 30
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2a

    new-array v2, v10, [I

    shr-int/lit8 v3, v18, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 31
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2e

    new-array v2, v10, [I

    shr-int/lit8 v3, v18, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 32
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2f

    new-array v2, v10, [I

    shr-int/lit8 v3, v18, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 33
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2b

    new-array v2, v10, [I

    shr-int/lit8 v3, v18, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 34
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2c

    new-array v2, v10, [I

    and-int/lit8 v3, v18, 0xf

    aput v3, v2, v7

    .line 35
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_c
    add-int/lit8 v1, p2, 0x2

    .line 36
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 37
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 38
    aget-byte v3, p1, v3

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 39
    aget-byte v4, p1, v4

    const/16 v5, 0xff

    and-int/2addr v1, v5

    .line 40
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    and-int/lit16 v1, v2, 0xff

    .line 41
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    and-int/lit16 v1, v3, 0xff

    .line 42
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    and-int/lit16 v1, v4, 0xff

    .line 43
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :cond_d
    add-int/lit8 v1, p2, 0x2

    .line 44
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 45
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 46
    aget-byte v3, p1, v3

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 47
    aget-byte v4, p1, v4

    const/16 v5, 0xff

    and-int/2addr v1, v5

    .line 48
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    and-int/lit16 v1, v2, 0xff

    .line 49
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    and-int/lit16 v1, v3, 0xff

    .line 50
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    and-int/lit16 v1, v4, 0xff

    .line 51
    invoke-virtual {v0, v1}, Lk0/n5;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    :cond_e
    add-int/lit8 v1, p2, 0x2

    .line 52
    aget-byte v1, p1, v1

    const/16 v2, 0x3f5

    new-array v3, v10, [I

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    .line 53
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_f
    add-int/lit8 v1, p2, 0x2

    .line 54
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 55
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 56
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 57
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    .line 58
    aget-byte v5, p1, v5

    add-int/lit8 v6, p2, 0x7

    .line 59
    aget-byte v6, p1, v6

    const/16 v8, 0x71

    new-array v9, v10, [I

    aput v1, v9, v7

    .line 60
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x76

    new-array v8, v10, [I

    const/16 v9, 0xff

    and-int/2addr v2, v9

    and-int/lit8 v11, v3, 0xf

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v2, v11

    aput v2, v8, v7

    .line 61
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x77

    new-array v2, v10, [I

    const/4 v8, 0x4

    shr-int/2addr v3, v8

    and-int/lit8 v3, v3, 0xf

    and-int/2addr v4, v9

    shl-int/2addr v4, v8

    or-int/2addr v3, v4

    aput v3, v2, v7

    .line 62
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v2, v10, [I

    and-int/lit8 v3, v5, 0xf

    aput v3, v2, v7

    .line 63
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7b

    new-array v2, v10, [I

    shr-int/lit8 v3, v5, 0x4

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v7

    .line 64
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v2, v10, [I

    shr-int/lit8 v3, v5, 0x6

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v7

    .line 65
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v2, v10, [I

    shr-int/lit8 v3, v5, 0x7

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v7

    .line 66
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x74

    new-array v2, v10, [I

    and-int/lit8 v3, v6, 0x7

    aput v3, v2, v7

    .line 67
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v1, p2, 0x2

    .line 68
    aget-byte v2, p1, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v5, p2, 0x3

    .line 69
    aget-byte v5, p1, v5

    and-int/2addr v5, v3

    const/16 v3, 0x63

    new-array v6, v10, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v10

    aput v8, v6, v7

    .line 70
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v6, v10, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v10

    aput v8, v6, v7

    .line 71
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v6, v10, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v10

    aput v8, v6, v7

    .line 72
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v6, v10, [I

    shr-int/2addr v2, v15

    and-int/2addr v2, v10

    aput v2, v6, v7

    .line 73
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 74
    aget-byte v1, p1, v1

    const/16 v6, 0xff

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v2, v10, [I

    shl-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 75
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v10, [I

    shl-int/lit8 v3, v5, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 76
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_11
    const/16 v1, 0x62

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x2

    .line 77
    aget-byte v3, p1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_12
    add-int/lit8 v1, p2, 0x2

    .line 78
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 79
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_13

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 80
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 81
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_13
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 82
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 83
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 84
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v7

    const/4 v3, 0x4

    .line 85
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v13

    and-int/2addr v1, v10

    aput v1, v2, v7

    const/4 v1, 0x5

    .line 86
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 87
    :cond_14
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_27

    add-int/lit8 v1, p2, 0x2

    .line 88
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 89
    aget-byte v2, p1, v2

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .line 90
    iput v1, v0, Lk0/n5;->c:I

    move v1, v7

    .line 91
    :goto_4
    iget-object v3, v0, Lk0/n5;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_16

    .line 92
    iget v4, v0, Lk0/n5;->c:I

    aget-object v5, v3, v1

    aget v5, v5, v7

    if-ne v4, v5, :cond_15

    if-eqz v4, :cond_16

    .line 93
    iput v1, v0, Lk0/n5;->b:I

    goto :goto_5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    :goto_5
    const/16 v4, 0xff

    and-int/2addr v2, v4

    if-eqz v2, :cond_17

    .line 94
    array-length v2, v3

    if-ge v1, v2, :cond_27

    .line 95
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 96
    :cond_17
    iget v1, v0, Lk0/n5;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_18

    const/16 v2, 0xff

    if-eq v1, v2, :cond_19

    .line 97
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_18
    const/16 v2, 0xff

    .line 98
    :cond_19
    :goto_6
    iput v2, v0, Lk0/n5;->b:I

    goto/16 :goto_a

    .line 99
    :cond_1a
    sget v1, Lk0/nt;->a:I

    const v8, 0x300b2

    if-eq v1, v8, :cond_27

    const v8, 0x400b2

    if-ne v1, v8, :cond_1b

    goto/16 :goto_a

    :cond_1b
    add-int/lit8 v1, p2, 0x2

    .line 100
    aget-byte v1, p1, v1

    const/16 v8, 0xff

    and-int/2addr v1, v8

    add-int/lit8 v9, p2, 0x3

    .line 101
    aget-byte v9, p1, v9

    and-int/2addr v9, v8

    add-int/lit8 v11, p2, 0x4

    .line 102
    aget-byte v11, p1, v11

    and-int/2addr v11, v8

    const/16 v8, 0xa

    new-array v12, v10, [I

    shr-int/lit8 v15, v1, 0x7

    and-int/2addr v15, v10

    aput v15, v12, v7

    .line 103
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v12, v10, [I

    shr-int/lit8 v15, v1, 0x6

    and-int/2addr v15, v10

    aput v15, v12, v7

    .line 104
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xd

    new-array v12, v10, [I

    shr-int/lit8 v15, v1, 0x4

    and-int/2addr v15, v10

    aput v15, v12, v7

    .line 105
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xc

    new-array v12, v10, [I

    shr-int/lit8 v15, v1, 0x2

    and-int/2addr v15, v10

    aput v15, v12, v7

    .line 106
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x10

    new-array v12, v10, [I

    shr-int/lit8 v15, v1, 0x1

    and-int/2addr v15, v10

    aput v15, v12, v7

    .line 107
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xe

    new-array v12, v10, [I

    and-int/2addr v1, v10

    aput v1, v12, v7

    .line 108
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4f

    new-array v8, v10, [I

    shr-int/lit8 v12, v9, 0x7

    and-int/2addr v12, v10

    aput v12, v8, v7

    .line 109
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v8, v10, [I

    shr-int/lit8 v12, v9, 0x5

    and-int/2addr v12, v10

    aput v12, v8, v7

    .line 110
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    and-int/2addr v5, v9

    aput v5, v1, v7

    .line 111
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x31

    new-array v2, v10, [I

    shr-int/lit8 v5, v11, 0x7

    and-int/2addr v5, v10

    aput v5, v2, v7

    .line 112
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v11, 0x6

    and-int/2addr v2, v10

    aput v2, v1, v7

    .line 113
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v11, 0x5

    and-int/2addr v2, v10

    aput v2, v1, v7

    .line 114
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v10, [I

    shr-int/lit8 v3, v11, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 115
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v10, [I

    shr-int/lit8 v3, v11, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v7

    .line 116
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x5

    .line 117
    aget-byte v2, p1, v1

    const/16 v5, 0xff

    and-int/2addr v2, v5

    add-int/lit8 v8, p2, 0x6

    .line 118
    aget-byte v9, p1, v8

    and-int/2addr v9, v5

    const-string v11, "persist.fyt.reversetemp"

    .line 119
    invoke-static {v11, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 120
    aget-byte v2, p1, v8

    and-int/2addr v2, v5

    .line 121
    aget-byte v1, p1, v1

    and-int/lit16 v9, v1, 0xff

    :cond_1c
    and-int/lit16 v1, v2, 0xff

    if-eqz v1, :cond_20

    if-eq v1, v5, :cond_1f

    if-nez v3, :cond_1e

    if-lt v1, v6, :cond_1d

    if-gt v1, v4, :cond_1d

    new-array v2, v10, [I

    aput v1, v2, v7

    const/16 v5, 0x1b

    .line 122
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1d
    const/16 v5, 0x1b

    new-array v1, v10, [I

    const/4 v2, -0x1

    aput v2, v1, v7

    .line 123
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1e
    const/16 v5, 0x1b

    new-array v2, v10, [I

    aput v1, v2, v7

    .line 124
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1f
    const/16 v5, 0x1b

    new-array v1, v10, [I

    const/4 v2, -0x3

    aput v2, v1, v7

    .line 125
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_20
    const/16 v5, 0x1b

    new-array v1, v10, [I

    const/4 v2, -0x2

    aput v2, v1, v7

    .line 126
    invoke-static {v5, v1}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v1, 0xff

    and-int/lit16 v2, v9, 0xff

    if-eqz v2, :cond_24

    if-eq v2, v1, :cond_23

    if-nez v3, :cond_22

    if-lt v2, v6, :cond_21

    if-gt v2, v4, :cond_21

    new-array v1, v10, [I

    aput v2, v1, v7

    const/16 v3, 0x1c

    .line 127
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v4, -0x1

    goto :goto_8

    :cond_21
    const/16 v3, 0x1c

    new-array v1, v10, [I

    const/4 v4, -0x1

    aput v4, v1, v7

    .line 128
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_22
    const/16 v3, 0x1c

    const/4 v4, -0x1

    new-array v1, v10, [I

    aput v2, v1, v7

    .line 129
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_23
    const/16 v3, 0x1c

    const/4 v4, -0x1

    new-array v1, v10, [I

    const/4 v2, -0x3

    aput v2, v1, v7

    .line 130
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_24
    const/16 v3, 0x1c

    const/4 v4, -0x1

    new-array v1, v10, [I

    const/4 v2, -0x2

    aput v2, v1, v7

    .line 131
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v1, 0x78

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x7

    .line 132
    aget-byte v3, p1, v3

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x79

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x8

    .line 133
    aget-byte v5, p1, v3

    aput v5, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 134
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x7f

    .line 135
    aget-byte v2, p1, v3

    const/16 v5, 0xff

    if-eq v2, v5, :cond_26

    aget-byte v2, p1, v3

    const/16 v5, 0xd0

    if-eq v2, v5, :cond_26

    aget-byte v2, p1, v3

    const/16 v5, 0xd8

    if-eq v2, v5, :cond_26

    .line 136
    aget-byte v2, p1, v3

    shr-int/2addr v2, v14

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_25

    goto :goto_9

    :cond_25
    move v4, v10

    :goto_9
    mul-int/2addr v1, v4

    .line 137
    invoke-static {v1}, Lu0/d;->A3(I)V

    :cond_26
    add-int/lit8 v1, p2, 0x9

    .line 138
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0xa

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    const/16 v2, 0x76

    new-array v3, v10, [I

    aput v1, v3, v7

    .line 139
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x403

    new-array v3, v10, [I

    aput v1, v3, v7

    .line 140
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0xb

    .line 141
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xf0

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xc

    aget-byte v3, p1, v2

    or-int/2addr v1, v3

    const/16 v3, 0x77

    new-array v4, v10, [I

    aput v1, v4, v7

    .line 142
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x404

    new-array v4, v10, [I

    aput v1, v4, v7

    .line 143
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v3, v10, [I

    .line 144
    aget-byte v4, p1, v2

    and-int/lit8 v4, v4, 0x8

    aput v4, v3, v7

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7b

    new-array v3, v10, [I

    .line 145
    aget-byte v2, p1, v2

    shr-int/2addr v2, v13

    and-int/lit8 v2, v2, 0x8

    aput v2, v3, v7

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    :cond_27
    :goto_a
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/n5;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/n5;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x7c

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

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/16 p4, 0x3f8

    if-eq p1, p4, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x9

    new-array p4, p3, [I

    const/4 v0, 0x0

    .line 2
    aget p2, p2, v0

    if-ne p2, p3, :cond_1

    const/16 p2, 0x80

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    aput p2, p4, v0

    invoke-virtual {p0, p1, p3, p4}, Lk0/n5;->j3(II[I)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x78

    .line 4
    invoke-virtual {p0, p1, p3, p2}, Lk0/n5;->j3(II[I)V

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x79

    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lk0/n5;->j3(II[I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result p3

    if-eqz p3, :cond_5

    const/16 p3, 0xe0

    .line 8
    invoke-virtual {p0, p3, p1, p2}, Lk0/n5;->j3(II[I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final a3(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Ll0/c0;->E0(I)I

    move-result p1

    return p1
.end method

.method public final varargs j3(II[I)V
    .locals 4

    .line 1
    array-length v0, p3

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    .line 2
    aput v1, v0, v2

    const/16 v1, 0x2e

    const/4 v3, 0x1

    .line 3
    aput v1, v0, v3

    const/4 v1, 0x2

    .line 4
    aput p1, v0, v1

    const/4 v1, 0x3

    .line 5
    aput p2, v0, v1

    add-int/2addr p1, p2

    int-to-byte p1, p1

    .line 6
    :goto_0
    array-length p2, p3

    if-ge v2, p2, :cond_0

    .line 7
    aget p2, p3, v2

    add-int/2addr p1, p2

    int-to-byte p1, p1

    add-int/lit8 p2, v2, 0x4

    .line 8
    aget v1, p3, v2

    aput v1, v0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    array-length p2, p3

    add-int/lit8 p2, p2, 0x4

    xor-int/lit16 p1, p1, 0xff

    aput p1, v0, p2

    .line 10
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
