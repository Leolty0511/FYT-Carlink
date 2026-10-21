.class public Lk0/y8;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[[I

.field public k:[[I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:B

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x7

    new-array v2, v1, [[I

    .line 2
    iput-object v2, v0, Lk0/y8;->b:[[I

    new-array v2, v1, [[I

    .line 3
    iput-object v2, v0, Lk0/y8;->c:[[I

    const/16 v2, 0x10

    new-array v3, v2, [[I

    .line 4
    iput-object v3, v0, Lk0/y8;->d:[[I

    const/4 v3, 0x0

    .line 5
    iput v3, v0, Lk0/y8;->e:I

    .line 6
    iput v3, v0, Lk0/y8;->f:I

    .line 7
    iput v3, v0, Lk0/y8;->g:I

    const/16 v4, 0xff

    .line 8
    iput v4, v0, Lk0/y8;->i:I

    const/16 v4, 0x11

    new-array v5, v4, [[I

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 9
    fill-array-data v7, :array_0

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    const/4 v8, 0x1

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_3

    const/4 v9, 0x3

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    const/4 v10, 0x4

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    const/4 v11, 0x5

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    const/4 v12, 0x6

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_7

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_8

    const/16 v13, 0x8

    aput-object v7, v5, v13

    new-array v7, v6, [I

    fill-array-data v7, :array_9

    const/16 v14, 0x9

    aput-object v7, v5, v14

    new-array v7, v6, [I

    fill-array-data v7, :array_a

    const/16 v15, 0xa

    aput-object v7, v5, v15

    new-array v7, v6, [I

    fill-array-data v7, :array_b

    const/16 v16, 0xb

    aput-object v7, v5, v16

    new-array v7, v6, [I

    fill-array-data v7, :array_c

    const/16 v17, 0xc

    aput-object v7, v5, v17

    new-array v7, v6, [I

    fill-array-data v7, :array_d

    const/16 v18, 0xd

    aput-object v7, v5, v18

    new-array v7, v6, [I

    fill-array-data v7, :array_e

    const/16 v19, 0xe

    aput-object v7, v5, v19

    new-array v7, v6, [I

    fill-array-data v7, :array_f

    const/16 v20, 0xf

    aput-object v7, v5, v20

    new-array v7, v6, [I

    fill-array-data v7, :array_10

    aput-object v7, v5, v2

    iput-object v5, v0, Lk0/y8;->j:[[I

    const/16 v5, 0x2e

    new-array v5, v5, [[I

    new-array v7, v6, [I

    .line 10
    fill-array-data v7, :array_11

    aput-object v7, v5, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_12

    aput-object v3, v5, v8

    new-array v3, v6, [I

    fill-array-data v3, :array_13

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_14

    aput-object v3, v5, v9

    new-array v3, v6, [I

    fill-array-data v3, :array_15

    aput-object v3, v5, v10

    new-array v3, v6, [I

    fill-array-data v3, :array_16

    aput-object v3, v5, v11

    new-array v3, v6, [I

    fill-array-data v3, :array_17

    aput-object v3, v5, v12

    new-array v3, v6, [I

    fill-array-data v3, :array_18

    aput-object v3, v5, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_19

    aput-object v1, v5, v13

    new-array v1, v6, [I

    fill-array-data v1, :array_1a

    aput-object v1, v5, v14

    new-array v1, v6, [I

    fill-array-data v1, :array_1b

    aput-object v1, v5, v15

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v5, v16

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    aput-object v1, v5, v17

    new-array v1, v6, [I

    fill-array-data v1, :array_1e

    aput-object v1, v5, v18

    new-array v1, v6, [I

    fill-array-data v1, :array_1f

    aput-object v1, v5, v19

    new-array v1, v6, [I

    fill-array-data v1, :array_20

    aput-object v1, v5, v20

    new-array v1, v6, [I

    fill-array-data v1, :array_21

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_22

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_23

    const/16 v2, 0x12

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_24

    const/16 v2, 0x13

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_25

    const/16 v2, 0x14

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_26

    const/16 v2, 0x15

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_27

    const/16 v2, 0x16

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_28

    const/16 v2, 0x17

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_29

    const/16 v2, 0x18

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_2a

    const/16 v2, 0x19

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_2b

    const/16 v2, 0x1a

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_2c

    const/16 v2, 0x1b

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_2d

    const/16 v2, 0x1c

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_2e

    const/16 v2, 0x1d

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_2f

    const/16 v2, 0x1e

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_30

    const/16 v2, 0x1f

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_31

    const/16 v2, 0x20

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_32

    const/16 v2, 0x21

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_33

    const/16 v2, 0x22

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_34

    const/16 v2, 0x23

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_35

    const/16 v2, 0x24

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_36

    const/16 v2, 0x25

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_37

    const/16 v2, 0x26

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_38

    const/16 v2, 0x27

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_39

    const/16 v2, 0x28

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_3a

    const/16 v2, 0x29

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_3b

    const/16 v2, 0x2a

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_3c

    const/16 v2, 0x2b

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_3d

    const/16 v2, 0x2c

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_3e

    const/16 v2, 0x2d

    aput-object v1, v5, v2

    iput-object v5, v0, Lk0/y8;->k:[[I

    .line 11
    new-instance v1, Lk0/y8$a;

    invoke-direct {v1, v0}, Lk0/y8$a;-><init>(Lk0/y8;)V

    iput-object v1, v0, Lk0/y8;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/y8$b;

    invoke-direct {v1, v0}, Lk0/y8$b;-><init>(Lk0/y8;)V

    iput-object v1, v0, Lk0/y8;->m:Ljava/lang/Runnable;

    .line 13
    iput-byte v11, v0, Lk0/y8;->n:B

    .line 14
    new-instance v1, Lk0/y8$c;

    invoke-direct {v1, v0}, Lk0/y8$c;-><init>(Lk0/y8;)V

    iput-object v1, v0, Lk0/y8;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/y8$d;

    invoke-direct {v1, v0}, Lk0/y8$d;-><init>(Lk0/y8;)V

    iput-object v1, v0, Lk0/y8;->p:Ljava/lang/Runnable;

    const-string v1, ""

    .line 16
    iput-object v1, v0, Lk0/y8;->q:Ljava/lang/String;

    .line 17
    new-instance v1, Lk0/y8$e;

    invoke-direct {v1, v0}, Lk0/y8$e;-><init>(Lk0/y8;)V

    iput-object v1, v0, Lk0/y8;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v1, Lk0/y8$f;

    invoke-direct {v1, v0}, Lk0/y8$f;-><init>(Lk0/y8;)V

    iput-object v1, v0, Lk0/y8;->s:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/y8$g;

    invoke-direct {v1, v0}, Lk0/y8$g;-><init>(Lk0/y8;)V

    iput-object v1, v0, Lk0/y8;->t:Ljava/lang/Runnable;

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
        0xc
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
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x11
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x12
        0x18
    .end array-data

    :array_f
    .array-data 4
        0x13
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x14
        0x19
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_14
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_15
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_17
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_18
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_19
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_1a
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_1b
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_1c
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0xd
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0xe
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_20
    .array-data 4
        0x10
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x11
        0x36
    .end array-data

    :array_22
    .array-data 4
        0x12
        0x5
    .end array-data

    :array_23
    .array-data 4
        0x13
        0x36
    .end array-data

    :array_24
    .array-data 4
        0x14
        0x18
    .end array-data

    :array_25
    .array-data 4
        0x15
        0x4a
    .end array-data

    :array_26
    .array-data 4
        0x16
        0x4b
    .end array-data

    :array_27
    .array-data 4
        0x17
        0x16
    .end array-data

    :array_28
    .array-data 4
        0x18
        0x35
    .end array-data

    :array_29
    .array-data 4
        0x19
        0x4
    .end array-data

    :array_2a
    .array-data 4
        0x1a
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x1b
        0x40
    .end array-data

    :array_2c
    .array-data 4
        0x1c
        0x10
    .end array-data

    :array_2d
    .array-data 4
        0x1d
        0xb
    .end array-data

    :array_2e
    .array-data 4
        0x1e
        0x42
    .end array-data

    :array_2f
    .array-data 4
        0x1f
        0x41
    .end array-data

    :array_30
    .array-data 4
        0x20
        0xf
    .end array-data

    :array_31
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x22
        0x3a
    .end array-data

    :array_33
    .array-data 4
        0x23
        0x3f
    .end array-data

    :array_34
    .array-data 4
        0x24
        0x26
    .end array-data

    :array_35
    .array-data 4
        0x25
        0x37
    .end array-data

    :array_36
    .array-data 4
        0x26
        0x3f
    .end array-data

    :array_37
    .array-data 4
        0x27
        0x19
    .end array-data

    :array_38
    .array-data 4
        0x28
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x29
        0x11
    .end array-data

    :array_3a
    .array-data 4
        0x2a
        0x22
    .end array-data

    :array_3b
    .array-data 4
        0x2b
        0x23
    .end array-data

    :array_3c
    .array-data 4
        0x2c
        0x20
    .end array-data

    :array_3d
    .array-data 4
        0x2d
        0x21
    .end array-data

    :array_3e
    .array-data 4
        0x30
        0x3e
    .end array-data
.end method

.method public static a3()V
    .locals 16

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xf

    const/16 v2, 0xb

    const/16 v3, 0x9

    const/16 v4, 0xd

    const/4 v5, 0x2

    const/16 v6, 0x54

    const/4 v7, 0x6

    const/high16 v8, 0x10000

    const/16 v9, 0x4d

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/16 v12, 0x20

    const/16 v13, 0xa

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v0, v5, :cond_11

    if-eq v0, v14, :cond_11

    if-eq v0, v10, :cond_11

    if-eq v0, v7, :cond_11

    const/16 v0, 0x1b

    new-array v10, v0, [I

    move v7, v11

    :goto_0
    if-ge v7, v0, :cond_0

    .line 2
    aput v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    aput v0, v10, v11

    const/16 v0, 0x92

    aput v0, v10, v15

    .line 3
    invoke-static {}, Lk0/y8;->b3()I

    move-result v0

    aput v0, v10, v5

    .line 4
    sget v0, Lu0/b;->D:I

    const/16 v7, 0x41

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 5
    :pswitch_0
    sget v0, Lu0/b;->s3:I

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    int-to-byte v0, v15

    aput v9, v10, v14

    add-int/lit8 v5, v0, 0x1

    int-to-byte v5, v5

    add-int/2addr v0, v14

    const/16 v6, 0x45

    .line 6
    aput v6, v10, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v0, v0

    add-int/2addr v5, v14

    const/16 v6, 0x44

    .line 7
    aput v6, v10, v5

    add-int/lit8 v5, v0, 0x1

    int-to-byte v5, v5

    add-int/2addr v0, v14

    const/16 v6, 0x49

    .line 8
    aput v6, v10, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v0, v0

    add-int/2addr v5, v14

    .line 9
    aput v7, v10, v5

    add-int/2addr v0, v14

    .line 10
    aput v12, v10, v0

    .line 11
    sget v0, Lu0/b;->r3:I

    rem-int/lit16 v0, v0, 0x2710

    .line 12
    div-int/lit16 v5, v0, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v10, v3

    .line 13
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v13

    rem-int/lit16 v5, v0, 0x3e8

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    div-int/2addr v5, v13

    :goto_1
    add-int/lit8 v5, v5, 0x30

    aput v5, v10, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v2

    const/16 v2, 0xc

    .line 14
    rem-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x30

    aput v0, v10, v2

    .line 15
    sget v0, Lu0/b;->t3:I

    div-int/lit8 v2, v0, 0x3c

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v12, v10, v4

    const/16 v3, 0xe

    .line 17
    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v10, v3

    .line 18
    rem-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v1

    const/16 v1, 0x10

    aput v12, v10, v1

    .line 19
    rem-int/lit8 v0, v0, 0x3c

    const/16 v1, 0x11

    .line 20
    div-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v1

    const/16 v1, 0x12

    .line 21
    rem-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x30

    aput v0, v10, v1

    goto/16 :goto_9

    :pswitch_1
    int-to-byte v0, v15

    aput v12, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x49

    .line 22
    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x50

    .line 23
    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x4f

    .line 24
    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x44

    .line 25
    aput v2, v10, v1

    add-int/2addr v0, v14

    .line 26
    aput v12, v10, v0

    goto/16 :goto_9

    .line 27
    :pswitch_2
    sget v0, Ld1/d;->c:I

    if-ne v0, v15, :cond_f

    int-to-byte v0, v15

    aput v6, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x56

    .line 28
    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 29
    aput v12, v10, v1

    .line 30
    sget v1, Ld1/d;->e:I

    div-int/lit8 v2, v1, 0xa

    if-lez v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    add-int/lit8 v0, v0, 0x3

    .line 31
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v0

    move v0, v2

    :cond_3
    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    add-int/2addr v0, v14

    .line 32
    rem-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x30

    aput v1, v10, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    add-int/2addr v2, v14

    const/16 v1, 0x2d

    .line 33
    aput v1, v10, v2

    .line 34
    sget v1, Ld1/d;->d:I

    div-int/lit8 v1, v1, 0x64

    .line 35
    div-int/lit16 v2, v1, 0x2710

    if-lez v2, :cond_4

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x30

    .line 36
    aput v2, v10, v0

    move v0, v3

    :cond_4
    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    add-int/2addr v0, v14

    .line 37
    rem-int/lit16 v3, v1, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    add-int/2addr v2, v14

    .line 38
    rem-int/lit16 v3, v1, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    add-int/2addr v0, v14

    const/16 v3, 0x2e

    .line 39
    aput v3, v10, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    add-int/2addr v2, v14

    .line 40
    rem-int/lit8 v3, v1, 0x64

    div-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    add-int/2addr v0, v14

    .line 41
    rem-int/2addr v1, v13

    div-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x30

    aput v1, v10, v0

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    add-int/2addr v2, v14

    .line 42
    aput v9, v10, v2

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x68

    .line 43
    aput v2, v10, v0

    add-int/2addr v1, v14

    const/16 v0, 0x7a

    .line 44
    aput v0, v10, v1

    goto/16 :goto_9

    :pswitch_3
    int-to-byte v0, v15

    aput v12, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 45
    aput v7, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x55

    .line 46
    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x58

    .line 47
    aput v2, v10, v0

    add-int/2addr v1, v14

    .line 48
    aput v12, v10, v1

    goto/16 :goto_9

    .line 49
    :pswitch_4
    sget v0, Lo0/e;->C:I

    if-nez v0, :cond_5

    goto/16 :goto_9

    :cond_5
    int-to-byte v0, v15

    aput v9, v10, v14

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    add-int/2addr v0, v14

    const/16 v5, 0x45

    .line 50
    aput v5, v10, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v0, v0

    add-int/2addr v3, v14

    const/16 v5, 0x44

    .line 51
    aput v5, v10, v3

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    add-int/2addr v0, v14

    const/16 v5, 0x49

    .line 52
    aput v5, v10, v0

    add-int/lit8 v0, v3, 0x1

    int-to-byte v0, v0

    add-int/2addr v3, v14

    .line 53
    aput v7, v10, v3

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    add-int/2addr v0, v14

    .line 54
    aput v12, v10, v0

    add-int/2addr v3, v14

    .line 55
    aput v6, v10, v3

    .line 56
    sget v0, Lo0/e;->B:I

    rem-int/lit16 v0, v0, 0x2710

    .line 57
    div-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v13

    .line 58
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v13

    rem-int/lit16 v5, v0, 0x3e8

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    div-int/2addr v5, v13

    :goto_2
    add-int/lit8 v5, v5, 0x30

    aput v5, v10, v2

    const/16 v2, 0xc

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v2

    .line 59
    rem-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x30

    aput v0, v10, v4

    .line 60
    sget v0, Lo0/e;->r:I

    div-int/lit8 v2, v0, 0x3c

    .line 61
    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xe

    aput v12, v10, v3

    .line 62
    div-int/lit8 v3, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v1

    const/16 v1, 0x10

    .line 63
    rem-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v1

    const/16 v1, 0x11

    aput v12, v10, v1

    .line 64
    rem-int/lit8 v0, v0, 0x3c

    const/16 v1, 0x12

    .line 65
    div-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v1

    const/16 v1, 0x13

    .line 66
    rem-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x30

    aput v0, v10, v1

    goto/16 :goto_9

    :pswitch_5
    int-to-byte v0, v15

    aput v12, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x42

    .line 67
    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 68
    aput v6, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 69
    aput v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 70
    aput v7, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x56

    .line 71
    aput v2, v10, v0

    add-int/2addr v1, v14

    .line 72
    aput v12, v10, v1

    goto/16 :goto_9

    :pswitch_6
    int-to-byte v0, v15

    aput v12, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x42

    .line 73
    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 74
    aput v6, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 75
    aput v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x50

    .line 76
    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x48

    .line 77
    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x4f

    .line 78
    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x4e

    .line 79
    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x45

    .line 80
    aput v2, v10, v1

    add-int/2addr v0, v14

    .line 81
    aput v12, v10, v0

    goto/16 :goto_9

    .line 82
    :pswitch_7
    sget v0, Lw0/d;->h:I

    sub-int v1, v0, v8

    if-eqz v1, :cond_b

    sub-int v1, v0, v8

    if-eq v15, v1, :cond_b

    sub-int v1, v0, v8

    if-ne v5, v1, :cond_7

    goto/16 :goto_6

    :cond_7
    sub-int/2addr v0, v11

    if-nez v0, :cond_8

    int-to-byte v0, v15

    aput v7, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 83
    aput v9, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x31

    .line 84
    aput v2, v10, v1

    goto :goto_3

    :cond_8
    int-to-byte v0, v15

    aput v7, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 85
    aput v9, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x32

    .line 86
    aput v2, v10, v1

    :goto_3
    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 87
    aput v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 88
    sget v2, Lw0/d;->j:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    rem-int/2addr v2, v3

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 89
    aput v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 90
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_9

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v12

    goto :goto_4

    :cond_9
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_4
    aput v3, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 91
    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    if-nez v3, :cond_a

    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v12

    goto :goto_5

    :cond_a
    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    :goto_5
    aput v3, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 92
    rem-int/lit16 v3, v2, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 93
    rem-int/lit8 v3, v2, 0x64

    div-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 94
    rem-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 95
    aput v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x4b

    .line 96
    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v2, 0x48

    .line 97
    aput v2, v10, v0

    add-int/2addr v1, v14

    const/16 v0, 0x5a

    .line 98
    aput v0, v10, v1

    goto/16 :goto_9

    :cond_b
    :goto_6
    sub-int v1, v0, v8

    if-nez v1, :cond_c

    int-to-byte v0, v15

    const/16 v1, 0x46

    aput v1, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 99
    aput v9, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x31

    .line 100
    aput v2, v10, v1

    goto :goto_7

    :cond_c
    sub-int/2addr v0, v8

    if-ne v15, v0, :cond_d

    int-to-byte v0, v15

    const/16 v1, 0x46

    aput v1, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 101
    aput v9, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x32

    .line 102
    aput v2, v10, v1

    goto :goto_7

    :cond_d
    int-to-byte v0, v15

    const/16 v1, 0x46

    aput v1, v10, v14

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 103
    aput v9, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x32

    .line 104
    aput v2, v10, v1

    :goto_7
    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 105
    aput v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 106
    sget v2, Lw0/d;->j:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    rem-int/2addr v2, v3

    add-int/2addr v2, v15

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 107
    aput v12, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 108
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_e

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v12

    goto :goto_8

    :cond_e
    div-int/lit16 v3, v2, 0x2710

    add-int/lit8 v3, v3, 0x30

    :goto_8
    aput v3, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 109
    rem-int/lit16 v3, v2, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 110
    rem-int/lit16 v3, v2, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    const/16 v3, 0x2e

    .line 111
    aput v3, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 112
    rem-int/lit8 v3, v2, 0x64

    div-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 113
    rem-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x30

    aput v2, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    .line 114
    aput v12, v10, v1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    add-int/2addr v0, v14

    .line 115
    aput v9, v10, v0

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    add-int/2addr v1, v14

    const/16 v2, 0x48

    .line 116
    aput v2, v10, v1

    add-int/2addr v0, v14

    const/16 v1, 0x5a

    .line 117
    aput v1, v10, v0

    :cond_f
    :goto_9
    const/16 v0, 0x1c

    new-array v0, v0, [I

    const/16 v1, 0xe3

    aput v1, v0, v11

    const/16 v1, 0x1b

    :goto_a
    if-ge v11, v1, :cond_10

    add-int/lit8 v2, v11, 0x1

    .line 118
    aget v3, v10, v11

    int-to-byte v3, v3

    aput v3, v0, v2

    move v11, v2

    goto :goto_a

    .line 119
    :cond_10
    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_15

    :cond_11
    new-array v0, v1, [I

    move v7, v11

    :goto_b
    if-ge v7, v1, :cond_12

    .line 120
    aput v12, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    aput v4, v0, v11

    const/16 v7, 0xe1

    aput v7, v0, v15

    .line 121
    invoke-static {}, Lk0/y8;->b3()I

    move-result v7

    aput v7, v0, v5

    .line 122
    sget v7, Lu0/b;->D:I

    const/16 v1, 0x8

    if-eq v7, v15, :cond_28

    if-eq v7, v10, :cond_1f

    const/4 v5, 0x6

    if-eq v7, v5, :cond_1c

    if-eq v7, v1, :cond_13

    if-eq v7, v3, :cond_13

    goto/16 :goto_13

    .line 123
    :cond_13
    sget v1, Lu0/b;->s3:I

    if-nez v1, :cond_14

    goto/16 :goto_13

    :cond_14
    aput v6, v0, v14

    .line 124
    sget v1, Lu0/b;->r3:I

    .line 125
    rem-int/lit16 v1, v1, 0x2710

    .line 126
    div-int/lit16 v3, v1, 0x3e8

    if-lez v3, :cond_15

    add-int/lit8 v3, v3, 0x30

    aput v3, v0, v10

    int-to-byte v3, v15

    goto :goto_c

    :cond_15
    move v3, v11

    .line 127
    :goto_c
    rem-int/lit16 v1, v1, 0x3e8

    .line 128
    div-int/lit8 v5, v1, 0x64

    if-gtz v5, :cond_16

    if-nez v5, :cond_17

    if-eqz v3, :cond_17

    :cond_16
    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v5, v5, 0x30

    .line 129
    aput v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    .line 130
    :cond_17
    rem-int/lit8 v1, v1, 0x64

    .line 131
    div-int/lit8 v5, v1, 0xa

    if-gtz v5, :cond_18

    if-nez v5, :cond_19

    if-eqz v3, :cond_19

    :cond_18
    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v5, v5, 0x30

    .line 132
    aput v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    .line 133
    :cond_19
    rem-int/2addr v1, v13

    if-gtz v1, :cond_1a

    if-nez v1, :cond_1b

    if-eqz v3, :cond_1b

    :cond_1a
    add-int/2addr v3, v10

    .line 134
    div-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x30

    aput v1, v0, v3

    .line 135
    :cond_1b
    sget v1, Lu0/b;->t3:I

    div-int/lit8 v3, v1, 0x3c

    .line 136
    rem-int/lit8 v3, v3, 0x3c

    .line 137
    div-int/lit8 v5, v3, 0xa

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v13

    .line 138
    rem-int/2addr v3, v13

    add-int/lit8 v3, v3, 0x30

    aput v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x3a

    aput v3, v0, v2

    .line 139
    rem-int/lit8 v1, v1, 0x3c

    .line 140
    div-int/lit8 v2, v1, 0xa

    add-int/lit8 v2, v2, 0x30

    aput v2, v0, v4

    .line 141
    rem-int/2addr v1, v13

    const/16 v2, 0xe

    add-int/lit8 v1, v1, 0x30

    aput v1, v0, v2

    goto/16 :goto_13

    .line 142
    :cond_1c
    sget v5, Ld1/d;->c:I

    if-ne v5, v15, :cond_2e

    .line 143
    sget v5, Ld1/d;->e:I

    div-int/lit8 v6, v5, 0xa

    if-lez v6, :cond_1d

    .line 144
    div-int/lit8 v6, v5, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v0, v14

    .line 145
    :cond_1d
    rem-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v10

    const/4 v5, 0x5

    const/16 v6, 0x2d

    aput v6, v0, v5

    .line 146
    sget v5, Ld1/d;->d:I

    div-int/lit8 v5, v5, 0x64

    .line 147
    div-int/lit16 v6, v5, 0x2710

    if-lez v6, :cond_1e

    add-int/lit8 v6, v6, 0x30

    const/4 v7, 0x6

    aput v6, v0, v7

    :cond_1e
    const/4 v6, 0x7

    .line 148
    rem-int/lit16 v7, v5, 0x2710

    div-int/lit16 v7, v7, 0x3e8

    add-int/lit8 v7, v7, 0x30

    aput v7, v0, v6

    .line 149
    rem-int/lit16 v6, v5, 0x3e8

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x30

    aput v6, v0, v1

    const/16 v1, 0x2e

    aput v1, v0, v3

    .line 150
    rem-int/lit8 v1, v5, 0x64

    div-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x30

    aput v1, v0, v13

    .line 151
    rem-int/2addr v5, v13

    div-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v2

    const/16 v1, 0xc

    aput v9, v0, v1

    const/16 v1, 0x68

    aput v1, v0, v4

    const/16 v1, 0xe

    const/16 v2, 0x7a

    aput v2, v0, v1

    goto/16 :goto_13

    .line 152
    :cond_1f
    sget v1, Lo0/e;->C:I

    if-nez v1, :cond_20

    goto/16 :goto_13

    :cond_20
    aput v6, v0, v14

    .line 153
    sget v1, Lo0/e;->B:I

    .line 154
    rem-int/lit16 v1, v1, 0x2710

    .line 155
    div-int/lit16 v2, v1, 0x3e8

    if-lez v2, :cond_21

    add-int/lit8 v2, v2, 0x30

    aput v2, v0, v14

    int-to-byte v2, v15

    goto :goto_d

    :cond_21
    move v2, v11

    .line 156
    :goto_d
    rem-int/lit16 v1, v1, 0x3e8

    .line 157
    div-int/lit8 v3, v1, 0x64

    if-lez v3, :cond_22

    add-int/lit8 v4, v2, 0x4

    add-int/lit8 v3, v3, 0x30

    .line 158
    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    .line 159
    :cond_22
    rem-int/lit8 v1, v1, 0x64

    .line 160
    div-int/lit8 v3, v1, 0xa

    if-lez v3, :cond_23

    add-int/lit8 v4, v2, 0x4

    add-int/lit8 v3, v3, 0x30

    .line 161
    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    .line 162
    :cond_23
    rem-int/2addr v1, v13

    if-lez v1, :cond_24

    add-int/2addr v2, v10

    .line 163
    div-int/2addr v1, v15

    add-int/lit8 v1, v1, 0x30

    aput v1, v0, v2

    .line 164
    :cond_24
    sget v1, Lo0/e;->r:I

    div-int/lit8 v2, v1, 0x3c

    .line 165
    rem-int/lit8 v2, v2, 0x3c

    .line 166
    div-int/lit8 v3, v2, 0xa

    if-lez v3, :cond_25

    add-int/lit8 v3, v3, 0x30

    aput v3, v0, v13

    int-to-byte v3, v15

    goto :goto_e

    :cond_25
    move v3, v11

    .line 167
    :goto_e
    rem-int/2addr v2, v13

    if-lez v2, :cond_26

    add-int/lit8 v4, v3, 0xa

    add-int/lit8 v2, v2, 0x30

    .line 168
    aput v2, v0, v4

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    :cond_26
    add-int/lit8 v2, v3, 0xa

    const/16 v4, 0x3a

    .line 169
    aput v4, v0, v2

    add-int/2addr v3, v15

    int-to-byte v2, v3

    .line 170
    rem-int/lit8 v1, v1, 0x3c

    .line 171
    div-int/lit8 v3, v1, 0xa

    if-lez v3, :cond_27

    add-int/lit8 v4, v2, 0xa

    add-int/lit8 v3, v3, 0x30

    .line 172
    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    .line 173
    :cond_27
    rem-int/2addr v1, v13

    if-lez v1, :cond_2e

    add-int/2addr v2, v13

    add-int/lit8 v1, v1, 0x30

    .line 174
    aput v1, v0, v2

    goto/16 :goto_13

    .line 175
    :cond_28
    sget v4, Lw0/d;->h:I

    sub-int v6, v4, v8

    if-eqz v6, :cond_2c

    sub-int v6, v4, v8

    if-eq v15, v6, :cond_2c

    sub-int/2addr v4, v8

    if-ne v5, v4, :cond_29

    goto :goto_11

    .line 176
    :cond_29
    sget v2, Lw0/d;->i:I

    div-int/lit16 v4, v2, 0x2710

    if-nez v4, :cond_2a

    div-int/lit16 v4, v2, 0x2710

    add-int/2addr v4, v12

    goto :goto_f

    :cond_2a
    div-int/lit16 v4, v2, 0x2710

    add-int/lit8 v4, v4, 0x30

    :goto_f
    aput v4, v0, v14

    .line 177
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    if-nez v4, :cond_2b

    rem-int/lit16 v4, v2, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v12

    goto :goto_10

    :cond_2b
    rem-int/lit16 v4, v2, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    :goto_10
    aput v4, v0, v10

    const/4 v4, 0x5

    .line 178
    rem-int/lit16 v5, v2, 0x3e8

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v4

    .line 179
    rem-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x30

    const/4 v5, 0x6

    aput v4, v0, v5

    const/4 v4, 0x7

    .line 180
    rem-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x30

    aput v2, v0, v4

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x68

    aput v1, v0, v3

    const/16 v1, 0x7a

    aput v1, v0, v13

    goto :goto_13

    .line 181
    :cond_2c
    :goto_11
    sget v4, Lw0/d;->i:I

    div-int/lit16 v5, v4, 0x2710

    if-nez v5, :cond_2d

    div-int/lit16 v5, v4, 0x2710

    add-int/2addr v5, v12

    goto :goto_12

    :cond_2d
    div-int/lit16 v5, v4, 0x2710

    add-int/lit8 v5, v5, 0x30

    :goto_12
    aput v5, v0, v14

    .line 182
    rem-int/lit16 v5, v4, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    add-int/lit8 v5, v5, 0x30

    aput v5, v0, v10

    const/4 v5, 0x5

    .line 183
    rem-int/lit16 v6, v4, 0x3e8

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x30

    aput v6, v0, v5

    const/16 v5, 0x2e

    const/4 v6, 0x6

    aput v5, v0, v6

    const/4 v5, 0x7

    .line 184
    rem-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v13

    add-int/lit8 v6, v6, 0x30

    aput v6, v0, v5

    .line 185
    rem-int/2addr v4, v13

    add-int/lit8 v4, v4, 0x30

    aput v4, v0, v1

    aput v9, v0, v3

    const/16 v1, 0x68

    aput v1, v0, v13

    const/16 v1, 0x7a

    aput v1, v0, v2

    :cond_2e
    :goto_13
    const/16 v1, 0x10

    new-array v1, v1, [I

    const/16 v2, 0xe3

    aput v2, v1, v11

    const/16 v2, 0xf

    :goto_14
    if-ge v11, v2, :cond_2f

    add-int/lit8 v3, v11, 0x1

    .line 186
    aget v4, v0, v11

    int-to-byte v4, v4

    aput v4, v1, v3

    move v11, v3

    goto :goto_14

    .line 187
    :cond_2f
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v1, 0xff

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xfe

    goto :goto_1

    :cond_0
    :pswitch_3
    move v1, v2

    goto :goto_1

    :pswitch_4
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xc

    goto :goto_1

    .line 2
    :pswitch_7
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_8
    move v1, v3

    goto :goto_1

    .line 3
    :pswitch_9
    sget v0, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v3, v0, v2

    if-nez v3, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    sub-int v3, v0, v2

    if-ne v5, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int v2, v0, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    sub-int/2addr v0, v4

    if-ne v5, v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x9

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v4

    .line 4
    :goto_1
    sget v0, Lu0/b;->o:I

    if-ne v0, v5, :cond_6

    const/16 v1, 0x10

    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic f3(Lk0/y8;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/y8;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g3(Lk0/y8;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/y8;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h3(Lk0/y8;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/y8;->q:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic i3(Lk0/y8;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/y8;->l3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j3(Lk0/y8;B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/y8;->m3(B)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/y8;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/y8;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lk0/y8;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/y8;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/y8;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v2, "com.syu.canbus"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v1, v0, Lk0/mt;->e:I

    .line 9
    iput v1, v0, Lk0/mt;->f:I

    .line 10
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 11
    iput v2, v0, Lk0/mt;->o:I

    .line 12
    iput v2, v0, Lk0/mt;->q:I

    .line 13
    sget v3, Lk0/nt;->c:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 14
    :cond_1
    iput v1, v0, Lk0/mt;->i:I

    .line 15
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v3, p0, Lk0/y8;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/y8;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 17
    :cond_2
    iput v1, v0, Lk0/mt;->i:I

    .line 18
    iput v1, v0, Lk0/mt;->q:I

    .line 19
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    .line 20
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_3
    return-void
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x7b

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_53

    const/16 v3, -0x3f

    const/16 v9, 0x10

    const/16 v10, 0x80

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v14, 0x2

    if-eq v2, v3, :cond_4f

    const/16 v3, -0x10

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x31

    const/16 v8, 0xff

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x64

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x71

    if-eq v2, v3, :cond_38

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_37

    const/16 v3, -0x3d

    const v17, 0xff00

    if-eq v2, v3, :cond_36

    const/16 v3, -0x3c

    if-eq v2, v3, :cond_35

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_34

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_32

    const/16 v3, 0x41

    const/16 v15, 0x7f

    if-eq v2, v3, :cond_26

    const/16 v3, 0x42

    if-eq v2, v3, :cond_24

    const/16 v3, 0x68

    if-eq v2, v3, :cond_21

    const/16 v3, 0x69

    if-eq v2, v3, :cond_20

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_2b

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-le v2, v11, :cond_0

    move v2, v11

    :cond_0
    if-lez v2, :cond_4

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    new-array v4, v14, [I

    aput v3, v4, v6

    add-int/lit8 v9, p2, 0x3

    add-int/2addr v9, v3

    .line 3
    aget-byte v9, v1, v9

    and-int/2addr v9, v8

    aput v9, v4, v7

    const/16 v9, 0xad

    .line 4
    iget-object v10, v0, Lk0/y8;->b:[[I

    aget-object v10, v10, v3

    invoke-static {v9, v4, v10}, Lk0/qt;->C0(I[I[I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5
    iget-object v9, v0, Lk0/y8;->b:[[I

    aput-object v4, v9, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v11, :cond_54

    new-array v1, v14, [I

    aput v2, v1, v6

    aput v6, v1, v7

    const/16 v3, 0xad

    .line 6
    iget-object v4, v0, Lk0/y8;->b:[[I

    aget-object v4, v4, v2

    invoke-static {v3, v1, v4}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    iget-object v3, v0, Lk0/y8;->b:[[I

    aput-object v1, v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v1, v6

    :goto_2
    if-ge v1, v11, :cond_54

    new-array v2, v14, [I

    aput v1, v2, v6

    aput v6, v2, v7

    const/16 v3, 0xad

    .line 8
    iget-object v4, v0, Lk0/y8;->b:[[I

    aget-object v4, v4, v1

    invoke-static {v3, v2, v4}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    iget-object v3, v0, Lk0/y8;->b:[[I

    aput-object v2, v3, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    const/16 v2, 0x99

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 10
    aget-byte v15, v1, v8

    and-int/2addr v15, v10

    shl-int/2addr v15, v7

    add-int/lit8 v16, p2, 0x4

    aget-byte v13, v1, v16

    and-int/2addr v13, v10

    shr-int/2addr v13, v11

    or-int/2addr v13, v15

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v7, [I

    .line 11
    aget-byte v13, v1, v8

    and-int/lit8 v13, v13, 0x40

    shl-int/2addr v13, v14

    aget-byte v15, v1, v16

    and-int/lit8 v15, v15, 0x40

    shr-int/2addr v15, v12

    or-int/2addr v13, v15

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v7, [I

    .line 12
    aget-byte v13, v1, v8

    and-int/lit8 v13, v13, 0x20

    shl-int/2addr v13, v5

    aget-byte v15, v1, v16

    and-int/lit8 v15, v15, 0x20

    shr-int/2addr v15, v4

    or-int/2addr v13, v15

    aput v13, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v7, [I

    .line 13
    aget-byte v13, v1, v8

    and-int/2addr v13, v9

    const/4 v15, 0x4

    shl-int/2addr v13, v15

    aget-byte v17, v1, v16

    and-int/lit8 v9, v17, 0x10

    shr-int/2addr v9, v15

    or-int/2addr v9, v13

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v7, [I

    .line 14
    aget-byte v9, v1, v8

    and-int/lit8 v9, v9, 0x8

    shl-int/2addr v9, v4

    aget-byte v13, v1, v16

    and-int/lit8 v13, v13, 0x8

    shr-int/lit8 v5, v13, 0x3

    or-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v7, [I

    .line 15
    aget-byte v5, v1, v8

    const/4 v9, 0x4

    and-int/2addr v5, v9

    shl-int/2addr v5, v12

    aget-byte v12, v1, v16

    and-int/2addr v9, v12

    shr-int/2addr v9, v14

    or-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v7, [I

    .line 16
    aget-byte v5, v1, v8

    and-int/2addr v5, v14

    shl-int/2addr v5, v11

    aget-byte v9, v1, v16

    and-int/2addr v9, v14

    shr-int/2addr v9, v7

    or-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v7, [I

    .line 17
    aget-byte v5, v1, v8

    and-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x8

    aget-byte v8, v1, v16

    and-int/2addr v8, v7

    or-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 18
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    add-int/lit8 v4, p2, 0x5

    aget-byte v1, v1, v4

    and-int/2addr v1, v10

    shr-int/2addr v1, v11

    or-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-le v2, v11, :cond_6

    move v2, v11

    :cond_6
    if-lez v2, :cond_a

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_8

    new-array v4, v14, [I

    aput v3, v4, v6

    add-int/lit8 v9, p2, 0x3

    add-int/2addr v9, v3

    .line 20
    aget-byte v9, v1, v9

    and-int/2addr v9, v8

    aput v9, v4, v7

    const/16 v9, 0xac

    .line 21
    iget-object v10, v0, Lk0/y8;->c:[[I

    aget-object v10, v10, v3

    invoke-static {v9, v4, v10}, Lk0/qt;->C0(I[I[I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 22
    iget-object v9, v0, Lk0/y8;->c:[[I

    aput-object v4, v9, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-ge v2, v11, :cond_54

    new-array v1, v14, [I

    aput v2, v1, v6

    aput v6, v1, v7

    const/16 v3, 0xac

    .line 23
    iget-object v4, v0, Lk0/y8;->c:[[I

    aget-object v4, v4, v2

    invoke-static {v3, v1, v4}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 24
    iget-object v3, v0, Lk0/y8;->c:[[I

    aput-object v1, v3, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    move v1, v6

    :goto_5
    if-ge v1, v11, :cond_54

    new-array v2, v14, [I

    aput v1, v2, v6

    aput v6, v2, v7

    const/16 v3, 0xac

    .line 25
    iget-object v4, v0, Lk0/y8;->c:[[I

    aget-object v4, v4, v1

    invoke-static {v3, v2, v4}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    iget-object v3, v0, Lk0/y8;->c:[[I

    aput-object v2, v3, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 27
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-le v2, v9, :cond_c

    move v2, v9

    :cond_c
    if-lez v2, :cond_10

    move v3, v6

    :goto_6
    if-ge v3, v2, :cond_e

    new-array v4, v14, [I

    aput v3, v4, v6

    add-int/lit8 v10, p2, 0x3

    add-int/2addr v10, v3

    .line 28
    aget-byte v10, v1, v10

    and-int/2addr v10, v8

    aput v10, v4, v7

    const/16 v10, 0xab

    .line 29
    iget-object v11, v0, Lk0/y8;->d:[[I

    aget-object v11, v11, v3

    invoke-static {v10, v4, v11}, Lk0/qt;->C0(I[I[I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 30
    iget-object v10, v0, Lk0/y8;->d:[[I

    aput-object v4, v10, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-ge v2, v9, :cond_54

    new-array v1, v14, [I

    aput v2, v1, v6

    aput v6, v1, v7

    const/16 v3, 0xab

    .line 31
    iget-object v4, v0, Lk0/y8;->d:[[I

    aget-object v4, v4, v2

    invoke-static {v3, v1, v4}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 32
    iget-object v3, v0, Lk0/y8;->d:[[I

    aput-object v1, v3, v2

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    move v1, v6

    :goto_8
    if-ge v1, v9, :cond_54

    new-array v2, v14, [I

    aput v1, v2, v6

    aput v6, v2, v7

    const/16 v3, 0xab

    .line 33
    iget-object v4, v0, Lk0/y8;->d:[[I

    aget-object v4, v4, v1

    invoke-static {v3, v2, v4}, Lk0/qt;->C0(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 34
    iget-object v3, v0, Lk0/y8;->d:[[I

    aput-object v2, v3, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 36
    aget-byte v1, v1, v3

    const/16 v3, 0xda

    new-array v4, v7, [I

    and-int/lit16 v2, v2, 0x100

    shr-int/2addr v1, v11

    and-int/2addr v1, v7

    or-int/2addr v1, v2

    aput v1, v4, v6

    .line 37
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_5
    const/16 v2, 0x7e

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 38
    aget-byte v9, v1, v8

    and-int/2addr v9, v10

    shl-int/2addr v9, v7

    add-int/lit8 v13, p2, 0x9

    aget-byte v5, v1, v13

    and-int/lit16 v5, v5, 0xc0

    shr-int/2addr v5, v12

    or-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 39
    aget-byte v3, v1, v8

    and-int/lit8 v3, v3, 0x40

    shl-int/2addr v3, v14

    aget-byte v5, v1, v13

    and-int/lit8 v5, v5, 0x20

    shr-int/2addr v5, v4

    or-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 40
    aget-byte v3, v1, v8

    and-int/lit8 v3, v3, 0x40

    shl-int/2addr v3, v14

    aget-byte v5, v1, v13

    and-int/lit8 v5, v5, 0x1f

    or-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 41
    aget-byte v8, v1, v5

    and-int/2addr v8, v10

    shl-int/2addr v8, v7

    add-int/lit8 v9, p2, 0xa

    aget-byte v13, v1, v9

    and-int/2addr v13, v10

    shr-int/2addr v13, v11

    or-int/2addr v8, v13

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    .line 42
    aget-byte v8, v1, v5

    and-int/lit8 v8, v8, 0x40

    shl-int/2addr v8, v14

    aget-byte v13, v1, v9

    and-int/lit8 v13, v13, 0x40

    shr-int/lit8 v12, v13, 0x6

    or-int/2addr v8, v12

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    .line 43
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x20

    const/4 v8, 0x3

    shl-int/2addr v5, v8

    aget-byte v8, v1, v9

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v4, v8, 0x5

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 44
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    shr-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 45
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    shr-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 46
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    shr-int/2addr v5, v11

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v10

    shl-int/2addr v4, v7

    add-int/lit8 v5, p2, 0xe

    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    shr-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_6
    const/16 v2, 0x7b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 48
    aget-byte v5, v1, v4

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 49
    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0x40

    shl-int/2addr v5, v14

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v10

    shr-int/2addr v9, v11

    or-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 50
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x40

    shl-int/2addr v4, v14

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_7
    const/16 v2, 0x74

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 51
    aget-byte v13, v1, v5

    and-int/2addr v13, v10

    shl-int/2addr v13, v7

    add-int/lit8 v15, p2, 0x3

    aget-byte v15, v1, v15

    and-int/2addr v10, v15

    shr-int/2addr v10, v11

    or-int/2addr v10, v13

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    .line 52
    aget-byte v10, v1, v5

    and-int/lit8 v10, v10, 0x40

    shl-int/2addr v10, v14

    add-int/lit8 v13, p2, 0x4

    aget-byte v13, v1, v13

    and-int/2addr v13, v8

    sub-int/2addr v13, v7

    invoke-virtual {v0, v13}, Lk0/y8;->k3(I)I

    move-result v13

    or-int/2addr v10, v13

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    .line 53
    aget-byte v10, v1, v5

    and-int/lit8 v10, v10, 0x20

    const/4 v13, 0x3

    shl-int/2addr v10, v13

    add-int/lit8 v13, p2, 0x5

    aget-byte v13, v1, v13

    and-int/2addr v13, v8

    sub-int/2addr v13, v7

    invoke-virtual {v0, v13}, Lk0/y8;->k3(I)I

    move-result v13

    or-int/2addr v10, v13

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    .line 54
    aget-byte v10, v1, v5

    and-int/2addr v9, v10

    const/4 v10, 0x4

    shl-int/2addr v9, v10

    add-int/lit8 v10, p2, 0x6

    aget-byte v10, v1, v10

    and-int/2addr v10, v8

    sub-int/2addr v10, v7

    invoke-virtual {v0, v10}, Lk0/y8;->k3(I)I

    move-result v10

    or-int/2addr v9, v10

    aput v9, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v7, [I

    .line 55
    aget-byte v9, v1, v5

    and-int/lit8 v9, v9, 0x8

    shl-int/2addr v9, v4

    add-int/lit8 v10, p2, 0x7

    aget-byte v10, v1, v10

    and-int/2addr v8, v10

    sub-int/2addr v8, v7

    invoke-virtual {v0, v8}, Lk0/y8;->k3(I)I

    move-result v8

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v7, [I

    .line 56
    aget-byte v8, v1, v5

    and-int/2addr v8, v14

    shl-int/2addr v8, v11

    add-int/lit8 v9, p2, 0x8

    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xc0

    shr-int/2addr v10, v12

    or-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v7, [I

    .line 57
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x8

    aget-byte v1, v1, v9

    and-int/lit8 v1, v1, 0x20

    shr-int/2addr v1, v4

    or-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_8
    const/16 v2, 0x71

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 58
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 59
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    const/16 v4, 0xb

    add-int/lit8 v4, p2, 0xb

    .line 60
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_9
    const/16 v2, 0x6b

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 61
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 62
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 63
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 64
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v7, [I

    const/16 v4, 0xa

    add-int/lit8 v4, p2, 0xa

    .line 65
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_a
    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 66
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 67
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 68
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 69
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    const/16 v4, 0xa

    add-int/lit8 v4, p2, 0xa

    .line 70
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_b
    const/16 v2, 0x61

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 71
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 72
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 73
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 74
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    const/16 v4, 0xa

    add-int/lit8 v4, p2, 0xa

    .line 75
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_c
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 76
    aget-byte v1, v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 77
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 78
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 79
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_12
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 80
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 81
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x3

    .line 82
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v7

    aput v3, v2, v6

    const/4 v3, 0x4

    .line 83
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 84
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 85
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :pswitch_d
    add-int/lit8 v2, p2, 0x4

    .line 86
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v5, p2, 0x5

    .line 87
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    const/16 v9, 0xc

    if-ne v3, v9, :cond_13

    if-ne v5, v7, :cond_13

    .line 88
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0xc9

    new-array v9, v7, [I

    aput v7, v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v5, v9, v10, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 89
    :cond_13
    sget v3, Lk0/nt;->c:I

    if-eq v3, v14, :cond_14

    const/4 v5, 0x3

    if-eq v3, v5, :cond_14

    const/4 v5, 0x4

    if-eq v3, v5, :cond_14

    if-ne v3, v12, :cond_16

    :cond_14
    add-int/lit8 v3, p2, 0xb

    .line 90
    aget-byte v3, v1, v3

    const-string v5, "persist.syu.reversefrontdoor"

    .line 91
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_15

    new-array v5, v7, [I

    shr-int/lit8 v9, v3, 0x7

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 92
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 93
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_15
    new-array v5, v7, [I

    shr-int/lit8 v9, v3, 0x6

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 94
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v9, v3, 0x7

    and-int/2addr v9, v7

    aput v9, v5, v6

    .line 95
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    :goto_a
    new-array v5, v7, [I

    shr-int/lit8 v9, v3, 0x5

    and-int/2addr v9, v7

    aput v9, v5, v6

    const/4 v9, 0x3

    .line 96
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v10, v3, 0x4

    and-int/2addr v10, v7

    aput v10, v5, v6

    const/4 v10, 0x4

    .line 97
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/2addr v3, v9

    and-int/2addr v3, v7

    aput v3, v5, v6

    .line 98
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 99
    :cond_16
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_54

    add-int/lit8 v3, p2, 0x2

    .line 100
    aget-byte v5, v1, v3

    .line 101
    aget-byte v3, v1, v3

    add-int/lit8 v3, p2, 0x9

    .line 102
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    const/16 v9, 0x1e0

    invoke-static {v3, v5, v7, v9}, Lk0/qt;->i(IIZI)V

    .line 103
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    iput v1, v0, Lk0/y8;->i:I

    .line 104
    sget v1, Lk0/nt;->c:I

    if-ne v1, v4, :cond_1b

    move v1, v6

    .line 105
    :goto_b
    iget-object v2, v0, Lk0/y8;->k:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 106
    iget v3, v0, Lk0/y8;->i:I

    aget-object v4, v2, v1

    aget v4, v4, v6

    if-ne v3, v4, :cond_17

    if-eqz v3, :cond_18

    .line 107
    iput v1, v0, Lk0/y8;->h:I

    goto :goto_c

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 108
    :cond_18
    :goto_c
    iget v3, v0, Lk0/y8;->i:I

    if-eqz v3, :cond_19

    .line 109
    array-length v3, v2

    if-ge v1, v3, :cond_54

    .line 110
    aget-object v1, v2, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_2b

    .line 111
    :cond_19
    iget v1, v0, Lk0/y8;->h:I

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    if-eq v1, v8, :cond_1a

    .line 112
    aget-object v1, v2, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 113
    :cond_1a
    iput v8, v0, Lk0/y8;->h:I

    goto/16 :goto_2b

    :cond_1b
    move v1, v6

    .line 114
    :goto_d
    iget-object v2, v0, Lk0/y8;->j:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 115
    iget v3, v0, Lk0/y8;->i:I

    aget-object v4, v2, v1

    aget v4, v4, v6

    if-ne v3, v4, :cond_1c

    if-eqz v3, :cond_1d

    .line 116
    iput v1, v0, Lk0/y8;->h:I

    goto :goto_e

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 117
    :cond_1d
    :goto_e
    iget v3, v0, Lk0/y8;->i:I

    if-eqz v3, :cond_1e

    .line 118
    array-length v3, v2

    if-ge v1, v3, :cond_54

    .line 119
    aget-object v1, v2, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_2b

    .line 120
    :cond_1e
    iget v1, v0, Lk0/y8;->h:I

    array-length v3, v2

    if-ge v1, v3, :cond_1f

    if-eq v1, v8, :cond_1f

    .line 121
    aget-object v1, v2, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 122
    :cond_1f
    iput v8, v0, Lk0/y8;->h:I

    goto/16 :goto_2b

    :cond_20
    const/16 v2, 0x94

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 123
    aget-byte v8, v1, v5

    and-int/2addr v8, v10

    shl-int/2addr v8, v7

    add-int/lit8 v9, p2, 0x4

    aget-byte v13, v1, v9

    and-int/2addr v13, v10

    shr-int/2addr v13, v11

    or-int/2addr v8, v13

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v7, [I

    .line 124
    aget-byte v8, v1, v5

    and-int/lit8 v8, v8, 0x40

    shl-int/2addr v8, v14

    aget-byte v13, v1, v9

    and-int/lit8 v13, v13, 0x40

    shr-int/2addr v13, v12

    or-int/2addr v8, v13

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v7, [I

    .line 125
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x20

    const/4 v8, 0x3

    shl-int/2addr v5, v8

    aget-byte v8, v1, v9

    and-int/lit8 v8, v8, 0x20

    shr-int/2addr v8, v4

    or-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 126
    aget-byte v8, v1, v5

    and-int/2addr v8, v10

    shl-int/2addr v8, v7

    add-int/lit8 v4, p2, 0x5

    aget-byte v9, v1, v4

    and-int/2addr v9, v10

    shr-int/2addr v9, v11

    or-int/2addr v8, v9

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    .line 127
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x40

    shl-int/2addr v5, v14

    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0x40

    shr-int/2addr v1, v12

    or-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    .line 128
    :cond_21
    sget v2, Lk0/nt;->c:I

    if-eq v2, v14, :cond_23

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    const/4 v5, 0x4

    if-eq v2, v5, :cond_23

    if-ne v2, v12, :cond_22

    goto/16 :goto_f

    :cond_22
    const/16 v2, 0x8b

    new-array v5, v7, [I

    add-int/lit8 v11, p2, 0x2

    .line 129
    aget-byte v13, v1, v11

    and-int/lit8 v13, v13, 0x20

    shl-int/2addr v13, v3

    add-int/lit8 v3, p2, 0x5

    aget-byte v15, v1, v3

    and-int/lit8 v15, v15, 0x30

    const/16 v16, 0x4

    shr-int/lit8 v15, v15, 0x4

    or-int/2addr v13, v15

    aput v13, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v5, v7, [I

    .line 130
    aget-byte v13, v1, v11

    and-int/2addr v9, v13

    shl-int/lit8 v9, v9, 0x4

    aget-byte v13, v1, v3

    and-int/lit8 v13, v13, 0x8

    const/4 v15, 0x3

    shr-int/2addr v13, v15

    or-int/2addr v9, v13

    aput v9, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v5, v7, [I

    .line 131
    aget-byte v9, v1, v11

    and-int/lit8 v9, v9, 0x8

    shl-int/lit8 v4, v9, 0x5

    aget-byte v9, v1, v3

    const/4 v13, 0x4

    and-int/2addr v9, v13

    shr-int/2addr v9, v14

    or-int/2addr v4, v9

    aput v4, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v7, [I

    .line 132
    aget-byte v5, v1, v11

    and-int/2addr v5, v13

    shl-int/2addr v5, v12

    aget-byte v3, v1, v3

    and-int/2addr v3, v14

    shr-int/2addr v3, v7

    or-int/2addr v3, v5

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 133
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 134
    aget-byte v5, v1, v4

    and-int/lit8 v5, v5, 0x40

    shl-int/2addr v5, v14

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, v1, v9

    and-int/2addr v9, v8

    or-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    .line 135
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x3

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 136
    aget-byte v5, v1, v4

    and-int/2addr v5, v10

    shl-int/2addr v5, v7

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    and-int/2addr v9, v8

    or-int/2addr v5, v9

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    .line 137
    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x40

    shl-int/2addr v4, v14

    const/16 v5, 0xa

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_23
    :goto_f
    add-int/lit8 v2, p2, 0x2

    .line 138
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 139
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x6

    .line 140
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x7

    .line 141
    aget-byte v1, v1, v5

    const/16 v5, 0xdc

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v7

    shl-int/lit8 v9, v9, 0x8

    shr-int/lit8 v10, v3, 0x6

    and-int/2addr v10, v7

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 142
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xdd

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v7

    shl-int/lit8 v9, v9, 0x8

    shr-int/lit8 v10, v3, 0x5

    and-int/2addr v10, v7

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 143
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xaf

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v7

    shl-int/lit8 v9, v9, 0x8

    shr-int/lit8 v10, v3, 0x4

    and-int/2addr v10, v7

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 144
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xde

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v7

    shl-int/lit8 v9, v9, 0x8

    shr-int/lit8 v10, v3, 0x2

    const/4 v11, 0x3

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 145
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xdf

    new-array v8, v7, [I

    and-int/lit8 v9, v2, 0x1

    shl-int/lit8 v9, v9, 0x8

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    or-int/2addr v3, v9

    aput v3, v8, v6

    .line 146
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe0

    new-array v5, v7, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    aput v2, v5, v6

    .line 147
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 148
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    .line 149
    :cond_24
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-nez v2, :cond_25

    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_54

    :cond_25
    add-int/lit8 v2, p2, 0x6

    .line 150
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    const/16 v3, 0xa

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    invoke-static {v2}, Lu0/d;->H2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 151
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    invoke-static {v2}, Lu0/d;->I2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 152
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    invoke-static {v2}, Lu0/d;->J2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 153
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    invoke-static {v2}, Lu0/d;->K2(I)V

    add-int/lit8 v2, p2, 0x2

    .line 154
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    invoke-static {v2}, Lu0/d;->N2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 155
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    invoke-static {v2}, Lu0/d;->O2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 156
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    invoke-static {v2}, Lu0/d;->P2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 157
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    mul-int/2addr v1, v3

    div-int/2addr v1, v8

    invoke-static {v1}, Lu0/d;->Q2(I)V

    goto/16 :goto_2b

    .line 158
    :cond_26
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-nez v2, :cond_27

    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_54

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 159
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x3

    .line 160
    aget-byte v5, v1, v4

    and-int/2addr v5, v8

    add-int/lit8 v6, p2, 0x4

    .line 161
    aget-byte v9, v1, v6

    and-int/2addr v9, v8

    add-int/lit8 v10, p2, 0x5

    .line 162
    aget-byte v11, v1, v10

    and-int/2addr v11, v8

    add-int/lit8 v13, p2, 0x6

    .line 163
    aget-byte v14, v1, v13

    and-int/2addr v14, v8

    add-int/lit8 v17, p2, 0x7

    .line 164
    aget-byte v15, v1, v17

    and-int/2addr v15, v8

    add-int/lit8 v18, p2, 0x8

    .line 165
    aget-byte v7, v1, v18

    and-int/2addr v7, v8

    add-int/lit8 v19, p2, 0x9

    .line 166
    aget-byte v12, v1, v19

    and-int/2addr v12, v8

    .line 167
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    const/16 v8, 0x3c

    const/16 v20, 0xf

    if-le v2, v8, :cond_28

    .line 168
    invoke-static/range {v20 .. v20}, Lu0/d;->R2(I)V

    goto :goto_10

    :cond_28
    const/4 v2, 0x6

    mul-int/2addr v3, v2

    .line 169
    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Lu0/d;->R2(I)V

    .line 170
    :goto_10
    aget-byte v2, v1, v4

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0xa6

    if-le v2, v4, :cond_29

    .line 171
    invoke-static/range {v20 .. v20}, Lu0/d;->S2(I)V

    const/16 v2, 0xa

    goto :goto_11

    :cond_29
    const/16 v2, 0xa

    mul-int/2addr v5, v2

    .line 172
    div-int/2addr v5, v4

    invoke-static {v5}, Lu0/d;->S2(I)V

    .line 173
    :goto_11
    aget-byte v5, v1, v6

    and-int/2addr v5, v3

    if-le v5, v4, :cond_2a

    .line 174
    invoke-static/range {v20 .. v20}, Lu0/d;->T2(I)V

    goto :goto_12

    :cond_2a
    mul-int/2addr v9, v2

    .line 175
    div-int/2addr v9, v4

    invoke-static {v9}, Lu0/d;->T2(I)V

    .line 176
    :goto_12
    aget-byte v2, v1, v10

    and-int/2addr v2, v3

    const/16 v4, 0x3c

    if-le v2, v4, :cond_2b

    .line 177
    invoke-static/range {v20 .. v20}, Lu0/d;->U2(I)V

    goto :goto_13

    :cond_2b
    const/4 v2, 0x6

    mul-int/2addr v11, v2

    .line 178
    div-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Lu0/d;->U2(I)V

    .line 179
    :goto_13
    aget-byte v2, v1, v13

    and-int/2addr v2, v3

    .line 180
    aget-byte v4, v1, v17

    and-int/2addr v4, v3

    .line 181
    aget-byte v5, v1, v18

    and-int/2addr v5, v3

    .line 182
    aget-byte v6, v1, v19

    and-int/2addr v6, v3

    .line 183
    sget v3, Ll0/c0;->g:I

    if-ne v3, v2, :cond_2c

    sget v3, Ll0/c0;->h:I

    if-ne v3, v4, :cond_2c

    sget v3, Ll0/c0;->i:I

    if-ne v3, v5, :cond_2c

    sget v3, Ll0/c0;->j:I

    if-eq v3, v6, :cond_2d

    .line 184
    :cond_2c
    sput v2, Ll0/c0;->g:I

    .line 185
    sput v4, Ll0/c0;->h:I

    .line 186
    sput v5, Ll0/c0;->i:I

    .line 187
    sput v6, Ll0/c0;->j:I

    .line 188
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_2d

    const/4 v2, 0x1

    .line 189
    invoke-static {v2}, Lu0/d;->C2(I)V

    const/4 v2, 0x4

    .line 190
    sput v2, Ll0/c0;->k:I

    .line 191
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 192
    :cond_2d
    aget-byte v2, v1, v13

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x7f

    if-lt v2, v4, :cond_2e

    .line 193
    invoke-static/range {v20 .. v20}, Lu0/d;->D2(I)V

    const/16 v2, 0xa

    goto :goto_14

    :cond_2e
    const/16 v2, 0xa

    mul-int/2addr v14, v2

    .line 194
    div-int/2addr v14, v4

    invoke-static {v14}, Lu0/d;->D2(I)V

    .line 195
    :goto_14
    aget-byte v5, v1, v17

    and-int/2addr v5, v3

    if-le v5, v4, :cond_2f

    .line 196
    invoke-static/range {v20 .. v20}, Lu0/d;->E2(I)V

    goto :goto_15

    :cond_2f
    mul-int/2addr v15, v2

    .line 197
    div-int/2addr v15, v4

    invoke-static {v15}, Lu0/d;->E2(I)V

    .line 198
    :goto_15
    aget-byte v5, v1, v18

    and-int/2addr v5, v3

    if-le v5, v4, :cond_30

    .line 199
    invoke-static/range {v20 .. v20}, Lu0/d;->F2(I)V

    goto :goto_16

    :cond_30
    mul-int/2addr v7, v2

    .line 200
    div-int/2addr v7, v4

    invoke-static {v7}, Lu0/d;->F2(I)V

    .line 201
    :goto_16
    aget-byte v1, v1, v19

    and-int/2addr v1, v3

    if-le v1, v4, :cond_31

    .line 202
    invoke-static/range {v20 .. v20}, Lu0/d;->G2(I)V

    goto/16 :goto_2b

    :cond_31
    mul-int/2addr v12, v2

    .line 203
    div-int/2addr v12, v4

    invoke-static {v12}, Lu0/d;->G2(I)V

    goto/16 :goto_2b

    .line 204
    :cond_32
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p2, 0x16

    :goto_17
    if-ge v3, v4, :cond_33

    .line 205
    aget-byte v5, v1, v3

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 206
    :cond_33
    iget-object v1, v0, Lk0/y8;->u:Ljava/lang/String;

    iput-object v1, v0, Lk0/y8;->v:Ljava/lang/String;

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk0/y8;->d3(Ljava/lang/String;)V

    const/16 v1, 0xb3

    .line 208
    iget-object v2, v0, Lk0/y8;->u:Ljava/lang/String;

    iget-object v3, v0, Lk0/y8;->v:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2b

    :cond_34
    const/16 v2, 0xa7

    const/4 v3, 0x1

    new-array v4, v3, [I

    add-int/lit8 v3, p2, 0x3

    .line 209
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xc0

    shl-int/lit8 v5, v5, 0x12

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v1, v7

    const/16 v8, 0xff

    and-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 210
    aget-byte v4, v1, v3

    and-int/lit8 v4, v4, 0x30

    shl-int/lit8 v4, v4, 0x14

    add-int/lit8 v7, p2, 0x2

    aget-byte v8, v1, v7

    const/16 v10, 0xff

    and-int/2addr v8, v10

    shl-int/2addr v8, v9

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x6

    aget-byte v8, v1, v8

    and-int/2addr v8, v10

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v1, v8

    and-int/2addr v8, v10

    or-int/2addr v4, v8

    aput v4, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 211
    aget-byte v4, v1, v3

    and-int/lit8 v4, v4, 0xc

    shl-int/lit8 v4, v4, 0x16

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, v1, v8

    const/16 v10, 0xff

    and-int/2addr v8, v10

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v4, v8

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v1, v8

    and-int/2addr v8, v10

    or-int/2addr v4, v8

    aput v4, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    const/4 v4, 0x1

    new-array v4, v4, [I

    .line 212
    aget-byte v3, v1, v3

    const/4 v5, 0x3

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x18

    aget-byte v5, v1, v7

    and-int/2addr v5, v10

    shl-int/2addr v5, v9

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/16 v5, 0xb

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    and-int/2addr v1, v10

    or-int/2addr v1, v3

    aput v1, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_35
    add-int/lit8 v2, p2, 0x2

    .line 213
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 214
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 215
    aget-byte v1, v1, v4

    const/16 v4, 0x112

    const/4 v5, 0x1

    new-array v7, v5, [I

    and-int/lit16 v8, v2, 0x80

    shl-int/2addr v8, v5

    or-int/2addr v3, v8

    aput v3, v7, v6

    .line 216
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x113

    new-array v4, v5, [I

    and-int/lit8 v2, v2, 0x40

    shl-int/2addr v2, v14

    or-int/2addr v1, v2

    aput v1, v4, v6

    .line 217
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_36
    add-int/lit8 v2, p2, 0x2

    .line 218
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 219
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x5

    .line 220
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 221
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x7

    .line 222
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x8

    .line 223
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x9

    .line 224
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0xa

    .line 225
    aget-byte v10, v1, v10

    const/16 v12, 0xb

    add-int/lit8 v12, p2, 0xb

    .line 226
    aget-byte v1, v1, v12

    const/16 v12, 0xed

    const/4 v13, 0x1

    new-array v14, v13, [I

    aput v2, v14, v6

    .line 227
    invoke-static {v12, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xee

    new-array v12, v13, [I

    and-int/2addr v3, v13

    aput v3, v12, v6

    .line 228
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xef

    new-array v3, v13, [I

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    const/16 v12, 0xff

    and-int/2addr v5, v12

    or-int/2addr v4, v5

    aput v4, v3, v6

    .line 229
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf0

    new-array v3, v13, [I

    shl-int/lit8 v4, v7, 0x8

    and-int v4, v4, v17

    and-int/lit16 v5, v8, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v6

    .line 230
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf1

    new-array v3, v13, [I

    and-int/lit16 v4, v9, 0xff

    mul-int/lit8 v4, v4, 0x64

    aput v4, v3, v6

    .line 231
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf2

    new-array v3, v13, [I

    and-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x8

    and-int v4, v4, v17

    and-int/lit16 v5, v10, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v6

    .line 232
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf3

    new-array v3, v13, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v13

    aput v1, v3, v6

    .line 233
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_37
    move v13, v7

    add-int/lit8 v2, p2, 0x2

    .line 234
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 235
    aget-byte v1, v1, v3

    const/16 v3, 0x111

    new-array v4, v13, [I

    and-int/2addr v2, v10

    shl-int/2addr v2, v13

    or-int/2addr v1, v2

    aput v1, v4, v6

    .line 236
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    .line 237
    :cond_38
    sget v2, Lk0/nt;->c:I

    if-eq v2, v14, :cond_39

    const/4 v3, 0x3

    if-eq v2, v3, :cond_39

    const/4 v3, 0x4

    if-eq v2, v3, :cond_39

    const/4 v3, 0x6

    if-ne v2, v3, :cond_54

    :cond_39
    add-int/lit8 v2, p2, 0x2

    .line 238
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 239
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 240
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 241
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 242
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x7

    .line 243
    aget-byte v1, v1, v8

    const/16 v8, 0x74

    const/4 v12, 0x1

    new-array v9, v12, [I

    and-int/lit16 v2, v2, 0x100

    shr-int/2addr v3, v11

    and-int/2addr v3, v12

    or-int/2addr v2, v3

    aput v2, v9, v6

    .line 244
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v12, [I

    aput v4, v3, v6

    .line 245
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v12, [I

    aput v5, v3, v6

    .line 246
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v12, [I

    aput v7, v3, v6

    .line 247
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v12, [I

    aput v1, v3, v6

    .line 248
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_3a
    move v12, v7

    .line 249
    sget v2, Lk0/nt;->c:I

    if-eq v2, v14, :cond_3c

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3b

    goto :goto_18

    :cond_3b
    const/16 v2, 0x88

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x2

    .line 250
    aget-byte v5, v1, v5

    and-int/2addr v5, v10

    shl-int/2addr v5, v12

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xc0

    const/4 v8, 0x6

    shr-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v12, [I

    add-int/lit8 v5, p2, 0x3

    .line 251
    aget-byte v7, v1, v5

    and-int/2addr v7, v10

    shl-int/2addr v7, v12

    add-int/lit8 v8, p2, 0x5

    aget-byte v9, v1, v8

    and-int/lit16 v9, v9, 0xc0

    const/4 v10, 0x6

    shr-int/2addr v9, v10

    or-int/2addr v7, v9

    aput v7, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v12, [I

    .line 252
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x40

    shl-int/2addr v5, v14

    aget-byte v1, v1, v8

    and-int/lit8 v1, v1, 0x20

    shr-int/2addr v1, v4

    or-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_3c
    :goto_18
    add-int/lit8 v2, p2, 0x2

    .line 253
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 254
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 255
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x5

    .line 256
    aget-byte v1, v1, v7

    const/16 v7, 0xe2

    const/4 v8, 0x1

    new-array v10, v8, [I

    and-int/lit16 v11, v2, 0x80

    shl-int/2addr v11, v8

    shr-int/lit8 v12, v5, 0x7

    and-int/2addr v12, v8

    or-int/2addr v11, v12

    aput v11, v10, v6

    .line 257
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe3

    new-array v10, v8, [I

    and-int/lit8 v11, v2, 0x40

    shl-int/2addr v11, v14

    shr-int/lit8 v12, v5, 0x6

    and-int/2addr v12, v8

    or-int/2addr v11, v12

    aput v11, v10, v6

    .line 258
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xe4

    new-array v10, v8, [I

    and-int/lit8 v2, v2, 0x20

    const/4 v11, 0x3

    shl-int/2addr v2, v11

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v8

    or-int/2addr v2, v4

    aput v2, v10, v6

    .line 259
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v8, [I

    and-int/lit16 v5, v3, 0x80

    shl-int/2addr v5, v8

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v4, v6

    .line 260
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v4, v8, [I

    and-int/lit8 v5, v3, 0x40

    shl-int/2addr v5, v14

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v4, v6

    .line 261
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v4, v8, [I

    and-int/lit8 v5, v3, 0x20

    const/4 v7, 0x3

    shl-int/2addr v5, v7

    shr-int/lit8 v7, v1, 0x5

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    aput v5, v4, v6

    .line 262
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v4, v8, [I

    and-int/2addr v3, v9

    const/4 v5, 0x4

    shl-int/2addr v3, v5

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v3

    aput v1, v4, v6

    .line 263
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_3d
    add-int/lit8 v2, p2, 0x2

    .line 264
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 265
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 266
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 267
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x7

    .line 268
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x8

    .line 269
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x9

    .line 270
    aget-byte v10, v1, v10

    const/4 v11, 0x1

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v11

    aput v13, v12, v6

    const/16 v13, 0xa

    .line 271
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    .line 272
    sget v12, Lk0/nt;->c:I

    if-eq v12, v14, :cond_3f

    const/4 v13, 0x3

    if-eq v12, v13, :cond_3f

    const/4 v13, 0x4

    if-eq v12, v13, :cond_3f

    const/4 v13, 0x6

    if-ne v12, v13, :cond_3e

    goto :goto_19

    :cond_3e
    const/16 v12, 0x35

    new-array v13, v11, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v11

    aput v15, v13, v6

    .line 273
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xd

    new-array v13, v11, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v11

    aput v15, v13, v6

    .line 274
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x3e

    new-array v13, v11, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v11

    aput v2, v13, v6

    .line 275
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/4 v15, 0x3

    goto :goto_1a

    :cond_3f
    :goto_19
    const/16 v12, 0xd

    new-array v13, v11, [I

    const/4 v15, 0x3

    and-int/2addr v2, v15

    aput v2, v13, v6

    .line 276
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    .line 277
    :goto_1a
    sget v2, Lk0/nt;->c:I

    if-eq v2, v15, :cond_41

    const/4 v12, 0x4

    if-ne v2, v12, :cond_40

    goto :goto_1b

    :cond_40
    const/16 v2, 0x42

    new-array v12, v11, [I

    shr-int/lit8 v13, v3, 0x7

    and-int/2addr v13, v11

    aput v13, v12, v6

    .line 278
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v12, v11, [I

    shr-int/lit8 v13, v3, 0x6

    and-int/2addr v13, v11

    aput v13, v12, v6

    .line 279
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    goto :goto_1c

    :cond_41
    :goto_1b
    const/16 v2, 0x42

    new-array v12, v11, [I

    shr-int/lit8 v13, v5, 0x7

    and-int/2addr v13, v11

    aput v13, v12, v6

    .line 280
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v12, v11, [I

    shr-int/lit8 v13, v5, 0x6

    and-int/2addr v13, v11

    aput v13, v12, v6

    .line 281
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    .line 282
    :goto_1c
    sget v2, Lk0/nt;->c:I

    if-eq v2, v14, :cond_47

    const/4 v12, 0x3

    if-eq v2, v12, :cond_47

    const/4 v12, 0x4

    if-eq v2, v12, :cond_47

    const/4 v12, 0x6

    if-ne v2, v12, :cond_42

    goto/16 :goto_21

    :cond_42
    new-array v2, v11, [I

    shr-int/2addr v3, v12

    and-int/2addr v3, v11

    aput v3, v2, v6

    const/16 v3, 0xb

    .line 283
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v11, [I

    shr-int/lit8 v12, v5, 0x0

    const/4 v13, 0x3

    and-int/2addr v12, v13

    aput v12, v3, v6

    .line 284
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v11, [I

    shr-int/2addr v5, v14

    and-int/2addr v5, v13

    aput v5, v3, v6

    .line 285
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-eq v7, v11, :cond_46

    if-eq v7, v14, :cond_46

    if-eq v7, v13, :cond_45

    if-eq v7, v4, :cond_44

    const/4 v2, 0x6

    if-eq v7, v2, :cond_43

    packed-switch v7, :pswitch_data_3

    move v2, v6

    move v3, v2

    move v5, v3

    goto :goto_20

    :pswitch_e
    const/4 v2, 0x1

    goto :goto_1e

    :pswitch_f
    move v5, v6

    const/4 v2, 0x1

    goto :goto_1d

    :pswitch_10
    move v3, v6

    const/4 v2, 0x1

    goto :goto_1f

    :cond_43
    move v2, v6

    move v5, v2

    :goto_1d
    const/4 v3, 0x1

    goto :goto_20

    :cond_44
    move v2, v6

    :goto_1e
    const/4 v3, 0x1

    goto :goto_1f

    :cond_45
    move v2, v6

    move v3, v2

    :goto_1f
    const/4 v5, 0x1

    goto :goto_20

    :cond_46
    :pswitch_11
    move v3, v6

    move v5, v3

    const/4 v2, 0x1

    :goto_20
    const/16 v7, 0x31

    const/4 v11, 0x1

    new-array v12, v11, [I

    aput v2, v12, v6

    .line 286
    invoke-static {v7, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v11, [I

    aput v3, v7, v6

    .line 287
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v5, v3, v6

    .line 288
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    move v12, v11

    goto/16 :goto_26

    :cond_47
    :goto_21
    const/16 v2, 0x24

    new-array v5, v11, [I

    const/4 v12, 0x3

    shr-int/2addr v3, v12

    and-int/2addr v3, v11

    aput v3, v5, v6

    .line 289
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    if-eq v7, v11, :cond_4b

    if-eq v7, v12, :cond_4a

    if-eq v7, v4, :cond_49

    const/4 v2, 0x6

    if-eq v7, v2, :cond_48

    packed-switch v7, :pswitch_data_4

    move v2, v6

    move v3, v2

    move v5, v3

    move v7, v5

    goto :goto_25

    :pswitch_12
    move v2, v6

    const/4 v3, 0x1

    goto :goto_23

    :pswitch_13
    move v2, v6

    move v7, v2

    const/4 v3, 0x1

    goto :goto_22

    :pswitch_14
    move v2, v6

    move v5, v2

    const/4 v3, 0x1

    goto :goto_24

    :pswitch_15
    move v2, v6

    move v5, v2

    move v7, v5

    const/4 v3, 0x1

    goto :goto_25

    :cond_48
    move v2, v6

    move v3, v2

    move v7, v3

    :goto_22
    const/4 v5, 0x1

    goto :goto_25

    :cond_49
    move v2, v6

    move v3, v2

    :goto_23
    const/4 v5, 0x1

    goto :goto_24

    :cond_4a
    move v2, v6

    move v3, v2

    move v5, v3

    :goto_24
    const/4 v7, 0x1

    goto :goto_25

    :cond_4b
    move v3, v6

    move v5, v3

    move v7, v5

    const/4 v2, 0x1

    :goto_25
    const/16 v11, 0x31

    const/4 v12, 0x1

    new-array v13, v12, [I

    aput v2, v13, v6

    .line 290
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v11, v12, [I

    aput v3, v11, v6

    .line 291
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v12, [I

    aput v5, v3, v6

    .line 292
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v12, [I

    aput v7, v3, v6

    .line 293
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_26
    const/16 v2, 0x15

    new-array v3, v12, [I

    aput v8, v3, v6

    .line 294
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 295
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/16 v2, 0x1b

    new-array v3, v12, [I

    const/16 v5, 0xff

    and-int/lit16 v7, v10, 0xff

    aput v7, v3, v6

    .line 296
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v12, [I

    and-int/lit16 v7, v9, 0xff

    aput v7, v3, v6

    .line 297
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_27

    :cond_4c
    const/16 v5, 0xff

    const/16 v2, 0x1b

    new-array v3, v12, [I

    and-int/lit16 v7, v9, 0xff

    aput v7, v3, v6

    .line 298
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v12, [I

    and-int/lit16 v7, v10, 0xff

    aput v7, v3, v6

    .line 299
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 300
    :goto_27
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_54

    add-int/lit8 v2, p2, 0xd

    .line 301
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    const/16 v2, 0x50

    if-lt v1, v2, :cond_4d

    mul-int/2addr v1, v4

    add-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, -0x190

    goto :goto_28

    :cond_4d
    mul-int/2addr v1, v4

    rsub-int v1, v1, 0x190

    rsub-int v1, v1, 0x3e8

    :goto_28
    const/16 v2, 0x258

    if-le v1, v2, :cond_54

    .line 302
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_2b

    .line 303
    :cond_4e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 304
    :cond_4f
    sget v2, Lk0/nt;->c:I

    if-eq v2, v14, :cond_52

    const/4 v3, 0x3

    if-eq v2, v3, :cond_52

    const/4 v3, 0x4

    if-eq v2, v3, :cond_52

    const/4 v3, 0x6

    if-ne v2, v3, :cond_50

    goto/16 :goto_2a

    :cond_50
    const/16 v2, 0xb4

    const/4 v3, 0x1

    new-array v5, v3, [I

    add-int/lit8 v7, p2, 0x3

    .line 305
    aget-byte v8, v1, v7

    and-int/2addr v8, v10

    shr-int/2addr v8, v11

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v5, v3, [I

    add-int/lit8 v3, p2, 0x2

    .line 306
    aget-byte v8, v1, v3

    and-int/lit8 v8, v8, 0x20

    const/4 v10, 0x3

    shl-int/2addr v8, v10

    aget-byte v10, v1, v7

    and-int/lit8 v10, v10, 0x20

    shr-int/2addr v10, v4

    or-int/2addr v8, v10

    aput v8, v5, v6

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    const/4 v5, 0x1

    new-array v8, v5, [I

    .line 307
    aget-byte v5, v1, v3

    and-int/2addr v5, v9

    const/4 v9, 0x4

    shl-int/2addr v5, v9

    aget-byte v9, v1, v7

    and-int/lit8 v9, v9, 0x18

    const/4 v10, 0x3

    shr-int/2addr v9, v10

    or-int/2addr v5, v9

    aput v5, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    const/4 v5, 0x1

    new-array v8, v5, [I

    .line 308
    aget-byte v9, v1, v3

    and-int/lit8 v9, v9, 0x8

    shl-int/lit8 v4, v9, 0x5

    aget-byte v9, v1, v7

    const/4 v10, 0x6

    and-int/2addr v9, v10

    shr-int/2addr v9, v5

    or-int/2addr v4, v9

    aput v4, v8, v6

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    .line 309
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    and-int/2addr v3, v4

    shl-int/2addr v3, v10

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xc0

    shr-int/2addr v4, v10

    or-int/2addr v3, v4

    aput v3, v2, v6

    const/16 v3, 0xa6

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 310
    aget-byte v1, v1, v7

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_51

    const/4 v7, 0x1

    goto :goto_29

    :cond_51
    move v7, v6

    :goto_29
    aput v7, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2b

    :cond_52
    :goto_2a
    add-int/lit8 v2, p2, 0x2

    .line 311
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 312
    aget-byte v3, v1, v3

    const/4 v5, 0x4

    add-int/lit8 v7, p2, 0x4

    .line 313
    aget-byte v1, v1, v7

    const/16 v5, 0xe7

    const/4 v7, 0x1

    new-array v8, v7, [I

    and-int/lit16 v9, v2, 0x80

    shl-int/2addr v9, v7

    shr-int/lit8 v10, v3, 0x7

    and-int/2addr v10, v7

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 314
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe8

    new-array v8, v7, [I

    and-int/lit8 v9, v2, 0x40

    shl-int/2addr v9, v14

    shr-int/lit8 v10, v3, 0x6

    and-int/2addr v10, v7

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 315
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe9

    new-array v8, v7, [I

    and-int/lit8 v9, v2, 0x20

    const/4 v10, 0x3

    shl-int/2addr v9, v10

    shr-int/lit8 v10, v3, 0x5

    and-int/2addr v10, v7

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 316
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xea

    new-array v8, v7, [I

    and-int/lit8 v9, v2, 0x10

    const/4 v10, 0x4

    shl-int/2addr v9, v10

    shr-int/lit8 v10, v3, 0x3

    const/4 v11, 0x3

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v8, v6

    .line 317
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xeb

    new-array v8, v7, [I

    and-int/lit8 v9, v2, 0x8

    shl-int/lit8 v4, v9, 0x5

    shr-int/2addr v3, v7

    and-int/2addr v3, v11

    or-int/2addr v3, v4

    aput v3, v8, v6

    .line 318
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xec

    new-array v4, v7, [I

    const/4 v5, 0x4

    and-int/2addr v2, v5

    const/4 v5, 0x6

    shl-int/2addr v2, v5

    shr-int/2addr v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v2

    aput v1, v4, v6

    .line 319
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_2b

    :cond_53
    move v11, v5

    const/16 v2, 0xa2

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 320
    aget-byte v5, v1, v5

    and-int/lit8 v5, v5, 0x20

    shl-int/2addr v5, v11

    add-int/lit8 v7, p2, 0x3

    aget-byte v1, v1, v7

    and-int/lit8 v1, v1, 0x20

    shr-int/2addr v1, v4

    or-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_54
    :goto_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x74
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/y8;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/y8;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/y8;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/y8;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/y8;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/y8;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/y8;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/y8;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/y8;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/y8;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_1

    const/16 p3, 0x114

    if-ge p2, p3, :cond_1

    const/16 p3, 0xb3

    if-eq p2, p3, :cond_0

    const/4 p3, 0x7

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_3

    :goto_0
    :pswitch_0
    if-ge v0, p3, :cond_1

    .line 2
    iget-object v1, p0, Lk0/y8;->b:[[I

    aget-object v1, v1, v0

    invoke-static {p1, p2, v1}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    :pswitch_1
    if-ge v0, p3, :cond_1

    .line 3
    iget-object v1, p0, Lk0/y8;->c:[[I

    aget-object v1, v1, v0

    invoke-static {p1, p2, v1}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    :pswitch_2
    const/16 p3, 0x10

    if-ge v0, p3, :cond_1

    .line 4
    iget-object p3, p0, Lk0/y8;->d:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5
    :cond_0
    iget-object p3, p0, Lk0/y8;->u:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lo1/x;->u(Ly/b;ILjava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0xca

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v5, :cond_3d

    const/16 v7, 0x16

    const/16 v8, 0xe3

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v1, v7, :cond_3c

    const/16 v7, 0x17

    if-eq v1, v7, :cond_3b

    const/16 v7, 0x68

    const/4 v12, 0x7

    const/4 v13, 0x6

    if-eq v1, v7, :cond_34

    const/16 v7, 0x69

    if-eq v1, v7, :cond_33

    const/16 v8, 0xb

    const/16 v15, 0x8

    const/16 v14, 0x7b

    const/16 v7, 0x9

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    if-eqz v2, :cond_40

    .line 1
    array-length v1, v2

    if-lez v1, :cond_40

    .line 2
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 3
    aget v1, v2, v6

    if-ge v1, v5, :cond_0

    .line 4
    aput v5, v2, v6

    goto :goto_0

    .line 5
    :cond_0
    aget v1, v2, v6

    if-le v1, v11, :cond_1

    .line 6
    aput v11, v2, v6

    .line 7
    :cond_1
    :goto_0
    aget v1, v2, v6

    invoke-virtual {v0, v3, v13, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_1
    if-eqz v2, :cond_40

    .line 8
    array-length v1, v2

    if-lez v1, :cond_40

    .line 9
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 10
    aget v1, v2, v6

    if-ge v1, v5, :cond_2

    .line 11
    aput v5, v2, v6

    goto :goto_1

    .line 12
    :cond_2
    aget v1, v2, v6

    if-le v1, v10, :cond_3

    .line 13
    aput v10, v2, v6

    .line 14
    :cond_3
    :goto_1
    aget v1, v2, v6

    invoke-virtual {v0, v3, v9, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_2
    if-eqz v2, :cond_40

    .line 15
    array-length v1, v2

    if-lez v1, :cond_40

    .line 16
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 17
    aget v1, v2, v6

    if-ge v1, v5, :cond_4

    .line 18
    aput v5, v2, v6

    goto :goto_2

    .line 19
    :cond_4
    aget v1, v2, v6

    if-le v1, v11, :cond_5

    .line 20
    aput v11, v2, v6

    .line 21
    :cond_5
    :goto_2
    aget v1, v2, v6

    invoke-virtual {v0, v3, v10, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_3
    if-eqz v2, :cond_40

    .line 22
    array-length v1, v2

    if-lez v1, :cond_40

    .line 23
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 24
    aget v1, v2, v6

    if-ge v1, v5, :cond_6

    .line 25
    aput v5, v2, v6

    goto :goto_3

    .line 26
    :cond_6
    aget v1, v2, v6

    if-le v1, v4, :cond_7

    .line 27
    aput v4, v2, v6

    .line 28
    :cond_7
    :goto_3
    aget v1, v2, v6

    invoke-virtual {v0, v3, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_4
    if-eqz v2, :cond_40

    .line 29
    array-length v1, v2

    if-lez v1, :cond_40

    .line 30
    aget v1, v2, v6

    if-eqz v1, :cond_8

    .line 31
    aput v5, v2, v6

    :cond_8
    const/16 v1, 0x8a

    .line 32
    aget v2, v2, v6

    invoke-virtual {v0, v1, v11, v2}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_5
    if-eqz v2, :cond_40

    .line 33
    array-length v1, v2

    if-lez v1, :cond_40

    const/16 v1, 0xc

    .line 34
    aget v2, v2, v6

    invoke-virtual {v0, v14, v1, v2}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_6
    if-eqz v2, :cond_40

    .line 35
    array-length v1, v2

    if-lez v1, :cond_40

    .line 36
    aget v1, v2, v6

    invoke-virtual {v0, v14, v8, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_7
    if-eqz v2, :cond_40

    .line 37
    array-length v1, v2

    if-lez v1, :cond_40

    .line 38
    aget v1, v2, v6

    if-eqz v1, :cond_9

    .line 39
    aput v5, v2, v6

    .line 40
    :cond_9
    aget v1, v2, v6

    invoke-virtual {v0, v14, v7, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_8
    if-eqz v2, :cond_40

    .line 41
    array-length v1, v2

    if-lez v1, :cond_40

    .line 42
    aget v1, v2, v6

    if-eqz v1, :cond_a

    .line 43
    aput v5, v2, v6

    .line 44
    :cond_a
    aget v1, v2, v6

    invoke-virtual {v0, v14, v15, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_9
    if-eqz v2, :cond_40

    .line 45
    array-length v1, v2

    if-lez v1, :cond_40

    .line 46
    aget v1, v2, v6

    if-eqz v1, :cond_b

    .line 47
    aput v5, v2, v6

    .line 48
    :cond_b
    aget v1, v2, v6

    invoke-virtual {v0, v14, v12, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_a
    if-eqz v2, :cond_40

    .line 49
    array-length v1, v2

    if-lez v1, :cond_40

    .line 50
    aget v1, v2, v6

    if-eqz v1, :cond_c

    .line 51
    aput v5, v2, v6

    .line 52
    :cond_c
    aget v1, v2, v6

    invoke-virtual {v0, v14, v13, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_b
    if-eqz v2, :cond_40

    .line 53
    array-length v1, v2

    if-lez v1, :cond_40

    .line 54
    aget v1, v2, v6

    if-eqz v1, :cond_d

    .line 55
    aput v5, v2, v6

    .line 56
    :cond_d
    aget v1, v2, v6

    invoke-virtual {v0, v14, v9, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_c
    if-eqz v2, :cond_40

    .line 57
    array-length v1, v2

    if-lez v1, :cond_40

    .line 58
    aget v1, v2, v6

    if-eqz v1, :cond_e

    .line 59
    aput v5, v2, v6

    .line 60
    :cond_e
    aget v1, v2, v6

    invoke-virtual {v0, v14, v10, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_d
    if-eqz v2, :cond_40

    .line 61
    array-length v1, v2

    if-lez v1, :cond_40

    .line 62
    aget v1, v2, v6

    if-eqz v1, :cond_f

    .line 63
    aput v5, v2, v6

    .line 64
    :cond_f
    aget v1, v2, v6

    invoke-virtual {v0, v14, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_e
    if-eqz v2, :cond_40

    .line 65
    array-length v1, v2

    if-lez v1, :cond_40

    .line 66
    aget v1, v2, v6

    if-eqz v1, :cond_10

    .line 67
    aput v5, v2, v6

    .line 68
    :cond_10
    aget v1, v2, v6

    invoke-virtual {v0, v14, v4, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_f
    if-eqz v2, :cond_40

    .line 69
    array-length v1, v2

    if-lez v1, :cond_40

    .line 70
    aget v1, v2, v6

    if-eqz v1, :cond_11

    .line 71
    aput v5, v2, v6

    .line 72
    :cond_11
    aget v1, v2, v6

    invoke-virtual {v0, v14, v5, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_10
    if-eqz v2, :cond_40

    .line 73
    array-length v1, v2

    if-lez v1, :cond_40

    .line 74
    aget v1, v2, v6

    if-eqz v1, :cond_12

    .line 75
    aput v5, v2, v6

    .line 76
    :cond_12
    aget v1, v2, v6

    const/16 v3, 0x6f

    invoke-virtual {v0, v3, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_11
    const/16 v3, 0x6f

    if-eqz v2, :cond_40

    .line 77
    array-length v1, v2

    if-lez v1, :cond_40

    .line 78
    aget v1, v2, v6

    invoke-virtual {v0, v3, v4, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_12
    const/16 v3, 0x6f

    if-eqz v2, :cond_40

    .line 79
    array-length v1, v2

    if-lez v1, :cond_40

    .line 80
    aget v1, v2, v6

    invoke-virtual {v0, v3, v5, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_13
    if-eqz v2, :cond_40

    .line 81
    array-length v1, v2

    if-lez v1, :cond_40

    .line 82
    aget v1, v2, v6

    if-eqz v1, :cond_13

    .line 83
    aput v5, v2, v6

    .line 84
    :cond_13
    aget v1, v2, v6

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v9, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_14
    if-eqz v2, :cond_40

    .line 85
    array-length v1, v2

    if-lez v1, :cond_40

    .line 86
    aget v1, v2, v6

    if-eqz v1, :cond_14

    .line 87
    aput v5, v2, v6

    .line 88
    :cond_14
    aget v1, v2, v6

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v10, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_15
    if-eqz v2, :cond_40

    .line 89
    array-length v1, v2

    if-lez v1, :cond_40

    .line 90
    aget v1, v2, v6

    if-eqz v1, :cond_15

    .line 91
    aput v5, v2, v6

    .line 92
    :cond_15
    aget v1, v2, v6

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_16
    if-eqz v2, :cond_40

    .line 93
    array-length v1, v2

    if-lez v1, :cond_40

    .line 94
    aget v1, v2, v6

    if-eqz v1, :cond_16

    .line 95
    aput v5, v2, v6

    .line 96
    :cond_16
    aget v1, v2, v6

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v4, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_17
    if-eqz v2, :cond_40

    .line 97
    array-length v1, v2

    if-lez v1, :cond_40

    .line 98
    aget v1, v2, v6

    if-eqz v1, :cond_17

    .line 99
    aput v5, v2, v6

    .line 100
    :cond_17
    aget v1, v2, v6

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v5, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_18
    if-eqz v2, :cond_40

    .line 101
    array-length v1, v2

    if-lez v1, :cond_40

    .line 102
    aget v1, v2, v6

    const/16 v3, 0x6d

    invoke-virtual {v0, v3, v8, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_19
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 103
    array-length v1, v2

    if-lez v1, :cond_40

    const/16 v1, 0xa

    .line 104
    aget v2, v2, v6

    invoke-virtual {v0, v3, v1, v2}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_1a
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 105
    array-length v1, v2

    if-lez v1, :cond_40

    .line 106
    aget v1, v2, v6

    invoke-virtual {v0, v3, v7, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_1b
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 107
    array-length v1, v2

    if-lez v1, :cond_40

    .line 108
    aget v1, v2, v6

    invoke-virtual {v0, v3, v15, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_1c
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 109
    array-length v1, v2

    if-lez v1, :cond_40

    .line 110
    aget v1, v2, v6

    invoke-virtual {v0, v3, v12, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_1d
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 111
    array-length v1, v2

    if-lez v1, :cond_40

    .line 112
    aget v1, v2, v6

    invoke-virtual {v0, v3, v13, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_1e
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 113
    array-length v1, v2

    if-lez v1, :cond_40

    .line 114
    aget v1, v2, v6

    invoke-virtual {v0, v3, v9, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_1f
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 115
    array-length v1, v2

    if-lez v1, :cond_40

    .line 116
    aget v1, v2, v6

    invoke-virtual {v0, v3, v10, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_20
    const/16 v3, 0x6d

    if-eqz v2, :cond_40

    .line 117
    array-length v1, v2

    if-lez v1, :cond_40

    .line 118
    aget v1, v2, v6

    invoke-virtual {v0, v3, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_21
    if-eqz v2, :cond_40

    .line 119
    array-length v1, v2

    if-lez v1, :cond_40

    .line 120
    aget v1, v2, v6

    if-eqz v1, :cond_18

    .line 121
    aput v5, v2, v6

    .line 122
    :cond_18
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v8, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_22
    if-eqz v2, :cond_40

    .line 123
    array-length v1, v2

    if-lez v1, :cond_40

    .line 124
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 125
    aget v1, v2, v6

    if-ge v1, v5, :cond_19

    .line 126
    aput v5, v2, v6

    goto :goto_4

    .line 127
    :cond_19
    aget v1, v2, v6

    if-le v1, v11, :cond_1a

    .line 128
    aput v11, v2, v6

    .line 129
    :cond_1a
    :goto_4
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v7, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_23
    if-eqz v2, :cond_40

    .line 130
    array-length v1, v2

    if-lez v1, :cond_40

    .line 131
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 132
    aget v1, v2, v6

    if-ge v1, v5, :cond_1b

    .line 133
    aput v5, v2, v6

    goto :goto_5

    .line 134
    :cond_1b
    aget v1, v2, v6

    if-le v1, v10, :cond_1c

    .line 135
    aput v9, v2, v6

    .line 136
    :cond_1c
    :goto_5
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v15, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_24
    if-eqz v2, :cond_40

    .line 137
    array-length v1, v2

    if-lez v1, :cond_40

    .line 138
    aget v1, v2, v6

    if-eqz v1, :cond_1d

    .line 139
    aput v5, v2, v6

    .line 140
    :cond_1d
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v12, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_25
    if-eqz v2, :cond_40

    .line 141
    array-length v1, v2

    if-lez v1, :cond_40

    .line 142
    aget v1, v2, v6

    if-eqz v1, :cond_1e

    .line 143
    aput v5, v2, v6

    .line 144
    :cond_1e
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v13, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_26
    if-eqz v2, :cond_40

    .line 145
    array-length v1, v2

    if-lez v1, :cond_40

    .line 146
    aget v1, v2, v6

    if-eqz v1, :cond_1f

    .line 147
    aput v5, v2, v6

    .line 148
    :cond_1f
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v9, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_27
    if-eqz v2, :cond_40

    .line 149
    array-length v1, v2

    if-lez v1, :cond_40

    .line 150
    aget v1, v2, v6

    if-eqz v1, :cond_20

    .line 151
    aput v5, v2, v6

    .line 152
    :cond_20
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v10, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_28
    if-eqz v2, :cond_40

    .line 153
    array-length v1, v2

    if-lez v1, :cond_40

    .line 154
    aget v1, v2, v6

    if-eqz v1, :cond_21

    .line 155
    aput v5, v2, v6

    .line 156
    :cond_21
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_29
    if-eqz v2, :cond_40

    .line 157
    array-length v1, v2

    if-lez v1, :cond_40

    .line 158
    aget v1, v2, v6

    if-eqz v1, :cond_22

    .line 159
    aput v5, v2, v6

    .line 160
    :cond_22
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v4, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_2a
    if-eqz v2, :cond_40

    .line 161
    array-length v1, v2

    if-lez v1, :cond_40

    .line 162
    aget v1, v2, v6

    if-eqz v1, :cond_23

    .line 163
    aput v5, v2, v6

    .line 164
    :cond_23
    aget v1, v2, v6

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v5, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_2b
    if-eqz v2, :cond_40

    .line 165
    array-length v1, v2

    if-lez v1, :cond_40

    .line 166
    aget v1, v2, v6

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_2c
    if-eqz v2, :cond_40

    .line 167
    array-length v1, v2

    if-lez v1, :cond_40

    .line 168
    aget v1, v2, v6

    if-eqz v1, :cond_24

    .line 169
    aput v5, v2, v6

    .line 170
    :cond_24
    aget v1, v2, v6

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v4, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_2d
    const/16 v2, 0x4b

    .line 171
    invoke-virtual {v0, v2, v5, v5}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_2e
    if-eqz v2, :cond_31

    .line 172
    array-length v1, v2

    if-lez v1, :cond_31

    .line 173
    aget v1, v2, v6

    if-eqz v1, :cond_25

    .line 174
    aput v5, v2, v6

    .line 175
    :cond_25
    aget v1, v2, v6

    const/16 v3, 0x4a

    invoke-virtual {v0, v3, v12, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_a

    :pswitch_2f
    if-eqz v2, :cond_40

    .line 176
    array-length v1, v2

    if-lez v1, :cond_40

    .line 177
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 178
    aget v1, v2, v6

    if-ge v1, v5, :cond_26

    .line 179
    aput v5, v2, v6

    goto :goto_6

    .line 180
    :cond_26
    aget v1, v2, v6

    if-le v1, v7, :cond_27

    .line 181
    aput v7, v2, v6

    .line 182
    :cond_27
    :goto_6
    aget v1, v2, v6

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v9, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_30
    if-eqz v2, :cond_40

    .line 183
    array-length v1, v2

    if-lez v1, :cond_40

    .line 184
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 185
    aget v1, v2, v6

    if-ge v1, v5, :cond_28

    .line 186
    aput v5, v2, v6

    goto :goto_7

    .line 187
    :cond_28
    aget v1, v2, v6

    if-le v1, v7, :cond_29

    .line 188
    aput v7, v2, v6

    .line 189
    :cond_29
    :goto_7
    aget v1, v2, v6

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v10, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_31
    if-eqz v2, :cond_40

    .line 190
    array-length v1, v2

    if-lez v1, :cond_40

    .line 191
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 192
    aget v1, v2, v6

    if-ge v1, v5, :cond_2a

    .line 193
    aput v5, v2, v6

    goto :goto_8

    .line 194
    :cond_2a
    aget v1, v2, v6

    if-le v1, v7, :cond_2b

    .line 195
    aput v7, v2, v6

    .line 196
    :cond_2b
    :goto_8
    aget v1, v2, v6

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v11, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_32
    if-eqz v2, :cond_40

    .line 197
    array-length v1, v2

    if-lez v1, :cond_40

    .line 198
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 199
    aget v1, v2, v6

    if-ge v1, v5, :cond_2c

    .line 200
    aput v5, v2, v6

    goto :goto_9

    .line 201
    :cond_2c
    aget v1, v2, v6

    if-le v1, v7, :cond_2d

    .line 202
    aput v7, v2, v6

    .line 203
    :cond_2d
    :goto_9
    aget v1, v2, v6

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v4, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_33
    if-eqz v2, :cond_40

    .line 204
    array-length v1, v2

    if-lez v1, :cond_40

    .line 205
    aget v1, v2, v6

    if-eqz v1, :cond_2e

    .line 206
    aput v5, v2, v6

    .line 207
    :cond_2e
    aget v1, v2, v6

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v5, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_34
    if-eqz v2, :cond_40

    .line 208
    array-length v1, v2

    if-lez v1, :cond_40

    .line 209
    aget v1, v2, v6

    if-eqz v1, :cond_2f

    .line 210
    aput v5, v2, v6

    :cond_2f
    const/16 v1, 0x3a

    .line 211
    aget v2, v2, v6

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v4, v2}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_35
    if-eqz v2, :cond_40

    .line 212
    array-length v3, v2

    if-lez v3, :cond_40

    .line 213
    aget v2, v2, v6

    if-eqz v2, :cond_30

    move v2, v5

    :cond_30
    const/16 v3, 0x1a

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_f

    :pswitch_36
    shl-int/lit8 v1, v2, 0x1

    .line 214
    invoke-virtual {v0, v3, v1, v6}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_37
    shl-int/lit8 v1, v2, 0x2

    .line 215
    invoke-virtual {v0, v3, v1, v6}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_38
    shl-int/lit8 v1, v2, 0x3

    .line 216
    invoke-virtual {v0, v3, v1, v6}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_39
    shl-int/lit8 v1, v2, 0x4

    .line 217
    invoke-virtual {v0, v3, v1, v6}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_3a
    shl-int/lit8 v1, v2, 0x5

    .line 218
    invoke-virtual {v0, v3, v1, v6}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_3b
    shl-int/lit8 v1, v2, 0x6

    .line 219
    invoke-virtual {v0, v3, v1, v6}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :pswitch_3c
    shl-int/lit8 v1, v2, 0x7

    .line 220
    invoke-virtual {v0, v3, v1, v6}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :cond_31
    :goto_a
    :pswitch_3d
    if-eqz v2, :cond_40

    .line 221
    array-length v1, v2

    if-lez v1, :cond_40

    .line 222
    aget v1, v2, v6

    if-eqz v1, :cond_32

    .line 223
    aput v5, v2, v6

    .line 224
    :cond_32
    aget v1, v2, v6

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v15, v1}, Lk0/y8;->e3(III)V

    goto/16 :goto_f

    :cond_33
    new-array v1, v9, [I

    aput v8, v1, v6

    aput v4, v1, v5

    const/16 v3, 0x9a

    aput v3, v1, v4

    .line 225
    aget v3, v2, v6

    aput v3, v1, v11

    aget v2, v2, v5

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_f

    :cond_34
    if-eqz v2, :cond_40

    .line 226
    array-length v1, v2

    if-lez v1, :cond_40

    .line 227
    aget v1, v2, v6

    const/16 v3, 0x8b

    if-eq v1, v5, :cond_3a

    aget v1, v2, v6

    if-ne v1, v4, :cond_35

    goto :goto_d

    .line 228
    :cond_35
    aget v1, v2, v6

    if-eq v1, v11, :cond_39

    aget v1, v2, v6

    if-ne v1, v10, :cond_36

    goto :goto_c

    .line 229
    :cond_36
    aget v1, v2, v6

    if-eq v1, v9, :cond_38

    aget v1, v2, v6

    if-ne v1, v13, :cond_37

    goto :goto_b

    .line 230
    :cond_37
    aget v1, v2, v6

    if-ne v1, v12, :cond_40

    new-array v1, v13, [I

    aput v8, v1, v6

    aput v11, v1, v5

    aput v3, v1, v4

    aput v9, v1, v11

    .line 231
    aget v2, v2, v6

    aput v2, v1, v10

    aput v6, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_f

    :cond_38
    :goto_b
    new-array v1, v13, [I

    aput v8, v1, v6

    aput v11, v1, v5

    aput v3, v1, v4

    aput v10, v1, v11

    .line 232
    aget v3, v2, v6

    aput v3, v1, v10

    aget v2, v2, v5

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_f

    :cond_39
    :goto_c
    new-array v1, v13, [I

    aput v8, v1, v6

    aput v11, v1, v5

    aput v3, v1, v4

    aput v11, v1, v11

    .line 233
    aget v3, v2, v6

    aput v3, v1, v10

    aget v2, v2, v5

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_f

    :cond_3a
    :goto_d
    new-array v1, v13, [I

    aput v8, v1, v6

    aput v11, v1, v5

    aput v3, v1, v4

    aput v4, v1, v11

    .line 234
    aget v3, v2, v6

    aput v3, v1, v10

    aget v2, v2, v5

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_f

    :cond_3b
    if-eqz v2, :cond_40

    .line 235
    array-length v1, v2

    if-lez v1, :cond_40

    new-array v1, v9, [I

    aput v8, v1, v6

    aput v4, v1, v5

    .line 236
    aget v3, v2, v6

    aput v3, v1, v4

    aget v3, v2, v5

    aput v3, v1, v11

    aget v2, v2, v4

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_f

    :cond_3c
    if-eqz v2, :cond_40

    .line 237
    array-length v1, v2

    if-lez v1, :cond_40

    new-array v1, v9, [I

    aput v8, v1, v6

    aput v4, v1, v5

    const/16 v3, 0x3a

    aput v3, v1, v4

    .line 238
    aget v3, v2, v6

    aput v3, v1, v11

    aget v2, v2, v5

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_f

    :cond_3d
    if-eqz v2, :cond_40

    .line 239
    array-length v1, v2

    if-lez v1, :cond_40

    .line 240
    aget v1, v2, v6

    add-int/2addr v1, v5

    aput v1, v2, v6

    .line 241
    aget v1, v2, v6

    if-ge v1, v5, :cond_3e

    .line 242
    aput v5, v2, v6

    goto :goto_e

    .line 243
    :cond_3e
    aget v1, v2, v6

    if-le v1, v4, :cond_3f

    .line 244
    aput v4, v2, v6

    .line 245
    :cond_3f
    :goto_e
    aget v1, v2, v6

    invoke-virtual {v0, v3, v5, v1}, Lk0/y8;->e3(III)V

    :cond_40
    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_3d
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch
.end method

.method public c3()V
    .locals 10

    const/16 v0, 0x19

    new-array v1, v0, [I

    .line 1
    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    const/4 v6, 0x6

    if-ne v2, v6, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    iput v5, p0, Lk0/y8;->g:I

    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v0, :cond_1

    const/16 v8, 0x20

    .line 3
    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/16 v7, 0x1a

    aput v7, v1, v2

    const/16 v8, 0x91

    const/4 v9, 0x1

    aput v8, v1, v9

    .line 4
    invoke-static {}, Lk0/y8;->b3()I

    move-result v8

    aput v8, v1, v3

    .line 5
    sget v3, Ly0/f;->i:I

    const/4 v8, 0x5

    if-eq v3, v9, :cond_4

    sget v3, Ly0/f;->C0:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0x56

    aput v6, v1, v4

    const/16 v4, 0x4f

    aput v4, v1, v5

    const/16 v4, 0x4c

    aput v4, v1, v8

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    const/4 v5, 0x7

    .line 6
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    :cond_3
    const/16 v5, 0x8

    .line 7
    rem-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v3, 0x4d

    aput v3, v1, v4

    const/16 v3, 0x55

    aput v3, v1, v5

    const/16 v3, 0x54

    aput v3, v1, v8

    const/16 v3, 0x45

    aput v3, v1, v6

    :goto_2
    new-array v3, v7, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 8
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 9
    :cond_5
    invoke-static {v3}, Lz/k;->s([I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final d3(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lk0/y8;->u:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lk0/y8;->u:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/y8;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, Lk0/y8;->u:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e3(III)V
    .locals 7

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_0

    const/4 v6, 0x5

    new-array v6, v6, [I

    aput v1, v6, v2

    aput v4, v6, v5

    aput p1, v6, v4

    aput p2, v6, v0

    aput p3, v6, v3

    .line 1
    invoke-static {v6}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p3, v3, [I

    aput v1, p3, v2

    aput v5, p3, v5

    aput p1, p3, v4

    aput p2, p3, v0

    .line 2
    invoke-static {p3}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method

.method public final k3(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public final l3(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    new-array v1, v1, [B

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 3
    aget-byte v4, p1, v3

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0x10

    new-array v3, p1, [I

    move v4, v2

    :goto_2
    if-ge v4, p1, :cond_3

    const/16 v5, 0x20

    .line 4
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, -0x1d

    aput p1, v3, v2

    const/16 p1, 0xd

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 p1, 0x2

    const/16 v4, -0x1f

    aput v4, v3, p1

    const/4 p1, 0x3

    const/16 v4, 0xa

    aput v4, v3, p1

    const/4 p1, 0x4

    :goto_3
    if-ge v2, v0, :cond_4

    add-int v4, p1, v2

    .line 5
    aget-byte v5, v1, v2

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6
    :cond_4
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3(B)V
    .locals 6

    .line 1
    sget p1, Lh0/c;->E:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "  "

    goto :goto_0

    :pswitch_0
    const-string p1, "BT PAIRING"

    goto :goto_0

    :pswitch_1
    const-string p1, "BT TALKING"

    goto :goto_0

    :pswitch_2
    const-string p1, "BT RINGING"

    goto :goto_0

    :pswitch_3
    const-string p1, "BT DIALING"

    goto :goto_0

    :pswitch_4
    const-string p1, "BT CONNECTED"

    goto :goto_0

    :pswitch_5
    const-string p1, "BT LINK"

    goto :goto_0

    :pswitch_6
    const-string p1, "BT DISCONNECT"

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    new-array v1, v1, [B

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_1

    .line 4
    aget-byte v4, p1, v3

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/16 p1, 0x10

    new-array v3, p1, [I

    move v4, v2

    :goto_3
    if-ge v4, p1, :cond_2

    const/16 v5, 0x20

    .line 5
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    const/16 p1, -0x1d

    aput p1, v3, v2

    const/16 p1, 0xd

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 p1, 0x2

    const/16 v4, -0x1f

    aput v4, v3, p1

    const/4 p1, 0x3

    const/16 v4, 0xa

    aput v4, v3, p1

    const/4 p1, 0x4

    :goto_4
    if-ge v2, v0, :cond_3

    add-int v4, p1, v2

    .line 6
    aget-byte v5, v1, v2

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7
    :cond_3
    invoke-static {v3}, Lz/k;->s([I)V

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
