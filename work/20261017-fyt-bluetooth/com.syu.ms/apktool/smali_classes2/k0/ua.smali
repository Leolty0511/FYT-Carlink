.class public Lk0/ua;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:[[I

.field public i:[[I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/ua;->b:I

    .line 3
    iput v1, v0, Lk0/ua;->c:I

    .line 4
    iput v1, v0, Lk0/ua;->f:I

    const/16 v2, 0x2d

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
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

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    const/16 v25, 0x2b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    const/16 v25, 0x2c

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/ua;->g:[[I

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_2d

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_3b

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_3d

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_3e

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_3f

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_40

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_41

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_42

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_43

    const/16 v25, 0x16

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_44

    const/16 v25, 0x17

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_45

    const/16 v25, 0x18

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/ua;->h:[[I

    const/16 v2, 0x20

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_46

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_47

    aput-object v1, v2, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_48

    aput-object v1, v2, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_49

    aput-object v1, v2, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4a

    aput-object v1, v2, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_4b

    aput-object v1, v2, v8

    new-array v1, v3, [I

    fill-array-data v1, :array_4c

    aput-object v1, v2, v9

    new-array v1, v3, [I

    fill-array-data v1, :array_4d

    aput-object v1, v2, v10

    new-array v1, v3, [I

    fill-array-data v1, :array_4e

    aput-object v1, v2, v11

    new-array v1, v3, [I

    fill-array-data v1, :array_4f

    aput-object v1, v2, v12

    new-array v1, v3, [I

    fill-array-data v1, :array_50

    aput-object v1, v2, v13

    new-array v1, v3, [I

    fill-array-data v1, :array_51

    aput-object v1, v2, v14

    new-array v1, v3, [I

    fill-array-data v1, :array_52

    aput-object v1, v2, v15

    new-array v1, v3, [I

    fill-array-data v1, :array_53

    aput-object v1, v2, v16

    new-array v1, v3, [I

    fill-array-data v1, :array_54

    aput-object v1, v2, v17

    new-array v1, v3, [I

    fill-array-data v1, :array_55

    aput-object v1, v2, v18

    new-array v1, v3, [I

    fill-array-data v1, :array_56

    aput-object v1, v2, v19

    new-array v1, v3, [I

    fill-array-data v1, :array_57

    aput-object v1, v2, v20

    new-array v1, v3, [I

    fill-array-data v1, :array_58

    aput-object v1, v2, v21

    new-array v1, v3, [I

    fill-array-data v1, :array_59

    aput-object v1, v2, v22

    new-array v1, v3, [I

    fill-array-data v1, :array_5a

    aput-object v1, v2, v23

    new-array v1, v3, [I

    fill-array-data v1, :array_5b

    aput-object v1, v2, v24

    new-array v1, v3, [I

    fill-array-data v1, :array_5c

    const/16 v4, 0x16

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5d

    const/16 v4, 0x17

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5e

    const/16 v4, 0x18

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5f

    const/16 v4, 0x19

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_60

    const/16 v4, 0x1a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_61

    const/16 v4, 0x1b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_62

    const/16 v4, 0x1c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_63

    const/16 v4, 0x1d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_64

    const/16 v4, 0x1e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_65

    const/16 v3, 0x1f

    aput-object v1, v2, v3

    iput-object v2, v0, Lk0/ua;->i:[[I

    .line 8
    new-instance v1, Lk0/ua$a;

    invoke-direct {v1, v0}, Lk0/ua$a;-><init>(Lk0/ua;)V

    iput-object v1, v0, Lk0/ua;->j:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x84
        0x4
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
        0x88
        0xd
    .end array-data

    :array_8
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x19
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
        0x7
        0x15
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x16
    .end array-data

    :array_10
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_11
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_12
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_13
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_14
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_15
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_16
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_17
    .array-data 4
        0x10
        0xb
    .end array-data

    :array_18
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_19
    .array-data 4
        0x12
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_1b
    .array-data 4
        0x14
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x15
        0x27
    .end array-data

    :array_1d
    .array-data 4
        0x16
        0x5
    .end array-data

    :array_1e
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_1f
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_20
    .array-data 4
        0x19
        0x21
    .end array-data

    :array_21
    .array-data 4
        0x1a
        0x20
    .end array-data

    :array_22
    .array-data 4
        0x1b
        0x10
    .end array-data

    :array_23
    .array-data 4
        0x1c
        0x23
    .end array-data

    :array_24
    .array-data 4
        0x1d
        0x22
    .end array-data

    :array_25
    .array-data 4
        0x34
        0x21
    .end array-data

    :array_26
    .array-data 4
        0x35
        0x20
    .end array-data

    :array_27
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_28
    .array-data 4
        0x50
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x51
        0x2
    .end array-data

    :array_2a
    .array-data 4
        0x52
        0x24
    .end array-data

    :array_2b
    .array-data 4
        0x54
        0x2
    .end array-data

    :array_2c
    .array-data 4
        0x55
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_2e
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2f
    .array-data 4
        0x83
        0x1b
    .end array-data

    :array_30
    .array-data 4
        0x84
        0x1c
    .end array-data

    :array_31
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_32
    .array-data 4
        0x86
        0xd
    .end array-data

    :array_33
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_34
    .array-data 4
        0x1
        0x29
    .end array-data

    :array_35
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_37
    .array-data 4
        0x5
        0x18
    .end array-data

    :array_38
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_39
    .array-data 4
        0x7
        0x0
    .end array-data

    :array_3a
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0xa
        0x2a
    .end array-data

    :array_3c
    .array-data 4
        0xb
        0x2b
    .end array-data

    :array_3d
    .array-data 4
        0xc
        0x2c
    .end array-data

    :array_3e
    .array-data 4
        0xd
        0x2d
    .end array-data

    :array_3f
    .array-data 4
        0x10
        0x27
    .end array-data

    :array_40
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_41
    .array-data 4
        0x14
        0x26
    .end array-data

    :array_42
    .array-data 4
        0x15
        0x28
    .end array-data

    :array_43
    .array-data 4
        0x16
        0x3
    .end array-data

    :array_44
    .array-data 4
        0x1b
        0x24
    .end array-data

    :array_45
    .array-data 4
        0x36
        0x16
    .end array-data

    :array_46
    .array-data 4
        0x81
        0x21
    .end array-data

    :array_47
    .array-data 4
        0x82
        0x20
    .end array-data

    :array_48
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_49
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_4a
    .array-data 4
        0x85
        0xd
    .end array-data

    :array_4b
    .array-data 4
        0x86
        0x12
    .end array-data

    :array_4c
    .array-data 4
        0x87
        0x1a
    .end array-data

    :array_4d
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_4e
    .array-data 4
        0x2
        0x2c
    .end array-data

    :array_4f
    .array-data 4
        0x3
        0x2b
    .end array-data

    :array_50
    .array-data 4
        0x4
        0x2a
    .end array-data

    :array_51
    .array-data 4
        0x5
        0x0
    .end array-data

    :array_52
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_53
    .array-data 4
        0x7
        0x27
    .end array-data

    :array_54
    .array-data 4
        0x7
        0x28
    .end array-data

    :array_55
    .array-data 4
        0x9
        0x29
    .end array-data

    :array_56
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_57
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_58
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_59
    .array-data 4
        0xe
        0xb
    .end array-data

    :array_5a
    .array-data 4
        0xf
        0xb
    .end array-data

    :array_5b
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_5c
    .array-data 4
        0x13
        0x24
    .end array-data

    :array_5d
    .array-data 4
        0x14
        0x18
    .end array-data

    :array_5e
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_5f
    .array-data 4
        0x16
        0x2d
    .end array-data

    :array_60
    .array-data 4
        0x17
        0x21
    .end array-data

    :array_61
    .array-data 4
        0x18
        0x20
    .end array-data

    :array_62
    .array-data 4
        0x19
        0x1b
    .end array-data

    :array_63
    .array-data 4
        0x34
        0x1b
    .end array-data

    :array_64
    .array-data 4
        0x1a
        0x1c
    .end array-data

    :array_65
    .array-data 4
        0x35
        0x1c
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

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lk0/ua;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x80

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3b

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v2, v8, :cond_2c

    const/16 v12, 0x10

    const/16 v14, 0x8

    const/4 v15, 0x5

    const/4 v9, 0x3

    if-eq v2, v9, :cond_23

    const/16 v10, 0xd

    if-eq v2, v10, :cond_22

    const/16 v13, 0x1a

    if-eq v2, v13, :cond_4

    const/16 v13, 0x26

    if-eq v2, v13, :cond_3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_2e

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    add-int/lit8 v7, v2, 0x1

    .line 3
    aget-byte v7, v1, v7

    add-int/lit8 v9, v2, 0x2

    .line 4
    aget-byte v9, v1, v9

    add-int/lit8 v12, v2, 0x3

    .line 5
    aget-byte v12, v1, v12

    add-int/lit8 v13, v2, 0x4

    .line 6
    aget-byte v13, v1, v13

    add-int/lit8 v15, v2, 0x5

    .line 7
    aget-byte v15, v1, v15

    add-int/lit8 v16, v2, 0x6

    .line 8
    aget-byte v11, v1, v16

    add-int/lit8 v16, v2, 0x7

    .line 9
    aget-byte v8, v1, v16

    add-int/lit8 v16, v2, 0xa

    .line 10
    aget-byte v16, v1, v16

    add-int/lit8 v17, v2, 0xb

    .line 11
    aget-byte v17, v1, v17

    add-int/lit8 v18, v2, 0xc

    .line 12
    aget-byte v18, v1, v18

    add-int/2addr v2, v10

    .line 13
    aget-byte v2, v1, v2

    new-array v10, v6, [I

    and-int/2addr v3, v4

    shl-int/2addr v3, v14

    and-int/2addr v7, v4

    or-int/2addr v3, v7

    aput v3, v10, v5

    const/16 v3, 0x8a

    .line 14
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8b

    new-array v7, v6, [I

    and-int/2addr v9, v4

    shl-int/2addr v9, v14

    and-int/lit16 v10, v12, 0xff

    or-int/2addr v9, v10

    aput v9, v7, v5

    .line 15
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8c

    new-array v7, v6, [I

    and-int/lit16 v9, v13, 0xff

    shl-int/2addr v9, v14

    and-int/lit16 v10, v15, 0xff

    or-int/2addr v9, v10

    aput v9, v7, v5

    .line 16
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8d

    new-array v7, v6, [I

    and-int/lit16 v9, v11, 0xff

    shl-int/2addr v9, v14

    and-int/2addr v4, v8

    or-int/2addr v4, v9

    aput v4, v7, v5

    .line 17
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8e

    new-array v4, v6, [I

    and-int/lit8 v7, v16, 0x1

    aput v7, v4, v5

    .line 18
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8f

    new-array v4, v6, [I

    shr-int/lit8 v7, v16, 0x1

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 19
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x90

    new-array v4, v6, [I

    const/4 v7, 0x2

    shr-int/lit8 v8, v16, 0x2

    and-int/lit8 v7, v8, 0x1

    aput v7, v4, v5

    .line 20
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x91

    new-array v4, v6, [I

    and-int/lit8 v7, v17, 0x1

    aput v7, v4, v5

    .line 21
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v4, v6, [I

    shr-int/lit8 v7, v17, 0x1

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 22
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x93

    new-array v4, v6, [I

    const/4 v7, 0x2

    shr-int/lit8 v8, v17, 0x2

    and-int/lit8 v7, v8, 0x1

    aput v7, v4, v5

    .line 23
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x94

    new-array v4, v6, [I

    and-int/lit8 v7, v18, 0x1

    aput v7, v4, v5

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x95

    new-array v4, v6, [I

    shr-int/lit8 v7, v18, 0x1

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 25
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    const/4 v4, 0x2

    shr-int/lit8 v7, v18, 0x2

    and-int/lit8 v4, v7, 0x1

    aput v4, v3, v5

    const/16 v4, 0x96

    .line 26
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x97

    new-array v4, v6, [I

    and-int/lit8 v7, v2, 0x1

    aput v7, v4, v5

    .line 27
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x98

    new-array v4, v6, [I

    shr-int/lit8 v7, v2, 0x1

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 28
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x99

    new-array v4, v6, [I

    const/4 v7, 0x2

    shr-int/2addr v2, v7

    and-int/2addr v2, v6

    aput v2, v4, v5

    .line 29
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 30
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 31
    aget-byte v3, v1, v3

    add-int/lit8 v7, p2, 0x4

    .line 32
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x5

    .line 33
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x6

    .line 34
    aget-byte v9, v1, v9

    const/16 v10, 0x87

    new-array v11, v6, [I

    and-int/2addr v2, v4

    shl-int/2addr v2, v14

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v11, v5

    .line 35
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x408

    new-array v10, v6, [I

    aput v2, v10, v5

    .line 36
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v6, [I

    and-int/2addr v7, v4

    shl-int/2addr v7, v14

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v6, [I

    and-int/2addr v4, v9

    aput v4, v3, v5

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :pswitch_2
    add-int/lit8 v2, p2, 0x3

    .line 39
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 40
    aget-byte v3, v1, v3

    add-int/lit8 v7, p2, 0x6

    .line 41
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x7

    .line 42
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x8

    .line 43
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x9

    .line 44
    aget-byte v10, v1, v10

    const/16 v11, 0x84

    new-array v13, v6, [I

    and-int/2addr v2, v4

    aput v2, v13, v5

    .line 45
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v6

    and-int/lit8 v3, v3, 0x7f

    if-ne v2, v6, :cond_0

    rsub-int v3, v3, 0xff

    :cond_0
    const/16 v2, 0x85

    new-array v11, v6, [I

    aput v3, v11, v5

    .line 46
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v7, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v3, v8, 0xff

    shl-int/2addr v3, v12

    or-int/2addr v2, v3

    and-int/lit16 v3, v9, 0xff

    shl-int/2addr v3, v14

    or-int/2addr v2, v3

    and-int/lit16 v3, v10, 0xff

    or-int/2addr v2, v3

    const/16 v3, 0x86

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 47
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 48
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 49
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    const/4 v4, 0x2

    .line 50
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 51
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    aput v4, v3, v5

    const/4 v4, 0x2

    .line 52
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 53
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 54
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 55
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v6

    aput v2, v3, v5

    .line 56
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    .line 57
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_49

    add-int/lit8 v2, p2, 0x2

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    goto/16 :goto_2e

    .line 62
    :pswitch_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_49

    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 65
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lk0/ua;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    goto/16 :goto_2e

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 68
    aget-byte v3, v1, v3

    const/16 v7, 0x82

    new-array v6, v6, [I

    and-int/2addr v2, v4

    shl-int/2addr v2, v14

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 69
    div-int/2addr v2, v12

    aput v2, v6, v5

    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 70
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 71
    aget-byte v4, v1, v4

    const/16 v7, 0x75

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 72
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x76

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 73
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x77

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 74
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x78

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 75
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x79

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 76
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x7a

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x2

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 77
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x7b

    new-array v8, v6, [I

    and-int/2addr v2, v9

    aput v2, v8, v5

    .line 78
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v7, v6, [I

    shr-int/lit8 v8, v4, 0x7

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 79
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v7, v6, [I

    shr-int/lit8 v8, v4, 0x6

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 80
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v7, v6, [I

    shr-int/lit8 v8, v4, 0x5

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 81
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v7, v6, [I

    shr-int/lit8 v8, v4, 0x4

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 82
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v7, v4, 0x3

    and-int/2addr v7, v6

    aput v7, v2, v5

    .line 83
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v6, [I

    shr-int/lit8 v7, v4, 0x2

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 84
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v6, [I

    and-int/2addr v4, v9

    aput v4, v3, v5

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 86
    aget-byte v2, v1, v2

    invoke-virtual {v0, v2}, Lk0/ua;->c3(I)V

    goto/16 :goto_2e

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Lk0/ua;->b3([BII)V

    goto/16 :goto_2e

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 88
    aget-byte v2, v1, v2

    const/16 v3, 0xb8

    new-array v4, v6, [I

    and-int/2addr v2, v6

    aput v2, v4, v5

    .line 89
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 91
    aget-byte v3, v1, v3

    const/16 v4, 0x68

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 92
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x69

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v9

    aput v8, v7, v5

    .line 93
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6a

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 94
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 95
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6c

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v9

    aput v8, v7, v5

    .line 96
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6d

    new-array v7, v6, [I

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 97
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x7

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 98
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x5

    and-int/2addr v7, v9

    aput v7, v4, v5

    .line 99
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x4

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 100
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x3

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 101
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v6, [I

    and-int/2addr v3, v6

    aput v3, v4, v5

    .line 102
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 104
    aget-byte v3, v1, v3

    const/16 v4, 0x61

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v9

    aput v8, v7, v5

    .line 105
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x62

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v9

    aput v8, v7, v5

    .line 106
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x63

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v9

    aput v8, v7, v5

    .line 107
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x64

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 108
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x65

    new-array v7, v6, [I

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 109
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v6

    if-nez v2, :cond_2

    const/16 v2, 0x66

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x3

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 110
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x66

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x4

    and-int/2addr v7, v9

    aput v7, v4, v5

    .line 111
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v2, 0x67

    new-array v4, v6, [I

    and-int/2addr v3, v9

    aput v3, v4, v5

    .line 112
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 113
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, v1, v3

    const/16 v4, 0x1e78

    invoke-static {v2, v3, v5, v4}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_2e

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 114
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 115
    aget-byte v3, v1, v3

    and-int/2addr v2, v4

    if-eqz v2, :cond_21

    if-eq v2, v6, :cond_1d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_15

    if-eq v2, v9, :cond_12

    if-eq v2, v7, :cond_d

    if-eq v2, v15, :cond_5

    goto/16 :goto_2e

    :cond_5
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_6

    move v2, v5

    goto :goto_2

    :cond_6
    move v2, v6

    :goto_2
    const/16 v4, 0xb1

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 116
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v6

    if-nez v2, :cond_7

    move v2, v5

    goto :goto_3

    :cond_7
    move v2, v6

    :goto_3
    const/16 v4, 0xb2

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 117
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v6

    if-nez v2, :cond_8

    move v2, v5

    goto :goto_4

    :cond_8
    move v2, v6

    :goto_4
    const/16 v4, 0xb3

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 118
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v6

    if-nez v2, :cond_9

    move v2, v5

    goto :goto_5

    :cond_9
    move v2, v6

    :goto_5
    const/16 v4, 0xb4

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 119
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x4

    and-int/2addr v2, v6

    if-nez v2, :cond_a

    move v2, v5

    goto :goto_6

    :cond_a
    move v2, v6

    :goto_6
    const/16 v4, 0xb5

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 120
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v6

    if-nez v2, :cond_b

    move v2, v5

    goto :goto_7

    :cond_b
    move v2, v6

    :goto_7
    const/16 v4, 0xb6

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 121
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v6

    if-nez v2, :cond_c

    move v2, v5

    goto :goto_8

    :cond_c
    move v2, v6

    :goto_8
    const/16 v3, 0xb7

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 122
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_d
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_e

    move v2, v5

    goto :goto_9

    :cond_e
    move v2, v6

    :goto_9
    const/16 v4, 0xad

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 123
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v6

    if-nez v2, :cond_f

    move v2, v5

    goto :goto_a

    :cond_f
    move v2, v6

    :goto_a
    const/16 v4, 0xae

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 124
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v6

    if-nez v2, :cond_10

    move v2, v5

    goto :goto_b

    :cond_10
    move v2, v6

    :goto_b
    const/16 v4, 0xaf

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 125
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v6

    if-nez v2, :cond_11

    move v2, v5

    goto :goto_c

    :cond_11
    move v2, v6

    :goto_c
    const/16 v3, 0xac

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 126
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_12
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_13

    move v2, v5

    goto :goto_d

    :cond_13
    move v2, v6

    :goto_d
    const/16 v4, 0xab

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 127
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v6

    if-nez v2, :cond_14

    move v2, v5

    goto :goto_e

    :cond_14
    move v2, v6

    :goto_e
    const/16 v3, 0xac

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 128
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_15
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_16

    move v2, v5

    goto :goto_f

    :cond_16
    move v2, v6

    :goto_f
    const/16 v4, 0xa4

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 129
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v6

    if-nez v2, :cond_17

    move v2, v5

    goto :goto_10

    :cond_17
    move v2, v6

    :goto_10
    new-array v4, v6, [I

    aput v2, v4, v5

    const/16 v2, 0xa5

    .line 130
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v6

    if-nez v2, :cond_18

    move v2, v5

    goto :goto_11

    :cond_18
    move v2, v6

    :goto_11
    const/16 v4, 0xa6

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 131
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x3

    and-int/2addr v2, v6

    if-nez v2, :cond_19

    move v2, v5

    goto :goto_12

    :cond_19
    move v2, v6

    :goto_12
    const/16 v4, 0xa7

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 132
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x4

    and-int/2addr v2, v6

    if-nez v2, :cond_1a

    move v2, v5

    goto :goto_13

    :cond_1a
    move v2, v6

    :goto_13
    const/16 v4, 0xa8

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 133
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x5

    and-int/2addr v2, v6

    if-nez v2, :cond_1b

    move v2, v5

    goto :goto_14

    :cond_1b
    move v2, v6

    :goto_14
    const/16 v4, 0xa9

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 134
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x6

    and-int/2addr v2, v6

    if-nez v2, :cond_1c

    move v2, v5

    goto :goto_15

    :cond_1c
    move v2, v6

    :goto_15
    const/16 v3, 0xaa

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 135
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_1d
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_1e

    move v2, v5

    goto :goto_16

    :cond_1e
    move v2, v6

    :goto_16
    const/16 v4, 0xa2

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 136
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x1

    and-int/2addr v2, v6

    if-nez v2, :cond_1f

    move v2, v5

    goto :goto_17

    :cond_1f
    move v2, v6

    :goto_17
    const/16 v4, 0xa3

    new-array v7, v6, [I

    aput v2, v7, v5

    .line 137
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x2

    shr-int/lit8 v2, v3, 0x2

    and-int/2addr v2, v6

    if-nez v2, :cond_20

    move v2, v5

    goto :goto_18

    :cond_20
    move v2, v6

    :goto_18
    const/16 v3, 0xba

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 138
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_21
    const/16 v2, 0x9a

    new-array v4, v6, [I

    and-int/lit8 v7, v3, 0x1

    aput v7, v4, v5

    .line 139
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v3, 0x1

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/16 v4, 0x9b

    .line 140
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x2

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 141
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x3

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 142
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x4

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 143
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v4, v6, [I

    shr-int/lit8 v7, v3, 0x5

    and-int/2addr v7, v6

    aput v7, v4, v5

    .line 144
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    shr-int/lit8 v4, v3, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    const/16 v4, 0xa0

    .line 145
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v4, v6, [I

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v6

    aput v3, v4, v5

    .line 146
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_22
    const/16 v2, 0x83

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x2

    .line 147
    aget-byte v4, v1, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2e

    :cond_23
    add-int/lit8 v2, p2, 0x2

    .line 148
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 149
    aget-byte v3, v1, v3

    add-int/lit8 v7, p2, 0x4

    .line 150
    aget-byte v8, v1, v7

    add-int/lit8 v9, p2, 0x5

    .line 151
    aget-byte v10, v1, v9

    add-int/lit8 v11, p2, 0x6

    .line 152
    aget-byte v11, v1, v11

    new-array v13, v6, [I

    shr-int/lit8 v19, v2, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v13, v5

    const/16 v15, 0xa

    .line 153
    invoke-static {v15, v13}, Lk0/qt;->y0(I[I)V

    new-array v13, v6, [I

    shr-int/lit8 v20, v2, 0x6

    and-int/lit8 v20, v20, 0x1

    aput v20, v13, v5

    const/16 v15, 0xb

    .line 154
    invoke-static {v15, v13}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0xc

    new-array v15, v6, [I

    shr-int/lit8 v21, v2, 0x5

    and-int/lit8 v21, v21, 0x1

    aput v21, v15, v5

    .line 155
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    new-array v13, v6, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v6

    aput v15, v13, v5

    .line 156
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x36

    new-array v13, v6, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v6

    aput v15, v13, v5

    .line 157
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v12, v3, 0x4

    and-int/2addr v12, v6

    if-nez v12, :cond_24

    const/16 v12, 0x15

    new-array v13, v6, [I

    and-int/lit8 v2, v2, 0x7

    aput v2, v13, v5

    .line 158
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_24
    if-ne v12, v6, :cond_25

    const/16 v2, 0x15

    new-array v12, v6, [I

    aput v14, v12, v5

    .line 159
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    :cond_25
    :goto_19
    const/16 v2, 0x34

    new-array v12, v6, [I

    shr-int/lit8 v13, v3, 0x6

    and-int/2addr v13, v6

    aput v13, v12, v5

    .line 160
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    and-int/2addr v3, v2

    and-int/2addr v3, v4

    packed-switch v3, :pswitch_data_3

    move v12, v5

    move v13, v12

    move v14, v13

    :goto_1a
    move v15, v14

    :goto_1b
    move/from16 v21, v15

    goto/16 :goto_1c

    :pswitch_d
    move v12, v5

    move v13, v12

    move v14, v6

    goto :goto_1a

    :pswitch_e
    move v12, v5

    move v13, v12

    move v15, v13

    move v14, v6

    move/from16 v21, v14

    goto :goto_1c

    :pswitch_f
    move v12, v5

    move v13, v12

    move v15, v13

    move/from16 v21, v15

    move v14, v6

    goto :goto_1c

    :pswitch_10
    move v12, v5

    move v13, v12

    move/from16 v21, v13

    move v14, v6

    move v15, v14

    goto :goto_1c

    :pswitch_11
    move v12, v5

    move v13, v12

    move v14, v13

    move/from16 v21, v14

    move v15, v6

    goto :goto_1c

    :pswitch_12
    move v12, v5

    move v13, v12

    move v14, v13

    move v15, v6

    goto :goto_1b

    :pswitch_13
    move v12, v5

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v21, v6

    goto :goto_1c

    :pswitch_14
    move v12, v5

    move v14, v12

    move v15, v14

    move/from16 v21, v15

    move v13, v6

    goto :goto_1c

    :pswitch_15
    move v13, v5

    move v14, v13

    move v15, v14

    move/from16 v21, v15

    move v12, v6

    :goto_1c
    const/16 v4, 0x31

    new-array v2, v6, [I

    aput v12, v2, v5

    .line 161
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    aput v13, v2, v5

    const/16 v4, 0xf

    .line 162
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v4, v6, [I

    aput v14, v4, v5

    .line 163
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v6, [I

    aput v15, v4, v5

    .line 164
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v6, [I

    aput v21, v4, v5

    .line 165
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v4, v6, [I

    aput v3, v4, v5

    .line 166
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 167
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 168
    aget-byte v8, v1, v9

    .line 169
    aget-byte v10, v1, v7

    :cond_26
    const/16 v2, 0xff

    and-int/lit16 v3, v8, 0xff

    const/16 v4, 0x1b

    const/16 v7, 0x1c

    if-eqz v3, :cond_27

    if-eq v3, v2, :cond_27

    packed-switch v3, :pswitch_data_4

    if-lt v3, v6, :cond_28

    if-gt v3, v7, :cond_28

    new-array v2, v6, [I

    const/4 v8, 0x5

    mul-int/2addr v3, v8

    const/16 v8, 0xa5

    add-int/2addr v3, v8

    aput v3, v2, v5

    .line 170
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :pswitch_16
    new-array v2, v6, [I

    const/16 v3, 0x136

    aput v3, v2, v5

    .line 171
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :pswitch_17
    new-array v2, v6, [I

    const/16 v3, 0x9b

    aput v3, v2, v5

    .line 172
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :pswitch_18
    new-array v2, v6, [I

    const/16 v3, 0x96

    aput v3, v2, v5

    .line 173
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :pswitch_19
    new-array v2, v6, [I

    const/16 v3, 0xa5

    aput v3, v2, v5

    .line 174
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :pswitch_1a
    new-array v2, v6, [I

    const/16 v3, 0xa0

    aput v3, v2, v5

    .line 175
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_27
    :pswitch_1b
    new-array v2, v6, [I

    aput v3, v2, v5

    .line 176
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_28
    :goto_1d
    const/16 v2, 0xff

    and-int/lit16 v3, v10, 0xff

    if-eqz v3, :cond_29

    if-eq v3, v2, :cond_29

    packed-switch v3, :pswitch_data_5

    if-lt v3, v6, :cond_2a

    if-gt v3, v7, :cond_2a

    new-array v2, v6, [I

    const/4 v4, 0x5

    mul-int/2addr v3, v4

    const/16 v4, 0xa5

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 177
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :pswitch_1c
    new-array v2, v6, [I

    const/16 v3, 0x136

    aput v3, v2, v5

    .line 178
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :pswitch_1d
    new-array v2, v6, [I

    const/16 v3, 0x9b

    aput v3, v2, v5

    .line 179
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :pswitch_1e
    new-array v2, v6, [I

    const/16 v3, 0x96

    aput v3, v2, v5

    .line 180
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :pswitch_1f
    new-array v2, v6, [I

    const/16 v3, 0xa5

    aput v3, v2, v5

    .line 181
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :pswitch_20
    new-array v2, v6, [I

    const/16 v3, 0xa0

    aput v3, v2, v5

    .line 182
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1e

    :cond_29
    :pswitch_21
    new-array v2, v6, [I

    aput v3, v2, v5

    .line 183
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :cond_2a
    :goto_1e
    const/16 v2, 0x1d

    new-array v3, v6, [I

    shr-int/lit8 v4, v11, 0x4

    const/16 v7, 0xf

    and-int/2addr v4, v7

    aput v4, v3, v5

    .line 184
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v6, [I

    and-int/lit8 v4, v11, 0xf

    aput v4, v3, v5

    .line 185
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 186
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_49

    add-int/lit8 v2, p2, 0x7

    .line 187
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0x80

    if-lez v3, :cond_2b

    const/16 v3, 0xff

    and-int/2addr v2, v3

    not-int v2, v2

    add-int/2addr v2, v6

    and-int/2addr v2, v3

    const/16 v4, 0xa

    mul-int/2addr v2, v4

    rsub-int v2, v2, 0x3e8

    goto :goto_1f

    :cond_2b
    const/16 v3, 0xff

    const/16 v4, 0xa

    and-int/2addr v2, v3

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x3e8

    .line 188
    :goto_1f
    invoke-static {v2}, Lu0/d;->A3(I)V

    goto/16 :goto_2e

    :cond_2c
    move v3, v4

    add-int/lit8 v2, p2, 0x2

    .line 189
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v8, p2, 0x3

    .line 190
    aget-byte v9, v1, v8

    and-int/2addr v9, v3

    if-ne v9, v6, :cond_2d

    if-ne v4, v7, :cond_2d

    .line 191
    invoke-static {}, Lo1/u;->v()I

    .line 192
    :cond_2d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 193
    aget-byte v2, v1, v2

    .line 194
    aget-byte v4, v1, v8

    and-int/2addr v2, v3

    .line 195
    iput v2, v0, Lk0/ua;->f:I

    .line 196
    sget v2, Lk0/nt;->a:I

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_37

    const v3, 0x4013e

    if-eq v2, v3, :cond_37

    const v3, 0x5013e

    if-eq v2, v3, :cond_37

    const v3, 0x20019

    if-ne v2, v3, :cond_2e

    goto/16 :goto_24

    :cond_2e
    const v3, 0x10019

    if-ne v2, v3, :cond_32

    move v2, v5

    .line 197
    :goto_20
    iget-object v3, v0, Lk0/ua;->h:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_30

    .line 198
    iget v7, v0, Lk0/ua;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_2f

    if-eqz v7, :cond_30

    .line 199
    iput v2, v0, Lk0/ua;->e:I

    goto :goto_21

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_30
    :goto_21
    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eqz v4, :cond_31

    .line 200
    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 201
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    .line 202
    :cond_31
    array-length v4, v3

    if-gt v2, v4, :cond_49

    .line 203
    iget v2, v0, Lk0/ua;->e:I

    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    :cond_32
    const v3, 0x30019

    if-eq v2, v3, :cond_33

    const v3, 0x60019

    if-ne v2, v3, :cond_49

    :cond_33
    move v2, v5

    .line 204
    :goto_22
    iget-object v3, v0, Lk0/ua;->i:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_35

    .line 205
    iget v7, v0, Lk0/ua;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_34

    if-eqz v7, :cond_35

    .line 206
    iput v2, v0, Lk0/ua;->e:I

    goto :goto_23

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_35
    :goto_23
    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eqz v4, :cond_36

    .line 207
    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 208
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    .line 209
    :cond_36
    array-length v4, v3

    if-gt v2, v4, :cond_49

    .line 210
    iget v2, v0, Lk0/ua;->e:I

    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    :cond_37
    :goto_24
    move v2, v5

    .line 211
    :goto_25
    iget-object v3, v0, Lk0/ua;->g:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_39

    .line 212
    iget v7, v0, Lk0/ua;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_38

    if-eqz v7, :cond_39

    .line 213
    iput v2, v0, Lk0/ua;->e:I

    goto :goto_26

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_39
    :goto_26
    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eqz v4, :cond_3a

    .line 214
    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 215
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    .line 216
    :cond_3a
    array-length v4, v3

    if-gt v2, v4, :cond_49

    .line 217
    iget v2, v0, Lk0/ua;->e:I

    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    .line 218
    :cond_3b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_49

    add-int/lit8 v2, p2, 0x2

    .line 219
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 220
    aget-byte v4, v1, v4

    or-int/2addr v2, v3

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 221
    iput v2, v0, Lk0/ua;->f:I

    .line 222
    sget v2, Lk0/nt;->a:I

    const/16 v3, 0xfd

    if-eq v2, v3, :cond_45

    const v3, 0x4013e

    if-eq v2, v3, :cond_45

    const v3, 0x5013e

    if-eq v2, v3, :cond_45

    const v3, 0x20019

    if-ne v2, v3, :cond_3c

    goto/16 :goto_2b

    :cond_3c
    const v3, 0x10019

    if-ne v2, v3, :cond_40

    move v2, v5

    .line 223
    :goto_27
    iget-object v3, v0, Lk0/ua;->h:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_3e

    .line 224
    iget v7, v0, Lk0/ua;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_3d

    if-eqz v7, :cond_3e

    .line 225
    iput v2, v0, Lk0/ua;->e:I

    goto :goto_28

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3e
    :goto_28
    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eqz v4, :cond_3f

    .line 226
    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 227
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    .line 228
    :cond_3f
    array-length v4, v3

    if-gt v2, v4, :cond_49

    .line 229
    iget v2, v0, Lk0/ua;->e:I

    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_2e

    :cond_40
    const v3, 0x30019

    if-eq v2, v3, :cond_41

    const v3, 0x60019

    if-ne v2, v3, :cond_49

    :cond_41
    move v2, v5

    .line 230
    :goto_29
    iget-object v3, v0, Lk0/ua;->i:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_43

    .line 231
    iget v7, v0, Lk0/ua;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_42

    if-eqz v7, :cond_43

    .line 232
    iput v2, v0, Lk0/ua;->e:I

    goto :goto_2a

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_43
    :goto_2a
    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eqz v4, :cond_44

    .line 233
    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 234
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_2e

    .line 235
    :cond_44
    array-length v4, v3

    if-gt v2, v4, :cond_49

    .line 236
    iget v2, v0, Lk0/ua;->e:I

    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_2e

    :cond_45
    :goto_2b
    move v2, v5

    .line 237
    :goto_2c
    iget-object v3, v0, Lk0/ua;->g:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_47

    .line 238
    iget v7, v0, Lk0/ua;->f:I

    aget-object v8, v3, v2

    aget v8, v8, v5

    if-ne v7, v8, :cond_46

    if-eqz v7, :cond_47

    .line 239
    iput v2, v0, Lk0/ua;->e:I

    goto :goto_2d

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_47
    :goto_2d
    const/16 v7, 0xff

    and-int/2addr v4, v7

    if-eqz v4, :cond_48

    .line 240
    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 241
    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_2e

    .line 242
    :cond_48
    array-length v4, v3

    if-gt v2, v4, :cond_49

    .line 243
    iget v2, v0, Lk0/ua;->e:I

    aget-object v2, v3, v2

    aget v2, v2, v6

    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    .line 244
    :cond_49
    :goto_2e
    invoke-super/range {p0 .. p3}, Lk0/lt;->U2([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1d
        :pswitch_1a
        :pswitch_1b
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_21
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/ua;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xbb

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
    invoke-virtual {p0, p1, p3, p2}, Lk0/ua;->d3(IB[I)V

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

.method public final a3(I)I
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

    const/16 p2, 0x73

    .line 11
    iget-object p3, p0, Lk0/ua;->k:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iput-object p1, p0, Lk0/ua;->k:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final c3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x74

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    if-eqz p1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v0, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget p1, Lh0/c;->G:I

    if-nez p1, :cond_5

    iget v4, p0, Lk0/ua;->c:I

    if-nez v4, :cond_5

    .line 3
    iput v0, p0, Lk0/ua;->c:I

    .line 4
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lk0/ua;->d:I

    .line 5
    sget p1, Lu0/b;->j:I

    if-eqz p1, :cond_1

    .line 6
    invoke-static {v2}, Lu0/d;->M(I)V

    .line 7
    :cond_1
    sget p1, Lu0/b;->D:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lk0/ua;->c:I

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
    iget p1, p0, Lk0/ua;->c:I

    if-nez p1, :cond_8

    new-array p1, v3, [I

    .line 22
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_6
    iget p1, p0, Lk0/ua;->c:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lk0/ua;->d:I

    if-eq p1, v1, :cond_7

    .line 24
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, p1}, Lu0/h;->c(I)V

    .line 25
    :cond_7
    iput v2, p0, Lk0/ua;->c:I

    .line 26
    iput v2, p0, Lk0/ua;->b:I

    :catch_0
    :cond_8
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xba
        0x3
        0x0
    .end array-data
.end method

.method public final varargs d3(IB[I)V
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
