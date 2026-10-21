.class public Lk0/wc;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:[[I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Runnable;

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/wc;->b:I

    .line 3
    iput v1, v0, Lk0/wc;->e:I

    const/16 v2, 0x2b

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4
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

    new-array v4, v3, [I

    fill-array-data v4, :array_2a

    const/16 v25, 0x2a

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/wc;->f:[[I

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_2b

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_3b

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_3d

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_3e

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_3f

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_40

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_41

    const/16 v25, 0x16

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_42

    const/16 v25, 0x17

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_43

    const/16 v25, 0x18

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/wc;->g:[[I

    const/16 v2, 0x20

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_44

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_45

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_46

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_47

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_48

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_49

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_4a

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_4b

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_4c

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_4d

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_4e

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_4f

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_50

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_51

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_52

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_53

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_54

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_55

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_56

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_57

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_58

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_59

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_5a

    const/16 v5, 0x16

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5b

    const/16 v5, 0x17

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5c

    const/16 v5, 0x18

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5d

    const/16 v5, 0x19

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5e

    const/16 v5, 0x1a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5f

    const/16 v5, 0x1b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_60

    const/16 v5, 0x1c

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_61

    const/16 v5, 0x1d

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_62

    const/16 v5, 0x1e

    aput-object v4, v2, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_63

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    iput-object v2, v0, Lk0/wc;->h:[[I

    .line 7
    new-instance v2, Lk0/wc$a;

    invoke-direct {v2, v0}, Lk0/wc$a;-><init>(Lk0/wc;)V

    iput-object v2, v0, Lk0/wc;->j:Ljava/lang/Runnable;

    .line 8
    iput v1, v0, Lk0/wc;->k:I

    .line 9
    new-instance v1, Lk0/wc$b;

    invoke-direct {v1, v0}, Lk0/wc$b;-><init>(Lk0/wc;)V

    iput-object v1, v0, Lk0/wc;->l:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/wc$c;

    invoke-direct {v1, v0}, Lk0/wc$c;-><init>(Lk0/wc;)V

    iput-object v1, v0, Lk0/wc;->m:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/wc$d;

    invoke-direct {v1, v0}, Lk0/wc$d;-><init>(Lk0/wc;)V

    iput-object v1, v0, Lk0/wc;->n:Ljava/lang/Runnable;

    return-void

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
        0x19
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
        0x23
    .end array-data

    :array_22
    .array-data 4
        0x1d
        0x22
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
        0x50
        0x5
    .end array-data

    :array_27
    .array-data 4
        0x51
        0x2
    .end array-data

    :array_28
    .array-data 4
        0x52
        0x24
    .end array-data

    :array_29
    .array-data 4
        0x54
        0x2
    .end array-data

    :array_2a
    .array-data 4
        0x55
        0x1
    .end array-data

    :array_2b
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_2c
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2d
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_2e
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_2f
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_30
    .array-data 4
        0x86
        0xd
    .end array-data

    :array_31
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_32
    .array-data 4
        0x1
        0x29
    .end array-data

    :array_33
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_34
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_35
    .array-data 4
        0x5
        0x18
    .end array-data

    :array_36
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_37
    .array-data 4
        0x7
        0x0
    .end array-data

    :array_38
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_39
    .array-data 4
        0xa
        0x2a
    .end array-data

    :array_3a
    .array-data 4
        0xb
        0x2b
    .end array-data

    :array_3b
    .array-data 4
        0xc
        0x2c
    .end array-data

    :array_3c
    .array-data 4
        0xd
        0x2d
    .end array-data

    :array_3d
    .array-data 4
        0x10
        0x27
    .end array-data

    :array_3e
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_3f
    .array-data 4
        0x14
        0x26
    .end array-data

    :array_40
    .array-data 4
        0x15
        0x28
    .end array-data

    :array_41
    .array-data 4
        0x16
        0x3
    .end array-data

    :array_42
    .array-data 4
        0x1b
        0x24
    .end array-data

    :array_43
    .array-data 4
        0x36
        0x16
    .end array-data

    :array_44
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_45
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_46
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_47
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_48
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_49
    .array-data 4
        0x86
        0x12
    .end array-data

    :array_4a
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_4b
    .array-data 4
        0x1
        0x8
    .end array-data

    :array_4c
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_4d
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4e
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4f
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_50
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_51
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_52
    .array-data 4
        0x8
        0x28
    .end array-data

    :array_53
    .array-data 4
        0x9
        0x29
    .end array-data

    :array_54
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_55
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_56
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_57
    .array-data 4
        0xe
        0xb
    .end array-data

    :array_58
    .array-data 4
        0xf
        0xb
    .end array-data

    :array_59
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_5a
    .array-data 4
        0x13
        0x24
    .end array-data

    :array_5b
    .array-data 4
        0x14
        0x18
    .end array-data

    :array_5c
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_5d
    .array-data 4
        0x16
        0x2d
    .end array-data

    :array_5e
    .array-data 4
        0x17
        0x21
    .end array-data

    :array_5f
    .array-data 4
        0x18
        0x20
    .end array-data

    :array_60
    .array-data 4
        0x19
        0x1b
    .end array-data

    :array_61
    .array-data 4
        0x34
        0x1b
    .end array-data

    :array_62
    .array-data 4
        0x1a
        0x1c
    .end array-data

    :array_63
    .array-data 4
        0x35
        0x1c
    .end array-data
.end method

.method public static synthetic c3(Lk0/wc;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/wc;->d3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p1}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v2}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 11
    invoke-virtual {p0, p1}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v3

    const/16 v0, 0xc

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_a

    const/16 p1, 0x22

    .line 14
    invoke-virtual {p0, p1}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_a

    const/16 p1, 0x23

    .line 16
    invoke-virtual {p0, p1}, Lk0/wc;->a3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v3

    const/16 v0, 0x14

    const/16 v1, 0x10

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 19
    invoke-virtual {p0, v0}, Lk0/wc;->a3(I)V

    goto :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_a

    .line 21
    invoke-virtual {p0, v0}, Lk0/wc;->a3(I)V

    goto :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v3

    const/16 v0, 0x15

    const/16 v1, 0xd

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 24
    invoke-virtual {p0, v0}, Lk0/wc;->a3(I)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_a

    .line 26
    invoke-virtual {p0, v0}, Lk0/wc;->a3(I)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v3

    const/16 v0, 0x17

    const/16 v1, 0xb

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 29
    invoke-virtual {p0, v0}, Lk0/wc;->a3(I)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_a

    .line 31
    invoke-virtual {p0, v0}, Lk0/wc;->a3(I)V

    goto :goto_0

    .line 32
    :pswitch_8
    aget p1, p1, v3

    if-eqz p1, :cond_9

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 34
    invoke-virtual {p0, v3}, Lk0/wc;->a3(I)V

    goto :goto_0

    .line 35
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_a

    .line 36
    invoke-virtual {p0, v3}, Lk0/wc;->a3(I)V

    :cond_a
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
.end method

.method public S2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/wc;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 3
    iget-object v0, p0, Lk0/wc;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    .line 8
    iput v2, v0, Lk0/mt;->i:I

    .line 9
    iput v2, v0, Lk0/mt;->o:I

    .line 10
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 11
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    .line 12
    :cond_0
    iget-object v0, p0, Lk0/wc;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    return-void

    nop

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
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x80

    const/16 v5, 0xd

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v11, :cond_2a

    const/4 v12, 0x2

    if-eq v2, v12, :cond_1b

    const/16 v13, 0xa0

    const/16 v15, 0x10

    const/16 v4, 0xa5

    const/16 v17, 0x8

    const/16 v14, 0x1c

    if-eq v2, v8, :cond_10

    if-eq v2, v5, :cond_f

    const/16 v5, 0x13

    if-eq v2, v5, :cond_7

    const/16 v4, 0x26

    if-eq v2, v4, :cond_6

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_19

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 5
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 6
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 7
    aget-byte v7, v1, v7

    const/16 v12, 0xcb

    new-array v13, v11, [I

    shr-int/lit8 v14, v2, 0x7

    and-int/2addr v14, v11

    aput v14, v13, v10

    .line 8
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xcc

    new-array v13, v11, [I

    shr-int/lit8 v14, v2, 0x5

    and-int/2addr v14, v11

    aput v14, v13, v10

    .line 9
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xcd

    new-array v13, v11, [I

    and-int/2addr v2, v8

    aput v2, v13, v10

    .line 10
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v8, v11, [I

    and-int/2addr v3, v9

    aput v3, v8, v10

    .line 11
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v11, [I

    and-int/2addr v4, v9

    aput v4, v3, v10

    .line 12
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v11, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v10

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v11, [I

    and-int/lit16 v4, v6, 0xff

    aput v4, v3, v10

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v3, v11, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v10

    .line 15
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_1
    const/16 v2, 0xca

    .line 16
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-direct {v3, v1, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_19

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 18
    aget-byte v3, v1, v3

    const/16 v4, 0xc0

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 19
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc1

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 20
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc2

    new-array v5, v11, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v8

    aput v2, v5, v10

    .line 21
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 22
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 23
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 24
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v8

    aput v5, v4, v10

    .line 25
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 26
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 27
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v4, v11, [I

    and-int/2addr v3, v11

    aput v3, v4, v10

    .line 28
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 29
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 30
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 31
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 32
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 33
    aget-byte v6, v1, v6

    const/16 v7, 0x87

    new-array v8, v11, [I

    and-int/2addr v2, v9

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    aput v2, v8, v10

    .line 34
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x408

    new-array v7, v11, [I

    aput v2, v7, v10

    .line 35
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    and-int/2addr v4, v9

    shl-int/lit8 v4, v4, 0x8

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v11, [I

    and-int/lit16 v4, v6, 0xff

    aput v4, v3, v10

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_4
    add-int/lit8 v2, p2, 0x3

    .line 38
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 39
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x6

    .line 40
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x7

    .line 41
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x8

    .line 42
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x9

    .line 43
    aget-byte v7, v1, v7

    const/16 v8, 0x84

    new-array v12, v11, [I

    and-int/2addr v2, v9

    aput v2, v12, v10

    .line 44
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v11

    and-int/lit8 v3, v3, 0x7f

    if-ne v2, v11, :cond_0

    rsub-int v3, v3, 0xff

    :cond_0
    const/16 v2, 0x85

    new-array v8, v11, [I

    aput v3, v8, v10

    .line 45
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v4, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v3, v5, 0xff

    shl-int/2addr v3, v15

    or-int/2addr v2, v3

    and-int/lit16 v3, v6, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v7, 0xff

    or-int/2addr v2, v3

    const/16 v3, 0x86

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 46
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 47
    :pswitch_5
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 49
    invoke-static {v3, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 50
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 51
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 52
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 53
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 54
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 55
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v11

    aput v2, v3, v10

    .line 56
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 57
    aget-byte v2, v1, v2

    new-array v3, v11, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v11

    aput v2, v3, v10

    .line 58
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 59
    :pswitch_7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    goto/16 :goto_19

    .line 64
    :pswitch_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 68
    aget-byte v2, v1, v2

    and-int/2addr v2, v9

    invoke-virtual {v0, v2}, Lk0/wc;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    goto/16 :goto_19

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 70
    aget-byte v3, v1, v3

    const/16 v4, 0x82

    new-array v5, v11, [I

    and-int/2addr v2, v9

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    .line 71
    div-int/2addr v2, v15

    aput v2, v5, v10

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x407

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 72
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 73
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 74
    aget-byte v4, v1, v4

    const/16 v5, 0x75

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 75
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x76

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 76
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x77

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 77
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x78

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 78
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x79

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 79
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x7a

    new-array v6, v11, [I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v11

    aput v7, v6, v10

    .line 80
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x7b

    new-array v6, v11, [I

    and-int/2addr v2, v8

    aput v2, v6, v10

    .line 81
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v5, v11, [I

    shr-int/lit8 v6, v4, 0x7

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 82
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v5, v11, [I

    shr-int/lit8 v6, v4, 0x6

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 83
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v5, v11, [I

    shr-int/lit8 v6, v4, 0x5

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 84
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v5, v11, [I

    shr-int/lit8 v6, v4, 0x4

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 85
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v5, v4, 0x3

    and-int/2addr v5, v11

    aput v5, v2, v10

    .line 86
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v11, [I

    shr-int/lit8 v5, v4, 0x2

    and-int/2addr v5, v11

    aput v5, v3, v10

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v11, [I

    and-int/2addr v4, v8

    aput v4, v3, v10

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 89
    aget-byte v2, v1, v2

    const/16 v3, 0xbd

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 90
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbe

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 91
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbf

    new-array v4, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 92
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 93
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lk0/wc;->e3()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_19

    .line 94
    :cond_2
    sget v2, Lk0/nt;->R:I

    if-nez v2, :cond_3

    goto/16 :goto_19

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v2, v1, v2

    invoke-virtual {v0, v2}, Lk0/wc;->g3(I)V

    goto/16 :goto_19

    .line 96
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lk0/wc;->e3()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_19

    :cond_4
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lk0/wc;->f3([BII)V

    goto/16 :goto_19

    :pswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 98
    aget-byte v2, v1, v2

    const/16 v3, 0xb8

    new-array v4, v11, [I

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 99
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_e
    add-int/lit8 v2, p2, 0x2

    .line 100
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 101
    aget-byte v3, v1, v3

    const/16 v4, 0x68

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 102
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x69

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 103
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6a

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 104
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 105
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6c

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 106
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6d

    new-array v5, v11, [I

    and-int/2addr v2, v11

    aput v2, v5, v10

    .line 107
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 108
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v8

    aput v5, v4, v10

    .line 109
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 110
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 111
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v11, [I

    and-int/2addr v3, v11

    aput v3, v4, v10

    .line 112
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    .line 113
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 114
    aget-byte v3, v1, v3

    const/16 v4, 0x61

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 115
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x62

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 116
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x63

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v8

    aput v6, v5, v10

    .line 117
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x64

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v11

    aput v6, v5, v10

    .line 118
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x65

    new-array v5, v11, [I

    and-int/2addr v2, v11

    aput v2, v5, v10

    .line 119
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v11

    if-ne v2, v11, :cond_5

    const/16 v2, 0xbb

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v8

    aput v5, v4, v10

    .line 120
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :cond_5
    const/16 v2, 0xbc

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 121
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 122
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v11, [I

    and-int/2addr v3, v8

    aput v3, v4, v10

    .line 123
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_6
    add-int/lit8 v2, p2, 0x2

    .line 124
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    const/16 v4, 0x1e14

    invoke-static {v2, v3, v10, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_19

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 126
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 127
    aget-byte v5, v1, v5

    add-int/lit8 v12, p2, 0x5

    .line 128
    aget-byte v12, v1, v12

    const/16 v15, 0x1f

    new-array v7, v11, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x3

    aput v16, v7, v10

    .line 129
    invoke-static {v15, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x20

    new-array v15, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v8

    aput v2, v15, v10

    .line 130
    invoke-static {v7, v15}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x28

    if-eqz v2, :cond_9

    if-eq v2, v9, :cond_8

    packed-switch v2, :pswitch_data_4

    if-lt v2, v11, :cond_a

    if-gt v2, v14, :cond_a

    new-array v7, v11, [I

    mul-int/2addr v2, v6

    add-int/2addr v2, v4

    aput v2, v7, v10

    .line 131
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_10
    new-array v2, v11, [I

    const/16 v4, 0x136

    aput v4, v2, v10

    .line 132
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_11
    new-array v2, v11, [I

    const/16 v4, 0x9b

    aput v4, v2, v10

    .line 133
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_12
    new-array v2, v11, [I

    const/16 v4, 0x96

    aput v4, v2, v10

    .line 134
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_13
    new-array v2, v11, [I

    aput v4, v2, v10

    .line 135
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_14
    new-array v2, v11, [I

    const/4 v4, -0x3

    aput v4, v2, v10

    .line 136
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :pswitch_15
    new-array v2, v11, [I

    aput v13, v2, v10

    .line 137
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v2, v11, [I

    const/4 v4, -0x1

    aput v4, v2, v10

    .line 138
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v2, v11, [I

    const/4 v4, -0x2

    aput v4, v2, v10

    .line 139
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :cond_a
    :goto_1
    shr-int/lit8 v2, v5, 0x4

    const/16 v3, 0xf

    and-int/2addr v2, v3

    if-eq v2, v11, :cond_e

    if-eq v2, v8, :cond_d

    const/4 v3, 0x4

    if-eq v2, v3, :cond_c

    if-eq v2, v6, :cond_b

    move v2, v10

    move v3, v2

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_b
    move v2, v10

    move v4, v2

    move v3, v11

    goto :goto_3

    :cond_c
    move v2, v10

    move v3, v11

    goto :goto_2

    :cond_d
    move v2, v10

    move v3, v2

    move v4, v11

    goto :goto_3

    :cond_e
    move v3, v10

    move v4, v3

    move v2, v11

    :goto_3
    const/16 v6, 0x2b

    new-array v7, v11, [I

    aput v2, v7, v10

    .line 140
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v6, v11, [I

    aput v3, v6, v10

    .line 141
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v11, [I

    aput v4, v3, v10

    .line 142
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v11, [I

    const/16 v4, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v10

    .line 143
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x55

    new-array v3, v11, [I

    and-int/lit8 v4, v12, 0x1

    aput v4, v3, v10

    .line 144
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_f
    const/16 v2, 0x83

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 145
    aget-byte v4, v1, v4

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 146
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 147
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 148
    aget-byte v7, v1, v5

    add-int/lit8 v8, p2, 0x5

    .line 149
    aget-byte v12, v1, v8

    add-int/lit8 v18, p2, 0x6

    .line 150
    aget-byte v18, v1, v18

    add-int/lit8 v19, p2, 0x8

    .line 151
    aget-byte v19, v1, v19

    new-array v13, v11, [I

    shr-int/lit8 v20, v2, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v13, v10

    const/16 v4, 0xa

    .line 152
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xb

    new-array v4, v11, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v4, v10

    .line 153
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v11

    aput v13, v4, v10

    const/16 v13, 0xc

    .line 154
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v11

    aput v13, v4, v10

    .line 155
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x36

    new-array v13, v11, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v11

    aput v15, v13, v10

    .line 156
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v4, v3, 0x4

    and-int/2addr v4, v11

    if-nez v4, :cond_11

    const/16 v4, 0x15

    new-array v13, v11, [I

    and-int/lit8 v2, v2, 0x7

    aput v2, v13, v10

    .line 157
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    if-ne v4, v11, :cond_12

    const/16 v2, 0x15

    new-array v4, v11, [I

    aput v17, v4, v10

    .line 158
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :cond_12
    :goto_4
    const/16 v2, 0x34

    new-array v4, v11, [I

    shr-int/lit8 v13, v3, 0x6

    and-int/2addr v13, v11

    aput v13, v4, v10

    .line 159
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v11, [I

    shr-int/lit8 v13, v3, 0x5

    and-int/2addr v13, v11

    aput v13, v4, v10

    .line 160
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    and-int/2addr v3, v2

    and-int/lit16 v2, v3, 0xff

    packed-switch v2, :pswitch_data_5

    move v3, v10

    move v4, v3

    move v13, v4

    :goto_5
    move v15, v13

    :goto_6
    move/from16 v16, v15

    goto/16 :goto_7

    :pswitch_16
    move v3, v10

    move v4, v3

    move v13, v11

    goto :goto_5

    :pswitch_17
    move v3, v10

    move v4, v3

    move v15, v4

    move v13, v11

    move/from16 v16, v13

    goto :goto_7

    :pswitch_18
    move v3, v10

    move v4, v3

    move v15, v4

    move/from16 v16, v15

    move v13, v11

    goto :goto_7

    :pswitch_19
    move v3, v10

    move v4, v3

    move/from16 v16, v4

    move v13, v11

    move v15, v13

    goto :goto_7

    :pswitch_1a
    move v3, v10

    move v4, v3

    move v13, v4

    move/from16 v16, v13

    move v15, v11

    goto :goto_7

    :pswitch_1b
    move v3, v10

    move v4, v3

    move v13, v4

    move v15, v11

    goto :goto_6

    :pswitch_1c
    move v3, v10

    move v4, v3

    move v13, v4

    move v15, v13

    move/from16 v16, v11

    goto :goto_7

    :pswitch_1d
    move v3, v10

    move v13, v3

    move v15, v13

    move/from16 v16, v15

    move v4, v11

    goto :goto_7

    :pswitch_1e
    move v4, v10

    move v13, v4

    move v15, v13

    move/from16 v16, v15

    move v3, v11

    :goto_7
    const/16 v6, 0x31

    new-array v14, v11, [I

    aput v3, v14, v10

    .line 161
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    aput v4, v3, v10

    const/16 v4, 0xf

    .line 162
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v4, v11, [I

    aput v13, v4, v10

    .line 163
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v11, [I

    aput v15, v4, v10

    .line 164
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v11, [I

    aput v16, v4, v10

    .line 165
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v11, [I

    aput v2, v4, v10

    .line 166
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 167
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 168
    aget-byte v7, v1, v8

    .line 169
    aget-byte v12, v1, v5

    :cond_13
    and-int/lit16 v2, v7, 0xff

    const/16 v3, 0x1b

    if-eqz v2, :cond_15

    if-eq v2, v9, :cond_14

    packed-switch v2, :pswitch_data_6

    if-lt v2, v11, :cond_16

    const/16 v4, 0x1c

    if-gt v2, v4, :cond_16

    new-array v4, v11, [I

    const/4 v5, 0x5

    mul-int/2addr v2, v5

    const/16 v5, 0xa5

    add-int/2addr v2, v5

    aput v2, v4, v10

    .line 170
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_1f
    new-array v2, v11, [I

    const/16 v4, 0x136

    aput v4, v2, v10

    .line 171
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_20
    new-array v2, v11, [I

    const/16 v4, 0x9b

    aput v4, v2, v10

    .line 172
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_21
    new-array v2, v11, [I

    const/16 v4, 0x96

    aput v4, v2, v10

    .line 173
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_22
    new-array v2, v11, [I

    const/16 v4, 0xa5

    aput v4, v2, v10

    .line 174
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_23
    new-array v2, v11, [I

    const/4 v4, -0x3

    aput v4, v2, v10

    .line 175
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :pswitch_24
    new-array v2, v11, [I

    const/16 v4, 0xa0

    aput v4, v2, v10

    .line 176
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_14
    new-array v2, v11, [I

    const/4 v4, -0x1

    aput v4, v2, v10

    .line 177
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_15
    new-array v2, v11, [I

    const/4 v4, -0x2

    aput v4, v2, v10

    .line 178
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :cond_16
    :goto_8
    and-int/lit16 v2, v12, 0xff

    if-eqz v2, :cond_18

    if-eq v2, v9, :cond_17

    packed-switch v2, :pswitch_data_7

    if-lt v2, v11, :cond_19

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_19

    new-array v4, v11, [I

    const/4 v5, 0x5

    mul-int/2addr v2, v5

    const/16 v5, 0xa5

    add-int/2addr v2, v5

    aput v2, v4, v10

    .line 179
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :pswitch_25
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/16 v4, 0x136

    aput v4, v2, v10

    .line 180
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :pswitch_26
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/16 v4, 0x9b

    aput v4, v2, v10

    .line 181
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :pswitch_27
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/16 v4, 0x96

    aput v4, v2, v10

    .line 182
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :pswitch_28
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/16 v4, 0xa5

    aput v4, v2, v10

    .line 183
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :pswitch_29
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/4 v4, -0x3

    aput v4, v2, v10

    .line 184
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :pswitch_2a
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/16 v4, 0xa0

    aput v4, v2, v10

    .line 185
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_17
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/4 v4, -0x1

    aput v4, v2, v10

    .line 186
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_18
    const/16 v3, 0x1c

    new-array v2, v11, [I

    const/4 v4, -0x2

    aput v4, v2, v10

    .line 187
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :cond_19
    :goto_9
    const/16 v2, 0x1d

    new-array v3, v11, [I

    shr-int/lit8 v4, v18, 0x4

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v10

    .line 188
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v11, [I

    and-int/lit8 v4, v18, 0xf

    aput v4, v3, v10

    .line 189
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v11, [I

    shr-int/lit8 v4, v19, 0x2

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 190
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v3, v11, [I

    shr-int/lit8 v4, v19, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 191
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4a

    new-array v3, v11, [I

    and-int/lit8 v4, v19, 0x1

    aput v4, v3, v10

    .line 192
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 193
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x7

    .line 194
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0x80

    if-lez v3, :cond_1a

    and-int/2addr v2, v9

    not-int v2, v2

    add-int/2addr v2, v11

    and-int/2addr v2, v9

    const/16 v3, 0xa

    mul-int/2addr v2, v3

    rsub-int v2, v2, 0x3e8

    goto :goto_a

    :cond_1a
    const/16 v3, 0xa

    and-int/2addr v2, v9

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x3e8

    .line 195
    :goto_a
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_19

    :cond_1b
    add-int/lit8 v2, p2, 0x2

    .line 196
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x3

    .line 197
    aget-byte v5, v1, v4

    and-int/2addr v5, v9

    if-ne v5, v11, :cond_1c

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1c

    .line 198
    invoke-static {}, Lo1/u;->v()I

    .line 199
    :cond_1c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 200
    aget-byte v2, v1, v2

    .line 201
    aget-byte v3, v1, v4

    and-int/2addr v2, v9

    .line 202
    iput v2, v0, Lk0/wc;->e:I

    .line 203
    sget v2, Lk0/nt;->a:I

    const/16 v4, 0xfd

    if-eq v2, v4, :cond_26

    const v4, 0x4013e

    if-eq v2, v4, :cond_26

    const v4, 0x5013e

    if-eq v2, v4, :cond_26

    const v4, 0x20019

    if-eq v2, v4, :cond_26

    const/16 v4, 0x167

    if-eq v2, v4, :cond_26

    const v4, 0x10167

    if-eq v2, v4, :cond_26

    const v4, 0x20167

    if-eq v2, v4, :cond_26

    const/16 v4, 0x17b

    if-eq v2, v4, :cond_26

    const v4, 0x7017b

    if-eq v2, v4, :cond_26

    const v4, 0x8017b

    if-eq v2, v4, :cond_26

    const v4, 0x9017b

    if-eq v2, v4, :cond_26

    const v4, 0x24017b

    if-eq v2, v4, :cond_26

    const v4, 0xa017b

    if-eq v2, v4, :cond_26

    const v4, 0x25017b

    if-eq v2, v4, :cond_26

    const v4, 0xb017b

    if-eq v2, v4, :cond_26

    const v4, 0xc017b

    if-eq v2, v4, :cond_26

    const v4, 0xd017b

    if-eq v2, v4, :cond_26

    const v4, 0xe017b

    if-eq v2, v4, :cond_26

    const v4, 0xf017b

    if-eq v2, v4, :cond_26

    const v4, 0x10017b

    if-eq v2, v4, :cond_26

    const v4, 0x11017b

    if-eq v2, v4, :cond_26

    const v4, 0x12017b

    if-eq v2, v4, :cond_26

    const v4, 0x13017b

    if-eq v2, v4, :cond_26

    const v4, 0x14017b

    if-eq v2, v4, :cond_26

    const v4, 0x15017b

    if-eq v2, v4, :cond_26

    const v4, 0x16017b

    if-eq v2, v4, :cond_26

    const v4, 0x17017b

    if-eq v2, v4, :cond_26

    const v4, 0x18017b

    if-eq v2, v4, :cond_26

    const v4, 0x19017b

    if-eq v2, v4, :cond_26

    const v4, 0x1a017b

    if-eq v2, v4, :cond_26

    const v4, 0x1b017b

    if-eq v2, v4, :cond_26

    const v4, 0x1c017b

    if-eq v2, v4, :cond_26

    const v4, 0x1d017b

    if-eq v2, v4, :cond_26

    const v4, 0x26017b

    if-eq v2, v4, :cond_26

    const v4, 0x1f017b

    if-eq v2, v4, :cond_26

    const v4, 0x20017b

    if-ne v2, v4, :cond_1d

    goto/16 :goto_f

    :cond_1d
    const v4, 0x10019

    if-ne v2, v4, :cond_21

    move v2, v10

    .line 204
    :goto_b
    iget-object v4, v0, Lk0/wc;->g:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_1f

    .line 205
    iget v5, v0, Lk0/wc;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_1e

    if-eqz v5, :cond_1f

    .line 206
    iput v2, v0, Lk0/wc;->d:I

    goto :goto_c

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    :goto_c
    and-int/2addr v3, v9

    if-eqz v3, :cond_20

    .line 207
    array-length v3, v4

    if-ge v2, v3, :cond_3c

    .line 208
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 209
    :cond_20
    array-length v3, v4

    if-gt v2, v3, :cond_3c

    .line 210
    iget v2, v0, Lk0/wc;->d:I

    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_21
    const v4, 0x30019

    if-eq v2, v4, :cond_22

    const v4, 0x60019

    if-ne v2, v4, :cond_3c

    :cond_22
    move v2, v10

    .line 211
    :goto_d
    iget-object v4, v0, Lk0/wc;->h:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_24

    .line 212
    iget v5, v0, Lk0/wc;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_23

    if-eqz v5, :cond_24

    .line 213
    iput v2, v0, Lk0/wc;->d:I

    goto :goto_e

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    :goto_e
    and-int/2addr v3, v9

    if-ne v3, v11, :cond_25

    .line 214
    array-length v3, v4

    if-ge v2, v3, :cond_3c

    .line 215
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_25
    if-nez v3, :cond_3c

    .line 216
    array-length v3, v4

    if-gt v2, v3, :cond_3c

    .line 217
    iget v2, v0, Lk0/wc;->d:I

    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_26
    :goto_f
    move v2, v10

    .line 218
    :goto_10
    iget-object v4, v0, Lk0/wc;->f:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_28

    .line 219
    iget v5, v0, Lk0/wc;->e:I

    aget-object v6, v4, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_27

    if-eqz v5, :cond_28

    .line 220
    iput v2, v0, Lk0/wc;->d:I

    goto :goto_11

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    :goto_11
    and-int/2addr v3, v9

    if-eqz v3, :cond_29

    .line 221
    array-length v3, v4

    if-ge v2, v3, :cond_3c

    .line 222
    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 223
    :cond_29
    array-length v3, v4

    if-gt v2, v3, :cond_3c

    .line 224
    iget v2, v0, Lk0/wc;->d:I

    aget-object v2, v4, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 225
    :cond_2a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_3c

    add-int/lit8 v2, p2, 0x2

    .line 226
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 227
    aget-byte v4, v1, v4

    or-int/2addr v2, v3

    and-int/2addr v2, v9

    .line 228
    iput v2, v0, Lk0/wc;->e:I

    .line 229
    sget v2, Lk0/nt;->a:I

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_34

    const v3, 0x4013e

    if-eq v2, v3, :cond_34

    const v3, 0x5013e

    if-eq v2, v3, :cond_34

    const v3, 0x20019

    if-eq v2, v3, :cond_34

    const/16 v3, 0x167

    if-eq v2, v3, :cond_34

    const v3, 0x10167

    if-eq v2, v3, :cond_34

    const v3, 0x20167

    if-eq v2, v3, :cond_34

    const/16 v3, 0x17b

    if-eq v2, v3, :cond_34

    const v3, 0x7017b

    if-eq v2, v3, :cond_34

    const v3, 0x8017b

    if-eq v2, v3, :cond_34

    const v3, 0x9017b

    if-eq v2, v3, :cond_34

    const v3, 0x24017b

    if-eq v2, v3, :cond_34

    const v3, 0xa017b

    if-eq v2, v3, :cond_34

    const v3, 0x25017b

    if-eq v2, v3, :cond_34

    const v3, 0xb017b

    if-eq v2, v3, :cond_34

    const v3, 0xc017b

    if-eq v2, v3, :cond_34

    const v3, 0xd017b

    if-eq v2, v3, :cond_34

    const v3, 0xe017b

    if-eq v2, v3, :cond_34

    const v3, 0xf017b

    if-eq v2, v3, :cond_34

    const v3, 0x10017b

    if-eq v2, v3, :cond_34

    const v3, 0x11017b

    if-eq v2, v3, :cond_34

    const v3, 0x12017b

    if-eq v2, v3, :cond_34

    const v3, 0x13017b

    if-eq v2, v3, :cond_34

    const v3, 0x14017b

    if-eq v2, v3, :cond_34

    const v3, 0x15017b

    if-eq v2, v3, :cond_34

    const v3, 0x16017b

    if-eq v2, v3, :cond_34

    const v3, 0x17017b

    if-eq v2, v3, :cond_34

    const v3, 0x18017b

    if-eq v2, v3, :cond_34

    const v3, 0x19017b

    if-eq v2, v3, :cond_34

    const v3, 0x1a017b

    if-eq v2, v3, :cond_34

    const v3, 0x1b017b

    if-eq v2, v3, :cond_34

    const v3, 0x1c017b

    if-eq v2, v3, :cond_34

    const v3, 0x1d017b

    if-eq v2, v3, :cond_34

    const v3, 0x26017b

    if-eq v2, v3, :cond_34

    const v3, 0x1e017b

    if-eq v2, v3, :cond_34

    const v3, 0x1f017b

    if-eq v2, v3, :cond_34

    const v3, 0x20017b

    if-ne v2, v3, :cond_2b

    goto/16 :goto_16

    :cond_2b
    const v3, 0x10019

    if-ne v2, v3, :cond_2f

    move v2, v10

    .line 230
    :goto_12
    iget-object v3, v0, Lk0/wc;->g:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_2d

    .line 231
    iget v5, v0, Lk0/wc;->e:I

    aget-object v6, v3, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_2c

    if-eqz v5, :cond_2d

    .line 232
    iput v2, v0, Lk0/wc;->d:I

    goto :goto_13

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2d
    :goto_13
    and-int/2addr v4, v9

    if-eqz v4, :cond_2e

    .line 233
    array-length v4, v3

    if-ge v2, v4, :cond_3c

    .line 234
    aget-object v2, v3, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 235
    :cond_2e
    array-length v4, v3

    if-gt v2, v4, :cond_3c

    .line 236
    iget v2, v0, Lk0/wc;->d:I

    aget-object v2, v3, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_2f
    const v3, 0x30019

    if-eq v2, v3, :cond_30

    const v3, 0x60019

    if-ne v2, v3, :cond_3c

    :cond_30
    move v2, v10

    .line 237
    :goto_14
    iget-object v3, v0, Lk0/wc;->h:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_32

    .line 238
    iget v5, v0, Lk0/wc;->e:I

    aget-object v6, v3, v2

    aget v6, v6, v10

    if-ne v5, v6, :cond_31

    if-eqz v5, :cond_32

    .line 239
    iput v2, v0, Lk0/wc;->d:I

    goto :goto_15

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_32
    :goto_15
    and-int/2addr v4, v9

    if-ne v4, v11, :cond_33

    .line 240
    array-length v4, v3

    if-ge v2, v4, :cond_3c

    .line 241
    aget-object v2, v3, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_33
    if-nez v4, :cond_3c

    .line 242
    array-length v4, v3

    if-gt v2, v4, :cond_3c

    .line 243
    iget v2, v0, Lk0/wc;->d:I

    aget-object v2, v3, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_34
    :goto_16
    move v2, v10

    .line 244
    :goto_17
    iget-object v3, v0, Lk0/wc;->f:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_36

    .line 245
    iget v6, v0, Lk0/wc;->e:I

    aget-object v7, v3, v2

    aget v7, v7, v10

    if-ne v6, v7, :cond_35

    if-eqz v6, :cond_36

    .line 246
    iput v2, v0, Lk0/wc;->d:I

    goto :goto_18

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 247
    :cond_36
    :goto_18
    iget v6, v0, Lk0/wc;->e:I

    const/16 v7, 0x86

    if-eq v6, v7, :cond_3a

    const/16 v5, 0x87

    if-eq v6, v5, :cond_38

    and-int/2addr v4, v9

    if-eqz v4, :cond_37

    .line 248
    array-length v4, v3

    if-ge v2, v4, :cond_3c

    .line 249
    aget-object v2, v3, v2

    aget v2, v2, v11

    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto :goto_19

    .line 250
    :cond_37
    array-length v4, v3

    if-gt v2, v4, :cond_3c

    .line 251
    iget v2, v0, Lk0/wc;->d:I

    aget-object v2, v3, v2

    aget v2, v2, v11

    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_19

    :cond_38
    and-int/lit16 v2, v4, 0xff

    if-ne v2, v11, :cond_3c

    .line 252
    sget v2, Lh0/c;->E:I

    if-eq v2, v8, :cond_39

    const/4 v3, 0x4

    if-eq v2, v3, :cond_39

    const/4 v3, 0x5

    if-eq v2, v3, :cond_39

    const/16 v2, 0xc

    .line 253
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 254
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_19

    :cond_39
    const/16 v2, 0x1a

    .line 255
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 256
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto :goto_19

    :cond_3a
    and-int/lit16 v2, v4, 0xff

    if-ne v2, v11, :cond_3c

    .line 257
    sget v2, Lh0/c;->E:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3b

    .line 258
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    .line 259
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto :goto_19

    :cond_3b
    const/16 v2, 0x12

    .line 260
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 261
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    .line 262
    :cond_3c
    :goto_19
    invoke-super/range {p0 .. p3}, Lk0/lt;->U2([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x63
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1d
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/wc;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/wc;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/wc;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/wc;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/wc;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xcf

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

    :pswitch_0
    goto/16 :goto_0

    .line 1
    :pswitch_1
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0xe0

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x8b

    aput p3, p1, v4

    aput v4, p1, v2

    .line 4
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x90

    aput p3, p1, v4

    aput v4, p1, v2

    .line 6
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x88

    aput p3, p1, v4

    aput v4, p1, v2

    .line 8
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x86

    const/16 p3, 0xa

    .line 9
    invoke-virtual {p0, p1, p3, p2}, Lk0/wc;->h3(IB[I)V

    goto :goto_0

    .line 10
    :pswitch_6
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x85

    aput p3, p1, v4

    aput v4, p1, v2

    .line 11
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-virtual {p0, p2, v4}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v3

    const/16 p3, 0x84

    aput p3, p1, v4

    aput v4, p1, v2

    .line 13
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :pswitch_8
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p3, [I

    aput v1, p1, v3

    const/16 p3, 0x83

    aput p3, p1, v4

    aput v2, p1, v2

    .line 15
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v4

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 16
    :pswitch_9
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_0

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

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a3(I)V
    .locals 9

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

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)I
    .locals 3

    .line 1
    sget v0, Ln0/j4;->b:I

    const/16 v1, 0xa

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    mul-int/2addr p1, v1

    .line 2
    div-int/lit8 p1, p1, 0x7

    add-int/lit8 v1, p1, -0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public final d3(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0xe2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final e3()Z
    .locals 2

    .line 1
    sget v0, Ln0/j4;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f3([BII)V
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
    iget-object p3, p0, Lk0/wc;->i:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iput-object p1, p0, Lk0/wc;->i:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final g3(I)V
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

    iget v3, p0, Lk0/wc;->b:I

    if-nez v3, :cond_5

    .line 3
    iput v0, p0, Lk0/wc;->b:I

    .line 4
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lk0/wc;->c:I

    .line 5
    sget p1, Lu0/b;->j:I

    if-eqz p1, :cond_1

    .line 6
    invoke-static {v2}, Lu0/d;->M(I)V

    .line 7
    :cond_1
    sget p1, Lu0/b;->D:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lk0/wc;->b:I

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
    iget p1, p0, Lk0/wc;->b:I

    if-nez p1, :cond_8

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 22
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_6
    iget p1, p0, Lk0/wc;->b:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lk0/wc;->c:I

    if-eq p1, v1, :cond_7

    .line 24
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, p1}, Lu0/h;->c(I)V

    .line 25
    :cond_7
    iput v2, p0, Lk0/wc;->b:I

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

.method public final varargs h3(IB[I)V
    .locals 6

    and-int/lit16 v0, p2, 0xff

    .line 1
    array-length v1, p3

    if-lt v0, v1, :cond_3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    int-to-byte p1, p1

    const/4 v3, 0x1

    .line 4
    aput p1, v2, v3

    const/4 p1, 0x2

    .line 5
    aput p2, v2, p1

    .line 6
    array-length p1, p3

    move p2, v4

    :goto_0
    if-ge p2, p1, :cond_0

    add-int v3, v1, p2

    .line 7
    aget v5, p3, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput v5, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 8
    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge v4, v0, :cond_2

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget p3, v2, v4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params data length > size!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
