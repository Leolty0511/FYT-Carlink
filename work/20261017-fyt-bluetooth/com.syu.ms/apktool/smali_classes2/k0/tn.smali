.class public Lk0/tn;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static q:I = -0x1


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/tn;->c:I

    const/16 v2, 0x14

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
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

    iput-object v3, v0, Lk0/tn;->d:[[I

    .line 4
    iput v1, v0, Lk0/tn;->f:I

    const/16 v3, 0x1c

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_14

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    const/16 v5, 0x15

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    const/16 v5, 0x16

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v5, 0x17

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v5, 0x18

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v5, 0x19

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2e

    const/16 v5, 0x1a

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2f

    const/16 v4, 0x1b

    aput-object v2, v3, v4

    iput-object v3, v0, Lk0/tn;->g:[[I

    .line 6
    iput v1, v0, Lk0/tn;->h:I

    .line 7
    iput-boolean v1, v0, Lk0/tn;->i:Z

    .line 8
    new-instance v2, Lk0/tn$a;

    invoke-direct {v2, v0}, Lk0/tn$a;-><init>(Lk0/tn;)V

    iput-object v2, v0, Lk0/tn;->j:Ljava/lang/Runnable;

    .line 9
    iput v1, v0, Lk0/tn;->k:I

    .line 10
    new-instance v2, Lk0/tn$b;

    invoke-direct {v2, v0}, Lk0/tn$b;-><init>(Lk0/tn;)V

    iput-object v2, v0, Lk0/tn;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v2, Lk0/tn$c;

    invoke-direct {v2, v0}, Lk0/tn$c;-><init>(Lk0/tn;)V

    iput-object v2, v0, Lk0/tn;->m:Ljava/lang/Runnable;

    .line 12
    new-instance v2, Lk0/tn$d;

    invoke-direct {v2, v0}, Lk0/tn$d;-><init>(Lk0/tn;)V

    iput-object v2, v0, Lk0/tn;->n:Ljava/lang/Runnable;

    .line 13
    iput v1, v0, Lk0/tn;->o:I

    .line 14
    new-instance v1, Lk0/tn$e;

    invoke-direct {v1, v0}, Lk0/tn$e;-><init>(Lk0/tn;)V

    iput-object v1, v0, Lk0/tn;->p:Ljava/lang/Runnable;

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
        0x17
        0x5
    .end array-data

    :array_9
    .array-data 4
        0x18
        0x3f
    .end array-data

    :array_a
    .array-data 4
        0x30
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x31
        0x19
    .end array-data

    :array_c
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x33
        0x4a
    .end array-data

    :array_e
    .array-data 4
        0x34
        0x4b
    .end array-data

    :array_f
    .array-data 4
        0x35
        0x16
    .end array-data

    :array_10
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_11
    .array-data 4
        0x40
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x41
        0x24
    .end array-data

    :array_13
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_17
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_18
    .array-data 4
        0x7
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_1a
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_1b
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_1c
    .array-data 4
        0xb
        0x9
    .end array-data

    :array_1d
    .array-data 4
        0xc
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x31
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_20
    .array-data 4
        0x33
        0x4a
    .end array-data

    :array_21
    .array-data 4
        0x34
        0x4b
    .end array-data

    :array_22
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_24
    .array-data 4
        0x37
        0x12
    .end array-data

    :array_25
    .array-data 4
        0x38
        0x28
    .end array-data

    :array_26
    .array-data 4
        0x39
        0x29
    .end array-data

    :array_27
    .array-data 4
        0x3a
        0x2a
    .end array-data

    :array_28
    .array-data 4
        0x3b
        0x2b
    .end array-data

    :array_29
    .array-data 4
        0x3c
        0x2c
    .end array-data

    :array_2a
    .array-data 4
        0x3d
        0x2d
    .end array-data

    :array_2b
    .array-data 4
        0x3e
        0x1d
    .end array-data

    :array_2c
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_2d
    .array-data 4
        0x40
        0x5
    .end array-data

    :array_2e
    .array-data 4
        0x41
        0x10
    .end array-data

    :array_2f
    .array-data 4
        0x42
        0x36
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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/tn;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/tn;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Lk0/tn;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lk0/tn;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v5, :cond_2c

    const/4 v9, 0x7

    if-eq v2, v3, :cond_2a

    const/16 v10, 0x29

    if-eq v2, v10, :cond_29

    const/16 v10, 0x2a

    if-eq v2, v10, :cond_24

    const/16 v10, 0x30

    const/4 v11, 0x2

    if-eq v2, v10, :cond_23

    const/16 v10, 0x7d

    if-eq v2, v10, :cond_1e

    const/16 v4, 0xd

    const/16 v10, 0xa

    const/4 v12, 0x6

    const/4 v13, 0x5

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_0
    const/16 v2, 0x7b

    new-array v9, v8, [I

    add-int/lit8 v10, p2, 0x2

    .line 2
    aget-byte v14, v0, v10

    and-int/2addr v14, v6

    aput v14, v9, v7

    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    .line 3
    iget v2, v1, Lk0/tn;->k:I

    if-ne v2, v12, :cond_3

    .line 4
    aget-byte v2, v0, v10

    iget v9, v1, Lk0/tn;->h:I

    const/16 v14, 0x36

    if-eq v2, v9, :cond_1

    .line 5
    aget-byte v2, v0, v10

    iput v2, v1, Lk0/tn;->h:I

    if-ne v2, v13, :cond_0

    .line 6
    invoke-static {v14, v7}, Ll0/b0;->l0(II)V

    .line 7
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_3

    .line 8
    invoke-virtual/range {p0 .. p0}, Lk0/tn;->b3()V

    goto :goto_0

    .line 9
    :cond_1
    aget-byte v2, v0, v10

    if-ne v2, v13, :cond_2

    sget v2, Lu0/b;->D:I

    if-ne v2, v4, :cond_2

    .line 10
    invoke-static {v14, v7}, Ll0/b0;->l0(II)V

    .line 11
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 12
    :cond_2
    aget-byte v2, v0, v10

    if-eq v2, v13, :cond_3

    aget-byte v2, v0, v10

    if-eqz v2, :cond_3

    sget v2, Lu0/b;->D:I

    if-eq v2, v4, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lk0/tn;->b3()V

    .line 14
    :cond_3
    :goto_0
    aget-byte v2, v0, v10

    if-ne v2, v3, :cond_4

    const/16 v2, 0x80

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 15
    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 16
    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x5

    .line 17
    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v4, v8, [I

    add-int/lit8 v9, p2, 0x6

    .line 18
    aget-byte v10, v0, v9

    shr-int/2addr v10, v13

    and-int/2addr v10, v8

    aput v10, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v4, v8, [I

    .line 19
    aget-byte v10, v0, v9

    shr-int/lit8 v3, v10, 0x4

    and-int/2addr v3, v8

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 20
    aget-byte v4, v0, v9

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    .line 21
    aget-byte v4, v0, v9

    shr-int/2addr v4, v11

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 22
    aget-byte v4, v0, v9

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 23
    aget-byte v4, v0, v9

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 24
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 25
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 26
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 27
    :cond_4
    aget-byte v2, v0, v10

    if-ne v2, v12, :cond_2d

    const/16 v2, 0x87

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 28
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 29
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 30
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 31
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 32
    aget-byte v4, v0, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 33
    aget-byte v0, v0, v4

    and-int/2addr v0, v6

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v0, v0, v2

    const/16 v2, 0x7a

    new-array v3, v8, [I

    and-int/2addr v0, v8

    aput v0, v3, v7

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v0, v2

    add-int/lit8 v4, p2, 0x3

    .line 37
    aget-byte v4, v0, v4

    add-int/lit8 v3, p2, 0x4

    .line 38
    aget-byte v0, v0, v3

    const/16 v3, 0x76

    new-array v5, v8, [I

    and-int/lit8 v6, v2, 0x1

    aput v6, v5, v7

    .line 39
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x77

    new-array v5, v8, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v5, v7

    .line 40
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    aput v0, v3, v7

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 43
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 44
    aget-byte v0, v0, v3

    const/16 v3, 0x74

    new-array v4, v8, [I

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 45
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    aput v0, v3, v7

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 47
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 48
    aget-byte v3, v0, v3

    add-int/lit8 v4, p2, 0x4

    .line 49
    aget-byte v4, v0, v4

    add-int/lit8 v6, p2, 0x1

    .line 50
    aget-byte v6, v0, v6

    const/16 v9, 0x71

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 51
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v9, v8, [I

    aput v4, v9, v7

    .line 52
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    if-nez v3, :cond_5

    .line 53
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    sub-int/2addr v6, v5

    const-string v4, "ascii"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v0, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_2

    :cond_5
    if-ne v3, v8, :cond_6

    .line 54
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    sub-int/2addr v6, v5

    const-string v4, "UTF-16LE"

    invoke-direct {v2, v0, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_6
    if-ne v3, v11, :cond_7

    .line 56
    :try_start_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    sub-int/2addr v6, v5

    const-string v4, "GB2312"

    invoke-direct {v2, v0, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_7
    :goto_1
    const-string v2, ""

    :goto_2
    const/16 v0, 0x73

    .line 58
    invoke-static {v0, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_d

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v0, v0, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 60
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v8, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 61
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v0, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 62
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    new-array v2, v8, [I

    shr-int/lit8 v4, v0, 0x7

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 63
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 64
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v2, v8, [I

    shr-int/lit8 v4, v0, 0x4

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 65
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v0, 0x5

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 66
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v0, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 67
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v0, v11

    and-int/2addr v0, v8

    aput v0, v2, v7

    .line 68
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v4, v0, v2

    and-int/2addr v4, v6

    add-int/lit8 v5, p2, 0x3

    .line 70
    aget-byte v9, v0, v5

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x4

    .line 71
    aget-byte v11, v0, v10

    and-int/2addr v11, v6

    add-int/lit8 v12, p2, 0x5

    .line 72
    aget-byte v13, v0, v12

    and-int/2addr v13, v6

    if-nez v4, :cond_9

    if-nez v9, :cond_9

    if-nez v11, :cond_9

    if-nez v13, :cond_9

    .line 73
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 74
    :cond_9
    sget v7, Ll0/c0;->g:I

    if-ne v7, v4, :cond_a

    sget v7, Ll0/c0;->h:I

    if-ne v7, v9, :cond_a

    sget v7, Ll0/c0;->i:I

    if-ne v7, v11, :cond_a

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_b

    .line 75
    :cond_a
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_b

    .line 76
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 77
    sput v3, Ll0/c0;->k:I

    .line 78
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 79
    :cond_b
    :goto_4
    sput v4, Ll0/c0;->g:I

    .line 80
    sput v9, Ll0/c0;->h:I

    .line 81
    sput v11, Ll0/c0;->i:I

    .line 82
    sput v13, Ll0/c0;->j:I

    .line 83
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lk0/tn;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 84
    aget-byte v2, v0, v5

    and-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lk0/tn;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 85
    aget-byte v2, v0, v10

    and-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lk0/tn;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 86
    aget-byte v0, v0, v12

    and-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lk0/tn;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lk0/tn;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 88
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lk0/tn;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 89
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lk0/tn;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 90
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lk0/tn;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_d

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 91
    aget-byte v2, v0, v2

    new-array v3, v8, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v8

    aput v12, v3, v7

    .line 92
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v8

    aput v10, v3, v7

    const/16 v10, 0xb

    .line 93
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v8

    aput v12, v3, v7

    const/16 v12, 0xc

    .line 94
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v12, v8, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v8

    aput v13, v12, v7

    .line 95
    invoke-static {v3, v12}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v8

    aput v12, v3, v7

    .line 96
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v4, v8, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v8

    aput v12, v4, v7

    .line 97
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v4, v8, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 98
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 99
    aget-byte v2, v0, v2

    const/16 v3, 0x12

    new-array v4, v8, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v8

    aput v12, v4, v7

    .line 100
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v8, [I

    shr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v8

    aput v12, v4, v7

    .line 101
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v8, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v8

    aput v12, v4, v7

    .line 102
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v2, 0xf

    if-le v2, v9, :cond_c

    move v2, v9

    :cond_c
    const/16 v3, 0x15

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 103
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 104
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, -0x3

    const/4 v12, -0x1

    const/16 v13, 0x1c

    const/16 v14, 0x1b

    if-nez v2, :cond_11

    add-int/lit8 v2, p2, 0x4

    .line 105
    aget-byte v2, v0, v2

    if-eq v2, v12, :cond_e

    if-eqz v2, :cond_d

    new-array v15, v8, [I

    and-int/2addr v2, v6

    aput v2, v15, v7

    .line 106
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 107
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v2, v8, [I

    aput v4, v2, v7

    .line 108
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x5

    .line 109
    aget-byte v2, v0, v2

    if-eq v2, v12, :cond_10

    if-eqz v2, :cond_f

    new-array v14, v8, [I

    and-int/2addr v2, v6

    aput v2, v14, v7

    .line 110
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_f
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 111
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_10
    new-array v2, v8, [I

    aput v4, v2, v7

    .line 112
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_11
    add-int/lit8 v2, p2, 0x5

    .line 113
    aget-byte v2, v0, v2

    if-eq v2, v12, :cond_13

    if-eqz v2, :cond_12

    new-array v15, v8, [I

    and-int/2addr v2, v6

    aput v2, v15, v7

    .line 114
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 115
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    new-array v2, v8, [I

    aput v4, v2, v7

    .line 116
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x4

    .line 117
    aget-byte v2, v0, v2

    if-eq v2, v12, :cond_15

    if-eqz v2, :cond_14

    new-array v14, v8, [I

    and-int/2addr v2, v6

    aput v2, v14, v7

    .line 118
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_14
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 119
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_15
    new-array v2, v8, [I

    aput v4, v2, v7

    .line 120
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0x6

    .line 121
    aget-byte v2, v0, v2

    const/16 v13, 0x41

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 122
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x25

    new-array v14, v8, [I

    shr-int/lit8 v15, v2, 0x0

    and-int/2addr v15, v8

    aput v15, v14, v7

    .line 123
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x43

    new-array v14, v8, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    aput v2, v14, v7

    .line 124
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 125
    aget-byte v2, v0, v2

    if-eq v2, v12, :cond_17

    if-eqz v2, :cond_16

    const/16 v3, 0x28

    new-array v4, v8, [I

    and-int/2addr v2, v6

    aput v2, v4, v7

    .line 126
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_16
    const/16 v2, 0x28

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 127
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_17
    const/16 v2, 0x28

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 128
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    add-int/lit8 v2, p2, 0x9

    .line 129
    aget-byte v2, v0, v2

    const/16 v3, 0x30

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v8

    aput v6, v4, v7

    .line 130
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2e

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v8

    aput v6, v4, v7

    .line 131
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v8

    aput v6, v4, v7

    .line 132
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v4, v8, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v4, v7

    .line 133
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 134
    aget-byte v4, v0, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 135
    aget-byte v2, v0, v2

    const/16 v3, 0x16

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v8

    aput v6, v4, v7

    .line 136
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x17

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v8

    aput v6, v4, v7

    .line 137
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v4, v8, [I

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 138
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 139
    aget-byte v0, v0, v2

    const/16 v2, 0x1f

    new-array v3, v8, [I

    shr-int/lit8 v4, v0, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 140
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v4, v0, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 141
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    shr-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 142
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    and-int/2addr v0, v5

    aput v0, v3, v7

    .line 143
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 144
    aget-byte v2, v0, v2

    add-int/lit8 v4, p2, 0x3

    .line 145
    aget-byte v0, v0, v4

    and-int/2addr v2, v6

    .line 146
    iput v2, v1, Lk0/tn;->c:I

    move v2, v7

    .line 147
    :goto_9
    iget-object v4, v1, Lk0/tn;->d:[[I

    array-length v9, v4

    if-ge v2, v9, :cond_19

    .line 148
    iget v9, v1, Lk0/tn;->c:I

    aget-object v11, v4, v2

    aget v11, v11, v7

    if-ne v9, v11, :cond_18

    if-eqz v9, :cond_19

    .line 149
    iput v2, v1, Lk0/tn;->b:I

    goto :goto_a

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 150
    :cond_19
    :goto_a
    iget v9, v1, Lk0/tn;->c:I

    if-eq v9, v10, :cond_1c

    packed-switch v9, :pswitch_data_2

    and-int/2addr v0, v6

    if-eqz v0, :cond_1a

    .line 151
    array-length v0, v4

    if-ge v2, v0, :cond_2d

    .line 152
    aget-object v0, v4, v2

    aget v0, v0, v8

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 153
    :cond_1a
    iget v0, v1, Lk0/tn;->b:I

    array-length v2, v4

    if-ge v0, v2, :cond_1b

    if-eq v0, v6, :cond_1b

    .line 154
    aget-object v0, v4, v0

    aget v0, v0, v8

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 155
    :cond_1b
    iput v6, v1, Lk0/tn;->b:I

    goto/16 :goto_d

    .line 156
    :pswitch_a
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.canbus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 157
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_d

    :cond_1c
    and-int/2addr v0, v6

    if-ne v0, v8, :cond_2d

    .line 158
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_1d

    if-eq v0, v3, :cond_1d

    if-eq v0, v13, :cond_1d

    .line 159
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    .line 160
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_1d
    const/16 v0, 0x1a

    .line 161
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 162
    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_1e
    add-int/lit8 v2, p2, 0x2

    .line 163
    aget-byte v2, v0, v2

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_21

    if-eq v2, v5, :cond_20

    if-eq v2, v4, :cond_1f

    goto/16 :goto_d

    :cond_1f
    add-int/lit8 v2, p2, 0x3

    .line 164
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x4

    .line 165
    aget-byte v0, v0, v3

    const/16 v3, 0x21c

    .line 166
    invoke-static {v2, v0, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 167
    iput-boolean v8, v1, Lk0/tn;->i:Z

    goto/16 :goto_d

    :cond_20
    add-int/lit8 v2, p2, 0x4

    .line 168
    aget-byte v2, v0, v2

    shl-int/2addr v2, v4

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    and-int/2addr v0, v6

    or-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    const/16 v2, 0x407

    new-array v3, v8, [I

    aput v0, v3, v7

    .line 169
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 170
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v11, [I

    aput v8, v4, v7

    aput v0, v4, v8

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_21
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 171
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_22

    add-int/lit8 v2, p2, 0x3

    .line 172
    aget-byte v4, v0, v2

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aget-byte v0, v0, v2

    shr-int/2addr v0, v3

    and-int/2addr v0, v8

    invoke-static {v4, v0, v7}, Ll0/c0;->b(III)V

    goto/16 :goto_d

    :cond_22
    add-int/lit8 v2, p2, 0x3

    .line 173
    aget-byte v4, v0, v2

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aget-byte v0, v0, v2

    shr-int/2addr v0, v3

    and-int/2addr v0, v8

    invoke-static {v4, v0, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_d

    .line 174
    :cond_23
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 175
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 176
    aget-byte v0, v0, v3

    and-int/2addr v2, v6

    .line 177
    iput v2, v1, Lk0/tn;->f:I

    move v2, v7

    .line 178
    :goto_b
    iget-object v3, v1, Lk0/tn;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_26

    .line 179
    iget v4, v1, Lk0/tn;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_25

    if-eqz v4, :cond_26

    .line 180
    iput v2, v1, Lk0/tn;->e:I

    goto :goto_c

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_26
    :goto_c
    and-int/2addr v0, v6

    if-ne v0, v8, :cond_27

    .line 181
    array-length v0, v3

    if-ge v2, v0, :cond_2d

    .line 182
    aget-object v0, v3, v2

    aget v0, v0, v8

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_27
    if-nez v0, :cond_2d

    .line 183
    iget v0, v1, Lk0/tn;->e:I

    array-length v2, v3

    if-ge v0, v2, :cond_28

    if-eq v0, v6, :cond_28

    .line 184
    aget-object v0, v3, v0

    aget v0, v0, v8

    invoke-static {v0, v8}, Ll0/b0;->l0(II)V

    .line 185
    :cond_28
    iput v6, v1, Lk0/tn;->e:I

    goto/16 :goto_d

    .line 186
    :cond_29
    iget-boolean v2, v1, Lk0/tn;->i:Z

    if-nez v2, :cond_2d

    add-int/lit8 v2, p2, 0x2

    .line 187
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    const/16 v3, 0x11f8

    invoke-static {v2, v0, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_d

    :cond_2a
    add-int/lit8 v2, p2, 0x2

    .line 188
    aget-byte v2, v0, v2

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_2b

    const/16 v2, 0x74

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 189
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 190
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x6

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 191
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x9

    .line 192
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xb

    .line 193
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xd

    .line 194
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/lit8 v4, v5, 0x8

    add-int/lit8 v5, p2, 0xe

    aget-byte v0, v0, v5

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_2b
    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 195
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 196
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x6

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 197
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x9

    .line 198
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xb

    .line 199
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xd

    .line 200
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0xe

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xf

    .line 201
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x10

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x11

    .line 202
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x12

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x13

    .line 203
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x14

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x15

    .line 204
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x16

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x17

    .line 205
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/2addr v5, v4

    add-int/lit8 v9, p2, 0x18

    aget-byte v9, v0, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x19

    .line 206
    aget-byte v5, v0, v5

    and-int/2addr v5, v6

    shl-int/lit8 v4, v5, 0x8

    add-int/lit8 v5, p2, 0x1a

    aget-byte v0, v0, v5

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    aput v0, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_2c
    add-int/lit8 v2, p2, 0x2

    .line 207
    aget-byte v2, v0, v2

    add-int/lit8 v5, p2, 0x3

    .line 208
    aget-byte v5, v0, v5

    add-int/lit8 v3, p2, 0x4

    .line 209
    aget-byte v0, v0, v3

    const/16 v3, 0x63

    new-array v9, v8, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 210
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v9, v8, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 211
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v9, v8, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v8

    aput v10, v9, v7

    .line 212
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v9, v8, [I

    and-int/2addr v5, v6

    shl-int/lit8 v4, v5, 0x8

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    aput v0, v9, v7

    .line 213
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v3, v8, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v3, v7

    .line 214
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    :cond_2d
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/tn;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/tn;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/tn;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/tn;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/tn;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x90

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
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/16 v0, -0x70

    aput v0, p1, p3

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p2, p2, p4

    aput p2, p1, p3

    const/4 p2, 0x4

    aput p4, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
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

.method public final b3()V
    .locals 3

    const-string v0, "com.syu.carinfo.honda.Act_RZC_CarCD_AoDeSai"

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
