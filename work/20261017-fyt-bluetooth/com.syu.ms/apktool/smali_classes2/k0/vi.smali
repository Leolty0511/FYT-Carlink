.class public Lk0/vi;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static p:I = 0xa

.field public static q:I = 0xa

.field public static r:I = 0xa

.field public static s:I = 0xa

.field public static t:I = 0xa

.field public static u:I = 0xa


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:Lo1/g0;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/vi;->b:I

    .line 3
    iput v0, p0, Lk0/vi;->d:I

    const/16 v1, 0xc

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 4
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

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v9, 0x8

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v9, 0x9

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v9, 0xa

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v9, 0xb

    aput-object v3, v1, v9

    iput-object v1, p0, Lk0/vi;->e:[[I

    .line 5
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x20

    invoke-direct {v1, v3, v9}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/vi;->f:Lo1/g0;

    .line 6
    iput v4, p0, Lk0/vi;->g:I

    .line 7
    iput v2, p0, Lk0/vi;->h:I

    .line 8
    iput v5, p0, Lk0/vi;->i:I

    .line 9
    iput v6, p0, Lk0/vi;->j:I

    .line 10
    iput v7, p0, Lk0/vi;->k:I

    .line 11
    iput v8, p0, Lk0/vi;->l:I

    .line 12
    iput v0, p0, Lk0/vi;->m:I

    .line 13
    new-instance v0, Lk0/vi$a;

    invoke-direct {v0, p0}, Lk0/vi$a;-><init>(Lk0/vi;)V

    iput-object v0, p0, Lk0/vi;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/vi$b;

    invoke-direct {v0, p0}, Lk0/vi$b;-><init>(Lk0/vi;)V

    iput-object v0, p0, Lk0/vi;->o:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x5
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xc
        0xd
    .end array-data
.end method

.method public static synthetic a3(Lk0/vi;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vi;->f:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/vi;IIIIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lk0/vi;->c3(IIIIIII)V

    return-void
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
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xeb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xec

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->p:I

    .line 10
    iput v1, v0, Lk0/mt;->j:I

    .line 11
    iput v1, v0, Lk0/mt;->o:I

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vi;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x9

    const/4 v4, 0x7

    const/16 v5, 0x12

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v2, v6, :cond_c

    if-eq v2, v8, :cond_1

    const/16 v3, 0x71

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    new-array v2, v12, [I

    add-int/lit8 v13, p2, 0x2

    .line 3
    aget-byte v14, v1, v13

    shr-int/lit8 v4, v14, 0x7

    and-int/2addr v4, v12

    aput v4, v2, v11

    const/16 v4, 0xa

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v14, v12, [I

    .line 4
    aget-byte v15, v1, v13

    shr-int/2addr v15, v9

    and-int/2addr v15, v12

    aput v15, v14, v11

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v14, v12, [I

    .line 5
    aget-byte v15, v1, v13

    shr-int/2addr v15, v6

    and-int/2addr v15, v12

    aput v15, v14, v11

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v14, v12, [I

    .line 6
    aget-byte v15, v1, v13

    shr-int/lit8 v15, v15, 0x2

    and-int/2addr v15, v7

    aput v15, v14, v11

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v14, v12, [I

    .line 7
    aget-byte v13, v1, v13

    shr-int/2addr v13, v11

    and-int/2addr v13, v12

    aput v13, v14, v11

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v13, v12, [I

    add-int/lit8 v14, p2, 0x3

    .line 8
    aget-byte v15, v1, v14

    shr-int/2addr v15, v9

    and-int/2addr v7, v15

    aput v7, v13, v11

    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v7, v12, [I

    .line 9
    aget-byte v13, v1, v14

    shr-int/2addr v13, v11

    and-int/lit8 v13, v13, 0xf

    aput v13, v7, v11

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v12, [I

    add-int/lit8 v7, p2, 0x4

    .line 10
    aget-byte v13, v1, v7

    shr-int/lit8 v9, v13, 0x6

    and-int/2addr v9, v12

    aput v9, v2, v11

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v12, [I

    .line 11
    aget-byte v13, v1, v7

    shr-int/lit8 v6, v13, 0x4

    and-int/2addr v6, v12

    aput v6, v9, v11

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v12, [I

    .line 12
    aget-byte v7, v1, v7

    shr-int/2addr v7, v8

    and-int/2addr v7, v12

    aput v7, v6, v11

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 13
    aget-byte v6, v1, v2

    and-int/2addr v6, v10

    const-string v7, "persist.fyt.reversetemp"

    .line 14
    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v6, p2, 0x6

    .line 15
    aget-byte v6, v1, v6

    and-int/2addr v6, v10

    :cond_2
    const/4 v8, -0x3

    const/4 v9, -0x2

    const/16 v13, 0x7f

    const/4 v14, -0x1

    const/16 v15, 0x1b

    if-nez v6, :cond_3

    new-array v6, v12, [I

    aput v9, v6, v11

    .line 16
    invoke-static {v15, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    if-ne v6, v13, :cond_4

    new-array v6, v12, [I

    aput v8, v6, v11

    .line 17
    invoke-static {v15, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    if-ne v6, v10, :cond_5

    new-array v6, v12, [I

    aput v14, v6, v11

    .line 18
    invoke-static {v15, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v5, v12, [I

    aput v6, v5, v11

    .line 19
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 v5, p2, 0x6

    .line 20
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    .line 21
    invoke-static {v7, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 22
    aget-byte v2, v1, v2

    and-int/lit16 v5, v2, 0xff

    :cond_6
    const/16 v2, 0x1c

    if-nez v5, :cond_7

    new-array v5, v12, [I

    aput v9, v5, v11

    .line 23
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    if-ne v5, v13, :cond_8

    new-array v5, v12, [I

    aput v8, v5, v11

    .line 24
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    if-ne v5, v10, :cond_9

    new-array v5, v12, [I

    aput v14, v5, v11

    .line 25
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v6, v12, [I

    aput v5, v6, v11

    .line 26
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v2, p2, 0x9

    .line 27
    aget-byte v1, v1, v2

    and-int/2addr v1, v10

    const/16 v2, 0x7d

    if-le v1, v2, :cond_a

    .line 28
    invoke-static {v11}, Lu0/d;->B3(I)V

    goto/16 :goto_7

    :cond_a
    const-string v2, "persist.fyt.temperature"

    .line 29
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    mul-int/2addr v1, v4

    add-int/lit16 v1, v1, 0x258

    goto :goto_2

    :cond_b
    const/16 v2, 0x12

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/2addr v1, v14

    .line 30
    :goto_2
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 32
    aget-byte v1, v1, v5

    and-int/2addr v2, v10

    .line 33
    iput v2, v0, Lk0/vi;->d:I

    move v2, v11

    .line 34
    :goto_3
    iget-object v5, v0, Lk0/vi;->e:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_e

    .line 35
    iget v6, v0, Lk0/vi;->d:I

    aget-object v13, v5, v2

    aget v13, v13, v11

    if-ne v6, v13, :cond_d

    if-eqz v6, :cond_e

    .line 36
    iput v2, v0, Lk0/vi;->c:I

    goto :goto_4

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 37
    :cond_e
    :goto_4
    iget v6, v0, Lk0/vi;->d:I

    if-eq v6, v8, :cond_15

    if-eq v6, v9, :cond_13

    if-eq v6, v3, :cond_11

    and-int/2addr v1, v10

    if-eqz v1, :cond_f

    .line 38
    array-length v1, v5

    if-ge v2, v1, :cond_17

    .line 39
    aget-object v1, v5, v2

    aget v1, v1, v12

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 40
    :cond_f
    iget v1, v0, Lk0/vi;->c:I

    array-length v2, v5

    if-ge v1, v2, :cond_10

    if-eq v1, v10, :cond_10

    .line 41
    aget-object v1, v5, v1

    aget v1, v1, v12

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 42
    :cond_10
    iput v10, v0, Lk0/vi;->c:I

    goto :goto_7

    :cond_11
    and-int/2addr v1, v10

    if-ne v1, v12, :cond_17

    .line 43
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_12

    if-eq v1, v8, :cond_12

    const/16 v1, 0x12

    .line 44
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_12
    const/16 v1, 0x1a

    .line 46
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_13
    move v2, v11

    :goto_5
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_14

    .line 48
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 49
    :cond_14
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_15
    move v2, v11

    :goto_6
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8

    if-ge v2, v3, :cond_16

    .line 50
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 51
    :cond_16
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    :cond_17
    :goto_7
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vi;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/vi;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x68

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

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    aget v1, p2, p1

    const/4 p1, 0x1

    aget v2, p2, p1

    const/4 p1, 0x2

    aget v3, p2, p1

    const/4 p1, 0x3

    aget v4, p2, p1

    const/4 p1, 0x4

    aget v5, p2, p1

    const/4 p1, 0x5

    aget v6, p2, p1

    const/4 p1, 0x6

    aget v7, p2, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lk0/vi;->c3(IIIIIII)V

    :goto_0
    return-void
.end method

.method public final c3(IIIIIII)V
    .locals 4

    .line 1
    sput p1, Lk0/vi;->p:I

    .line 2
    sput p2, Lk0/vi;->q:I

    .line 3
    sput p3, Lk0/vi;->r:I

    .line 4
    sput p4, Lk0/vi;->s:I

    .line 5
    sput p5, Lk0/vi;->t:I

    .line 6
    sput p6, Lk0/vi;->u:I

    const/4 p2, 0x1

    new-array p3, p2, [I

    const/4 p4, 0x0

    aput p1, p3, p4

    const/16 p1, 0x62

    .line 7
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 8
    sget p3, Lk0/vi;->q:I

    aput p3, p1, p4

    const/16 p3, 0x63

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 9
    sget p3, Lk0/vi;->r:I

    aput p3, p1, p4

    const/16 p3, 0x64

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 10
    sget p3, Lk0/vi;->s:I

    aput p3, p1, p4

    const/16 p3, 0x65

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 11
    sget p3, Lk0/vi;->t:I

    aput p3, p1, p4

    const/16 p3, 0x66

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 12
    sget p3, Lk0/vi;->u:I

    aput p3, p1, p4

    const/16 p3, 0x67

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xa

    new-array p1, p1, [I

    const/16 p3, 0xe3

    aput p3, p1, p4

    const/16 p3, 0x93

    aput p3, p1, p2

    const/4 p3, 0x2

    const/4 p5, 0x7

    aput p5, p1, p3

    .line 13
    sget p6, Lk0/vi;->p:I

    const/4 v0, 0x3

    aput p6, p1, v0

    sget p6, Lk0/vi;->q:I

    const/4 v1, 0x4

    aput p6, p1, v1

    sget p6, Lk0/vi;->r:I

    const/4 v2, 0x5

    aput p6, p1, v2

    sget p6, Lk0/vi;->s:I

    const/4 v3, 0x6

    aput p6, p1, v3

    sget p6, Lk0/vi;->t:I

    aput p6, p1, p5

    sget p5, Lk0/vi;->u:I

    const/16 p6, 0x8

    aput p5, p1, p6

    const/16 p5, 0x9

    aput p7, p1, p5

    invoke-static {p1}, Lz/k;->s([I)V

    .line 14
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, p2, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p5, Lk0/vi;->p:I

    if-eq p1, p5, :cond_0

    .line 15
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, p2, p5}, Lo1/g0;->g(II)V

    .line 16
    :cond_0
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, p3, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/vi;->q:I

    if-eq p1, p2, :cond_1

    .line 17
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, p3, p2}, Lo1/g0;->g(II)V

    .line 18
    :cond_1
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v0, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/vi;->r:I

    if-eq p1, p2, :cond_2

    .line 19
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v0, p2}, Lo1/g0;->g(II)V

    .line 20
    :cond_2
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v1, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/vi;->s:I

    if-eq p1, p2, :cond_3

    .line 21
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v1, p2}, Lo1/g0;->g(II)V

    .line 22
    :cond_3
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v2, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/vi;->t:I

    if-eq p1, p2, :cond_4

    .line 23
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v2, p2}, Lo1/g0;->g(II)V

    .line 24
    :cond_4
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v3, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/vi;->u:I

    if-eq p1, p2, :cond_5

    .line 25
    iget-object p1, p0, Lk0/vi;->f:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method
