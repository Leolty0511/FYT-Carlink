.class public Lk0/v7;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:[[I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/v7;->c:I

    const/16 v2, 0x2c

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

    new-array v4, v3, [I

    fill-array-data v4, :array_2a

    const/16 v25, 0x2a

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    const/16 v25, 0x2b

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/v7;->d:[[I

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_2c

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_3b

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_3d

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_3e

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_3f

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_40

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_41

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_42

    const/16 v25, 0x16

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_43

    const/16 v25, 0x17

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_44

    const/16 v25, 0x18

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/v7;->e:[[I

    const/16 v2, 0x20

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_45

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_46

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_47

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_48

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_49

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4a

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_4b

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_4c

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_4d

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_4e

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_4f

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_50

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_51

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_52

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_53

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_54

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_55

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_56

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_57

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_58

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_59

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_5a

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_5b

    const/16 v5, 0x16

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5c

    const/16 v5, 0x17

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5d

    const/16 v5, 0x18

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5e

    const/16 v5, 0x19

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5f

    const/16 v5, 0x1a

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_60

    const/16 v5, 0x1b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_61

    const/16 v5, 0x1c

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_62

    const/16 v5, 0x1d

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_63

    const/16 v5, 0x1e

    aput-object v4, v2, v5

    new-array v3, v3, [I

    fill-array-data v3, :array_64

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    iput-object v2, v0, Lk0/v7;->f:[[I

    .line 6
    iput-boolean v1, v0, Lk0/v7;->g:Z

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
        0x53
        0x5
    .end array-data

    :array_2a
    .array-data 4
        0x54
        0x2
    .end array-data

    :array_2b
    .array-data 4
        0x55
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_2d
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2e
    .array-data 4
        0x83
        0x1b
    .end array-data

    :array_2f
    .array-data 4
        0x84
        0x1c
    .end array-data

    :array_30
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_31
    .array-data 4
        0x86
        0xd
    .end array-data

    :array_32
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_33
    .array-data 4
        0x1
        0x29
    .end array-data

    :array_34
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_35
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_36
    .array-data 4
        0x5
        0x18
    .end array-data

    :array_37
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_38
    .array-data 4
        0x7
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_3a
    .array-data 4
        0xa
        0x2a
    .end array-data

    :array_3b
    .array-data 4
        0xb
        0x2b
    .end array-data

    :array_3c
    .array-data 4
        0xc
        0x2c
    .end array-data

    :array_3d
    .array-data 4
        0xd
        0x2d
    .end array-data

    :array_3e
    .array-data 4
        0x10
        0x27
    .end array-data

    :array_3f
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_40
    .array-data 4
        0x14
        0x26
    .end array-data

    :array_41
    .array-data 4
        0x15
        0x28
    .end array-data

    :array_42
    .array-data 4
        0x16
        0x3
    .end array-data

    :array_43
    .array-data 4
        0x1b
        0x24
    .end array-data

    :array_44
    .array-data 4
        0x36
        0x16
    .end array-data

    :array_45
    .array-data 4
        0x81
        0x21
    .end array-data

    :array_46
    .array-data 4
        0x82
        0x20
    .end array-data

    :array_47
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_49
    .array-data 4
        0x85
        0xd
    .end array-data

    :array_4a
    .array-data 4
        0x86
        0x12
    .end array-data

    :array_4b
    .array-data 4
        0x87
        0x1a
    .end array-data

    :array_4c
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x2
        0x2c
    .end array-data

    :array_4e
    .array-data 4
        0x3
        0x2b
    .end array-data

    :array_4f
    .array-data 4
        0x4
        0x2a
    .end array-data

    :array_50
    .array-data 4
        0x5
        0x0
    .end array-data

    :array_51
    .array-data 4
        0x6
        0x1
    .end array-data

    :array_52
    .array-data 4
        0x7
        0x27
    .end array-data

    :array_53
    .array-data 4
        0x7
        0x28
    .end array-data

    :array_54
    .array-data 4
        0x9
        0x29
    .end array-data

    :array_55
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_56
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_57
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_58
    .array-data 4
        0xe
        0xb
    .end array-data

    :array_59
    .array-data 4
        0xf
        0xb
    .end array-data

    :array_5a
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_5b
    .array-data 4
        0x13
        0x24
    .end array-data

    :array_5c
    .array-data 4
        0x14
        0x18
    .end array-data

    :array_5d
    .array-data 4
        0x15
        0xc
    .end array-data

    :array_5e
    .array-data 4
        0x16
        0x2d
    .end array-data

    :array_5f
    .array-data 4
        0x17
        0x21
    .end array-data

    :array_60
    .array-data 4
        0x18
        0x20
    .end array-data

    :array_61
    .array-data 4
        0x19
        0x1b
    .end array-data

    :array_62
    .array-data 4
        0x34
        0x1b
    .end array-data

    :array_63
    .array-data 4
        0x1a
        0x1c
    .end array-data

    :array_64
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

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->o:I

    return-void
.end method

.method public U2([BII)V
    .locals 7

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_a

    if-eq v0, v1, :cond_8

    const/16 v6, 0x26

    if-eq v0, v6, :cond_7

    const/16 v6, 0x30

    if-eq v0, v6, :cond_6

    const/16 p3, 0x7d

    if-eq v0, p3, :cond_1

    const/4 p3, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    const-string p2, "persist.syu.reversefrontdoor"

    .line 3
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 4
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 5
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x6

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x7

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 7
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x5

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 8
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v3

    aput v0, p2, v2

    .line 9
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v3, [I

    shr-int/2addr p1, v1

    and-int/2addr p1, v3

    aput p1, p2, v2

    .line 10
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    .line 11
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, p2, 0x2

    .line 12
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/v7;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 13
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/v7;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 14
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/v7;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    add-int/2addr p2, p3

    .line 15
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/v7;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_6

    .line 16
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, p2, 0x2

    .line 17
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/v7;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 18
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/v7;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 19
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lk0/v7;->a3(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/2addr p2, p3

    .line 20
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lk0/v7;->a3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 21
    aget-byte p3, p1, p3

    and-int/lit16 p3, p3, 0xff

    if-eq p3, v3, :cond_4

    const/16 v0, 0x8

    if-eq p3, v1, :cond_3

    if-eq p3, v0, :cond_2

    goto/16 :goto_6

    :cond_2
    add-int/lit8 p3, p2, 0x3

    .line 22
    aget-byte p3, p1, p3

    add-int/2addr p2, v4

    .line 23
    aget-byte p1, p1, p2

    const/16 p2, 0x21c

    .line 24
    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    .line 25
    iput-boolean v3, p0, Lk0/v7;->g:Z

    goto/16 :goto_6

    :cond_3
    add-int/lit8 p3, p2, 0x4

    .line 26
    aget-byte p3, p1, p3

    shl-int/2addr p3, v0

    const v0, 0xff00

    and-int/2addr p3, v0

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x64

    const/16 p2, 0x407

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 27
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 28
    sget-object p2, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x419

    new-array v0, v5, [I

    aput v3, v0, v2

    aput p1, v0, v3

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string p3, "persist.fyt.leftrightlighttype"

    .line 29
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_5

    add-int/2addr p2, v1

    .line 30
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v3

    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v3

    invoke-static {p3, p1, v2}, Ll0/c0;->b(III)V

    goto/16 :goto_6

    :cond_5
    add-int/2addr p2, v1

    .line 31
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v3

    aget-byte p1, p1, p2

    shr-int/2addr p1, v4

    and-int/2addr p1, v3

    invoke-static {p3, p1, v2}, Ll0/c0;->a(III)V

    goto/16 :goto_6

    .line 32
    :cond_6
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 33
    :cond_7
    iget-boolean p3, p0, Lk0/v7;->g:Z

    if-nez p3, :cond_13

    add-int/lit8 p3, p2, 0x2

    .line 34
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x1e14

    invoke-static {p3, p1, v2, p2}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_6

    .line 35
    :cond_8
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/lit8 p2, p2, 0x7

    .line 36
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0x80

    if-lez p2, :cond_9

    and-int/lit16 p1, p1, 0xff

    not-int p1, p1

    add-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0xa

    rsub-int p1, p1, 0x3e8

    goto :goto_1

    :cond_9
    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0xa

    add-int/lit16 p1, p1, 0x3e8

    .line 37
    :goto_1
    invoke-static {p1}, Lu0/d;->A3(I)V

    goto/16 :goto_6

    :cond_a
    add-int/lit8 p3, p2, 0x2

    .line 38
    aget-byte v0, p1, p3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p2, v1

    .line 39
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v3, :cond_b

    if-ne v0, v4, :cond_b

    .line 40
    invoke-static {}, Lo1/u;->v()I

    .line 41
    :cond_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 42
    aget-byte p3, p1, p3

    .line 43
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 44
    iput p2, p0, Lk0/v7;->c:I

    move p2, v2

    .line 45
    :goto_2
    iget-object p3, p0, Lk0/v7;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_d

    .line 46
    iget v0, p0, Lk0/v7;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_d

    .line 47
    iput p2, p0, Lk0/v7;->b:I

    goto :goto_3

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_e

    .line 48
    array-length p1, p3

    if-ge p2, p1, :cond_13

    .line 49
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 50
    :cond_e
    array-length p1, p3

    if-gt p2, p1, :cond_13

    .line 51
    iget p1, p0, Lk0/v7;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 52
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_13

    add-int/lit8 p3, p2, 0x2

    .line 53
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    .line 54
    aget-byte p1, p1, p2

    or-int/lit16 p2, p3, 0x80

    and-int/lit16 p2, p2, 0xff

    .line 55
    iput p2, p0, Lk0/v7;->c:I

    move p2, v2

    .line 56
    :goto_4
    iget-object p3, p0, Lk0/v7;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_11

    .line 57
    iget v0, p0, Lk0/v7;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v2

    if-ne v0, v1, :cond_10

    if-eqz v0, :cond_11

    .line 58
    iput p2, p0, Lk0/v7;->b:I

    goto :goto_5

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_12

    .line 59
    array-length p1, p3

    if-ge p2, p1, :cond_13

    .line 60
    aget-object p1, p3, p2

    aget p1, p1, v3

    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 61
    :cond_12
    array-length p1, p3

    if-gt p2, p1, :cond_13

    .line 62
    iget p1, p0, Lk0/v7;->b:I

    aget-object p1, p3, p1

    aget p1, p1, v3

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    :cond_13
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 0

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/4 p3, 0x6

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
    .locals 0

    return-void
.end method

.method public final a3(I)I
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
