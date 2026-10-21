.class public Lk0/co;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/co;->c:I

    const/16 v1, 0xb

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

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v9, 0x6

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v10, 0x7

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v11, 0x8

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v13, 0xa

    aput-object v4, v2, v13

    iput-object v2, p0, Lk0/co;->d:[[I

    .line 4
    iput v0, p0, Lk0/co;->f:I

    const/16 v2, 0x33

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_b

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x13

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x14

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x15

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x16

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x17

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    const/16 v4, 0x18

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    const/16 v4, 0x19

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    const/16 v4, 0x1a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    const/16 v4, 0x1b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    const/16 v4, 0x1c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    const/16 v4, 0x1d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    const/16 v4, 0x1e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    const/16 v4, 0x1f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    const/16 v4, 0x20

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    const/16 v4, 0x21

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    const/16 v4, 0x22

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    const/16 v4, 0x23

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    const/16 v4, 0x24

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    const/16 v4, 0x25

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_31

    const/16 v4, 0x26

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    const/16 v4, 0x27

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    const/16 v4, 0x28

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_34

    const/16 v4, 0x29

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_35

    const/16 v4, 0x2a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    const/16 v4, 0x2b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_37

    const/16 v4, 0x2c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_38

    const/16 v4, 0x2d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_39

    const/16 v4, 0x2e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3a

    const/16 v4, 0x2f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3b

    const/16 v4, 0x30

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3c

    const/16 v4, 0x31

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3d

    const/16 v3, 0x32

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/co;->g:[[I

    .line 6
    iput v0, p0, Lk0/co;->h:I

    .line 7
    iput v0, p0, Lk0/co;->i:I

    return-void

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x10
        0x43
    .end array-data

    :array_8
    .array-data 4
        0x11
        0x44
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x37
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x28
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x29
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x2a
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x2b
    .end array-data

    :array_f
    .array-data 4
        0x5
        0x2c
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x2d
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x36
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x3a
    .end array-data

    :array_13
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_14
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_15
    .array-data 4
        0xb
        0x15
    .end array-data

    :array_16
    .array-data 4
        0xc
        0x1d
    .end array-data

    :array_17
    .array-data 4
        0xd
        0xc
    .end array-data

    :array_18
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_19
    .array-data 4
        0xf
        0x4
    .end array-data

    :array_1a
    .array-data 4
        0x10
        0x1d
    .end array-data

    :array_1b
    .array-data 4
        0x11
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0x12
        0x26
    .end array-data

    :array_1d
    .array-data 4
        0x13
        0xb
    .end array-data

    :array_1e
    .array-data 4
        0x14
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x15
        0x15
    .end array-data

    :array_20
    .array-data 4
        0x16
        0x38
    .end array-data

    :array_21
    .array-data 4
        0x17
        0x10
    .end array-data

    :array_22
    .array-data 4
        0x18
        0x5
    .end array-data

    :array_23
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_24
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_25
    .array-data 4
        0x1b
        0x12
    .end array-data

    :array_26
    .array-data 4
        0x1c
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x1d
        0x5
    .end array-data

    :array_28
    .array-data 4
        0x1e
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x1f
        -0x1
    .end array-data

    :array_2a
    .array-data 4
        0x20
        -0x1
    .end array-data

    :array_2b
    .array-data 4
        0x21
        0x22
    .end array-data

    :array_2c
    .array-data 4
        0x22
        0x23
    .end array-data

    :array_2d
    .array-data 4
        0x23
        0x23
    .end array-data

    :array_2e
    .array-data 4
        0x24
        0x22
    .end array-data

    :array_2f
    .array-data 4
        0x25
        0x21
    .end array-data

    :array_30
    .array-data 4
        0x26
        0x20
    .end array-data

    :array_31
    .array-data 4
        0x27
        0x5
    .end array-data

    :array_32
    .array-data 4
        0x28
        0x16
    .end array-data

    :array_33
    .array-data 4
        0x29
        0x35
    .end array-data

    :array_34
    .array-data 4
        0x2a
        0x3
    .end array-data

    :array_35
    .array-data 4
        0x2b
        0x4
    .end array-data

    :array_36
    .array-data 4
        0x2c
        -0x1
    .end array-data

    :array_37
    .array-data 4
        0x2d
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0x30
        0x7
    .end array-data

    :array_39
    .array-data 4
        0x31
        0x8
    .end array-data

    :array_3a
    .array-data 4
        0x32
        -0x1
    .end array-data

    :array_3b
    .array-data 4
        0x33
        -0x1
    .end array-data

    :array_3c
    .array-data 4
        0x34
        -0x1
    .end array-data

    :array_3d
    .array-data 4
        0x35
        -0x1
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
    iput v2, v0, Lk0/mt;->l:I

    .line 5
    iput v1, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    .line 7
    iput v1, v0, Lk0/mt;->i:I

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 10
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v2, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x3

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_26

    const/16 v8, 0x1f

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x2

    if-eq v2, v11, :cond_1c

    const/16 v12, 0x80

    if-eq v2, v8, :cond_1b

    const/16 v8, 0x71

    const/16 v13, 0x3f

    const/4 v14, 0x6

    const/4 v15, 0x4

    if-eq v2, v8, :cond_13

    const/16 v8, 0x2a

    const/4 v7, 0x5

    if-eq v2, v8, :cond_12

    const/16 v8, 0x2b

    if-eq v2, v8, :cond_e

    const/4 v8, -0x3

    const/16 v17, -0x2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_e

    :pswitch_0
    const/16 v2, 0x8f

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 2
    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    add-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    const/16 v2, 0x87

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 3
    aget-byte v7, v1, v7

    shl-int/2addr v7, v9

    const v8, 0xff00

    and-int/2addr v7, v8

    add-int/lit8 v10, p2, 0x3

    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 4
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 5
    aget-byte v7, v1, v7

    shl-int/2addr v7, v9

    and-int/2addr v7, v8

    add-int/lit8 v10, p2, 0x6

    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 6
    aget-byte v7, v1, v7

    shl-int/2addr v7, v9

    and-int/2addr v7, v8

    add-int/lit8 v10, p2, 0x8

    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 7
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 8
    aget-byte v7, v1, v7

    shl-int/2addr v7, v9

    and-int/2addr v7, v8

    add-int/lit8 v10, p2, 0xb

    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xc

    .line 9
    aget-byte v7, v1, v7

    shl-int/2addr v7, v9

    and-int/2addr v7, v8

    add-int/lit8 v10, p2, 0xd

    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    or-int/2addr v7, v10

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xe

    .line 10
    aget-byte v6, v1, v6

    shl-int/2addr v6, v9

    and-int/2addr v6, v8

    add-int/lit8 v7, p2, 0xf

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_2
    const/16 v2, 0x7f

    new-array v4, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 11
    aget-byte v9, v1, v8

    shr-int/2addr v9, v10

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 12
    aget-byte v4, v1, v8

    shr-int/2addr v4, v14

    and-int/2addr v4, v6

    aput v4, v2, v5

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v4, v6, [I

    .line 13
    aget-byte v9, v1, v8

    shr-int/lit8 v7, v9, 0x5

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v6, [I

    .line 14
    aget-byte v7, v1, v8

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v6, [I

    .line 15
    aget-byte v7, v1, v8

    shr-int/lit8 v3, v7, 0x3

    and-int/2addr v3, v6

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    .line 16
    aget-byte v4, v1, v8

    shr-int/2addr v4, v11

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v6, [I

    .line 17
    aget-byte v4, v1, v8

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v6, [I

    .line 18
    aget-byte v1, v1, v8

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_3
    const/16 v2, 0x7c

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 19
    aget-byte v8, v1, v7

    shr-int/2addr v8, v14

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v4, v6, [I

    .line 20
    aget-byte v8, v1, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v4, v6, [I

    .line 21
    aget-byte v1, v1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v3

    aput v1, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_4
    const/16 v2, 0x2a

    new-array v3, v6, [I

    add-int/lit8 v9, p2, 0x2

    .line 22
    aget-byte v11, v1, v9

    shr-int/2addr v11, v10

    and-int/2addr v11, v6

    aput v11, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v6, [I

    .line 23
    aget-byte v9, v1, v9

    shr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0xf

    aput v9, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v6, [I

    add-int/lit8 v9, p2, 0x3

    .line 24
    aget-byte v11, v1, v9

    shr-int/lit8 v10, v11, 0x7

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x30

    new-array v3, v6, [I

    .line 25
    aget-byte v10, v1, v9

    shr-int/2addr v10, v14

    and-int/2addr v10, v6

    aput v10, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v6, [I

    .line 26
    aget-byte v10, v1, v9

    shr-int/lit8 v7, v10, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v6, [I

    .line 27
    aget-byte v7, v1, v9

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 28
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    const/16 v7, 0x28

    if-nez v3, :cond_0

    new-array v1, v6, [I

    aput v17, v1, v5

    .line 29
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 30
    :cond_0
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-ne v3, v13, :cond_1

    new-array v1, v6, [I

    aput v8, v1, v5

    .line 31
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1
    new-array v3, v6, [I

    .line 32
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_5
    const/16 v2, 0xa

    new-array v12, v6, [I

    add-int/lit8 v16, p2, 0x2

    .line 33
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v12, v6, [I

    .line 34
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v12, v6, [I

    .line 35
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v12, v6, [I

    .line 36
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v12, v6, [I

    .line 37
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x3

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v12, v6, [I

    .line 38
    aget-byte v16, v1, v16

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x39

    new-array v12, v6, [I

    add-int/lit8 v16, p2, 0x3

    .line 39
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v12, v6, [I

    .line 40
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v12, v6, [I

    .line 41
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v12, v6, [I

    .line 42
    aget-byte v16, v1, v16

    shr-int/lit8 v16, v16, 0x0

    and-int/lit8 v16, v16, 0xf

    aput v16, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v12, v6, [I

    add-int/lit8 v16, p2, 0x4

    .line 43
    aget-byte v18, v1, v16

    shr-int/lit8 v18, v18, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v12, v6, [I

    .line 44
    aget-byte v18, v1, v16

    shr-int/lit8 v14, v18, 0x6

    and-int/2addr v14, v6

    aput v14, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v12, v6, [I

    .line 45
    aget-byte v14, v1, v16

    shr-int/2addr v14, v7

    and-int/2addr v14, v6

    aput v14, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v12, v6, [I

    .line 46
    aget-byte v14, v1, v16

    shr-int/2addr v14, v15

    and-int/2addr v14, v6

    aput v14, v12, v5

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 47
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v12, 0x1c

    const/16 v14, 0x1b

    if-eqz v2, :cond_6

    add-int/lit8 v2, p2, 0x5

    .line 48
    aget-byte v15, v1, v2

    and-int/2addr v15, v4

    if-nez v15, :cond_2

    new-array v2, v6, [I

    aput v17, v2, v5

    .line 49
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 50
    :cond_2
    aget-byte v15, v1, v2

    and-int/2addr v15, v4

    if-ne v15, v13, :cond_3

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 51
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v15, v6, [I

    .line 52
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v15, v5

    invoke-static {v12, v15}, Lk0/qt;->y0(I[I)V

    :goto_0
    add-int/lit8 v2, p2, 0x6

    .line 53
    aget-byte v12, v1, v2

    and-int/2addr v12, v4

    if-nez v12, :cond_4

    new-array v2, v6, [I

    aput v17, v2, v5

    .line 54
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 55
    :cond_4
    aget-byte v12, v1, v2

    and-int/2addr v12, v4

    if-ne v12, v13, :cond_5

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 56
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v8, v6, [I

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v8, v5

    invoke-static {v14, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    add-int/lit8 v2, p2, 0x5

    .line 58
    aget-byte v15, v1, v2

    and-int/2addr v15, v4

    if-nez v15, :cond_7

    new-array v2, v6, [I

    aput v17, v2, v5

    .line 59
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 60
    :cond_7
    aget-byte v15, v1, v2

    and-int/2addr v15, v4

    if-ne v15, v13, :cond_8

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 61
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v15, v6, [I

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v15, v5

    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    :goto_1
    add-int/lit8 v2, p2, 0x6

    .line 63
    aget-byte v14, v1, v2

    and-int/2addr v14, v4

    if-nez v14, :cond_9

    new-array v2, v6, [I

    aput v17, v2, v5

    .line 64
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    .line 65
    :cond_9
    aget-byte v14, v1, v2

    and-int/2addr v14, v4

    if-ne v14, v13, :cond_a

    new-array v2, v6, [I

    aput v8, v2, v5

    .line 66
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v8, v6, [I

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    aput v2, v8, v5

    invoke-static {v12, v8}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x1d

    new-array v8, v6, [I

    add-int/lit8 v12, p2, 0x7

    .line 68
    aget-byte v13, v1, v12

    shr-int/2addr v13, v7

    and-int/2addr v13, v10

    aget-byte v14, v1, v12

    shl-int/2addr v14, v11

    and-int/2addr v14, v9

    or-int/2addr v13, v14

    aput v13, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 69
    aget-byte v6, v1, v12

    shr-int/2addr v6, v11

    and-int/2addr v6, v10

    aget-byte v8, v1, v12

    shl-int/lit8 v3, v8, 0x3

    and-int/2addr v3, v9

    or-int/2addr v3, v6

    aput v3, v2, v5

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 70
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-nez v1, :cond_b

    .line 71
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_b
    mul-int/2addr v1, v7

    add-int/lit16 v1, v1, 0x1f4

    .line 72
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    .line 73
    :pswitch_6
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_c

    goto/16 :goto_e

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lk0/co;->c3(I)V

    goto/16 :goto_e

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lk0/co;->b3([BII)V

    goto/16 :goto_e

    :pswitch_8
    const/16 v2, 0x79

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 76
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_9
    const/16 v2, 0x66

    new-array v4, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 77
    aget-byte v9, v1, v8

    shr-int/2addr v9, v10

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v6, [I

    .line 78
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v3

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v4, v6, [I

    .line 79
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v4, v6, [I

    .line 80
    aget-byte v9, v1, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v6, [I

    .line 81
    aget-byte v9, v1, v8

    shr-int/2addr v9, v6

    and-int/2addr v9, v3

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v4, v6, [I

    .line 82
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 83
    aget-byte v9, v1, v8

    shr-int/2addr v9, v10

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v6, [I

    .line 84
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v3

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v6, [I

    .line 85
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v6, [I

    .line 86
    aget-byte v9, v1, v8

    shr-int/2addr v9, v3

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v6, [I

    .line 87
    aget-byte v9, v1, v8

    shr-int/2addr v9, v11

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 88
    aget-byte v4, v1, v8

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/16 v4, 0x71

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v6, [I

    .line 89
    aget-byte v8, v1, v8

    shr-int/2addr v8, v5

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v6, [I

    add-int/lit8 v8, p2, 0x4

    .line 90
    aget-byte v9, v1, v8

    shr-int/2addr v9, v10

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v4, v6, [I

    .line 91
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v6, [I

    .line 92
    aget-byte v9, v1, v8

    shr-int/lit8 v7, v9, 0x5

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v6, [I

    .line 93
    aget-byte v7, v1, v8

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v6, [I

    .line 94
    aget-byte v7, v1, v8

    shr-int/lit8 v3, v7, 0x3

    and-int/2addr v3, v6

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v6, [I

    .line 95
    aget-byte v1, v1, v8

    shr-int/2addr v1, v11

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_a
    const/16 v2, 0x62

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 96
    aget-byte v8, v1, v7

    shr-int/2addr v8, v14

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v6, [I

    .line 97
    aget-byte v8, v1, v7

    shr-int/2addr v8, v15

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v6, [I

    .line 98
    aget-byte v8, v1, v7

    shr-int/2addr v8, v11

    and-int/2addr v8, v3

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v6, [I

    .line 99
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v3

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 100
    aget-byte v8, v1, v7

    shr-int/2addr v8, v11

    and-int/2addr v3, v8

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v6, [I

    .line 101
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v6, [I

    .line 102
    aget-byte v1, v1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_b
    add-int/lit8 v2, p2, 0x3

    .line 103
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 104
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_d

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 105
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 106
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 107
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 108
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v2, v6, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 109
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 110
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 111
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 112
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 113
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v8, p2, 0x3

    .line 114
    aget-byte v9, v1, v8

    and-int/2addr v9, v4

    .line 115
    aget-byte v10, v1, v8

    and-int/2addr v10, v4

    add-int/lit8 v7, p2, 0x5

    .line 116
    aget-byte v11, v1, v7

    and-int/2addr v11, v4

    if-nez v3, :cond_f

    if-nez v9, :cond_f

    if-nez v10, :cond_f

    if-nez v11, :cond_f

    .line 117
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 118
    :cond_f
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_10

    sget v5, Ll0/c0;->h:I

    if-ne v5, v9, :cond_10

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_10

    sget v5, Ll0/c0;->j:I

    if-eq v5, v11, :cond_11

    .line 119
    :cond_10
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_11

    .line 120
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 121
    sput v15, Ll0/c0;->k:I

    .line 122
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 123
    :cond_11
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 124
    sput v9, Ll0/c0;->h:I

    .line 125
    sput v10, Ll0/c0;->i:I

    .line 126
    sput v11, Ll0/c0;->j:I

    .line 127
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 128
    aget-byte v2, v1, v8

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 129
    aget-byte v2, v1, v8

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 130
    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 131
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 132
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    invoke-static {v3}, Ll0/c0;->L0(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 133
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 134
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    invoke-static {v1}, Ll0/c0;->L0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :cond_13
    const-string v2, "XC_"

    add-int/lit8 v4, p2, 0x3

    .line 135
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    if-eqz v4, :cond_1a

    if-eq v4, v6, :cond_19

    if-eq v4, v11, :cond_18

    if-eq v4, v3, :cond_17

    if-eq v4, v15, :cond_16

    if-eq v4, v14, :cond_15

    const/16 v6, 0x20

    if-eq v4, v6, :cond_14

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_5

    .line 136
    :pswitch_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Encore_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 137
    :pswitch_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Malibu_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 138
    :pswitch_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Aveo_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 139
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Roewe950_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 140
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GL8_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 141
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LaCrosse_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 142
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Regal_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 143
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Excelle_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 144
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cruze_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 145
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "20"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x4

    aget-byte v6, v1, v2

    shr-int/2addr v6, v15

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x5

    aget-byte v6, v1, v2

    shr-int/2addr v6, v15

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x6

    aget-byte v6, v1, v2

    shr-int/2addr v6, v15

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_V"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x8

    invoke-direct {v2, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 148
    aget-byte v1, v1, v2

    invoke-static {v1, v5, v12, v6, v12}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_e

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 149
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 150
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 151
    iput v2, v0, Lk0/co;->f:I

    move v2, v5

    .line 152
    :goto_6
    iget-object v3, v0, Lk0/co;->g:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_1e

    .line 153
    iget v7, v0, Lk0/co;->f:I

    aget-object v11, v3, v2

    aget v11, v11, v5

    if-ne v7, v11, :cond_1d

    if-eqz v7, :cond_1e

    .line 154
    iput v2, v0, Lk0/co;->e:I

    goto :goto_7

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 155
    :cond_1e
    :goto_7
    iget v7, v0, Lk0/co;->f:I

    const/16 v11, 0x2d

    if-eq v7, v11, :cond_25

    packed-switch v7, :pswitch_data_3

    and-int/2addr v1, v4

    if-ne v1, v6, :cond_1f

    .line 156
    array-length v1, v3

    if-ge v2, v1, :cond_2b

    .line 157
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1f
    if-nez v1, :cond_2b

    .line 158
    iget v1, v0, Lk0/co;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_20

    if-eq v1, v4, :cond_20

    .line 159
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 160
    :cond_20
    iput v4, v0, Lk0/co;->e:I

    goto/16 :goto_e

    :pswitch_f
    move v2, v5

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_21

    const/16 v3, 0x1e

    .line 161
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    const/16 v3, 0x1e

    .line 162
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_10
    move v2, v5

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_22

    .line 163
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 164
    :cond_22
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_11
    move v2, v5

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_23

    .line 165
    invoke-static {v9, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 166
    :cond_23
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    goto :goto_e

    :pswitch_12
    move v2, v5

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_24

    .line 167
    invoke-static {v10, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 168
    :cond_24
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_25
    and-int/2addr v1, v4

    if-ne v1, v6, :cond_2b

    .line 169
    invoke-virtual/range {p0 .. p0}, Lk0/co;->a3()V

    goto :goto_e

    :cond_26
    add-int/lit8 v2, p2, 0x2

    .line 170
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 171
    aget-byte v1, v1, v3

    and-int/2addr v2, v4

    .line 172
    iput v2, v0, Lk0/co;->c:I

    move v2, v5

    .line 173
    :goto_c
    iget-object v3, v0, Lk0/co;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_28

    .line 174
    iget v7, v0, Lk0/co;->c:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_27

    if-eqz v7, :cond_28

    .line 175
    iput v2, v0, Lk0/co;->b:I

    goto :goto_d

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    :goto_d
    and-int/2addr v1, v4

    if-ne v1, v6, :cond_29

    .line 176
    array-length v1, v3

    if-ge v2, v1, :cond_2b

    .line 177
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_29
    if-nez v1, :cond_2b

    .line 178
    iget v1, v0, Lk0/co;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2a

    if-eq v1, v4, :cond_2a

    .line 179
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 180
    :cond_2a
    iput v4, v0, Lk0/co;->b:I

    :cond_2b
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 5

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x86

    const/16 p3, 0xa

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lk0/co;->d3(IB[I)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x85

    aput p3, p1, v4

    aput v4, p1, v2

    .line 3
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0x91

    aput p3, p1, v4

    aput v2, p1, v2

    .line 4
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x84

    aput p3, p1, v4

    aput v4, p1, v2

    .line 5
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v2, p1, v2

    .line 6
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v2, p1, v2

    .line 7
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0x8d

    aput p3, p1, v4

    aput v2, p1, v2

    .line 8
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.carinfo.xc.gm.XC_GMadRongweiCarInfo"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final b3([BII)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_8

    add-int v2, p2, v1

    .line 2
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    goto :goto_3

    :cond_0
    const/16 v5, 0x23

    const/16 v6, 0x2a

    const/16 v7, 0xb

    const/4 v8, -0x1

    const/16 v9, 0xa

    if-le v3, v8, :cond_1

    if-ge v3, v9, :cond_1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-ne v3, v9, :cond_2

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-ne v3, v7, :cond_3

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    :cond_3
    :goto_1
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    if-le v2, v8, :cond_5

    if-ge v2, v9, :cond_5

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    if-ne v2, v9, :cond_6

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    if-ne v2, v7, :cond_7

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7a

    .line 11
    iget-object p3, p0, Lk0/co;->k:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iput-object p1, p0, Lk0/co;->k:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final c3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7b

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget p1, Lh0/c;->G:I

    if-nez p1, :cond_5

    iget v3, p0, Lk0/co;->i:I

    if-nez v3, :cond_5

    .line 3
    iput v0, p0, Lk0/co;->i:I

    .line 4
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lk0/co;->j:I

    .line 5
    sget p1, Lu0/b;->j:I

    if-eqz p1, :cond_1

    .line 6
    invoke-static {v2}, Lu0/d;->M(I)V

    .line 7
    :cond_1
    sget p1, Lu0/b;->D:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lk0/co;->i:I

    if-eqz p1, :cond_2

    .line 8
    sget p1, Ly0/f;->i:I

    if-eqz p1, :cond_2

    const/4 p1, -0x4

    .line 9
    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 10
    :cond_2
    sget p1, Lu0/b;->D:I

    if-eq p1, v1, :cond_3

    .line 11
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v1}, Lu0/h;->c(I)V

    .line 12
    :cond_3
    sget-object p1, Lu0/b;->J1:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "com.syu.canbus"

    if-eqz p1, :cond_4

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.syu.onstar.xp.yinglang.showpip"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/ContextWrapper;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 16
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.syu.carinfo.xp.yinglang.YLOnStarAct"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "onstar"

    const-string v1, "on"

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x200001

    and-int/2addr v0, v1

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    .line 21
    iget p1, p0, Lk0/co;->i:I

    if-nez p1, :cond_8

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 22
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_6
    iget p1, p0, Lk0/co;->i:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lk0/co;->j:I

    if-eq p1, v1, :cond_7

    .line 24
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, p1}, Lu0/h;->c(I)V

    .line 25
    :cond_7
    iput v2, p0, Lk0/co;->i:I

    .line 26
    iput v2, p0, Lk0/co;->h:I

    :catch_0
    :cond_8
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xba
        0x2
        0x3
        0x0
    .end array-data
.end method

.method public final varargs d3(IB[I)V
    .locals 5

    const/16 p1, 0xd

    new-array p2, p1, [I

    const/16 v0, -0x1d

    const/4 v1, 0x0

    aput v0, p2, v1

    const/16 v0, -0x7a

    const/4 v2, 0x1

    aput v0, p2, v2

    const/4 v0, 0x2

    const/16 v2, 0xa

    aput v2, p2, v0

    .line 1
    array-length v0, p3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v2, :cond_1

    add-int/2addr v3, v0

    .line 2
    aget v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v2

    :goto_2
    if-ge v3, p1, :cond_2

    .line 3
    aput v1, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method
