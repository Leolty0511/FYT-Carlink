.class public Lk0/n;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static z:I


# instance fields
.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:[[Ljava/lang/String;

.field public g:[[Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:[[I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:[[I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v2, -0x1

    .line 2
    iput v2, v0, Lk0/n;->b:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    iput-object v3, v0, Lk0/n;->f:[[Ljava/lang/String;

    new-array v3, v2, [I

    .line 4
    fill-array-data v3, :array_1

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, v0, Lk0/n;->g:[[Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/n;->h:I

    const/16 v3, 0xff

    .line 6
    iput v3, v0, Lk0/n;->l:I

    const/16 v4, 0x3c

    new-array v4, v4, [[I

    new-array v5, v2, [I

    .line 7
    fill-array-data v5, :array_2

    aput-object v5, v4, v1

    new-array v5, v2, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-array v5, v2, [I

    fill-array-data v5, :array_4

    aput-object v5, v4, v2

    new-array v5, v2, [I

    fill-array-data v5, :array_5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-array v5, v2, [I

    fill-array-data v5, :array_6

    const/4 v8, 0x4

    aput-object v5, v4, v8

    new-array v5, v2, [I

    fill-array-data v5, :array_7

    const/4 v9, 0x5

    aput-object v5, v4, v9

    new-array v5, v2, [I

    fill-array-data v5, :array_8

    const/4 v10, 0x6

    aput-object v5, v4, v10

    new-array v5, v2, [I

    fill-array-data v5, :array_9

    const/4 v11, 0x7

    aput-object v5, v4, v11

    new-array v5, v2, [I

    fill-array-data v5, :array_a

    const/16 v12, 0x8

    aput-object v5, v4, v12

    new-array v5, v2, [I

    fill-array-data v5, :array_b

    const/16 v13, 0x9

    aput-object v5, v4, v13

    new-array v5, v2, [I

    fill-array-data v5, :array_c

    const/16 v14, 0xa

    aput-object v5, v4, v14

    new-array v5, v2, [I

    fill-array-data v5, :array_d

    const/16 v15, 0xb

    aput-object v5, v4, v15

    new-array v5, v2, [I

    fill-array-data v5, :array_e

    const/16 v16, 0xc

    aput-object v5, v4, v16

    new-array v5, v2, [I

    fill-array-data v5, :array_f

    const/16 v17, 0xd

    aput-object v5, v4, v17

    new-array v5, v2, [I

    fill-array-data v5, :array_10

    const/16 v18, 0xe

    aput-object v5, v4, v18

    new-array v5, v2, [I

    fill-array-data v5, :array_11

    const/16 v19, 0xf

    aput-object v5, v4, v19

    new-array v5, v2, [I

    fill-array-data v5, :array_12

    const/16 v20, 0x10

    aput-object v5, v4, v20

    new-array v5, v2, [I

    fill-array-data v5, :array_13

    const/16 v21, 0x11

    aput-object v5, v4, v21

    new-array v5, v2, [I

    fill-array-data v5, :array_14

    const/16 v22, 0x12

    aput-object v5, v4, v22

    new-array v5, v2, [I

    fill-array-data v5, :array_15

    const/16 v23, 0x13

    aput-object v5, v4, v23

    new-array v5, v2, [I

    fill-array-data v5, :array_16

    const/16 v24, 0x14

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_17

    const/16 v24, 0x15

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_18

    const/16 v24, 0x16

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_19

    const/16 v24, 0x17

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_1a

    const/16 v24, 0x18

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_1b

    const/16 v24, 0x19

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_1c

    const/16 v24, 0x1a

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_1d

    const/16 v24, 0x1b

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_1e

    const/16 v24, 0x1c

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_1f

    const/16 v24, 0x1d

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_20

    const/16 v24, 0x1e

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_21

    const/16 v24, 0x1f

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_22

    const/16 v24, 0x20

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_23

    const/16 v24, 0x21

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_24

    const/16 v24, 0x22

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_25

    const/16 v24, 0x23

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_26

    const/16 v24, 0x24

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_27

    const/16 v24, 0x25

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_28

    const/16 v24, 0x26

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_29

    const/16 v24, 0x27

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_2a

    const/16 v24, 0x28

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_2b

    const/16 v24, 0x29

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_2c

    const/16 v24, 0x2a

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_2d

    const/16 v24, 0x2b

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_2e

    const/16 v24, 0x2c

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_2f

    const/16 v24, 0x2d

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_30

    const/16 v24, 0x2e

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_31

    const/16 v24, 0x2f

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_32

    const/16 v24, 0x30

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_33

    const/16 v24, 0x31

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_34

    const/16 v24, 0x32

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_35

    const/16 v24, 0x33

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_36

    const/16 v24, 0x34

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_37

    const/16 v24, 0x35

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_38

    const/16 v24, 0x36

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_39

    const/16 v24, 0x37

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_3a

    const/16 v24, 0x38

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_3b

    const/16 v24, 0x39

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_3c

    const/16 v24, 0x3a

    aput-object v5, v4, v24

    new-array v5, v2, [I

    fill-array-data v5, :array_3d

    const/16 v24, 0x3b

    aput-object v5, v4, v24

    iput-object v4, v0, Lk0/n;->m:[[I

    .line 8
    iput v3, v0, Lk0/n;->o:I

    .line 9
    iput v1, v0, Lk0/n;->p:I

    .line 10
    iput v1, v0, Lk0/n;->q:I

    .line 11
    iput v1, v0, Lk0/n;->r:I

    const/16 v3, 0x16

    new-array v3, v3, [[I

    new-array v4, v2, [I

    .line 12
    fill-array-data v4, :array_3e

    aput-object v4, v3, v1

    new-array v4, v2, [I

    fill-array-data v4, :array_3f

    aput-object v4, v3, v6

    new-array v4, v2, [I

    fill-array-data v4, :array_40

    aput-object v4, v3, v2

    new-array v4, v2, [I

    fill-array-data v4, :array_41

    aput-object v4, v3, v7

    new-array v4, v2, [I

    fill-array-data v4, :array_42

    aput-object v4, v3, v8

    new-array v4, v2, [I

    fill-array-data v4, :array_43

    aput-object v4, v3, v9

    new-array v4, v2, [I

    fill-array-data v4, :array_44

    aput-object v4, v3, v10

    new-array v4, v2, [I

    fill-array-data v4, :array_45

    aput-object v4, v3, v11

    new-array v4, v2, [I

    fill-array-data v4, :array_46

    aput-object v4, v3, v12

    new-array v4, v2, [I

    fill-array-data v4, :array_47

    aput-object v4, v3, v13

    new-array v4, v2, [I

    fill-array-data v4, :array_48

    aput-object v4, v3, v14

    new-array v4, v2, [I

    fill-array-data v4, :array_49

    aput-object v4, v3, v15

    new-array v4, v2, [I

    fill-array-data v4, :array_4a

    aput-object v4, v3, v16

    new-array v4, v2, [I

    fill-array-data v4, :array_4b

    aput-object v4, v3, v17

    new-array v4, v2, [I

    fill-array-data v4, :array_4c

    aput-object v4, v3, v18

    new-array v4, v2, [I

    fill-array-data v4, :array_4d

    aput-object v4, v3, v19

    new-array v4, v2, [I

    fill-array-data v4, :array_4e

    aput-object v4, v3, v20

    new-array v4, v2, [I

    fill-array-data v4, :array_4f

    aput-object v4, v3, v21

    new-array v4, v2, [I

    fill-array-data v4, :array_50

    aput-object v4, v3, v22

    new-array v4, v2, [I

    fill-array-data v4, :array_51

    aput-object v4, v3, v23

    new-array v4, v2, [I

    fill-array-data v4, :array_52

    const/16 v5, 0x14

    aput-object v4, v3, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_53

    const/16 v4, 0x15

    aput-object v2, v3, v4

    iput-object v3, v0, Lk0/n;->s:[[I

    .line 13
    new-instance v2, Lk0/n$a;

    invoke-direct {v2, v0}, Lk0/n$a;-><init>(Lk0/n;)V

    iput-object v2, v0, Lk0/n;->t:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Lk0/n$b;

    invoke-direct {v2, v0}, Lk0/n$b;-><init>(Lk0/n;)V

    iput-object v2, v0, Lk0/n;->u:Ljava/lang/Runnable;

    .line 15
    iput v1, v0, Lk0/n;->v:I

    .line 16
    new-instance v1, Lk0/n$c;

    invoke-direct {v1, v0}, Lk0/n$c;-><init>(Lk0/n;)V

    iput-object v1, v0, Lk0/n;->w:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Lk0/n$d;

    invoke-direct {v1, v0}, Lk0/n$d;-><init>(Lk0/n;)V

    iput-object v1, v0, Lk0/n;->x:Ljava/lang/Runnable;

    .line 18
    new-instance v1, Lk0/n$e;

    invoke-direct {v1, v0}, Lk0/n$e;-><init>(Lk0/n;)V

    iput-object v1, v0, Lk0/n;->y:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x5
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_4
    .array-data 4
        0x3
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x8
        0x21
    .end array-data

    :array_a
    .array-data 4
        0x9
        0x20
    .end array-data

    :array_b
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x62
        0x10
    .end array-data

    :array_11
    .array-data 4
        0x65
        0xb
    .end array-data

    :array_12
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x85
        0x26
    .end array-data

    :array_16
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_17
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_18
    .array-data 4
        0x8a
        0x28
    .end array-data

    :array_19
    .array-data 4
        0x8b
        0x29
    .end array-data

    :array_1a
    .array-data 4
        0x8c
        0x2a
    .end array-data

    :array_1b
    .array-data 4
        0x8d
        0x2b
    .end array-data

    :array_1c
    .array-data 4
        0x8e
        0x2c
    .end array-data

    :array_1d
    .array-data 4
        0x8f
        0x2d
    .end array-data

    :array_1e
    .array-data 4
        0x90
        0x10
    .end array-data

    :array_1f
    .array-data 4
        0x91
        0xb
    .end array-data

    :array_20
    .array-data 4
        0x92
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x93
        0x38
    .end array-data

    :array_22
    .array-data 4
        0x97
        0x22
    .end array-data

    :array_23
    .array-data 4
        0x98
        0x23
    .end array-data

    :array_24
    .array-data 4
        0x99
        0x20
    .end array-data

    :array_25
    .array-data 4
        0x9a
        0x21
    .end array-data

    :array_26
    .array-data 4
        0x9f
        0x35
    .end array-data

    :array_27
    .array-data 4
        0xa4
        0x36
    .end array-data

    :array_28
    .array-data 4
        0xa8
        0x12
    .end array-data

    :array_29
    .array-data 4
        0xaa
        0x1d
    .end array-data

    :array_2a
    .array-data 4
        0xac
        0x2
    .end array-data

    :array_2b
    .array-data 4
        0xad
        0x18
    .end array-data

    :array_2c
    .array-data 4
        0xae
        0x27
    .end array-data

    :array_2d
    .array-data 4
        0xb0
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0xb1
        -0x1
    .end array-data

    :array_2f
    .array-data 4
        0xb2
        -0x1
    .end array-data

    :array_30
    .array-data 4
        0xb3
        -0x1
    .end array-data

    :array_31
    .array-data 4
        0xb4
        0x32
    .end array-data

    :array_32
    .array-data 4
        0xb5
        0x33
    .end array-data

    :array_33
    .array-data 4
        0xb6
        -0x1
    .end array-data

    :array_34
    .array-data 4
        0xb7
        -0x1
    .end array-data

    :array_35
    .array-data 4
        0xb8
        -0x1
    .end array-data

    :array_36
    .array-data 4
        0xb9
        -0x1
    .end array-data

    :array_37
    .array-data 4
        0xba
        0x16
    .end array-data

    :array_38
    .array-data 4
        0xbb
        0x36
    .end array-data

    :array_39
    .array-data 4
        0xbc
        0x1c
    .end array-data

    :array_3a
    .array-data 4
        0xbd
        0x1b
    .end array-data

    :array_3b
    .array-data 4
        0xbe
        0x27
    .end array-data

    :array_3c
    .array-data 4
        0xbf
        0x5
    .end array-data

    :array_3d
    .array-data 4
        0xc0
        0x19
    .end array-data

    :array_3e
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_3f
    .array-data 4
        0x4
        0x37
    .end array-data

    :array_40
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_41
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_42
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_43
    .array-data 4
        0x15
        0x22
    .end array-data

    :array_44
    .array-data 4
        0x16
        0x23
    .end array-data

    :array_45
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_46
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_47
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_48
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_49
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_4a
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_4b
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_4c
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_4d
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_4e
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_4f
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_50
    .array-data 4
        0x3b
        0x2
    .end array-data

    :array_51
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_52
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_53
    .array-data 4
        0x5f
        0xd
    .end array-data
.end method

.method public static synthetic c3(Lk0/n;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/n;->b3(I)V

    return-void
.end method

.method public static f3(I)I
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static h3(I)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/16 v3, 0x20

    if-ne p0, v3, :cond_0

    const/16 p0, 0xe

    goto :goto_0

    :cond_0
    const/16 v3, 0x21

    if-ne p0, v3, :cond_1

    const/16 p0, 0xf

    goto :goto_0

    :cond_1
    const/16 v3, 0x22

    if-ne p0, v3, :cond_2

    const/16 p0, 0xc

    goto :goto_0

    :cond_2
    const/16 v3, 0x23

    if-ne p0, v3, :cond_3

    const/16 p0, 0xd

    goto :goto_0

    :cond_3
    if-ne p0, v2, :cond_4

    const/16 p0, 0xa

    goto :goto_0

    :cond_4
    if-ne p0, v0, :cond_5

    const/16 p0, 0xb

    goto :goto_0

    :cond_5
    const/16 v3, 0x1d

    if-ne p0, v3, :cond_6

    const/16 p0, 0x10

    goto :goto_0

    :cond_6
    move p0, v1

    :goto_0
    const/4 v3, 0x6

    new-array v3, v3, [I

    const/16 v4, -0x1d

    aput v4, v3, v1

    const/4 v1, 0x1

    aput v2, v3, v1

    const/16 v1, 0xda

    const/4 v4, 0x2

    aput v1, v3, v4

    .line 1
    sget v1, Lk0/n;->z:I

    aput v1, v3, v2

    aput v4, v3, v0

    const/4 v0, 0x5

    aput p0, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

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

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->r:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/n;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

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
    iget-object v0, p0, Lk0/n;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lk0/n;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v3, v1, v2

    const/16 v4, -0x7b

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v4, :cond_76

    const/16 v4, -0x5a

    const/16 v8, 0x8

    const/16 v9, 0xff

    if-eq v3, v4, :cond_75

    const/16 v4, -0x30

    const/16 v10, 0xf

    const/16 v11, 0xd

    const/16 v12, 0xa

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eq v3, v4, :cond_69

    const/16 v4, -0x10

    if-eq v3, v4, :cond_68

    const/16 v4, 0x67

    if-eq v3, v4, :cond_67

    const/16 v4, -0x2e

    if-eq v3, v4, :cond_66

    const/16 v4, -0x2d

    if-eq v3, v4, :cond_63

    const/16 v4, 0x11

    const/16 v13, 0x12

    const/4 v5, 0x6

    if-eq v3, v4, :cond_59

    if-eq v3, v13, :cond_50

    const/16 v2, 0x21

    const/4 v4, 0x7

    const/16 v13, 0x9

    if-eq v3, v2, :cond_22

    const/16 v2, 0x22

    if-eq v3, v2, :cond_12

    const/16 v2, 0x31

    if-eq v3, v2, :cond_6

    const/16 v2, 0x32

    if-eq v3, v2, :cond_5

    const/16 v2, 0x41

    if-eq v3, v2, :cond_1

    const/16 v2, 0x42

    if-eq v3, v2, :cond_0

    goto/16 :goto_2e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->O2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->Q2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 4
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->P2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->N2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 6
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->I2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 7
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->K2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 8
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->J2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 9
    aget-byte v1, v1, v2

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/h0;->o(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->H2(I)V

    goto/16 :goto_2e

    .line 10
    :cond_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_77

    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 13
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 15
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x7

    .line 16
    aget-byte v5, v1, v4

    and-int/2addr v5, v9

    add-int/lit8 v8, p2, 0x8

    .line 17
    aget-byte v10, v1, v8

    and-int/2addr v10, v9

    add-int/lit8 v11, p2, 0x9

    .line 18
    aget-byte v12, v1, v11

    and-int/2addr v12, v9

    if-ne v3, v9, :cond_2

    if-ne v5, v9, :cond_2

    if-ne v10, v9, :cond_2

    if-ne v12, v9, :cond_2

    .line 19
    invoke-static {v6}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 20
    :cond_2
    sget v6, Ll0/c0;->g:I

    if-ne v6, v3, :cond_3

    sget v6, Ll0/c0;->h:I

    if-ne v6, v5, :cond_3

    sget v6, Ll0/c0;->i:I

    if-ne v6, v10, :cond_3

    sget v6, Ll0/c0;->j:I

    if-eq v6, v12, :cond_4

    .line 21
    :cond_3
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_4

    .line 22
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 23
    sput v14, Ll0/c0;->k:I

    .line 24
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 25
    :cond_4
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 26
    sput v5, Ll0/c0;->h:I

    .line 27
    sput v10, Ll0/c0;->i:I

    .line 28
    sput v12, Ll0/c0;->j:I

    .line 29
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 30
    aget-byte v2, v1, v4

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 31
    aget-byte v2, v1, v8

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/h0;->o(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 32
    aget-byte v1, v1, v11

    and-int/2addr v1, v9

    invoke-static {v1}, Ll0/h0;->o(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_2e

    :cond_5
    const/16 v2, 0x69

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 33
    aget-byte v10, v1, v5

    shl-int/2addr v10, v8

    const v11, 0xff00

    and-int/2addr v10, v11

    add-int/lit8 v12, p2, 0x5

    aget-byte v13, v1, v12

    and-int/2addr v13, v9

    or-int/2addr v10, v13

    aput v10, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v7, [I

    .line 34
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    aget-byte v10, v1, v12

    and-int/2addr v10, v9

    or-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 35
    aget-byte v5, v1, v5

    shl-int/2addr v5, v8

    and-int/2addr v5, v11

    add-int/lit8 v4, p2, 0x7

    aget-byte v1, v1, v4

    and-int/2addr v1, v9

    or-int/2addr v1, v5

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v2, v1, v2

    new-array v3, v7, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 37
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 38
    aget-byte v2, v1, v2

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 39
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v4, v7, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v7

    if-ne v10, v7, :cond_7

    move v10, v6

    goto :goto_1

    :cond_7
    move v10, v7

    :goto_1
    aput v10, v4, v6

    .line 40
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 41
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v4, v7, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 42
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 43
    aget-byte v2, v1, v2

    if-eq v2, v15, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    const/4 v3, 0x5

    if-eq v2, v3, :cond_9

    if-eq v2, v5, :cond_8

    packed-switch v2, :pswitch_data_0

    move v2, v6

    :goto_2
    move v3, v2

    :goto_3
    move v4, v3

    goto :goto_4

    :pswitch_0
    move v2, v7

    goto :goto_2

    :pswitch_1
    move v4, v6

    move v2, v7

    move v3, v2

    goto :goto_4

    :pswitch_2
    move v3, v6

    move v2, v7

    move v4, v2

    goto :goto_4

    :cond_8
    move v2, v6

    move v4, v2

    move v3, v7

    goto :goto_4

    :cond_9
    move v2, v6

    move v3, v7

    goto :goto_3

    :cond_a
    move v2, v6

    move v3, v2

    move v4, v7

    goto :goto_4

    :cond_b
    :pswitch_3
    move v3, v6

    move v4, v3

    move v2, v7

    :goto_4
    new-array v5, v7, [I

    aput v2, v5, v6

    const/16 v2, 0x12

    .line 44
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v7, [I

    aput v3, v5, v6

    .line 45
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    aput v4, v3, v6

    .line 46
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 47
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 48
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    add-int/lit8 v2, p2, 0x8

    .line 49
    aget-byte v2, v1, v2

    goto :goto_5

    :cond_c
    add-int/lit8 v2, p2, 0x9

    .line 50
    aget-byte v2, v1, v2

    :goto_5
    and-int/2addr v2, v9

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_d

    const/16 v2, 0x1b

    new-array v3, v7, [I

    const/4 v4, -0x2

    aput v4, v3, v6

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_d
    if-ne v2, v9, :cond_e

    const/16 v2, 0x1b

    new-array v3, v7, [I

    const/4 v4, -0x3

    aput v4, v3, v6

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_e
    const/16 v3, 0x1b

    new-array v4, v7, [I

    const/4 v5, 0x5

    mul-int/2addr v2, v5

    aput v2, v4, v6

    .line 53
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_6
    const-string v2, "persist.fyt.reversetemp"

    .line 54
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_f

    add-int/lit8 v2, p2, 0x9

    .line 55
    aget-byte v1, v1, v2

    goto :goto_7

    :cond_f
    add-int/lit8 v2, p2, 0x8

    .line 56
    aget-byte v1, v1, v2

    :goto_7
    and-int/2addr v1, v9

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_10

    const/16 v1, 0x1c

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 57
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_10
    if-ne v1, v9, :cond_11

    const/16 v1, 0x1c

    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 58
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_11
    const/16 v2, 0x1c

    new-array v3, v7, [I

    const/4 v4, 0x5

    mul-int/2addr v1, v4

    aput v1, v3, v6

    .line 59
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_12
    const-string v2, "persist.fyt.hiworldbuttontype"

    .line 60
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v7, :cond_19

    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 62
    aget-byte v1, v1, v5

    if-eq v2, v7, :cond_16

    if-eq v2, v15, :cond_13

    goto/16 :goto_2e

    .line 63
    :cond_13
    iget v2, v0, Lk0/n;->r:I

    if-eq v1, v2, :cond_77

    if-le v1, v2, :cond_14

    move v2, v6

    .line 64
    :goto_8
    iget v3, v0, Lk0/n;->r:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_15

    const/16 v3, 0x1f

    .line 65
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    if-ge v1, v2, :cond_15

    move v2, v6

    .line 67
    :goto_9
    iget v4, v0, Lk0/n;->r:I

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_15

    .line 68
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    .line 69
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 70
    :cond_15
    iput v1, v0, Lk0/n;->r:I

    goto/16 :goto_2e

    .line 71
    :cond_16
    iget v2, v0, Lk0/n;->q:I

    if-eq v1, v2, :cond_77

    if-le v1, v2, :cond_17

    move v2, v6

    .line 72
    :goto_a
    iget v3, v0, Lk0/n;->q:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_18

    .line 73
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 74
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    if-ge v1, v2, :cond_18

    move v2, v6

    .line 75
    :goto_b
    iget v3, v0, Lk0/n;->q:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_18

    .line 76
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 78
    :cond_18
    iput v1, v0, Lk0/n;->q:I

    goto/16 :goto_2e

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 79
    aget-byte v2, v1, v2

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 80
    aget-byte v1, v1, v5

    if-eq v2, v7, :cond_1e

    if-eq v2, v15, :cond_1a

    goto/16 :goto_2e

    :cond_1a
    if-lez v1, :cond_1c

    move v2, v6

    :goto_c
    if-ge v2, v1, :cond_1b

    const/16 v3, 0x1f

    .line 81
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    const/16 v3, 0x1f

    .line 82
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    :cond_1c
    if-gez v1, :cond_77

    move v2, v6

    :goto_d
    rsub-int/lit8 v4, v1, 0x0

    if-ge v2, v4, :cond_1d

    .line 83
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 84
    :cond_1d
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    :cond_1e
    if-lez v1, :cond_20

    move v2, v6

    :goto_e
    if-ge v2, v1, :cond_1f

    .line 85
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 86
    :cond_1f
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    :cond_20
    if-gez v1, :cond_77

    move v2, v6

    :goto_f
    rsub-int/lit8 v3, v1, 0x0

    if-ge v2, v3, :cond_21

    .line 87
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 88
    :cond_21
    invoke-static {v8, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    :cond_22
    const-string v2, "persist.fyt.hiworldbuttontype"

    .line 89
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_27

    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    iput v2, v0, Lk0/n;->o:I

    const/4 v2, 0x3

    add-int/lit8 v2, p2, 0x3

    .line 91
    aget-byte v1, v1, v2

    move v2, v6

    .line 92
    :goto_10
    iget-object v3, v0, Lk0/n;->s:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_24

    .line 93
    iget v4, v0, Lk0/n;->o:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_23

    if-eqz v4, :cond_24

    .line 94
    iput v2, v0, Lk0/n;->n:I

    goto :goto_11

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    :goto_11
    and-int/2addr v1, v9

    if-eqz v1, :cond_25

    .line 95
    iget v1, v0, Lk0/n;->p:I

    if-nez v1, :cond_25

    .line 96
    array-length v1, v3

    if-ge v2, v1, :cond_77

    .line 97
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 98
    iput v7, v0, Lk0/n;->p:I

    goto/16 :goto_2e

    .line 99
    :cond_25
    iget v1, v0, Lk0/n;->n:I

    array-length v2, v3

    if-ge v1, v2, :cond_26

    if-eq v1, v9, :cond_26

    .line 100
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 101
    :cond_26
    iput v9, v0, Lk0/n;->n:I

    .line 102
    iput v6, v0, Lk0/n;->p:I

    goto/16 :goto_2e

    .line 103
    :cond_27
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2e

    add-int/lit8 v2, p2, 0x2

    .line 104
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lk0/n;->k:I

    add-int/lit8 v2, p2, 0x3

    .line 105
    aget-byte v2, v1, v2

    move v3, v6

    .line 106
    :goto_12
    iget-object v10, v0, Lk0/n;->m:[[I

    array-length v5, v10

    if-ge v3, v5, :cond_29

    .line 107
    iget v5, v0, Lk0/n;->k:I

    aget-object v16, v10, v3

    aget v4, v16, v6

    if-ne v5, v4, :cond_28

    if-eqz v5, :cond_29

    .line 108
    iput v3, v0, Lk0/n;->l:I

    goto :goto_13

    :cond_28
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x6

    goto :goto_12

    :cond_29
    :goto_13
    if-eqz v2, :cond_2a

    .line 109
    array-length v2, v10

    if-ge v3, v2, :cond_2e

    .line 110
    aget-object v2, v10, v3

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_15

    .line 111
    :cond_2a
    iget v2, v0, Lk0/n;->l:I

    array-length v3, v10

    if-ge v2, v3, :cond_2d

    if-eq v2, v9, :cond_2d

    .line 112
    sget v3, Lu0/b;->D:I

    if-eq v3, v11, :cond_2b

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2c

    :cond_2b
    aget-object v2, v10, v2

    aget v2, v2, v7

    .line 113
    invoke-static {v2}, Lk0/n;->f3(I)I

    move-result v2

    if-ne v2, v7, :cond_2c

    .line 114
    iget-object v2, v0, Lk0/n;->m:[[I

    iget v3, v0, Lk0/n;->l:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    invoke-static {v2}, Lk0/n;->h3(I)V

    goto :goto_14

    .line 115
    :cond_2c
    iget-object v2, v0, Lk0/n;->m:[[I

    iget v3, v0, Lk0/n;->l:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 116
    :cond_2d
    :goto_14
    iput v9, v0, Lk0/n;->l:I

    :cond_2e
    :goto_15
    add-int/lit8 v2, p2, 0x3

    .line 117
    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_2f

    goto/16 :goto_2e

    :cond_2f
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v1, v1, v2

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_4f

    const/16 v2, 0x28

    if-eq v1, v2, :cond_4e

    const/16 v2, 0x25

    packed-switch v1, :pswitch_data_1

    const/16 v3, 0xda

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2e

    .line 119
    :pswitch_4
    iget v1, v0, Lk0/n;->b:I

    if-eqz v1, :cond_77

    .line 120
    sget v1, Lk0/n;->z:I

    invoke-virtual {v0, v3, v1, v7, v14}, Lk0/n;->g3(IIII)V

    goto/16 :goto_2e

    .line 121
    :pswitch_5
    iget v1, v0, Lk0/n;->b:I

    if-eqz v1, :cond_77

    .line 122
    sget v1, Lk0/n;->z:I

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v7, v2}, Lk0/n;->g3(IIII)V

    goto/16 :goto_2e

    .line 123
    :pswitch_6
    iget v1, v0, Lk0/n;->b:I

    if-eqz v1, :cond_77

    .line 124
    sget v1, Lk0/n;->z:I

    invoke-virtual {v0, v3, v1, v7, v15}, Lk0/n;->g3(IIII)V

    goto/16 :goto_2e

    .line 125
    :pswitch_7
    iget v1, v0, Lk0/n;->b:I

    if-eqz v1, :cond_77

    .line 126
    sget v1, Lk0/n;->z:I

    invoke-virtual {v0, v3, v1, v7, v7}, Lk0/n;->g3(IIII)V

    goto/16 :goto_2e

    .line 127
    :pswitch_8
    sget v1, Lu0/b;->D:I

    if-ne v1, v15, :cond_77

    .line 128
    sget-object v1, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xe

    invoke-interface {v1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    .line 129
    :pswitch_9
    sget v1, Lu0/b;->D:I

    if-ne v1, v15, :cond_77

    .line 130
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1, v11}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    .line 131
    :pswitch_a
    sget v1, Lu0/b;->D:I

    if-ne v1, v15, :cond_77

    .line 132
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1, v15}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    .line 133
    :pswitch_b
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_31

    if-ne v1, v13, :cond_30

    goto :goto_16

    :cond_30
    if-ne v1, v15, :cond_77

    .line 134
    sget-object v1, Lh0/c;->b:Lh0/f;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_31
    :goto_16
    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v8, v3, v7

    aput v13, v3, v15

    .line 135
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 136
    :pswitch_c
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_33

    if-ne v1, v13, :cond_32

    goto :goto_17

    :cond_32
    if-ne v1, v15, :cond_77

    .line 137
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1, v12}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_33
    :goto_17
    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v8, v3, v7

    aput v8, v3, v15

    .line 138
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 139
    :pswitch_d
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_35

    if-ne v1, v13, :cond_34

    goto :goto_18

    :cond_34
    if-ne v1, v15, :cond_77

    .line 140
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1, v13}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_35
    :goto_18
    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v8, v3, v7

    const/4 v1, 0x7

    aput v1, v3, v15

    .line 141
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 142
    :pswitch_e
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_39

    if-ne v1, v13, :cond_36

    goto :goto_19

    :cond_36
    if-ne v1, v14, :cond_37

    .line 143
    sget-object v1, Lo0/e;->b:Lo0/h;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lo0/h;->D(I)V

    goto/16 :goto_2e

    :cond_37
    if-ne v1, v7, :cond_38

    const/4 v3, 0x6

    .line 144
    invoke-static {v3}, Lw0/f;->B(I)V

    goto/16 :goto_2e

    :cond_38
    if-ne v1, v15, :cond_77

    .line 145
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1, v8}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_39
    :goto_19
    const/4 v3, 0x6

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v1, v4, v6

    aput v8, v4, v7

    aput v3, v4, v15

    .line 146
    invoke-static {v2, v4}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 147
    :pswitch_f
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_3d

    if-ne v1, v13, :cond_3a

    goto :goto_1a

    :cond_3a
    if-ne v1, v14, :cond_3b

    .line 148
    sget-object v1, Lo0/e;->b:Lo0/h;

    invoke-virtual {v1, v14}, Lo0/h;->D(I)V

    goto/16 :goto_2e

    :cond_3b
    if-ne v1, v7, :cond_3c

    const/4 v3, 0x5

    .line 149
    invoke-static {v3}, Lw0/f;->B(I)V

    goto/16 :goto_2e

    :cond_3c
    if-ne v1, v15, :cond_77

    .line 150
    sget-object v1, Lh0/c;->b:Lh0/f;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_3d
    :goto_1a
    const/4 v3, 0x5

    const/4 v4, 0x3

    new-array v4, v4, [I

    aput v1, v4, v6

    aput v8, v4, v7

    aput v3, v4, v15

    .line 151
    invoke-static {v2, v4}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 152
    :pswitch_10
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_41

    if-ne v1, v13, :cond_3e

    goto :goto_1b

    :cond_3e
    if-ne v1, v14, :cond_3f

    .line 153
    sget-object v1, Lo0/e;->b:Lo0/h;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lo0/h;->D(I)V

    goto/16 :goto_2e

    :cond_3f
    if-ne v1, v7, :cond_40

    .line 154
    invoke-static {v14}, Lw0/f;->B(I)V

    goto/16 :goto_2e

    :cond_40
    if-ne v1, v15, :cond_77

    .line 155
    sget-object v1, Lh0/c;->b:Lh0/f;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_41
    :goto_1b
    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v8, v3, v7

    aput v14, v3, v15

    .line 156
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 157
    :pswitch_11
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_45

    if-ne v1, v13, :cond_42

    goto :goto_1c

    :cond_42
    if-ne v1, v14, :cond_43

    .line 158
    sget-object v1, Lo0/e;->b:Lo0/h;

    invoke-virtual {v1, v15}, Lo0/h;->D(I)V

    goto/16 :goto_2e

    :cond_43
    if-ne v1, v7, :cond_44

    const/4 v3, 0x3

    .line 159
    invoke-static {v3}, Lw0/f;->B(I)V

    goto/16 :goto_2e

    :cond_44
    if-ne v1, v15, :cond_77

    .line 160
    sget-object v1, Lh0/c;->b:Lh0/f;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_45
    :goto_1c
    const/4 v3, 0x3

    new-array v4, v3, [I

    aput v1, v4, v6

    aput v8, v4, v7

    aput v3, v4, v15

    .line 161
    invoke-static {v2, v4}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 162
    :pswitch_12
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_49

    if-ne v1, v13, :cond_46

    goto :goto_1d

    :cond_46
    if-ne v1, v14, :cond_47

    .line 163
    sget-object v1, Lo0/e;->b:Lo0/h;

    invoke-virtual {v1, v7}, Lo0/h;->D(I)V

    goto/16 :goto_2e

    :cond_47
    if-ne v1, v7, :cond_48

    .line 164
    invoke-static {v15}, Lw0/f;->B(I)V

    goto/16 :goto_2e

    :cond_48
    if-ne v1, v15, :cond_77

    .line 165
    sget-object v1, Lh0/c;->b:Lh0/f;

    invoke-interface {v1, v14}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_49
    :goto_1d
    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v8, v3, v7

    aput v15, v3, v15

    .line 166
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 167
    :pswitch_13
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_4d

    if-ne v1, v13, :cond_4a

    goto :goto_1e

    :cond_4a
    if-ne v1, v14, :cond_4b

    .line 168
    sget-object v1, Lo0/e;->b:Lo0/h;

    invoke-virtual {v1, v6}, Lo0/h;->D(I)V

    goto/16 :goto_2e

    :cond_4b
    if-ne v1, v7, :cond_4c

    .line 169
    invoke-static {v7}, Lw0/f;->B(I)V

    goto/16 :goto_2e

    :cond_4c
    if-ne v1, v15, :cond_77

    .line 170
    sget-object v1, Lh0/c;->b:Lh0/f;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lh0/f;->h(I)V

    goto/16 :goto_2e

    :cond_4d
    :goto_1e
    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v1, v3, v6

    aput v8, v3, v7

    aput v7, v3, v15

    .line 171
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_2e

    .line 172
    :cond_4e
    invoke-static {}, Lo1/u;->r()V

    goto/16 :goto_2e

    .line 173
    :cond_4f
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_2e

    :cond_50
    const/4 v3, 0x3

    add-int/2addr v2, v3

    .line 174
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 175
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_53

    new-array v2, v7, [I

    and-int/lit16 v3, v1, 0x80

    if-nez v3, :cond_51

    move v3, v6

    goto :goto_1f

    :cond_51
    move v3, v7

    :goto_1f
    aput v3, v2, v6

    .line 176
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_52

    move v3, v6

    goto :goto_20

    :cond_52
    move v3, v7

    :goto_20
    aput v3, v2, v6

    .line 177
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_23

    :cond_53
    new-array v2, v7, [I

    and-int/lit16 v3, v1, 0x80

    if-nez v3, :cond_54

    move v3, v6

    goto :goto_21

    :cond_54
    move v3, v7

    :goto_21
    aput v3, v2, v6

    .line 178
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_55

    move v3, v6

    goto :goto_22

    :cond_55
    move v3, v7

    :goto_22
    aput v3, v2, v6

    .line 179
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    :goto_23
    new-array v2, v7, [I

    and-int/lit8 v3, v1, 0x20

    if-nez v3, :cond_56

    move v3, v6

    goto :goto_24

    :cond_56
    move v3, v7

    :goto_24
    aput v3, v2, v6

    const/4 v3, 0x3

    .line 180
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    and-int/lit8 v3, v1, 0x10

    if-nez v3, :cond_57

    move v3, v6

    goto :goto_25

    :cond_57
    move v3, v7

    :goto_25
    aput v3, v2, v6

    .line 181
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    and-int/2addr v1, v8

    if-nez v1, :cond_58

    move v7, v6

    :cond_58
    aput v7, v2, v6

    const/4 v1, 0x5

    .line 182
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    .line 183
    :cond_59
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_77

    add-int/lit8 v2, p2, 0x4

    .line 184
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 185
    aget-byte v3, v1, v3

    and-int/2addr v2, v9

    .line 186
    iput v2, v0, Lk0/n;->j:I

    move v2, v6

    .line 187
    :goto_26
    iget-object v4, v0, Lk0/n;->m:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_5b

    .line 188
    iget v5, v0, Lk0/n;->j:I

    aget-object v10, v4, v2

    aget v10, v10, v6

    if-ne v5, v10, :cond_5a

    if-eqz v5, :cond_5b

    .line 189
    iput v2, v0, Lk0/n;->i:I

    goto :goto_27

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_5b
    :goto_27
    and-int/2addr v3, v9

    if-eqz v3, :cond_60

    .line 190
    array-length v5, v4

    if-ge v2, v5, :cond_62

    .line 191
    iget v5, v0, Lk0/n;->j:I

    const/4 v10, 0x5

    if-eq v5, v10, :cond_5e

    const/4 v10, 0x6

    if-eq v5, v10, :cond_5c

    .line 192
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_28

    :cond_5c
    if-ne v3, v7, :cond_62

    .line 193
    sget v2, Lh0/c;->E:I

    if-eq v2, v14, :cond_5d

    const/4 v2, 0x3

    .line 194
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 195
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_28

    :cond_5d
    const/16 v2, 0x12

    .line 196
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 197
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_28

    :cond_5e
    const/4 v2, 0x3

    if-ne v3, v7, :cond_62

    .line 198
    sget v3, Lh0/c;->E:I

    if-eq v3, v2, :cond_5f

    if-eq v3, v14, :cond_5f

    const/4 v2, 0x5

    if-eq v3, v2, :cond_5f

    .line 199
    invoke-static {v14, v6}, Ll0/b0;->l0(II)V

    .line 200
    invoke-static {v14, v7}, Ll0/b0;->l0(II)V

    goto :goto_28

    :cond_5f
    const/16 v2, 0x1a

    .line 201
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 202
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_28

    .line 203
    :cond_60
    iget v2, v0, Lk0/n;->i:I

    array-length v3, v4

    if-ge v2, v3, :cond_61

    if-eq v2, v9, :cond_61

    .line 204
    aget-object v2, v4, v2

    aget v2, v2, v7

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 205
    :cond_61
    iput v9, v0, Lk0/n;->i:I

    :cond_62
    :goto_28
    add-int/lit8 v2, p2, 0x9

    .line 206
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    and-int/2addr v1, v9

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_2e

    .line 207
    :cond_63
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_64

    goto/16 :goto_2e

    .line 208
    :cond_64
    iget v2, v0, Lk0/n;->b:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    if-eq v2, v4, :cond_65

    .line 209
    aget-byte v2, v1, v3

    iput v2, v0, Lk0/n;->b:I

    :cond_65
    const/16 v2, 0x66

    new-array v4, v7, [I

    .line 210
    aget-byte v3, v1, v3

    aput v3, v4, v6

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 211
    aget-byte v1, v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_66
    add-int/lit8 v2, p2, 0x4

    .line 212
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    const/4 v3, 0x5

    add-int/lit8 v3, p2, 0x5

    aget-byte v1, v1, v3

    shl-int/2addr v1, v8

    const v3, 0xffff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const/16 v2, 0x65

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 213
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_67
    const/16 v2, 0x7a

    new-array v3, v7, [I

    const/4 v4, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 214
    aget-byte v4, v1, v5

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v7, [I

    .line 215
    aget-byte v4, v1, v5

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v7, [I

    .line 216
    aget-byte v4, v1, v5

    shr-int/2addr v4, v15

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v7, [I

    .line 217
    aget-byte v4, v1, v5

    const/4 v8, 0x3

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v7, [I

    .line 218
    aget-byte v1, v1, v5

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    .line 219
    :cond_68
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 220
    :cond_69
    invoke-static/range {p1 .. p3}, Lo1/b0;->h([BII)V

    .line 221
    iput-boolean v6, v0, Lk0/n;->c:Z

    .line 222
    sget v2, Lk0/n;->z:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    and-int/2addr v4, v9

    if-ne v2, v4, :cond_6a

    .line 223
    iput-boolean v7, v0, Lk0/n;->c:Z

    .line 224
    :cond_6a
    aget-byte v2, v1, v3

    and-int/2addr v2, v9

    sput v2, Lk0/n;->z:I

    const/16 v3, 0x62

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 225
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 226
    aget-byte v2, v1, v2

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v4, v3, 0xf

    const-string v5, ""

    if-ne v4, v10, :cond_6c

    const/16 v8, 0x10

    new-array v8, v8, [I

    move v9, v6

    :goto_29
    const/16 v13, 0x10

    if-ge v9, v13, :cond_6b

    add-int/lit8 v13, p2, 0x4

    add-int/2addr v13, v9

    .line 227
    aget-byte v13, v1, v13

    aput v13, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_6b
    const/16 v1, 0x63

    const-string v9, "icon"

    .line 228
    invoke-static {v1, v8, v9}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    move-object v1, v5

    goto :goto_2c

    .line 229
    :cond_6c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, p2, 0x4

    add-int v16, p2, p3

    add-int/lit8 v6, v16, -0x1

    :goto_2a
    if-ge v14, v6, :cond_6e

    .line 230
    aget-byte v16, v1, v14

    if-nez v16, :cond_6d

    add-int/lit8 v16, v14, 0x1

    aget-byte v16, v1, v16

    if-nez v16, :cond_6d

    goto :goto_2b

    .line 231
    :cond_6d
    aget-byte v16, v1, v14

    shl-int/lit8 v16, v16, 0x8

    const v17, 0xffff

    and-int v16, v16, v17

    add-int/lit8 v17, v14, 0x1

    aget-byte v8, v1, v17

    and-int/2addr v8, v9

    or-int v8, v16, v8

    int-to-char v8, v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    const/16 v8, 0x8

    goto :goto_2a

    .line 232
    :cond_6e
    :goto_2b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    and-int/lit8 v3, v3, 0xe

    .line 233
    iput v3, v0, Lk0/n;->d:I

    and-int/2addr v2, v10

    .line 234
    iput v2, v0, Lk0/n;->e:I

    if-ltz v2, :cond_74

    const/4 v6, 0x3

    if-ge v2, v6, :cond_74

    .line 235
    iget-boolean v6, v0, Lk0/n;->c:Z

    if-eqz v6, :cond_72

    if-lez v2, :cond_72

    if-ltz v3, :cond_70

    const/4 v6, 0x5

    if-ge v3, v6, :cond_70

    .line 236
    iget-object v6, v0, Lk0/n;->f:[[Ljava/lang/String;

    if-eqz v6, :cond_6f

    aget-object v8, v6, v3

    if-eqz v8, :cond_6f

    .line 237
    aget-object v8, v6, v3

    aput-object v1, v8, v2

    .line 238
    :cond_6f
    invoke-virtual {v0, v6, v3}, Lk0/n;->d3([[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_70
    if-lt v3, v12, :cond_74

    if-gt v3, v11, :cond_74

    sub-int/2addr v3, v12

    .line 239
    iput v3, v0, Lk0/n;->d:I

    .line 240
    iget-object v6, v0, Lk0/n;->g:[[Ljava/lang/String;

    if-eqz v6, :cond_71

    aget-object v8, v6, v3

    if-eqz v8, :cond_71

    .line 241
    aget-object v8, v6, v3

    aput-object v1, v8, v2

    .line 242
    :cond_71
    invoke-virtual {v0, v6, v3}, Lk0/n;->d3([[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    .line 243
    :cond_72
    iget-object v3, v0, Lk0/n;->f:[[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lk0/n;->e3([[Ljava/lang/String;)V

    .line 244
    iget-object v3, v0, Lk0/n;->g:[[Ljava/lang/String;

    invoke-virtual {v0, v3}, Lk0/n;->e3([[Ljava/lang/String;)V

    .line 245
    iget v3, v0, Lk0/n;->d:I

    if-ltz v3, :cond_73

    const/4 v6, 0x5

    if-ge v3, v6, :cond_73

    .line 246
    iget-object v6, v0, Lk0/n;->f:[[Ljava/lang/String;

    if-eqz v6, :cond_74

    aget-object v8, v6, v3

    if-eqz v8, :cond_74

    .line 247
    aget-object v3, v6, v3

    iget v6, v0, Lk0/n;->e:I

    aput-object v1, v3, v6

    goto :goto_2d

    :cond_73
    if-lt v3, v12, :cond_74

    if-gt v3, v11, :cond_74

    sub-int/2addr v3, v12

    .line 248
    iput v3, v0, Lk0/n;->d:I

    .line 249
    iget-object v6, v0, Lk0/n;->g:[[Ljava/lang/String;

    if-eqz v6, :cond_74

    aget-object v8, v6, v3

    if-eqz v8, :cond_74

    .line 250
    aget-object v3, v6, v3

    iget v6, v0, Lk0/n;->e:I

    aput-object v1, v3, v6

    :cond_74
    :goto_2d
    new-array v3, v15, [I

    const/4 v6, 0x0

    aput v4, v3, v6

    aput v2, v3, v7

    const/16 v2, 0x64

    .line 251
    invoke-static {v2, v3, v1}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    if-ne v4, v7, :cond_77

    new-array v1, v15, [I

    .line 252
    fill-array-data v1, :array_0

    invoke-static {v2, v1, v5}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    new-array v1, v15, [I

    .line 253
    fill-array-data v1, :array_1

    invoke-static {v2, v1, v5}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    new-array v1, v15, [I

    .line 254
    fill-array-data v1, :array_2

    invoke-static {v2, v1, v5}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    new-array v1, v15, [I

    .line 255
    fill-array-data v1, :array_3

    invoke-static {v2, v1, v5}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto/16 :goto_2e

    :cond_75
    add-int/lit8 v2, p2, 0x2

    .line 256
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 257
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 258
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 259
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 260
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x7

    .line 261
    aget-byte v8, v1, v8

    const/16 v10, 0x8

    add-int/lit8 v10, p2, 0x8

    .line 262
    aget-byte v1, v1, v10

    const/16 v10, 0x6f

    new-array v11, v7, [I

    and-int/lit8 v2, v2, 0x3f

    const/4 v12, 0x0

    aput v2, v11, v12

    .line 263
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v10, v7, [I

    and-int/2addr v3, v9

    aput v3, v10, v12

    .line 264
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    and-int/2addr v4, v9

    aput v4, v3, v12

    .line 265
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v12

    .line 266
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    and-int/lit16 v4, v6, 0xff

    aput v4, v3, v12

    .line 267
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v7, [I

    and-int/lit16 v4, v8, 0xff

    aput v4, v3, v12

    .line 268
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v12

    .line 269
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v3, v12

    .line 270
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2e

    :cond_76
    move v12, v6

    const/16 v2, 0x79

    new-array v3, v7, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 271
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v7

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_77
    :goto_2e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
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
    .end packed-switch

    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/n;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/n;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x80

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

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    if-eq p1, p4, :cond_2

    const/4 v1, 0x4

    const/16 v2, 0xe3

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v3, [I

    aput v2, p1, p3

    aput v0, p1, p4

    const/16 v2, 0xad

    aput v2, p1, v0

    .line 1
    aget p3, p2, p3

    aput p3, p1, v4

    aget p2, p2, p4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v3, [I

    aput v2, p1, p3

    aput v0, p1, p4

    .line 2
    aget p3, p2, p3

    aput p3, p1, v0

    aget p3, p2, p4

    aput p3, p1, v4

    aget p2, p2, v0

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xdc

    .line 3
    sget p2, Lk0/n;->z:I

    const/16 p4, 0xd0

    invoke-virtual {p0, p1, p2, p4, p3}, Lk0/n;->g3(IIII)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p0, p2, v0}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xda

    .line 5
    sget v0, Lk0/n;->z:I

    aget p3, p2, p3

    aget p2, p2, p4

    invoke-virtual {p0, p1, v0, p3, p2}, Lk0/n;->g3(IIII)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a3()I
    .locals 2

    .line 1
    sget v0, Lu0/b;->K3:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method

.method public final b3(I)V
    .locals 3

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0xe3

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    aput v1, p1, v0

    const/16 v2, -0x66

    aput v2, p1, v1

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 1
    invoke-virtual {p0}, Lk0/n;->a3()I

    move-result v0

    const/4 v1, 0x4

    aput v0, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3([[Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    aget-object v2, p1, p2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p1, p2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e3([[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2
    :goto_1
    aget-object v3, p1, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 3
    aget-object v3, p1, v1

    const-string v4, ""

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g3(IIII)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    aput p2, v0, v2

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x5

    aput p4, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
