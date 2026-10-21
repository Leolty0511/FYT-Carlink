.class public Lk0/fj;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/fj;->b:I

    .line 3
    iput v0, p0, Lk0/fj;->c:I

    .line 4
    iput v0, p0, Lk0/fj;->e:I

    const/16 v1, 0xa

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
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

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v12, 0x9

    aput-object v4, v2, v12

    iput-object v2, p0, Lk0/fj;->f:[[I

    .line 6
    iput v0, p0, Lk0/fj;->h:I

    const/16 v2, 0x60

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 7
    fill-array-data v4, :array_a

    aput-object v4, v2, v0

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    const/16 v4, 0xb

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    const/16 v4, 0xc

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    const/16 v4, 0xd

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    const/16 v4, 0xe

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    const/16 v4, 0xf

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    const/16 v4, 0x10

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    const/16 v4, 0x11

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    const/16 v4, 0x12

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    const/16 v4, 0x13

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    const/16 v4, 0x14

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    const/16 v4, 0x15

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_20

    const/16 v4, 0x16

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    const/16 v4, 0x17

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    const/16 v4, 0x18

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    const/16 v4, 0x19

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    const/16 v4, 0x1a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_25

    const/16 v4, 0x1b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_26

    const/16 v4, 0x1c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_27

    const/16 v4, 0x1d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_28

    const/16 v4, 0x1e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_29

    const/16 v4, 0x1f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2a

    const/16 v4, 0x20

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2b

    const/16 v4, 0x21

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2c

    const/16 v4, 0x22

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2d

    const/16 v4, 0x23

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2e

    const/16 v4, 0x24

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2f

    const/16 v4, 0x25

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_30

    const/16 v4, 0x26

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_31

    const/16 v4, 0x27

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_32

    const/16 v4, 0x28

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_33

    const/16 v4, 0x29

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_34

    const/16 v4, 0x2a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_35

    const/16 v4, 0x2b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_36

    const/16 v4, 0x2c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_37

    const/16 v4, 0x2d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_38

    const/16 v4, 0x2e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_39

    const/16 v4, 0x2f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3a

    const/16 v4, 0x30

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3b

    const/16 v4, 0x31

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3c

    const/16 v4, 0x32

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3d

    const/16 v4, 0x33

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3e

    const/16 v4, 0x34

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3f

    const/16 v4, 0x35

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_40

    const/16 v4, 0x36

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_41

    const/16 v4, 0x37

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_42

    const/16 v4, 0x38

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_43

    const/16 v4, 0x39

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_44

    const/16 v4, 0x3a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_45

    const/16 v4, 0x3b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_46

    const/16 v4, 0x3c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_47

    const/16 v4, 0x3d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_48

    const/16 v4, 0x3e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_49

    const/16 v4, 0x3f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4a

    const/16 v4, 0x40

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4b

    const/16 v4, 0x41

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4c

    const/16 v4, 0x42

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4d

    const/16 v4, 0x43

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4e

    const/16 v4, 0x44

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_4f

    const/16 v4, 0x45

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_50

    const/16 v4, 0x46

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_51

    const/16 v4, 0x47

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_52

    const/16 v4, 0x48

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_53

    const/16 v4, 0x49

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_54

    const/16 v4, 0x4a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_55

    const/16 v4, 0x4b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_56

    const/16 v4, 0x4c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_57

    const/16 v4, 0x4d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_58

    const/16 v4, 0x4e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_59

    const/16 v4, 0x4f

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5a

    const/16 v4, 0x50

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5b

    const/16 v4, 0x51

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5c

    const/16 v4, 0x52

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5d

    const/16 v4, 0x53

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5e

    const/16 v4, 0x54

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5f

    const/16 v4, 0x55

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_60

    const/16 v4, 0x56

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_61

    const/16 v4, 0x57

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_62

    const/16 v4, 0x58

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_63

    const/16 v4, 0x59

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_64

    const/16 v4, 0x5a

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_65

    const/16 v4, 0x5b

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_66

    const/16 v4, 0x5c

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_67

    const/16 v4, 0x5d

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_68

    const/16 v4, 0x5e

    aput-object v1, v2, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_69

    const/16 v3, 0x5f

    aput-object v1, v2, v3

    iput-object v2, p0, Lk0/fj;->i:[[I

    .line 8
    iput v0, p0, Lk0/fj;->j:I

    .line 9
    new-instance v0, Lk0/fj$a;

    invoke-direct {v0, p0}, Lk0/fj$a;-><init>(Lk0/fj;)V

    iput-object v0, p0, Lk0/fj;->k:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/fj$b;

    invoke-direct {v0, p0}, Lk0/fj$b;-><init>(Lk0/fj;)V

    iput-object v0, p0, Lk0/fj;->l:Ljava/lang/Runnable;

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
        -0x1
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
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x4
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x7
        0x15
    .end array-data

    :array_11
    .array-data 4
        0x8
        0x35
    .end array-data

    :array_12
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_13
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_14
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_15
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_16
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_17
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_18
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_19
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_1b
    .array-data 4
        0x12
        0x3a
    .end array-data

    :array_1c
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_1d
    .array-data 4
        0x14
        0x2
    .end array-data

    :array_1e
    .array-data 4
        0x15
        0x27
    .end array-data

    :array_1f
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_20
    .array-data 4
        0x17
        0x22
    .end array-data

    :array_21
    .array-data 4
        0x18
        0x23
    .end array-data

    :array_22
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_23
    .array-data 4
        0x1a
        0x21
    .end array-data

    :array_24
    .array-data 4
        0x1b
        0x22
    .end array-data

    :array_25
    .array-data 4
        0x1c
        0x21
    .end array-data

    :array_26
    .array-data 4
        0x1d
        0x23
    .end array-data

    :array_27
    .array-data 4
        0x1e
        0x20
    .end array-data

    :array_28
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_29
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x21
        -0x1
    .end array-data

    :array_2b
    .array-data 4
        0x22
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x23
        -0x1
    .end array-data

    :array_2d
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_2e
    .array-data 4
        0x25
        0x41
    .end array-data

    :array_2f
    .array-data 4
        0x26
        0x36
    .end array-data

    :array_30
    .array-data 4
        0x27
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_32
    .array-data 4
        0x29
        -0x1
    .end array-data

    :array_33
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_34
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_35
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_36
    .array-data 4
        0x2d
        0x36
    .end array-data

    :array_37
    .array-data 4
        0x2e
        0xa
    .end array-data

    :array_38
    .array-data 4
        0x2f
        0x5
    .end array-data

    :array_39
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_3a
    .array-data 4
        0x31
        0x47
    .end array-data

    :array_3b
    .array-data 4
        0x32
        -0x1
    .end array-data

    :array_3c
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_3d
    .array-data 4
        0x34
        0x12
    .end array-data

    :array_3e
    .array-data 4
        0x35
        0x1a
    .end array-data

    :array_3f
    .array-data 4
        0x36
        -0x1
    .end array-data

    :array_40
    .array-data 4
        0x37
        0x37
    .end array-data

    :array_41
    .array-data 4
        0x38
        0x1
    .end array-data

    :array_42
    .array-data 4
        0x39
        0x19
    .end array-data

    :array_43
    .array-data 4
        0x3c
        0x42
    .end array-data

    :array_44
    .array-data 4
        0x3d
        -0x1
    .end array-data

    :array_45
    .array-data 4
        0x3e
        -0x1
    .end array-data

    :array_46
    .array-data 4
        0x3f
        0xd
    .end array-data

    :array_47
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_48
    .array-data 4
        0x41
        -0x1
    .end array-data

    :array_49
    .array-data 4
        0x42
        0x26
    .end array-data

    :array_4a
    .array-data 4
        0x43
        0x40
    .end array-data

    :array_4b
    .array-data 4
        0x45
        0x7
    .end array-data

    :array_4c
    .array-data 4
        0x46
        0x8
    .end array-data

    :array_4d
    .array-data 4
        0x47
        0x4a
    .end array-data

    :array_4e
    .array-data 4
        0x48
        0x4b
    .end array-data

    :array_4f
    .array-data 4
        0x49
        -0x1
    .end array-data

    :array_50
    .array-data 4
        0x4a
        -0x1
    .end array-data

    :array_51
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_52
    .array-data 4
        0x4c
        0x12
    .end array-data

    :array_53
    .array-data 4
        0x4d
        0x1b
    .end array-data

    :array_54
    .array-data 4
        0x4e
        0x1c
    .end array-data

    :array_55
    .array-data 4
        0x4f
        0x38
    .end array-data

    :array_56
    .array-data 4
        0x50
        0x38
    .end array-data

    :array_57
    .array-data 4
        0x51
        0x3f
    .end array-data

    :array_58
    .array-data 4
        0x52
        -0x1
    .end array-data

    :array_59
    .array-data 4
        0x53
        0xc
    .end array-data

    :array_5a
    .array-data 4
        0x54
        -0x1
    .end array-data

    :array_5b
    .array-data 4
        0x55
        -0x1
    .end array-data

    :array_5c
    .array-data 4
        0x56
        0x16
    .end array-data

    :array_5d
    .array-data 4
        0x57
        0x4
    .end array-data

    :array_5e
    .array-data 4
        0x58
        0x3
    .end array-data

    :array_5f
    .array-data 4
        0x59
        0x4
    .end array-data

    :array_60
    .array-data 4
        0x5a
        0x3
    .end array-data

    :array_61
    .array-data 4
        0x5b
        0x4
    .end array-data

    :array_62
    .array-data 4
        0x5c
        0x3
    .end array-data

    :array_63
    .array-data 4
        0x5d
        -0x1
    .end array-data

    :array_64
    .array-data 4
        0x5e
        -0x1
    .end array-data

    :array_65
    .array-data 4
        0x5f
        -0x1
    .end array-data

    :array_66
    .array-data 4
        0x60
        -0x1
    .end array-data

    :array_67
    .array-data 4
        0x61
        0x3e
    .end array-data

    :array_68
    .array-data 4
        0x62
        0xf
    .end array-data

    :array_69
    .array-data 4
        0x63
        0xa
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

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/fj;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    add-int/lit8 v1, p2, 0x1

    .line 1
    aget-byte v1, p1, v1

    const/16 v2, 0x21

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x22

    const/16 v7, 0x1e

    const/4 v8, 0x2

    if-eq v1, v2, :cond_11

    const/16 v2, 0x72

    const/16 v9, 0xf

    if-eq v1, v2, :cond_a

    const/16 v2, 0x73

    if-eq v1, v2, :cond_0

    goto/16 :goto_f

    :cond_0
    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v2, p1, v2

    add-int/lit8 v12, p2, 0x4

    .line 4
    aget-byte v13, p1, v12

    add-int/lit8 v14, p2, 0x5

    .line 5
    aget-byte v15, p1, v14

    add-int/lit8 v16, p2, 0x6

    .line 6
    aget-byte v16, p1, v16

    add-int/lit8 v17, p2, 0x7

    .line 7
    aget-byte v17, p1, v17

    add-int/lit8 v18, p2, 0x8

    .line 8
    aget-byte v10, p1, v18

    add-int/lit8 v18, p2, 0x9

    .line 9
    aget-byte v18, p1, v18

    new-array v11, v6, [I

    shr-int/lit8 v19, v1, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v11, v5

    const/16 v4, 0xa

    .line 10
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v11, v6, [I

    shr-int/lit8 v20, v1, 0x4

    and-int/lit8 v20, v20, 0x3

    aput v20, v11, v5

    const/16 v4, 0xc

    .line 11
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/lit8 v11, v1, 0x3

    and-int/2addr v11, v6

    aput v11, v4, v5

    const/16 v11, 0xd

    .line 12
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v6, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v4, v5

    const/16 v1, 0xe

    .line 13
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v6

    aput v4, v1, v5

    .line 14
    invoke-static {v9, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v6

    aput v4, v1, v5

    const/16 v4, 0xb

    .line 15
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v4, v6, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v6

    aput v11, v4, v5

    .line 16
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v4, v6, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v6

    aput v11, v4, v5

    .line 17
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v3

    aput v4, v1, v5

    .line 18
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v4, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v3

    aput v2, v4, v5

    .line 19
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.reversetemp"

    .line 20
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    aget-byte v13, p1, v14

    .line 22
    aget-byte v15, p1, v12

    :cond_1
    const/16 v1, 0xff

    and-int/lit16 v2, v13, 0xff

    const/4 v4, -0x1

    const/16 v7, 0x1b

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v1, :cond_2

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 23
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v1, v6, [I

    const/4 v2, -0x3

    aput v2, v1, v5

    .line 24
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v1, v6, [I

    const/4 v2, -0x2

    aput v2, v1, v5

    .line 25
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_4
    new-array v1, v6, [I

    aput v4, v1, v5

    .line 26
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v1, 0xff

    and-int/lit16 v2, v15, 0xff

    const/16 v7, 0x1c

    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v1, :cond_5

    new-array v1, v6, [I

    aput v2, v1, v5

    .line 27
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v1, v6, [I

    const/4 v2, -0x3

    aput v2, v1, v5

    .line 28
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_6
    new-array v1, v6, [I

    const/4 v2, -0x2

    aput v2, v1, v5

    .line 29
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_7
    new-array v1, v6, [I

    aput v4, v1, v5

    .line 30
    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x12

    new-array v2, v6, [I

    shr-int/lit8 v4, v16, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 31
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v6, [I

    shr-int/lit8 v4, v16, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 32
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v6, [I

    shr-int/lit8 v4, v16, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 33
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v6, [I

    and-int/lit8 v4, v16, 0xf

    aput v4, v2, v5

    .line 34
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x16

    new-array v2, v6, [I

    shr-int/lit8 v4, v17, 0x4

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 35
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x17

    new-array v2, v6, [I

    shr-int/lit8 v4, v17, 0x5

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 36
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x18

    new-array v2, v6, [I

    shr-int/lit8 v4, v17, 0x6

    and-int/2addr v4, v6

    aput v4, v2, v5

    .line 37
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    and-int/lit8 v2, v17, 0xf

    aput v2, v1, v5

    const/16 v2, 0x19

    .line 38
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v1, v10, 0x80

    if-nez v1, :cond_8

    .line 39
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto :goto_2

    :cond_8
    and-int/lit8 v1, v10, 0x7f

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 40
    invoke-static {v1}, Lu0/d;->A3(I)V

    :goto_2
    const-string v1, "persist.syu.reversefrontdoor"

    .line 41
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    new-array v1, v6, [I

    shr-int/lit8 v2, v18, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 42
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v18, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 43
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v1, v6, [I

    shr-int/lit8 v2, v18, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 44
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v18, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 45
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    new-array v1, v6, [I

    shr-int/lit8 v2, v18, 0x5

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 46
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v18, 0x4

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/4 v2, 0x4

    .line 47
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v18, 0x3

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/4 v2, 0x5

    .line 48
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_a
    add-int/lit8 v1, p2, 0x6

    .line 49
    aget-byte v1, p1, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, p1, v3

    and-int/2addr v3, v2

    const/16 v4, 0x8c

    invoke-static {v1, v3, v4}, Lk0/qt;->p(III)V

    add-int/lit8 v1, p2, 0x4

    .line 50
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    iput v1, v0, Lk0/fj;->e:I

    move v1, v5

    .line 51
    :goto_4
    iget-object v2, v0, Lk0/fj;->f:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 52
    iget v3, v0, Lk0/fj;->e:I

    aget-object v4, v2, v1

    aget v4, v4, v5

    if-ne v3, v4, :cond_b

    if-eqz v3, :cond_c

    .line 53
    iput v1, v0, Lk0/fj;->d:I

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 54
    :cond_c
    :goto_5
    iget v1, v0, Lk0/fj;->e:I

    if-eqz v1, :cond_d

    .line 55
    iget v1, v0, Lk0/fj;->d:I

    array-length v3, v2

    if-ge v1, v3, :cond_d

    .line 56
    aget-object v1, v2, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 57
    iget-object v1, v0, Lk0/fj;->f:[[I

    iget v2, v0, Lk0/fj;->d:I

    aget-object v1, v1, v2

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    :cond_d
    add-int/lit8 v1, p2, 0x8

    .line 58
    aget-byte v1, p1, v1

    const/16 v2, 0x19

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->R2(I)V

    add-int/lit8 v1, p2, 0x9

    .line 59
    aget-byte v1, p1, v1

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->S2(I)V

    add-int/lit8 v1, p2, 0xa

    .line 60
    aget-byte v1, p1, v1

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->T2(I)V

    add-int/lit8 v1, p2, 0xb

    .line 61
    aget-byte v1, p1, v1

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->U2(I)V

    add-int/lit8 v1, p2, 0xc

    .line 62
    aget-byte v2, p1, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0xd

    .line 63
    aget-byte v7, p1, v4

    and-int/2addr v7, v3

    add-int/lit8 v8, p2, 0xe

    .line 64
    aget-byte v10, p1, v8

    and-int/2addr v10, v3

    add-int/lit8 v9, p2, 0xf

    .line 65
    aget-byte v11, p1, v9

    and-int/2addr v11, v3

    .line 66
    div-int/lit8 v12, v2, 0x19

    .line 67
    div-int/lit8 v13, v7, 0x19

    .line 68
    div-int/lit8 v14, v10, 0x19

    .line 69
    div-int/lit8 v15, v11, 0x19

    if-ne v2, v3, :cond_e

    if-ne v7, v3, :cond_e

    if-ne v10, v3, :cond_e

    if-ne v11, v3, :cond_e

    .line 70
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_6

    .line 71
    :cond_e
    sget v2, Ll0/c0;->g:I

    if-ne v2, v12, :cond_f

    sget v2, Ll0/c0;->h:I

    if-ne v2, v13, :cond_f

    sget v2, Ll0/c0;->i:I

    if-ne v2, v14, :cond_f

    sget v2, Ll0/c0;->j:I

    if-eq v2, v15, :cond_10

    .line 72
    :cond_f
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_10

    .line 73
    invoke-static {v6}, Lu0/d;->C2(I)V

    const/4 v2, 0x4

    .line 74
    sput v2, Ll0/c0;->k:I

    .line 75
    sget-object v2, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 76
    :cond_10
    :goto_6
    sput v12, Ll0/c0;->g:I

    .line 77
    sput v13, Ll0/c0;->h:I

    .line 78
    sput v14, Ll0/c0;->i:I

    .line 79
    sput v15, Ll0/c0;->j:I

    .line 80
    aget-byte v1, p1, v1

    const/16 v2, 0x19

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->D2(I)V

    .line 81
    aget-byte v1, p1, v4

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->E2(I)V

    .line 82
    aget-byte v1, p1, v8

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->F2(I)V

    .line 83
    aget-byte v1, p1, v9

    div-int/2addr v1, v2

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_f

    :cond_11
    add-int/lit8 v1, p2, 0x2

    .line 84
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 85
    aget-byte v2, p1, v2

    if-eqz v1, :cond_1c

    if-eq v1, v6, :cond_17

    if-eq v1, v8, :cond_12

    goto/16 :goto_f

    .line 86
    :cond_12
    iget v1, v0, Lk0/fj;->c:I

    if-eq v2, v1, :cond_22

    if-le v2, v1, :cond_14

    move v1, v5

    .line 87
    :goto_7
    iget v3, v0, Lk0/fj;->c:I

    sub-int v3, v2, v3

    if-ge v1, v3, :cond_13

    const/16 v3, 0x1f

    .line 88
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    const/16 v1, 0x1f

    .line 89
    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_14
    if-ge v2, v1, :cond_16

    move v1, v5

    .line 90
    :goto_8
    iget v3, v0, Lk0/fj;->c:I

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_15

    .line 91
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 92
    :cond_15
    invoke-static {v7, v6}, Ll0/b0;->l0(II)V

    .line 93
    :cond_16
    :goto_9
    iput v2, v0, Lk0/fj;->c:I

    goto/16 :goto_f

    .line 94
    :cond_17
    iget v1, v0, Lk0/fj;->b:I

    if-eq v2, v1, :cond_22

    if-le v2, v1, :cond_19

    move v1, v5

    .line 95
    :goto_a
    iget v3, v0, Lk0/fj;->b:I

    sub-int v3, v2, v3

    const/4 v4, 0x7

    if-ge v1, v3, :cond_18

    .line 96
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 97
    :cond_18
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_19
    if-ge v2, v1, :cond_1b

    move v1, v5

    .line 98
    :goto_b
    iget v3, v0, Lk0/fj;->b:I

    sub-int/2addr v3, v2

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1a

    .line 99
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 100
    :cond_1a
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 101
    :cond_1b
    :goto_c
    iput v2, v0, Lk0/fj;->b:I

    goto :goto_f

    .line 102
    :cond_1c
    iput v5, v0, Lk0/fj;->b:I

    .line 103
    iput v5, v0, Lk0/fj;->c:I

    goto :goto_f

    :cond_1d
    add-int/lit8 v1, p2, 0x2

    .line 104
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    .line 105
    aget-byte v2, p1, v2

    const/16 v3, 0xff

    and-int/2addr v1, v3

    .line 106
    iput v1, v0, Lk0/fj;->h:I

    move v1, v5

    .line 107
    :goto_d
    iget-object v3, v0, Lk0/fj;->i:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_1f

    .line 108
    iget v4, v0, Lk0/fj;->h:I

    aget-object v7, v3, v1

    aget v7, v7, v5

    if-ne v4, v7, :cond_1e

    if-eqz v4, :cond_1f

    .line 109
    iput v1, v0, Lk0/fj;->g:I

    goto :goto_e

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    :goto_e
    if-ne v2, v6, :cond_20

    .line 110
    array-length v2, v3

    if-ge v1, v2, :cond_22

    .line 111
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_20
    if-nez v2, :cond_22

    .line 112
    iget v1, v0, Lk0/fj;->g:I

    array-length v2, v3

    if-ge v1, v2, :cond_21

    .line 113
    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    :cond_21
    const/16 v1, 0xff

    .line 114
    iput v1, v0, Lk0/fj;->g:I

    :cond_22
    :goto_f
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/fj;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/fj;->l:Ljava/lang/Runnable;

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
    .locals 0

    return-void
.end method
