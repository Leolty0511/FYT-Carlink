.class public Lk0/dl;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static n:Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:J

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/dl$a;

    invoke-direct {v0}, Lk0/dl$a;-><init>()V

    sput-object v0, Lk0/dl;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/dl;->c:I

    const/16 v1, 0x9

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

    iput-object v2, p0, Lk0/dl;->d:[[I

    .line 4
    iput v0, p0, Lk0/dl;->f:I

    const/16 v2, 0x23

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_9

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    const/16 v4, 0xa

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v4, 0x13

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0x14

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x15

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x16

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x17

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x18

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x19

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    const/16 v4, 0x1a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    const/16 v4, 0x1b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    const/16 v4, 0x1c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    const/16 v4, 0x1d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    const/16 v4, 0x1e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    const/16 v4, 0x1f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    const/16 v4, 0x20

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    const/16 v4, 0x21

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    const/16 v3, 0x22

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/dl;->g:[[I

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lk0/dl;->h:J

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lk0/dl;->i:I

    .line 8
    new-instance v1, Lk0/dl$b;

    invoke-direct {v1, p0}, Lk0/dl$b;-><init>(Lk0/dl;)V

    iput-object v1, p0, Lk0/dl;->j:Ljava/lang/Runnable;

    .line 9
    iput v0, p0, Lk0/dl;->k:I

    .line 10
    new-instance v0, Lk0/dl$c;

    invoke-direct {v0, p0}, Lk0/dl$c;-><init>(Lk0/dl;)V

    iput-object v0, p0, Lk0/dl;->l:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lk0/dl$d;

    invoke-direct {v0, p0}, Lk0/dl$d;-><init>(Lk0/dl;)V

    iput-object v0, p0, Lk0/dl;->m:Ljava/lang/Runnable;

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
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_10
    .array-data 4
        0x14
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_12
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_16
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_18
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_19
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_1a
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_1b
    .array-data 4
        0x3e
        0xd
    .end array-data

    :array_1c
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_1d
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_1e
    .array-data 4
        0x57
        0x1f
    .end array-data

    :array_1f
    .array-data 4
        0x58
        0x1e
    .end array-data

    :array_20
    .array-data 4
        0x70
        0x31
    .end array-data

    :array_21
    .array-data 4
        0x71
        0x28
    .end array-data

    :array_22
    .array-data 4
        0x72
        0x29
    .end array-data

    :array_23
    .array-data 4
        0x73
        0x2a
    .end array-data

    :array_24
    .array-data 4
        0x74
        0x2b
    .end array-data

    :array_25
    .array-data 4
        0x75
        0x2c
    .end array-data

    :array_26
    .array-data 4
        0x76
        0x2d
    .end array-data

    :array_27
    .array-data 4
        0x77
        0x2e
    .end array-data

    :array_28
    .array-data 4
        0x78
        0x2f
    .end array-data

    :array_29
    .array-data 4
        0x79
        0x30
    .end array-data

    :array_2a
    .array-data 4
        0x7a
        0x32
    .end array-data

    :array_2b
    .array-data 4
        0x7b
        0x33
    .end array-data
.end method

.method public static a3()V
    .locals 18

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_0

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0xe1

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lk0/dl;->b3()B

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/16 v13, 0xa

    const/16 v14, 0x30

    if-eq v3, v5, :cond_4

    if-eq v3, v6, :cond_3

    const/4 v5, 0x5

    if-eq v3, v10, :cond_2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    .line 4
    :pswitch_0
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    sget v3, Lu0/b;->r3:I

    div-int/lit8 v6, v3, 0x64

    rem-int/2addr v6, v13

    add-int/2addr v6, v14

    aput v6, v1, v10

    .line 6
    div-int/lit8 v6, v3, 0xa

    rem-int/2addr v6, v13

    add-int/2addr v6, v14

    aput v6, v1, v12

    .line 7
    rem-int/2addr v3, v13

    add-int/2addr v3, v14

    aput v3, v1, v5

    aput v4, v1, v11

    .line 8
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v9

    .line 9
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v8

    .line 10
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v7

    .line 11
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v13

    add-int/2addr v3, v14

    aput v3, v1, v13

    goto/16 :goto_5

    .line 12
    :cond_2
    sget v3, Lh0/c;->J:I

    div-int/lit8 v4, v3, 0x64

    rem-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v10

    .line 13
    div-int/lit8 v4, v3, 0xa

    rem-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v12

    .line 14
    rem-int/2addr v3, v13

    add-int/2addr v3, v14

    aput v3, v1, v5

    goto/16 :goto_5

    .line 15
    :cond_3
    sget v3, Lh0/c;->P:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v9

    .line 16
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v8

    .line 17
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v13

    add-int/2addr v4, v14

    aput v4, v1, v7

    .line 18
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v13

    add-int/2addr v3, v14

    aput v3, v1, v13

    goto/16 :goto_5

    .line 19
    :cond_4
    sget v3, Lw0/d;->h:I

    const/high16 v15, 0x10000

    sub-int v16, v3, v15

    const/16 v17, 0x36

    const/16 v0, 0x3e8

    if-eqz v16, :cond_9

    sub-int v2, v3, v15

    if-eq v5, v2, :cond_9

    sub-int/2addr v3, v15

    if-ne v6, v3, :cond_5

    goto :goto_2

    :cond_5
    aput v14, v1, v10

    .line 20
    sget v2, Lw0/d;->j:I

    rem-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    aput v17, v1, v12

    goto :goto_1

    :cond_6
    and-int/lit16 v2, v2, 0xff

    .line 21
    rem-int/2addr v2, v11

    add-int/2addr v2, v14

    aput v2, v1, v12

    .line 22
    :goto_1
    aget v2, v1, v12

    if-nez v2, :cond_7

    aput v17, v1, v12

    .line 23
    :cond_7
    sget v2, Lw0/d;->i:I

    if-lt v2, v0, :cond_8

    .line 24
    div-int/lit16 v0, v2, 0x3e8

    add-int/2addr v0, v14

    aput v0, v1, v11

    .line 25
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v14

    aput v0, v1, v9

    .line 26
    rem-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v13

    add-int/2addr v0, v14

    aput v0, v1, v8

    .line 27
    rem-int/2addr v2, v13

    add-int/2addr v2, v14

    aput v2, v1, v7

    goto :goto_5

    .line 28
    :cond_8
    div-int/lit8 v0, v2, 0x64

    add-int/2addr v0, v14

    aput v0, v1, v11

    .line 29
    rem-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v13

    add-int/2addr v0, v14

    aput v0, v1, v9

    .line 30
    rem-int/2addr v2, v13

    add-int/2addr v2, v14

    aput v2, v1, v8

    goto :goto_5

    :cond_9
    :goto_2
    aput v14, v1, v10

    .line 31
    sget v2, Lw0/d;->j:I

    rem-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_a

    if-eqz v2, :cond_a

    aput v17, v1, v12

    goto :goto_3

    :cond_a
    and-int/lit16 v2, v2, 0xff

    .line 32
    rem-int/2addr v2, v11

    add-int/2addr v2, v14

    aput v2, v1, v12

    .line 33
    :goto_3
    aget v2, v1, v12

    if-nez v2, :cond_b

    aput v17, v1, v12

    .line 34
    :cond_b
    sget v2, Lw0/d;->i:I

    div-int/lit16 v3, v2, 0x2710

    if-nez v3, :cond_c

    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v4

    goto :goto_4

    :cond_c
    div-int/lit16 v3, v2, 0x2710

    add-int/2addr v3, v14

    :goto_4
    aput v3, v1, v11

    .line 35
    rem-int/lit16 v3, v2, 0x2710

    div-int/2addr v3, v0

    add-int/2addr v3, v14

    aput v3, v1, v9

    .line 36
    rem-int/lit16 v0, v2, 0x3e8

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v14

    aput v0, v1, v8

    const/16 v0, 0x2e

    aput v0, v1, v7

    .line 37
    rem-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v13

    add-int/2addr v2, v14

    aput v2, v1, v13

    :goto_5
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    move v2, v3

    const/16 v3, 0xf

    :goto_6
    if-ge v2, v3, :cond_d

    add-int/lit8 v4, v2, 0x1

    .line 38
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_6

    .line 39
    :cond_d
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b3()B
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0xc

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xd

    goto :goto_0

    :cond_0
    const/16 v1, -0x7b

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    .line 2
    :cond_2
    sget v0, Lw0/d;->h:I

    const/high16 v5, 0x10000

    sub-int v6, v0, v5

    if-nez v6, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    sub-int v6, v0, v5

    if-ne v3, v6, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    sub-int v5, v0, v5

    if-ne v2, v5, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x4

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v4

    if-ne v3, v0, :cond_7

    const/4 v1, 0x5

    goto :goto_0

    :cond_7
    move v1, v4

    .line 3
    :goto_0
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move v4, v1

    :goto_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c3(Lk0/dl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/dl;->h:J

    return-wide v0
.end method

.method public static synthetic d3(Lk0/dl;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/dl;->h:J

    return-wide p1
.end method

.method public static synthetic e3(Lk0/dl;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/dl;->i:I

    return p0
.end method

.method public static synthetic f3(Lk0/dl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/dl;->i:I

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

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->d:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->b:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/dl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/dl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lk0/dl;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Lk0/dl;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Lk0/dl;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x10

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x21

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_17

    const/16 v3, 0x31

    const/16 v9, 0x12

    const/16 v10, 0x41

    const/4 v11, 0x4

    const/4 v12, 0x5

    if-eq v2, v3, :cond_c

    if-eq v2, v10, :cond_8

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    if-eq v2, v9, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x4

    .line 2
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 4
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 6
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 7
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 8
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 9
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 10
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 11
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_2
    add-int/lit8 v2, p2, 0x5

    .line 12
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 13
    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    iput v3, v0, Lk0/dl;->c:I

    move v3, v7

    .line 14
    :goto_1
    iget-object v4, v0, Lk0/dl;->d:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 15
    iget v5, v0, Lk0/dl;->c:I

    aget-object v9, v4, v3

    aget v9, v9, v7

    if-ne v5, v9, :cond_3

    if-eqz v5, :cond_4

    .line 16
    iput v3, v0, Lk0/dl;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    and-int/2addr v2, v6

    if-eqz v2, :cond_5

    .line 17
    array-length v2, v4

    if-ge v3, v2, :cond_7

    .line 18
    aget-object v2, v4, v3

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    .line 19
    :cond_5
    iget v2, v0, Lk0/dl;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_6

    if-eq v2, v6, :cond_6

    .line 20
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 21
    :cond_6
    iput v6, v0, Lk0/dl;->b:I

    :cond_7
    :goto_3
    add-int/lit8 v2, p2, 0x9

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    :cond_8
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 24
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 25
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 27
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x7

    .line 28
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x8

    .line 29
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v12, p2, 0x9

    .line 30
    aget-byte v13, v1, v12

    and-int/2addr v13, v6

    if-ne v3, v6, :cond_9

    if-ne v5, v6, :cond_9

    if-ne v10, v6, :cond_9

    if-ne v13, v6, :cond_9

    .line 31
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 32
    :cond_9
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_a

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_a

    sget v7, Ll0/c0;->i:I

    if-ne v7, v10, :cond_a

    sget v7, Ll0/c0;->j:I

    if-eq v7, v13, :cond_b

    .line 33
    :cond_a
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_b

    .line 34
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 35
    sput v11, Ll0/c0;->k:I

    .line 36
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 37
    :cond_b
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 38
    sput v5, Ll0/c0;->h:I

    .line 39
    sput v10, Ll0/c0;->i:I

    .line 40
    sput v13, Ll0/c0;->j:I

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 42
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 43
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->Q0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 44
    aget-byte v1, v1, v12

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->Q0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    :cond_c
    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v3, v1, v2

    add-int/lit8 v13, p2, 0x3

    .line 46
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x4

    .line 47
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x6

    .line 48
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 49
    aget-byte v16, v1, v16

    const/16 v6, 0x25

    new-array v9, v8, [I

    shr-int/lit8 v17, v3, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v9, v7

    .line 50
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xa

    new-array v9, v8, [I

    shr-int/lit8 v17, v3, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v9, v7

    .line 51
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/lit8 v9, v3, 0x3

    and-int/2addr v9, v8

    aput v9, v6, v7

    const/16 v9, 0xd

    .line 52
    invoke-static {v9, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x3e

    new-array v9, v8, [I

    shr-int/2addr v3, v4

    and-int/2addr v3, v8

    aput v3, v9, v7

    .line 53
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v6, v8, [I

    shr-int/lit8 v9, v13, 0x6

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 54
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v6, v8, [I

    shr-int/lit8 v9, v13, 0x4

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 55
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v6, v8, [I

    shr-int/lit8 v9, v14, 0x5

    and-int/2addr v9, v8

    aput v9, v6, v7

    .line 56
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v6, v14, 0x4

    and-int/2addr v6, v8

    aput v6, v3, v7

    .line 57
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1d

    new-array v6, v8, [I

    shr-int/lit8 v9, v14, 0x0

    and-int/2addr v9, v5

    aput v9, v6, v7

    .line 58
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1e

    new-array v6, v8, [I

    shr-int/lit8 v4, v14, 0x2

    and-int/2addr v4, v5

    aput v4, v6, v7

    .line 59
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    if-eq v15, v5, :cond_f

    if-eq v15, v12, :cond_e

    const/4 v3, 0x6

    if-eq v15, v3, :cond_d

    packed-switch v15, :pswitch_data_0

    move v3, v7

    :goto_5
    move v4, v3

    :goto_6
    move v5, v4

    goto :goto_7

    :pswitch_0
    move v3, v8

    goto :goto_5

    :pswitch_1
    move v4, v7

    move v3, v8

    move v5, v3

    goto :goto_7

    :pswitch_2
    move v5, v7

    move v3, v8

    move v4, v3

    goto :goto_7

    :pswitch_3
    move v4, v7

    move v5, v4

    move v3, v8

    goto :goto_7

    :cond_d
    move v3, v7

    move v4, v3

    move v5, v8

    goto :goto_7

    :cond_e
    move v3, v7

    move v4, v8

    goto :goto_6

    :cond_f
    move v3, v7

    move v5, v3

    move v4, v8

    :goto_7
    new-array v6, v8, [I

    aput v3, v6, v7

    const/16 v3, 0x12

    .line 60
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v6, v8, [I

    aput v4, v6, v7

    .line 61
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v8, [I

    aput v5, v4, v7

    .line 62
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v4, v8, [I

    aput v16, v4, v7

    .line 63
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x8

    .line 64
    aget-byte v4, v1, v3

    const/16 v5, 0xff

    and-int/2addr v4, v5

    add-int/lit8 v6, p2, 0x9

    .line 65
    aget-byte v9, v1, v6

    and-int/2addr v9, v5

    const-string v10, "persist.fyt.reversetemp"

    .line 66
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 67
    aget-byte v4, v1, v6

    and-int/2addr v4, v5

    .line 68
    aget-byte v3, v1, v3

    and-int/lit16 v9, v3, 0xff

    :cond_10
    const/4 v3, -0x3

    const/4 v6, -0x2

    const/16 v10, 0xfe

    const/16 v11, 0x1b

    if-eq v4, v10, :cond_12

    if-eq v4, v5, :cond_11

    new-array v5, v8, [I

    mul-int/2addr v4, v12

    aput v4, v5, v7

    .line 69
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_11
    new-array v4, v8, [I

    aput v3, v4, v7

    .line 70
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_12
    new-array v4, v8, [I

    aput v6, v4, v7

    .line 71
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v4, 0x1c

    if-eq v9, v10, :cond_14

    const/16 v5, 0xff

    if-eq v9, v5, :cond_13

    new-array v3, v8, [I

    mul-int/2addr v9, v12

    aput v9, v3, v7

    .line 72
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_13
    new-array v5, v8, [I

    aput v3, v5, v7

    .line 73
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_14
    new-array v3, v8, [I

    aput v6, v3, v7

    .line 74
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v3, 0xd

    add-int/lit8 v3, p2, 0xd

    .line 75
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    .line 76
    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v8

    if-nez v3, :cond_15

    .line 77
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    :cond_15
    if-ne v1, v8, :cond_16

    mul-int/lit8 v3, v3, 0x9

    add-int/lit16 v3, v3, 0x258

    const/high16 v1, 0x10000000

    or-int/2addr v1, v3

    and-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_16
    mul-int/2addr v3, v12

    add-int/lit16 v1, v3, 0x258

    .line 78
    :goto_a
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_e

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lk0/dl;->f:I

    add-int/lit8 v2, p2, 0x3

    .line 80
    aget-byte v1, v1, v2

    move v2, v7

    .line 81
    :goto_b
    iget-object v3, v0, Lk0/dl;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 82
    iget v4, v0, Lk0/dl;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_18

    if-eqz v4, :cond_19

    .line 83
    iput v2, v0, Lk0/dl;->e:I

    goto :goto_c

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    :goto_c
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_1a

    .line 84
    array-length v1, v3

    if-ge v2, v1, :cond_1e

    .line 85
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    .line 86
    :cond_1a
    iget v1, v0, Lk0/dl;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_1b

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1c

    .line 87
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_1b
    const/16 v2, 0xff

    .line 88
    :cond_1c
    :goto_d
    iput v2, v0, Lk0/dl;->e:I

    goto :goto_e

    .line 89
    :cond_1d
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_1e
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/dl;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lk0/dl;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Lk0/dl;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Lk0/dl;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/dl;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/dl;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/4 p3, 0x1

    const/4 v0, 0x2

    aput v0, p1, p3

    const/16 v1, 0x3d

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 1
    aget p4, p2, p4

    aput p4, p1, v0

    const/4 p4, 0x4

    aget p2, p2, p3

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
