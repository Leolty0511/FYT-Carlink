.class public Lk0/we;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:J

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lk0/we;->d:I

    const/16 v0, 0x12

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

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_11

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iput-object v0, p0, Lk0/we;->e:[[I

    .line 4
    iput v3, p0, Lk0/we;->g:I

    .line 5
    iput v3, p0, Lk0/we;->h:I

    .line 6
    new-instance v0, Lk0/we$a;

    invoke-direct {v0, p0}, Lk0/we$a;-><init>(Lk0/we;)V

    iput-object v0, p0, Lk0/we;->i:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/we$b;

    invoke-direct {v0, p0}, Lk0/we$b;-><init>(Lk0/we;)V

    iput-object v0, p0, Lk0/we;->j:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/we$c;

    invoke-direct {v0, p0}, Lk0/we$c;-><init>(Lk0/we;)V

    iput-object v0, p0, Lk0/we;->k:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lk0/we;->l:J

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lk0/we;->m:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x8
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x4d
        0x21
    .end array-data

    :array_7
    .array-data 4
        0x25
        0x41
    .end array-data

    :array_8
    .array-data 4
        0x26
        0x49
    .end array-data

    :array_9
    .array-data 4
        0x3c
        0x42
    .end array-data

    :array_a
    .array-data 4
        0x4e
        0x20
    .end array-data

    :array_b
    .array-data 4
        0x47
        0x4a
    .end array-data

    :array_c
    .array-data 4
        0x48
        0x4b
    .end array-data

    :array_d
    .array-data 4
        0x4f
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x50
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x51
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x52
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x53
        0xc
    .end array-data
.end method

.method public static synthetic b3(Lk0/we;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/we;->a3(I)V

    return-void
.end method

.method public static synthetic c3(Lk0/we;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/we;->l:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/we;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/we;->l:J

    return-wide p1
.end method

.method public static synthetic e3(Lk0/we;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/we;->m:I

    return p0
.end method

.method public static synthetic f3(Lk0/we;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/we;->m:I

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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

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
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/we;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/we;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/we;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x4
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x7a

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_20

    const/16 v3, -0x10

    const/4 v9, 0x2

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x34

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x21

    const/4 v11, 0x3

    if-eq v2, v3, :cond_16

    const/16 v3, 0x22

    const/4 v12, 0x7

    if-eq v2, v3, :cond_b

    const/16 v3, 0x31

    if-eq v2, v3, :cond_1

    const/16 v3, 0x32

    if-eq v2, v3, :cond_0

    goto/16 :goto_f

    :cond_0
    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 2
    aget-byte v9, v1, v4

    shl-int/2addr v9, v5

    const v10, 0xff00

    and-int/2addr v9, v10

    add-int/lit8 v11, p2, 0x5

    aget-byte v13, v1, v11

    and-int/2addr v13, v6

    or-int/2addr v9, v13

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 3
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int/2addr v4, v10

    aget-byte v9, v1, v11

    and-int/2addr v9, v6

    or-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int/2addr v4, v10

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 6
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 7
    aget-byte v5, v1, v5

    add-int/lit8 v12, p2, 0x5

    .line 8
    aget-byte v12, v1, v12

    add-int/lit8 v12, p2, 0x6

    .line 9
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x7

    .line 10
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x8

    .line 11
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x9

    .line 12
    aget-byte v15, v1, v15

    new-array v6, v8, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v6, v7

    const/16 v10, 0xa

    .line 13
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    aput v2, v6, v7

    const/16 v2, 0xd

    .line 14
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xb

    new-array v10, v8, [I

    shr-int/lit8 v17, v3, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v10, v7

    .line 15
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v10, v3, 0x4

    and-int/2addr v10, v8

    aput v10, v6, v7

    const/16 v10, 0xc

    .line 16
    invoke-static {v10, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xe

    new-array v2, v8, [I

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 17
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v8, [I

    shr-int/lit8 v6, v5, 0x5

    and-int/2addr v6, v8

    aput v6, v3, v7

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    shr-int/lit8 v4, v5, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v12, 0xf

    if-eq v2, v11, :cond_5

    if-eq v2, v10, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    move v3, v7

    move v4, v3

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_2
    move v4, v7

    move v5, v4

    move v3, v8

    goto :goto_1

    :cond_3
    move v5, v7

    move v3, v8

    move v4, v3

    goto :goto_1

    :cond_4
    move v3, v7

    move v4, v8

    goto :goto_0

    :cond_5
    move v3, v7

    move v5, v3

    move v4, v8

    :goto_1
    const/16 v6, 0x13

    new-array v10, v8, [I

    aput v3, v10, v7

    .line 20
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v6, v8, [I

    aput v4, v6, v7

    .line 21
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v4, v8, [I

    aput v5, v4, v7

    .line 22
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 23
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    and-int/lit8 v4, v13, 0xf

    aput v4, v3, v7

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v14, 0xff

    const/4 v3, -0x3

    const/4 v4, -0x1

    const/16 v5, 0x1b

    const/4 v6, -0x2

    if-ne v14, v6, :cond_6

    new-array v2, v8, [I

    aput v6, v2, v7

    .line 25
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    if-ne v14, v4, :cond_7

    new-array v2, v8, [I

    aput v3, v2, v7

    .line 26
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v10, v8, [I

    aput v2, v10, v7

    .line 27
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    :goto_2
    and-int/lit16 v2, v15, 0xff

    const/16 v5, 0x1c

    if-ne v15, v6, :cond_8

    new-array v2, v8, [I

    aput v6, v2, v7

    .line 28
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    if-ne v15, v4, :cond_9

    new-array v2, v8, [I

    aput v3, v2, v7

    .line 29
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v3, v8, [I

    aput v2, v3, v7

    .line 30
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    .line 31
    :goto_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v2, 0xd

    add-int/lit8 v2, p2, 0xd

    .line 32
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    and-int/2addr v1, v2

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    .line 33
    div-int/2addr v1, v9

    const/16 v2, 0x190

    if-lt v1, v2, :cond_a

    const/16 v3, 0x4e2

    if-gt v1, v3, :cond_a

    add-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v1, v2

    goto :goto_4

    :cond_a
    sub-int/2addr v2, v1

    rsub-int v1, v2, 0x3e8

    :goto_4
    const/16 v2, 0x258

    if-le v1, v2, :cond_21

    .line 34
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_f

    .line 35
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 37
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_11

    if-eq v2, v9, :cond_c

    if-eq v2, v11, :cond_c

    if-eq v2, v4, :cond_c

    const/4 v3, 0x5

    if-eq v2, v3, :cond_c

    goto/16 :goto_f

    .line 38
    :cond_c
    iget v2, v0, Lk0/we;->h:I

    if-eq v1, v2, :cond_21

    if-le v1, v2, :cond_e

    move v2, v7

    .line 39
    :goto_5
    iget v3, v0, Lk0/we;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_d

    const/16 v3, 0x1f

    .line 40
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    const/16 v2, 0x1f

    .line 41
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_e
    if-ge v1, v2, :cond_10

    move v2, v7

    .line 42
    :goto_6
    iget v3, v0, Lk0/we;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_f

    const/16 v3, 0x1e

    .line 43
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    const/16 v2, 0x1e

    .line 44
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 45
    :cond_10
    :goto_7
    iput v1, v0, Lk0/we;->h:I

    goto/16 :goto_f

    .line 46
    :cond_11
    iget v2, v0, Lk0/we;->g:I

    if-eq v1, v2, :cond_21

    if-le v1, v2, :cond_13

    move v2, v7

    .line 47
    :goto_8
    iget v3, v0, Lk0/we;->g:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_12

    .line 48
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 49
    :cond_12
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_13
    if-ge v1, v2, :cond_15

    move v2, v7

    .line 50
    :goto_9
    iget v3, v0, Lk0/we;->g:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_14

    .line 51
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 52
    :cond_14
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 53
    :cond_15
    :goto_a
    iput v1, v0, Lk0/we;->g:I

    goto/16 :goto_f

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 54
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 55
    aget-byte v6, v1, v4

    if-ne v3, v5, :cond_18

    if-ne v6, v8, :cond_18

    .line 56
    iget v3, v0, Lk0/we;->f:I

    if-nez v3, :cond_17

    move v3, v8

    goto :goto_b

    :cond_17
    move v3, v7

    :goto_b
    iput v3, v0, Lk0/we;->f:I

    const/16 v5, 0x69

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 57
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    .line 58
    :cond_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 59
    aget-byte v2, v1, v2

    .line 60
    aget-byte v1, v1, v4

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 61
    iput v2, v0, Lk0/we;->c:I

    move v2, v7

    .line 62
    :goto_c
    iget-object v3, v0, Lk0/we;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1a

    .line 63
    iget v4, v0, Lk0/we;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_19

    if-eqz v4, :cond_1a

    .line 64
    iput v2, v0, Lk0/we;->b:I

    goto :goto_d

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    :goto_d
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_1b

    .line 65
    array-length v1, v3

    if-ge v2, v1, :cond_21

    .line 66
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    .line 67
    :cond_1b
    iget v1, v0, Lk0/we;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1c

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1d

    .line 68
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_1c
    const/16 v2, 0xff

    .line 69
    :cond_1d
    :goto_e
    iput v2, v0, Lk0/we;->b:I

    goto/16 :goto_f

    :cond_1e
    add-int/lit8 v2, p2, 0x4

    .line 70
    aget-byte v2, v1, v2

    const/4 v3, 0x5

    add-int/lit8 v3, p2, 0x5

    .line 71
    aget-byte v1, v1, v3

    const/16 v3, 0x6d

    new-array v4, v8, [I

    .line 72
    invoke-static {v2, v1}, Lo1/p0;->c(BB)I

    move-result v1

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    .line 73
    :cond_1f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_f

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 75
    aget-byte v3, v1, v3

    add-int/lit8 v6, p2, 0x4

    .line 76
    aget-byte v6, v1, v6

    add-int/lit8 v9, p2, 0x5

    .line 77
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x6

    .line 78
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x7

    .line 79
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x8

    .line 80
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x9

    .line 81
    aget-byte v1, v1, v13

    const/16 v13, 0x63

    new-array v14, v8, [I

    const/16 v15, 0xff

    and-int/2addr v3, v15

    aput v3, v14, v7

    .line 82
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v13, v8, [I

    and-int/2addr v6, v15

    aput v6, v13, v7

    .line 83
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v6, v8, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v15

    shl-int/2addr v2, v5

    and-int/lit16 v4, v9, 0xff

    or-int/2addr v2, v4

    aput v2, v6, v7

    .line 84
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    .line 85
    invoke-static {v10, v11}, Lo1/p0;->c(BB)I

    move-result v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    and-int/lit16 v4, v12, 0xff

    aput v4, v3, v7

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    and-int/2addr v1, v15

    aput v1, v3, v7

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_21
    :goto_f
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/we;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/we;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p3, 0x70

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v3, -0x66

    aput v3, v0, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 p1, 0x4

    aput v1, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
