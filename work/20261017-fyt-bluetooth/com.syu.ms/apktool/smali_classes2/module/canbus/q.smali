.class public Lmodule/canbus/q;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/q$g;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static final D:[I

.field public static final E:[I

.field public static final F:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/q$g;",
            ">;"
        }
    .end annotation
.end field

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:[[I

.field public g:[[I

.field public h:[[I

.field public i:[[I

.field public j:[[I

.field public k:I

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:B

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:Ljava/lang/Runnable;

.field public t:I

.field public u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/q;->D:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/q;->E:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/q;->F:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x23
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x3
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x11
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lmodule/canbus/q;->c:I

    const/16 v2, 0x2f

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3
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

    iput-object v3, v0, Lmodule/canbus/q;->d:[[I

    new-array v3, v2, [[I

    new-array v5, v4, [I

    .line 4
    fill-array-data v5, :array_2f

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_30

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_31

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_32

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_33

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_34

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_35

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_36

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_37

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_38

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_39

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_3a

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_3b

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_3c

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_3d

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_3e

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_3f

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_40

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_41

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_42

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_43

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_44

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_45

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_46

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_47

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_48

    const/16 v25, 0x19

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_49

    const/16 v25, 0x1a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_4a

    const/16 v25, 0x1b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_4b

    const/16 v25, 0x1c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_4c

    const/16 v25, 0x1d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_4d

    const/16 v25, 0x1e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_4e

    const/16 v25, 0x1f

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_4f

    const/16 v25, 0x20

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_50

    const/16 v25, 0x21

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_51

    const/16 v25, 0x22

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_52

    const/16 v25, 0x23

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_53

    const/16 v25, 0x24

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_54

    const/16 v25, 0x25

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_55

    const/16 v25, 0x26

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_56

    const/16 v25, 0x27

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_57

    const/16 v25, 0x28

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_58

    const/16 v25, 0x29

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_59

    const/16 v25, 0x2a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_5a

    const/16 v25, 0x2b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_5b

    const/16 v25, 0x2c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_5c

    const/16 v25, 0x2d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_5d

    const/16 v25, 0x2e

    aput-object v5, v3, v25

    iput-object v3, v0, Lmodule/canbus/q;->e:[[I

    new-array v3, v2, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_5e

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_5f

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_60

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_61

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_62

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_63

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_64

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_65

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_66

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_67

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_68

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_69

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_6a

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_6b

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_6c

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_6d

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_6e

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_6f

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_70

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_71

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_72

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_73

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_74

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_75

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_76

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_77

    const/16 v25, 0x19

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_78

    const/16 v25, 0x1a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_79

    const/16 v25, 0x1b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_7a

    const/16 v25, 0x1c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_7b

    const/16 v25, 0x1d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_7c

    const/16 v25, 0x1e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_7d

    const/16 v25, 0x1f

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_7e

    const/16 v25, 0x20

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_7f

    const/16 v25, 0x21

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_80

    const/16 v25, 0x22

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_81

    const/16 v25, 0x23

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_82

    const/16 v25, 0x24

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_83

    const/16 v25, 0x25

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_84

    const/16 v25, 0x26

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_85

    const/16 v25, 0x27

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_86

    const/16 v25, 0x28

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_87

    const/16 v25, 0x29

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_88

    const/16 v25, 0x2a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_89

    const/16 v25, 0x2b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_8a

    const/16 v25, 0x2c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_8b

    const/16 v25, 0x2d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_8c

    const/16 v25, 0x2e

    aput-object v5, v3, v25

    iput-object v3, v0, Lmodule/canbus/q;->f:[[I

    new-array v3, v2, [[I

    new-array v5, v4, [I

    .line 6
    fill-array-data v5, :array_8d

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_8e

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_8f

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_90

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_91

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_92

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_93

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_94

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_95

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_96

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_97

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_98

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_99

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_9a

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_9b

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_9c

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_9d

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_9e

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_9f

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_a0

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_a1

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_a2

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_a3

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_a4

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_a5

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_a6

    const/16 v25, 0x19

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_a7

    const/16 v25, 0x1a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_a8

    const/16 v25, 0x1b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_a9

    const/16 v25, 0x1c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_aa

    const/16 v25, 0x1d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_ab

    const/16 v25, 0x1e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_ac

    const/16 v25, 0x1f

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_ad

    const/16 v25, 0x20

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_ae

    const/16 v25, 0x21

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_af

    const/16 v25, 0x22

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b0

    const/16 v25, 0x23

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b1

    const/16 v25, 0x24

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b2

    const/16 v25, 0x25

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b3

    const/16 v25, 0x26

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b4

    const/16 v25, 0x27

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b5

    const/16 v25, 0x28

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b6

    const/16 v25, 0x29

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b7

    const/16 v25, 0x2a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b8

    const/16 v25, 0x2b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_b9

    const/16 v25, 0x2c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_ba

    const/16 v25, 0x2d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_bb

    const/16 v25, 0x2e

    aput-object v5, v3, v25

    iput-object v3, v0, Lmodule/canbus/q;->g:[[I

    new-array v3, v2, [[I

    new-array v5, v4, [I

    .line 7
    fill-array-data v5, :array_bc

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_bd

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_be

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_bf

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_c0

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_c1

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_c2

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_c3

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_c4

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_c5

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_c6

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_c7

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_c8

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_c9

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_ca

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_cb

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_cc

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_cd

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_ce

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_cf

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_d0

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_d1

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d2

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d3

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d4

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d5

    const/16 v25, 0x19

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d6

    const/16 v25, 0x1a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d7

    const/16 v25, 0x1b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d8

    const/16 v25, 0x1c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_d9

    const/16 v25, 0x1d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_da

    const/16 v25, 0x1e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_db

    const/16 v25, 0x1f

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_dc

    const/16 v25, 0x20

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_dd

    const/16 v25, 0x21

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_de

    const/16 v25, 0x22

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_df

    const/16 v25, 0x23

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e0

    const/16 v25, 0x24

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e1

    const/16 v25, 0x25

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e2

    const/16 v25, 0x26

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e3

    const/16 v25, 0x27

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e4

    const/16 v25, 0x28

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e5

    const/16 v25, 0x29

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e6

    const/16 v25, 0x2a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e7

    const/16 v25, 0x2b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e8

    const/16 v25, 0x2c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_e9

    const/16 v25, 0x2d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_ea

    const/16 v25, 0x2e

    aput-object v5, v3, v25

    iput-object v3, v0, Lmodule/canbus/q;->h:[[I

    new-array v3, v2, [[I

    new-array v5, v4, [I

    .line 8
    fill-array-data v5, :array_eb

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_ec

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_ed

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_ee

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_ef

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_f0

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_f1

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_f2

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_f3

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_f4

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_f5

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_f6

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_f7

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_f8

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_f9

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_fa

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_fb

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_fc

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_fd

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_fe

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_ff

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_100

    const/16 v25, 0x15

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_101

    const/16 v25, 0x16

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_102

    const/16 v25, 0x17

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_103

    const/16 v25, 0x18

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_104

    const/16 v25, 0x19

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_105

    const/16 v25, 0x1a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_106

    const/16 v25, 0x1b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_107

    const/16 v25, 0x1c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_108

    const/16 v25, 0x1d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_109

    const/16 v25, 0x1e

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_10a

    const/16 v25, 0x1f

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_10b

    const/16 v25, 0x20

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_10c

    const/16 v25, 0x21

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_10d

    const/16 v25, 0x22

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_10e

    const/16 v25, 0x23

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_10f

    const/16 v25, 0x24

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_110

    const/16 v25, 0x25

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_111

    const/16 v25, 0x26

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_112

    const/16 v25, 0x27

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_113

    const/16 v25, 0x28

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_114

    const/16 v25, 0x29

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_115

    const/16 v25, 0x2a

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_116

    const/16 v25, 0x2b

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_117

    const/16 v25, 0x2c

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_118

    const/16 v25, 0x2d

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_119

    const/16 v25, 0x2e

    aput-object v5, v3, v25

    iput-object v3, v0, Lmodule/canbus/q;->i:[[I

    new-array v2, v2, [[I

    new-array v3, v4, [I

    .line 9
    fill-array-data v3, :array_11a

    aput-object v3, v2, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_11b

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_11c

    aput-object v3, v2, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_11d

    aput-object v3, v2, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_11e

    aput-object v3, v2, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_11f

    aput-object v3, v2, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_120

    aput-object v3, v2, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_121

    aput-object v3, v2, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_122

    aput-object v3, v2, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_123

    aput-object v3, v2, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_124

    aput-object v3, v2, v14

    new-array v3, v4, [I

    fill-array-data v3, :array_125

    aput-object v3, v2, v15

    new-array v3, v4, [I

    fill-array-data v3, :array_126

    aput-object v3, v2, v16

    new-array v3, v4, [I

    fill-array-data v3, :array_127

    aput-object v3, v2, v17

    new-array v3, v4, [I

    fill-array-data v3, :array_128

    aput-object v3, v2, v18

    new-array v3, v4, [I

    fill-array-data v3, :array_129

    aput-object v3, v2, v19

    new-array v3, v4, [I

    fill-array-data v3, :array_12a

    aput-object v3, v2, v20

    new-array v3, v4, [I

    fill-array-data v3, :array_12b

    aput-object v3, v2, v21

    new-array v3, v4, [I

    fill-array-data v3, :array_12c

    aput-object v3, v2, v22

    new-array v3, v4, [I

    fill-array-data v3, :array_12d

    aput-object v3, v2, v23

    new-array v3, v4, [I

    fill-array-data v3, :array_12e

    aput-object v3, v2, v24

    new-array v3, v4, [I

    fill-array-data v3, :array_12f

    const/16 v5, 0x15

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_130

    const/16 v5, 0x16

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_131

    const/16 v5, 0x17

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_132

    const/16 v5, 0x18

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_133

    const/16 v5, 0x19

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_134

    const/16 v5, 0x1a

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_135

    const/16 v5, 0x1b

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_136

    const/16 v5, 0x1c

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_137

    const/16 v5, 0x1d

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_138

    const/16 v5, 0x1e

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_139

    const/16 v5, 0x1f

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_13a

    const/16 v5, 0x20

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_13b

    const/16 v5, 0x21

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_13c

    const/16 v5, 0x22

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_13d

    const/16 v5, 0x23

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_13e

    const/16 v5, 0x24

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_13f

    const/16 v5, 0x25

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_140

    const/16 v5, 0x26

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_141

    const/16 v5, 0x27

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_142

    const/16 v5, 0x28

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_143

    const/16 v5, 0x29

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_144

    const/16 v5, 0x2a

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_145

    const/16 v5, 0x2b

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_146

    const/16 v5, 0x2c

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_147

    const/16 v5, 0x2d

    aput-object v3, v2, v5

    new-array v3, v4, [I

    fill-array-data v3, :array_148

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    iput-object v2, v0, Lmodule/canbus/q;->j:[[I

    .line 10
    iput v1, v0, Lmodule/canbus/q;->k:I

    .line 11
    new-instance v2, Lmodule/canbus/q$a;

    invoke-direct {v2, v0}, Lmodule/canbus/q$a;-><init>(Lmodule/canbus/q;)V

    iput-object v2, v0, Lmodule/canbus/q;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v2, Lmodule/canbus/q$b;

    invoke-direct {v2, v0}, Lmodule/canbus/q$b;-><init>(Lmodule/canbus/q;)V

    iput-object v2, v0, Lmodule/canbus/q;->m:Ljava/lang/Runnable;

    .line 13
    iput-byte v9, v0, Lmodule/canbus/q;->n:B

    .line 14
    new-instance v2, Lmodule/canbus/q$c;

    invoke-direct {v2, v0}, Lmodule/canbus/q$c;-><init>(Lmodule/canbus/q;)V

    iput-object v2, v0, Lmodule/canbus/q;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lmodule/canbus/q$d;

    invoke-direct {v2, v0}, Lmodule/canbus/q$d;-><init>(Lmodule/canbus/q;)V

    iput-object v2, v0, Lmodule/canbus/q;->p:Ljava/lang/Runnable;

    .line 16
    new-instance v2, Lmodule/canbus/q$e;

    invoke-direct {v2, v0}, Lmodule/canbus/q$e;-><init>(Lmodule/canbus/q;)V

    iput-object v2, v0, Lmodule/canbus/q;->q:Ljava/lang/Runnable;

    const/16 v2, 0x64

    .line 17
    iput v2, v0, Lmodule/canbus/q;->r:I

    .line 18
    new-instance v2, Lmodule/canbus/q$f;

    invoke-direct {v2, v0}, Lmodule/canbus/q$f;-><init>(Lmodule/canbus/q;)V

    iput-object v2, v0, Lmodule/canbus/q;->s:Ljava/lang/Runnable;

    .line 19
    iput v1, v0, Lmodule/canbus/q;->t:I

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
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
        0x19
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_10
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_11
    .array-data 4
        0x30
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x31
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x32
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_15
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_16
    .array-data 4
        0x35
        0x18
    .end array-data

    :array_17
    .array-data 4
        0x36
        0x15
    .end array-data

    :array_18
    .array-data 4
        0x37
        0x36
    .end array-data

    :array_19
    .array-data 4
        0x38
        0x12
    .end array-data

    :array_1a
    .array-data 4
        0x39
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x3a
        0x4
    .end array-data

    :array_1c
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_1e
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_20
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_21
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_22
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_23
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_24
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_25
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_26
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_27
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_28
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_29
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_2a
    .array-data 4
        0x3f
        0x50
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
        0x8a
        0x7
    .end array-data

    :array_2e
    .array-data 4
        0x8b
        0x8
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_30
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_31
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_32
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_33
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_34
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_35
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_36
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_37
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_38
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_39
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_3a
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_3b
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_3c
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_3d
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_3e
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_3f
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_40
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_41
    .array-data 4
        0x31
        0x1
    .end array-data

    :array_42
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x33
        0x3a
    .end array-data

    :array_44
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_45
    .array-data 4
        0x35
        0x1d
    .end array-data

    :array_46
    .array-data 4
        0x36
        0x15
    .end array-data

    :array_47
    .array-data 4
        0x37
        0x36
    .end array-data

    :array_48
    .array-data 4
        0x38
        0x12
    .end array-data

    :array_49
    .array-data 4
        0x39
        0x3
    .end array-data

    :array_4a
    .array-data 4
        0x3a
        0x4
    .end array-data

    :array_4b
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_4c
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_4d
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_4e
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_4f
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_50
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_51
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_52
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_53
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_54
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_55
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_56
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_57
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_58
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_59
    .array-data 4
        0x3f
        0x50
    .end array-data

    :array_5a
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_5b
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_5c
    .array-data 4
        0x8a
        0x7
    .end array-data

    :array_5d
    .array-data 4
        0x8b
        0x8
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_5f
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_60
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_61
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_62
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_63
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_64
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_65
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_66
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_67
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_68
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_69
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_6a
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_6b
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_6c
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_6d
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_6e
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_6f
    .array-data 4
        0x30
        0x19
    .end array-data

    :array_70
    .array-data 4
        0x31
        0x1
    .end array-data

    :array_71
    .array-data 4
        0x32
        0x5
    .end array-data

    :array_72
    .array-data 4
        0x33
        0x26
    .end array-data

    :array_73
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_74
    .array-data 4
        0x35
        0x1d
    .end array-data

    :array_75
    .array-data 4
        0x36
        0x15
    .end array-data

    :array_76
    .array-data 4
        0x37
        0x36
    .end array-data

    :array_77
    .array-data 4
        0x38
        0x12
    .end array-data

    :array_78
    .array-data 4
        0x39
        0x3
    .end array-data

    :array_79
    .array-data 4
        0x3a
        0x4
    .end array-data

    :array_7a
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_7b
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_7c
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_7d
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_7e
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_7f
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_80
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_81
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_82
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_83
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_84
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_85
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_86
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_87
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_88
    .array-data 4
        0x3f
        0x50
    .end array-data

    :array_89
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_8a
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_8b
    .array-data 4
        0x8a
        0x7
    .end array-data

    :array_8c
    .array-data 4
        0x8b
        0x8
    .end array-data

    :array_8d
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_8e
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_8f
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_90
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_91
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_92
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_93
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_94
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_95
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_96
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_97
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_98
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_99
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_9a
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_9b
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_9c
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_9d
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_9e
    .array-data 4
        0x30
        -0x1
    .end array-data

    :array_9f
    .array-data 4
        0x31
        -0x1
    .end array-data

    :array_a0
    .array-data 4
        0x32
        0x1d
    .end array-data

    :array_a1
    .array-data 4
        0x33
        -0x1
    .end array-data

    :array_a2
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_a3
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_a4
    .array-data 4
        0x36
        0x15
    .end array-data

    :array_a5
    .array-data 4
        0x37
        0x36
    .end array-data

    :array_a6
    .array-data 4
        0x38
        0x12
    .end array-data

    :array_a7
    .array-data 4
        0x39
        0x3
    .end array-data

    :array_a8
    .array-data 4
        0x3a
        0x4
    .end array-data

    :array_a9
    .array-data 4
        0x3b
        -0x1
    .end array-data

    :array_aa
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_ab
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_ac
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_ad
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_ae
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_af
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_b0
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_b1
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_b2
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_b3
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_b4
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_b5
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_b6
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_b7
    .array-data 4
        0x3f
        0x50
    .end array-data

    :array_b8
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_b9
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_ba
    .array-data 4
        0x8a
        0x7
    .end array-data

    :array_bb
    .array-data 4
        0x8b
        0x8
    .end array-data

    :array_bc
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_bd
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_be
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_bf
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_c0
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_c1
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_c2
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_c3
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_c4
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_c5
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_c6
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_c7
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c8
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_c9
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_ca
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_cb
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_cc
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_cd
    .array-data 4
        0x30
        -0x1
    .end array-data

    :array_ce
    .array-data 4
        0x31
        0x3
    .end array-data

    :array_cf
    .array-data 4
        0x32
        0x12
    .end array-data

    :array_d0
    .array-data 4
        0x33
        0x19
    .end array-data

    :array_d1
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_d2
    .array-data 4
        0x35
        0x1d
    .end array-data

    :array_d3
    .array-data 4
        0x36
        0x15
    .end array-data

    :array_d4
    .array-data 4
        0x37
        0x4b
    .end array-data

    :array_d5
    .array-data 4
        0x38
        0x36
    .end array-data

    :array_d6
    .array-data 4
        0x39
        -0x1
    .end array-data

    :array_d7
    .array-data 4
        0x3a
        0x4
    .end array-data

    :array_d8
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_d9
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_da
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_db
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_dc
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_dd
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_de
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_df
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_e0
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_e1
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_e2
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_e3
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_e4
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_e5
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_e6
    .array-data 4
        0x3f
        0x50
    .end array-data

    :array_e7
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_e8
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_e9
    .array-data 4
        0x8a
        0x7
    .end array-data

    :array_ea
    .array-data 4
        0x8b
        0x8
    .end array-data

    :array_eb
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_ec
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_ed
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_ee
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_ef
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_f0
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_f1
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_f2
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_f3
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_f4
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_f5
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_f6
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_f7
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_f8
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_f9
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_fa
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_fb
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_fc
    .array-data 4
        0x30
        -0x1
    .end array-data

    :array_fd
    .array-data 4
        0x31
        -0x1
    .end array-data

    :array_fe
    .array-data 4
        0x32
        0x1d
    .end array-data

    :array_ff
    .array-data 4
        0x33
        0x3
    .end array-data

    :array_100
    .array-data 4
        0x34
        0x4
    .end array-data

    :array_101
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_102
    .array-data 4
        0x36
        0x36
    .end array-data

    :array_103
    .array-data 4
        0x37
        0x12
    .end array-data

    :array_104
    .array-data 4
        0x38
        0x6
    .end array-data

    :array_105
    .array-data 4
        0x39
        0x9
    .end array-data

    :array_106
    .array-data 4
        0x3a
        0x37
    .end array-data

    :array_107
    .array-data 4
        0x3b
        0x15
    .end array-data

    :array_108
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_109
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_10a
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_10b
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_10c
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_10d
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_10e
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_10f
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_110
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_111
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_112
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_113
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_114
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_115
    .array-data 4
        0x3f
        0x50
    .end array-data

    :array_116
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_117
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_118
    .array-data 4
        0x8a
        0x7
    .end array-data

    :array_119
    .array-data 4
        0x8b
        0x8
    .end array-data

    :array_11a
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_11b
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_11c
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_11d
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_11e
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_11f
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_120
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_121
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_122
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_123
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_124
    .array-data 4
        0xb
        0x38
    .end array-data

    :array_125
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_126
    .array-data 4
        0xd
        0x23
    .end array-data

    :array_127
    .array-data 4
        0xe
        0x22
    .end array-data

    :array_128
    .array-data 4
        0xf
        0x19
    .end array-data

    :array_129
    .array-data 4
        0x10
        0x1a
    .end array-data

    :array_12a
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_12b
    .array-data 4
        0x30
        -0x1
    .end array-data

    :array_12c
    .array-data 4
        0x31
        0x3
    .end array-data

    :array_12d
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_12e
    .array-data 4
        0x33
        0x19
    .end array-data

    :array_12f
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_130
    .array-data 4
        0x35
        0x1d
    .end array-data

    :array_131
    .array-data 4
        0x36
        0x15
    .end array-data

    :array_132
    .array-data 4
        0x37
        0x36
    .end array-data

    :array_133
    .array-data 4
        0x38
        0x12
    .end array-data

    :array_134
    .array-data 4
        0x39
        -0x1
    .end array-data

    :array_135
    .array-data 4
        0x3a
        0x4
    .end array-data

    :array_136
    .array-data 4
        0x3b
        0x0
    .end array-data

    :array_137
    .array-data 4
        0x40
        0x19
    .end array-data

    :array_138
    .array-data 4
        0x41
        0x3
    .end array-data

    :array_139
    .array-data 4
        0x42
        0x4
    .end array-data

    :array_13a
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_13b
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_13c
    .array-data 4
        0x85
        0x43
    .end array-data

    :array_13d
    .array-data 4
        0x86
        0x44
    .end array-data

    :array_13e
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_13f
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_140
    .array-data 4
        0x89
        0xc
    .end array-data

    :array_141
    .array-data 4
        0x3c
        0x7
    .end array-data

    :array_142
    .array-data 4
        0x3d
        0x8
    .end array-data

    :array_143
    .array-data 4
        0x3e
        0x51
    .end array-data

    :array_144
    .array-data 4
        0x3f
        0x50
    .end array-data

    :array_145
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_146
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_147
    .array-data 4
        0x8a
        0x7
    .end array-data

    :array_148
    .array-data 4
        0x8b
        0x8
    .end array-data
.end method

.method public static synthetic A3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/q;->v:I

    return p0
.end method

.method public static B3(IIIIIII)V
    .locals 7

    .line 1
    sget-object v0, Lmodule/canbus/q;->F:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lmodule/canbus/q$g;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lmodule/canbus/q$g;->b(IIIIII)V

    :cond_1
    return-void
.end method

.method public static C3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/q;->F:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/q$g;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/q$g;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic d3(Lmodule/canbus/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/q;->a3()V

    return-void
.end method

.method public static synthetic e3(Lmodule/canbus/q;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/q;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lmodule/canbus/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/q;->E3()V

    return-void
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/q;->z:I

    return v0
.end method

.method public static synthetic h3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/q;->z:I

    return p0
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/q;->B:I

    return v0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/q;->A:I

    return v0
.end method

.method public static synthetic k3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/q;->A:I

    return p0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/q;->C:I

    return v0
.end method

.method public static synthetic m3(Lmodule/canbus/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/q;->F3()V

    return-void
.end method

.method public static synthetic n3(Lmodule/canbus/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/q;->u:I

    return p0
.end method

.method public static synthetic o3(Lmodule/canbus/q;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/q;->u:I

    return p1
.end method

.method public static synthetic p3(Lmodule/canbus/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/q;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/q;->u:I

    return v0
.end method

.method public static synthetic q3(Lmodule/canbus/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/q;->D3()V

    return-void
.end method

.method public static synthetic r3(Lmodule/canbus/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/q;->r:I

    return p0
.end method

.method public static synthetic s3(Lmodule/canbus/q;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/q;->t:I

    return p0
.end method

.method public static synthetic t3(Lmodule/canbus/q;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/q;->t:I

    return p1
.end method

.method public static synthetic u3(Lmodule/canbus/q;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/q;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/q;->t:I

    return v0
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/q;->y:I

    return v0
.end method

.method public static synthetic w3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/q;->y:I

    return p0
.end method

.method public static synthetic x3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/q;->D:[I

    return-object v0
.end method

.method public static synthetic y3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/q;->x:I

    return v0
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/q;->v:I

    return v0
.end method


# virtual methods
.method public final D3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/q;->E3()V

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/q;->F3()V

    return-void
.end method

.method public final declared-synchronized E3()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lu0/b;->a0:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_2
    sget v0, Lmodule/canbus/q;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    sget v0, Lmodule/canbus/q;->y:I

    or-int/lit16 v0, v0, 0x80

    invoke-static {v2, v0}, Lmodule/canbus/q;->C3(II)V

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Lmodule/canbus/q;->y:I

    and-int/lit8 v0, v0, 0x7f

    invoke-static {v2, v0}, Lmodule/canbus/q;->C3(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized F3()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    :try_start_1
    sget v2, Lmodule/canbus/q;->w:I

    sget v3, Lmodule/canbus/q;->z:I

    sget v4, Lmodule/canbus/q;->A:I

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-static/range {v1 .. v7}, Lmodule/canbus/q;->B3(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs G3(I[I)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p2

    add-int/lit8 v1, v0, 0x3

    .line 2
    new-array v1, v1, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    .line 3
    aput v2, v1, v3

    const/4 v2, 0x1

    .line 4
    aput p1, v1, v2

    const/4 p1, 0x2

    .line 5
    aput v0, v1, p1

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 p1, v3, 0x3

    .line 6
    aget v2, p2, v3

    aput v2, v1, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/q;->E:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/q;->B:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/q;->C:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/q;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/q;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/q;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/q;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lmodule/canbus/q;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x2

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    .line 8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    iput v1, v0, Lk0/mt;->e:I

    .line 10
    iput v1, v0, Lk0/mt;->f:I

    .line 11
    iput v1, v0, Lk0/mt;->g:I

    .line 12
    iput v4, v0, Lk0/mt;->b:I

    .line 13
    iput v4, v0, Lk0/mt;->c:I

    .line 14
    iput v4, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 16
    iput v1, v0, Lk0/mt;->e:I

    .line 17
    iput v1, v0, Lk0/mt;->f:I

    .line 18
    iput v1, v0, Lk0/mt;->g:I

    .line 19
    iput v1, v0, Lk0/mt;->b:I

    .line 20
    iput v1, v0, Lk0/mt;->c:I

    .line 21
    iput v4, v0, Lk0/mt;->d:I

    .line 22
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p0}, Lmodule/canbus/q;->init()V

    .line 24
    iget-object v0, p0, Lmodule/canbus/q;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {p0}, Lmodule/canbus/q;->D3()V

    :cond_2
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 10

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x27

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-eq p3, v0, :cond_2a

    const/16 v0, 0x29

    if-eq p3, v0, :cond_29

    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    add-int/2addr p2, v5

    .line 2
    aget-byte p1, p1, p2

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x5

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 3
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 4
    invoke-static {v6, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 5
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 6
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    const-string p2, "persist.syu.reversefrontdoor"

    .line 7
    invoke-static {p2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 8
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v4

    and-int/2addr p1, v4

    aput p1, p2, v7

    .line 9
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_0
    new-array p2, v4, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v4

    aput p3, p2, v7

    .line 10
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v4, [I

    shr-int/2addr p1, v7

    and-int/2addr p1, v4

    aput p1, p2, v7

    .line 11
    invoke-static {v2, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 12
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_2c

    add-int/lit8 p3, p2, 0x2

    .line 13
    aget-byte v1, p1, p3

    and-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x3

    .line 14
    aget-byte v5, p1, v2

    and-int/2addr v5, v3

    add-int/lit8 v8, p2, 0x4

    .line 15
    aget-byte v9, p1, v8

    and-int/2addr v9, v3

    add-int/2addr p2, v6

    .line 16
    aget-byte v6, p1, p2

    and-int/2addr v6, v3

    if-nez v1, :cond_1

    if-nez v5, :cond_1

    if-nez v9, :cond_1

    if-nez v6, :cond_1

    .line 17
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 18
    :cond_1
    sget v7, Ll0/c0;->g:I

    if-ne v7, v1, :cond_2

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_2

    sget v7, Ll0/c0;->i:I

    if-ne v7, v9, :cond_2

    sget v7, Ll0/c0;->j:I

    if-eq v7, v6, :cond_3

    .line 19
    :cond_2
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_3

    .line 20
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 21
    sput v0, Ll0/c0;->k:I

    .line 22
    sget-object v0, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 23
    :cond_3
    :goto_0
    sput v1, Ll0/c0;->g:I

    .line 24
    sput v5, Ll0/c0;->h:I

    .line 25
    sput v9, Ll0/c0;->i:I

    .line 26
    sput v6, Ll0/c0;->j:I

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lmodule/canbus/q;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 28
    aget-byte p3, p1, v2

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lmodule/canbus/q;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 29
    aget-byte p3, p1, v8

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lmodule/canbus/q;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lmodule/canbus/q;->c3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_14

    .line 31
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_2c

    add-int/lit8 p3, p2, 0x2

    .line 32
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lmodule/canbus/q;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 33
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lmodule/canbus/q;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 34
    aget-byte p3, p1, p3

    and-int/2addr p3, v3

    invoke-virtual {p0, p3}, Lmodule/canbus/q;->c3(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v6

    .line 35
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lmodule/canbus/q;->c3(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_14

    :pswitch_3
    add-int/lit8 p3, p2, 0x2

    .line 36
    aget-byte p3, p1, p3

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 37
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 38
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 39
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x3

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 40
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x2

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 41
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v4, [I

    shr-int/2addr p3, v7

    and-int/2addr p3, v4

    aput p3, v2, v7

    .line 42
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 43
    aget-byte p3, p1, p3

    const/16 v1, 0x12

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x7

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 44
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x6

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 45
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v4, [I

    shr-int/lit8 v5, p3, 0x5

    and-int/2addr v5, v4

    aput v5, v2, v7

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x15

    new-array v2, v4, [I

    shr-int/2addr p3, v7

    and-int/lit8 p3, p3, 0xf

    aput p3, v2, v7

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-string p3, "persist.fyt.reversetemp"

    .line 48
    invoke-static {p3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    const/16 v1, 0x1c

    const/16 v2, 0x1b

    if-eqz p3, :cond_4

    new-array p3, v4, [I

    add-int/lit8 v5, p2, 0x5

    .line 49
    aget-byte v5, p1, v5

    and-int/2addr v5, v3

    aput v5, p3, v7

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/2addr p2, v0

    .line 50
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v7

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    :cond_4
    new-array p3, v4, [I

    add-int/lit8 v0, p2, 0x4

    .line 51
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, p3, v7

    invoke-static {v2, p3}, Lk0/qt;->y0(I[I)V

    new-array p3, v4, [I

    add-int/2addr p2, v6

    .line 52
    aget-byte p1, p1, p2

    and-int/2addr p1, v3

    aput p1, p3, v7

    invoke-static {v1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_14

    .line 53
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_2c

    add-int/lit8 p3, p2, 0x2

    .line 54
    aget-byte p3, p1, p3

    add-int/2addr p2, v5

    .line 55
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 56
    iput p2, p0, Lmodule/canbus/q;->c:I

    const/16 p3, 0x81

    if-eq p2, p3, :cond_27

    const/16 p3, 0x82

    if-eq p2, p3, :cond_25

    const/16 p3, 0x8a

    if-eq p2, p3, :cond_27

    const/16 p3, 0x8b

    if-eq p2, p3, :cond_25

    packed-switch p2, :pswitch_data_1

    .line 57
    sget p2, Lk0/nt;->c:I

    if-eqz p2, :cond_1e

    if-eq p2, v4, :cond_19

    packed-switch p2, :pswitch_data_2

    move p2, v7

    .line 58
    :goto_1
    iget-object p3, p0, Lmodule/canbus/q;->d:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_6

    .line 59
    iget v0, p0, Lmodule/canbus/q;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_5

    if-eqz v0, :cond_6

    .line 60
    iput p2, p0, Lmodule/canbus/q;->b:I

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_7

    .line 61
    array-length p1, p3

    if-ge p2, p1, :cond_2c

    .line 62
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_7
    if-nez p1, :cond_2c

    .line 63
    iget p1, p0, Lmodule/canbus/q;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_8

    if-eq p1, v3, :cond_8

    .line 64
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 65
    :cond_8
    iput v3, p0, Lmodule/canbus/q;->b:I

    goto/16 :goto_14

    :pswitch_5
    move p2, v7

    .line 66
    :goto_3
    iget-object p3, p0, Lmodule/canbus/q;->j:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_a

    .line 67
    iget v0, p0, Lmodule/canbus/q;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_9

    if-eqz v0, :cond_a

    .line 68
    iput p2, p0, Lmodule/canbus/q;->b:I

    goto :goto_4

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_b

    .line 69
    array-length p1, p3

    if-ge p2, p1, :cond_2c

    .line 70
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_b
    if-nez p1, :cond_2c

    .line 71
    iget p1, p0, Lmodule/canbus/q;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_c

    if-eq p1, v3, :cond_c

    .line 72
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 73
    :cond_c
    iput v3, p0, Lmodule/canbus/q;->b:I

    goto/16 :goto_14

    :pswitch_6
    move p2, v7

    .line 74
    :goto_5
    iget-object p3, p0, Lmodule/canbus/q;->i:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_e

    .line 75
    iget v0, p0, Lmodule/canbus/q;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_d

    if-eqz v0, :cond_e

    .line 76
    iput p2, p0, Lmodule/canbus/q;->b:I

    goto :goto_6

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_f

    .line 77
    array-length p1, p3

    if-ge p2, p1, :cond_2c

    .line 78
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_f
    if-nez p1, :cond_2c

    .line 79
    iget p1, p0, Lmodule/canbus/q;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_10

    if-eq p1, v3, :cond_10

    .line 80
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 81
    :cond_10
    iput v3, p0, Lmodule/canbus/q;->b:I

    goto/16 :goto_14

    :pswitch_7
    move p2, v7

    .line 82
    :goto_7
    iget-object p3, p0, Lmodule/canbus/q;->h:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_12

    .line 83
    iget v0, p0, Lmodule/canbus/q;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_11

    if-eqz v0, :cond_12

    .line 84
    iput p2, p0, Lmodule/canbus/q;->b:I

    goto :goto_8

    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_13

    .line 85
    array-length p1, p3

    if-ge p2, p1, :cond_2c

    .line 86
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_13
    if-nez p1, :cond_2c

    .line 87
    iget p1, p0, Lmodule/canbus/q;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_14

    if-eq p1, v3, :cond_14

    .line 88
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 89
    :cond_14
    iput v3, p0, Lmodule/canbus/q;->b:I

    goto/16 :goto_14

    :pswitch_8
    move p2, v7

    .line 90
    :goto_9
    iget-object p3, p0, Lmodule/canbus/q;->g:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_16

    .line 91
    iget v0, p0, Lmodule/canbus/q;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_15

    if-eqz v0, :cond_16

    .line 92
    iput p2, p0, Lmodule/canbus/q;->b:I

    goto :goto_a

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_16
    :goto_a
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_17

    .line 93
    array-length p1, p3

    if-ge p2, p1, :cond_2c

    .line 94
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_17
    if-nez p1, :cond_2c

    .line 95
    iget p1, p0, Lmodule/canbus/q;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_18

    if-eq p1, v3, :cond_18

    .line 96
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 97
    :cond_18
    iput v3, p0, Lmodule/canbus/q;->b:I

    goto/16 :goto_14

    :cond_19
    move p2, v7

    .line 98
    :goto_b
    iget-object p3, p0, Lmodule/canbus/q;->e:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_1b

    .line 99
    iget v0, p0, Lmodule/canbus/q;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_1a

    if-eqz v0, :cond_1b

    .line 100
    iput p2, p0, Lmodule/canbus/q;->b:I

    goto :goto_c

    :cond_1a
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_1b
    :goto_c
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_1c

    .line 101
    array-length p1, p3

    if-ge p2, p1, :cond_2c

    .line 102
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_1c
    if-nez p1, :cond_2c

    .line 103
    iget p1, p0, Lmodule/canbus/q;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_1d

    if-eq p1, v3, :cond_1d

    .line 104
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 105
    :cond_1d
    iput v3, p0, Lmodule/canbus/q;->b:I

    goto/16 :goto_14

    :cond_1e
    move p2, v7

    .line 106
    :goto_d
    iget-object p3, p0, Lmodule/canbus/q;->f:[[I

    array-length v0, p3

    if-ge p2, v0, :cond_20

    .line 107
    iget v0, p0, Lmodule/canbus/q;->c:I

    aget-object v1, p3, p2

    aget v1, v1, v7

    if-ne v0, v1, :cond_1f

    if-eqz v0, :cond_20

    .line 108
    iput p2, p0, Lmodule/canbus/q;->b:I

    goto :goto_e

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_20
    :goto_e
    and-int/2addr p1, v3

    if-ne p1, v4, :cond_21

    .line 109
    array-length p1, p3

    if-ge p2, p1, :cond_2c

    .line 110
    aget-object p1, p3, p2

    aget p1, p1, v4

    invoke-static {p1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_14

    :cond_21
    if-nez p1, :cond_2c

    .line 111
    iget p1, p0, Lmodule/canbus/q;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_22

    if-eq p1, v3, :cond_22

    .line 112
    aget-object p1, p3, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    .line 113
    :cond_22
    iput v3, p0, Lmodule/canbus/q;->b:I

    goto/16 :goto_14

    :pswitch_9
    move p2, v7

    :goto_f
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1e

    if-ge p2, p3, :cond_23

    .line 114
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    .line 115
    :cond_23
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :pswitch_a
    move p2, v7

    :goto_10
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x1f

    if-ge p2, p3, :cond_24

    .line 116
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 117
    :cond_24
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_25
    :pswitch_b
    move p2, v7

    :goto_11
    and-int/lit16 p3, p1, 0xff

    const/16 v0, 0x8

    if-ge p2, p3, :cond_26

    .line 118
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    .line 119
    :cond_26
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    :cond_27
    :pswitch_c
    move p2, v7

    :goto_12
    and-int/lit16 p3, p1, 0xff

    const/4 v0, 0x7

    if-ge p2, p3, :cond_28

    .line 120
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 121
    :cond_28
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    goto :goto_14

    .line 122
    :cond_29
    invoke-static {}, Lk0/nt;->a()Z

    goto :goto_14

    .line 123
    :cond_2a
    invoke-static {}, Lk0/nt;->a()Z

    move-result p3

    if-eqz p3, :cond_2c

    add-int/2addr p2, v2

    .line 124
    aget-byte p1, p1, p2

    and-int/lit16 p2, p1, 0x80

    and-int/2addr p1, v3

    if-eqz p2, :cond_2b

    sub-int/2addr p1, v4

    sub-int/2addr v3, p1

    mul-int/2addr v3, v1

    rsub-int p1, v3, 0x3e8

    goto :goto_13

    :cond_2b
    mul-int/2addr p1, v1

    add-int/lit16 p1, p1, 0x3e8

    .line 125
    :goto_13
    invoke-static {p1}, Lu0/d;->A3(I)V

    :cond_2c
    :goto_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/q;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/q;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/q;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/q;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/q;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lmodule/canbus/q;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/q;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x63

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

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 1
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0xb

    new-array p1, p1, [I

    const/16 p4, 0xe3

    const/4 v0, 0x0

    aput p4, p1, v0

    const/16 p4, 0xc6

    aput p4, p1, p3

    const/4 p3, 0x2

    const/16 p4, 0x8

    aput p4, p1, p3

    const/4 v1, 0x3

    aput p3, p1, v1

    const/4 p3, 0x4

    .line 2
    aget p2, p2, v0

    aput p2, p1, p3

    const/4 p2, 0x5

    aput v0, p1, p2

    const/4 p2, 0x6

    aput v0, p1, p2

    const/4 p2, 0x7

    aput v0, p1, p2

    aput v0, p1, p4

    const/16 p2, 0x9

    aput v0, p1, p2

    const/16 p2, 0xa

    aput v0, p1, p2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    array-length p1, p2

    if-le p1, p3, :cond_2

    const/16 p1, 0xf5

    .line 4
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/q;->G3(I[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/q;->D:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/q;->y:I

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lmodule/canbus/q;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3
    :pswitch_1
    sget v2, Lu0/b;->s3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v10

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    aput v3, v1, v9

    .line 4
    sget v2, Lu0/b;->t3:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 5
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 6
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto :goto_1

    .line 7
    :pswitch_2
    sget v2, Lo0/e;->C:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v10

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    aput v3, v1, v9

    .line 8
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 9
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 10
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v6

    goto :goto_1

    :pswitch_3
    aput v3, v1, v10

    aput v3, v1, v8

    aput v3, v1, v9

    aput v3, v1, v7

    aput v3, v1, v4

    aput v3, v1, v6

    goto :goto_1

    .line 11
    :pswitch_4
    sget v5, Lw0/d;->i:I

    .line 12
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 13
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_0

    aput v2, v1, v10

    goto :goto_0

    :cond_0
    const v13, 0x10001

    if-ne v12, v13, :cond_1

    const/4 v12, 0x2

    aput v12, v1, v10

    goto :goto_0

    :cond_1
    const v13, 0x10002

    if-ne v12, v13, :cond_2

    const/4 v12, 0x3

    aput v12, v1, v10

    goto :goto_0

    :cond_2
    if-nez v12, :cond_3

    const/16 v12, 0x11

    aput v12, v1, v10

    goto :goto_0

    :cond_3
    if-ne v12, v2, :cond_4

    const/16 v12, 0x12

    aput v12, v1, v10

    :cond_4
    :goto_0
    and-int/lit16 v10, v5, 0xff

    aput v10, v1, v8

    shr-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v9

    .line 14
    rem-int/2addr v11, v9

    add-int/2addr v11, v2

    aput v11, v1, v7

    aput v3, v1, v4

    aput v3, v1, v6

    :goto_1
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 15
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 16
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final b3([I)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x30

    const/16 v3, 0xc

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x13

    const/4 v7, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    aput v3, p1, v7

    .line 4
    aput v2, p1, v1

    goto :goto_0

    .line 5
    :pswitch_1
    aput v4, p1, v7

    .line 6
    aput v6, p1, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 7
    aput v0, p1, v7

    const/16 v0, 0x12

    .line 8
    aput v0, p1, v1

    goto :goto_0

    .line 9
    :pswitch_3
    aput v3, p1, v7

    const/16 v0, 0x22

    .line 10
    aput v0, p1, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    .line 11
    aput v0, p1, v7

    .line 12
    aput v2, p1, v1

    goto :goto_0

    .line 13
    :pswitch_5
    sget v0, Lo0/e;->H:I

    if-ne v0, v5, :cond_1

    .line 14
    aput v7, p1, v7

    .line 15
    aput v6, p1, v1

    goto :goto_0

    :cond_1
    if-ne v0, v7, :cond_2

    .line 16
    aput v4, p1, v7

    .line 17
    aput v6, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 18
    aput v4, p1, v7

    .line 19
    aput v6, p1, v1

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xb

    .line 20
    aput v0, p1, v7

    const/4 v0, 0x0

    .line 21
    aput v0, p1, v1

    goto :goto_0

    .line 22
    :pswitch_7
    aput v5, p1, v7

    .line 23
    aput v5, p1, v1

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/q;->F:Lo1/f;

    new-instance v1, Lmodule/canbus/q$g;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/q$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/q$g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/q$g;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
