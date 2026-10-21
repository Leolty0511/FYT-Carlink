.class public Lk0/nk;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static s:Landroid/widget/Toast;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/Runnable;


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Runnable;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/nk$b;

    invoke-direct {v0}, Lk0/nk$b;-><init>()V

    sput-object v0, Lk0/nk;->u:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/nk;->c:I

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

    iput-object v2, p0, Lk0/nk;->d:[[I

    .line 4
    iput v0, p0, Lk0/nk;->f:I

    const/16 v2, 0x2d

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

    const/16 v4, 0x22

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    const/16 v4, 0x23

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    const/16 v4, 0x24

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    const/16 v4, 0x25

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    const/16 v4, 0x26

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    const/16 v4, 0x27

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_31

    const/16 v4, 0x28

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    const/16 v4, 0x29

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    const/16 v4, 0x2a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_34

    const/16 v4, 0x2b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_35

    const/16 v3, 0x2c

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/nk;->g:[[I

    .line 6
    new-instance v1, Lk0/nk$a;

    invoke-direct {v1, p0}, Lk0/nk$a;-><init>(Lk0/nk;)V

    iput-object v1, p0, Lk0/nk;->i:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lk0/nk;->k:I

    .line 8
    iput v0, p0, Lk0/nk;->l:I

    .line 9
    iput v0, p0, Lk0/nk;->m:I

    .line 10
    new-instance v0, Lk0/nk$c;

    invoke-direct {v0, p0}, Lk0/nk$c;-><init>(Lk0/nk;)V

    iput-object v0, p0, Lk0/nk;->n:Ljava/lang/Runnable;

    .line 11
    iput v8, p0, Lk0/nk;->o:I

    .line 12
    new-instance v0, Lk0/nk$d;

    invoke-direct {v0, p0}, Lk0/nk$d;-><init>(Lk0/nk;)V

    iput-object v0, p0, Lk0/nk;->p:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lk0/nk$e;

    invoke-direct {v0, p0}, Lk0/nk$e;-><init>(Lk0/nk;)V

    iput-object v0, p0, Lk0/nk;->q:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/nk$f;

    invoke-direct {v0, p0}, Lk0/nk$f;-><init>(Lk0/nk;)V

    iput-object v0, p0, Lk0/nk;->r:Ljava/lang/Runnable;

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
        0x4
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_7
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_8
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_c
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_d
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_f
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_10
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_11
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_12
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_13
    .array-data 4
        0x12
        0x3a
    .end array-data

    :array_14
    .array-data 4
        0x16
        0x26
    .end array-data

    :array_15
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_17
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_18
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_19
    .array-data 4
        0x1b
        0x22
    .end array-data

    :array_1a
    .array-data 4
        0x1c
        0x23
    .end array-data

    :array_1b
    .array-data 4
        0x1d
        0x20
    .end array-data

    :array_1c
    .array-data 4
        0x1e
        0x21
    .end array-data

    :array_1d
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_1e
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_22
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_23
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x31
        0x38
    .end array-data

    :array_25
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_26
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_27
    .array-data 4
        0x3f
        0x26
    .end array-data

    :array_28
    .array-data 4
        0x40
        0x37
    .end array-data

    :array_29
    .array-data 4
        0x41
        0x18
    .end array-data

    :array_2a
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_2b
    .array-data 4
        0x43
        0x40
    .end array-data

    :array_2c
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_2d
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_2e
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_2f
    .array-data 4
        0x4d
        0x3
    .end array-data

    :array_30
    .array-data 4
        0x4e
        0x4
    .end array-data

    :array_31
    .array-data 4
        0x56
        0x16
    .end array-data

    :array_32
    .array-data 4
        0x57
        0x1b
    .end array-data

    :array_33
    .array-data 4
        0x58
        0x1c
    .end array-data

    :array_34
    .array-data 4
        0x61
        0x48
    .end array-data

    :array_35
    .array-data 4
        0x62
        0x47
    .end array-data
.end method

.method public static a3()V
    .locals 20

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

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lk0/nk;->b3()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->D:I

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/16 v14, 0xa

    const/16 v15, 0x30

    if-eq v3, v5, :cond_5

    if-eq v3, v13, :cond_1

    if-eq v3, v12, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_2

    goto/16 :goto_6

    .line 5
    :cond_2
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 6
    div-int/lit8 v5, v3, 0x64

    aput v5, v1, v9

    .line 7
    rem-int/lit8 v5, v3, 0x64

    div-int/2addr v5, v14

    if-nez v5, :cond_3

    move v5, v15

    goto :goto_1

    :cond_3
    add-int/2addr v5, v15

    :goto_1
    aput v5, v1, v8

    .line 8
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v7

    aput v4, v1, v11

    aput v15, v1, v10

    .line 9
    sget v3, Lu0/b;->s3:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 10
    div-int/lit8 v4, v3, 0x64

    aput v4, v1, v13

    .line 11
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v14

    if-nez v4, :cond_4

    move v4, v15

    goto :goto_2

    :cond_4
    add-int/2addr v4, v15

    :goto_2
    aput v4, v1, v12

    .line 12
    rem-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_6

    .line 13
    :cond_5
    sget v3, Lw0/d;->h:I

    const/high16 v16, 0x10000

    sub-int v17, v3, v16

    const/16 v18, 0x2e

    const/16 v19, 0x31

    if-nez v17, :cond_7

    aput v15, v1, v9

    aput v19, v1, v8

    aput v4, v1, v7

    .line 14
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_6

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_3

    :cond_6
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_3
    aput v5, v1, v11

    .line 15
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v15

    aput v4, v1, v10

    .line 16
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v15

    aput v4, v1, v13

    aput v18, v1, v12

    .line 17
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v14

    goto/16 :goto_6

    :cond_7
    sub-int v0, v3, v16

    if-eq v5, v0, :cond_c

    sub-int v0, v3, v16

    if-ne v6, v0, :cond_8

    goto/16 :goto_4

    :cond_8
    sub-int/2addr v3, v2

    if-nez v3, :cond_a

    aput v15, v1, v9

    aput v19, v1, v8

    aput v4, v1, v7

    .line 18
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x3e8

    if-nez v3, :cond_9

    .line 19
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v11

    .line 20
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v10

    .line 21
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v13

    aput v4, v1, v12

    aput v4, v1, v14

    goto/16 :goto_6

    .line 22
    :cond_9
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    aput v3, v1, v11

    .line 23
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v10

    .line 24
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v13

    .line 25
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v12

    aput v4, v1, v14

    goto :goto_6

    :cond_a
    aput v15, v1, v9

    const/16 v0, 0x33

    aput v0, v1, v8

    aput v4, v1, v7

    .line 26
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x3e8

    if-nez v3, :cond_b

    .line 27
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v11

    .line 28
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v10

    .line 29
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v13

    aput v4, v1, v12

    aput v4, v1, v14

    goto :goto_6

    .line 30
    :cond_b
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    aput v3, v1, v11

    .line 31
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v10

    .line 32
    rem-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v14

    add-int/2addr v3, v15

    aput v3, v1, v13

    .line 33
    rem-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v12

    aput v4, v1, v14

    goto :goto_6

    :cond_c
    :goto_4
    aput v19, v1, v9

    aput v15, v1, v8

    aput v4, v1, v7

    .line 34
    sget v0, Lw0/d;->i:I

    div-int/lit16 v3, v0, 0x2710

    if-nez v3, :cond_d

    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v4

    goto :goto_5

    :cond_d
    div-int/lit16 v3, v0, 0x2710

    add-int/2addr v3, v15

    :goto_5
    aput v3, v1, v11

    .line 35
    rem-int/lit16 v3, v0, 0x2710

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v15

    aput v3, v1, v10

    .line 36
    rem-int/lit16 v3, v0, 0x3e8

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v15

    aput v3, v1, v13

    aput v18, v1, v12

    .line 37
    rem-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v14

    add-int/2addr v0, v15

    aput v0, v1, v14

    :goto_6
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v3, 0xf

    :goto_7
    if-ge v2, v3, :cond_e

    add-int/lit8 v4, v2, 0x1

    .line 38
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v0, v4

    move v2, v4

    goto :goto_7

    .line 39
    :cond_e
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()I
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0x17

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xb

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    .line 2
    :pswitch_2
    sget v0, Lo0/e;->H:I

    if-ne v0, v4, :cond_8

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    :pswitch_3
    const/16 v1, 0xc

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    .line 3
    :cond_2
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    sub-int v5, v0, v1

    if-nez v5, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    sub-int v5, v0, v1

    if-ne v4, v5, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    sub-int v1, v0, v1

    if-ne v2, v1, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x4

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v3

    if-ne v4, v0, :cond_7

    const/4 v1, 0x5

    goto :goto_0

    :cond_7
    move v1, v3

    .line 4
    :cond_8
    :goto_0
    :pswitch_4
    sget v0, Lu0/b;->o:I

    if-ne v0, v4, :cond_9

    const/16 v1, 0x10

    :cond_9
    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static c3(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

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

.method public static d3(Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p0, Lk0/nk;->t:Ljava/lang/String;

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p0

    sget-object v0, Lk0/nk;->u:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic e3()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lk0/nk;->s:Landroid/widget/Toast;

    return-object v0
.end method

.method public static synthetic f3(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 1
    sput-object p0, Lk0/nk;->s:Landroid/widget/Toast;

    return-object p0
.end method

.method public static synthetic g3()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk0/nk;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h3(Lk0/nk;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/nk;->q:Ljava/lang/Runnable;

    return-object p0
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
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->h:I

    .line 2
    sget v2, Lk0/nt;->a:I

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 v2, 0x0

    .line 3
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v4, v0, Lk0/mt;->l:I

    .line 5
    iput v1, v0, Lk0/mt;->i:I

    goto/16 :goto_0

    .line 6
    :sswitch_1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v4, v0, Lk0/mt;->l:I

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iget-object v0, p0, Lk0/nk;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 10
    :sswitch_2
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v4, v0, Lk0/mt;->l:I

    goto :goto_0

    .line 12
    :sswitch_3
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 13
    iput v4, v0, Lk0/mt;->l:I

    .line 14
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 15
    :sswitch_4
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 16
    iput v1, v0, Lk0/mt;->l:I

    goto :goto_0

    .line 17
    :sswitch_5
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v1, v0, Lk0/mt;->l:I

    goto :goto_0

    .line 19
    :sswitch_6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 20
    iput v1, v0, Lk0/mt;->l:I

    goto :goto_0

    .line 21
    :sswitch_7
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 22
    iput v4, v0, Lk0/mt;->l:I

    .line 23
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 27
    :sswitch_8
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 28
    iput v1, v0, Lk0/mt;->l:I

    .line 29
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_0

    .line 30
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v0, Lk0/mt;->l:I

    .line 31
    :cond_0
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v4, :cond_1

    .line 32
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v0, Lk0/mt;->f:I

    .line 33
    iput v4, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 34
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->f:I

    .line 35
    iput v1, v0, Lk0/mt;->i:I

    .line 36
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v0, Lk0/mt;->e:I

    .line 37
    iput v1, v0, Lk0/mt;->g:I

    .line 38
    iput v1, v0, Lk0/mt;->b:I

    .line 39
    iput v1, v0, Lk0/mt;->c:I

    .line 40
    iput v1, v0, Lk0/mt;->d:I

    .line 41
    iput v4, v0, Lk0/mt;->o:I

    .line 42
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/nk;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 43
    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 44
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 45
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 46
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 47
    sget v0, Lk0/nt;->a:I

    const v2, 0x4601bb

    if-eq v0, v2, :cond_2

    .line 48
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->q:I

    goto :goto_2

    .line 49
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v0, Lk0/mt;->q:I

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1701bb -> :sswitch_8
        0x3e01bb -> :sswitch_7
        0x3f01bb -> :sswitch_6
        0x4001bb -> :sswitch_5
        0x4001bc -> :sswitch_4
        0x4101bb -> :sswitch_3
        0x4201bb -> :sswitch_4
        0x4601bb -> :sswitch_2
        0x5101bb -> :sswitch_1
        0x5d01bb -> :sswitch_0
        0x6d01bb -> :sswitch_0
        0x6e01bb -> :sswitch_6
        0x8401bb -> :sswitch_1
        0xe801bb -> :sswitch_4
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_45

    const/16 v3, -0x57

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/16 v14, 0x8

    if-eq v2, v3, :cond_3f

    const/16 v3, -0x18

    const/16 v9, 0xf

    if-eq v2, v3, :cond_3d

    const/16 v3, -0x10

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x31

    const/16 v10, 0x1e

    const/16 v11, 0x12

    const/4 v15, 0x6

    if-eq v2, v3, :cond_27

    const/16 v3, 0x35

    if-eq v2, v3, :cond_26

    const/16 v3, 0x41

    if-eq v2, v3, :cond_22

    const/16 v3, 0x48

    if-eq v2, v3, :cond_21

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1a

    if-eq v2, v11, :cond_18

    const/16 v3, 0x16

    if-eq v2, v3, :cond_17

    const/16 v3, 0x17

    if-eq v2, v3, :cond_16

    const/16 v3, 0x21

    if-eq v2, v3, :cond_d

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x61

    if-eq v2, v3, :cond_1

    const/16 v3, 0x62

    if-eq v2, v3, :cond_0

    goto/16 :goto_1a

    :cond_0
    const/16 v2, 0xb2

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x2

    .line 2
    aget-byte v11, v1, v10

    shr-int/2addr v11, v15

    and-int/2addr v11, v5

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v8, [I

    .line 3
    aget-byte v11, v1, v10

    shr-int/2addr v11, v12

    and-int/2addr v11, v8

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v8, [I

    .line 4
    aget-byte v10, v1, v10

    shr-int/2addr v10, v4

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x3

    .line 5
    aget-byte v10, v1, v10

    shr-int/2addr v10, v4

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x4

    .line 6
    aget-byte v11, v1, v10

    shr-int/2addr v11, v4

    and-int/2addr v11, v9

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v8, [I

    .line 7
    aget-byte v10, v1, v10

    shr-int/2addr v10, v7

    and-int/2addr v9, v10

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x5

    .line 8
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v8, [I

    .line 9
    aget-byte v10, v1, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v8, [I

    .line 10
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v8, [I

    .line 11
    aget-byte v10, v1, v9

    shr-int/lit8 v4, v10, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v8, [I

    .line 12
    aget-byte v4, v1, v9

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v8, [I

    .line 13
    aget-byte v4, v1, v9

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v8, [I

    .line 14
    aget-byte v4, v1, v9

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v8, [I

    .line 15
    aget-byte v4, v1, v9

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 16
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v8, [I

    .line 17
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v8, [I

    .line 18
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 19
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v8, [I

    .line 20
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_1
    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x2

    .line 21
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    .line 22
    aget-byte v10, v1, v9

    shr-int/2addr v10, v4

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 23
    aget-byte v10, v1, v9

    shr-int/2addr v10, v8

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v8, [I

    .line 24
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x3

    .line 25
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 26
    aget-byte v10, v1, v9

    shr-int/2addr v10, v4

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    .line 27
    aget-byte v10, v1, v9

    shr-int/2addr v10, v8

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    .line 28
    aget-byte v10, v1, v9

    shr-int/2addr v10, v8

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    .line 29
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 30
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    .line 31
    aget-byte v10, v1, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    .line 32
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 33
    aget-byte v10, v1, v9

    shr-int/2addr v10, v4

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    .line 34
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 35
    aget-byte v10, v1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v5

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 36
    aget-byte v10, v1, v9

    shr-int/2addr v10, v13

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    .line 37
    aget-byte v10, v1, v9

    shr-int/2addr v10, v8

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 38
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x5

    .line 39
    aget-byte v10, v1, v9

    shr-int/2addr v10, v15

    and-int/2addr v10, v5

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    .line 40
    aget-byte v10, v1, v9

    shr-int/2addr v10, v4

    and-int/2addr v10, v5

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    .line 41
    aget-byte v10, v1, v9

    shr-int/2addr v10, v13

    and-int/2addr v10, v5

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    .line 42
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v5

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x6

    .line 43
    aget-byte v10, v1, v9

    shr-int/2addr v10, v6

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v8, [I

    .line 44
    aget-byte v10, v1, v9

    shr-int/2addr v10, v12

    and-int/2addr v10, v5

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    .line 45
    aget-byte v10, v1, v9

    shr-int/2addr v10, v5

    and-int/2addr v10, v5

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    .line 46
    aget-byte v10, v1, v9

    shr-int/2addr v10, v13

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v8, [I

    .line 47
    aget-byte v10, v1, v9

    shr-int/2addr v10, v8

    and-int/2addr v10, v8

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v8, [I

    .line 48
    aget-byte v9, v1, v9

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x7

    .line 49
    aget-byte v10, v1, v9

    shr-int/lit8 v6, v10, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v8, [I

    .line 50
    aget-byte v6, v1, v9

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v8, [I

    .line 51
    aget-byte v6, v1, v9

    shr-int/2addr v6, v12

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v8, [I

    .line 52
    aget-byte v6, v1, v9

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    .line 53
    aget-byte v6, v1, v9

    shr-int/2addr v6, v13

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    .line 54
    aget-byte v6, v1, v9

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x8

    .line 55
    aget-byte v9, v1, v6

    shr-int/lit8 v4, v9, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v8, [I

    .line 56
    aget-byte v4, v1, v6

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    .line 57
    aget-byte v4, v1, v6

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v8, [I

    .line 58
    aget-byte v1, v1, v6

    shr-int/2addr v1, v7

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_2
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 60
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_8

    if-eq v2, v13, :cond_3

    goto/16 :goto_1a

    .line 61
    :cond_3
    iget v2, v0, Lk0/nk;->m:I

    if-eq v1, v2, :cond_46

    if-le v1, v2, :cond_5

    move v2, v7

    .line 62
    :goto_0
    iget v3, v0, Lk0/nk;->m:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_4

    const/16 v3, 0x1f

    .line 63
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x1f

    .line 64
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_5
    if-ge v1, v2, :cond_7

    move v2, v7

    .line 65
    :goto_1
    iget v3, v0, Lk0/nk;->m:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_6

    .line 66
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :cond_6
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 68
    :cond_7
    :goto_2
    iput v1, v0, Lk0/nk;->m:I

    goto/16 :goto_1a

    .line 69
    :cond_8
    iget v2, v0, Lk0/nk;->l:I

    if-eq v1, v2, :cond_46

    if-le v1, v2, :cond_a

    move v2, v7

    .line 70
    :goto_3
    iget v3, v0, Lk0/nk;->l:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_9

    .line 71
    invoke-static {v6, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 72
    :cond_9
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    goto :goto_5

    :cond_a
    if-ge v1, v2, :cond_c

    move v2, v7

    .line 73
    :goto_4
    iget v3, v0, Lk0/nk;->l:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_b

    .line 74
    invoke-static {v14, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 75
    :cond_b
    invoke-static {v14, v8}, Ll0/b0;->l0(II)V

    .line 76
    :cond_c
    :goto_5
    iput v1, v0, Lk0/nk;->l:I

    goto/16 :goto_1a

    :cond_d
    add-int/lit8 v2, p2, 0x2

    .line 77
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 78
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 79
    iput v2, v0, Lk0/nk;->f:I

    move v2, v7

    .line 80
    :goto_6
    iget-object v3, v0, Lk0/nk;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_f

    .line 81
    iget v4, v0, Lk0/nk;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_e

    if-eqz v4, :cond_f

    .line 82
    iput v2, v0, Lk0/nk;->e:I

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 83
    :cond_f
    :goto_7
    iget v4, v0, Lk0/nk;->f:I

    if-eq v4, v11, :cond_15

    const/16 v5, 0x37

    if-eq v4, v5, :cond_14

    const/16 v5, 0x39

    if-eq v4, v5, :cond_13

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v8, :cond_10

    .line 84
    array-length v1, v3

    if-ge v2, v1, :cond_46

    .line 85
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_10
    if-nez v1, :cond_46

    .line 86
    iget v1, v0, Lk0/nk;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_11

    const/16 v2, 0xff

    if-eq v1, v2, :cond_12

    .line 87
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_8

    :cond_11
    const/16 v2, 0xff

    .line 88
    :cond_12
    :goto_8
    iput v2, v0, Lk0/nk;->e:I

    goto/16 :goto_1a

    .line 89
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lk0/nk;->l3()V

    goto/16 :goto_1a

    .line 90
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lk0/nk;->m3()V

    goto/16 :goto_1a

    .line 91
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lk0/nk;->k3()V

    goto/16 :goto_1a

    :cond_16
    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 92
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 93
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 94
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 95
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 96
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 97
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 98
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 99
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x12

    .line 100
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x13

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x14

    .line 101
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x15

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_17
    const/16 v2, 0x63

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 102
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 103
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 104
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    shl-int/2addr v5, v14

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 105
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    const/16 v5, 0xd

    add-int/lit8 v5, p2, 0xd

    aget-byte v1, v1, v5

    const/16 v6, 0xff

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_18
    const/16 v6, 0xff

    add-int/lit8 v2, p2, 0x4

    .line 106
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    const-string v2, "persist.syu.reversefrontdoor"

    .line 107
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 108
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 109
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_19
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 110
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 111
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_9
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 112
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 113
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 114
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_1a
    add-int/lit8 v2, p2, 0x4

    .line 115
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 116
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 117
    iput v2, v0, Lk0/nk;->c:I

    move v2, v7

    .line 118
    :goto_a
    iget-object v4, v0, Lk0/nk;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_1c

    .line 119
    iget v5, v0, Lk0/nk;->c:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_1b

    if-eqz v5, :cond_1c

    .line 120
    iput v2, v0, Lk0/nk;->b:I

    goto :goto_b

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1c
    :goto_b
    const/16 v5, 0xff

    and-int/2addr v3, v5

    if-ne v3, v8, :cond_1d

    .line 121
    array-length v3, v4

    if-ge v2, v3, :cond_20

    .line 122
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_1d
    if-nez v3, :cond_20

    .line 123
    iget v2, v0, Lk0/nk;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_1e

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1f

    .line 124
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_1e
    const/16 v3, 0xff

    .line 125
    :cond_1f
    :goto_c
    iput v3, v0, Lk0/nk;->b:I

    :cond_20
    :goto_d
    add-int/lit8 v2, p2, 0x9

    .line 126
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1a

    :cond_21
    const/16 v2, 0x89

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 127
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 128
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 129
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 130
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_22
    const/16 v5, 0xff

    add-int/lit8 v2, p2, 0x2

    .line 131
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/nk;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 132
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/nk;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 133
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/nk;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 134
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lk0/nk;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 135
    aget-byte v3, v1, v2

    and-int/2addr v3, v5

    add-int/lit8 v6, p2, 0x7

    .line 136
    aget-byte v10, v1, v6

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x8

    .line 137
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x9

    .line 138
    aget-byte v14, v1, v13

    and-int/2addr v14, v5

    .line 139
    invoke-static {v3}, Lk0/nk;->c3(I)I

    move-result v5

    if-ne v5, v9, :cond_23

    .line 140
    invoke-static {v10}, Lk0/nk;->c3(I)I

    move-result v5

    if-ne v5, v9, :cond_23

    .line 141
    invoke-static {v12}, Lk0/nk;->c3(I)I

    move-result v5

    if-ne v5, v9, :cond_23

    .line 142
    invoke-static {v14}, Lk0/nk;->c3(I)I

    move-result v5

    if-ne v5, v9, :cond_23

    .line 143
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_e

    .line 144
    :cond_23
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_24

    sget v5, Ll0/c0;->h:I

    if-ne v5, v10, :cond_24

    sget v5, Ll0/c0;->i:I

    if-ne v5, v12, :cond_24

    sget v5, Ll0/c0;->j:I

    if-eq v5, v14, :cond_25

    .line 145
    :cond_24
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_25

    .line 146
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 147
    sput v4, Ll0/c0;->k:I

    .line 148
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 149
    :cond_25
    :goto_e
    sput v3, Ll0/c0;->g:I

    .line 150
    sput v10, Ll0/c0;->h:I

    .line 151
    sput v12, Ll0/c0;->i:I

    .line 152
    sput v14, Ll0/c0;->j:I

    .line 153
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/nk;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 154
    aget-byte v2, v1, v6

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/nk;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 155
    aget-byte v2, v1, v11

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/nk;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 156
    aget-byte v1, v1, v13

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/nk;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1a

    :cond_26
    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 157
    aget-byte v10, v1, v5

    shr-int/lit8 v4, v10, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 158
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 159
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 160
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 161
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 162
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 163
    aget-byte v3, v1, v3

    add-int/lit8 v14, p2, 0x4

    .line 164
    aget-byte v14, v1, v14

    add-int/lit8 v16, p2, 0x6

    .line 165
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x7

    .line 166
    aget-byte v13, v1, v17

    add-int/lit8 v17, p2, 0x8

    .line 167
    aget-byte v18, v1, v17

    add-int/lit8 v19, p2, 0x9

    .line 168
    aget-byte v20, v1, v19

    const/16 v4, 0x25

    new-array v11, v8, [I

    shr-int/lit8 v21, v2, 0x7

    and-int/lit8 v21, v21, 0x1

    aput v21, v11, v7

    .line 169
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v8

    aput v11, v4, v7

    const/16 v11, 0xa

    .line 170
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v8

    aput v11, v4, v7

    const/16 v11, 0xd

    .line 171
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v6

    aput v2, v4, v7

    .line 172
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x48

    new-array v4, v8, [I

    shr-int/lit8 v10, v3, 0x7

    and-int/2addr v10, v8

    aput v10, v4, v7

    .line 173
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v3, 0x6

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xb

    .line 174
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v3, 0x3

    and-int/2addr v4, v5

    aput v4, v2, v7

    const/16 v4, 0xc

    .line 175
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v10, v8, [I

    shr-int/lit8 v11, v3, 0x2

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 176
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v10, v8, [I

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aput v3, v10, v7

    .line 177
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4f

    new-array v3, v8, [I

    shr-int/lit8 v10, v14, 0x7

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 178
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v8, [I

    shr-int/lit8 v10, v14, 0x6

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 179
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v14, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/16 v3, 0x10

    .line 180
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    shr-int/lit8 v10, v14, 0x4

    and-int/2addr v10, v8

    aput v10, v3, v7

    .line 181
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v10, v14, 0x0

    and-int/2addr v6, v10

    aput v6, v3, v7

    .line 182
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 183
    aget-byte v2, v1, v2

    if-ne v2, v8, :cond_28

    const/16 v2, 0x3e

    .line 184
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 185
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    :cond_28
    shr-int/lit8 v2, v16, 0x0

    and-int/2addr v2, v9

    if-eq v2, v5, :cond_2c

    if-eq v2, v4, :cond_2b

    if-eq v2, v12, :cond_2a

    if-eq v2, v15, :cond_29

    move v3, v7

    move v6, v3

    :goto_f
    move v10, v6

    goto :goto_10

    :cond_29
    move v6, v7

    move v10, v6

    move v3, v8

    goto :goto_10

    :cond_2a
    move v10, v7

    move v3, v8

    move v6, v3

    goto :goto_10

    :cond_2b
    move v3, v7

    move v6, v8

    goto :goto_f

    :cond_2c
    move v3, v7

    move v10, v3

    move v6, v8

    :goto_10
    const/16 v11, 0x13

    new-array v14, v8, [I

    aput v3, v14, v7

    .line 186
    invoke-static {v11, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v11, v8, [I

    aput v6, v11, v7

    .line 187
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    aput v10, v3, v7

    const/16 v6, 0x12

    .line 188
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v6, v8, [I

    aput v2, v6, v7

    .line 189
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x4

    shr-int/lit8 v3, v16, 0x4

    and-int/lit8 v2, v3, 0xf

    if-eq v2, v5, :cond_30

    if-eq v2, v4, :cond_2f

    if-eq v2, v12, :cond_2e

    if-eq v2, v15, :cond_2d

    move v3, v7

    move v6, v3

    :goto_11
    move v9, v6

    goto :goto_12

    :cond_2d
    move v6, v7

    move v9, v6

    move v3, v8

    goto :goto_12

    :cond_2e
    move v9, v7

    move v3, v8

    move v6, v3

    goto :goto_12

    :cond_2f
    move v3, v7

    move v6, v8

    goto :goto_11

    :cond_30
    move v3, v7

    move v9, v3

    move v6, v8

    :goto_12
    const/16 v10, 0x17

    new-array v11, v8, [I

    aput v3, v11, v7

    .line 190
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v10, v8, [I

    aput v6, v10, v7

    .line 191
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x16

    new-array v6, v8, [I

    aput v9, v6, v7

    .line 192
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x57

    new-array v6, v8, [I

    aput v2, v6, v7

    .line 193
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    const/16 v6, 0xff

    and-int/lit16 v9, v13, 0xff

    aput v9, v3, v7

    .line 194
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 195
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 196
    aget-byte v18, v1, v19

    .line 197
    aget-byte v20, v1, v17

    :cond_31
    move/from16 v2, v18

    move/from16 v3, v20

    and-int/2addr v2, v6

    const/16 v9, 0xfe

    if-ne v2, v9, :cond_32

    const/16 v2, 0x1b

    new-array v10, v8, [I

    const/4 v11, -0x2

    aput v11, v10, v7

    .line 198
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    move v2, v6

    goto :goto_14

    :cond_32
    if-ne v2, v6, :cond_33

    const/16 v2, 0x1b

    new-array v6, v8, [I

    const/4 v10, -0x3

    aput v10, v6, v7

    .line 199
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_33
    const/16 v6, 0x1b

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 200
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    :goto_13
    const/16 v2, 0xff

    :goto_14
    and-int/2addr v3, v2

    if-ne v3, v9, :cond_34

    const/16 v3, 0x1c

    new-array v6, v8, [I

    const/4 v10, -0x2

    aput v10, v6, v7

    .line 201
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_34
    if-ne v3, v2, :cond_35

    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/4 v6, -0x3

    aput v6, v3, v7

    .line 202
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_35
    const/16 v2, 0x1c

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 203
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_15
    add-int/lit8 v2, p2, 0xa

    .line 204
    aget-byte v2, v1, v2

    if-eq v2, v8, :cond_39

    const/4 v3, 0x2

    if-eq v2, v3, :cond_38

    if-eq v2, v5, :cond_37

    const/4 v3, 0x4

    if-eq v2, v3, :cond_36

    move v2, v7

    move v3, v2

    move v5, v3

    goto :goto_16

    :cond_36
    move v2, v7

    move v5, v2

    move v3, v8

    goto :goto_16

    :cond_37
    move v5, v7

    move v2, v8

    move v3, v2

    goto :goto_16

    :cond_38
    move v3, v7

    move v5, v3

    move v2, v8

    goto :goto_16

    :cond_39
    move v2, v7

    move v3, v2

    move v5, v8

    :goto_16
    const/16 v6, 0x2f

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 205
    invoke-static {v6, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 206
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v8, [I

    aput v5, v3, v7

    .line 207
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xb

    .line 208
    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 209
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    if-ne v3, v9, :cond_3a

    const/16 v1, 0x28

    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 210
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    .line 211
    :cond_3a
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_3b

    const/16 v1, 0x28

    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 212
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_3b
    const/16 v3, 0x28

    new-array v4, v8, [I

    .line 213
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    .line 214
    :cond_3c
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_3d
    add-int/lit8 v2, p2, 0x2

    .line 215
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 216
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 217
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 218
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x8

    .line 219
    aget-byte v1, v1, v6

    const/4 v6, 0x0

    .line 220
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    packed-switch v3, :pswitch_data_0

    const-string v6, "\u4e0d\u80fd\u5f15\u5bfc"

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_17

    :pswitch_0
    const-string v3, "\u53ee\u549a"

    .line 221
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_1
    const-string v3, "\u549a\u549a\u549a"

    .line 222
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_2
    const-string v3, "\u549a  \u549a   \u549a"

    .line 223
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_3
    const-string v3, "\u549a        \u549a         \u549a"

    .line 224
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_4
    const-string v3, "\u8bf7\u65cb\u8f6c\u65b9\u5411\u76d8\uff0c\u76f4\u5230\u7ebf\u6846\u53d8\u7eff\u4e3a\u6b62\uff0c\u4fdd\u6301\u65b9\u5411\u76d8\u65b9\u5411\u524d\u8fdb\u8fdb\u5165\u7eff\u8272\u7ebf\u6846"

    .line 225
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_5
    const-string v3, "\u53cd\u5411\u65cb\u8f6c\u65b9\u5411\u76d8"

    .line 226
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_6
    const-string v3, "\u8bf7\u6302\u524d\u8fdb\u6321"

    .line 227
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_7
    const-string v3, "\u8bf7\u6302\u5012\u8f66\u6863"

    .line 228
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_8
    const-string v3, "\u8fdb\u5165\u7ebf\u6846\u540e\u8bf7\u6302\u524d\u8fdb\u6321"

    .line 229
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_9
    const-string v3, "\u8bf7\u9009\u62e9\u7eff\u8272\u9884\u5907\u7ebf\u6846\u6216\u4f7f\u7528\u65b9\u5411\u952e\u65cb\u8f6c\u952e\u8c03\u8282\u84dd\u8272\u7ebf\u6846\u5230\u9884\u5b9a\u505c\u8f66\u4f4d\u7f6e"

    .line 230
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_a
    const-string v3, "\u8bf7\u5c06\u8f66\u8f86\u6446\u76f4\u540e\u505c\u8f66"

    .line 231
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_b
    const-string v3, "\u8bf7\u4fdd\u6301\u65b9\u5411\u76d8\u65b9\u5411\u5012\u8f66"

    .line 232
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_c
    const-string v3, "\u8bf7\u5411\u5de6\u8f6c\u65b9\u5411\u76d8\u76f4\u81f3\u9884\u5b9a\u505c\u8f66\u4f4d\u76f8\u5408\u4e3a\u6b62"

    .line 233
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_d
    const-string v3, "\u8bf7\u5411\u53f3\u8f6c\u65b9\u5411\u76d8\u76f4\u81f3\u9884\u5b9a\u505c\u8f66\u4f4d\u76f8\u5408\u4e3a\u6b62"

    .line 234
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_e
    const-string v3, "\u8bf7\u5fae\u8c03\u65b9\u5411\u76d8\u4f7f\u84dd\u8272\u7ebf\u4e0e\u9884\u5b9a\u505c\u8f66\u4f4d\u76f8\u5408\uff0c\u5e76\u968f\u4e4b\u5012\u8f66\u8fdb\u5165\u6a59\u8272\u7ebf\u6846"

    .line 235
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    .line 236
    :pswitch_f
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    .line 237
    :pswitch_10
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u8f66\u8f86\u5df2\u5230\u7ebf\u6846\u524d\u4f46\u5411\u540e\u79fb\u52a8\u4e86"

    .line 238
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 239
    :pswitch_11
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u8f66\u8f86\u901f\u5ea6\u8fc7\u5feb"

    .line 240
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 241
    :pswitch_12
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u8ddd\u79bb\u76ee\u6807\u7ebf\u6846\u8fc7\u8fdc"

    .line 242
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 243
    :pswitch_13
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u7ebf\u6846\u91cd\u5408\u524d\u8f66\u8f86\u5df2\u7ecf\u79fb\u52a8"

    .line 244
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 245
    :pswitch_14
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u8f66\u8f86\u79fb\u52a8\u8d85\u8fc7\u7ebf\u6846\u8303\u56f4"

    .line 246
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 247
    :pswitch_15
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u65b9\u5411\u76d8\u52a8\u4f5c\u8fc7\u5927"

    .line 248
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 249
    :pswitch_16
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u7ea2\u8272\u7ebf\u6846\u72b6\u6001\u4e0b\u8f66\u8f86\u5df2\u7ecf\u79fb\u52a8"

    .line 250
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 251
    :pswitch_17
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u56e0\u8f66\u8f86\u5411\u540e\u79fb\u52a8\u4e86"

    .line 252
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 253
    :pswitch_18
    iput-object v6, v0, Lk0/nk;->j:Ljava/lang/String;

    const-string v3, "\u56e0\u8f66\u8f86\u5411\u524d\u79fb\u52a8\u4e86"

    .line 254
    invoke-static {v3}, Lk0/nk;->d3(Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_19
    const-string v3, "\u8bf7\u4fdd\u6301\u65b9\u5411\u76d8\u65b9\u5411\uff0c\u524d\u8fdb\u8fdb\u5165\u9ec4\u8272\u7ebf\u6846"

    .line 255
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_1a
    const-string v3, "\u8bf7\u4fdd\u6301\u65b9\u5411\u76d8\u65b9\u5411\uff0c\u5012\u8f66\u9000\u5165\u7eff\u8272\u7ebf\u6846"

    .line 256
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_1b
    const-string v3, "\u8bf7\u786e\u8ba4\u7ebf\u6846\u53d8\u7eff\u540e\uff0c\u5305\u8f66\u65b9\u5411\u76d8\u524d\u8fdb\u8fdb\u5165\u7eff\u8272\u7ebf\u6846"

    .line 257
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_1c
    const-string v3, "\u8bf7\u5411\u5de6\u8f6c\u65b9\u5411\u76d8\uff0c\u76f4\u81f3\u6a59\u8272\u7ebf\u4e0e\u7eff\u8272\u7ebf\u91cd\u5408\u4e3a\u6b62"

    .line 258
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_1d
    const-string v3, "\u8bf7\u5411\u53f3\u8f6c\u65b9\u5411\u76d8\uff0c\u76f4\u81f3\u6a59\u8272\u7ebf\u4e0e\u7eff\u8272\u7ebf\u91cd\u5408\u4e3a\u6b62"

    .line 259
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_1e
    const-string v3, "\u8bf7\u4fdd\u6301\u65b9\u5411\u76d8\u65b9\u5411\uff0c\u8fdb\u5165\u7eff\u8272\u7ebf\u6846"

    .line 260
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_1f
    const-string v3, "\u8bf7\u5411\u5de6\u8f6c\u65b9\u5411\u76d8\u76f4\u5230\u6846\u7ebf\u989c\u8272\u53d8\u7eff\u4e3a\u6b62"

    .line 261
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_20
    const-string v3, "\u8bf7\u5411\u53f3\u8f6c\u65b9\u5411\u76d8\u76f4\u5230\u6846\u7ebf\u989c\u8272\u53d8\u7eff\u4e3a\u6b62"

    .line 262
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_21
    const-string v3, "\u8bf7\u5de6\u8f6c\u65b9\u5411\u76d8\u56de\u5230\u76f4\u884c\u65b9\u5411"

    .line 263
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_22
    const-string v3, "\u8bf7\u53f3\u8f6c\u65b9\u5411\u76d8\u56de\u5230\u76f4\u884c\u65b9\u5411"

    .line 264
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_23
    const-string v3, "\u8bf7\u4fdd\u6301\u65b9\u5411\u76d8\u65b9\u5411\uff0c\u5012\u8f66\u9000\u5165\u84dd\u8272\u7ebf\u6846"

    .line 265
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_24
    const-string v3, "\u8bf7\u786e\u8ba4\u7ebf\u6846\u53d8\u84dd\u540e\uff0c\u4fdd\u5b58\u65b9\u5411\u76d8\u524d\u8fdb\u8fdb\u5165\u84dd\u8272\u7ebf\u6846"

    .line 266
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_25
    const-string v3, "\u8bf7\u5411\u5de6\u8f6c\u65b9\u5411\u76d8\uff0c\u76f4\u81f3\u6a59\u8272\u7ebf\u4e0e\u84dd\u8272\u7ebf\u91cd\u5408\u4e3a\u6b62"

    .line 267
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_26
    const-string v3, "\u8bf7\u5411\u53f3\u8f6c\u65b9\u5411\u76d8\uff0c\u76f4\u81f3\u6a59\u8272\u7ebf\u4e0e\u84dd\u8272\u7ebf\u91cd\u5408\u4e3a\u6b62"

    .line 268
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_27
    const-string v3, "\u8bf7\u786e\u8ba4\u7ea2\u8272\u7ebf\u6ca1\u6709\u4e0e\u969c\u788d\u7269\u91cd\u53e0\u540e\uff0c\u6309\u4e0b\u5f00\u59cb\u952e"

    .line 269
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_28
    const-string v3, "\u8bf7\u4f7f\u7528\u65b9\u5411\u952e\u548c\u65cb\u8f6c\u952e\uff0c\u8c03\u8282\u84dd\u8272\u7ebf\u6846\u5230\u9884\u5b9a\u505c\u8f66\u4f4d"

    .line 270
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto/16 :goto_17

    :pswitch_29
    const-string v3, "\u8bf7\u4fdd\u6301\u65b9\u5411\u76d8\u65b9\u5411\uff0c\u524d\u8fdb\u8fdb\u5165\u84dd\u8272\u7ebf\u6846"

    .line 271
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_2a
    const-string v3, "\u8bf7\u5de6\u8f6c\u65b9\u5411\u76d8\uff0c\u76f4\u5230\u7ebf\u6846\u5ef6\u65f6\u53d8\u84dd\u4e3a\u6b62"

    .line 272
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_2b
    const-string v3, "\u8bf7\u53f3\u8f6c\u65b9\u5411\u76d8\uff0c\u76f4\u5230\u7ebf\u6846\u5ef6\u65f6\u53d8\u84dd\u4e3a\u6b62"

    .line 273
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_2c
    const-string v3, "\u8bf7\u76f4\u63a5\u786e\u8ba4\u8f66\u8f86\u5468\u56f4\u7684\u5b89\u5168"

    .line 274
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_2d
    const-string v3, "\u5012\u8f66\u9000\u5165\u7eff\u8272\u7ebf\u6846\u540e\uff0c\u8bf7\u53cd\u5411\u65cb\u8f6c\u65b9\u5411\u76d8"

    .line 275
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_2e
    const-string v3, "\u5012\u8f66\u9000\u5165\u7eff\u8272\u7ebf\u6846"

    .line 276
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_2f
    const-string v3, "\u8bf7\u65cb\u8f6c\u65b9\u5411\u76d8\u76f4\u81f3\u6a59\u8272\u7ebf\u4e0e\u7eff\u8272\u7ebf\u91cd\u5408\u4e3a\u6b62"

    .line 277
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_30
    const-string v3, "\u5f00\u59cb\u7eb5\u5411\u505c\u8f66\u5f15\u5bfc\uff0c\u8bf7\u76f4\u63a5\u786e\u8ba4\u8f66\u8f86\u5468\u56f4\u7684\u5b89\u5168"

    .line 278
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_31
    const-string v3, "\u7ed3\u675f\u5f15\u5bfc"

    .line 279
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_32
    const-string v3, "\u5012\u8f66\u9000\u5165\u9884\u5b9a\u505c\u8f66\u4f4d"

    .line 280
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_33
    const-string v3, "\u8bf7\u9009\u62e9\u65b9\u5411\u76d8\u5230\u76f4\u884c\u65b9\u5411\u4e3a\u6b62"

    .line 281
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_34
    const-string v3, "\u5012\u8f66\u9000\u5165\u84dd\u8272\u7ebf\u6846"

    .line 282
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_35
    const-string v3, "\u8bf7\u65cb\u8f6c\u65b9\u5411\u76d8\u76f4\u81f3\u6a59\u8272\u7ebf\u4e0e\u84dd\u8272\u7ebf\u91cd\u5408\u4e3a\u6b62"

    .line 283
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_36
    const-string v3, "\u8fdb\u5165\u7ebf\u6846\u540e\u8bf7\u6302\u5012\u8f66\u6863"

    .line 284
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_37
    const-string v3, "\u8bf7\u9009\u62e9\u65b9\u5411\u76d8\u76f4\u5230\u7ebf\u6846\u989c\u8272\u53d8\u7eff\u4e3a\u6b62"

    .line 285
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_38
    const-string v3, "\u5f00\u59cb\u8fdb\u5e93\u5f15\u5bfc\uff0c\u8bf7\u76f4\u63a5\u786e\u8ba4\u8f66\u8f86\u5468\u56f4\u7684\u5b89\u5168"

    .line 286
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_39
    const-string v3, "\u8bf7\u6309\u5f00\u59cb\u952e\u542f\u52a8\u5f15\u64ce"

    .line 287
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_3a
    const-string v3, "\u8bf7\u4f7f\u7528\u65b9\u5411\u952e\u548c\u65cb\u8f6c\u952e\u8c03\u8282\u84dd\u8272\u7ebf\u6846\u5230\u9884\u5b9a\u505c\u8f66\u4f4d\uff0c\u8bf7\u786e\u5b9a\u7ea2\u8272\u7ebf\u6ca1\u6709\u4e0e\u969c\u788d\u7269\u91cd\u53e0\u540e\u6309\u51b3\u5b9a\u952e"

    .line 288
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    goto :goto_17

    :pswitch_3b
    const-string v3, "\u8bf7\u5728\u9884\u5b9a\u505c\u8f66\u4f4d\u65c1\u8fb9\u6a2a\u5411\u6682\u65f6\u505c\u8f66\uff0c\u9009\u62e9\u505c\u8f66\u65b9\u6cd5"

    .line 289
    iput-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    .line 290
    :goto_17
    iget-object v3, v0, Lk0/nk;->j:Ljava/lang/String;

    if-eqz v3, :cond_3e

    iget-object v6, v0, Lk0/nk;->h:Ljava/lang/String;

    if-eq v6, v3, :cond_3e

    .line 291
    invoke-virtual {v0, v3}, Lk0/nk;->i3(Ljava/lang/String;)V

    :cond_3e
    const/16 v3, 0x8d

    new-array v6, v8, [I

    const/16 v10, 0xff

    and-int/2addr v2, v10

    aput v2, v6, v7

    .line 292
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    and-int/2addr v5, v9

    aput v5, v3, v7

    .line 293
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    and-int/2addr v4, v10

    aput v4, v3, v7

    .line 294
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    and-int/2addr v1, v10

    aput v1, v3, v7

    .line 295
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_3f
    const/16 v2, 0x9b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 296
    aget-byte v9, v1, v4

    shr-int/2addr v9, v6

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    .line 297
    aget-byte v9, v1, v4

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 298
    iget v2, v0, Lk0/nk;->k:I

    aget-byte v3, v1, v4

    shr-int/2addr v3, v10

    and-int/2addr v3, v6

    if-eq v2, v3, :cond_42

    .line 299
    aget-byte v2, v1, v4

    shr-int/2addr v2, v10

    and-int/2addr v2, v6

    iput v2, v0, Lk0/nk;->k:I

    if-ne v2, v5, :cond_41

    .line 300
    sget v2, Lu0/b;->D:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_40

    const/16 v3, 0xb

    if-ne v2, v3, :cond_42

    .line 301
    :cond_40
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    .line 302
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    .line 303
    sget-object v2, Lu0/b;->c:Lu0/h;

    invoke-interface {v2, v7}, Lu0/h;->c(I)V

    goto :goto_18

    :cond_41
    if-ne v2, v12, :cond_42

    .line 304
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 305
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    .line 306
    :cond_42
    :goto_18
    iget v2, v0, Lk0/nk;->k:I

    if-eq v2, v8, :cond_44

    const/4 v3, 0x4

    if-ne v2, v3, :cond_43

    goto :goto_19

    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_46

    const/16 v2, 0x9e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 307
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 308
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 309
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_44
    :goto_19
    const/16 v2, 0x9d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 310
    aget-byte v4, v1, v4

    shl-int/2addr v4, v14

    const v5, 0xff00

    and-int/2addr v4, v5

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :cond_45
    const/16 v2, 0x91

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 311
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 312
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 313
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 314
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 315
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 316
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 317
    aget-byte v9, v1, v4

    const/4 v10, 0x4

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    .line 318
    aget-byte v9, v1, v4

    shr-int/lit8 v5, v9, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    .line 319
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 320
    aget-byte v1, v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_46
    :goto_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/nk;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lk0/nk;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/nk;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xc5

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
    .locals 7

    const/16 p3, 0x3eb

    const/4 p4, 0x5

    if-eq p1, p3, :cond_0

    const/4 p3, 0x6

    const/4 v0, 0x7

    const/16 v1, 0xe3

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, p4, [I

    aput v1, p1, v5

    aput v6, p1, v4

    const/16 p3, 0x9a

    aput p3, p1, v6

    .line 1
    aget p3, p2, v5

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v0, [I

    aput v1, p1, v5

    aput v2, p1, v4

    const/16 v0, 0x6e

    aput v0, p1, v6

    .line 2
    aget v0, p2, v5

    aput v0, p1, v3

    aget v0, p2, v4

    aput v0, p1, v2

    aget v0, p2, v6

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, p4, [I

    aput v1, p1, v5

    aput v6, p1, v4

    const/16 p3, 0xad

    aput p3, p1, v6

    .line 3
    aget p3, p2, v5

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, p4, [I

    aput v1, p1, v5

    aput v6, p1, v4

    const/16 p3, 0x2a

    aput p3, p1, v6

    .line 4
    aget p3, p2, v5

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-static {p2, v6}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, p4, [I

    aput v1, p1, v5

    aput v6, p1, v4

    const/16 p3, 0x3b

    aput p3, p1, v6

    .line 6
    aget p3, p2, v5

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p1, v0, [I

    aput v1, p1, v5

    aput v2, p1, v4

    const/16 v0, 0x6f

    aput v0, p1, v6

    .line 7
    aget v0, p2, v5

    aput v0, p1, v3

    aget v0, p2, v4

    aput v0, p1, v2

    aget v0, p2, v6

    aput v0, p1, p4

    aget p2, p2, v3

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p1, p4, [I

    aput v1, p1, v5

    aput v6, p1, v4

    const/16 p3, 0xfd

    aput p3, p1, v6

    .line 8
    aget p3, p2, v5

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :pswitch_7
    invoke-static {p2, v6}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, p4, [I

    aput v1, p1, v5

    aput v6, p1, v4

    const/16 p3, 0x3d

    aput p3, p1, v6

    .line 10
    aget p3, p2, v5

    aput p3, p1, v3

    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 11
    array-length p1, p2

    if-lez p1, :cond_1

    new-array p1, p4, [I

    .line 12
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    const-wide/16 p1, 0x64

    .line 13
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, p4, [I

    .line 14
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x0
    .end array-data
.end method

.method public final i3(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lk0/nk;->h:Ljava/lang/String;

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object v0, p0, Lk0/nk;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object v0, p0, Lk0/nk;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public j3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k3()V
    .locals 3

    const-string v0, "com.syu.carinfo.wc.infeinidi.WcInfeinidiCarSet"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk0/nk;->j3()Ljava/lang/String;

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

.method public final l3()V
    .locals 3

    const-string v0, "com.syu.carinfo.wc.infeinidi.WcInfinitCarInfo"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk0/nk;->j3()Ljava/lang/String;

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

.method public final m3()V
    .locals 3

    const-string v0, "com.syu.carinfo.wc.infeinidi.WcInfinitCarTire"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lk0/nk;->j3()Ljava/lang/String;

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

.method public n3()V
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
