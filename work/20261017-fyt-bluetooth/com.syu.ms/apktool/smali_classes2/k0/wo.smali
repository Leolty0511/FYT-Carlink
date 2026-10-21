.class public Lk0/wo;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static n:I

.field public static o:I

.field public static p:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Lo1/g0;

.field public final h:I

.field public final i:I

.field public final j:I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/wo;->c:I

    const/16 v1, 0x58

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x15

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x16

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x17

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x18

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x19

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x1b

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x1c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x1d

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v5, 0x1e

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v5, 0x1f

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v5, 0x20

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v6, 0x21

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v6, 0x22

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v6, 0x23

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v6, 0x24

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v6, 0x25

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v6, 0x26

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v6, 0x27

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v6, 0x28

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v6, 0x29

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v6, 0x2a

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v6, 0x2b

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v6, 0x2c

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v6, 0x2d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v6, 0x2e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    const/16 v6, 0x2f

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    const/16 v6, 0x30

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    const/16 v6, 0x31

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/16 v6, 0x32

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    const/16 v6, 0x33

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    const/16 v6, 0x34

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_35

    const/16 v6, 0x35

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    const/16 v6, 0x36

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    const/16 v6, 0x37

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    const/16 v6, 0x38

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_39

    const/16 v6, 0x39

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    const/16 v6, 0x3a

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3b

    const/16 v6, 0x3b

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3c

    const/16 v6, 0x3c

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3d

    const/16 v6, 0x3d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3e

    const/16 v6, 0x3e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3f

    const/16 v6, 0x3f

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_40

    const/16 v6, 0x40

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_41

    const/16 v6, 0x41

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    const/16 v6, 0x42

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_43

    const/16 v6, 0x43

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_44

    const/16 v6, 0x44

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_45

    const/16 v6, 0x45

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_46

    const/16 v6, 0x46

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_47

    const/16 v6, 0x47

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_48

    const/16 v6, 0x48

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_49

    const/16 v6, 0x49

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4a

    const/16 v6, 0x4a

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4b

    const/16 v6, 0x4b

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4c

    const/16 v6, 0x4c

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4d

    const/16 v6, 0x4d

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4e

    const/16 v6, 0x4e

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_4f

    const/16 v6, 0x4f

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_50

    const/16 v6, 0x50

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_51

    const/16 v6, 0x51

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_52

    const/16 v6, 0x52

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_53

    const/16 v6, 0x53

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_54

    const/16 v6, 0x54

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_55

    const/16 v6, 0x55

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_56

    const/16 v6, 0x56

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_57

    const/16 v6, 0x57

    aput-object v3, v1, v6

    iput-object v1, p0, Lk0/wo;->d:[[I

    .line 4
    new-instance v1, Lk0/wo$a;

    invoke-direct {v1, p0}, Lk0/wo$a;-><init>(Lk0/wo;)V

    iput-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lk0/wo$b;

    invoke-direct {v1, p0}, Lk0/wo$b;-><init>(Lk0/wo;)V

    iput-object v1, p0, Lk0/wo;->f:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/wo;->g:Lo1/g0;

    .line 7
    iput v4, p0, Lk0/wo;->h:I

    .line 8
    iput v4, p0, Lk0/wo;->i:I

    .line 9
    iput v2, p0, Lk0/wo;->j:I

    .line 10
    iput v0, p0, Lk0/wo;->k:I

    .line 11
    new-instance v0, Lk0/wo$c;

    invoke-direct {v0, p0}, Lk0/wo$c;-><init>(Lk0/wo;)V

    iput-object v0, p0, Lk0/wo;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lk0/wo$d;

    invoke-direct {v0, p0}, Lk0/wo$d;-><init>(Lk0/wo;)V

    iput-object v0, p0, Lk0/wo;->m:Ljava/lang/Runnable;

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0xd
        0x3f
    .end array-data

    :array_c
    .array-data 4
        0xe
        0x3
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x1c
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x42
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x12
        0x1b
    .end array-data

    :array_11
    .array-data 4
        0x13
        0x41
    .end array-data

    :array_12
    .array-data 4
        0x14
        0x3f
    .end array-data

    :array_13
    .array-data 4
        0x15
        0x7
    .end array-data

    :array_14
    .array-data 4
        0x16
        0x8
    .end array-data

    :array_15
    .array-data 4
        0x17
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x18
        0x1f
    .end array-data

    :array_17
    .array-data 4
        0x19
        0x1e
    .end array-data

    :array_18
    .array-data 4
        0x1a
        0x1d
    .end array-data

    :array_19
    .array-data 4
        0x1b
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x1c
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x1d
        0x4a
    .end array-data

    :array_1c
    .array-data 4
        0x1e
        0x4b
    .end array-data

    :array_1d
    .array-data 4
        0x1f
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x20
        0x36
    .end array-data

    :array_1f
    .array-data 4
        0x21
        0x15
    .end array-data

    :array_20
    .array-data 4
        0x22
        0x16
    .end array-data

    :array_21
    .array-data 4
        0x23
        0x35
    .end array-data

    :array_22
    .array-data 4
        0x24
        0x28
    .end array-data

    :array_23
    .array-data 4
        0x25
        0x29
    .end array-data

    :array_24
    .array-data 4
        0x26
        0x2a
    .end array-data

    :array_25
    .array-data 4
        0x27
        0x2b
    .end array-data

    :array_26
    .array-data 4
        0x28
        0x2c
    .end array-data

    :array_27
    .array-data 4
        0x29
        0x2d
    .end array-data

    :array_28
    .array-data 4
        0x2a
        0x40
    .end array-data

    :array_29
    .array-data 4
        0x2b
        0x6
    .end array-data

    :array_2a
    .array-data 4
        0x2c
        0x9
    .end array-data

    :array_2b
    .array-data 4
        0x2d
        0x12
    .end array-data

    :array_2c
    .array-data 4
        0x2e
        0x19
    .end array-data

    :array_2d
    .array-data 4
        0x2f
        0x3a
    .end array-data

    :array_2e
    .array-data 4
        0x30
        0x31
    .end array-data

    :array_2f
    .array-data 4
        0x31
        0x28
    .end array-data

    :array_30
    .array-data 4
        0x32
        0x29
    .end array-data

    :array_31
    .array-data 4
        0x33
        0x2a
    .end array-data

    :array_32
    .array-data 4
        0x34
        0x2b
    .end array-data

    :array_33
    .array-data 4
        0x35
        0x2c
    .end array-data

    :array_34
    .array-data 4
        0x36
        0x2d
    .end array-data

    :array_35
    .array-data 4
        0x37
        0x2e
    .end array-data

    :array_36
    .array-data 4
        0x38
        0x2f
    .end array-data

    :array_37
    .array-data 4
        0x39
        0x30
    .end array-data

    :array_38
    .array-data 4
        0x3a
        0x32
    .end array-data

    :array_39
    .array-data 4
        0x3b
        0x33
    .end array-data

    :array_3a
    .array-data 4
        0x3c
        -0x1
    .end array-data

    :array_3b
    .array-data 4
        0x3d
        0x1f
    .end array-data

    :array_3c
    .array-data 4
        0x3e
        0x1e
    .end array-data

    :array_3d
    .array-data 4
        0x3f
        0x26
    .end array-data

    :array_3e
    .array-data 4
        0x40
        0xb
    .end array-data

    :array_3f
    .array-data 4
        0x41
        0x38
    .end array-data

    :array_40
    .array-data 4
        0x42
        0x38
    .end array-data

    :array_41
    .array-data 4
        0x43
        0x37
    .end array-data

    :array_42
    .array-data 4
        0x44
        0x22
    .end array-data

    :array_43
    .array-data 4
        0x45
        0x23
    .end array-data

    :array_44
    .array-data 4
        0x46
        0x20
    .end array-data

    :array_45
    .array-data 4
        0x47
        0x21
    .end array-data

    :array_46
    .array-data 4
        0x48
        0x19
    .end array-data

    :array_47
    .array-data 4
        0x49
        0x3e
    .end array-data

    :array_48
    .array-data 4
        0x4a
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x4b
        0x48
    .end array-data

    :array_4a
    .array-data 4
        0x4c
        0x47
    .end array-data

    :array_4b
    .array-data 4
        0x4d
        -0x1
    .end array-data

    :array_4c
    .array-data 4
        0x4e
        0x1
    .end array-data

    :array_4d
    .array-data 4
        0x4f
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x50
        0x1
    .end array-data

    :array_4f
    .array-data 4
        0x51
        0x26
    .end array-data

    :array_50
    .array-data 4
        0x52
        0x35
    .end array-data

    :array_51
    .array-data 4
        0x53
        0x22
    .end array-data

    :array_52
    .array-data 4
        0x54
        0x21
    .end array-data

    :array_53
    .array-data 4
        0x55
        0x23
    .end array-data

    :array_54
    .array-data 4
        0x56
        0x20
    .end array-data

    :array_55
    .array-data 4
        0x57
        0x1e
    .end array-data

    :array_56
    .array-data 4
        0x58
        0x1f
    .end array-data

    :array_57
    .array-data 4
        0x59
        0x36
    .end array-data
.end method

.method public static a3()V
    .locals 13

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xcb

    aput v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    aput v4, v1, v3

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v5, v3, :cond_2

    if-eq v5, v4, :cond_1

    packed-switch v5, :pswitch_data_0

    aput v7, v1, v8

    goto/16 :goto_6

    :pswitch_0
    aput v6, v1, v8

    .line 3
    sget v3, Lu0/b;->r3:I

    aput v3, v1, v6

    goto/16 :goto_6

    :cond_1
    aput v7, v1, v8

    goto/16 :goto_6

    :cond_2
    aput v3, v1, v8

    .line 4
    sget v5, Lw0/d;->h:I

    const v9, 0x10001

    const v10, 0x10002

    const/high16 v11, 0x10000

    if-eq v5, v11, :cond_5

    if-eq v5, v9, :cond_5

    if-ne v5, v10, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    if-ne v5, v3, :cond_6

    :cond_4
    const/16 v12, 0x10

    aput v12, v1, v6

    goto :goto_2

    :cond_5
    :goto_1
    aput v3, v1, v6

    :cond_6
    :goto_2
    if-lt v5, v11, :cond_7

    if-gt v5, v10, :cond_7

    .line 5
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v7

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    goto :goto_3

    .line 6
    :cond_7
    sget v5, Lw0/d;->i:I

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v1, v7

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    .line 7
    :goto_3
    sget v4, Lw0/d;->j:I

    .line 8
    rem-int/lit8 v5, v4, 0x6

    const/4 v6, 0x6

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    aput v6, v1, v6

    goto :goto_4

    :cond_8
    aput v5, v1, v6

    .line 9
    :goto_4
    sget v4, Lw0/d;->h:I

    const/16 v5, 0x7d0

    if-eq v4, v11, :cond_b

    if-eq v4, v9, :cond_b

    if-ne v4, v10, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    if-ne v4, v3, :cond_c

    .line 10
    :cond_a
    sget v4, Lw0/d;->i:I

    if-le v4, v5, :cond_c

    goto :goto_7

    .line 11
    :cond_b
    :goto_5
    sget v4, Lw0/d;->i:I

    if-ge v4, v5, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    move v3, v2

    .line 12
    :goto_7
    sget v4, Lu0/b;->a0:I

    if-nez v4, :cond_d

    aput v2, v1, v8

    :cond_d
    const/16 v4, 0x8

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    :goto_8
    if-ge v2, v0, :cond_e

    add-int/lit8 v5, v2, 0x1

    .line 13
    aget v2, v1, v2

    aput v2, v4, v5

    move v2, v5

    goto :goto_8

    :cond_e
    if-nez v3, :cond_f

    .line 14
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b3(Lk0/wo;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/wo;->g:Lo1/g0;

    return-object p0
.end method

.method public static synthetic c3(Lk0/wo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/wo;->f3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/wo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/wo;->g3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/wo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/wo;->h3(I)V

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
    iget-object v0, p0, Lk0/wo;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/wo;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v0, Lk0/mt;->e:I

    .line 5
    iput v2, v0, Lk0/mt;->f:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->h:I

    .line 8
    iput v1, v0, Lk0/mt;->l:I

    .line 9
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    sget v3, Lk0/nt;->a:I

    const v4, 0x4701c7

    if-eq v3, v4, :cond_0

    const v4, 0xd401c7

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x2

    .line 11
    iput v3, v0, Lk0/mt;->h:I

    .line 12
    :cond_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    .line 13
    invoke-static {}, La/f;->w()I

    move-result v0

    const/16 v3, 0x438

    if-lt v0, v3, :cond_2

    .line 14
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lk0/wo;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v4, 0x20

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x3

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v4, :cond_27

    const/16 v11, 0x27

    const/16 v12, 0x10

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/4 v15, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-eq v2, v11, :cond_b

    const/16 v11, 0x29

    if-eq v2, v11, :cond_a

    const/16 v11, 0x30

    if-eq v2, v11, :cond_9

    const/16 v11, 0x33

    if-eq v2, v11, :cond_8

    const/16 v11, 0x3a

    if-eq v2, v11, :cond_7

    const/16 v11, 0x3b

    if-eq v2, v11, :cond_6

    packed-switch v2, :pswitch_data_0

    const v11, 0xff00

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_0
    const/16 v2, 0x81

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0x2

    .line 2
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0x3

    .line 3
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0x4

    .line 4
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0x8

    .line 5
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0x9

    .line 6
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0xa

    .line 7
    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0xd

    .line 8
    aget-byte v12, v1, v11

    shr-int/2addr v12, v6

    and-int/2addr v12, v10

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v5, v10, [I

    .line 9
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v10

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v5, v10, [I

    .line 10
    aget-byte v12, v1, v11

    shr-int/2addr v12, v4

    and-int/2addr v12, v10

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v5, v10, [I

    .line 11
    aget-byte v12, v1, v11

    shr-int/2addr v12, v15

    and-int/2addr v12, v10

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v5, v10, [I

    .line 12
    aget-byte v12, v1, v11

    shr-int/2addr v12, v7

    and-int/2addr v12, v10

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v5, v10, [I

    .line 13
    aget-byte v12, v1, v11

    shr-int/2addr v12, v3

    and-int/2addr v12, v10

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v5, v10, [I

    .line 14
    aget-byte v12, v1, v11

    shr-int/2addr v12, v10

    and-int/2addr v12, v10

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v5, v10, [I

    .line 15
    aget-byte v11, v1, v11

    shr-int/2addr v11, v9

    and-int/2addr v11, v10

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0xe

    .line 16
    aget-byte v12, v1, v11

    shr-int/lit8 v12, v12, 0x6

    and-int/2addr v12, v7

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v5, v10, [I

    .line 17
    aget-byte v12, v1, v11

    shr-int/2addr v12, v3

    and-int/2addr v12, v7

    aput v12, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v5, v10, [I

    .line 18
    aget-byte v11, v1, v11

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v5, v10, [I

    add-int/lit8 v11, p2, 0xf

    .line 19
    aget-byte v12, v1, v11

    shr-int/lit8 v6, v12, 0x7

    and-int/2addr v6, v10

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v5, v10, [I

    .line 20
    aget-byte v6, v1, v11

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v10

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v5, v10, [I

    .line 21
    aget-byte v6, v1, v11

    shr-int/2addr v6, v4

    and-int/2addr v6, v10

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v5, v10, [I

    .line 22
    aget-byte v6, v1, v11

    shr-int/2addr v6, v15

    and-int/2addr v6, v10

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v5, v10, [I

    .line 23
    aget-byte v6, v1, v11

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v5, v10, [I

    .line 24
    aget-byte v6, v1, v11

    shr-int/lit8 v3, v6, 0x2

    and-int/2addr v3, v10

    aput v3, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    .line 25
    aget-byte v5, v1, v11

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x10

    .line 26
    aget-byte v6, v1, v5

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v7

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v10, [I

    .line 27
    aget-byte v5, v1, v5

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x11

    .line 28
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    const/16 v2, 0x62

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 29
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int/2addr v4, v11

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 30
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int/2addr v4, v11

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 31
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x7

    aget-byte v6, v1, v6

    shl-int/2addr v6, v5

    and-int/2addr v6, v11

    or-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 32
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int/2addr v4, v11

    add-int/lit8 v5, p2, 0xa

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_2
    const/16 v2, 0x6a

    new-array v11, v10, [I

    add-int/lit8 v12, p2, 0x6

    .line 33
    aget-byte v13, v1, v12

    shr-int/lit8 v6, v13, 0x7

    and-int/2addr v6, v10

    shl-int/2addr v6, v14

    and-int/lit16 v6, v6, 0x200

    aget-byte v13, v1, v12

    shr-int/lit8 v7, v13, 0x3

    and-int/2addr v7, v10

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0x100

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x2

    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v11, v9

    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v6, v10, [I

    .line 34
    aget-byte v7, v1, v12

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v10

    shl-int/2addr v7, v14

    and-int/lit16 v7, v7, 0x200

    aget-byte v11, v1, v12

    shr-int/lit8 v3, v11, 0x2

    and-int/2addr v3, v10

    shl-int/2addr v3, v5

    and-int/lit16 v3, v3, 0x100

    or-int/2addr v3, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    aput v3, v6, v9

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    .line 35
    aget-byte v6, v1, v12

    shr-int/2addr v6, v4

    and-int/2addr v6, v10

    shl-int/2addr v6, v14

    and-int/lit16 v6, v6, 0x200

    aget-byte v7, v1, v12

    shr-int/2addr v7, v10

    and-int/2addr v7, v10

    shl-int/2addr v7, v5

    and-int/lit16 v7, v7, 0x100

    or-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    .line 36
    aget-byte v6, v1, v12

    shr-int/2addr v6, v15

    and-int/2addr v6, v10

    shl-int/2addr v6, v14

    and-int/lit16 v6, v6, 0x200

    aget-byte v7, v1, v12

    shr-int/2addr v7, v9

    and-int/2addr v7, v10

    shl-int/lit8 v5, v7, 0x8

    and-int/lit16 v5, v5, 0x100

    or-int/2addr v5, v6

    add-int/lit8 v4, p2, 0x5

    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    or-int/2addr v1, v5

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_3
    const/16 v2, 0x69

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 37
    aget-byte v4, v1, v4

    shl-int/2addr v4, v5

    and-int/2addr v4, v11

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    or-int/2addr v4, v6

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 38
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v1, v6

    shl-int/lit8 v5, v6, 0x8

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 39
    aget-byte v2, v1, v2

    const-string v5, "persist.syu.reversefrontdoor"

    .line 40
    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 41
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 42
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 43
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 44
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 45
    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 46
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 47
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 48
    invoke-static {v9, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 49
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v10

    if-ne v3, v10, :cond_1

    .line 50
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto :goto_1

    .line 51
    :cond_1
    invoke-static {v9}, Lk0/qt;->a(I)V

    :goto_1
    const-string v3, "persist.fyt.leftrightlighttype"

    .line 52
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 53
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v15

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_c

    .line 54
    :cond_2
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v15

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_c

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v5, p2, 0x3

    .line 56
    aget-byte v6, v1, v5

    and-int/2addr v6, v8

    add-int/lit8 v7, p2, 0x4

    .line 57
    aget-byte v11, v1, v7

    and-int/2addr v11, v8

    add-int/lit8 v4, p2, 0x5

    .line 58
    aget-byte v12, v1, v4

    and-int/2addr v12, v8

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    if-nez v11, :cond_3

    if-nez v12, :cond_3

    .line 59
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 60
    :cond_3
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_4

    sget v9, Ll0/c0;->h:I

    if-ne v9, v6, :cond_4

    sget v9, Ll0/c0;->i:I

    if-ne v9, v11, :cond_4

    sget v9, Ll0/c0;->j:I

    if-eq v9, v12, :cond_5

    .line 61
    :cond_4
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_5

    .line 62
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 63
    sput v15, Ll0/c0;->k:I

    .line 64
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 65
    :cond_5
    :goto_2
    sput v3, Ll0/c0;->g:I

    .line 66
    sput v6, Ll0/c0;->h:I

    .line 67
    sput v11, Ll0/c0;->i:I

    .line 68
    sput v12, Ll0/c0;->j:I

    .line 69
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 70
    aget-byte v2, v1, v5

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 71
    aget-byte v2, v1, v7

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 72
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_c

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 73
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 74
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->K0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 76
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->K0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_c

    :cond_6
    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x2

    .line 77
    aget-byte v6, v1, v6

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x3

    .line 78
    aget-byte v6, v1, v6

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x4

    .line 79
    aget-byte v6, v1, v6

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x5

    .line 80
    aget-byte v6, v1, v6

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x6

    .line 81
    aget-byte v6, v1, v6

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x7

    .line 82
    aget-byte v7, v1, v6

    shr-int/lit8 v4, v7, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 83
    aget-byte v4, v1, v6

    shr-int/2addr v4, v15

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    .line 84
    aget-byte v4, v1, v6

    shr-int/2addr v4, v9

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 85
    aget-byte v1, v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_7
    const/16 v2, 0x7c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 86
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    .line 87
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 88
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_8
    const/16 v2, 0x66

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 89
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 90
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 91
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 92
    :cond_9
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    const/16 v3, 0x1200

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_c

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    const/16 v5, 0xb

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 95
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xc

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 96
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x36

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 97
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 98
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x26

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 99
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x48

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x0

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 100
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v5, p2, 0x3

    .line 101
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    const/16 v11, 0x12

    new-array v4, v10, [I

    shr-int/lit8 v17, v5, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v4, v9

    .line 102
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v11, v10, [I

    shr-int/lit8 v17, v5, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v11, v9

    .line 103
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v11, v10, [I

    shr-int/lit8 v17, v5, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v11, v9

    .line 104
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2e

    new-array v11, v10, [I

    shr-int/lit8 v17, v5, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v11, v9

    .line 105
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2f

    new-array v11, v10, [I

    shr-int/lit8 v17, v5, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v11, v9

    .line 106
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2b

    new-array v11, v10, [I

    shr-int/lit8 v17, v5, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v11, v9

    .line 107
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2a

    new-array v11, v10, [I

    shr-int/lit8 v18, v5, 0x1

    and-int/lit8 v18, v18, 0x1

    aput v18, v11, v9

    .line 108
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x43

    new-array v11, v10, [I

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v11, v9

    .line 109
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v11, v10, [I

    add-int/lit8 v19, p2, 0x6

    .line 110
    aget-byte v20, v1, v19

    shr-int/lit8 v20, v20, 0x7

    and-int/lit8 v20, v20, 0x1

    aput v20, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    .line 111
    aget-byte v11, v1, v19

    shr-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v10

    aput v11, v4, v9

    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2c

    new-array v11, v10, [I

    .line 112
    aget-byte v12, v1, v19

    shr-int/2addr v12, v10

    and-int/2addr v12, v6

    aput v12, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x25

    new-array v11, v10, [I

    .line 113
    aget-byte v12, v1, v19

    shr-int/2addr v12, v9

    and-int/2addr v12, v10

    aput v12, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v4, p2, 0x1

    .line 114
    aget-byte v4, v1, v4

    if-lt v4, v14, :cond_c

    const/16 v4, 0x1d

    new-array v11, v10, [I

    add-int/lit8 v12, p2, 0xa

    .line 115
    aget-byte v20, v1, v12

    shr-int/lit8 v20, v20, 0x6

    and-int/lit8 v20, v20, 0x3

    aput v20, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x1f

    new-array v11, v10, [I

    .line 116
    aget-byte v20, v1, v12

    shr-int/lit8 v15, v20, 0x4

    and-int/2addr v15, v7

    aput v15, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x1e

    new-array v11, v10, [I

    .line 117
    aget-byte v15, v1, v12

    shr-int/lit8 v3, v15, 0x2

    and-int/2addr v3, v7

    aput v3, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    .line 118
    aget-byte v4, v1, v12

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    const/16 v4, 0x20

    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :cond_c
    add-int/lit8 v3, p2, 0x7

    .line 119
    aget-byte v4, v1, v3

    and-int/2addr v4, v8

    const/4 v11, -0x1

    const/4 v12, -0x3

    const/4 v15, -0x2

    if-eqz v4, :cond_f

    const/16 v7, 0x20

    if-eq v4, v7, :cond_e

    if-eq v4, v8, :cond_d

    const/16 v4, 0x28

    new-array v7, v10, [I

    .line 120
    aget-byte v14, v1, v3

    and-int/2addr v14, v8

    aput v14, v7, v9

    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    const/16 v4, 0x28

    new-array v7, v10, [I

    aput v11, v7, v9

    .line 121
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    const/16 v4, 0x28

    new-array v7, v10, [I

    aput v12, v7, v9

    .line 122
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_f
    const/16 v4, 0x28

    new-array v7, v10, [I

    aput v15, v7, v9

    .line 123
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v4, 0x1c

    const/16 v7, 0x1b

    if-ne v5, v10, :cond_1b

    new-array v2, v10, [I

    aput v18, v2, v9

    .line 124
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v5, v10, [I

    aput v17, v5, v9

    .line 125
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v5, v10, [I

    .line 126
    aget-byte v14, v1, v19

    shr-int/2addr v14, v10

    and-int/2addr v6, v14

    aput v6, v5, v9

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 127
    aget-byte v2, v1, v3

    and-int/2addr v2, v8

    .line 128
    aget-byte v5, v1, v3

    and-int/2addr v5, v8

    const-string v6, "persist.fyt.reversetemp"

    .line 129
    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 130
    aget-byte v2, v1, v3

    and-int/2addr v2, v8

    .line 131
    aget-byte v3, v1, v3

    and-int/lit16 v5, v3, 0xff

    :cond_10
    if-eqz v2, :cond_15

    const/16 v3, 0x20

    if-eq v2, v3, :cond_14

    if-eq v2, v8, :cond_13

    .line 132
    aget-byte v3, v1, v19

    shr-int/2addr v3, v9

    and-int/2addr v3, v10

    if-ne v3, v10, :cond_11

    new-array v3, v10, [I

    mul-int/2addr v2, v13

    const/16 v6, 0x24e

    add-int/2addr v2, v6

    aput v2, v3, v9

    .line 133
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    const-string v3, "persist.fyt.temperature"

    .line 134
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_12

    const/4 v3, 0x5

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0xaf

    const/16 v6, 0x9

    mul-int/2addr v2, v6

    .line 135
    div-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x140

    new-array v6, v10, [I

    aput v2, v6, v9

    .line 136
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    const/4 v3, 0x5

    new-array v6, v10, [I

    mul-int/2addr v2, v3

    add-int/lit16 v2, v2, 0xaf

    aput v2, v6, v9

    .line 137
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_13
    new-array v2, v10, [I

    aput v11, v2, v9

    .line 138
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_14
    new-array v2, v10, [I

    aput v12, v2, v9

    .line 139
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_15
    new-array v2, v10, [I

    aput v15, v2, v9

    .line 140
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-eqz v5, :cond_1a

    const/16 v2, 0x20

    if-eq v5, v2, :cond_19

    if-eq v5, v8, :cond_18

    .line 141
    aget-byte v1, v1, v19

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    if-ne v1, v10, :cond_16

    new-array v1, v10, [I

    mul-int/2addr v5, v13

    const/16 v2, 0x24e

    add-int/2addr v5, v2

    aput v5, v1, v9

    .line 142
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_16
    const-string v1, "persist.fyt.temperature"

    .line 143
    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_17

    const/4 v1, 0x5

    mul-int/2addr v5, v1

    add-int/lit16 v5, v5, 0xaf

    const/16 v2, 0x9

    mul-int/2addr v5, v2

    .line 144
    div-int/2addr v5, v1

    add-int/lit16 v5, v5, 0x140

    new-array v1, v10, [I

    aput v5, v1, v9

    .line 145
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_17
    const/4 v1, 0x5

    new-array v2, v10, [I

    mul-int/2addr v5, v1

    add-int/lit16 v5, v5, 0xaf

    aput v5, v2, v9

    .line 146
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_18
    new-array v1, v10, [I

    aput v11, v1, v9

    .line 147
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_19
    new-array v1, v10, [I

    aput v12, v1, v9

    .line 148
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1a
    new-array v1, v10, [I

    aput v15, v1, v9

    .line 149
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1b
    new-array v3, v10, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 150
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v5, v10, [I

    const/4 v6, 0x3

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 151
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x8

    .line 152
    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 153
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    const/4 v5, 0x5

    add-int/lit8 v6, p2, 0x5

    .line 154
    aget-byte v5, v1, v6

    and-int/2addr v5, v8

    const-string v14, "persist.fyt.reversetemp"

    .line 155
    invoke-static {v14, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 156
    aget-byte v3, v1, v6

    and-int/2addr v3, v8

    .line 157
    aget-byte v2, v1, v2

    and-int/lit16 v5, v2, 0xff

    :cond_1c
    if-eqz v3, :cond_21

    const/16 v2, 0x20

    if-eq v3, v2, :cond_20

    if-eq v3, v8, :cond_1f

    .line 158
    aget-byte v2, v1, v19

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_1d

    new-array v2, v10, [I

    mul-int/2addr v3, v13

    const/16 v6, 0x24e

    add-int/2addr v3, v6

    aput v3, v2, v9

    .line 159
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1d
    const-string v2, "persist.fyt.temperature"

    .line 160
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_1e

    const/4 v2, 0x5

    mul-int/2addr v3, v2

    add-int/lit16 v3, v3, 0xaf

    const/16 v6, 0x9

    mul-int/2addr v3, v6

    .line 161
    div-int/2addr v3, v2

    add-int/lit16 v3, v3, 0x140

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 162
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1e
    const/4 v2, 0x5

    new-array v6, v10, [I

    mul-int/2addr v3, v2

    add-int/lit16 v3, v3, 0xaf

    aput v3, v6, v9

    .line 163
    invoke-static {v7, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_1f
    new-array v2, v10, [I

    aput v11, v2, v9

    .line 164
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_20
    new-array v2, v10, [I

    aput v12, v2, v9

    .line 165
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_21
    new-array v2, v10, [I

    aput v15, v2, v9

    .line 166
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eqz v5, :cond_26

    const/16 v2, 0x20

    if-eq v5, v2, :cond_25

    if-eq v5, v8, :cond_24

    .line 167
    aget-byte v1, v1, v19

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    if-ne v1, v10, :cond_22

    new-array v1, v10, [I

    mul-int/2addr v5, v13

    const/16 v2, 0x24e

    add-int/2addr v5, v2

    aput v5, v1, v9

    .line 168
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_22
    const-string v1, "persist.fyt.temperature"

    .line 169
    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v10, :cond_23

    const/4 v1, 0x5

    mul-int/2addr v5, v1

    add-int/lit16 v5, v5, 0xaf

    const/16 v2, 0x9

    mul-int/2addr v5, v2

    .line 170
    div-int/2addr v5, v1

    add-int/lit16 v5, v5, 0x140

    new-array v1, v10, [I

    aput v5, v1, v9

    .line 171
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_23
    const/4 v1, 0x5

    new-array v2, v10, [I

    mul-int/2addr v5, v1

    add-int/lit16 v5, v5, 0xaf

    aput v5, v2, v9

    .line 172
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_24
    new-array v1, v10, [I

    aput v11, v1, v9

    .line 173
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_25
    new-array v1, v10, [I

    aput v12, v1, v9

    .line 174
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_26
    new-array v1, v10, [I

    aput v15, v1, v9

    .line 175
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 176
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 177
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 178
    iput v2, v0, Lk0/wo;->c:I

    move v2, v9

    .line 179
    :goto_6
    iget-object v3, v0, Lk0/wo;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 180
    iget v4, v0, Lk0/wo;->c:I

    aget-object v7, v3, v2

    aget v7, v7, v9

    if-ne v4, v7, :cond_28

    if-eqz v4, :cond_29

    .line 181
    iput v2, v0, Lk0/wo;->b:I

    goto :goto_7

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 182
    :cond_29
    :goto_7
    iget v4, v0, Lk0/wo;->c:I

    const/16 v7, 0x15

    if-eq v4, v7, :cond_36

    const/16 v6, 0x16

    if-eq v4, v6, :cond_34

    const/16 v5, 0x18

    if-eq v4, v5, :cond_32

    const/16 v5, 0x19

    if-eq v4, v5, :cond_30

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_32

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_30

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_2c

    const/16 v5, 0x57

    if-eq v4, v5, :cond_30

    const/16 v5, 0x58

    if-eq v4, v5, :cond_32

    and-int/2addr v1, v8

    if-eqz v1, :cond_2a

    .line 183
    array-length v1, v3

    if-ge v2, v1, :cond_38

    .line 184
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 185
    :cond_2a
    iget v1, v0, Lk0/wo;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2b

    if-eq v1, v8, :cond_2b

    .line 186
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 187
    :cond_2b
    iput v8, v0, Lk0/wo;->b:I

    goto/16 :goto_c

    :cond_2c
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_38

    .line 188
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_2e

    if-ne v1, v10, :cond_38

    const-string v1, "com.syu.fourcamera2"

    .line 189
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 190
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_c

    .line 191
    :cond_2d
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto :goto_c

    .line 192
    :cond_2e
    sget v1, Lu0/b;->o:I

    if-ne v1, v10, :cond_2f

    .line 193
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto :goto_c

    .line 194
    :cond_2f
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto :goto_c

    :cond_30
    move v2, v9

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_31

    const/16 v3, 0x1e

    .line 195
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_31
    const/16 v1, 0x1e

    .line 196
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_32
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_33

    const/16 v3, 0x1f

    .line 197
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_33
    const/16 v1, 0x1f

    .line 198
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_34
    move v2, v9

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_35

    .line 199
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 200
    :cond_35
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_36
    move v2, v9

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_37

    .line 201
    invoke-static {v6, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 202
    :cond_37
    invoke-static {v6, v10}, Ll0/b0;->l0(II)V

    :cond_38
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/wo;->g:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/wo;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/wo;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/wo;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/wo;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x99

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
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    const/16 v3, 0xe3

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_8

    const/4 v9, 0x6

    const/16 v10, 0xff

    if-eq v1, v8, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    const/16 v11, 0x3eb

    if-eq v1, v11, :cond_2

    const/16 v11, 0x405

    if-eq v1, v11, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget v1, p2, v8

    mul-int/lit16 v1, v1, 0x320

    invoke-static {}, La/f;->w()I

    move-result v11

    div-int/2addr v1, v11

    .line 2
    aget v11, p2, v6

    mul-int/lit16 v11, v11, 0x1e0

    invoke-static {}, La/f;->i()I

    move-result v12

    div-int/2addr v11, v12

    .line 3
    aget v12, p2, v7

    const/4 v13, 0x7

    const/16 v14, 0xc7

    const/16 v15, 0x8

    if-nez v12, :cond_1

    new-array v12, v15, [I

    aput v3, v12, v7

    aput v14, v12, v8

    aput v4, v12, v6

    shr-int/lit8 v3, v1, 0x8

    aput v3, v12, v5

    and-int/2addr v1, v10

    aput v1, v12, v2

    shr-int/lit8 v1, v11, 0x8

    aput v1, v12, v4

    and-int/lit16 v1, v11, 0xff

    aput v1, v12, v9

    aput v8, v12, v13

    .line 4
    invoke-static {v12}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    aget v12, p2, v7

    if-ne v12, v8, :cond_9

    new-array v12, v15, [I

    aput v3, v12, v7

    aput v14, v12, v8

    aput v4, v12, v6

    shr-int/lit8 v3, v1, 0x8

    aput v3, v12, v5

    and-int/2addr v1, v10

    aput v1, v12, v2

    shr-int/lit8 v1, v11, 0x8

    aput v1, v12, v4

    and-int/lit16 v1, v11, 0xff

    aput v1, v12, v9

    aput v7, v12, v13

    .line 6
    invoke-static {v12}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array v1, v9, [I

    .line 7
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array v1, v4, [I

    aput v3, v1, v7

    const/16 v3, 0xc9

    aput v3, v1, v8

    aput v6, v1, v6

    .line 8
    aget v3, p2, v7

    aput v3, v1, v5

    aget v3, p2, v8

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v1, v4, [I

    aput v3, v1, v7

    const/16 v3, 0xc5

    aput v3, v1, v8

    aput v6, v1, v6

    .line 9
    aget v3, p2, v7

    aput v3, v1, v5

    aget v3, p2, v8

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :cond_5
    aget v1, p2, v7

    if-ne v1, v10, :cond_6

    .line 11
    aget v1, p2, v8

    invoke-virtual {v0, v1}, Lk0/wo;->f3(I)V

    goto :goto_0

    .line 12
    :cond_6
    aget v1, p2, v7

    const/16 v10, 0xfe

    if-ne v1, v10, :cond_7

    .line 13
    aget v1, p2, v8

    invoke-virtual {v0, v1}, Lk0/wo;->g3(I)V

    goto :goto_0

    :cond_7
    new-array v1, v9, [I

    aput v3, v1, v7

    const/16 v3, 0xc6

    aput v3, v1, v8

    aput v5, v1, v6

    .line 14
    aget v3, p2, v7

    aput v3, v1, v5

    aget v3, p2, v8

    aput v3, v1, v2

    aget v2, p2, v6

    aput v2, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_8
    new-array v1, v4, [I

    aput v3, v1, v7

    const/16 v3, 0x90

    aput v3, v1, v8

    aput v6, v1, v6

    .line 15
    aget v3, p2, v7

    aput v3, v1, v5

    aget v3, p2, v8

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_9
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x3
        0x20
        0x0
        0x0
    .end array-data
.end method

.method public final f3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7f

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    aput v4, v1, v3

    const/16 v3, 0x18

    aput v3, v1, v4

    const/4 v3, 0x4

    aput p1, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/wo;->n:I

    .line 4
    iget-object p1, p0, Lk0/wo;->g:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/wo;->n:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/wo;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final g3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x98

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc6

    aput v3, v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    aput v4, v1, v3

    const/16 v3, 0x19

    aput v3, v1, v4

    const/4 v3, 0x4

    aput p1, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/wo;->o:I

    .line 4
    iget-object p1, p0, Lk0/wo;->g:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/wo;->o:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/wo;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x80

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/wo;->p:I

    .line 3
    iget-object p1, p0, Lk0/wo;->g:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/wo;->p:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/wo;->g:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
