.class public Lk0/oi;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:[I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:I

.field public k:[[I

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Z

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lk0/oi;->b:[I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lk0/oi;->c:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lk0/oi;->d:[I

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Lk0/oi;->e:[I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lk0/oi;->g:I

    const/16 v2, 0x15

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

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

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    const/16 v4, 0xf

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    const/16 v4, 0x10

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_11

    const/16 v4, 0x11

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_12

    const/16 v4, 0x12

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_13

    const/16 v4, 0x13

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_14

    const/16 v4, 0x14

    aput-object v0, v2, v4

    iput-object v2, p0, Lk0/oi;->h:[[I

    .line 8
    iput v1, p0, Lk0/oi;->j:I

    new-array v0, v9, [[I

    new-array v2, v3, [I

    .line 9
    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v8

    iput-object v0, p0, Lk0/oi;->k:[[I

    .line 10
    new-instance v0, Lk0/oi$a;

    invoke-direct {v0, p0}, Lk0/oi$a;-><init>(Lk0/oi;)V

    iput-object v0, p0, Lk0/oi;->m:Ljava/lang/Runnable;

    .line 11
    iput-boolean v1, p0, Lk0/oi;->n:Z

    .line 12
    iput v1, p0, Lk0/oi;->o:I

    .line 13
    new-instance v0, Lk0/oi$b;

    invoke-direct {v0, p0}, Lk0/oi$b;-><init>(Lk0/oi;)V

    iput-object v0, p0, Lk0/oi;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/oi$c;

    invoke-direct {v0, p0}, Lk0/oi$c;-><init>(Lk0/oi;)V

    iput-object v0, p0, Lk0/oi;->q:Ljava/lang/Runnable;

    .line 15
    iput v1, p0, Lk0/oi;->r:I

    .line 16
    new-instance v0, Lk0/oi$d;

    invoke-direct {v0, p0}, Lk0/oi$d;-><init>(Lk0/oi;)V

    iput-object v0, p0, Lk0/oi;->s:Ljava/lang/Runnable;

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
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x22
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x85
        0x22
    .end array-data

    :array_12
    .array-data 4
        0x86
        0x23
    .end array-data

    :array_13
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_14
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_15
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_17
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_18
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_19
    .array-data 4
        0x85
        0x1f
    .end array-data

    :array_1a
    .array-data 4
        0x86
        0x1e
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
    iget-object v0, p0, Lk0/oi;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->b:I

    .line 8
    iput v2, v0, Lk0/mt;->c:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/oi;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/oi;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    aget-byte v1, p1, p2

    const/16 v2, 0x1d

    const/4 v3, 0x5

    const/16 v4, 0xff

    if-eq v1, v2, :cond_36

    const/16 v5, 0x1e

    if-eq v1, v5, :cond_35

    const/16 v6, 0x20

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v6, :cond_30

    const/16 v10, 0x24

    if-eq v1, v10, :cond_2e

    const/16 v10, 0x51

    const/16 v13, 0x1f

    const/16 v14, 0x8

    const/4 v15, 0x7

    if-eq v1, v10, :cond_21

    const/16 v5, 0x58

    const/16 v12, 0x21

    if-eq v1, v5, :cond_20

    const/16 v5, 0x62

    const/16 v11, 0xf

    if-eq v1, v5, :cond_16

    const/16 v5, 0x7d

    if-eq v1, v5, :cond_11

    const/16 v5, 0x28

    if-eq v1, v5, :cond_1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    goto/16 :goto_f

    .line 2
    :cond_0
    iget-boolean v1, v0, Lk0/oi;->n:Z

    if-nez v1, :cond_37

    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v8, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_f

    :cond_1
    add-int/lit8 v1, p2, 0x2

    .line 4
    aget-byte v1, p1, v1

    new-array v5, v9, [I

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v9

    aput v7, v5, v8

    const/16 v7, 0xa

    .line 5
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xb

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 6
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xc

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 7
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 8
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x1a

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 9
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 10
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    new-array v5, v9, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v5, v8

    .line 11
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x3

    .line 12
    aget-byte v1, p1, v1

    const/16 v5, 0x12

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 13
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 14
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v14, v9, [I

    shr-int/lit8 v16, v1, 0x5

    and-int/lit8 v17, v16, 0x1

    aput v17, v14, v8

    .line 15
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x50

    new-array v14, v9, [I

    shr-int/lit8 v17, v1, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v8

    .line 16
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x4d

    new-array v14, v9, [I

    and-int/lit8 v16, v16, 0x7

    aput v16, v14, v8

    .line 17
    invoke-static {v5, v14}, Lk0/qt;->y0(I[I)V

    and-int/2addr v1, v11

    if-le v1, v15, :cond_2

    goto :goto_0

    :cond_2
    move v15, v1

    :goto_0
    const/16 v1, 0x15

    new-array v5, v9, [I

    aput v15, v5, v8

    .line 18
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x4

    .line 19
    aget-byte v5, p1, v1

    and-int/2addr v5, v4

    add-int/lit8 v11, p2, 0x5

    .line 20
    aget-byte v14, p1, v11

    and-int/2addr v14, v4

    const-string v15, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v15, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 22
    aget-byte v5, p1, v11

    and-int/2addr v5, v4

    .line 23
    aget-byte v1, p1, v1

    and-int/lit16 v14, v1, 0xff

    :cond_3
    const-string v1, "persist.fyt.temperature"

    .line 24
    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v11, -0x3

    const/4 v15, -0x2

    const/16 v10, 0x1c

    const/16 v6, 0x1b

    if-eqz v1, :cond_8

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    new-array v1, v9, [I

    add-int/2addr v5, v12

    mul-int/2addr v5, v7

    aput v5, v1, v8

    .line 25
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v1, v9, [I

    aput v11, v1, v8

    .line 26
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v1, v9, [I

    aput v15, v1, v8

    .line 27
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    if-eqz v14, :cond_7

    if-eq v14, v4, :cond_6

    new-array v1, v9, [I

    add-int/2addr v14, v12

    mul-int/2addr v14, v7

    aput v14, v1, v8

    .line 28
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_6
    new-array v1, v9, [I

    aput v11, v1, v8

    .line 29
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_7
    new-array v1, v9, [I

    aput v15, v1, v8

    .line 30
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :cond_8
    if-eqz v5, :cond_c

    if-eq v5, v13, :cond_b

    if-lt v5, v9, :cond_9

    if-gt v5, v2, :cond_9

    new-array v1, v9, [I

    mul-int/2addr v5, v3

    add-int/lit16 v5, v5, 0xaf

    aput v5, v1, v8

    .line 31
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    const/16 v1, 0x20

    if-lt v5, v1, :cond_a

    const/16 v4, 0x23

    if-gt v5, v4, :cond_a

    new-array v4, v9, [I

    sub-int/2addr v5, v1

    mul-int/2addr v5, v3

    add-int/lit16 v5, v5, 0xa0

    aput v5, v4, v8

    .line 32
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v1, v9, [I

    const/4 v4, -0x1

    aput v4, v1, v8

    .line 33
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_b
    new-array v1, v9, [I

    aput v11, v1, v8

    .line 34
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_c
    new-array v1, v9, [I

    aput v15, v1, v8

    .line 35
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-eqz v14, :cond_10

    if-eq v14, v13, :cond_f

    if-lt v14, v9, :cond_d

    if-gt v14, v2, :cond_d

    new-array v1, v9, [I

    mul-int/2addr v14, v3

    add-int/lit16 v14, v14, 0xaf

    aput v14, v1, v8

    .line 36
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    const/16 v1, 0x14

    if-lt v14, v1, :cond_e

    const/16 v1, 0x23

    if-gt v14, v1, :cond_e

    new-array v1, v9, [I

    const/16 v2, 0x20

    sub-int/2addr v14, v2

    mul-int/2addr v14, v3

    add-int/lit16 v14, v14, 0xa0

    aput v14, v1, v8

    .line 37
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v1, v9, [I

    const/4 v2, -0x1

    aput v2, v1, v8

    .line 38
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    new-array v1, v9, [I

    aput v11, v1, v8

    .line 39
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_10
    new-array v1, v9, [I

    aput v15, v1, v8

    .line 40
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v1, p2, 0x6

    .line 41
    aget-byte v1, p1, v1

    const/16 v2, 0x41

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v3, v9, [I

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v9

    aput v1, v3, v8

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_11
    add-int/lit8 v1, p2, 0x2

    .line 44
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    if-eq v1, v9, :cond_14

    if-eq v1, v7, :cond_13

    if-eq v1, v14, :cond_12

    goto/16 :goto_f

    :cond_12
    add-int/lit8 v1, p2, 0x3

    .line 45
    aget-byte v1, p1, v1

    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v2, p1, v2

    const/16 v3, 0x21c

    .line 47
    invoke-static {v1, v2, v9, v3}, Lk0/qt;->i(IIZI)V

    .line 48
    iput-boolean v9, v0, Lk0/oi;->n:Z

    goto/16 :goto_f

    :cond_13
    add-int/lit8 v1, p2, 0x4

    .line 49
    aget-byte v1, p1, v1

    shl-int/2addr v1, v14

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 51
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v9, v4, v8

    aput v1, v4, v9

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_14
    const-string v1, "persist.fyt.leftrightlighttype"

    .line 52
    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_15

    add-int/lit8 v1, p2, 0x3

    .line 53
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v9

    aget-byte v1, p1, v1

    const/4 v3, 0x4

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v2, v1, v8}, Ll0/c0;->b(III)V

    goto/16 :goto_f

    :cond_15
    const/4 v3, 0x4

    add-int/lit8 v1, p2, 0x3

    .line 54
    aget-byte v2, p1, v1

    shr-int/2addr v2, v7

    and-int/2addr v2, v9

    aget-byte v1, p1, v1

    shr-int/2addr v1, v3

    and-int/2addr v1, v9

    invoke-static {v2, v1, v8}, Ll0/c0;->a(III)V

    goto/16 :goto_f

    :cond_16
    add-int/lit8 v1, p2, 0x2

    .line 55
    aget-byte v2, p1, v1

    add-int/lit8 v4, p2, 0x4

    .line 56
    aget-byte v5, p1, v4

    add-int/lit8 v6, p2, 0x5

    .line 57
    aget-byte v10, p1, v6

    add-int/lit8 v12, p2, 0x6

    .line 58
    aget-byte v13, p1, v12

    add-int/lit8 v14, p2, 0x7

    .line 59
    aget-byte v14, p1, v14

    add-int/lit8 v17, p2, 0x8

    .line 60
    aget-byte v11, p1, v17

    add-int/lit8 v17, p2, 0x9

    .line 61
    aget-byte v15, p1, v17

    .line 62
    iget v3, v0, Lk0/oi;->l:I

    if-eq v2, v3, :cond_1b

    if-ne v2, v9, :cond_18

    .line 63
    sget v2, Lk0/nt;->a:I

    const v3, 0x1301c4

    if-ne v2, v3, :cond_17

    .line 64
    invoke-virtual/range {p0 .. p0}, Lk0/oi;->d3()V

    goto :goto_4

    :cond_17
    const/16 v2, 0x18

    .line 65
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    goto :goto_4

    :cond_18
    const/16 v3, 0x81

    if-ne v2, v3, :cond_19

    .line 67
    sget v2, Lk0/nt;->a:I

    const v3, 0x1301c4

    if-eq v2, v3, :cond_1b

    .line 68
    invoke-virtual/range {p0 .. p0}, Lk0/oi;->d3()V

    goto :goto_4

    :cond_19
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 69
    invoke-virtual/range {p0 .. p0}, Lk0/oi;->c3()V

    goto :goto_4

    :cond_1a
    if-ne v2, v7, :cond_1b

    const/16 v2, 0x36

    .line 70
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 71
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 72
    :cond_1b
    :goto_4
    aget-byte v1, p1, v1

    iput v1, v0, Lk0/oi;->l:I

    const/16 v2, 0x62

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 73
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 74
    iget v1, v0, Lk0/oi;->l:I

    if-ne v1, v9, :cond_1f

    add-int/lit8 v1, p2, 0x3

    .line 75
    aget-byte v2, p1, v1

    if-nez v2, :cond_1c

    const/16 v1, 0x63

    new-array v2, v9, [I

    aput v5, v2, v8

    .line 76
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v9, [I

    and-int/lit8 v3, v10, 0xf

    aput v3, v2, v8

    .line 77
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v2, v9, [I

    .line 78
    invoke-static {v14, v13}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v2, v9, [I

    const/4 v3, 0x5

    shr-int/lit8 v3, v10, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 79
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    .line 80
    :cond_1c
    aget-byte v1, p1, v1

    if-ne v1, v9, :cond_37

    .line 81
    iget-object v1, v0, Lk0/oi;->e:[I

    aget-byte v2, p1, v4

    aput v2, v1, v8

    :goto_5
    const/4 v1, 0x7

    if-ge v9, v1, :cond_1e

    add-int/lit8 v1, v9, -0x1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int v2, v12, v1

    .line 82
    aget-byte v2, p1, v2

    add-int/2addr v1, v6

    aget-byte v1, p1, v1

    invoke-static {v2, v1}, Lo1/p0;->c(BB)I

    move-result v1

    .line 83
    iget-object v2, v0, Lk0/oi;->e:[I

    aget v3, v2, v9

    if-eq v3, v1, :cond_1d

    .line 84
    aput v1, v2, v9

    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 85
    :cond_1e
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x67

    iget-object v3, v0, Lk0/oi;->e:[I

    invoke-static {v1, v2, v3}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_f

    :cond_1f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    const/16 v1, 0x69

    new-array v2, v9, [I

    const/16 v3, 0xf

    and-int/lit8 v4, v5, 0xf

    aput v4, v2, v8

    .line 86
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v9, [I

    const/4 v4, 0x4

    shr-int/lit8 v4, v10, 0x4

    and-int/2addr v4, v3

    aput v4, v2, v8

    .line 87
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6d

    new-array v2, v9, [I

    shr-int/lit8 v4, v13, 0x0

    and-int/2addr v4, v3

    aput v4, v2, v8

    .line 88
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6a

    new-array v2, v9, [I

    .line 89
    invoke-static {v15, v11}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6b

    new-array v2, v9, [I

    .line 90
    invoke-static {v14, v13}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v2, v9, [I

    add-int/lit8 v3, p2, 0xe

    .line 91
    aget-byte v3, p1, v3

    const/16 v4, 0xf

    add-int/lit8 v4, p2, 0xf

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v8

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_20
    move v1, v3

    add-int/lit8 v1, p2, 0x5

    .line 92
    aget-byte v1, p1, v1

    const/16 v2, 0x11

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 93
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v3, v9, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 94
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 95
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v9

    aput v1, v2, v8

    const/16 v1, 0x23

    .line 96
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_21
    add-int/lit8 v1, p2, 0x2

    .line 97
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v2, p1, v2

    and-int/2addr v1, v4

    .line 99
    iput v1, v0, Lk0/oi;->j:I

    move v1, v8

    .line 100
    :goto_6
    iget-object v3, v0, Lk0/oi;->k:[[I

    array-length v6, v3

    if-ge v1, v6, :cond_23

    .line 101
    iget v6, v0, Lk0/oi;->j:I

    aget-object v7, v3, v1

    aget v7, v7, v8

    if-ne v6, v7, :cond_22

    if-eqz v6, :cond_23

    .line 102
    iput v1, v0, Lk0/oi;->i:I

    goto :goto_7

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 103
    :cond_23
    :goto_7
    iget v6, v0, Lk0/oi;->j:I

    const/16 v7, 0x81

    if-eq v6, v7, :cond_2c

    const/16 v7, 0x82

    if-eq v6, v7, :cond_2a

    const/16 v7, 0x85

    if-eq v6, v7, :cond_28

    const/16 v7, 0x86

    if-eq v6, v7, :cond_26

    and-int/2addr v2, v4

    if-ne v2, v9, :cond_24

    .line 104
    array-length v2, v3

    if-ge v1, v2, :cond_37

    .line 105
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_24
    if-nez v2, :cond_37

    .line 106
    iget v1, v0, Lk0/oi;->i:I

    array-length v2, v3

    if-ge v1, v2, :cond_25

    if-eq v1, v4, :cond_25

    .line 107
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 108
    :cond_25
    iput v4, v0, Lk0/oi;->i:I

    goto/16 :goto_f

    :cond_26
    move v1, v8

    :goto_8
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_27

    .line 109
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 110
    :cond_27
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_28
    move v1, v8

    :goto_9
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_29

    .line 111
    invoke-static {v13, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 112
    :cond_29
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_2a
    move v1, v8

    :goto_a
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_2b

    .line 113
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 114
    :cond_2b
    invoke-static {v14, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_2c
    move v1, v8

    :goto_b
    and-int/lit16 v3, v2, 0xff

    if-ge v1, v3, :cond_2d

    const/4 v3, 0x7

    .line 115
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2d
    const/4 v3, 0x7

    .line 116
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_2e
    const/4 v1, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 117
    aget-byte v1, p1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 118
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2f

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 119
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x2

    .line 120
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_2f
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 121
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x2

    .line 122
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    aput v3, v2, v8

    .line 123
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v9

    aput v3, v2, v8

    const/4 v3, 0x4

    .line 124
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, v2, v8

    const/4 v1, 0x5

    .line 125
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_30
    add-int/lit8 v1, p2, 0x2

    .line 126
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 127
    aget-byte v2, p1, v2

    and-int/2addr v1, v4

    .line 128
    iput v1, v0, Lk0/oi;->g:I

    move v1, v8

    .line 129
    :goto_d
    iget-object v3, v0, Lk0/oi;->h:[[I

    array-length v5, v3

    if-ge v1, v5, :cond_32

    .line 130
    iget v5, v0, Lk0/oi;->g:I

    aget-object v6, v3, v1

    aget v6, v6, v8

    if-ne v5, v6, :cond_31

    if-eqz v5, :cond_32

    .line 131
    iput v1, v0, Lk0/oi;->f:I

    goto :goto_e

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_32
    :goto_e
    and-int/2addr v2, v4

    if-ne v2, v9, :cond_33

    .line 132
    array-length v2, v3

    if-ge v1, v2, :cond_37

    .line 133
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_f

    :cond_33
    if-nez v2, :cond_37

    .line 134
    iget v1, v0, Lk0/oi;->f:I

    array-length v2, v3

    if-ge v1, v2, :cond_34

    if-eq v1, v4, :cond_34

    .line 135
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 136
    :cond_34
    iput v4, v0, Lk0/oi;->f:I

    goto :goto_f

    :cond_35
    add-int/lit8 v1, p2, 0x2

    .line 137
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 138
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 139
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->T2(I)V

    const/4 v1, 0x5

    add-int/lit8 v1, p2, 0x5

    .line 140
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_f

    :cond_36
    add-int/lit8 v1, p2, 0x2

    .line 141
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    add-int/lit8 v1, p2, 0x3

    .line 142
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    add-int/lit8 v1, p2, 0x4

    .line 143
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    const/4 v1, 0x5

    add-int/lit8 v1, p2, 0x5

    .line 144
    aget-byte v1, p1, v1

    and-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lk0/oi;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_37
    :goto_f
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/oi;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/oi;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/oi;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/oi;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x72

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
    .locals 8

    const/4 p3, 0x6

    const/16 p4, 0x8

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_7

    const/4 v7, 0x7

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/oi;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_e

    new-array p1, p4, [I

    aput v0, p1, v5

    const/16 p4, 0xc7

    aput p4, p1, v6

    aput v4, p1, v3

    .line 2
    aget p4, p2, v5

    aput p4, p1, v2

    aget p4, p2, v6

    aput p4, p1, v1

    aget p4, p2, v3

    aput p4, p1, v4

    aget p4, p2, v2

    aput p4, p1, p3

    aget p2, p2, v1

    aput p2, p1, v7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p2, v3}, Lk0/oi;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 4
    aget p1, p2, v5

    const/16 p3, 0x9

    if-ne p1, p3, :cond_3

    aget p1, p2, v6

    if-ne p1, v6, :cond_3

    .line 5
    iget p1, p0, Lk0/oi;->l:I

    if-ne p1, v6, :cond_2

    new-array p1, v4, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2
    new-array p1, v4, [I

    .line 7
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 8
    :cond_3
    aget p1, p2, v5

    if-ne p1, p4, :cond_5

    aget p1, p2, v6

    if-ne p1, v6, :cond_5

    .line 9
    iget p1, p0, Lk0/oi;->l:I

    if-ne p1, v6, :cond_4

    new-array p1, v4, [I

    .line 10
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_4
    new-array p1, v4, [I

    .line 11
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 12
    :cond_5
    aget p1, p2, v5

    if-ne p1, v4, :cond_6

    aget p1, p2, v6

    if-ne p1, v6, :cond_6

    new-array p1, v4, [I

    .line 13
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 14
    :cond_6
    aget p1, p2, v5

    if-ne p1, v7, :cond_e

    aget p1, p2, v6

    if-ne p1, v6, :cond_e

    new-array p1, v4, [I

    .line 15
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 16
    :cond_7
    invoke-virtual {p0, p2, v6}, Lk0/oi;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_e

    new-array p1, v1, [I

    aput v0, p1, v5

    const/16 p3, 0x90

    aput p3, p1, v6

    aput v6, p1, v3

    .line 17
    aget p2, p2, v5

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 18
    :cond_8
    invoke-virtual {p0, p2, v3}, Lk0/oi;->b3([II)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 19
    aget p1, p2, v5

    const/16 v7, 0x85

    if-eq p1, v1, :cond_d

    aget p1, p2, v5

    if-ne p1, v4, :cond_9

    goto :goto_0

    .line 20
    :cond_9
    aget p1, p2, v5

    if-ne p1, v2, :cond_a

    new-array p1, v4, [I

    aput v0, p1, v5

    aput v7, p1, v6

    aput v3, p1, v3

    const/16 p3, 0x11

    aput p3, p1, v2

    .line 21
    aget p2, p2, v6

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 22
    :cond_a
    aget p1, p2, v5

    if-ne p1, p3, :cond_b

    new-array p1, v4, [I

    aput v0, p1, v5

    aput v7, p1, v6

    aput v3, p1, v3

    aput p4, p1, v2

    .line 23
    aget p2, p2, v6

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 24
    :cond_b
    aget p1, p2, v5

    const/16 p3, 0xb

    if-ne p1, p3, :cond_c

    new-array p1, v4, [I

    .line 25
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 26
    :cond_c
    aget p1, p2, v5

    const/16 p2, 0xc

    if-ne p1, p2, :cond_e

    new-array p1, v4, [I

    .line 27
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_d
    :goto_0
    new-array p1, v4, [I

    aput v0, p1, v5

    aput v7, p1, v6

    aput v3, p1, v3

    const/16 p3, 0x10

    aput p3, p1, v2

    .line 28
    aget p2, p2, v6

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_e
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x85
        0x2
        0x13
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x85
        0x2
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x85
        0x2
        0x12
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x85
        0x2
        0x5
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x85
        0x2
        0x20
        0x86
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x85
        0x2
        0x20
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x85
        0x2
        0x2
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x85
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public final a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public final b3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c3()V
    .locals 3

    const-string v0, "com.syu.carinfo.dj.huangguan.ActivityCarCD"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final d3()V
    .locals 3

    const-string v0, "com.syu.carinfo.dj.huangguan.ActivityCarRadio"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
