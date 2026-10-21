.class public Lk0/dh;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Ljava/lang/Runnable;

.field public g:J

.field public h:B

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/dh;->b:I

    .line 3
    iput v0, p0, Lk0/dh;->d:I

    const/16 v1, 0x1b

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/16 v3, 0xe

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v3, 0xf

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v3, 0x11

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v3, 0x12

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v3, 0x13

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v3, 0x14

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v3, 0x15

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v3, 0x16

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v3, 0x18

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_19

    const/16 v3, 0x19

    aput-object v0, v1, v3

    new-array v0, v2, [I

    fill-array-data v0, :array_1a

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    iput-object v1, p0, Lk0/dh;->e:[[I

    .line 5
    new-instance v0, Lk0/dh$a;

    invoke-direct {v0, p0}, Lk0/dh$a;-><init>(Lk0/dh;)V

    iput-object v0, p0, Lk0/dh;->f:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lk0/dh;->g:J

    const/4 v0, -0x1

    .line 7
    iput-byte v0, p0, Lk0/dh;->h:B

    .line 8
    new-instance v0, Lk0/dh$b;

    invoke-direct {v0, p0}, Lk0/dh$b;-><init>(Lk0/dh;)V

    iput-object v0, p0, Lk0/dh;->i:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lk0/dh$c;

    invoke-direct {v0, p0}, Lk0/dh$c;-><init>(Lk0/dh;)V

    iput-object v0, p0, Lk0/dh;->j:Ljava/lang/Runnable;

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
        0x5
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x4c
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

    :array_9
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x23
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x1d
    .end array-data

    :array_c
    .array-data 4
        0x19
        0xd
    .end array-data

    :array_d
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x11
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x12
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x13
        0x1e
    .end array-data

    :array_11
    .array-data 4
        0x14
        0x1f
    .end array-data

    :array_12
    .array-data 4
        0x15
        0x18
    .end array-data

    :array_13
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x18
        0x19
    .end array-data

    :array_16
    .array-data 4
        0x1b
        0x5
    .end array-data

    :array_17
    .array-data 4
        0x1f
        0x10
    .end array-data

    :array_18
    .array-data 4
        0x20
        0x3a
    .end array-data

    :array_19
    .array-data 4
        0x21
        0x26
    .end array-data

    :array_1a
    .array-data 4
        0x22
        0xb
    .end array-data
.end method

.method public static synthetic b3(Lk0/dh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/dh;->g:J

    return-wide v0
.end method

.method public static synthetic c3(Lk0/dh;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/dh;->g:J

    return-wide p1
.end method

.method public static synthetic d3(Lk0/dh;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lk0/dh;->h:B

    return p0
.end method

.method public static synthetic e3(Lk0/dh;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lk0/dh;->h:B

    return p1
.end method

.method public static synthetic f3(Lk0/dh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/dh;->a3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/dh;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_0

    .line 9
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/dh;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/dh;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/dh;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/dh;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v2, 0xc1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v8, :cond_10

    const/16 v11, 0x10

    const/16 v12, 0xa

    if-eq v2, v12, :cond_e

    const/16 v14, 0x35

    const/4 v12, 0x5

    if-eq v2, v14, :cond_c

    const/16 v14, 0x7f

    if-eq v2, v14, :cond_b

    const/4 v14, 0x4

    if-eq v2, v14, :cond_9

    if-eq v2, v12, :cond_4

    const/4 v13, 0x6

    if-eq v2, v13, :cond_2

    const/16 v13, 0x37

    if-eq v2, v13, :cond_1

    const/16 v7, 0x38

    if-eq v2, v7, :cond_0

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, p2, 0x3

    .line 3
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v13, p2, 0x4

    .line 4
    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v16, p2, 0x5

    .line 5
    aget-byte v16, v1, v16

    add-int/lit8 v16, p2, 0x6

    .line 6
    aget-byte v14, v1, v16

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v16, p2, 0x7

    .line 7
    aget-byte v3, v1, v16

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v16, p2, 0x8

    .line 8
    aget-byte v12, v1, v16

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v16, p2, 0x9

    .line 9
    aget-byte v4, v1, v16

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v16, p2, 0xa

    .line 10
    aget-byte v5, v1, v16

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v16, p2, 0xb

    .line 11
    aget-byte v8, v1, v16

    and-int/lit16 v8, v8, 0xff

    const/16 v15, 0xe

    new-array v6, v10, [I

    aput v2, v6, v9

    .line 12
    invoke-static {v15, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v6, v7, 0x7

    and-int/2addr v6, v10

    aput v6, v2, v9

    const/16 v6, 0xf

    .line 13
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v15, v7, 0x6

    and-int/2addr v15, v10

    aput v15, v2, v9

    .line 14
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    .line 15
    iput v15, v0, Lk0/dh;->b:I

    const/16 v2, 0x11

    new-array v11, v10, [I

    shr-int/lit8 v15, v7, 0x4

    const/16 v17, 0x3

    and-int/lit8 v15, v15, 0x3

    aput v15, v11, v9

    .line 16
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v11, v10, [I

    shr-int/lit8 v15, v7, 0x3

    and-int/2addr v15, v10

    aput v15, v11, v9

    .line 17
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v11, v10, [I

    shr-int/lit8 v15, v7, 0x2

    and-int/2addr v15, v10

    aput v15, v11, v9

    .line 18
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v11, v10, [I

    shr-int/2addr v7, v9

    const/4 v15, 0x3

    and-int/2addr v7, v15

    aput v7, v11, v9

    .line 19
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v7, v10, [I

    aput v13, v7, v9

    .line 20
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v7, v10, [I

    shr-int/lit8 v11, v14, 0x4

    and-int/2addr v11, v6

    aput v11, v7, v9

    .line 21
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v7, v10, [I

    shr-int/lit8 v11, v14, 0x0

    and-int/2addr v6, v11

    aput v6, v7, v9

    .line 22
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v6, v10, [I

    and-int/lit16 v3, v3, 0xff

    aput v3, v6, v9

    .line 23
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v12, v2, v9

    const/16 v3, 0x18

    .line 24
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1b

    new-array v3, v10, [I

    aput v8, v3, v9

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    const/16 v3, 0xc

    add-int/lit8 v3, p2, 0xc

    .line 28
    aget-byte v4, v1, v3

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v2, v9

    const/16 v4, 0x1e

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 29
    aget-byte v4, v1, v3

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v2, v9

    const/16 v4, 0x1f

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v4, v10, [I

    .line 30
    aget-byte v1, v1, v3

    const/4 v3, 0x4

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_1
    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x2

    .line 31
    aget-byte v3, v1, v3

    shl-int/2addr v3, v7

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v9

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x4

    .line 32
    aget-byte v3, v1, v3

    shl-int/2addr v3, v7

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v9

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x6

    .line 33
    aget-byte v3, v1, v3

    shl-int/2addr v3, v7

    const v4, 0xff00

    and-int/2addr v3, v4

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    aput v1, v2, v9

    const/16 v1, 0xc

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_2
    const/4 v2, 0x2

    add-int/lit8 v3, p2, 0x2

    .line 34
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    const-string v3, "persist.syu.reversefrontdoor"

    .line 35
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 37
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 38
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 39
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 40
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x3

    .line 41
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x5

    .line 42
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    const/4 v3, 0x2

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 43
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 44
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x3

    .line 45
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x4

    .line 46
    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x5

    add-int/lit8 v8, p2, 0x5

    .line 47
    aget-byte v11, v1, v8

    and-int/lit16 v11, v11, 0xff

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v7, :cond_5

    if-nez v11, :cond_5

    .line 48
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 49
    :cond_5
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_6

    sget v9, Ll0/c0;->h:I

    if-ne v9, v5, :cond_6

    sget v9, Ll0/c0;->i:I

    if-ne v9, v7, :cond_6

    sget v9, Ll0/c0;->j:I

    if-eq v9, v11, :cond_7

    .line 50
    :cond_6
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_7

    .line 51
    invoke-static {v10}, Lu0/d;->C2(I)V

    const/4 v9, 0x4

    .line 52
    sput v9, Ll0/c0;->k:I

    .line 53
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 54
    :cond_7
    :goto_1
    sput v3, Ll0/c0;->g:I

    .line 55
    sput v5, Ll0/c0;->h:I

    .line 56
    sput v7, Ll0/c0;->i:I

    .line 57
    sput v11, Ll0/c0;->j:I

    .line 58
    sget v3, Lk0/nt;->c:I

    const/16 v5, 0xc1

    if-ne v3, v5, :cond_8

    .line 59
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->z1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 60
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->z1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 61
    aget-byte v2, v1, v6

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->z1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 62
    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->z1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    .line 63
    :cond_8
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->y1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 64
    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->y1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 65
    aget-byte v2, v1, v6

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->y1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 66
    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->y1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    .line 67
    :cond_9
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_a

    add-int/lit8 v2, p2, 0x2

    .line 68
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->z1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 69
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->z1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 70
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->z1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 71
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->z1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->y1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 73
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->y1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 74
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ll0/c0;->y1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 75
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ll0/c0;->y1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    .line 76
    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_c
    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x4

    .line 77
    aget-byte v3, v1, v3

    shl-int/2addr v3, v7

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v9

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x6

    .line 78
    aget-byte v4, v1, v3

    shl-int/2addr v4, v7

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    aput v4, v2, v9

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v4, v10, [I

    .line 79
    aget-byte v3, v1, v3

    shl-int/2addr v3, v7

    const v6, 0xff00

    and-int/2addr v3, v6

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    aput v3, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 80
    iget v2, v0, Lk0/dh;->b:I

    const/16 v3, 0x9

    if-ne v2, v10, :cond_d

    add-int/lit8 v2, p2, 0x8

    .line 81
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x258

    const v4, 0x8000

    or-int/2addr v2, v4

    goto :goto_2

    :cond_d
    add-int/lit8 v2, p2, 0x8

    .line 82
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x5

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x258

    .line 83
    :goto_2
    invoke-static {v2}, Lu0/d;->A3(I)V

    new-array v2, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 84
    aget-byte v4, v1, v4

    const/16 v5, 0x18

    shl-int/2addr v4, v5

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    shl-int/2addr v5, v11

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    shl-int/2addr v5, v7

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    const/16 v5, 0xc

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    shl-int/2addr v1, v9

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v2, v9

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_e
    add-int/lit8 v2, p2, 0x3

    .line 85
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x4

    .line 86
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    add-int/lit8 v6, p2, 0x2

    .line 87
    aget-byte v8, v1, v6

    and-int/2addr v8, v10

    shl-int/2addr v5, v7

    const v7, 0xff00

    and-int/2addr v5, v7

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    const v5, 0xffff

    and-int/2addr v3, v5

    const/16 v5, 0x1d

    new-array v7, v10, [I

    shl-int/2addr v8, v11

    or-int/2addr v3, v8

    aput v3, v7, v9

    .line 88
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    .line 89
    aget-byte v2, v1, v2

    aget-byte v3, v1, v4

    aget-byte v1, v1, v6

    and-int/2addr v1, v10

    if-ne v1, v10, :cond_f

    goto :goto_3

    :cond_f
    move v9, v10

    :goto_3
    const/16 v1, 0x1e0

    invoke-static {v2, v3, v9, v1}, Lk0/qt;->j(IIII)V

    goto/16 :goto_a

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 91
    aget-byte v1, v1, v3

    and-int/lit16 v2, v2, 0xff

    .line 92
    iput v2, v0, Lk0/dh;->d:I

    move v2, v9

    .line 93
    :goto_4
    iget-object v3, v0, Lk0/dh;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 94
    iget v4, v0, Lk0/dh;->d:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_11

    if-eqz v4, :cond_12

    .line 95
    iput v2, v0, Lk0/dh;->c:I

    goto :goto_5

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 96
    :cond_12
    :goto_5
    iget v4, v0, Lk0/dh;->d:I

    packed-switch v4, :pswitch_data_0

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_17

    .line 97
    array-length v1, v3

    if-ge v2, v1, :cond_17

    .line 98
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 99
    iget-object v1, v0, Lk0/dh;->e:[[I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_a

    :pswitch_0
    move v2, v9

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_13

    const/16 v3, 0x1e

    .line 100
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    const/16 v3, 0x1e

    .line 101
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_a

    :pswitch_1
    move v2, v9

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    const/16 v3, 0x1f

    .line 102
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    const/16 v3, 0x1f

    .line 103
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_a

    :pswitch_2
    move v2, v9

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_15

    .line 104
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 105
    :cond_15
    invoke-static {v7, v10}, Ll0/b0;->l0(II)V

    goto :goto_a

    :pswitch_3
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_16

    const/4 v3, 0x7

    .line 106
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    const/4 v3, 0x7

    .line 107
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    :cond_17
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/dh;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/dh;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/dh;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/dh;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/dh;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x21

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

    const/16 p3, 0xc6

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

.method public final a3(I)V
    .locals 8

    const/16 v0, 0xa

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/16 v5, 0xff

    const/4 v6, 0x2

    if-eqz p1, :cond_1

    const/16 v7, 0x12

    if-eq p1, v7, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move v0, v5

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    move v0, v3

    goto :goto_0

    :pswitch_7
    move v0, v6

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    :pswitch_9
    if-eq v0, v5, :cond_2

    new-array p1, v3, [I

    const/4 v3, 0x0

    const/16 v5, 0xe3

    aput v5, p1, v3

    const/16 v3, 0xc6

    aput v3, p1, v4

    aput v6, p1, v6

    const/16 v3, 0xc

    aput v3, p1, v1

    aput v0, p1, v2

    .line 1
    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
