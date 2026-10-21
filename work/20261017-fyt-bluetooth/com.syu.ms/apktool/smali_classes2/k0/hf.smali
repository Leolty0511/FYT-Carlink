.class public Lk0/hf;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:J

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/hf;->c:I

    const/16 v1, 0x1a

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

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_19

    const/16 v3, 0x19

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/hf;->d:[[I

    .line 4
    iput v0, p0, Lk0/hf;->e:I

    .line 5
    new-instance v0, Lk0/hf$a;

    invoke-direct {v0, p0}, Lk0/hf$a;-><init>(Lk0/hf;)V

    iput-object v0, p0, Lk0/hf;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lk0/hf$b;

    invoke-direct {v0, p0}, Lk0/hf$b;-><init>(Lk0/hf;)V

    iput-object v0, p0, Lk0/hf;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/hf$c;

    invoke-direct {v0, p0}, Lk0/hf$c;-><init>(Lk0/hf;)V

    iput-object v0, p0, Lk0/hf;->h:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lk0/hf;->i:J

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lk0/hf;->j:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lk0/hf;->k:F

    const/16 v0, 0xff

    .line 11
    iput v0, p0, Lk0/hf;->l:I

    .line 12
    iput v0, p0, Lk0/hf;->m:I

    .line 13
    new-instance v0, Lk0/hf$d;

    invoke-direct {v0, p0}, Lk0/hf$d;-><init>(Lk0/hf;)V

    iput-object v0, p0, Lk0/hf;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/hf$e;

    invoke-direct {v0, p0}, Lk0/hf$e;-><init>(Lk0/hf;)V

    iput-object v0, p0, Lk0/hf;->o:Ljava/lang/Runnable;

    return-void

    nop

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

    :array_e
    .array-data 4
        0x15
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x16
        0x5
    .end array-data

    :array_10
    .array-data 4
        0x17
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x18
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x19
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x1a
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x1b
        0x19
    .end array-data

    :array_15
    .array-data 4
        0x1d
        0x1a
    .end array-data

    :array_16
    .array-data 4
        0x1e
        0x1a
    .end array-data

    :array_17
    .array-data 4
        0x1f
        0x3e
    .end array-data

    :array_18
    .array-data 4
        0x20
        0xc
    .end array-data

    :array_19
    .array-data 4
        0x21
        0xc
    .end array-data
.end method

.method public static synthetic b3(Lk0/hf;II[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/hf;->o3(II[I)V

    return-void
.end method

.method public static synthetic c3(Lk0/hf;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/hf;->i:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/hf;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/hf;->i:J

    return-wide p1
.end method

.method public static synthetic e3(Lk0/hf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/hf;->j:I

    return p0
.end method

.method public static synthetic f3(Lk0/hf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/hf;->j:I

    return p1
.end method

.method public static synthetic g3(Lk0/hf;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/hf;->k:F

    return p0
.end method

.method public static synthetic h3(Lk0/hf;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/hf;->k:F

    return p1
.end method

.method public static synthetic i3(Lk0/hf;F)F
    .locals 1

    .line 1
    iget v0, p0, Lk0/hf;->k:F

    rem-float/2addr v0, p1

    iput v0, p0, Lk0/hf;->k:F

    return v0
.end method

.method public static synthetic j3(Lk0/hf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/hf;->m:I

    return p0
.end method

.method public static synthetic k3(Lk0/hf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/hf;->m:I

    return p1
.end method

.method public static synthetic l3(Lk0/hf;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/hf;->l:I

    return p0
.end method

.method public static synthetic m3(Lk0/hf;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/hf;->l:I

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

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/16 v2, 0x405

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v0, v1, Lk0/mt;->e:I

    .line 4
    iput v0, v1, Lk0/mt;->f:I

    .line 5
    iput v0, v1, Lk0/mt;->g:I

    .line 6
    iput v0, v1, Lk0/mt;->i:I

    .line 7
    sget-object v1, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lk0/hf;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lk0/hf;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v1, p0, Lk0/hf;->h:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 10
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/hf;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v1, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lk0/hf;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_1e

    const/16 v7, 0x17

    if-eq v1, v7, :cond_1a

    const/16 v7, 0x19

    const/4 v8, 0x3

    if-eq v1, v7, :cond_19

    const/16 v7, 0x20

    if-eq v1, v7, :cond_11

    const/16 v7, 0x24

    const/4 v10, 0x4

    if-eq v1, v7, :cond_f

    const/16 v7, 0x14

    if-eq v1, v7, :cond_e

    const/16 v12, 0x15

    if-eq v1, v12, :cond_c

    const/16 v13, 0x1d

    if-eq v1, v13, :cond_b

    const/16 v14, 0x1e

    if-eq v1, v14, :cond_a

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1e78

    invoke-static {v1, v2, v6, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    add-int/lit8 v2, p2, 0x3

    .line 4
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x4

    .line 5
    aget-byte v8, p1, v3

    and-int/2addr v8, v4

    add-int/lit8 v10, p2, 0x5

    .line 6
    aget-byte v14, p1, v10

    and-int/2addr v14, v4

    add-int/lit8 v15, p2, 0x6

    .line 7
    aget-byte v15, p1, v15

    and-int/2addr v15, v4

    add-int/lit8 v16, p2, 0x7

    .line 8
    aget-byte v11, p1, v16

    and-int/2addr v11, v4

    add-int/lit8 v16, p2, 0x8

    .line 9
    aget-byte v13, p1, v16

    and-int/2addr v13, v4

    add-int/lit8 v16, p2, 0x9

    .line 10
    aget-byte v9, p1, v16

    and-int/2addr v9, v4

    new-array v4, v6, [I

    shr-int/lit8 v17, v1, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v4, v5

    const/16 v12, 0xa

    .line 11
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/lit8 v12, v1, 0x6

    and-int/2addr v12, v6

    aput v12, v4, v5

    const/16 v12, 0xb

    .line 12
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v12, v6, [I

    shr-int/lit8 v18, v1, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    .line 13
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v12, v6, [I

    shr-int/lit8 v18, v1, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    .line 14
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v12, v6, [I

    shr-int/lit8 v18, v1, 0x2

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    .line 15
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v12, v6, [I

    shr-int/lit8 v18, v1, 0x1

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    .line 16
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v12, v6, [I

    and-int/2addr v1, v6

    aput v1, v12, v5

    .line 17
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x12

    new-array v4, v6, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v6

    aput v12, v4, v5

    .line 18
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v4, v6, [I

    shr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v6

    aput v12, v4, v5

    .line 19
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v6

    aput v4, v1, v5

    .line 20
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v1, v5

    const/16 v2, 0x15

    .line 21
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.reversetemp"

    .line 22
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    aget-byte v1, p1, v10

    const/16 v2, 0xff

    and-int/lit16 v8, v1, 0xff

    .line 24
    aget-byte v1, p1, v3

    and-int/lit16 v14, v1, 0xff

    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eqz v8, :cond_3

    const/16 v4, 0x1f

    if-eq v8, v4, :cond_2

    if-lt v8, v6, :cond_1

    const/16 v4, 0x1d

    if-gt v8, v4, :cond_1

    sub-int/2addr v8, v6

    const/4 v4, 0x5

    mul-int/2addr v8, v4

    add-int/lit16 v8, v8, 0xb4

    goto :goto_0

    :cond_1
    move v8, v1

    goto :goto_0

    :cond_2
    move v8, v2

    goto :goto_0

    :cond_3
    move v8, v3

    :goto_0
    const/16 v4, 0x1b

    new-array v7, v6, [I

    aput v8, v7, v5

    .line 25
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    if-eqz v14, :cond_6

    const/16 v4, 0x1f

    if-eq v14, v4, :cond_5

    if-lt v14, v6, :cond_4

    const/16 v4, 0x1d

    if-gt v14, v4, :cond_4

    sub-int/2addr v14, v6

    const/4 v4, 0x5

    mul-int/2addr v14, v4

    add-int/lit16 v14, v14, 0xb4

    goto :goto_1

    :cond_4
    move v14, v1

    goto :goto_1

    :cond_5
    move v14, v2

    goto :goto_1

    :cond_6
    move v14, v3

    :goto_1
    const/16 v4, 0x1c

    new-array v7, v6, [I

    aput v14, v7, v5

    .line 26
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x31

    new-array v7, v6, [I

    shr-int/lit8 v8, v15, 0x7

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 27
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x43

    new-array v7, v6, [I

    shr-int/lit8 v8, v15, 0x2

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 28
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x26

    new-array v7, v6, [I

    shr-int/lit8 v8, v15, 0x1

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 29
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x25

    new-array v7, v6, [I

    shr-int/lit8 v8, v15, 0x0

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 30
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xff

    and-int/2addr v4, v11

    const/4 v7, 0x5

    mul-int/2addr v4, v7

    add-int/lit16 v4, v4, -0x190

    add-int/lit16 v4, v4, 0x3e8

    .line 31
    invoke-static {v4}, Lu0/d;->A3(I)V

    if-eqz v13, :cond_8

    const/16 v4, 0x1f

    if-eq v13, v4, :cond_7

    if-lt v13, v6, :cond_9

    const/16 v2, 0x1d

    if-gt v13, v2, :cond_9

    sub-int/2addr v13, v6

    mul-int/2addr v13, v7

    add-int/lit16 v1, v13, 0xb4

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v1, v3

    :cond_9
    :goto_2
    const/16 v2, 0x28

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2a

    new-array v2, v6, [I

    shr-int/lit8 v3, v9, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 33
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2e

    new-array v2, v6, [I

    shr-int/lit8 v3, v9, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 34
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2f

    new-array v2, v6, [I

    shr-int/lit8 v3, v9, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 35
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2b

    new-array v2, v6, [I

    shr-int/lit8 v3, v9, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 36
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x2c

    new-array v2, v6, [I

    and-int/lit8 v3, v9, 0xf

    aput v3, v2, v5

    .line 37
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_2
    const/16 v1, 0x7b

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 38
    aget-byte v7, p1, v7

    const/16 v9, 0xff

    and-int/2addr v7, v9

    aput v7, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7c

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 39
    aget-byte v9, p1, v7

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7d

    new-array v4, v6, [I

    .line 40
    aget-byte v7, p1, v7

    shr-int/2addr v7, v2

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7e

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 41
    aget-byte v9, p1, v7

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7f

    new-array v4, v6, [I

    .line 42
    aget-byte v9, p1, v7

    shr-int/2addr v9, v2

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x80

    new-array v4, v6, [I

    .line 43
    aget-byte v9, p1, v7

    const/4 v11, 0x5

    shr-int/2addr v9, v11

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x81

    new-array v4, v6, [I

    .line 44
    aget-byte v9, p1, v7

    shr-int/2addr v9, v10

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x82

    new-array v4, v6, [I

    .line 45
    aget-byte v9, p1, v7

    shr-int/2addr v9, v8

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x83

    new-array v4, v6, [I

    .line 46
    aget-byte v7, p1, v7

    shr-int/2addr v7, v3

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x84

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 47
    aget-byte v9, p1, v7

    shr-int/lit8 v2, v9, 0x6

    and-int/2addr v2, v8

    aput v2, v4, v5

    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x85

    new-array v2, v6, [I

    .line 48
    aget-byte v4, p1, v7

    const/4 v9, 0x5

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x86

    new-array v2, v6, [I

    .line 49
    aget-byte v4, p1, v7

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x87

    new-array v2, v6, [I

    .line 50
    aget-byte v4, p1, v7

    shr-int/lit8 v3, v4, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x88

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x6

    .line 51
    aget-byte v3, p1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x89

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x7

    .line 52
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x8

    aget-byte v4, p1, v4

    const/16 v7, 0xff

    and-int/2addr v4, v7

    or-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8a

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x9

    .line 53
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8b

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0xa

    .line 54
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8c

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0xb

    .line 55
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8d

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0xc

    .line 56
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8e

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0xd

    .line 57
    aget-byte v3, p1, v3

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8f

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0xe

    .line 58
    aget-byte v4, p1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x90

    new-array v2, v6, [I

    .line 59
    aget-byte v4, p1, v3

    const/4 v7, 0x5

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x91

    new-array v2, v6, [I

    .line 60
    aget-byte v3, p1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v1, p2, 0x2

    .line 61
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 62
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 63
    aget-byte v3, p1, v3

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 64
    aget-byte v4, p1, v4

    const/16 v5, 0xff

    and-int/2addr v1, v5

    .line 65
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    and-int/lit16 v1, v2, 0xff

    .line 66
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    and-int/lit16 v1, v3, 0xff

    .line 67
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    and-int/lit16 v1, v4, 0xff

    .line 68
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v1, p2, 0x2

    .line 69
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 70
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 71
    aget-byte v3, p1, v3

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 72
    aget-byte v4, p1, v4

    const/16 v7, 0xff

    and-int/2addr v1, v7

    .line 73
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    and-int/lit16 v1, v2, 0xff

    .line 74
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    and-int/lit16 v1, v3, 0xff

    .line 75
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    and-int/lit16 v1, v4, 0xff

    .line 76
    invoke-virtual {v0, v1}, Lk0/hf;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :cond_c
    move v7, v4

    add-int/lit8 v1, p2, 0x2

    .line 77
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    const/16 v2, 0x3f5

    new-array v3, v6, [I

    and-int/lit8 v4, v1, 0xf

    aput v4, v3, v5

    .line 78
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eqz v1, :cond_d

    .line 79
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 80
    :cond_d
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v1, p2, 0x2

    .line 81
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 82
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 83
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 84
    aget-byte v4, p1, v4

    add-int/lit8 v7, p2, 0x6

    .line 85
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x7

    .line 86
    aget-byte v8, p1, v8

    const/16 v9, 0x69

    new-array v11, v6, [I

    aput v1, v11, v5

    .line 87
    invoke-static {v9, v11}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v9, v6, [I

    const/16 v11, 0xff

    and-int/2addr v2, v11

    and-int/lit8 v12, v3, 0xf

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v2, v12

    aput v2, v9, v5

    .line 88
    invoke-static {v1, v9}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v2, v6, [I

    shr-int/2addr v3, v10

    and-int/lit8 v3, v3, 0xf

    and-int/2addr v4, v11

    shl-int/2addr v4, v10

    or-int/2addr v3, v4

    aput v3, v2, v5

    .line 89
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x67

    new-array v2, v6, [I

    and-int/lit8 v3, v7, 0x7

    aput v3, v2, v5

    .line 90
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v6, [I

    shr-int/lit8 v3, v7, 0x3

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v5

    .line 91
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x71

    new-array v2, v6, [I

    shr-int/lit8 v3, v7, 0x6

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 92
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x72

    new-array v2, v6, [I

    shr-int/lit8 v3, v7, 0x7

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 93
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x73

    new-array v2, v6, [I

    and-int/lit8 v3, v8, 0x7

    aput v3, v2, v5

    .line 94
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v1, p2, 0x2

    .line 95
    aget-byte v1, p1, v1

    const-string v2, "persist.syu.reversefrontdoor"

    .line 96
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 97
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 98
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 99
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 100
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 101
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 102
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v2, v5

    const/4 v1, 0x5

    .line 103
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_11
    add-int/lit8 v1, p2, 0x2

    .line 104
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 105
    aget-byte v2, p1, v2

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .line 106
    iput v1, v0, Lk0/hf;->c:I

    move v1, v5

    .line 107
    :goto_4
    iget-object v3, v0, Lk0/hf;->d:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_13

    .line 108
    iget v4, v0, Lk0/hf;->c:I

    aget-object v7, v3, v1

    aget v7, v7, v5

    if-ne v4, v7, :cond_12

    if-eqz v4, :cond_13

    .line 109
    iput v1, v0, Lk0/hf;->b:I

    goto :goto_5

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 110
    :cond_13
    :goto_5
    iget v4, v0, Lk0/hf;->c:I

    const/16 v7, 0x1f

    if-eq v4, v7, :cond_17

    const/16 v4, 0xff

    and-int/2addr v2, v4

    if-eqz v2, :cond_14

    .line 111
    array-length v2, v3

    if-ge v1, v2, :cond_1f

    .line 112
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 113
    :cond_14
    iget v1, v0, Lk0/hf;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_15

    const/16 v2, 0xff

    if-eq v1, v2, :cond_16

    .line 114
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_15
    const/16 v2, 0xff

    .line 115
    :cond_16
    :goto_6
    iput v2, v0, Lk0/hf;->b:I

    goto/16 :goto_9

    .line 116
    :cond_17
    iget v1, v0, Lk0/hf;->e:I

    if-nez v1, :cond_18

    .line 117
    iput v6, v0, Lk0/hf;->e:I

    goto :goto_7

    .line 118
    :cond_18
    iput v5, v0, Lk0/hf;->e:I

    :goto_7
    const/16 v1, 0x92

    new-array v2, v6, [I

    .line 119
    iget v3, v0, Lk0/hf;->e:I

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_19
    const/16 v1, 0x76

    new-array v2, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 120
    aget-byte v7, p1, v4

    shr-int/2addr v7, v5

    and-int/2addr v7, v8

    aput v7, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x77

    new-array v2, v6, [I

    .line 121
    aget-byte v7, p1, v4

    shr-int/lit8 v3, v7, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x78

    new-array v2, v6, [I

    .line 122
    aget-byte v3, p1, v4

    shr-int/2addr v3, v8

    and-int/2addr v3, v6

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7a

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x3

    .line 123
    aget-byte v3, p1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    aput v3, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1a
    add-int/lit8 v1, p2, 0x2

    .line 124
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v6

    .line 125
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_1c

    if-eqz v3, :cond_1b

    .line 126
    sget-object v3, La/b;->O:Ljava/lang/String;

    invoke-static {v3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 127
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_8

    .line 128
    :cond_1b
    sget-object v3, La/b;->O:Ljava/lang/String;

    invoke-static {v3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 129
    invoke-static {}, Lk0/qt;->f()V

    :cond_1c
    :goto_8
    shr-int/2addr v1, v2

    and-int/2addr v1, v6

    if-eqz v1, :cond_1d

    .line 130
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    .line 131
    :cond_1d
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_9

    :cond_1e
    const/16 v1, 0x6a

    new-array v2, v6, [I

    add-int/lit8 v3, p2, 0x2

    .line 132
    aget-byte v4, p1, v3

    const/16 v6, 0xff

    and-int/2addr v4, v6

    aput v4, v2, v5

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 133
    aget-byte v1, p1, v3

    and-int/2addr v1, v6

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_3
    const-string v1, "\u65e0\u6cd5\u542f\u52a8\uff0c\u8bf7\u8054\u7cfb\u670d\u52a1\u5e97\u7ef4\u4fee"

    .line 134
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_4
    const-string v1, "\u71c3\u6cb9\u4e0d\u8db3\uff0c\u662f\u5426\u5bfc\u822a\u81f3\u52a0\u6cb9\u7ad9"

    .line 135
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_5
    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u5b89\u5168\uff0c\u8bf7\u7cfb\u597d\u5b89\u5168\u5e26"

    .line 136
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_6
    const-string v1, "\u5b66\u4e60\u5b8c\u6bd5"

    .line 137
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_7
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u8fdb\u5165\u5de5\u4f5c\u6a21\u5f0f"

    .line 138
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_8
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u8fdb\u5165\u6f14\u793a\u6a21\u5f0f"

    .line 139
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_9
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u5173\u95ed"

    .line 140
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_a
    const-string v1, "\u75b2\u52b3\u9884\u8b66\u7cfb\u7edf\u5df2\u5f00\u542f"

    .line 141
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_b
    const-string v1, "\u81ea\u52a8\u706f\u5149\u5df2\u5173\u95ed"

    .line 142
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_c
    const-string v1, "\u81ea\u52a8\u706f\u5149\u5df2\u5f00\u542f"

    .line 143
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_d
    const-string v1, "\u8bf7\u4e13\u5fc3\u9a7e\u9a76"

    .line 144
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_e
    const-string v1, "\u8bf7\u8f7b\u8f7b\u8f6c\u52a8\u65b9\u5411\u76d8\uff0c\u518d\u5c1d\u8bd5\u542f\u52a8"

    .line 145
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_f
    const-string v1, "\u94a5\u5319\u7535\u6c60\u7535\u91cf\u4f4e\uff0c\u8bf7\u53ca\u65f6\u66f4\u6362"

    .line 146
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_10
    const-string v1, "\u8bf7\u5173\u597d\u8f66\u95e8"

    .line 147
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_11
    const-string v1, "\u4e3a\u4e86\u60a8\u7684\u7231\u8f66\uff0c\u8bf7\u89e3\u9664\u9a7b\u8f66\u5236\u52a8"

    .line 148
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_12
    const-string v1, "\u8bf7\u786e\u8ba4\u94a5\u5319\u662f\u5426\u5728\u8f66\u5185"

    .line 149
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_13
    const-string v1, "\u8bf7\u5c06\u94a5\u5319\u7d27\u8d34\u542f\u52a8\u6309\u94ae"

    .line 150
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_14
    const-string v1, "\u8bf7\u505c\u6b62\u8f66\u8f86\u518d\u6309\u542f\u52a8\u6309\u94ae"

    .line 151
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_15
    const-string v1, "\u8bf7\u5e38\u6309\u542f\u52a8\u6309\u94ae\u9000\u7535"

    .line 152
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_16
    const-string v1, "\u8bf7\u5c06\u6863\u4f4d\u5207\u6362\u81f3 P \u6863\u57df"

    .line 153
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_17
    const-string v1, "\u8bf7\u957f\u6309\u542f\u52a8\u6309\u94ae\u542f\u52a8"

    .line 154
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_18
    const-string v1, "\u84c4\u7535\u6c60\u7535\u538b\u4f4e\uff0c\u4e09\u5206\u949f\u540e\u5c06\u5173\u95ed\u591a\u5a92\u4f53\u7cfb\u7edf"

    .line 155
    invoke-virtual {v0, v1}, Lk0/hf;->n3(Ljava/lang/String;)V

    goto :goto_9

    .line 156
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lk0/hf;->p3()V

    :cond_1f
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/hf;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/hf;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/hf;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/hf;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x93

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

    const/4 p3, 0x2

    if-eqz p1, :cond_6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 p3, 0x3f8

    if-eq p1, p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x9

    new-array p3, p4, [I

    const/4 v0, 0x0

    .line 2
    aget p2, p2, v0

    if-ne p2, p4, :cond_1

    const/16 p2, 0x80

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    aput p2, p3, v0

    invoke-virtual {p0, p1, p4, p3}, Lk0/hf;->o3(II[I)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x75

    .line 4
    invoke-virtual {p0, p1, p3, p2}, Lk0/hf;->o3(II[I)V

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x82

    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lk0/hf;->o3(II[I)V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x78

    .line 8
    invoke-virtual {p0, p1, p4, p2}, Lk0/hf;->o3(II[I)V

    goto :goto_1

    .line 9
    :cond_5
    invoke-virtual {p0, p2, p4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x79

    .line 10
    invoke-virtual {p0, p1, p4, p2}, Lk0/hf;->o3(II[I)V

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0xe0

    .line 12
    invoke-virtual {p0, p1, p3, p2}, Lk0/hf;->o3(II[I)V

    :cond_7
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

.method public final n3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.execute_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "raw_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.syu.voice"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final varargs o3(II[I)V
    .locals 3

    .line 1
    array-length v0, p3

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    .line 2
    aput v1, v0, v2

    const/4 v1, 0x1

    .line 3
    aput p1, v0, v1

    const/4 v1, 0x2

    .line 4
    aput p2, v0, v1

    add-int/2addr p1, p2

    int-to-byte p1, p1

    .line 5
    :goto_0
    array-length p2, p3

    if-ge v2, p2, :cond_0

    .line 6
    aget p2, p3, v2

    add-int/2addr p1, p2

    int-to-byte p1, p1

    add-int/lit8 p2, v2, 0x3

    .line 7
    aget v1, p3, v2

    aput v1, v0, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    array-length p2, p3

    add-int/lit8 p2, p2, 0x3

    xor-int/lit16 p1, p1, 0xff

    aput p1, v0, p2

    .line 9
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public p3()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.cancle_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.syu.voice"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
