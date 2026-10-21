.class public Lk0/s8;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Runnable;

.field public j:Z

.field public k:I

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Z

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/s8;->b:I

    .line 3
    iput v1, v0, Lk0/s8;->e:I

    const/16 v2, 0x30

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 4
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

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    const/16 v25, 0x1b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    const/16 v25, 0x1c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    const/16 v25, 0x1d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    const/16 v25, 0x1e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    const/16 v25, 0x1f

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    const/16 v25, 0x20

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    const/16 v25, 0x21

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    const/16 v25, 0x22

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    const/16 v25, 0x23

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    const/16 v25, 0x24

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    const/16 v25, 0x25

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    const/16 v25, 0x26

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    const/16 v25, 0x27

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    const/16 v25, 0x28

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    const/16 v25, 0x29

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    const/16 v25, 0x2a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    const/16 v25, 0x2b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    const/16 v25, 0x2c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    const/16 v25, 0x2d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    const/16 v25, 0x2e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    const/16 v25, 0x2f

    aput-object v5, v3, v25

    iput-object v3, v0, Lk0/s8;->f:[[I

    const/16 v3, 0x31

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_30

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_31

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_32

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_33

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_34

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_35

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_36

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_37

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_38

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_39

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_3a

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_3b

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_3c

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_3d

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_3e

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3f

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_40

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_41

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_42

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_43

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_44

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_45

    const/16 v6, 0x15

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_46

    const/16 v6, 0x16

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_47

    const/16 v6, 0x17

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_48

    const/16 v6, 0x18

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_49

    const/16 v6, 0x19

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4a

    const/16 v6, 0x1a

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4b

    const/16 v6, 0x1b

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4c

    const/16 v6, 0x1c

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4d

    const/16 v6, 0x1d

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4e

    const/16 v6, 0x1e

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4f

    const/16 v6, 0x1f

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_50

    const/16 v6, 0x20

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_51

    const/16 v6, 0x21

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_52

    const/16 v6, 0x22

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_53

    const/16 v6, 0x23

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_54

    const/16 v6, 0x24

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_55

    const/16 v6, 0x25

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_56

    const/16 v6, 0x26

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_57

    const/16 v6, 0x27

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_58

    const/16 v6, 0x28

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_59

    const/16 v6, 0x29

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5a

    const/16 v6, 0x2a

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5b

    const/16 v6, 0x2b

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5c

    const/16 v6, 0x2c

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5d

    const/16 v6, 0x2d

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5e

    const/16 v6, 0x2e

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5f

    const/16 v6, 0x2f

    aput-object v5, v3, v6

    new-array v4, v4, [I

    fill-array-data v4, :array_60

    aput-object v4, v3, v2

    iput-object v3, v0, Lk0/s8;->g:[[I

    .line 6
    new-instance v2, Lk0/s8$a;

    invoke-direct {v2, v0}, Lk0/s8$a;-><init>(Lk0/s8;)V

    iput-object v2, v0, Lk0/s8;->i:Ljava/lang/Runnable;

    .line 7
    iput-boolean v1, v0, Lk0/s8;->j:Z

    .line 8
    iput v1, v0, Lk0/s8;->k:I

    .line 9
    iput v1, v0, Lk0/s8;->l:I

    .line 10
    new-instance v2, Lk0/s8$b;

    invoke-direct {v2, v0}, Lk0/s8$b;-><init>(Lk0/s8;)V

    iput-object v2, v0, Lk0/s8;->m:Ljava/lang/Runnable;

    .line 11
    iput-boolean v1, v0, Lk0/s8;->n:Z

    .line 12
    iput v1, v0, Lk0/s8;->o:I

    .line 13
    new-instance v1, Lk0/s8$c;

    invoke-direct {v1, v0}, Lk0/s8$c;-><init>(Lk0/s8;)V

    iput-object v1, v0, Lk0/s8;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lk0/s8$d;

    invoke-direct {v1, v0}, Lk0/s8$d;-><init>(Lk0/s8;)V

    iput-object v1, v0, Lk0/s8;->q:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/s8$e;

    invoke-direct {v1, v0}, Lk0/s8$e;-><init>(Lk0/s8;)V

    iput-object v1, v0, Lk0/s8;->r:Ljava/lang/Runnable;

    .line 16
    new-instance v1, Lk0/s8$f;

    invoke-direct {v1, v0}, Lk0/s8$f;-><init>(Lk0/s8;)V

    iput-object v1, v0, Lk0/s8;->s:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x86
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x7
        0x15
    .end array-data

    :array_d
    .array-data 4
        0x8
        0x16
    .end array-data

    :array_e
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_f
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_10
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_11
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_13
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_14
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_15
    .array-data 4
        0x10
        0xb
    .end array-data

    :array_16
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_17
    .array-data 4
        0x12
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_19
    .array-data 4
        0x14
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x15
        0x27
    .end array-data

    :array_1b
    .array-data 4
        0x16
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_1d
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_1e
    .array-data 4
        0x19
        0x21
    .end array-data

    :array_1f
    .array-data 4
        0x1a
        0x20
    .end array-data

    :array_20
    .array-data 4
        0x1b
        0x10
    .end array-data

    :array_21
    .array-data 4
        0x1c
        0x21
    .end array-data

    :array_22
    .array-data 4
        0x1d
        0x20
    .end array-data

    :array_23
    .array-data 4
        0x34
        0x21
    .end array-data

    :array_24
    .array-data 4
        0x35
        0x20
    .end array-data

    :array_25
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_26
    .array-data 4
        0x43
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x44
        0x6
    .end array-data

    :array_28
    .array-data 4
        0x45
        0x9
    .end array-data

    :array_29
    .array-data 4
        0x46
        0x12
    .end array-data

    :array_2a
    .array-data 4
        0x50
        0x5
    .end array-data

    :array_2b
    .array-data 4
        0x51
        0x2
    .end array-data

    :array_2c
    .array-data 4
        0x52
        0x24
    .end array-data

    :array_2d
    .array-data 4
        0x53
        0x5
    .end array-data

    :array_2e
    .array-data 4
        0x54
        0x2
    .end array-data

    :array_2f
    .array-data 4
        0x55
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_31
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_32
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_33
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_35
    .array-data 4
        0x86
        0x12
    .end array-data

    :array_36
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_37
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_38
    .array-data 4
        0x2
        0x2c
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x2b
    .end array-data

    :array_3a
    .array-data 4
        0x4
        0x2a
    .end array-data

    :array_3b
    .array-data 4
        0x5
        0x0
    .end array-data

    :array_3c
    .array-data 4
        0x6
        0x37
    .end array-data

    :array_3d
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_3e
    .array-data 4
        0x8
        0x28
    .end array-data

    :array_3f
    .array-data 4
        0x9
        0x29
    .end array-data

    :array_40
    .array-data 4
        0xa
        0x4
    .end array-data

    :array_41
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_42
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_43
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_44
    .array-data 4
        0xe
        0xb
    .end array-data

    :array_45
    .array-data 4
        0xf
        -0x1
    .end array-data

    :array_46
    .array-data 4
        0x10
        -0x1
    .end array-data

    :array_47
    .array-data 4
        0x11
        0x37
    .end array-data

    :array_48
    .array-data 4
        0x12
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x13
        0x1d
    .end array-data

    :array_4a
    .array-data 4
        0x14
        0x15
    .end array-data

    :array_4b
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_4c
    .array-data 4
        0x16
        0x2d
    .end array-data

    :array_4d
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_4e
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_4f
    .array-data 4
        0x19
        0x1f
    .end array-data

    :array_50
    .array-data 4
        0x1a
        0x1e
    .end array-data

    :array_51
    .array-data 4
        0x1b
        -0x1
    .end array-data

    :array_52
    .array-data 4
        0x1c
        -0x1
    .end array-data

    :array_53
    .array-data 4
        0x1d
        -0x1
    .end array-data

    :array_54
    .array-data 4
        0x34
        0x1b
    .end array-data

    :array_55
    .array-data 4
        0x35
        0x1c
    .end array-data

    :array_56
    .array-data 4
        0x36
        -0x1
    .end array-data

    :array_57
    .array-data 4
        0x40
        -0x1
    .end array-data

    :array_58
    .array-data 4
        0x43
        0x1
    .end array-data

    :array_59
    .array-data 4
        0x44
        0x6
    .end array-data

    :array_5a
    .array-data 4
        0x45
        0x9
    .end array-data

    :array_5b
    .array-data 4
        0x46
        0x12
    .end array-data

    :array_5c
    .array-data 4
        0x50
        0x9
    .end array-data

    :array_5d
    .array-data 4
        0x51
        0x2
    .end array-data

    :array_5e
    .array-data 4
        0x53
        0x9
    .end array-data

    :array_5f
    .array-data 4
        0x54
        0x36
    .end array-data

    :array_60
    .array-data 4
        0x60
        0x12
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_15

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    aget v4, v1, v2

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Air codeCmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "      value = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x3

    const/16 v11, 0x14

    const/16 v12, 0x15

    const/16 v13, 0x10

    const/16 v14, 0xd

    const/16 v15, 0xc

    const/16 v16, 0xb

    if-ne v5, v2, :cond_a

    const/16 v5, 0xa

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 5
    :pswitch_1
    aget v1, v1, v2

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v7}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v6}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    aget v1, v1, v2

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v10}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    aget v1, v1, v2

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_3

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0, v5}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    .line 13
    invoke-virtual {v0, v1}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_4
    aget v1, v1, v2

    if-eqz v1, :cond_5

    .line 15
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_15

    const/16 v1, 0x22

    .line 16
    invoke-virtual {v0, v1}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 17
    :cond_5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v2, :cond_15

    const/16 v1, 0x23

    .line 18
    invoke-virtual {v0, v1}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 19
    :pswitch_5
    aget v1, v1, v2

    if-eqz v1, :cond_6

    .line 20
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-nez v1, :cond_15

    .line 21
    invoke-virtual {v0, v11}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 22
    :cond_6
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-ne v1, v2, :cond_15

    .line 23
    invoke-virtual {v0, v11}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_6
    aget v1, v1, v2

    if-eqz v1, :cond_7

    .line 25
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-nez v1, :cond_15

    .line 26
    invoke-virtual {v0, v12}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 27
    :cond_7
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-ne v1, v2, :cond_15

    .line 28
    invoke-virtual {v0, v12}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 29
    :pswitch_7
    aget v1, v1, v2

    const/16 v3, 0x17

    if-eqz v1, :cond_8

    .line 30
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-nez v1, :cond_15

    .line 31
    invoke-virtual {v0, v3}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 32
    :cond_8
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-ne v1, v2, :cond_15

    .line 33
    invoke-virtual {v0, v3}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 34
    :pswitch_8
    aget v1, v1, v2

    if-eqz v1, :cond_9

    .line 35
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-nez v1, :cond_15

    .line 36
    invoke-virtual {v0, v2}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    .line 37
    :cond_9
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-ne v1, v2, :cond_15

    .line 38
    invoke-virtual {v0, v2}, Lk0/s8;->a3(I)V

    goto/16 :goto_0

    :cond_a
    packed-switch v4, :pswitch_data_1

    :pswitch_9
    goto/16 :goto_0

    .line 39
    :pswitch_a
    aget v1, v1, v2

    if-eqz v1, :cond_b

    .line 40
    invoke-virtual {v0, v11}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 41
    :cond_b
    invoke-virtual {v0, v12}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 42
    :pswitch_b
    aget v1, v1, v2

    if-eqz v1, :cond_c

    .line 43
    invoke-virtual {v0, v6}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 44
    :cond_c
    invoke-virtual {v0, v7}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 45
    :pswitch_c
    aget v1, v1, v2

    if-eq v1, v9, :cond_e

    if-eq v1, v8, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x6

    .line 46
    invoke-virtual {v0, v1}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x7

    .line 47
    invoke-virtual {v0, v1}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 48
    :pswitch_d
    aget v1, v1, v2

    if-eqz v1, :cond_f

    .line 49
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_15

    .line 50
    invoke-virtual {v0, v10}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 51
    :cond_f
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v2, :cond_15

    .line 52
    invoke-virtual {v0, v10}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 53
    :pswitch_e
    aget v1, v1, v2

    const/16 v3, 0x1b

    if-eqz v1, :cond_10

    .line 54
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-nez v1, :cond_15

    .line 55
    invoke-virtual {v0, v3}, Lk0/s8;->b3(I)V

    goto/16 :goto_0

    .line 56
    :cond_10
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-ne v1, v2, :cond_15

    .line 57
    invoke-virtual {v0, v3}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 58
    :pswitch_f
    aget v1, v1, v2

    const/16 v3, 0x41

    if-eqz v1, :cond_11

    .line 59
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-nez v1, :cond_15

    .line 60
    invoke-virtual {v0, v15}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 61
    :cond_11
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_15

    .line 62
    invoke-virtual {v0, v15}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 63
    :pswitch_10
    aget v1, v1, v2

    if-eqz v1, :cond_12

    .line 64
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-nez v1, :cond_15

    .line 65
    invoke-virtual {v0, v3}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 66
    :cond_12
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-ne v1, v2, :cond_15

    .line 67
    invoke-virtual {v0, v3}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 68
    :pswitch_11
    aget v1, v1, v2

    if-eqz v1, :cond_13

    .line 69
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-nez v1, :cond_15

    .line 70
    invoke-virtual {v0, v2}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 71
    :cond_13
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-ne v1, v2, :cond_15

    .line 72
    invoke-virtual {v0, v2}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 73
    :pswitch_12
    aget v1, v1, v2

    if-eqz v1, :cond_14

    .line 74
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-nez v1, :cond_15

    .line 75
    invoke-virtual {v0, v2}, Lk0/s8;->b3(I)V

    goto :goto_0

    .line 76
    :cond_14
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-ne v1, v2, :cond_15

    .line 77
    invoke-virtual {v0, v2}, Lk0/s8;->b3(I)V

    :cond_15
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    const/4 v3, 0x0

    .line 6
    iput v3, v0, Lk0/mt;->o:I

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v4, p0, Lk0/s8;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget v0, Lk0/nt;->c:I

    if-eq v0, v2, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    .line 9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/16 v0, 0x9a

    :goto_0
    const/16 v4, 0xb7

    if-gt v0, v4, :cond_1

    new-array v4, v2, [I

    aput v2, v4, v3

    .line 10
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v2, v0, Lk0/mt;->e:I

    .line 13
    iput v2, v0, Lk0/mt;->f:I

    .line 14
    iput v2, v0, Lk0/mt;->g:I

    .line 15
    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    :goto_1
    iget-object v0, p0, Lk0/s8;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lk0/s8;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 19
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 20
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v0, Lk0/mt;->i:I

    .line 21
    :cond_3
    iget-object v0, p0, Lk0/s8;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

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
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1a

    const/16 v4, 0xd

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v11, :cond_57

    const/16 v14, 0xf

    const/16 v5, 0x8

    const/4 v13, 0x2

    if-eq v2, v13, :cond_3e

    if-eq v2, v8, :cond_33

    if-eq v2, v4, :cond_32

    const/16 v12, 0x13

    if-eq v2, v12, :cond_31

    if-eq v2, v3, :cond_13

    const/16 v3, 0x26

    if-eq v2, v3, :cond_12

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_10

    const/16 v3, 0x7d

    const/4 v6, 0x0

    if-eq v2, v3, :cond_b

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_35

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const/16 v3, 0xc4

    new-array v4, v11, [I

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 3
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 4
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0xc4

    new-array v5, v11, [I

    aput v2, v5, v10

    invoke-static {v3, v4, v5, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_35

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 6
    aget-byte v3, v1, v3

    const/16 v4, 0x28

    new-array v5, v11, [I

    and-int/2addr v2, v9

    aput v2, v5, v10

    .line 7
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v14

    aput v5, v4, v10

    .line 8
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v3, 0xf

    if-eq v2, v11, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v8, :cond_1

    if-eq v2, v7, :cond_0

    move v4, v10

    move v5, v4

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_0
    move v4, v10

    move v5, v4

    move v6, v11

    goto :goto_1

    :cond_1
    move v4, v10

    move v5, v11

    goto :goto_0

    :cond_2
    move v4, v10

    move v6, v4

    move v5, v11

    goto :goto_1

    :cond_3
    move v5, v10

    move v6, v5

    move v4, v11

    :goto_1
    const/16 v7, 0x2b

    new-array v9, v11, [I

    aput v4, v9, v10

    .line 9
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2e

    new-array v7, v11, [I

    aput v5, v7, v10

    .line 10
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2f

    new-array v5, v11, [I

    aput v6, v5, v10

    .line 11
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x56

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 12
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v4, v11, [I

    shr-int/2addr v3, v8

    and-int/2addr v3, v8

    aput v3, v4, v10

    .line 13
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    const/16 v3, 0xbf

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 15
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbe

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 16
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbd

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 17
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbc

    new-array v4, v11, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v4, v10

    .line 18
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    const/16 v3, 0xc0

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 20
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbb

    new-array v4, v11, [I

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 21
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 23
    aget-byte v3, v1, v2

    add-int/lit8 v8, v2, 0x1

    .line 24
    aget-byte v8, v1, v8

    add-int/lit8 v14, v2, 0x2

    .line 25
    aget-byte v14, v1, v14

    add-int/lit8 v16, v2, 0x3

    .line 26
    aget-byte v6, v1, v16

    add-int/lit8 v16, v2, 0x4

    .line 27
    aget-byte v12, v1, v16

    add-int/lit8 v16, v2, 0x5

    .line 28
    aget-byte v15, v1, v16

    add-int/lit8 v16, v2, 0x6

    .line 29
    aget-byte v7, v1, v16

    add-int/lit8 v16, v2, 0x7

    .line 30
    aget-byte v13, v1, v16

    add-int/lit8 v16, v2, 0xa

    .line 31
    aget-byte v16, v1, v16

    add-int/lit8 v18, v2, 0xb

    .line 32
    aget-byte v18, v1, v18

    add-int/lit8 v19, v2, 0xc

    .line 33
    aget-byte v19, v1, v19

    add-int/2addr v2, v4

    .line 34
    aget-byte v2, v1, v2

    new-array v4, v11, [I

    and-int/2addr v3, v9

    shl-int/2addr v3, v5

    and-int/2addr v8, v9

    or-int/2addr v3, v8

    aput v3, v4, v10

    const/16 v8, 0x8a

    .line 35
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x8b

    new-array v8, v11, [I

    and-int/2addr v14, v9

    shl-int/2addr v14, v5

    and-int/2addr v6, v9

    or-int/2addr v6, v14

    aput v6, v8, v10

    .line 36
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x8c

    new-array v8, v11, [I

    and-int/2addr v12, v9

    shl-int/2addr v12, v5

    and-int/lit16 v14, v15, 0xff

    or-int/2addr v12, v14

    aput v12, v8, v10

    .line 37
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x8d

    new-array v8, v11, [I

    and-int/2addr v7, v9

    shl-int/2addr v7, v5

    and-int/2addr v9, v13

    or-int/2addr v7, v9

    aput v7, v8, v10

    .line 38
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    .line 39
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v5, v9, v10

    const/16 v13, 0x2100

    const/4 v14, 0x4

    mul-int/2addr v3, v14

    const/16 v15, 0xa

    div-int/2addr v3, v15

    or-int/2addr v3, v13

    aput v3, v9, v11

    const/16 v3, 0x419

    const/4 v13, 0x0

    invoke-static {v4, v3, v9, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v9, v8, [I

    aput v5, v9, v10

    const/16 v17, 0x2200

    mul-int/2addr v6, v14

    .line 40
    div-int/2addr v6, v15

    or-int v6, v17, v6

    aput v6, v9, v11

    invoke-static {v4, v3, v9, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v6, v8, [I

    aput v5, v6, v10

    const/16 v9, 0x2300

    mul-int/2addr v12, v14

    .line 41
    div-int/2addr v12, v15

    or-int/2addr v9, v12

    aput v9, v6, v11

    invoke-static {v4, v3, v6, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v6, v8, [I

    aput v5, v6, v10

    const/16 v5, 0x2400

    mul-int/2addr v7, v14

    .line 42
    div-int/2addr v7, v15

    or-int/2addr v5, v7

    aput v5, v6, v11

    invoke-static {v4, v3, v6, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v3, 0x8e

    new-array v4, v11, [I

    and-int/lit8 v5, v16, 0x1

    aput v5, v4, v10

    .line 43
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8f

    new-array v4, v11, [I

    shr-int/lit8 v5, v16, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 44
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x90

    new-array v4, v11, [I

    const/4 v5, 0x2

    shr-int/lit8 v6, v16, 0x2

    and-int/lit8 v5, v6, 0x1

    aput v5, v4, v10

    .line 45
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x91

    new-array v4, v11, [I

    and-int/lit8 v5, v18, 0x1

    aput v5, v4, v10

    .line 46
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v4, v11, [I

    shr-int/lit8 v5, v18, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 47
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x93

    new-array v4, v11, [I

    const/4 v5, 0x2

    shr-int/lit8 v6, v18, 0x2

    and-int/lit8 v5, v6, 0x1

    aput v5, v4, v10

    .line 48
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x94

    new-array v4, v11, [I

    and-int/lit8 v5, v19, 0x1

    aput v5, v4, v10

    .line 49
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x95

    new-array v4, v11, [I

    shr-int/lit8 v5, v19, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 50
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x96

    new-array v4, v11, [I

    const/4 v5, 0x2

    shr-int/lit8 v6, v19, 0x2

    and-int/lit8 v5, v6, 0x1

    aput v5, v4, v10

    .line 51
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x97

    new-array v4, v11, [I

    and-int/lit8 v5, v2, 0x1

    aput v5, v4, v10

    .line 52
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x98

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 53
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x99

    new-array v4, v11, [I

    const/4 v5, 0x2

    shr-int/2addr v2, v5

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 54
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 56
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 57
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 58
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x6

    .line 59
    aget-byte v7, v1, v7

    const/16 v8, 0x87

    new-array v12, v11, [I

    and-int/2addr v2, v9

    shl-int/2addr v2, v5

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    aput v2, v12, v10

    .line 60
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    and-int/2addr v4, v9

    shl-int/2addr v4, v5

    and-int/lit16 v5, v6, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v10

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v11, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v10

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_6
    add-int/lit8 v2, p2, 0x3

    .line 63
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 64
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x6

    .line 65
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x7

    .line 66
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x8

    .line 67
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x9

    .line 68
    aget-byte v8, v1, v8

    const/16 v12, 0x84

    new-array v13, v11, [I

    and-int/2addr v2, v9

    aput v2, v13, v10

    .line 69
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v11

    and-int/lit8 v3, v3, 0x7f

    if-ne v2, v11, :cond_4

    rsub-int v3, v3, 0xff

    :cond_4
    const/16 v2, 0x85

    new-array v12, v11, [I

    aput v3, v12, v10

    .line 70
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v3, v6, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v7, 0xff

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    and-int/lit16 v3, v8, 0xff

    or-int/2addr v2, v3

    const/16 v3, 0x86

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 71
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    .line 72
    :pswitch_7
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_35

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 73
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 74
    invoke-static {v3, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    const/4 v4, 0x2

    .line 75
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 76
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    const/4 v4, 0x2

    .line 77
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 78
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    const/4 v4, 0x4

    .line 79
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 80
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v11

    aput v2, v3, v10

    const/4 v2, 0x5

    .line 81
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    .line 82
    :pswitch_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_60

    add-int/lit8 v2, p2, 0x2

    .line 83
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x3

    .line 84
    aget-byte v5, v1, v4

    and-int/2addr v5, v9

    add-int/lit8 v6, p2, 0x4

    .line 85
    aget-byte v7, v1, v6

    and-int/2addr v7, v9

    add-int/lit8 v8, p2, 0x5

    .line 86
    aget-byte v12, v1, v8

    and-int/2addr v12, v9

    if-nez v3, :cond_6

    if-nez v5, :cond_6

    if-nez v7, :cond_6

    if-nez v12, :cond_6

    .line 87
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 88
    :cond_6
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_7

    sget v10, Ll0/c0;->h:I

    if-ne v10, v5, :cond_7

    sget v10, Ll0/c0;->i:I

    if-ne v10, v7, :cond_7

    sget v10, Ll0/c0;->j:I

    if-eq v10, v12, :cond_8

    .line 89
    :cond_7
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_8

    .line 90
    invoke-static {v11}, Lu0/d;->C2(I)V

    const/4 v10, 0x4

    .line 91
    sput v10, Ll0/c0;->k:I

    .line 92
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 93
    :cond_8
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 94
    sput v5, Ll0/c0;->h:I

    .line 95
    sput v7, Ll0/c0;->i:I

    .line 96
    sput v12, Ll0/c0;->j:I

    .line 97
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 98
    aget-byte v2, v1, v4

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 99
    aget-byte v2, v1, v6

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 100
    aget-byte v2, v1, v8

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    goto/16 :goto_35

    .line 101
    :pswitch_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_60

    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 103
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 104
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 105
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/s8;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    goto/16 :goto_35

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 107
    aget-byte v3, v1, v3

    const/16 v4, 0x82

    new-array v6, v11, [I

    and-int/2addr v2, v9

    shl-int/2addr v2, v5

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    .line 108
    div-int/lit8 v2, v2, 0x10

    aput v2, v6, v10

    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 109
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 110
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 111
    aget-byte v4, v1, v4

    const/16 v5, 0x75

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 112
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x76

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 113
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x77

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 114
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x78

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 115
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x79

    new-array v6, v11, [I

    shr-int/lit8 v7, v3, 0x4

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 116
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x80

    new-array v6, v11, [I

    shr-int/lit8 v9, v4, 0x4

    and-int/2addr v9, v11

    aput v9, v6, v10

    .line 117
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xb9

    new-array v6, v11, [I

    shr-int/lit8 v9, v3, 0x6

    and-int/lit8 v12, v9, 0x3

    aput v12, v6, v10

    .line 118
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x7e

    new-array v6, v11, [I

    shr-int/lit8 v12, v4, 0x1

    and-int/2addr v12, v11

    aput v12, v6, v10

    .line 119
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x7a

    new-array v6, v11, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v11

    aput v12, v6, v10

    .line 120
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x7b

    new-array v6, v11, [I

    and-int/2addr v2, v8

    aput v2, v6, v10

    .line 121
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v5, v11, [I

    const/4 v6, 0x7

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aput v3, v5, v10

    .line 122
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    and-int/lit8 v5, v9, 0x1

    aput v5, v3, v10

    .line 123
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v11, [I

    aput v7, v3, v10

    .line 124
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 125
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    .line 126
    :pswitch_d
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_9

    goto/16 :goto_35

    :cond_9
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v2, v1, v2

    invoke-virtual {v0, v2}, Lk0/s8;->e3(I)V

    goto/16 :goto_35

    :pswitch_e
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Lk0/s8;->d3([BII)V

    goto/16 :goto_35

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    .line 129
    aget-byte v2, v1, v2

    const/16 v3, 0xb8

    new-array v4, v11, [I

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 130
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_10
    add-int/lit8 v2, p2, 0x2

    .line 131
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 132
    aget-byte v3, v1, v3

    const/16 v4, 0x68

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 133
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x69

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 134
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6a

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 135
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 136
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6c

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 137
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6d

    new-array v5, v11, [I

    and-int/2addr v2, v11

    aput v2, v5, v10

    .line 138
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 139
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v8

    aput v5, v4, v10

    .line 140
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 141
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 142
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v11, [I

    and-int/2addr v3, v11

    aput v3, v4, v10

    .line 143
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :pswitch_11
    add-int/lit8 v2, p2, 0x2

    .line 144
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 145
    aget-byte v3, v1, v3

    const/16 v4, 0x61

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 146
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x62

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 147
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x63

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 148
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x64

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 149
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x65

    new-array v5, v11, [I

    and-int/2addr v2, v11

    aput v2, v5, v10

    .line 150
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v11

    if-nez v2, :cond_a

    const/16 v2, 0x66

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 151
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    const/16 v2, 0x66

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v8

    aput v5, v4, v10

    .line 152
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x67

    new-array v4, v11, [I

    and-int/2addr v3, v8

    aput v3, v4, v10

    .line 153
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 154
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    if-eq v2, v11, :cond_e

    if-eq v2, v8, :cond_d

    if-eq v2, v5, :cond_c

    goto/16 :goto_35

    :cond_c
    add-int/lit8 v2, p2, 0x3

    .line 155
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 156
    aget-byte v3, v1, v3

    const/16 v4, 0x21c

    .line 157
    invoke-static {v2, v3, v11, v4}, Lk0/qt;->i(IIZI)V

    .line 158
    iput-boolean v11, v0, Lk0/s8;->n:Z

    goto/16 :goto_35

    :cond_d
    add-int/lit8 v2, p2, 0x4

    .line 159
    aget-byte v2, v1, v2

    shl-int/2addr v2, v5

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    const/16 v3, 0x407

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 160
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 161
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v11, v4, v10

    aput v2, v4, v11

    const/16 v2, 0x419

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_e
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 162
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    add-int/lit8 v2, p2, 0x3

    .line 163
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aget-byte v2, v1, v2

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    and-int/2addr v2, v11

    invoke-static {v3, v2, v10}, Ll0/c0;->b(III)V

    goto/16 :goto_35

    :cond_f
    const/4 v4, 0x4

    add-int/lit8 v2, p2, 0x3

    .line 164
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aget-byte v2, v1, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v11

    invoke-static {v3, v2, v10}, Ll0/c0;->a(III)V

    goto/16 :goto_35

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 165
    aget-byte v3, v1, v2

    if-ne v3, v11, :cond_11

    const/16 v2, 0x8a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 166
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 167
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    mul-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 168
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    mul-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 169
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    mul-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    .line 170
    :cond_11
    aget-byte v2, v1, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_60

    const/16 v2, 0xc1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 171
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 172
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    .line 173
    :cond_12
    iget-boolean v2, v0, Lk0/s8;->n:Z

    if-nez v2, :cond_60

    add-int/lit8 v2, p2, 0x2

    .line 174
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    const/16 v4, 0x21c0

    invoke-static {v2, v3, v10, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_35

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 175
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 176
    aget-byte v3, v1, v3

    and-int/2addr v2, v9

    if-eqz v2, :cond_30

    if-eq v2, v11, :cond_2c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_24

    if-eq v2, v8, :cond_21

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1c

    const/4 v4, 0x5

    if-eq v2, v4, :cond_14

    goto/16 :goto_35

    :cond_14
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_15

    move v2, v10

    goto :goto_5

    :cond_15
    move v2, v11

    :goto_5
    const/16 v4, 0xb1

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 177
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v11

    if-nez v2, :cond_16

    move v2, v10

    goto :goto_6

    :cond_16
    move v2, v11

    :goto_6
    const/16 v4, 0xb2

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 178
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v11

    if-nez v2, :cond_17

    move v2, v10

    goto :goto_7

    :cond_17
    move v2, v11

    :goto_7
    const/16 v4, 0xb3

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 179
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v11

    if-nez v2, :cond_18

    move v2, v10

    goto :goto_8

    :cond_18
    move v2, v11

    :goto_8
    const/16 v4, 0xb4

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 180
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x4

    and-int/2addr v2, v11

    if-nez v2, :cond_19

    move v2, v10

    goto :goto_9

    :cond_19
    move v2, v11

    :goto_9
    const/16 v4, 0xb5

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 181
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v11

    if-nez v2, :cond_1a

    move v2, v10

    goto :goto_a

    :cond_1a
    move v2, v11

    :goto_a
    const/16 v4, 0xb6

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 182
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v11

    if-nez v2, :cond_1b

    move v2, v10

    goto :goto_b

    :cond_1b
    move v2, v11

    :goto_b
    const/16 v3, 0xb7

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 183
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_1c
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_1d

    move v2, v10

    goto :goto_c

    :cond_1d
    move v2, v11

    :goto_c
    const/16 v4, 0xad

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 184
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v11

    if-nez v2, :cond_1e

    move v2, v10

    goto :goto_d

    :cond_1e
    move v2, v11

    :goto_d
    const/16 v4, 0xae

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 185
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v11

    if-nez v2, :cond_1f

    move v2, v10

    goto :goto_e

    :cond_1f
    move v2, v11

    :goto_e
    const/16 v4, 0xaf

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 186
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v11

    if-nez v2, :cond_20

    move v2, v10

    goto :goto_f

    :cond_20
    move v2, v11

    :goto_f
    const/16 v3, 0xac

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 187
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_21
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_22

    move v2, v10

    goto :goto_10

    :cond_22
    move v2, v11

    :goto_10
    const/16 v4, 0xab

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 188
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v11

    if-nez v2, :cond_23

    move v2, v10

    goto :goto_11

    :cond_23
    move v2, v11

    :goto_11
    const/16 v3, 0xac

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 189
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_24
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_25

    move v2, v10

    goto :goto_12

    :cond_25
    move v2, v11

    :goto_12
    const/16 v4, 0xa4

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 190
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v11

    if-nez v2, :cond_26

    move v2, v10

    goto :goto_13

    :cond_26
    move v2, v11

    :goto_13
    new-array v4, v11, [I

    aput v2, v4, v10

    const/16 v2, 0xa5

    .line 191
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v11

    if-nez v2, :cond_27

    move v2, v10

    goto :goto_14

    :cond_27
    move v2, v11

    :goto_14
    const/16 v4, 0xa6

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 192
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v11

    if-nez v2, :cond_28

    move v2, v10

    goto :goto_15

    :cond_28
    move v2, v11

    :goto_15
    const/16 v4, 0xa7

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 193
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x4

    and-int/2addr v2, v11

    if-nez v2, :cond_29

    move v2, v10

    goto :goto_16

    :cond_29
    move v2, v11

    :goto_16
    const/16 v4, 0xa8

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 194
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v11

    if-nez v2, :cond_2a

    move v2, v10

    goto :goto_17

    :cond_2a
    move v2, v11

    :goto_17
    const/16 v4, 0xa9

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 195
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v11

    if-nez v2, :cond_2b

    move v2, v10

    goto :goto_18

    :cond_2b
    move v2, v11

    :goto_18
    const/16 v3, 0xaa

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 196
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_2c
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_2d

    move v2, v10

    goto :goto_19

    :cond_2d
    move v2, v11

    :goto_19
    const/16 v4, 0xa2

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 197
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v11

    if-nez v2, :cond_2e

    move v2, v10

    goto :goto_1a

    :cond_2e
    move v2, v11

    :goto_1a
    const/16 v4, 0xa3

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 198
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x2

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v11

    if-nez v2, :cond_2f

    move v2, v10

    goto :goto_1b

    :cond_2f
    move v2, v11

    :goto_1b
    const/16 v3, 0xba

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 199
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_30
    const/16 v2, 0x9a

    new-array v4, v11, [I

    and-int/lit8 v5, v3, 0x1

    aput v5, v4, v10

    .line 200
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 201
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 202
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 203
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 204
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 205
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 206
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v4, v11, [I

    const/4 v5, 0x7

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    aput v3, v4, v10

    .line 207
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_31
    add-int/lit8 v2, p2, 0x2

    .line 208
    aget-byte v2, v1, v2

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v10

    const/16 v4, 0x1f

    .line 209
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x20

    new-array v4, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v8

    aput v2, v4, v10

    .line 210
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_32
    const/16 v2, 0x83

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 211
    aget-byte v4, v1, v4

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_35

    :cond_33
    add-int/lit8 v2, p2, 0x2

    .line 212
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 213
    aget-byte v3, v1, v3

    add-int/lit8 v6, p2, 0x6

    .line 214
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x8

    .line 215
    aget-byte v7, v1, v7

    new-array v8, v11, [I

    shr-int/lit8 v12, v2, 0x7

    and-int/2addr v12, v11

    aput v12, v8, v10

    const/16 v12, 0xa

    .line 216
    invoke-static {v12, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 217
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    new-array v8, v11, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v11

    if-nez v12, :cond_34

    move v12, v11

    goto :goto_1c

    :cond_34
    move v12, v10

    :goto_1c
    aput v12, v8, v10

    const/16 v12, 0xc

    .line 218
    invoke-static {v12, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x10

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 219
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x36

    new-array v12, v11, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v11

    aput v13, v12, v10

    .line 220
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v8, v3, 0x4

    and-int/2addr v8, v11

    if-nez v8, :cond_35

    const/16 v5, 0x15

    new-array v8, v11, [I

    const/4 v12, 0x7

    and-int/2addr v2, v12

    aput v2, v8, v10

    .line 221
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_35
    const/4 v12, 0x7

    if-ne v8, v11, :cond_37

    .line 222
    sget v8, Lk0/nt;->c:I

    const/4 v13, 0x4

    if-ne v8, v13, :cond_36

    const/16 v8, 0x15

    new-array v13, v11, [I

    and-int/2addr v2, v12

    add-int/2addr v2, v5

    aput v2, v13, v10

    .line 223
    invoke-static {v8, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_36
    const/16 v2, 0x15

    new-array v8, v11, [I

    aput v5, v8, v10

    .line 224
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    :cond_37
    :goto_1d
    const/16 v2, 0x34

    new-array v5, v11, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v11

    aput v8, v5, v10

    .line 225
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v3, 0xf

    and-int/2addr v2, v9

    packed-switch v2, :pswitch_data_4

    move v5, v10

    move v8, v5

    move v12, v8

    :goto_1e
    move v13, v12

    :goto_1f
    move v15, v13

    goto/16 :goto_20

    :pswitch_12
    move v5, v10

    move v8, v5

    move v12, v11

    goto :goto_1e

    :pswitch_13
    move v5, v10

    move v8, v5

    move v13, v8

    move v12, v11

    move v15, v12

    goto :goto_20

    :pswitch_14
    move v5, v10

    move v8, v5

    move v13, v8

    move v15, v13

    move v12, v11

    goto :goto_20

    :pswitch_15
    move v5, v10

    move v8, v5

    move v15, v8

    move v12, v11

    move v13, v12

    goto :goto_20

    :pswitch_16
    move v5, v10

    move v8, v5

    move v12, v8

    move v15, v12

    move v13, v11

    goto :goto_20

    :pswitch_17
    move v5, v10

    move v8, v5

    move v12, v8

    move v13, v11

    goto :goto_1f

    :pswitch_18
    move v5, v10

    move v8, v5

    move v12, v8

    move v13, v12

    move v15, v11

    goto :goto_20

    :pswitch_19
    move v5, v10

    move v12, v5

    move v13, v12

    move v15, v13

    move v8, v11

    goto :goto_20

    :pswitch_1a
    move v8, v10

    move v12, v8

    move v13, v12

    move v15, v13

    move v5, v11

    :goto_20
    const/16 v4, 0x31

    new-array v9, v11, [I

    aput v5, v9, v10

    .line 226
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v8, v4, v10

    .line 227
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x12

    new-array v5, v11, [I

    aput v12, v5, v10

    .line 228
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v5, v11, [I

    aput v13, v5, v10

    .line 229
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v5, v11, [I

    aput v15, v5, v10

    .line 230
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4d

    new-array v5, v11, [I

    aput v2, v5, v10

    .line 231
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v11, [I

    const/4 v5, 0x5

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    aput v3, v4, v10

    .line 232
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 233
    aget-byte v3, v1, v2

    add-int/lit8 v4, p2, 0x5

    .line 234
    aget-byte v5, v1, v4

    const-string v8, "persist.fyt.reversetemp"

    .line 235
    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 236
    aget-byte v3, v1, v4

    .line 237
    aget-byte v5, v1, v2

    :cond_38
    const/16 v2, 0xff

    and-int/2addr v3, v2

    const/16 v2, 0x1b

    const/16 v4, 0x1c

    if-eqz v3, :cond_39

    packed-switch v3, :pswitch_data_5

    if-lt v3, v11, :cond_3a

    if-gt v3, v4, :cond_3a

    new-array v8, v11, [I

    const/4 v9, 0x5

    mul-int/2addr v3, v9

    const/16 v9, 0xa5

    add-int/2addr v3, v9

    aput v3, v8, v10

    .line 238
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    :pswitch_1b
    new-array v3, v11, [I

    const/16 v8, 0x136

    aput v8, v3, v10

    .line 239
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    :pswitch_1c
    new-array v3, v11, [I

    const/16 v8, 0x9b

    aput v8, v3, v10

    .line 240
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    :pswitch_1d
    new-array v3, v11, [I

    const/16 v8, 0x96

    aput v8, v3, v10

    .line 241
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    :pswitch_1e
    new-array v3, v11, [I

    const/16 v8, 0xa5

    aput v8, v3, v10

    .line 242
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    :pswitch_1f
    new-array v3, v11, [I

    const/16 v8, 0xa0

    aput v8, v3, v10

    .line 243
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_21

    :cond_39
    :pswitch_20
    new-array v8, v11, [I

    aput v3, v8, v10

    .line 244
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    :cond_3a
    :goto_21
    const/16 v2, 0xff

    and-int/lit16 v3, v5, 0xff

    if-eqz v3, :cond_3b

    packed-switch v3, :pswitch_data_6

    if-lt v3, v11, :cond_3c

    if-gt v3, v4, :cond_3c

    new-array v2, v11, [I

    const/4 v5, 0x5

    mul-int/2addr v3, v5

    const/16 v5, 0xa5

    add-int/2addr v3, v5

    aput v3, v2, v10

    .line 245
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :pswitch_21
    new-array v2, v11, [I

    const/16 v3, 0x136

    aput v3, v2, v10

    .line 246
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :pswitch_22
    new-array v2, v11, [I

    const/16 v3, 0x9b

    aput v3, v2, v10

    .line 247
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :pswitch_23
    new-array v2, v11, [I

    const/16 v3, 0x96

    aput v3, v2, v10

    .line 248
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :pswitch_24
    new-array v2, v11, [I

    const/16 v3, 0xa5

    aput v3, v2, v10

    .line 249
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :pswitch_25
    new-array v2, v11, [I

    const/16 v3, 0xa0

    aput v3, v2, v10

    .line 250
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :cond_3b
    :pswitch_26
    new-array v2, v11, [I

    aput v3, v2, v10

    .line 251
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_3c
    :goto_22
    const/16 v2, 0x1d

    new-array v3, v11, [I

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v14

    aput v4, v3, v10

    .line 252
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    and-int/lit8 v3, v6, 0xf

    aput v3, v2, v10

    const/16 v3, 0x1e

    .line 253
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v3, v11, [I

    shr-int/lit8 v4, v7, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 254
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4a

    new-array v3, v11, [I

    and-int/lit8 v4, v7, 0x1

    aput v4, v3, v10

    .line 255
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v7, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/16 v3, 0xd

    .line 256
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    .line 257
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_60

    add-int/lit8 v2, p2, 0x7

    .line 258
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0x80

    if-lez v3, :cond_3d

    const/16 v3, 0xff

    and-int/2addr v2, v3

    not-int v2, v2

    add-int/2addr v2, v11

    and-int/2addr v2, v3

    const/16 v4, 0xa

    mul-int/2addr v2, v4

    rsub-int v2, v2, 0x3e8

    goto :goto_23

    :cond_3d
    const/16 v3, 0xff

    const/16 v4, 0xa

    and-int/2addr v2, v3

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x3e8

    .line 259
    :goto_23
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_35

    .line 260
    :cond_3e
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_56

    add-int/lit8 v2, p2, 0x2

    .line 261
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 262
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 263
    iput v2, v0, Lk0/s8;->e:I

    .line 264
    sget v2, Lk0/nt;->c:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_49

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3f

    goto/16 :goto_2b

    :cond_3f
    move v2, v10

    .line 265
    :goto_24
    iget-object v4, v0, Lk0/s8;->f:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_41

    .line 266
    iget v6, v0, Lk0/s8;->e:I

    aget-object v7, v4, v2

    aget v7, v7, v10

    if-ne v6, v7, :cond_40

    if-eqz v6, :cond_41

    .line 267
    iput v2, v0, Lk0/s8;->d:I

    goto :goto_25

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 268
    :cond_41
    :goto_25
    iget v6, v0, Lk0/s8;->e:I

    packed-switch v6, :pswitch_data_7

    const/16 v6, 0xff

    and-int/2addr v3, v6

    if-eqz v3, :cond_46

    .line 269
    array-length v3, v4

    if-ge v2, v3, :cond_60

    .line 270
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    :pswitch_27
    move v2, v10

    const/16 v6, 0xff

    :goto_26
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_42

    const/16 v4, 0x1e

    .line 271
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_42
    const/16 v4, 0x1e

    .line 272
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    :pswitch_28
    const/16 v6, 0xff

    move v2, v10

    :goto_27
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_43

    const/16 v4, 0x1f

    .line 273
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_43
    const/16 v4, 0x1f

    .line 274
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    :pswitch_29
    const/16 v6, 0xff

    move v2, v10

    :goto_28
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_44

    .line 275
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 276
    :cond_44
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    :pswitch_2a
    const/16 v6, 0xff

    move v2, v10

    :goto_29
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_45

    const/4 v4, 0x7

    .line 277
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_45
    const/4 v4, 0x7

    .line 278
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    .line 279
    :cond_46
    iget v2, v0, Lk0/s8;->d:I

    array-length v3, v4

    if-ge v2, v3, :cond_47

    const/16 v3, 0xff

    if-eq v2, v3, :cond_48

    .line 280
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_2a

    :cond_47
    const/16 v3, 0xff

    .line 281
    :cond_48
    :goto_2a
    iput v3, v0, Lk0/s8;->d:I

    goto/16 :goto_35

    :cond_49
    :goto_2b
    move v2, v10

    .line 282
    :goto_2c
    iget-object v4, v0, Lk0/s8;->g:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_4b

    .line 283
    iget v6, v0, Lk0/s8;->e:I

    aget-object v7, v4, v2

    aget v7, v7, v10

    if-ne v6, v7, :cond_4a

    if-eqz v6, :cond_4b

    .line 284
    iput v2, v0, Lk0/s8;->d:I

    goto :goto_2d

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 285
    :cond_4b
    :goto_2d
    iget v6, v0, Lk0/s8;->e:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_52

    packed-switch v6, :pswitch_data_8

    const/16 v6, 0xff

    and-int/2addr v3, v6

    if-eqz v3, :cond_4c

    .line 286
    array-length v3, v4

    if-ge v2, v3, :cond_60

    .line 287
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    .line 288
    :cond_4c
    iget v2, v0, Lk0/s8;->d:I

    array-length v3, v4

    const/16 v6, 0xff

    if-ge v2, v3, :cond_4d

    if-eq v2, v6, :cond_4d

    .line 289
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 290
    :cond_4d
    iput v6, v0, Lk0/s8;->d:I

    goto/16 :goto_35

    :pswitch_2b
    const/16 v6, 0xff

    move v2, v10

    :goto_2e
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_4e

    const/16 v4, 0x1e

    .line 291
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_4e
    const/16 v4, 0x1e

    .line 292
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    :pswitch_2c
    const/16 v6, 0xff

    move v2, v10

    :goto_2f
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_4f

    const/16 v4, 0x1f

    .line 293
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_4f
    const/16 v4, 0x1f

    .line 294
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    :pswitch_2d
    const/16 v6, 0xff

    move v2, v10

    :goto_30
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_50

    .line 295
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 296
    :cond_50
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    :pswitch_2e
    const/16 v6, 0xff

    move v2, v10

    :goto_31
    and-int/lit16 v4, v3, 0xff

    if-ge v2, v4, :cond_51

    const/4 v4, 0x7

    .line 297
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0xff

    goto :goto_31

    :cond_51
    const/4 v4, 0x7

    .line 298
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_35

    .line 299
    :cond_52
    iget v2, v0, Lk0/s8;->k:I

    if-eq v2, v3, :cond_60

    .line 300
    iput v3, v0, Lk0/s8;->k:I

    if-ne v3, v11, :cond_53

    .line 301
    iput-boolean v10, v0, Lk0/s8;->j:Z

    const/4 v2, -0x1

    .line 302
    iput v2, v0, Lk0/s8;->l:I

    .line 303
    iget-object v2, v0, Lk0/s8;->m:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_35

    :cond_53
    const/4 v2, 0x2

    if-ne v3, v2, :cond_54

    .line 304
    iput v14, v0, Lk0/s8;->l:I

    .line 305
    iget-object v2, v0, Lk0/s8;->m:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_35

    :cond_54
    if-nez v3, :cond_60

    .line 306
    iget-boolean v2, v0, Lk0/s8;->j:Z

    if-nez v2, :cond_55

    const/16 v2, 0xc

    .line 307
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 308
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_32

    .line 309
    :cond_55
    iput-boolean v10, v0, Lk0/s8;->j:Z

    :goto_32
    const/4 v2, -0x1

    .line 310
    iput v2, v0, Lk0/s8;->l:I

    .line 311
    iget-object v2, v0, Lk0/s8;->m:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_35

    :cond_56
    add-int/lit8 v2, p2, 0x2

    .line 312
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x3

    .line 313
    aget-byte v4, v1, v4

    and-int/2addr v3, v4

    if-ne v3, v11, :cond_60

    const/4 v3, 0x4

    if-ne v2, v3, :cond_60

    .line 314
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_35

    .line 315
    :cond_57
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_60

    add-int/lit8 v2, p2, 0x2

    .line 316
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 317
    aget-byte v4, v1, v4

    or-int/lit16 v2, v2, 0x80

    const/16 v5, 0xff

    and-int/2addr v2, v5

    .line 318
    iput v2, v0, Lk0/s8;->e:I

    move v2, v10

    .line 319
    :goto_33
    iget-object v5, v0, Lk0/s8;->f:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_59

    .line 320
    iget v6, v0, Lk0/s8;->e:I

    aget-object v7, v5, v2

    aget v7, v7, v10

    if-ne v6, v7, :cond_58

    if-eqz v6, :cond_59

    .line 321
    iput v2, v0, Lk0/s8;->d:I

    goto :goto_34

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 322
    :cond_59
    :goto_34
    iget v6, v0, Lk0/s8;->e:I

    const/16 v7, 0x86

    if-eq v6, v7, :cond_5e

    const/16 v7, 0x87

    if-eq v6, v7, :cond_5c

    const/16 v6, 0xff

    and-int/lit16 v3, v4, 0xff

    if-eqz v3, :cond_5a

    .line 323
    array-length v3, v5

    if-ge v2, v3, :cond_60

    .line 324
    aget-object v2, v5, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_35

    .line 325
    :cond_5a
    iget v2, v0, Lk0/s8;->d:I

    array-length v3, v5

    const/16 v6, 0xff

    if-ge v2, v3, :cond_5b

    if-eq v2, v6, :cond_5b

    .line 326
    aget-object v2, v5, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 327
    :cond_5b
    iput v6, v0, Lk0/s8;->d:I

    goto :goto_35

    :cond_5c
    const/16 v6, 0xff

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v11, :cond_60

    .line 328
    sget v2, Lh0/c;->E:I

    if-eq v2, v8, :cond_5d

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5d

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5d

    const/16 v2, 0xc

    .line 329
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 330
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_35

    .line 331
    :cond_5d
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 332
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto :goto_35

    :cond_5e
    const/16 v2, 0xff

    and-int/2addr v2, v4

    if-ne v2, v11, :cond_60

    .line 333
    sget v2, Lh0/c;->E:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5f

    const/16 v2, 0xd

    .line 334
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 335
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_35

    :cond_5f
    const/16 v2, 0x12

    .line 336
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 337
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 338
    :cond_60
    :goto_35
    invoke-super/range {p0 .. p3}, Lk0/lt;->U2([BII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x43
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1d
        :pswitch_1f
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_25
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x17
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x17
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/s8;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/s8;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/s8;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/s8;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/s8;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

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
    .locals 6

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/16 v5, 0x60

    if-eq p1, v5, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x8b

    aput p3, p1, v4

    aput v4, p1, v2

    .line 2
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v2

    .line 4
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x88

    aput p3, p1, v4

    aput v4, p1, v2

    .line 6
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 p1, 0x86

    const/16 p3, 0xa

    .line 7
    invoke-virtual {p0, p1, p3, p2}, Lk0/s8;->f3(IB[I)V

    goto/16 :goto_0

    .line 8
    :pswitch_4
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x85

    aput p3, p1, v4

    aput v4, p1, v2

    .line 9
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x84

    aput p3, p1, v4

    aput v4, p1, v2

    .line 11
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :pswitch_6
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v2, p1, v2

    .line 13
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, -0x79

    aput p3, p1, v4

    aput v4, p1, v2

    .line 15
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0x82

    aput p3, p1, v4

    aput v2, p1, v2

    .line 17
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x20

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x32

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, -0x7e

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x7

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p1, v1, v2

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v1, 0x32

    .line 2
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x2
        0x7
        0x0
    .end array-data
.end method

.method public final c3(I)I
    .locals 1

    const/16 v0, 0xa

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p1, v0

    .line 1
    div-int/lit8 p1, p1, 0x7

    add-int/lit8 v0, p1, -0x1

    :goto_0
    return v0
.end method

.method public final d3([BII)V
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

    const/16 p2, 0x73

    .line 11
    iget-object p3, p0, Lk0/s8;->h:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iput-object p1, p0, Lk0/s8;->h:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final e3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x74

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

    iget v3, p0, Lk0/s8;->b:I

    if-nez v3, :cond_5

    .line 3
    iput v0, p0, Lk0/s8;->b:I

    .line 4
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lk0/s8;->c:I

    .line 5
    sget p1, Lu0/b;->j:I

    if-eqz p1, :cond_1

    .line 6
    invoke-static {v2}, Lu0/d;->M(I)V

    .line 7
    :cond_1
    sget p1, Lu0/b;->D:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lk0/s8;->b:I

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
    iget p1, p0, Lk0/s8;->b:I

    if-nez p1, :cond_8

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 22
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_6
    iget p1, p0, Lk0/s8;->b:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lk0/s8;->c:I

    if-eq p1, v1, :cond_7

    .line 24
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, p1}, Lu0/h;->c(I)V

    .line 25
    :cond_7
    iput v2, p0, Lk0/s8;->b:I

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

.method public final varargs f3(IB[I)V
    .locals 6

    and-int/lit16 v0, p2, 0xff

    .line 1
    array-length v1, p3

    if-lt v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    .line 2
    new-array v1, v0, [I

    const/16 v2, -0x1d

    const/4 v3, 0x0

    .line 3
    aput v2, v1, v3

    const/4 v2, 0x1

    .line 4
    aput p2, v1, v2

    const/4 p2, 0x2

    int-to-byte p1, p1

    .line 5
    aput p1, v1, p2

    const/4 p1, 0x3

    .line 6
    array-length p2, p3

    move v2, v3

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v4, p1, v2

    .line 7
    aget v5, p3, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    :goto_1
    if-ge p1, v0, :cond_1

    .line 8
    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params data length > size!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
