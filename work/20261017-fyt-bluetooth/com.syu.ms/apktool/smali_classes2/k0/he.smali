.class public Lk0/he;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:[[I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:[I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/he;->b:I

    .line 3
    iput v1, v0, Lk0/he;->c:I

    const/16 v2, 0xff

    .line 4
    iput v2, v0, Lk0/he;->g:I

    const/16 v2, 0x15

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_0

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v7, 0x3

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    const/4 v9, 0x5

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_6

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_7

    const/4 v11, 0x7

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_8

    const/16 v12, 0x8

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_9

    const/16 v13, 0x9

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_a

    const/16 v14, 0xa

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_b

    const/16 v15, 0xb

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_c

    const/16 v16, 0xc

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v17, 0xd

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v18, 0xe

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v19, 0xf

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    const/16 v20, 0x10

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    const/16 v21, 0x11

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    const/16 v22, 0x12

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    const/16 v23, 0x13

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    const/16 v24, 0x14

    aput-object v5, v3, v24

    iput-object v3, v0, Lk0/he;->h:[[I

    const/16 v3, 0x18

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 6
    fill-array-data v5, :array_15

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v5, 0x16

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v5, 0x17

    aput-object v2, v3, v5

    iput-object v3, v0, Lk0/he;->i:[[I

    .line 7
    new-instance v2, Lk0/he$a;

    invoke-direct {v2, v0}, Lk0/he$a;-><init>(Lk0/he;)V

    iput-object v2, v0, Lk0/he;->j:Ljava/lang/Runnable;

    .line 8
    new-instance v2, Lk0/he$b;

    invoke-direct {v2, v0}, Lk0/he$b;-><init>(Lk0/he;)V

    iput-object v2, v0, Lk0/he;->k:Ljava/lang/Runnable;

    .line 9
    new-instance v2, Lk0/he$c;

    invoke-direct {v2, v0}, Lk0/he$c;-><init>(Lk0/he;)V

    iput-object v2, v0, Lk0/he;->l:Ljava/lang/Runnable;

    new-array v2, v4, [I

    .line 10
    fill-array-data v2, :array_2d

    iput-object v2, v0, Lk0/he;->m:[I

    .line 11
    iput v1, v0, Lk0/he;->n:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_3
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x15
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x7
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x8
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x3
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x4
    .end array-data

    :array_d
    .array-data 4
        0xe
        0xc
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x10
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x18
    .end array-data

    :array_11
    .array-data 4
        0x12
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x13
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x14
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x16
        0x12
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_18
    .array-data 4
        0x4
        0x37
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_1b
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_1c
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_1d
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_1e
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_20
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_21
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_22
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_23
    .array-data 4
        0x2f
        0x9
    .end array-data

    :array_24
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_25
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_26
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_27
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_28
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_29
    .array-data 4
        0x3b
        0x2
    .end array-data

    :array_2a
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_2b
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_2c
    .array-data 4
        0x63
        0xd
    .end array-data

    :array_2d
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 9

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ll0/g;->i()V

    .line 3
    iget-object v0, p0, Lk0/he;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    const/4 v3, 0x0

    .line 7
    iput v3, v0, Lk0/mt;->o:I

    .line 8
    iput v2, v0, Lk0/mt;->e:I

    .line 9
    iput v3, v0, Lk0/mt;->i:I

    .line 10
    sget v4, Lk0/nt;->a:I

    const v5, 0x601a1

    const-string v6, "com.syu.canbus"

    const v7, 0x101a1

    if-eq v4, v7, :cond_4

    const v8, 0x301a1

    if-ne v4, v8, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x401a1

    if-eq v4, v1, :cond_2

    const v1, 0x701a1

    if-eq v4, v1, :cond_2

    const v1, 0x801a1

    if-eq v4, v1, :cond_2

    const v1, 0x501a1

    if-eq v4, v1, :cond_2

    if-ne v4, v5, :cond_6

    .line 11
    :cond_2
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 15
    :cond_4
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_5

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    .line 19
    :cond_6
    :goto_2
    sget v0, Lk0/nt;->a:I

    if-ne v0, v7, :cond_7

    .line 20
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->q:I

    goto :goto_3

    .line 21
    :cond_7
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v1, Lk0/mt;->q:I

    :goto_3
    if-ne v0, v5, :cond_8

    .line 22
    iget-object v0, p0, Lk0/he;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 23
    :cond_8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/he;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    sget v1, Lk0/nt;->a:I

    const/4 v5, -0x3

    const/4 v6, -0x2

    const/4 v8, 0x7

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v3, 0x0

    const/4 v15, 0x1

    const/16 v7, 0x1a1

    if-ne v1, v7, :cond_d

    add-int/lit8 v1, p2, 0x1

    .line 2
    aget-byte v7, p1, v1

    add-int/lit8 v16, p2, 0x2

    .line 3
    aget-byte v17, p1, v16

    add-int/lit8 v18, p2, 0x3

    .line 4
    aget-byte v18, p1, v18

    add-int/lit8 v19, p2, 0x4

    .line 5
    aget-byte v19, p1, v19

    add-int/lit8 v20, p2, 0x5

    .line 6
    aget-byte v20, p1, v20

    add-int/lit8 v21, p2, 0x6

    .line 7
    aget-byte v11, p1, v21

    const-string v2, "persist.fyt.reversetemp"

    .line 8
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    aget-byte v7, p1, v16

    .line 10
    aget-byte v17, p1, v1

    :cond_0
    move/from16 v1, v17

    and-int/lit16 v2, v7, 0xff

    const/16 v4, 0x24

    if-ne v7, v4, :cond_1

    new-array v2, v15, [I

    aput v6, v2, v3

    .line 11
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x40

    if-ne v7, v4, :cond_2

    new-array v2, v15, [I

    aput v5, v2, v3

    .line 12
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v4, v15, [I

    aput v2, v4, v3

    .line 13
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    :goto_0
    and-int/lit16 v2, v1, 0xff

    const/16 v4, 0x24

    if-ne v1, v4, :cond_3

    new-array v1, v15, [I

    aput v6, v1, v3

    .line 14
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_3
    const/16 v4, 0x40

    if-ne v1, v4, :cond_4

    new-array v1, v15, [I

    aput v5, v1, v3

    .line 15
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v1, v15, [I

    aput v2, v1, v3

    .line 16
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x15

    new-array v2, v15, [I

    and-int/lit8 v4, v18, 0x7

    aput v4, v2, v3

    .line 17
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v1, v19, 0xf

    if-eq v1, v15, :cond_8

    if-eq v1, v13, :cond_7

    if-eq v1, v14, :cond_6

    if-eq v1, v12, :cond_5

    move v1, v3

    move v2, v1

    :goto_2
    move v4, v2

    goto :goto_3

    :cond_5
    move v2, v3

    move v1, v15

    move v4, v1

    goto :goto_3

    :cond_6
    move v1, v3

    move v2, v1

    move v4, v15

    goto :goto_3

    :cond_7
    move v1, v3

    move v2, v15

    goto :goto_2

    :cond_8
    move v1, v3

    move v4, v1

    move v2, v15

    :goto_3
    new-array v5, v15, [I

    aput v1, v5, v3

    const/16 v1, 0x12

    .line 18
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v5, v15, [I

    aput v2, v5, v3

    .line 19
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v15, [I

    aput v4, v2, v3

    .line 20
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v15, [I

    shr-int/lit8 v4, v20, 0x0

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 21
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v15, [I

    shr-int/lit8 v4, v20, 0x1

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 22
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v15, [I

    shr-int/lit8 v4, v20, 0x2

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 23
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    shr-int/lit8 v2, v20, 0x4

    and-int/2addr v2, v15

    aput v2, v1, v3

    const/16 v2, 0xe

    .line 24
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v15, [I

    shr-int/lit8 v4, v20, 0x5

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    const/4 v2, 0x6

    shr-int/lit8 v2, v20, 0x6

    and-int/2addr v2, v15

    aput v2, v1, v3

    const/16 v2, 0x10

    .line 26
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 27
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v1, 0xff

    and-int/2addr v1, v11

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_9

    move v3, v15

    :cond_9
    if-nez v3, :cond_a

    rsub-int v1, v1, 0x100

    :cond_a
    if-eqz v3, :cond_b

    if-ltz v1, :cond_c

    const/16 v2, 0x55

    if-gt v1, v2, :cond_c

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_4

    :cond_b
    const/16 v2, 0x55

    if-gt v1, v2, :cond_c

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    :cond_c
    :goto_4
    const/16 v2, 0x258

    if-le v1, v2, :cond_44

    .line 28
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_22

    .line 29
    :cond_d
    aget-byte v2, p1, p2

    if-eq v2, v14, :cond_43

    const/16 v4, 0x24

    if-eq v2, v4, :cond_41

    const/16 v4, 0x26

    if-eq v2, v4, :cond_40

    const/16 v4, 0x35

    const/16 v7, 0x1e

    if-eq v2, v4, :cond_3f

    const/16 v4, 0x55

    if-eq v2, v4, :cond_24

    const/16 v1, 0x57

    if-eq v2, v1, :cond_22

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_22

    :pswitch_0
    add-int/lit8 v1, p2, 0x2

    .line 30
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 31
    aget-byte v2, p1, v2

    if-eq v1, v15, :cond_13

    if-eq v1, v13, :cond_e

    goto/16 :goto_22

    .line 32
    :cond_e
    iget v1, v0, Lk0/he;->c:I

    if-eq v2, v1, :cond_44

    if-le v2, v1, :cond_10

    move v1, v3

    .line 33
    :goto_5
    iget v4, v0, Lk0/he;->c:I

    sub-int v4, v2, v4

    if-ge v1, v4, :cond_f

    const/16 v4, 0x1f

    .line 34
    invoke-static {v4, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    const/16 v1, 0x1f

    .line 35
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto :goto_7

    :cond_10
    if-ge v2, v1, :cond_12

    move v1, v3

    .line 36
    :goto_6
    iget v4, v0, Lk0/he;->c:I

    sub-int/2addr v4, v2

    if-ge v1, v4, :cond_11

    .line 37
    invoke-static {v7, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 38
    :cond_11
    invoke-static {v7, v15}, Ll0/b0;->l0(II)V

    .line 39
    :cond_12
    :goto_7
    iput v2, v0, Lk0/he;->c:I

    goto/16 :goto_22

    .line 40
    :cond_13
    iget v1, v0, Lk0/he;->b:I

    if-eq v2, v1, :cond_44

    if-le v2, v1, :cond_15

    move v1, v3

    .line 41
    :goto_8
    iget v4, v0, Lk0/he;->b:I

    sub-int v4, v2, v4

    if-ge v1, v4, :cond_14

    .line 42
    invoke-static {v8, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 43
    :cond_14
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto :goto_a

    :cond_15
    if-ge v2, v1, :cond_17

    move v1, v3

    .line 44
    :goto_9
    iget v4, v0, Lk0/he;->b:I

    sub-int/2addr v4, v2

    const/16 v5, 0x8

    if-ge v1, v4, :cond_16

    .line 45
    invoke-static {v5, v3}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 46
    :cond_16
    invoke-static {v5, v15}, Ll0/b0;->l0(II)V

    .line 47
    :cond_17
    :goto_a
    iput v2, v0, Lk0/he;->b:I

    goto/16 :goto_22

    :pswitch_1
    add-int/lit8 v1, p2, 0x2

    .line 48
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v2, p1, v2

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 50
    iput v1, v0, Lk0/he;->f:I

    move v1, v3

    .line 51
    :goto_b
    iget-object v4, v0, Lk0/he;->i:[[I

    array-length v5, v4

    if-ge v1, v5, :cond_19

    .line 52
    iget v5, v0, Lk0/he;->f:I

    aget-object v6, v4, v1

    aget v6, v6, v3

    if-ne v5, v6, :cond_18

    if-eqz v5, :cond_19

    .line 53
    iput v1, v0, Lk0/he;->g:I

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    :goto_c
    const/16 v5, 0xff

    and-int/2addr v2, v5

    if-ne v2, v15, :cond_1a

    .line 54
    array-length v2, v4

    if-ge v1, v2, :cond_44

    .line 55
    aget-object v1, v4, v1

    aget v1, v1, v15

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_22

    :cond_1a
    if-nez v2, :cond_44

    .line 56
    iget v1, v0, Lk0/he;->g:I

    array-length v2, v4

    if-ge v1, v2, :cond_1b

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1c

    .line 57
    aget-object v1, v4, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_1b
    const/16 v2, 0xff

    .line 58
    :cond_1c
    :goto_d
    iput v2, v0, Lk0/he;->g:I

    goto/16 :goto_22

    :pswitch_2
    const/16 v2, 0xff

    add-int/lit8 v1, p2, 0x2

    .line 59
    aget-byte v1, p1, v1

    add-int/lit8 v4, p2, 0x3

    .line 60
    aget-byte v4, p1, v4

    and-int/2addr v1, v2

    .line 61
    iput v1, v0, Lk0/he;->e:I

    move v1, v3

    .line 62
    :goto_e
    iget-object v2, v0, Lk0/he;->h:[[I

    array-length v5, v2

    if-ge v1, v5, :cond_1e

    .line 63
    iget v5, v0, Lk0/he;->e:I

    aget-object v6, v2, v1

    aget v6, v6, v3

    if-ne v5, v6, :cond_1d

    if-eqz v5, :cond_1e

    .line 64
    iput v1, v0, Lk0/he;->d:I

    goto :goto_f

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    :goto_f
    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-ne v4, v15, :cond_1f

    .line 65
    array-length v4, v2

    if-ge v1, v4, :cond_44

    .line 66
    aget-object v1, v2, v1

    aget v1, v1, v15

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_22

    :cond_1f
    if-nez v4, :cond_44

    .line 67
    iget v1, v0, Lk0/he;->d:I

    array-length v3, v2

    if-ge v1, v3, :cond_20

    const/16 v3, 0xff

    if-eq v1, v3, :cond_21

    .line 68
    aget-object v1, v2, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_20
    const/16 v3, 0xff

    .line 69
    :cond_21
    :goto_10
    iput v3, v0, Lk0/he;->d:I

    goto/16 :goto_22

    :cond_22
    const-string v1, "Honda_"

    add-int/lit8 v2, p2, 0x3

    .line 70
    aget-byte v2, p1, v2

    if-ne v2, v12, :cond_23

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Yage8_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 72
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Yage7_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "20"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x4

    aget-byte v3, p1, v1

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v1, p1, v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x5

    aget-byte v3, p1, v1

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v1, p1, v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x6

    aget-byte v3, p1, v1

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v1, p1, v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_V"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x7

    aget-byte v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_24
    const v2, 0x301a1

    const/16 v4, 0x50

    if-eq v1, v2, :cond_34

    const v2, 0x401a1

    if-eq v1, v2, :cond_34

    const v2, 0x701a1

    if-eq v1, v2, :cond_34

    const v2, 0x801a1

    if-eq v1, v2, :cond_34

    const v2, 0x501a1

    if-eq v1, v2, :cond_34

    const v2, 0x601a1

    if-ne v1, v2, :cond_25

    goto/16 :goto_18

    :cond_25
    add-int/lit8 v1, p2, 0x2

    .line 78
    aget-byte v2, p1, v1

    add-int/lit8 v8, p2, 0x3

    .line 79
    aget-byte v11, p1, v8

    add-int/lit8 v17, p2, 0x4

    .line 80
    aget-byte v7, p1, v17

    add-int/lit8 v17, p2, 0x5

    .line 81
    aget-byte v17, p1, v17

    add-int/lit8 v19, p2, 0x6

    .line 82
    aget-byte v19, p1, v19

    add-int/lit8 v20, p2, 0x7

    .line 83
    aget-byte v20, p1, v20

    add-int/lit8 v22, p2, 0x8

    .line 84
    aget-byte v22, p1, v22

    add-int/lit8 v22, p2, 0x9

    .line 85
    aget-byte v23, p1, v22

    const-string v14, "persist.fyt.reversetemp"

    .line 86
    invoke-static {v14, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 87
    aget-byte v2, p1, v8

    .line 88
    aget-byte v11, p1, v1

    :cond_26
    and-int/lit16 v1, v2, 0xff

    const/16 v8, 0x10

    if-gt v2, v8, :cond_27

    new-array v1, v15, [I

    aput v6, v1, v3

    .line 89
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_27
    if-lt v2, v4, :cond_28

    new-array v1, v15, [I

    aput v5, v1, v3

    .line 90
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_28
    new-array v2, v15, [I

    aput v1, v2, v3

    .line 91
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_12
    and-int/lit16 v1, v11, 0xff

    const/16 v2, 0x10

    if-gt v11, v2, :cond_29

    new-array v1, v15, [I

    aput v6, v1, v3

    .line 92
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_29
    if-lt v11, v4, :cond_2a

    new-array v1, v15, [I

    aput v5, v1, v3

    .line 93
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_2a
    new-array v2, v15, [I

    aput v1, v2, v3

    .line 94
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_13
    const/16 v1, 0x15

    new-array v2, v15, [I

    and-int/lit8 v4, v7, 0xf

    aput v4, v2, v3

    .line 95
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v7, 0xf0

    shr-int/2addr v1, v12

    if-eqz v1, :cond_2b

    if-eq v1, v15, :cond_30

    if-eq v1, v13, :cond_2f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2e

    if-eq v1, v12, :cond_2d

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2c

    :cond_2b
    move v2, v3

    move v4, v2

    :goto_14
    move v5, v4

    goto :goto_15

    :cond_2c
    move v4, v3

    move v5, v4

    move v2, v15

    goto :goto_15

    :cond_2d
    move v4, v3

    move v2, v15

    move v5, v2

    goto :goto_15

    :cond_2e
    move v2, v3

    move v4, v2

    move v5, v15

    goto :goto_15

    :cond_2f
    move v2, v3

    move v4, v15

    goto :goto_14

    :cond_30
    move v2, v3

    move v5, v2

    move v4, v15

    :goto_15
    new-array v6, v15, [I

    aput v2, v6, v3

    const/16 v7, 0x12

    .line 96
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x41

    new-array v7, v15, [I

    aput v2, v7, v3

    .line 97
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v15, [I

    aput v4, v6, v3

    .line 98
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v15, [I

    aput v5, v4, v3

    .line 99
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v4, v15, [I

    aput v1, v4, v3

    .line 100
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v15, [I

    and-int/lit8 v4, v17, 0x3

    aput v4, v2, v3

    .line 101
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1f

    new-array v2, v15, [I

    shr-int/lit8 v4, v17, 0x2

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v2, v3

    .line 102
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    shr-int/lit8 v2, v17, 0x4

    and-int/2addr v2, v5

    aput v2, v1, v3

    const/16 v2, 0x1e

    .line 103
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x20

    new-array v2, v15, [I

    const/4 v4, 0x6

    shr-int/lit8 v6, v17, 0x6

    and-int/lit8 v4, v6, 0x3

    aput v4, v2, v3

    .line 104
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v15, [I

    and-int/lit8 v4, v19, 0x1

    aput v4, v2, v3

    .line 105
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v15, [I

    shr-int/lit8 v4, v19, 0x1

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 106
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    shr-int/lit8 v2, v19, 0x2

    and-int/2addr v2, v15

    aput v2, v1, v3

    const/16 v2, 0xe

    .line 107
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    const/4 v2, 0x6

    shr-int/lit8 v2, v19, 0x6

    and-int/2addr v2, v15

    aput v2, v1, v3

    const/16 v2, 0x10

    .line 108
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v15, [I

    and-int/lit8 v4, v20, 0x3

    if-ne v4, v15, :cond_31

    move v4, v15

    goto :goto_16

    :cond_31
    move v4, v3

    :goto_16
    aput v4, v2, v3

    .line 109
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v2, v15, [I

    const/4 v4, 0x3

    shr-int/lit8 v4, v20, 0x3

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 110
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 111
    aget-byte v1, p1, v22

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_33

    const-string v2, "persist.fyt.temperature"

    .line 112
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v15, :cond_32

    const/16 v2, 0x12

    mul-int/2addr v1, v2

    const/16 v2, 0x258

    add-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_32
    const/16 v2, 0x258

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    .line 113
    :goto_17
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_22

    .line 114
    :cond_33
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto/16 :goto_22

    :cond_34
    :goto_18
    add-int/lit8 v1, p2, 0x2

    .line 115
    aget-byte v2, p1, v1

    add-int/lit8 v7, p2, 0x3

    .line 116
    aget-byte v8, p1, v7

    add-int/lit8 v11, p2, 0x4

    .line 117
    aget-byte v11, p1, v11

    add-int/lit8 v13, p2, 0x5

    .line 118
    aget-byte v13, p1, v13

    add-int/lit8 v13, p2, 0x6

    .line 119
    aget-byte v13, p1, v13

    add-int/lit8 v14, p2, 0x7

    .line 120
    aget-byte v14, p1, v14

    const-string v12, "persist.fyt.reversetemp"

    .line 121
    invoke-static {v12, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 122
    aget-byte v2, p1, v7

    .line 123
    aget-byte v8, p1, v1

    :cond_35
    and-int/lit16 v1, v2, 0xff

    const/16 v7, 0x10

    if-ne v2, v7, :cond_36

    new-array v1, v15, [I

    aput v6, v1, v3

    .line 124
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_36
    if-ne v2, v4, :cond_37

    new-array v1, v15, [I

    aput v5, v1, v3

    .line 125
    invoke-static {v10, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_37
    new-array v2, v15, [I

    aput v1, v2, v3

    .line 126
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_19
    and-int/lit16 v1, v8, 0xff

    const/16 v2, 0x10

    if-ne v8, v2, :cond_38

    new-array v1, v15, [I

    aput v6, v1, v3

    .line 127
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_38
    if-ne v8, v4, :cond_39

    new-array v1, v15, [I

    aput v5, v1, v3

    .line 128
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_39
    new-array v2, v15, [I

    aput v1, v2, v3

    .line 129
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    :goto_1a
    const/16 v1, 0x15

    new-array v2, v15, [I

    shr-int/lit8 v4, v11, 0x0

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v3

    .line 130
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4d

    new-array v2, v15, [I

    const/4 v4, 0x4

    shr-int/lit8 v4, v11, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v2, v3

    .line 131
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    packed-switch v4, :pswitch_data_1

    move v1, v3

    :goto_1b
    move v2, v1

    :goto_1c
    move v4, v2

    goto :goto_1d

    :pswitch_3
    move v1, v15

    goto :goto_1b

    :pswitch_4
    move v2, v3

    move v4, v2

    move v1, v15

    goto :goto_1d

    :pswitch_5
    move v4, v3

    move v1, v15

    move v2, v1

    goto :goto_1d

    :pswitch_6
    move v2, v3

    move v1, v15

    move v4, v1

    goto :goto_1d

    :pswitch_7
    move v1, v3

    move v2, v1

    move v4, v15

    goto :goto_1d

    :pswitch_8
    move v1, v3

    move v2, v15

    goto :goto_1c

    :pswitch_9
    move v1, v3

    move v4, v1

    move v2, v15

    :goto_1d
    new-array v5, v15, [I

    aput v1, v5, v3

    const/16 v1, 0x12

    .line 132
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v5, v15, [I

    aput v2, v5, v3

    .line 133
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v15, [I

    aput v4, v2, v3

    .line 134
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v15, [I

    shr-int/lit8 v4, v13, 0x0

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 135
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v15, [I

    shr-int/lit8 v4, v13, 0x1

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 136
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v13, 0x2

    and-int/2addr v1, v15

    if-ne v1, v15, :cond_3a

    new-array v1, v15, [I

    aput v3, v1, v3

    const/16 v2, 0xe

    .line 137
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :cond_3a
    const/16 v2, 0xe

    if-nez v1, :cond_3b

    new-array v1, v15, [I

    aput v15, v1, v3

    .line 138
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :cond_3b
    :goto_1e
    const/16 v1, 0x41

    new-array v2, v15, [I

    shr-int/lit8 v4, v13, 0x5

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 139
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    const/4 v2, 0x6

    shr-int/lit8 v2, v13, 0x6

    and-int/2addr v2, v15

    aput v2, v1, v3

    const/16 v2, 0x10

    .line 140
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v15, [I

    and-int/lit8 v4, v14, 0x3

    if-ne v4, v15, :cond_3c

    move v4, v15

    goto :goto_1f

    :cond_3c
    move v4, v3

    :goto_1f
    aput v4, v2, v3

    .line 141
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4c

    new-array v2, v15, [I

    shr-int/lit8 v4, v14, 0x2

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 142
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x26

    new-array v2, v15, [I

    const/4 v4, 0x3

    shr-int/lit8 v4, v14, 0x3

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 143
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x9

    .line 144
    aget-byte v1, p1, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3e

    const-string v2, "persist.fyt.temperature"

    .line 145
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v15, :cond_3d

    const/16 v2, 0x12

    mul-int/2addr v1, v2

    const/16 v2, 0x258

    add-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_20

    :cond_3d
    const/16 v2, 0x258

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    .line 146
    :goto_20
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_22

    .line 147
    :cond_3e
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto/16 :goto_22

    :cond_3f
    add-int/lit8 v1, p2, 0x2

    .line 148
    aget-byte v1, p1, v1

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 149
    aget-byte v2, p1, v2

    const/16 v4, 0x1d

    new-array v5, v15, [I

    const/16 v6, 0xff

    and-int/2addr v1, v6

    aput v1, v5, v3

    .line 150
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v1, v15, [I

    and-int/2addr v2, v6

    aput v2, v1, v3

    const/16 v2, 0x1e

    .line 151
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_22

    :cond_40
    add-int/lit8 v1, p2, 0x2

    .line 152
    aget-byte v1, p1, v1

    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, p1, v3

    and-int/2addr v4, v8

    aget-byte v3, p1, v3

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v15

    const/16 v3, 0x17c

    invoke-static {v1, v4, v2, v3}, Lk0/qt;->j(IIII)V

    goto/16 :goto_22

    :cond_41
    add-int/lit8 v1, p2, 0x2

    .line 153
    aget-byte v1, p1, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 154
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_42

    new-array v2, v15, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 155
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 156
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    :cond_42
    new-array v2, v15, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 157
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v15

    aput v4, v2, v3

    .line 158
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_21
    new-array v2, v15, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v15

    aput v4, v2, v3

    const/4 v4, 0x3

    .line 159
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v15

    aput v4, v2, v3

    const/4 v4, 0x4

    .line 160
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v15

    aput v4, v2, v3

    const/4 v4, 0x5

    .line 161
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v15

    aput v1, v2, v3

    .line 162
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :cond_43
    add-int/lit8 v1, p2, 0x2

    .line 163
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 164
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    .line 165
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    .line 166
    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    .line 167
    aget-byte v5, p1, v5

    add-int/lit8 v6, p2, 0x7

    .line 168
    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x8

    .line 169
    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x9

    .line 170
    aget-byte v8, p1, v8

    const/16 v9, 0xff

    and-int/2addr v5, v9

    .line 171
    invoke-virtual {v0, v5}, Lk0/he;->a3(I)I

    move-result v5

    invoke-static {v5}, Lu0/d;->R2(I)V

    and-int/lit16 v5, v6, 0xff

    .line 172
    invoke-virtual {v0, v5}, Lk0/he;->a3(I)I

    move-result v5

    invoke-static {v5}, Lu0/d;->S2(I)V

    and-int/lit16 v5, v7, 0xff

    .line 173
    invoke-virtual {v0, v5}, Lk0/he;->a3(I)I

    move-result v5

    invoke-static {v5}, Lu0/d;->T2(I)V

    and-int/lit16 v5, v8, 0xff

    .line 174
    invoke-virtual {v0, v5}, Lk0/he;->a3(I)I

    move-result v5

    invoke-static {v5}, Lu0/d;->U2(I)V

    and-int/2addr v1, v9

    .line 175
    invoke-virtual {v0, v1}, Lk0/he;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->D2(I)V

    and-int/lit16 v1, v2, 0xff

    .line 176
    invoke-virtual {v0, v1}, Lk0/he;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->E2(I)V

    and-int/lit16 v1, v3, 0xff

    .line 177
    invoke-virtual {v0, v1}, Lk0/he;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->F2(I)V

    and-int/lit16 v1, v4, 0xff

    .line 178
    invoke-virtual {v0, v1}, Lk0/he;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_44
    :goto_22
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    iget-object v0, p0, Lk0/he;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/he;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

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
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x16

    move/from16 v2, p1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v2, v3

    const/4 v5, 0x1

    const/16 v6, 0x33

    aput v6, v2, v5

    const/4 v7, 0x2

    const/4 v8, 0x5

    aput v8, v2, v7

    .line 1
    aget v9, p2, v3

    const/4 v10, 0x3

    aput v9, v2, v10

    iget-object v9, v0, Lk0/he;->m:[I

    iget v11, v0, Lk0/he;->n:I

    rem-int/2addr v11, v7

    aget v9, v9, v11

    const/4 v11, 0x4

    aput v9, v2, v11

    const/16 v9, 0x25

    aput v9, v2, v8

    const/4 v12, 0x6

    aput v10, v2, v12

    const/4 v13, 0x7

    const/16 v14, 0xaa

    aput v14, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v1, [I

    aput v4, v2, v3

    aput v6, v2, v5

    aput v8, v2, v7

    .line 2
    aget v15, p2, v3

    aput v15, v2, v10

    iget-object v15, v0, Lk0/he;->m:[I

    iget v5, v0, Lk0/he;->n:I

    rem-int/2addr v5, v7

    aget v5, v15, v5

    aput v5, v2, v11

    aput v9, v2, v8

    aput v10, v2, v12

    aput v14, v2, v13

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput v4, v1, v3

    const/4 v2, 0x1

    aput v6, v1, v2

    aput v8, v1, v7

    .line 3
    aget v2, p2, v3

    aput v2, v1, v10

    iget-object v2, v0, Lk0/he;->m:[I

    iget v3, v0, Lk0/he;->n:I

    rem-int/2addr v3, v7

    aget v2, v2, v3

    aput v2, v1, v11

    aput v9, v1, v8

    aput v10, v1, v12

    aput v14, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget v1, v0, Lk0/he;->n:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/he;->n:I

    .line 5
    rem-int/2addr v1, v7

    iput v1, v0, Lk0/he;->n:I

    :goto_0
    return-void
.end method

.method public a3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method
