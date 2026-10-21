.class public Lk0/qa;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:Z

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Lo1/g0;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/qa;->c:I

    const/16 v2, 0x2a

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 3
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

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v14, 0xb

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v15, 0xc

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v16, 0xd

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v17, 0xe

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v18, 0xf

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v19, 0x10

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v20, 0x11

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v21, 0x12

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v22, 0x13

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v23, 0x14

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v24, 0x15

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    const/16 v25, 0x16

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    const/16 v25, 0x17

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    const/16 v25, 0x18

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    const/16 v25, 0x19

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    const/16 v25, 0x1a

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    const/16 v25, 0x1b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    const/16 v25, 0x1c

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    const/16 v25, 0x1d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    const/16 v25, 0x1e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    const/16 v25, 0x1f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    const/16 v25, 0x20

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    const/16 v25, 0x21

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    const/16 v25, 0x22

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_23

    const/16 v25, 0x23

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_24

    const/16 v25, 0x24

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_25

    const/16 v25, 0x25

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_26

    const/16 v25, 0x26

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_27

    const/16 v25, 0x27

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_28

    const/16 v25, 0x28

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_29

    const/16 v25, 0x29

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/qa;->d:[[I

    const/16 v2, 0x1f

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_2a

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_3b

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_3d

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_3e

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_3f

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_40

    const/16 v8, 0x16

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_41

    const/16 v8, 0x17

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_42

    const/16 v8, 0x18

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_43

    const/16 v8, 0x19

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_44

    const/16 v8, 0x1a

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_45

    const/16 v8, 0x1b

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_46

    const/16 v8, 0x1c

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_47

    const/16 v8, 0x1d

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_48

    const/16 v8, 0x1e

    aput-object v4, v2, v8

    iput-object v2, v0, Lk0/qa;->e:[[I

    .line 5
    iput-boolean v1, v0, Lk0/qa;->f:Z

    .line 6
    new-instance v2, Lk0/qa$a;

    invoke-direct {v2, v0}, Lk0/qa$a;-><init>(Lk0/qa;)V

    iput-object v2, v0, Lk0/qa;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v2, Lk0/qa$b;

    invoke-direct {v2, v0}, Lk0/qa$b;-><init>(Lk0/qa;)V

    iput-object v2, v0, Lk0/qa;->h:Ljava/lang/Runnable;

    .line 8
    iput v1, v0, Lk0/qa;->i:I

    .line 9
    new-instance v1, Lk0/qa$c;

    invoke-direct {v1, v0}, Lk0/qa$c;-><init>(Lk0/qa;)V

    iput-object v1, v0, Lk0/qa;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/qa$d;

    invoke-direct {v1, v0}, Lk0/qa$d;-><init>(Lk0/qa;)V

    iput-object v1, v0, Lk0/qa;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/qa$e;

    invoke-direct {v1, v0}, Lk0/qa$e;-><init>(Lk0/qa;)V

    iput-object v1, v0, Lk0/qa;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    invoke-direct {v1, v2, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/qa;->m:Lo1/g0;

    .line 13
    iput v5, v0, Lk0/qa;->n:I

    .line 14
    iput v3, v0, Lk0/qa;->o:I

    .line 15
    iput v6, v0, Lk0/qa;->p:I

    .line 16
    iput v7, v0, Lk0/qa;->q:I

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
        0x12
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x1a
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_b
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x80
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x81
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x82
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x83
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x84
        0x19
    .end array-data

    :array_11
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x86
        0x4a
    .end array-data

    :array_13
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_14
    .array-data 4
        0x88
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x89
        0x4b
    .end array-data

    :array_16
    .array-data 4
        0x8a
        0x36
    .end array-data

    :array_17
    .array-data 4
        0x8b
        0x12
    .end array-data

    :array_18
    .array-data 4
        0x8c
        0x37
    .end array-data

    :array_19
    .array-data 4
        0x8d
        0x26
    .end array-data

    :array_1a
    .array-data 4
        0x8e
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x8f
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x90
        0x36
    .end array-data

    :array_1d
    .array-data 4
        0x91
        0x5
    .end array-data

    :array_1e
    .array-data 4
        0x92
        0x1b
    .end array-data

    :array_1f
    .array-data 4
        0x93
        0x1c
    .end array-data

    :array_20
    .array-data 4
        0x94
        0x20
    .end array-data

    :array_21
    .array-data 4
        0x95
        0x21
    .end array-data

    :array_22
    .array-data 4
        0x96
        0x1d
    .end array-data

    :array_23
    .array-data 4
        0x97
        0xc
    .end array-data

    :array_24
    .array-data 4
        0x98
        0x26
    .end array-data

    :array_25
    .array-data 4
        0x99
        0x10
    .end array-data

    :array_26
    .array-data 4
        0xf1
        0x20
    .end array-data

    :array_27
    .array-data 4
        0xf2
        0x21
    .end array-data

    :array_28
    .array-data 4
        0xf3
        0x20
    .end array-data

    :array_29
    .array-data 4
        0xf4
        0x21
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2b
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2c
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_2e
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_2f
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_30
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_31
    .array-data 4
        0x10
        0x9
    .end array-data

    :array_32
    .array-data 4
        0x11
        0x6
    .end array-data

    :array_33
    .array-data 4
        0x12
        0x36
    .end array-data

    :array_34
    .array-data 4
        0x13
        0x19
    .end array-data

    :array_35
    .array-data 4
        0x14
        0x3
    .end array-data

    :array_36
    .array-data 4
        0x15
        0x4
    .end array-data

    :array_37
    .array-data 4
        0x16
        0x4a
    .end array-data

    :array_38
    .array-data 4
        0x17
        0x19
    .end array-data

    :array_39
    .array-data 4
        0x18
        0x4b
    .end array-data

    :array_3a
    .array-data 4
        0x19
        0x36
    .end array-data

    :array_3b
    .array-data 4
        0x1a
        0x12
    .end array-data

    :array_3c
    .array-data 4
        0x1b
        0x37
    .end array-data

    :array_3d
    .array-data 4
        0x1c
        0x26
    .end array-data

    :array_3e
    .array-data 4
        0x1d
        0x22
    .end array-data

    :array_3f
    .array-data 4
        0x1e
        0x23
    .end array-data

    :array_40
    .array-data 4
        0x1f
        0x20
    .end array-data

    :array_41
    .array-data 4
        0x20
        0x21
    .end array-data

    :array_42
    .array-data 4
        0x21
        0x1d
    .end array-data

    :array_43
    .array-data 4
        0x22
        0x1e
    .end array-data

    :array_44
    .array-data 4
        0x23
        0x1f
    .end array-data

    :array_45
    .array-data 4
        0x24
        -0x1
    .end array-data

    :array_46
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_47
    .array-data 4
        0x26
        0x10
    .end array-data

    :array_48
    .array-data 4
        0x32
        0x1
    .end array-data
.end method

.method public static a3()V
    .locals 12

    const/16 v0, 0x25

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x9a

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x22

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 1
    sget v1, Lu0/b;->D:I

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v8, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v9, 0xa

    if-eq v1, v9, :cond_0

    goto :goto_3

    :cond_0
    aput v5, v0, v8

    aput v2, v0, v5

    .line 2
    sget v1, Lu0/b;->r3:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v0, v7

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v6

    .line 3
    sget v1, Lu0/b;->s3:I

    and-int/lit16 v2, v1, 0xff

    aput v2, v0, v4

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v3

    goto :goto_3

    :cond_1
    aput v7, v0, v8

    goto :goto_3

    .line 4
    :cond_2
    sget v1, Lw0/d;->j:I

    .line 5
    sget v9, Lw0/d;->h:I

    const/high16 v10, 0x10000

    if-eq v9, v10, :cond_4

    const v11, 0x10001

    if-eq v9, v11, :cond_4

    const v11, 0x10002

    if-ne v9, v11, :cond_3

    goto :goto_0

    :cond_3
    aput v3, v0, v8

    goto :goto_1

    :cond_4
    :goto_0
    aput v2, v0, v8

    if-lt v1, v10, :cond_5

    sub-int/2addr v1, v10

    :cond_5
    :goto_1
    aput v2, v0, v5

    .line 6
    rem-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    aput v6, v0, v7

    goto :goto_2

    :cond_6
    aput v2, v0, v7

    .line 7
    :goto_2
    sget v1, Lw0/d;->i:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    .line 8
    :goto_3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public static synthetic b3(Lk0/qa;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/qa;->m:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/qa;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/qa;->d3(IIII)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p1

    if-eqz v0, :cond_3d

    .line 1
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget v3, v0, v1

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v4

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Air codeCmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "      value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget v8, v0, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    sget v4, Lk0/nt;->a:I

    const/4 v5, -0x1

    const/16 v6, 0x44

    const/16 v8, 0x2a

    const/16 v9, 0x29

    const/16 v11, 0x41

    const/4 v12, 0x3

    const/16 v14, 0xc

    const/16 v15, 0x10

    const/16 v1, 0xd

    const/16 v10, 0xb

    const/4 v13, 0x5

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    if-eq v3, v9, :cond_1a

    if-eq v3, v8, :cond_18

    if-eq v3, v6, :cond_8

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    aget v0, v0, v7

    if-ne v0, v5, :cond_1

    new-array v0, v13, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1
    new-array v0, v13, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    aget v1, v0, v7

    if-ne v1, v7, :cond_2

    .line 9
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 10
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 11
    :cond_2
    aget v0, v0, v7

    if-nez v0, :cond_3d

    .line 12
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-ne v0, v7, :cond_3d

    new-array v0, v13, [I

    .line 13
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 14
    :pswitch_2
    aget v0, v0, v7

    if-eqz v0, :cond_3

    .line 15
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v15

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 16
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 17
    :cond_3
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v15

    if-ne v0, v7, :cond_3d

    new-array v0, v13, [I

    .line 18
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 19
    :pswitch_3
    aget v0, v0, v7

    if-eqz v0, :cond_4

    .line 20
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v11

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 21
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 22
    :cond_4
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v11

    if-ne v0, v7, :cond_3d

    new-array v0, v13, [I

    .line 23
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 24
    :pswitch_4
    aget v0, v0, v7

    if-eqz v0, :cond_5

    .line 25
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 26
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 27
    :cond_5
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-ne v0, v7, :cond_3d

    new-array v0, v13, [I

    .line 28
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 29
    :pswitch_5
    aget v0, v0, v7

    if-eqz v0, :cond_6

    .line 30
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v10

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 31
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 32
    :cond_6
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v10

    if-ne v0, v7, :cond_3d

    new-array v0, v13, [I

    .line 33
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 34
    :pswitch_6
    aget v0, v0, v7

    const/16 v1, 0x15

    if-eqz v0, :cond_7

    .line 35
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 36
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 37
    :cond_7
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-eqz v0, :cond_3d

    new-array v0, v13, [I

    .line 38
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 39
    :cond_8
    aget v3, v0, v7

    if-ne v3, v7, :cond_9

    new-array v0, v13, [I

    .line 40
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 41
    :cond_9
    aget v3, v0, v7

    if-ne v3, v2, :cond_a

    new-array v0, v13, [I

    .line 42
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 43
    :cond_a
    aget v2, v0, v7

    if-ne v2, v12, :cond_b

    new-array v0, v13, [I

    .line 44
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 45
    :cond_b
    aget v2, v0, v7

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    new-array v0, v13, [I

    .line 46
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 47
    :cond_c
    aget v2, v0, v7

    if-ne v2, v13, :cond_d

    new-array v0, v13, [I

    .line 48
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 49
    :cond_d
    aget v2, v0, v7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    new-array v0, v13, [I

    .line 50
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 51
    :cond_e
    aget v2, v0, v7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_f

    new-array v0, v13, [I

    .line 52
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 53
    :cond_f
    aget v2, v0, v7

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    new-array v0, v13, [I

    .line 54
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 55
    :cond_10
    aget v2, v0, v7

    const/16 v3, 0x9

    if-ne v2, v3, :cond_11

    new-array v0, v13, [I

    .line 56
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 57
    :cond_11
    aget v2, v0, v7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_12

    new-array v0, v13, [I

    .line 58
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 59
    :cond_12
    aget v2, v0, v7

    if-ne v2, v10, :cond_13

    new-array v0, v13, [I

    .line 60
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 61
    :cond_13
    aget v2, v0, v7

    if-ne v2, v14, :cond_14

    new-array v0, v13, [I

    .line 62
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 63
    :cond_14
    aget v2, v0, v7

    if-ne v2, v1, :cond_15

    new-array v0, v13, [I

    .line 64
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 65
    :cond_15
    aget v1, v0, v7

    const/16 v2, 0xe

    if-ne v1, v2, :cond_16

    new-array v0, v13, [I

    .line 66
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 67
    :cond_16
    aget v1, v0, v7

    const/16 v2, 0xf

    if-ne v1, v2, :cond_17

    new-array v0, v13, [I

    .line 68
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 69
    :cond_17
    aget v0, v0, v7

    if-ne v0, v15, :cond_3d

    new-array v0, v13, [I

    .line 70
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 71
    :cond_18
    aget v0, v0, v7

    if-eqz v0, :cond_19

    new-array v0, v13, [I

    .line 72
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_19
    new-array v0, v13, [I

    .line 73
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 74
    :cond_1a
    aget v0, v0, v7

    if-eqz v0, :cond_1b

    new-array v0, v13, [I

    .line 75
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1b
    new-array v0, v13, [I

    .line 76
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :goto_0
    if-eq v3, v9, :cond_3b

    if-eq v3, v8, :cond_39

    const/16 v4, 0x38

    if-eq v3, v4, :cond_36

    const/16 v4, 0x43

    if-eq v3, v4, :cond_2f

    if-eq v3, v6, :cond_23

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 77
    :pswitch_7
    aget v0, v0, v7

    if-ne v0, v5, :cond_1c

    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 78
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1c
    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 79
    fill-array-data v0, :array_23

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_8
    const/4 v1, 0x6

    .line 80
    aget v2, v0, v7

    if-ne v2, v7, :cond_1d

    .line 81
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-nez v0, :cond_3d

    new-array v0, v1, [I

    .line 82
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 83
    :cond_1d
    aget v0, v0, v7

    if-nez v0, :cond_3d

    .line 84
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-ne v0, v7, :cond_3d

    new-array v0, v1, [I

    .line 85
    fill-array-data v0, :array_25

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_9
    const/4 v1, 0x6

    .line 86
    aget v0, v0, v7

    if-eqz v0, :cond_1e

    .line 87
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v15

    if-nez v0, :cond_3d

    new-array v0, v1, [I

    .line 88
    fill-array-data v0, :array_26

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 89
    :cond_1e
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v15

    if-ne v0, v7, :cond_3d

    new-array v0, v1, [I

    .line 90
    fill-array-data v0, :array_27

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_a
    const/4 v1, 0x6

    .line 91
    aget v0, v0, v7

    if-eqz v0, :cond_1f

    .line 92
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v11

    if-nez v0, :cond_3d

    new-array v0, v1, [I

    .line 93
    fill-array-data v0, :array_28

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 94
    :cond_1f
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v11

    if-ne v0, v7, :cond_3d

    new-array v0, v1, [I

    .line 95
    fill-array-data v0, :array_29

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 96
    :pswitch_b
    aget v0, v0, v7

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_20

    .line 97
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-nez v0, :cond_3d

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 98
    fill-array-data v1, :array_2a

    invoke-static {v1}, Lz/k;->s([I)V

    .line 99
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v0, v0, [I

    .line 100
    fill-array-data v0, :array_2b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_20
    const/16 v0, 0x9

    .line 101
    sget-object v4, Lk0/nt;->g:[I

    aget v1, v4, v1

    if-ne v1, v7, :cond_3d

    new-array v1, v0, [I

    .line 102
    fill-array-data v1, :array_2c

    invoke-static {v1}, Lz/k;->s([I)V

    .line 103
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v0, v0, [I

    .line 104
    fill-array-data v0, :array_2d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 105
    :pswitch_c
    aget v0, v0, v7

    if-eqz v0, :cond_21

    .line 106
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v10

    if-nez v0, :cond_3d

    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 107
    fill-array-data v0, :array_2e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_21
    const/4 v1, 0x6

    .line 108
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v10

    if-ne v0, v7, :cond_3d

    new-array v0, v1, [I

    .line 109
    fill-array-data v0, :array_2f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_d
    const/4 v1, 0x6

    .line 110
    aget v0, v0, v7

    if-eqz v0, :cond_22

    .line 111
    sget-object v0, Lk0/nt;->g:[I

    const/16 v2, 0xa

    aget v0, v0, v2

    if-nez v0, :cond_3d

    new-array v0, v1, [I

    .line 112
    fill-array-data v0, :array_30

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_22
    const/16 v2, 0xa

    .line 113
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v2

    if-ne v0, v7, :cond_3d

    new-array v0, v1, [I

    .line 114
    fill-array-data v0, :array_31

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 115
    :cond_23
    aget v1, v0, v7

    if-ne v1, v7, :cond_24

    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 116
    fill-array-data v0, :array_32

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_24
    const/4 v1, 0x7

    .line 117
    aget v3, v0, v7

    if-ne v3, v2, :cond_25

    new-array v0, v1, [I

    .line 118
    fill-array-data v0, :array_33

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 119
    :cond_25
    aget v2, v0, v7

    if-ne v2, v12, :cond_26

    new-array v0, v1, [I

    .line 120
    fill-array-data v0, :array_34

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 121
    :cond_26
    aget v2, v0, v7

    const/4 v3, 0x4

    if-ne v2, v3, :cond_27

    new-array v0, v1, [I

    .line 122
    fill-array-data v0, :array_35

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 123
    :cond_27
    aget v2, v0, v7

    if-ne v2, v13, :cond_28

    new-array v0, v1, [I

    .line 124
    fill-array-data v0, :array_36

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 125
    :cond_28
    aget v2, v0, v7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_29

    new-array v0, v1, [I

    .line 126
    fill-array-data v0, :array_37

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 127
    :cond_29
    aget v2, v0, v7

    if-ne v2, v1, :cond_2a

    new-array v0, v1, [I

    .line 128
    fill-array-data v0, :array_38

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 129
    :cond_2a
    aget v2, v0, v7

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2b

    new-array v0, v1, [I

    .line 130
    fill-array-data v0, :array_39

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 131
    :cond_2b
    aget v1, v0, v7

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 132
    fill-array-data v0, :array_3a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2c
    const/4 v1, 0x6

    .line 133
    aget v2, v0, v7

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2d

    new-array v0, v1, [I

    .line 134
    fill-array-data v0, :array_3b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 135
    :cond_2d
    aget v1, v0, v7

    if-ne v1, v10, :cond_2e

    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 136
    fill-array-data v0, :array_3c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2e
    const/4 v1, 0x7

    .line 137
    aget v0, v0, v7

    if-ne v0, v14, :cond_3d

    new-array v0, v1, [I

    .line 138
    fill-array-data v0, :array_3d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 139
    :cond_2f
    aget v0, v0, v7

    if-eqz v0, :cond_35

    if-eq v0, v7, :cond_34

    if-eq v0, v2, :cond_33

    if-eq v0, v12, :cond_32

    const/4 v1, 0x4

    if-eq v0, v1, :cond_31

    if-eq v0, v13, :cond_30

    goto/16 :goto_1

    :cond_30
    new-array v0, v1, [I

    .line 140
    fill-array-data v0, :array_3e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_31
    new-array v0, v1, [I

    .line 141
    fill-array-data v0, :array_3f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_32
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 142
    fill-array-data v0, :array_40

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_33
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 143
    fill-array-data v0, :array_41

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_34
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 144
    fill-array-data v0, :array_42

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_35
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 145
    fill-array-data v0, :array_43

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 146
    :cond_36
    aget v3, v0, v7

    const/16 v4, 0x11

    if-ge v3, v4, :cond_37

    new-array v0, v13, [I

    .line 147
    fill-array-data v0, :array_44

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 148
    :cond_37
    aget v3, v0, v7

    if-lt v3, v4, :cond_38

    aget v3, v0, v7

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_38

    .line 149
    aget v0, v0, v7

    sub-int/2addr v0, v15

    mul-int/2addr v0, v2

    new-array v3, v13, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, -0x79

    aput v4, v3, v7

    aput v2, v3, v2

    aput v1, v3, v12

    const/4 v1, 0x4

    aput v0, v3, v1

    .line 150
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_1

    .line 151
    :cond_38
    aget v0, v0, v7

    const/16 v1, 0x1f

    if-le v0, v1, :cond_3d

    new-array v0, v13, [I

    .line 152
    fill-array-data v0, :array_45

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 153
    :cond_39
    aget v0, v0, v7

    if-eqz v0, :cond_3a

    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 154
    fill-array-data v0, :array_46

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3a
    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 155
    fill-array-data v0, :array_47

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3b
    const/4 v1, 0x7

    .line 156
    aget v0, v0, v7

    if-eqz v0, :cond_3c

    new-array v0, v1, [I

    .line 157
    fill-array-data v0, :array_48

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3c
    new-array v0, v1, [I

    .line 158
    fill-array-data v0, :array_49

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_3d
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3013a -> :sswitch_0
        0x17013a -> :sswitch_0
        0x19013a -> :sswitch_0
        0x22013a -> :sswitch_0
        0x23013a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa5
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa5
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa7
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa7
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa3
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa3
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa9
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa9
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa4
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa0
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa8
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x51
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x51
        0x1
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x52
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x52
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x53
        0x0
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x53
        0x1
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x54
        0x0
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x54
        0x1
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x50
        0x0
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x50
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x55
        0x0
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x55
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x56
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x56
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x57
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x4d
        0x2
        0x57
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa1
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa1
        0x0
    .end array-data

    :array_20
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa1
        0x1
    .end array-data

    :array_21
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xa1
        0x0
    .end array-data

    :array_22
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x80
    .end array-data

    :array_23
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x81
    .end array-data

    :array_24
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x0
    .end array-data

    :array_25
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x1
    .end array-data

    :array_26
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x1
    .end array-data

    :array_27
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x0
    .end array-data

    :array_28
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x1
    .end array-data

    :array_29
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        -0x39
        0x6
        0x20
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0xe3
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2c
    .array-data 4
        0xe3
        -0x39
        0x6
        0x20
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 4
        0xe3
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x0
    .end array-data

    :array_30
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x1
    .end array-data

    :array_31
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x0
    .end array-data

    :array_32
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0x1
    .end array-data

    :array_33
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0xb
    .end array-data

    :array_34
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_35
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0xb
    .end array-data

    :array_36
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0x1
    .end array-data

    :array_37
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0xb
    .end array-data

    :array_38
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_39
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0xb
    .end array-data

    :array_3a
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x0
    .end array-data

    :array_3b
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0xb
    .end array-data

    :array_3e
    .array-data 4
        0xe3
        0x87
        0x1
        0x8
    .end array-data

    :array_3f
    .array-data 4
        0xe3
        0x87
        0x1
        0x7
    .end array-data

    :array_40
    .array-data 4
        0xe3
        0x87
        0x1
        0x6
    .end array-data

    :array_41
    .array-data 4
        0xe3
        0x87
        0x1
        0x5
    .end array-data

    :array_42
    .array-data 4
        0xe3
        0x87
        0x1
        0x0
    .end array-data

    :array_43
    .array-data 4
        0xe3
        0x87
        0x1
        0x1
    .end array-data

    :array_44
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x0
    .end array-data

    :array_45
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0xff
    .end array-data

    :array_46
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x80
    .end array-data

    :array_47
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x81
    .end array-data

    :array_48
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x80
    .end array-data

    :array_49
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x81
    .end array-data
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/qa;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

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
    iput v2, v0, Lk0/mt;->i:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    sget v2, Lk0/nt;->c:I

    const-string v3, "com.syu.canbus"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 10
    iput v1, v0, Lk0/mt;->g:I

    .line 11
    iget-object v0, p0, Lk0/qa;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 17
    :pswitch_2
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v1, v0, Lk0/mt;->g:I

    .line 19
    iget-object v0, p0, Lk0/qa;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 20
    :pswitch_3
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 21
    iput v1, v0, Lk0/mt;->g:I

    .line 22
    iput v1, v0, Lk0/mt;->i:I

    .line 23
    iget-object v0, p0, Lk0/qa;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 24
    :pswitch_4
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 25
    iput v1, v0, Lk0/mt;->g:I

    .line 26
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 27
    :pswitch_5
    iput v1, v0, Lk0/mt;->g:I

    .line 28
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 29
    :pswitch_6
    iput v1, v0, Lk0/mt;->g:I

    .line 30
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/qa;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
        0x44
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x21

    const/16 v4, 0xc

    const/16 v7, 0xb

    const/16 v12, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x5

    const/4 v11, 0x2

    const/4 v8, 0x4

    const/4 v13, 0x3

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_50

    const/16 v3, 0x40

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x42

    if-eq v2, v3, :cond_4e

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_49

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_48

    const/16 v3, 0x30

    if-eq v2, v3, :cond_45

    const/16 v3, 0x31

    if-eq v2, v3, :cond_44

    const/16 v3, 0x36

    if-eq v2, v3, :cond_43

    const/16 v3, 0x37

    if-eq v2, v3, :cond_41

    const/16 v3, 0xa

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1f

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v9, p2, 0x3

    .line 3
    aget-byte v1, v1, v9

    and-int/2addr v1, v5

    if-ne v2, v10, :cond_0

    const/16 v2, 0x63

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 4
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_0
    if-ne v2, v11, :cond_1

    const/16 v2, 0x64

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 5
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1
    if-ne v2, v13, :cond_2

    const/16 v2, 0x75

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 6
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_2
    if-ne v2, v8, :cond_3

    const/16 v2, 0x76

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 7
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_3
    if-ne v2, v15, :cond_4

    const/16 v2, 0x77

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 8
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_4
    if-ne v2, v14, :cond_5

    const/16 v2, 0x78

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_5
    if-ne v2, v12, :cond_6

    const/16 v2, 0x79

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_6
    const/16 v5, 0x9

    if-ne v2, v5, :cond_7

    const/16 v2, 0x7a

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_7
    if-ne v2, v3, :cond_8

    const/16 v2, 0x7b

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 12
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_8
    if-ne v2, v7, :cond_9

    const/16 v2, 0x8b

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_9
    if-ne v2, v4, :cond_a

    const/16 v2, 0x8c

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_a
    const/16 v3, 0xd

    if-ne v2, v3, :cond_b

    const/16 v2, 0x8d

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_b
    const/16 v3, 0xe

    if-ne v2, v3, :cond_c

    const/16 v2, 0x8e

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_c
    const/16 v3, 0xf

    if-ne v2, v3, :cond_d

    const/16 v2, 0x8f

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_d
    const/16 v3, 0x10

    if-ne v2, v3, :cond_e

    const/16 v2, 0x90

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_e
    const/16 v3, 0x11

    if-ne v2, v3, :cond_f

    const/16 v2, 0x91

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_f
    const/16 v3, 0x12

    if-ne v2, v3, :cond_10

    const/16 v2, 0x92

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_10
    const/16 v3, 0x13

    if-ne v2, v3, :cond_11

    const/16 v2, 0x93

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_11
    const/16 v3, 0x14

    if-ne v2, v3, :cond_12

    const/16 v2, 0x94

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 22
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_12
    const/16 v3, 0x20

    if-ne v2, v3, :cond_13

    const/16 v2, 0x95

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 23
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_13
    const/16 v3, 0x21

    if-ne v2, v3, :cond_14

    const/16 v2, 0x96

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 24
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_14
    const/16 v3, 0x22

    if-ne v2, v3, :cond_15

    const/16 v2, 0x97

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 25
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_15
    const/16 v3, 0x23

    if-ne v2, v3, :cond_16

    const/16 v2, 0x98

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 26
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_16
    const/16 v3, 0x24

    if-ne v2, v3, :cond_17

    const/16 v2, 0x99

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 27
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_17
    const/16 v3, 0x25

    if-ne v2, v3, :cond_18

    const/16 v2, 0x9a

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 28
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_18
    const/16 v3, 0x26

    if-ne v2, v3, :cond_19

    const/16 v2, 0x9b

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 29
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_19
    const/16 v3, 0x27

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x9c

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1a
    const/16 v3, 0x28

    if-ne v2, v3, :cond_1b

    const/16 v2, 0x9d

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 31
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1b
    const/16 v3, 0x29

    if-ne v2, v3, :cond_1c

    const/16 v2, 0x9e

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1c
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1d

    const/16 v2, 0x9f

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1d
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1e

    const/16 v2, 0xa0

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 34
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1e
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1f

    const/16 v2, 0xa1

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_1f
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_20

    const/16 v2, 0xa2

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_20
    const/16 v3, 0x2e

    if-ne v2, v3, :cond_21

    const/16 v2, 0xa3

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_21
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_22

    const/16 v2, 0xa4

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_22
    const/16 v3, 0x30

    if-ne v2, v3, :cond_23

    const/16 v2, 0xa5

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_23
    const/16 v3, 0x31

    if-ne v2, v3, :cond_24

    const/16 v2, 0xa6

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 40
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_24
    const/16 v3, 0x32

    if-ne v2, v3, :cond_25

    const/16 v2, 0xa7

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 41
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_25
    const/16 v3, 0x33

    if-ne v2, v3, :cond_26

    const/16 v2, 0xa8

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 42
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_26
    const/16 v3, 0x34

    if-ne v2, v3, :cond_27

    const/16 v2, 0xa9

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 43
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_27
    const/16 v3, 0x35

    if-ne v2, v3, :cond_28

    const/16 v2, 0xaa

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 44
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_28
    const/16 v3, 0x36

    if-ne v2, v3, :cond_29

    const/16 v2, 0xab

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 45
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_29
    const/16 v3, 0x37

    if-ne v2, v3, :cond_2a

    const/16 v2, 0xac

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_2a
    const/16 v3, 0x38

    if-ne v2, v3, :cond_2b

    const/16 v2, 0xad

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 47
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_2b
    const/16 v3, 0x39

    if-ne v2, v3, :cond_2c

    const/16 v2, 0xae

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 48
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_2c
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2d

    const/16 v2, 0xaf

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 49
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_2d
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_2e

    const/16 v2, 0xb0

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_2e
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_83

    const/16 v2, 0xb1

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 52
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 53
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2f

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 54
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 55
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2f
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 56
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 57
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 58
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 59
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v6

    .line 60
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v10

    aput v1, v2, v6

    .line 61
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x3

    .line 63
    aget-byte v4, v1, v3

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x4

    .line 64
    aget-byte v8, v1, v7

    and-int/2addr v8, v5

    if-ne v2, v10, :cond_30

    const/16 v1, 0x67

    new-array v2, v10, [I

    aput v4, v2, v6

    .line 65
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x68

    new-array v2, v10, [I

    aput v8, v2, v6

    .line 66
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_30
    if-ne v2, v11, :cond_31

    const/16 v2, 0x69

    new-array v4, v10, [I

    .line 67
    aget-byte v3, v1, v3

    shl-int/2addr v3, v12

    const v8, 0xff00

    and-int/2addr v3, v8

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v3, v7

    const v7, 0xffff

    and-int/2addr v3, v7

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 68
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    const v7, 0xff00

    and-int/2addr v4, v7

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    const v7, 0xffff

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 69
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 70
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 71
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 72
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 73
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 74
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    const/16 v4, 0xd

    add-int/lit8 v4, p2, 0xd

    .line 75
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_31
    if-ne v2, v13, :cond_83

    const/16 v2, 0x72

    new-array v4, v10, [I

    .line 76
    aget-byte v3, v1, v3

    and-int/2addr v3, v5

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 77
    aget-byte v1, v1, v7

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v4, v1, v2

    and-int/2addr v4, v5

    add-int/lit8 v7, p2, 0x3

    .line 79
    aget-byte v9, v1, v7

    and-int/2addr v9, v5

    add-int/lit8 v11, p2, 0x4

    .line 80
    aget-byte v12, v1, v11

    and-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x5

    .line 81
    aget-byte v14, v1, v13

    and-int/2addr v14, v5

    if-lt v4, v3, :cond_32

    if-lt v9, v3, :cond_32

    if-lt v12, v3, :cond_32

    if-lt v14, v3, :cond_32

    .line 82
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 83
    :cond_32
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_33

    sget v3, Ll0/c0;->h:I

    if-ne v3, v9, :cond_33

    sget v3, Ll0/c0;->i:I

    if-ne v3, v12, :cond_33

    sget v3, Ll0/c0;->j:I

    if-eq v3, v14, :cond_34

    .line 84
    :cond_33
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_34

    .line 85
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 86
    sput v8, Ll0/c0;->k:I

    .line 87
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 88
    :cond_34
    :goto_1
    sput v4, Ll0/c0;->g:I

    .line 89
    sput v9, Ll0/c0;->h:I

    .line 90
    sput v12, Ll0/c0;->i:I

    .line 91
    sput v14, Ll0/c0;->j:I

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 93
    aget-byte v2, v1, v7

    and-int/2addr v2, v5

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 94
    aget-byte v2, v1, v11

    and-int/2addr v2, v5

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 95
    aget-byte v1, v1, v13

    and-int/2addr v1, v5

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1f

    .line 96
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_83

    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 100
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_1f

    .line 101
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_83

    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 103
    aget-byte v1, v1, v3

    shr-int/2addr v2, v8

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 104
    invoke-static {v2}, Lu0/d;->R2(I)V

    .line 105
    invoke-static {v2}, Lu0/d;->S2(I)V

    shr-int/2addr v1, v8

    and-int/2addr v1, v3

    .line 106
    invoke-static {v1}, Lu0/d;->T2(I)V

    .line 107
    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_1f

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 108
    aget-byte v2, v1, v2

    add-int/lit8 v16, p2, 0x3

    .line 109
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x4

    .line 110
    aget-byte v9, v1, v17

    add-int/lit8 v17, p2, 0x5

    .line 111
    aget-byte v14, v1, v17

    new-array v5, v10, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v5, v6

    .line 112
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v6

    .line 113
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v10

    aput v5, v3, v6

    .line 114
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    .line 115
    sget v3, Lk0/nt;->c:I

    if-ne v3, v12, :cond_35

    const/16 v3, 0x44

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v6

    .line 116
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_35
    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v10

    aput v4, v3, v6

    const/16 v4, 0xd

    .line 117
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x26

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v10

    aput v5, v4, v6

    .line 118
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v10

    aput v5, v4, v6

    .line 119
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v4, v10, [I

    and-int/2addr v2, v10

    aput v2, v4, v6

    .line 120
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    and-int/lit8 v2, v16, 0xf

    if-eq v2, v10, :cond_3a

    if-eq v2, v11, :cond_39

    if-eq v2, v13, :cond_38

    if-eq v2, v8, :cond_37

    if-eq v2, v15, :cond_36

    move v2, v6

    move v3, v2

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_36
    move v3, v6

    move v4, v3

    move v2, v10

    goto :goto_3

    :cond_37
    move v3, v6

    move v2, v10

    move v4, v2

    goto :goto_3

    :cond_38
    move v2, v6

    move v3, v2

    move v4, v10

    goto :goto_3

    :cond_39
    move v2, v6

    move v3, v10

    goto :goto_2

    :cond_3a
    move v2, v6

    move v4, v2

    move v3, v10

    :goto_3
    new-array v5, v10, [I

    aput v2, v5, v6

    const/16 v2, 0x12

    .line 121
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v3, v2, v6

    const/16 v3, 0x13

    .line 122
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v4, v2, v6

    const/16 v3, 0x14

    .line 123
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    const/16 v4, 0xff

    and-int/lit16 v5, v9, 0xff

    aput v5, v3, v6

    .line 124
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v14, 0xff

    .line 125
    sget v3, Lk0/nt;->c:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3e

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3e

    if-eq v3, v12, :cond_3e

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x11

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x12

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x13

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x14

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_3b

    goto :goto_4

    :cond_3b
    const/16 v3, 0x11

    if-gt v2, v3, :cond_3c

    new-array v2, v10, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    const/16 v3, 0x1b

    .line 126
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_3c
    const/16 v3, 0x1b

    const/16 v4, 0x20

    if-lt v2, v4, :cond_3d

    new-array v2, v10, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 127
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_3d
    new-array v4, v10, [I

    aput v2, v4, v6

    .line 128
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_3e
    :goto_4
    const/16 v3, 0x7c

    if-ge v2, v3, :cond_3f

    new-array v2, v10, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    const/16 v3, 0x1b

    .line 129
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_3f
    const/16 v3, 0x1b

    const/16 v4, 0x9c

    if-le v2, v4, :cond_40

    new-array v2, v10, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 130
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_40
    new-array v4, v10, [I

    aput v2, v4, v6

    .line 131
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v2, 0x35

    new-array v3, v10, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 132
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v10

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_41
    add-int/lit8 v2, p2, 0x2

    .line 133
    aget-byte v3, v1, v2

    const/16 v4, 0x3e9

    new-array v5, v10, [I

    aput v3, v5, v6

    .line 134
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 135
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eqz v1, :cond_42

    .line 136
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_1f

    .line 137
    :cond_42
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_1f

    .line 138
    :cond_43
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_83

    add-int/lit8 v2, p2, 0x2

    .line 139
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/f0;->i(B)V

    goto/16 :goto_1f

    :cond_44
    const/16 v2, 0x7c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 140
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_45
    add-int/lit8 v2, p2, 0x2

    .line 141
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 142
    aget-byte v1, v1, v3

    .line 143
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_47

    const/16 v4, 0x13

    if-eq v3, v4, :cond_47

    const/16 v4, 0x14

    if-eq v3, v4, :cond_47

    const/16 v4, 0x15

    if-eq v3, v4, :cond_47

    const/16 v4, 0x16

    if-eq v3, v4, :cond_47

    const/16 v4, 0x17

    if-eq v3, v4, :cond_47

    const/16 v4, 0x18

    if-eq v3, v4, :cond_47

    const/16 v4, 0x19

    if-eq v3, v4, :cond_47

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_47

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_47

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_47

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_47

    const/16 v4, 0x22

    if-eq v3, v4, :cond_47

    const/16 v4, 0x23

    if-ne v3, v4, :cond_46

    goto :goto_6

    .line 144
    :cond_46
    iget-boolean v3, v0, Lk0/qa;->f:Z

    if-nez v3, :cond_83

    const/16 v3, 0x1568

    const/16 v4, 0x1568

    .line 145
    invoke-static {v1, v2, v3, v6, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_1f

    .line 146
    :cond_47
    :goto_6
    iget-boolean v3, v0, Lk0/qa;->f:Z

    if-nez v3, :cond_83

    const/16 v3, 0x1e8a

    const/16 v4, 0x171b

    .line 147
    invoke-static {v1, v2, v3, v6, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_1f

    .line 148
    :cond_48
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_49
    add-int/lit8 v2, p2, 0x2

    .line 149
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v10, :cond_4c

    if-eq v2, v13, :cond_4b

    if-eq v2, v12, :cond_4a

    goto/16 :goto_1f

    :cond_4a
    add-int/lit8 v2, p2, 0x3

    .line 150
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 151
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 152
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 153
    iput-boolean v10, v0, Lk0/qa;->f:Z

    goto/16 :goto_1f

    :cond_4b
    add-int/lit8 v2, p2, 0x4

    .line 154
    aget-byte v2, v1, v2

    shl-int/2addr v2, v12

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v6

    .line 155
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 156
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v11, [I

    aput v10, v4, v6

    aput v1, v4, v10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_4c
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 157
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4d

    add-int/lit8 v2, p2, 0x3

    .line 158
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    invoke-static {v3, v1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_1f

    :cond_4d
    add-int/lit8 v2, p2, 0x3

    .line 159
    aget-byte v3, v1, v2

    shr-int/2addr v3, v13

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v10

    invoke-static {v3, v1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_1f

    :cond_4e
    const/16 v2, 0x7d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 160
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    .line 161
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v10, [I

    .line 162
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v10, [I

    .line 163
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 164
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    .line 165
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    .line 166
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    .line 167
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 168
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    .line 169
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v13

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    :cond_4f
    const/16 v2, 0xb8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 170
    aget-byte v5, v1, v4

    const/4 v7, 0x7

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v10, [I

    .line 171
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v10, [I

    .line 172
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v10, [I

    .line 173
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v10, [I

    .line 174
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 175
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v10, [I

    .line 176
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v10, [I

    .line 177
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 178
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v10, [I

    .line 179
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v10, [I

    .line 180
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v10, [I

    .line 181
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v10, [I

    .line 182
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v10, [I

    .line 183
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 184
    aget-byte v5, v1, v4

    const/4 v7, 0x7

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v10, [I

    .line 185
    aget-byte v5, v1, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v10, [I

    .line 186
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v10, [I

    .line 187
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v10, [I

    .line 188
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 189
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 190
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 191
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v3, v10, [I

    .line 192
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v10, [I

    .line 193
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 194
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    const/16 v5, 0xff

    and-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1f

    .line 195
    :cond_50
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_83

    add-int/lit8 v2, p2, 0x2

    .line 196
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 197
    aget-byte v1, v1, v3

    and-int/2addr v2, v5

    .line 198
    iput v2, v0, Lk0/qa;->c:I

    .line 199
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x1e

    if-eq v2, v11, :cond_78

    if-eq v2, v13, :cond_78

    const/16 v5, 0x15

    if-eq v2, v5, :cond_78

    const/16 v5, 0x16

    if-eq v2, v5, :cond_78

    const/16 v5, 0x17

    if-eq v2, v5, :cond_78

    const/16 v5, 0x18

    if-eq v2, v5, :cond_78

    const/16 v5, 0x19

    if-eq v2, v5, :cond_78

    const/16 v5, 0x22

    if-eq v2, v5, :cond_78

    const/16 v5, 0x23

    if-ne v2, v5, :cond_51

    goto/16 :goto_19

    :cond_51
    move v2, v6

    .line 200
    :goto_7
    iget-object v5, v0, Lk0/qa;->d:[[I

    array-length v9, v5

    if-ge v2, v9, :cond_53

    .line 201
    iget v9, v0, Lk0/qa;->c:I

    aget-object v11, v5, v2

    aget v11, v11, v6

    if-ne v9, v11, :cond_52

    if-eqz v9, :cond_53

    .line 202
    iput v2, v0, Lk0/qa;->b:I

    goto :goto_8

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 203
    :cond_53
    :goto_8
    sget v9, Lk0/nt;->c:I

    const/4 v11, 0x6

    if-eq v9, v11, :cond_6c

    const/4 v11, 0x7

    if-eq v9, v11, :cond_6c

    const/16 v11, 0x13

    if-eq v9, v11, :cond_6c

    const/16 v11, 0x14

    if-eq v9, v11, :cond_6c

    const/16 v11, 0x1c

    if-eq v9, v11, :cond_6c

    const/16 v11, 0x1d

    if-ne v9, v11, :cond_54

    goto/16 :goto_13

    :cond_54
    if-ne v9, v7, :cond_62

    .line 204
    iget v9, v0, Lk0/qa;->c:I

    if-eq v9, v7, :cond_60

    if-eq v9, v4, :cond_5e

    const/16 v4, 0x8e

    if-eq v9, v4, :cond_5c

    packed-switch v9, :pswitch_data_1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v10, :cond_55

    .line 205
    array-length v1, v5

    if-ge v2, v1, :cond_83

    .line 206
    aget-object v1, v5, v2

    aget v1, v1, v10

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_55
    if-nez v1, :cond_83

    .line 207
    iget v1, v0, Lk0/qa;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_56

    const/16 v2, 0xff

    if-eq v1, v2, :cond_57

    .line 208
    aget-object v1, v5, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_56
    const/16 v2, 0xff

    .line 209
    :cond_57
    :goto_9
    iput v2, v0, Lk0/qa;->b:I

    goto/16 :goto_1f

    :pswitch_7
    const/16 v2, 0xff

    move v3, v6

    :goto_a
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_58

    const/16 v4, 0x1f

    .line 210
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_58
    const/16 v4, 0x1f

    .line 211
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_8
    const/16 v2, 0xff

    move v4, v6

    :goto_b
    and-int/lit16 v5, v1, 0xff

    if-ge v4, v5, :cond_59

    .line 212
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 213
    :cond_59
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_9
    const/16 v2, 0xff

    move v3, v6

    :goto_c
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_5a

    const/4 v4, 0x7

    .line 214
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_5a
    const/4 v4, 0x7

    .line 215
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_a
    const/16 v2, 0xff

    move v3, v6

    :goto_d
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_5b

    .line 216
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 217
    :cond_5b
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_5c
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_83

    .line 218
    sget v1, Lu0/b;->o:I

    if-ne v1, v10, :cond_5d

    .line 219
    invoke-static {v6}, Lk0/qt;->a(I)V

    new-array v1, v8, [I

    .line 220
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1f

    .line 221
    :cond_5d
    invoke-static {v10}, Lk0/qt;->a(I)V

    new-array v1, v8, [I

    .line 222
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1f

    :cond_5e
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_83

    .line 223
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_5f

    const/16 v1, 0x43

    .line 224
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 225
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_5f
    const/16 v1, 0x12

    .line 226
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 227
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_60
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_83

    .line 228
    sget v1, Lh0/c;->E:I

    if-eq v1, v13, :cond_61

    if-eq v1, v8, :cond_61

    if-eq v1, v15, :cond_61

    const/16 v1, 0x44

    .line 229
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 230
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_61
    const/16 v1, 0x1a

    .line 231
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 232
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    .line 233
    :cond_62
    iget v4, v0, Lk0/qa;->c:I

    const/16 v7, 0x8e

    if-eq v4, v7, :cond_6a

    packed-switch v4, :pswitch_data_2

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v10, :cond_63

    .line 234
    array-length v1, v5

    if-ge v2, v1, :cond_83

    .line 235
    aget-object v1, v5, v2

    aget v1, v1, v10

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_63
    if-nez v1, :cond_83

    .line 236
    iget v1, v0, Lk0/qa;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_64

    const/16 v2, 0xff

    if-eq v1, v2, :cond_65

    .line 237
    aget-object v1, v5, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_64
    const/16 v2, 0xff

    .line 238
    :cond_65
    :goto_e
    iput v2, v0, Lk0/qa;->b:I

    goto/16 :goto_1f

    :pswitch_b
    const/16 v2, 0xff

    move v3, v6

    :goto_f
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_66

    const/16 v4, 0x1f

    .line 239
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_66
    const/16 v4, 0x1f

    .line 240
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_c
    const/16 v2, 0xff

    move v4, v6

    :goto_10
    and-int/lit16 v5, v1, 0xff

    if-ge v4, v5, :cond_67

    .line 241
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 242
    :cond_67
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_d
    const/16 v2, 0xff

    move v3, v6

    :goto_11
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_68

    const/4 v4, 0x7

    .line 243
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_68
    const/4 v4, 0x7

    .line 244
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_e
    const/16 v2, 0xff

    move v3, v6

    :goto_12
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_69

    .line 245
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 246
    :cond_69
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_6a
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_83

    .line 247
    sget v1, Lu0/b;->o:I

    if-ne v1, v10, :cond_6b

    .line 248
    invoke-static {v6}, Lk0/qt;->a(I)V

    new-array v1, v8, [I

    .line 249
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1f

    .line 250
    :cond_6b
    invoke-static {v10}, Lk0/qt;->a(I)V

    new-array v1, v8, [I

    .line 251
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1f

    .line 252
    :cond_6c
    :goto_13
    iget v4, v0, Lk0/qa;->c:I

    if-eq v4, v15, :cond_76

    const/16 v7, 0x8e

    if-eq v4, v7, :cond_74

    packed-switch v4, :pswitch_data_3

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-ne v1, v10, :cond_6d

    .line 253
    array-length v1, v5

    if-ge v2, v1, :cond_83

    .line 254
    aget-object v1, v5, v2

    aget v1, v1, v10

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_6d
    if-nez v1, :cond_83

    .line 255
    iget v1, v0, Lk0/qa;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_6e

    const/16 v2, 0xff

    if-eq v1, v2, :cond_6f

    .line 256
    aget-object v1, v5, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_6e
    const/16 v2, 0xff

    .line 257
    :cond_6f
    :goto_14
    iput v2, v0, Lk0/qa;->b:I

    goto/16 :goto_1f

    :pswitch_f
    const/16 v2, 0xff

    move v3, v6

    :goto_15
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_70

    const/16 v4, 0x1f

    .line 258
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_70
    const/16 v4, 0x1f

    .line 259
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_10
    const/16 v2, 0xff

    move v4, v6

    :goto_16
    and-int/lit16 v5, v1, 0xff

    if-ge v4, v5, :cond_71

    .line 260
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 261
    :cond_71
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_11
    const/16 v2, 0xff

    move v3, v6

    :goto_17
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_72

    const/4 v4, 0x7

    .line 262
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_72
    const/4 v4, 0x7

    .line 263
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_12
    const/16 v2, 0xff

    move v3, v6

    :goto_18
    and-int/lit16 v4, v1, 0xff

    if-ge v3, v4, :cond_73

    .line 264
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 265
    :cond_73
    invoke-static {v12, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_74
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_83

    .line 266
    sget v1, Lu0/b;->o:I

    if-ne v1, v10, :cond_75

    .line 267
    invoke-static {v6}, Lk0/qt;->a(I)V

    new-array v1, v8, [I

    .line 268
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1f

    .line 269
    :cond_75
    invoke-static {v10}, Lk0/qt;->a(I)V

    new-array v1, v8, [I

    .line 270
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1f

    :cond_76
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_83

    .line 271
    sget v1, Lh0/c;->E:I

    if-eq v1, v13, :cond_77

    if-eq v1, v8, :cond_77

    if-eq v1, v15, :cond_77

    const/16 v1, 0xd

    .line 272
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 273
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_77
    const/16 v1, 0x1a

    .line 274
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 275
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :cond_78
    :goto_19
    move v2, v6

    .line 276
    :goto_1a
    iget-object v4, v0, Lk0/qa;->e:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_7a

    .line 277
    iget v5, v0, Lk0/qa;->c:I

    aget-object v7, v4, v2

    aget v7, v7, v6

    if-ne v5, v7, :cond_79

    if-eqz v5, :cond_7a

    .line 278
    iput v2, v0, Lk0/qa;->b:I

    goto :goto_1b

    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 279
    :cond_7a
    :goto_1b
    iget v5, v0, Lk0/qa;->c:I

    packed-switch v5, :pswitch_data_4

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v10, :cond_80

    .line 280
    array-length v1, v4

    if-ge v2, v1, :cond_83

    .line 281
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_1f

    :pswitch_13
    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v10, :cond_83

    .line 282
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "com.syu.fourcamera2"

    .line 283
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 284
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_1f

    .line 285
    :cond_7b
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_1f

    .line 286
    :cond_7c
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_7d

    .line 287
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto :goto_1f

    .line 288
    :cond_7d
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto :goto_1f

    :pswitch_14
    move v2, v6

    const/16 v5, 0xff

    :goto_1c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_7e

    const/16 v3, 0x1f

    .line 289
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_7e
    const/16 v3, 0x1f

    .line 290
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_1f

    :pswitch_15
    const/16 v5, 0xff

    move v2, v6

    :goto_1d
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_7f

    .line 291
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 292
    :cond_7f
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto :goto_1f

    :cond_80
    if-nez v1, :cond_83

    .line 293
    iget v1, v0, Lk0/qa;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_81

    const/16 v2, 0xff

    if-eq v1, v2, :cond_82

    .line 294
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_1e

    :cond_81
    const/16 v2, 0xff

    .line 295
    :cond_82
    :goto_1e
    iput v2, v0, Lk0/qa;->b:I

    :cond_83
    :goto_1f
    return-void

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x79
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x79
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x79
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x79
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x79
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x79
        0x1
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/qa;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/qa;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/qa;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/qa;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/qa;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xcb

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
    .locals 6

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, p4, :cond_3

    const/16 v5, 0x3eb

    if-eq p1, v5, :cond_1

    const/16 v5, 0x3ed

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_9

    .line 1
    array-length p1, p2

    if-lez p1, :cond_9

    new-array p1, v1, [I

    aput p3, p1, v2

    const/16 p3, -0x79

    aput p3, p1, v4

    aput v4, p1, v3

    .line 2
    aget p2, p2, v2

    add-int/2addr p2, p4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_9

    .line 3
    array-length p1, p2

    if-lez p1, :cond_9

    .line 4
    aget p1, p2, v2

    if-ne p1, v4, :cond_2

    new-array p1, v1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 6
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto/16 :goto_0

    :cond_2
    new-array p1, v1, [I

    .line 7
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 8
    invoke-static {v4}, Lk0/qt;->a(I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0xb3

    aput p3, p1, v4

    aput v3, p1, v3

    .line 10
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 11
    :cond_4
    aget p1, p2, v2

    aget p3, p2, v4

    aget p4, p2, v3

    aget p2, p2, v0

    invoke-virtual {p0, p1, p3, p4, p2}, Lk0/qa;->d3(IIII)V

    goto/16 :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, v1, [I

    aput p3, p1, v2

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v3

    .line 13
    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x97

    aput p3, p1, v4

    aput v3, p1, v3

    .line 15
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    const/4 p1, 0x6

    .line 16
    invoke-virtual {p0, p2, p1}, Lk0/lt;->T2([II)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x9

    new-array v5, v5, [I

    aput p3, v5, v2

    const/16 p3, 0xc7

    aput p3, v5, v4

    aput p1, v5, v3

    .line 17
    aget p3, p2, v2

    aput p3, v5, v0

    aget p3, p2, v4

    aput p3, v5, v1

    aget p3, p2, v3

    aput p3, v5, p4

    aget p3, p2, v0

    aput p3, v5, p1

    const/4 p1, 0x7

    aget p3, p2, v1

    aput p3, v5, p1

    const/16 p1, 0x8

    aget p2, p2, p4

    aput p2, v5, p1

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_0

    .line 18
    :cond_8
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, p4, [I

    aput p3, p1, v2

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v3, p1, v3

    .line 19
    aget p3, p2, v2

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_9
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x79
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x79
        0x1
        0x1
    .end array-data
.end method

.method public final d3(IIII)V
    .locals 4

    .line 1
    sput p1, Lk0/qa;->r:I

    .line 2
    sput p2, Lk0/qa;->s:I

    .line 3
    sput p3, Lk0/qa;->t:I

    .line 4
    sput p4, Lk0/qa;->u:I

    const/4 p2, 0x1

    new-array p3, p2, [I

    const/4 p4, 0x0

    aput p1, p3, p4

    const/16 p1, 0x87

    .line 5
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 6
    sget p3, Lk0/qa;->s:I

    aput p3, p1, p4

    const/16 p3, 0x88

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 7
    sget p3, Lk0/qa;->t:I

    aput p3, p1, p4

    const/16 p3, 0x89

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, p2, [I

    .line 8
    sget p3, Lk0/qa;->u:I

    aput p3, p1, p4

    const/16 p3, 0x8a

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    const/16 p3, 0xe3

    aput p3, p1, p4

    const/16 p3, 0x50

    aput p3, p1, p2

    const/4 p3, 0x2

    const/4 v0, 0x4

    aput v0, p1, p3

    .line 9
    sget v1, Lk0/qa;->r:I

    const/4 v2, 0x3

    aput v1, p1, v2

    sget v1, Lk0/qa;->s:I

    aput v1, p1, v0

    sget v1, Lk0/qa;->t:I

    const/4 v3, 0x5

    aput v1, p1, v3

    sget v1, Lk0/qa;->u:I

    const/4 v3, 0x6

    aput v1, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 10
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, p2, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/qa;->r:I

    if-eq p1, v1, :cond_0

    .line 11
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, p2, v1}, Lo1/g0;->g(II)V

    .line 12
    :cond_0
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, p3, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/qa;->s:I

    if-eq p1, p2, :cond_1

    .line 13
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, p3, p2}, Lo1/g0;->g(II)V

    .line 14
    :cond_1
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, v2, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/qa;->t:I

    if-eq p1, p2, :cond_2

    .line 15
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, v2, p2}, Lo1/g0;->g(II)V

    .line 16
    :cond_2
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, v0, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/qa;->u:I

    if-eq p1, p2, :cond_3

    .line 17
    iget-object p1, p0, Lk0/qa;->m:Lo1/g0;

    invoke-virtual {p1, v0, p2}, Lo1/g0;->g(II)V

    :cond_3
    return-void
.end method
