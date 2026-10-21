.class public Lk0/r2;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:[[I

.field public g:B

.field public h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/r2;->c:I

    const/16 v2, 0xff

    iput v2, v0, Lk0/r2;->d:I

    const/16 v2, 0x1b

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

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    const/16 v24, 0x14

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    const/16 v25, 0x19

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    const/16 v25, 0x1a

    aput-object v5, v3, v25

    iput-object v3, v0, Lk0/r2;->e:[[I

    const/16 v3, 0x21

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 4
    fill-array-data v5, :array_1b

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_30

    const/16 v6, 0x15

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_31

    const/16 v6, 0x16

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_32

    const/16 v6, 0x17

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_33

    const/16 v6, 0x18

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_34

    const/16 v6, 0x19

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_35

    const/16 v6, 0x1a

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_36

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_37

    const/16 v5, 0x1c

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_38

    const/16 v5, 0x1d

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_39

    const/16 v5, 0x1e

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_3a

    const/16 v5, 0x1f

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_3b

    const/16 v4, 0x20

    aput-object v2, v3, v4

    iput-object v3, v0, Lk0/r2;->f:[[I

    .line 5
    iput-byte v1, v0, Lk0/r2;->g:B

    .line 6
    new-instance v1, Lk0/r2$a;

    invoke-direct {v1, v0}, Lk0/r2$a;-><init>(Lk0/r2;)V

    iput-object v1, v0, Lk0/r2;->h:Ljava/lang/Runnable;

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
        0x9
    .end array-data

    :array_9
    .array-data 4
        0x18
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x29
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x30
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x31
        0x19
    .end array-data

    :array_d
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x33
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x34
        0x4b
    .end array-data

    :array_10
    .array-data 4
        0x35
        0x16
    .end array-data

    :array_11
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_12
    .array-data 4
        0x37
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x38
        0x28
    .end array-data

    :array_14
    .array-data 4
        0x39
        0x29
    .end array-data

    :array_15
    .array-data 4
        0x3a
        0x2a
    .end array-data

    :array_16
    .array-data 4
        0x3b
        0x2b
    .end array-data

    :array_17
    .array-data 4
        0x3c
        0x2c
    .end array-data

    :array_18
    .array-data 4
        0x3d
        0x2d
    .end array-data

    :array_19
    .array-data 4
        0x3e
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x3f
        0x47
    .end array-data

    :array_1b
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_1c
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_1d
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_1e
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_1f
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_20
    .array-data 4
        0x86
        0x12
    .end array-data

    :array_21
    .array-data 4
        0x87
        0x1a
    .end array-data

    :array_22
    .array-data 4
        0x88
        0x12
    .end array-data

    :array_23
    .array-data 4
        0x89
        0x6
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x28
    .end array-data

    :array_25
    .array-data 4
        0x2
        0x29
    .end array-data

    :array_26
    .array-data 4
        0x3
        0x2a
    .end array-data

    :array_27
    .array-data 4
        0x4
        0x2b
    .end array-data

    :array_28
    .array-data 4
        0x5
        0x2c
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x2d
    .end array-data

    :array_2a
    .array-data 4
        0x7
        0x19
    .end array-data

    :array_2b
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_2c
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_2d
    .array-data 4
        0xa
        0x1d
    .end array-data

    :array_2e
    .array-data 4
        0xb
        0x6
    .end array-data

    :array_2f
    .array-data 4
        0xc
        0x15
    .end array-data

    :array_30
    .array-data 4
        0xd
        0x5
    .end array-data

    :array_31
    .array-data 4
        0xe
        0x4a
    .end array-data

    :array_32
    .array-data 4
        0xf
        0x4b
    .end array-data

    :array_33
    .array-data 4
        0x10
        0x16
    .end array-data

    :array_34
    .array-data 4
        0x11
        0x35
    .end array-data

    :array_35
    .array-data 4
        0x12
        0x12
    .end array-data

    :array_36
    .array-data 4
        0x13
        0xe
    .end array-data

    :array_37
    .array-data 4
        0x14
        0x46
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
        0x1f
    .end array-data

    :array_3b
    .array-data 4
        0x33
        0x1e
    .end array-data
.end method

.method public static synthetic c3(Lk0/r2;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/r2;->h:Ljava/lang/Runnable;

    return-object p0
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
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v3, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x10

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0xff

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v2, v7, :cond_1c

    const/16 v7, 0xb

    const v10, 0xff00

    const/16 v11, 0x8

    if-eq v2, v7, :cond_1b

    const/16 v7, 0x1c

    if-eq v2, v7, :cond_19

    const/16 v7, 0x20

    if-eq v2, v7, :cond_14

    const/16 v7, 0x32

    if-eq v2, v7, :cond_13

    const/16 v7, 0x35

    if-eq v2, v7, :cond_12

    if-eq v2, v9, :cond_e

    if-eq v2, v5, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    .line 4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    and-int/2addr v2, v6

    .line 5
    iput v2, v0, Lk0/r2;->c:I

    move v2, v8

    .line 6
    :goto_0
    iget-object v3, v0, Lk0/r2;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 7
    iget v4, v0, Lk0/r2;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_1

    if-eqz v4, :cond_2

    .line 8
    iput v2, v0, Lk0/r2;->b:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/2addr v1, v6

    if-ne v1, v9, :cond_3

    .line 9
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 10
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_3
    if-nez v1, :cond_1f

    .line 11
    iget v1, v0, Lk0/r2;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_4

    if-eq v1, v6, :cond_4

    .line 12
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 13
    :cond_4
    iput v6, v0, Lk0/r2;->b:I

    goto/16 :goto_e

    .line 14
    :cond_5
    sget v3, Lk0/nt;->c:I

    if-ne v3, v5, :cond_1f

    and-int/2addr v2, v6

    .line 15
    iput v2, v0, Lk0/r2;->c:I

    move v2, v8

    .line 16
    :goto_2
    iget-object v3, v0, Lk0/r2;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 17
    iget v4, v0, Lk0/r2;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_6

    if-eqz v4, :cond_7

    .line 18
    iput v2, v0, Lk0/r2;->b:I

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_7
    :goto_3
    iget v4, v0, Lk0/r2;->c:I

    packed-switch v4, :pswitch_data_0

    and-int/2addr v1, v6

    if-ne v1, v9, :cond_c

    .line 20
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 21
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_0
    move v2, v8

    :goto_4
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1e

    if-ge v2, v3, :cond_8

    .line 22
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 23
    :cond_8
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_1
    move v2, v8

    :goto_5
    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_9

    .line 24
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 25
    :cond_9
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_2
    move v2, v8

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_a

    .line 26
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 27
    :cond_a
    invoke-static {v11, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :pswitch_3
    move v2, v8

    :goto_7
    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x7

    if-ge v2, v3, :cond_b

    .line 28
    invoke-static {v4, v8}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 29
    :cond_b
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_c
    if-nez v1, :cond_1f

    .line 30
    iget v1, v0, Lk0/r2;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_d

    if-eq v1, v6, :cond_d

    .line 31
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 32
    :cond_d
    iput v6, v0, Lk0/r2;->b:I

    goto/16 :goto_e

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 33
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 34
    aget-byte v1, v1, v3

    .line 35
    sget v3, Lk0/nt;->c:I

    if-ne v3, v5, :cond_1f

    and-int/2addr v2, v6

    or-int/lit16 v2, v2, 0x80

    .line 36
    iput v2, v0, Lk0/r2;->c:I

    move v2, v8

    .line 37
    :goto_8
    iget-object v3, v0, Lk0/r2;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_10

    .line 38
    iget v4, v0, Lk0/r2;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_f

    if-eqz v4, :cond_10

    .line 39
    iput v2, v0, Lk0/r2;->b:I

    goto :goto_9

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    :goto_9
    and-int/2addr v1, v6

    if-ne v1, v9, :cond_11

    .line 40
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 41
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_11
    if-nez v1, :cond_1f

    .line 42
    array-length v1, v3

    if-gt v2, v1, :cond_1f

    .line 43
    iget v1, v0, Lk0/r2;->b:I

    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 44
    :cond_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_1f

    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/r2;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 46
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/r2;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 47
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/r2;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 48
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lk0/r2;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 50
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 51
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 52
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 53
    aget-byte v7, v1, v7

    add-int/lit8 v12, p2, 0x7

    .line 54
    aget-byte v12, v1, v12

    add-int/lit8 v13, p2, 0x8

    .line 55
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x9

    .line 56
    aget-byte v1, v1, v14

    const/16 v14, 0x63

    new-array v15, v9, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v8

    .line 57
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v14, 0x66

    new-array v15, v9, [I

    shl-int/2addr v2, v11

    and-int/2addr v2, v10

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    aput v2, v15, v8

    .line 58
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v9, [I

    shl-int/2addr v4, v11

    and-int/2addr v4, v10

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v8

    .line 59
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v9, [I

    shl-int/lit8 v4, v12, 0x8

    and-int/2addr v4, v10

    and-int/lit16 v5, v7, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v8

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v9, [I

    shl-int/lit8 v4, v13, 0x8

    and-int/2addr v4, v10

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v8

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_14
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 63
    aget-byte v1, v1, v3

    .line 64
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_1f

    and-int/2addr v2, v6

    .line 65
    iput v2, v0, Lk0/r2;->c:I

    move v2, v8

    .line 66
    :goto_a
    iget-object v3, v0, Lk0/r2;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 67
    iget v4, v0, Lk0/r2;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v8

    if-ne v4, v5, :cond_15

    if-eqz v4, :cond_16

    .line 68
    iput v2, v0, Lk0/r2;->b:I

    goto :goto_b

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    :goto_b
    and-int/2addr v1, v6

    if-eqz v1, :cond_17

    .line 69
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 70
    iget-byte v1, v0, Lk0/r2;->g:B

    if-nez v1, :cond_1f

    add-int/2addr v1, v9

    int-to-byte v1, v1

    .line 71
    iput-byte v1, v0, Lk0/r2;->g:B

    .line 72
    aget-object v1, v3, v2

    aget v1, v1, v9

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 73
    iget-object v1, v0, Lk0/r2;->h:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    .line 74
    :cond_17
    iget v1, v0, Lk0/r2;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_18

    if-eq v1, v6, :cond_18

    .line 75
    aget-object v1, v3, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 76
    iget-object v1, v0, Lk0/r2;->h:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 77
    iput-byte v8, v0, Lk0/r2;->g:B

    .line 78
    :cond_18
    iput v6, v0, Lk0/r2;->b:I

    goto/16 :goto_e

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-ne v2, v9, :cond_1a

    .line 80
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_c

    .line 81
    :cond_1a
    invoke-static {v8}, Lu0/d;->C2(I)V

    :goto_c
    add-int/lit8 v2, p2, 0x3

    .line 82
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/r2;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 83
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lk0/r2;->b3(I)I

    move-result v4

    invoke-static {v4}, Lu0/d;->S2(I)V

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lk0/r2;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 85
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lk0/r2;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :cond_1b
    const/16 v2, 0x6b

    new-array v3, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 86
    aget-byte v5, v1, v5

    shl-int/2addr v5, v11

    and-int/2addr v5, v10

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    or-int/2addr v1, v5

    aput v1, v3, v8

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 88
    aget-byte v6, v1, v6

    add-int/lit8 v10, p2, 0x4

    .line 89
    aget-byte v1, v1, v10

    const-string v10, "persist.syu.reversefrontdoor"

    .line 90
    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1d

    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 91
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 92
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_1d
    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 93
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 94
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    :goto_d
    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 95
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v10, v9, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v9

    aput v11, v10, v8

    .line 96
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    new-array v7, v9, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v9

    aput v10, v7, v8

    .line 97
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    new-array v3, v9, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v9

    aput v2, v3, v8

    .line 98
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v9, [I

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v9, [I

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 100
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v9, [I

    shr-int/lit8 v5, v6, 0x5

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v9, [I

    shr-int/lit8 v5, v6, 0x4

    and-int/2addr v5, v9

    aput v5, v3, v8

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v9, [I

    shr-int/lit8 v4, v6, 0x3

    and-int/2addr v4, v9

    aput v4, v3, v8

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v9, [I

    aput v1, v3, v8

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_1e
    add-int/lit8 v2, p2, 0x4

    .line 105
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    invoke-static {v3}, Lk0/qt;->c(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x5

    .line 106
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    invoke-static {v3}, Lk0/qt;->c(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x6

    .line 107
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    invoke-static {v3}, Lk0/qt;->c(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 108
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x3

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_1f
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    const/16 p3, 0x73

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

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/16 p4, 0x81

    aput p4, p1, p3

    const/4 p4, 0x2

    aput p3, p1, p4

    const/4 p3, 0x3

    .line 2
    aget p2, p2, v0

    aput p2, p1, p3

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

.method public final b3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    :cond_3
    :goto_0
    return v1
.end method
