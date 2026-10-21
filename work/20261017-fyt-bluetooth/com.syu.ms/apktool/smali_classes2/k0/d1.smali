.class public Lk0/d1;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static F:I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:[I

.field public E:I

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:[[I

.field public l:[[I

.field public m:[[I

.field public n:[[I

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:Lo1/g0;

.field public final y:I

.field public z:I


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

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    iput-object v1, v0, Lk0/d1;->b:[B

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/d1;->c:I

    .line 4
    iput v1, v0, Lk0/d1;->d:I

    .line 5
    iput v1, v0, Lk0/d1;->e:I

    .line 6
    iput v1, v0, Lk0/d1;->f:I

    .line 7
    iput v1, v0, Lk0/d1;->g:I

    .line 8
    iput v1, v0, Lk0/d1;->j:I

    const/16 v2, 0x3b

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 9
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

    const/16 v24, 0x16

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    const/16 v24, 0x17

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    const/16 v24, 0x18

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    const/16 v24, 0x19

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    const/16 v24, 0x1a

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    const/16 v24, 0x1b

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    const/16 v24, 0x1c

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    const/16 v24, 0x1d

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    const/16 v24, 0x1e

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    const/16 v24, 0x1f

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    const/16 v15, 0x20

    aput-object v4, v2, v15

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

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    const/16 v25, 0x2d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    const/16 v25, 0x2e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    const/16 v25, 0x2f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    const/16 v25, 0x30

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    const/16 v25, 0x31

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    const/16 v25, 0x32

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    const/16 v25, 0x33

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    const/16 v25, 0x34

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    const/16 v25, 0x35

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    const/16 v25, 0x36

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    const/16 v25, 0x37

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    const/16 v25, 0x38

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    const/16 v25, 0x39

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    const/16 v25, 0x3a

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/d1;->k:[[I

    const/16 v2, 0x37

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 10
    fill-array-data v4, :array_3b

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_3d

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3e

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_3f

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_40

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_41

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_42

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_43

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_44

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_45

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_46

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_47

    const/16 v24, 0xc

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_48

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_49

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_4a

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_4b

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_4c

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_4d

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_4e

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_4f

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_50

    const/16 v25, 0x15

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_51

    const/16 v25, 0x16

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_52

    const/16 v25, 0x17

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_53

    const/16 v25, 0x18

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_54

    const/16 v25, 0x19

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_55

    const/16 v25, 0x1a

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_56

    const/16 v25, 0x1b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_57

    const/16 v25, 0x1c

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_58

    const/16 v25, 0x1d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_59

    const/16 v25, 0x1e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5a

    const/16 v25, 0x1f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5b

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_5c

    const/16 v25, 0x21

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5d

    const/16 v25, 0x22

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5e

    const/16 v25, 0x23

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5f

    const/16 v25, 0x24

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_60

    const/16 v25, 0x25

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_61

    const/16 v25, 0x26

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_62

    const/16 v25, 0x27

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_63

    const/16 v25, 0x28

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_64

    const/16 v25, 0x29

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_65

    const/16 v25, 0x2a

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_66

    const/16 v25, 0x2b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_67

    const/16 v25, 0x2c

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_68

    const/16 v25, 0x2d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_69

    const/16 v25, 0x2e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_6a

    const/16 v25, 0x2f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_6b

    const/16 v25, 0x30

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_6c

    const/16 v25, 0x31

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_6d

    const/16 v25, 0x32

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_6e

    const/16 v25, 0x33

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_6f

    const/16 v25, 0x34

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_70

    const/16 v25, 0x35

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_71

    const/16 v25, 0x36

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/d1;->l:[[I

    const/16 v2, 0x2b

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 11
    fill-array-data v4, :array_72

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_73

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_74

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_75

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_76

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_77

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_78

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_79

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7a

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_7b

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_7c

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_7d

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_7e

    const/16 v24, 0xc

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_7f

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_80

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_81

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_82

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_83

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_84

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_85

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_86

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_87

    const/16 v25, 0x15

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_88

    const/16 v25, 0x16

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_89

    const/16 v25, 0x17

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_8a

    const/16 v25, 0x18

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_8b

    const/16 v25, 0x19

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_8c

    const/16 v25, 0x1a

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_8d

    const/16 v25, 0x1b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_8e

    const/16 v25, 0x1c

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_8f

    const/16 v25, 0x1d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_90

    const/16 v25, 0x1e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_91

    const/16 v25, 0x1f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_92

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_93

    const/16 v25, 0x21

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_94

    const/16 v25, 0x22

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_95

    const/16 v25, 0x23

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_96

    const/16 v25, 0x24

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_97

    const/16 v25, 0x25

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_98

    const/16 v25, 0x26

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_99

    const/16 v25, 0x27

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_9a

    const/16 v25, 0x28

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_9b

    const/16 v25, 0x29

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_9c

    const/16 v25, 0x2a

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/d1;->m:[[I

    const/16 v2, 0x2b

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 12
    fill-array-data v4, :array_9d

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_9e

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_9f

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_a0

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_a1

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_a2

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_a3

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_a4

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_a5

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_a6

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_a7

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_a8

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_a9

    const/16 v6, 0xc

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_aa

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_ab

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_ac

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_ad

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_ae

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_af

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_b0

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_b1

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_b2

    const/16 v6, 0x15

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b3

    const/16 v6, 0x16

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b4

    const/16 v6, 0x17

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b5

    const/16 v6, 0x18

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b6

    const/16 v6, 0x19

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b7

    const/16 v6, 0x1a

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b8

    const/16 v6, 0x1b

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_b9

    const/16 v6, 0x1c

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_ba

    const/16 v6, 0x1d

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_bb

    const/16 v6, 0x1e

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_bc

    const/16 v6, 0x1f

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_bd

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_be

    const/16 v6, 0x21

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_bf

    const/16 v6, 0x22

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c0

    const/16 v6, 0x23

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c1

    const/16 v6, 0x24

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c2

    const/16 v6, 0x25

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c3

    const/16 v6, 0x26

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c4

    const/16 v6, 0x27

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c5

    const/16 v6, 0x28

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c6

    const/16 v6, 0x29

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_c7

    const/16 v6, 0x2a

    aput-object v4, v2, v6

    iput-object v2, v0, Lk0/d1;->n:[[I

    .line 13
    iput-boolean v1, v0, Lk0/d1;->o:Z

    .line 14
    new-instance v2, Lk0/d1$e;

    invoke-direct {v2, v0}, Lk0/d1$e;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->q:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lk0/d1$k;

    invoke-direct {v2, v0}, Lk0/d1$k;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->r:Ljava/lang/Runnable;

    .line 16
    iput v1, v0, Lk0/d1;->s:I

    .line 17
    new-instance v2, Lk0/d1$l;

    invoke-direct {v2, v0}, Lk0/d1$l;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->t:Ljava/lang/Runnable;

    .line 18
    new-instance v2, Lk0/d1$m;

    invoke-direct {v2, v0}, Lk0/d1$m;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->u:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 19
    iput v2, v0, Lk0/d1;->v:I

    .line 20
    new-instance v2, Lk0/d1$a;

    invoke-direct {v2, v0}, Lk0/d1$a;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->w:Ljava/lang/Runnable;

    .line 21
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v15}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/d1;->x:Lo1/g0;

    .line 22
    iput v5, v0, Lk0/d1;->y:I

    .line 23
    iput v1, v0, Lk0/d1;->z:I

    .line 24
    new-instance v2, Lk0/d1$b;

    invoke-direct {v2, v0}, Lk0/d1$b;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->A:Ljava/lang/Runnable;

    .line 25
    new-instance v2, Lk0/d1$c;

    invoke-direct {v2, v0}, Lk0/d1$c;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->B:Ljava/lang/Runnable;

    .line 26
    new-instance v2, Lk0/d1$d;

    invoke-direct {v2, v0}, Lk0/d1$d;-><init>(Lk0/d1;)V

    iput-object v2, v0, Lk0/d1;->C:Ljava/lang/Runnable;

    new-array v2, v3, [I

    .line 27
    fill-array-data v2, :array_c8

    iput-object v2, v0, Lk0/d1;->D:[I

    .line 28
    iput v1, v0, Lk0/d1;->E:I

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
        0x88
        0x22
    .end array-data

    :array_8
    .array-data 4
        0x89
        0x23
    .end array-data

    :array_9
    .array-data 4
        0x8a
        0x3f
    .end array-data

    :array_a
    .array-data 4
        0x8b
        0x1d
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x15
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x16
    .end array-data

    :array_13
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_14
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_15
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_16
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_17
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_18
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_19
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_1a
    .array-data 4
        0x10
        0xb
    .end array-data

    :array_1b
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_1c
    .array-data 4
        0x12
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_1e
    .array-data 4
        0x14
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x15
        0x27
    .end array-data

    :array_20
    .array-data 4
        0x16
        0x5
    .end array-data

    :array_21
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_22
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_23
    .array-data 4
        0x19
        0x23
    .end array-data

    :array_24
    .array-data 4
        0x1a
        0x22
    .end array-data

    :array_25
    .array-data 4
        0x1b
        0x10
    .end array-data

    :array_26
    .array-data 4
        0x1c
        0x23
    .end array-data

    :array_27
    .array-data 4
        0x1d
        0x22
    .end array-data

    :array_28
    .array-data 4
        0x1e
        0x20
    .end array-data

    :array_29
    .array-data 4
        0x1f
        0x21
    .end array-data

    :array_2a
    .array-data 4
        0x34
        0x23
    .end array-data

    :array_2b
    .array-data 4
        0x35
        0x22
    .end array-data

    :array_2c
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_2d
    .array-data 4
        0x41
        0x12
    .end array-data

    :array_2e
    .array-data 4
        0x42
        0x41
    .end array-data

    :array_2f
    .array-data 4
        0x43
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x44
        0x35
    .end array-data

    :array_31
    .array-data 4
        0x50
        0x5
    .end array-data

    :array_32
    .array-data 4
        0x51
        0x2
    .end array-data

    :array_33
    .array-data 4
        0x53
        0x5
    .end array-data

    :array_34
    .array-data 4
        0x54
        0x2
    .end array-data

    :array_35
    .array-data 4
        0x55
        0x6
    .end array-data

    :array_36
    .array-data 4
        0x56
        0x1
    .end array-data

    :array_37
    .array-data 4
        0x60
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0x61
        -0x1
    .end array-data

    :array_39
    .array-data 4
        0x62
        0x3f
    .end array-data

    :array_3a
    .array-data 4
        0x63
        0xd
    .end array-data

    :array_3b
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_3c
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_3d
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_3e
    .array-data 4
        0x84
        0x3
    .end array-data

    :array_3f
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_40
    .array-data 4
        0x86
        0xd
    .end array-data

    :array_41
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x18
    .end array-data

    :array_43
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_44
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_45
    .array-data 4
        0x4
        0x3a
    .end array-data

    :array_46
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_47
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x7
        0x15
    .end array-data

    :array_49
    .array-data 4
        0x8
        0x16
    .end array-data

    :array_4a
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_4b
    .array-data 4
        0xa
        0x27
    .end array-data

    :array_4c
    .array-data 4
        0xb
        0x1d
    .end array-data

    :array_4d
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_4e
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_4f
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_50
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_51
    .array-data 4
        0x10
        0xb
    .end array-data

    :array_52
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_53
    .array-data 4
        0x12
        0x12
    .end array-data

    :array_54
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_55
    .array-data 4
        0x14
        0x2
    .end array-data

    :array_56
    .array-data 4
        0x15
        0x27
    .end array-data

    :array_57
    .array-data 4
        0x16
        0x35
    .end array-data

    :array_58
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_59
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_5a
    .array-data 4
        0x19
        0x23
    .end array-data

    :array_5b
    .array-data 4
        0x1a
        0x22
    .end array-data

    :array_5c
    .array-data 4
        0x1b
        0x10
    .end array-data

    :array_5d
    .array-data 4
        0x1c
        0x23
    .end array-data

    :array_5e
    .array-data 4
        0x1d
        0x22
    .end array-data

    :array_5f
    .array-data 4
        0x1e
        0x20
    .end array-data

    :array_60
    .array-data 4
        0x1f
        0x21
    .end array-data

    :array_61
    .array-data 4
        0x34
        0x23
    .end array-data

    :array_62
    .array-data 4
        0x35
        0x22
    .end array-data

    :array_63
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_64
    .array-data 4
        0x41
        0x12
    .end array-data

    :array_65
    .array-data 4
        0x42
        0x41
    .end array-data

    :array_66
    .array-data 4
        0x43
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x44
        0x35
    .end array-data

    :array_68
    .array-data 4
        0x50
        0x26
    .end array-data

    :array_69
    .array-data 4
        0x51
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x53
        0x5
    .end array-data

    :array_6b
    .array-data 4
        0x54
        0x2
    .end array-data

    :array_6c
    .array-data 4
        0x55
        0x6
    .end array-data

    :array_6d
    .array-data 4
        0x56
        0x1
    .end array-data

    :array_6e
    .array-data 4
        0x58
        0x5
    .end array-data

    :array_6f
    .array-data 4
        0x60
        -0x1
    .end array-data

    :array_70
    .array-data 4
        0x61
        -0x1
    .end array-data

    :array_71
    .array-data 4
        0x62
        0x3f
    .end array-data

    :array_72
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_73
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_74
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_75
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_76
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_77
    .array-data 4
        0x86
        0xd
    .end array-data

    :array_78
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_79
    .array-data 4
        0x1
        0x29
    .end array-data

    :array_7a
    .array-data 4
        0x2
        0xc
    .end array-data

    :array_7b
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_7c
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_7d
    .array-data 4
        0x5
        0x18
    .end array-data

    :array_7e
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_7f
    .array-data 4
        0x7
        0x19
    .end array-data

    :array_80
    .array-data 4
        0x8
        0x1d
    .end array-data

    :array_81
    .array-data 4
        0x9
        0x1
    .end array-data

    :array_82
    .array-data 4
        0xa
        0x2a
    .end array-data

    :array_83
    .array-data 4
        0xb
        0x2b
    .end array-data

    :array_84
    .array-data 4
        0xc
        0x2c
    .end array-data

    :array_85
    .array-data 4
        0xd
        0x2d
    .end array-data

    :array_86
    .array-data 4
        0xe
        -0x1
    .end array-data

    :array_87
    .array-data 4
        0xf
        -0x1
    .end array-data

    :array_88
    .array-data 4
        0x10
        0x27
    .end array-data

    :array_89
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_8a
    .array-data 4
        0x12
        0x37
    .end array-data

    :array_8b
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_8c
    .array-data 4
        0x14
        0x26
    .end array-data

    :array_8d
    .array-data 4
        0x15
        0x28
    .end array-data

    :array_8e
    .array-data 4
        0x16
        0x4
    .end array-data

    :array_8f
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_90
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_91
    .array-data 4
        0x19
        0x1f
    .end array-data

    :array_92
    .array-data 4
        0x1a
        0x1e
    .end array-data

    :array_93
    .array-data 4
        0x1b
        0x24
    .end array-data

    :array_94
    .array-data 4
        0x1c
        -0x1
    .end array-data

    :array_95
    .array-data 4
        0x1d
        -0x1
    .end array-data

    :array_96
    .array-data 4
        0x34
        -0x1
    .end array-data

    :array_97
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_98
    .array-data 4
        0x36
        0x16
    .end array-data

    :array_99
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_9a
    .array-data 4
        0x55
        0x6
    .end array-data

    :array_9b
    .array-data 4
        0x56
        0x1
    .end array-data

    :array_9c
    .array-data 4
        0x62
        0x3f
    .end array-data

    :array_9d
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_9e
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_9f
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_a0
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_a1
    .array-data 4
        0x85
        0x2
    .end array-data

    :array_a2
    .array-data 4
        0x86
        0xd
    .end array-data

    :array_a3
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_a4
    .array-data 4
        0x1
        0x15
    .end array-data

    :array_a5
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_a6
    .array-data 4
        0x3
        0x1d
    .end array-data

    :array_a7
    .array-data 4
        0x4
        0x3a
    .end array-data

    :array_a8
    .array-data 4
        0x5
        0x36
    .end array-data

    :array_a9
    .array-data 4
        0x6
        0x4
    .end array-data

    :array_aa
    .array-data 4
        0x7
        -0x1
    .end array-data

    :array_ab
    .array-data 4
        0x8
        -0x1
    .end array-data

    :array_ac
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_ad
    .array-data 4
        0xa
        0x3e
    .end array-data

    :array_ae
    .array-data 4
        0xb
        0x0
    .end array-data

    :array_af
    .array-data 4
        0xc
        0x28
    .end array-data

    :array_b0
    .array-data 4
        0xd
        0x29
    .end array-data

    :array_b1
    .array-data 4
        0xe
        0x2a
    .end array-data

    :array_b2
    .array-data 4
        0xf
        0x2b
    .end array-data

    :array_b3
    .array-data 4
        0x10
        -0x1
    .end array-data

    :array_b4
    .array-data 4
        0x11
        0xd
    .end array-data

    :array_b5
    .array-data 4
        0x12
        0x12
    .end array-data

    :array_b6
    .array-data 4
        0x13
        0x19
    .end array-data

    :array_b7
    .array-data 4
        0x14
        0x37
    .end array-data

    :array_b8
    .array-data 4
        0x15
        -0x1
    .end array-data

    :array_b9
    .array-data 4
        0x16
        0x35
    .end array-data

    :array_ba
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_bb
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_bc
    .array-data 4
        0x19
        0x1f
    .end array-data

    :array_bd
    .array-data 4
        0x1a
        0x1e
    .end array-data

    :array_be
    .array-data 4
        0x1b
        -0x1
    .end array-data

    :array_bf
    .array-data 4
        0x1c
        0x22
    .end array-data

    :array_c0
    .array-data 4
        0x1d
        0x23
    .end array-data

    :array_c1
    .array-data 4
        0x1e
        0x20
    .end array-data

    :array_c2
    .array-data 4
        0x1f
        0x21
    .end array-data

    :array_c3
    .array-data 4
        0x50
        0x26
    .end array-data

    :array_c4
    .array-data 4
        0x55
        0x5
    .end array-data

    :array_c5
    .array-data 4
        0x56
        0x1
    .end array-data

    :array_c6
    .array-data 4
        0x58
        0x3f
    .end array-data

    :array_c7
    .array-data 4
        0x59
        0x2c
    .end array-data

    :array_c8
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lk0/d1;->F:I

    return v0
.end method

.method public static o3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
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

    const/16 v13, 0x10

    const/16 v14, 0xd

    const/16 v15, 0xa

    const/16 v12, 0xc

    if-ne v5, v2, :cond_a

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 5
    :pswitch_1
    aget v1, v1, v2

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v7}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v6}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    aget v1, v1, v2

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v10}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    aget v1, v1, v2

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_3

    goto/16 :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0, v15}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    .line 13
    invoke-virtual {v0, v1}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_4
    aget v1, v1, v2

    if-eqz v1, :cond_5

    .line 15
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-nez v1, :cond_15

    const/16 v1, 0x22

    .line 16
    invoke-virtual {v0, v1}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 17
    :cond_5
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-ne v1, v2, :cond_15

    const/16 v1, 0x23

    .line 18
    invoke-virtual {v0, v1}, Lk0/d1;->a3(I)V

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
    invoke-virtual {v0, v11}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 22
    :cond_6
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-ne v1, v2, :cond_15

    .line 23
    invoke-virtual {v0, v11}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_6
    aget v1, v1, v2

    if-eqz v1, :cond_7

    .line 25
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-nez v1, :cond_15

    const/16 v1, 0x15

    .line 26
    invoke-virtual {v0, v1}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x15

    .line 27
    sget-object v3, Lk0/nt;->g:[I

    aget v3, v3, v14

    if-ne v3, v2, :cond_15

    .line 28
    invoke-virtual {v0, v1}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 29
    :pswitch_7
    aget v1, v1, v2

    const/16 v3, 0x17

    if-eqz v1, :cond_8

    .line 30
    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0xb

    aget v1, v1, v4

    if-nez v1, :cond_15

    .line 31
    invoke-virtual {v0, v3}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xb

    .line 32
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v4

    if-ne v1, v2, :cond_15

    .line 33
    invoke-virtual {v0, v3}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 34
    :pswitch_8
    aget v1, v1, v2

    if-eqz v1, :cond_9

    .line 35
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_15

    .line 36
    invoke-virtual {v0, v2}, Lk0/d1;->a3(I)V

    goto/16 :goto_0

    .line 37
    :cond_9
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v2, :cond_15

    .line 38
    invoke-virtual {v0, v2}, Lk0/d1;->a3(I)V

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
    invoke-virtual {v0, v11}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x15

    .line 41
    invoke-virtual {v0, v1}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

    .line 42
    :pswitch_b
    aget v1, v1, v2

    if-eqz v1, :cond_c

    .line 43
    invoke-virtual {v0, v6}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

    .line 44
    :cond_c
    invoke-virtual {v0, v7}, Lk0/d1;->b3(I)V

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
    invoke-virtual {v0, v1}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x7

    .line 47
    invoke-virtual {v0, v1}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

    .line 48
    :pswitch_d
    aget v1, v1, v2

    if-eqz v1, :cond_f

    .line 49
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-nez v1, :cond_15

    .line 50
    invoke-virtual {v0, v10}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

    .line 51
    :cond_f
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-ne v1, v2, :cond_15

    .line 52
    invoke-virtual {v0, v10}, Lk0/d1;->b3(I)V

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
    invoke-virtual {v0, v3}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

    .line 56
    :cond_10
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v13

    if-ne v1, v2, :cond_15

    .line 57
    invoke-virtual {v0, v3}, Lk0/d1;->b3(I)V

    goto/16 :goto_0

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
    invoke-virtual {v0, v12}, Lk0/d1;->b3(I)V

    goto :goto_0

    .line 61
    :cond_11
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_15

    .line 62
    invoke-virtual {v0, v12}, Lk0/d1;->b3(I)V

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
    invoke-virtual {v0, v3}, Lk0/d1;->b3(I)V

    goto :goto_0

    .line 66
    :cond_12
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-ne v1, v2, :cond_15

    .line 67
    invoke-virtual {v0, v3}, Lk0/d1;->b3(I)V

    goto :goto_0

    .line 68
    :pswitch_11
    aget v1, v1, v2

    if-eqz v1, :cond_13

    .line 69
    sget-object v1, Lk0/nt;->g:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-nez v1, :cond_15

    .line 70
    invoke-virtual {v0, v2}, Lk0/d1;->b3(I)V

    goto :goto_0

    :cond_13
    const/16 v3, 0xb

    .line 71
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_15

    .line 72
    invoke-virtual {v0, v2}, Lk0/d1;->b3(I)V

    goto :goto_0

    .line 73
    :pswitch_12
    aget v1, v1, v2

    const/16 v3, 0x1a

    if-eqz v1, :cond_14

    .line 74
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-nez v1, :cond_15

    .line 75
    invoke-virtual {v0, v3}, Lk0/d1;->b3(I)V

    goto :goto_0

    .line 76
    :cond_14
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v15

    if-ne v1, v2, :cond_15

    .line 77
    invoke-virtual {v0, v3}, Lk0/d1;->b3(I)V

    :cond_15
    :goto_0
    return-void

    nop

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
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/d1;->t:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 3
    iput v2, v0, Lk0/mt;->e:I

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->l:I

    .line 9
    iget-object v0, p0, Lk0/d1;->x:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 10
    iget-object v0, p0, Lk0/d1;->x:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/d1;->k3(I)V

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 13
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, v0, Lk0/mt;->m:[I

    .line 14
    iget-object v0, p0, Lk0/d1;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/d1;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/d1;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/d1;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 18
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_1

    const/16 v3, 0x14

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_1

    const/16 v3, 0x38

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 19
    :cond_1
    :pswitch_0
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v3, Lk0/mt;->q:I

    :goto_0
    const/4 v3, 0x3

    const/16 v4, 0x53

    if-eq v0, v3, :cond_3

    const/16 v3, 0x4c

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    goto :goto_1

    .line 20
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 21
    iget-object v0, p0, Lk0/d1;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 22
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 23
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/d1;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/d1;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 26
    :cond_3
    iget-object v0, p0, Lk0/d1;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 27
    :goto_1
    sget v0, Lk0/nt;->c:I

    if-ne v0, v4, :cond_4

    .line 28
    new-instance v0, Lk0/d1$f;

    invoke-direct {v0, p0}, Lk0/d1$f;-><init>(Lk0/d1;)V

    sput-object v0, Le/c;->c:Lo1/o;

    .line 29
    new-instance v0, Lk0/d1$g;

    invoke-direct {v0, p0}, Lk0/d1$g;-><init>(Lk0/d1;)V

    sput-object v0, Le/c;->h:Lo1/o;

    .line 30
    new-instance v0, Lk0/d1$h;

    invoke-direct {v0, p0}, Lk0/d1$h;-><init>(Lk0/d1;)V

    sput-object v0, Le/c;->i:Lo1/o;

    .line 31
    new-instance v0, Lk0/d1$i;

    invoke-direct {v0, p0}, Lk0/d1$i;-><init>(Lk0/d1;)V

    sput-object v0, Le/c;->j:Lo1/o;

    .line 32
    new-instance v0, Lk0/d1$j;

    invoke-direct {v0, p0}, Lk0/d1$j;-><init>(Lk0/d1;)V

    sput-object v0, Le/c;->k:Lo1/o;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 33
    sput-object v0, Le/c;->c:Lo1/o;

    .line 34
    sput-object v0, Le/c;->h:Lo1/o;

    .line 35
    sput-object v0, Le/c;->i:Lo1/o;

    .line 36
    sput-object v0, Le/c;->j:Lo1/o;

    .line 37
    sput-object v0, Le/c;->k:Lo1/o;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x45
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x57
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xa0
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .end array-data
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, 0xc

    const/16 v4, 0xd

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v11, :cond_7a

    const/4 v12, 0x7

    const/4 v13, 0x2

    const/16 v14, 0x8

    if-eq v2, v13, :cond_4d

    const/16 v15, 0x10

    const/16 v16, 0x9

    if-eq v2, v7, :cond_34

    if-eq v2, v3, :cond_33

    if-eq v2, v4, :cond_32

    const/16 v3, 0x13

    if-eq v2, v3, :cond_31

    const/16 v3, 0x26

    if-eq v2, v3, :cond_30

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x47

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x55

    if-eq v2, v3, :cond_26

    const/16 v3, 0x7d

    const v17, 0xff00

    if-eq v2, v3, :cond_20

    const/16 v3, 0x50

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x51

    if-eq v2, v3, :cond_17

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_37

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    if-eq v2, v15, :cond_6

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    const/16 v3, 0x90

    if-eq v2, v3, :cond_0

    goto/16 :goto_37

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v4, p3, -0x4

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 4
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x15d

    add-int/lit8 v5, p2, 0x3

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    invoke-static {v3, v4, v0, v2}, Lo1/x;->z([Lo1/x;IILjava/lang/String;)V

    goto/16 :goto_37

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v4, p3, -0x4

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 6
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x15c

    add-int/lit8 v5, p2, 0x3

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    invoke-static {v3, v4, v0, v2}, Lo1/x;->z([Lo1/x;IILjava/lang/String;)V

    goto/16 :goto_37

    :cond_2
    const/16 v2, 0x15b

    .line 7
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x3

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_37

    :cond_3
    const/16 v2, 0x15a

    .line 8
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x3

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_37

    :cond_4
    const/16 v2, 0x159

    .line 9
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x3

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_37

    :cond_5
    const/16 v2, 0x158

    .line 10
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, -0x3

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_37

    :cond_6
    const/16 v2, 0x156

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 11
    aget-byte v4, v0, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x157

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 12
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 13
    :pswitch_1
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x47

    if-eq v2, v3, :cond_7

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_7

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_7

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_7

    const/16 v3, 0x60

    if-ne v2, v3, :cond_86

    :cond_7
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v3, v0, v2

    if-ne v3, v13, :cond_8

    sget v3, Lu0/b;->D:I

    if-eq v3, v4, :cond_8

    .line 15
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v4}, Lu0/h;->c(I)V

    goto/16 :goto_37

    .line 16
    :cond_8
    aget-byte v0, v0, v2

    if-ne v0, v11, :cond_86

    sget v0, Lu0/b;->D:I

    if-ne v0, v4, :cond_86

    .line 17
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v10}, Lu0/h;->c(I)V

    goto/16 :goto_37

    :pswitch_2
    const/16 v2, 0xc1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 18
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v11, [I

    .line 19
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v11, [I

    .line 20
    aget-byte v4, v0, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 21
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x3

    const-string v5, "UTF-16LE"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_0
    const/16 v0, 0xc4

    .line 23
    invoke-static {v0, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_37

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v3, v0, v2

    if-ne v3, v11, :cond_b

    const/16 v2, 0xad

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 25
    aget-byte v6, v0, v4

    and-int/2addr v6, v9

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v11, [I

    add-int/lit8 v6, p2, 0x4

    .line 26
    aget-byte v7, v0, v6

    and-int/2addr v7, v9

    aput v7, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v11, [I

    add-int/lit8 v7, p2, 0x5

    .line 27
    aget-byte v15, v0, v7

    and-int/2addr v15, v9

    aput v15, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v11, [I

    add-int/lit8 v15, p2, 0x6

    .line 28
    aget-byte v5, v0, v15

    and-int/2addr v5, v9

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x7

    .line 29
    aget-byte v12, v0, v5

    and-int/2addr v12, v9

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 30
    aget-byte v2, v0, v4

    and-int/2addr v2, v9

    .line 31
    aget-byte v3, v0, v6

    mul-int/2addr v3, v8

    .line 32
    aget-byte v4, v0, v7

    mul-int/2addr v4, v8

    .line 33
    aget-byte v6, v0, v15

    mul-int/2addr v6, v8

    .line 34
    aget-byte v0, v0, v5

    mul-int/2addr v0, v8

    if-eqz v2, :cond_a

    if-eq v2, v11, :cond_9

    .line 35
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v13, [I

    aput v14, v5, v10

    const/16 v7, 0xa

    div-int/2addr v3, v7

    or-int/lit16 v3, v3, 0x100

    aput v3, v5, v11

    const/16 v3, 0x419

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v5, v13, [I

    aput v14, v5, v10

    .line 36
    div-int/2addr v4, v7

    or-int/lit16 v4, v4, 0x200

    aput v4, v5, v11

    invoke-static {v2, v3, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v13, [I

    aput v14, v4, v10

    .line 37
    div-int/2addr v6, v7

    or-int/lit16 v5, v6, 0x300

    aput v5, v4, v11

    invoke-static {v2, v3, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v13, [I

    aput v14, v4, v10

    .line 38
    div-int/2addr v0, v7

    or-int/lit16 v0, v0, 0x400

    aput v0, v4, v11

    invoke-static {v2, v3, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_37

    .line 39
    :cond_9
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v13, [I

    aput v14, v5, v10

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x1aef

    or-int/lit16 v3, v3, 0x1100

    aput v3, v5, v11

    const/16 v7, 0x419

    const/4 v9, 0x0

    invoke-static {v2, v7, v5, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v14, v3, v10

    mul-int/lit16 v4, v4, 0x3e8

    .line 40
    div-int/lit16 v4, v4, 0x1aef

    or-int/lit16 v4, v4, 0x1200

    aput v4, v3, v11

    invoke-static {v2, v7, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v14, v3, v10

    mul-int/lit16 v6, v6, 0x3e8

    .line 41
    div-int/lit16 v6, v6, 0x1aef

    or-int/lit16 v4, v6, 0x1300

    aput v4, v3, v11

    invoke-static {v2, v7, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v14, v3, v10

    mul-int/lit16 v0, v0, 0x3e8

    .line 42
    div-int/lit16 v0, v0, 0x1aef

    or-int/lit16 v0, v0, 0x1400

    aput v0, v3, v11

    invoke-static {v2, v7, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_a
    const/16 v7, 0x419

    const/4 v9, 0x0

    .line 43
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v13, [I

    aput v14, v5, v10

    mul-int/2addr v3, v8

    const/16 v12, 0xa

    div-int/2addr v3, v12

    or-int/lit16 v3, v3, 0x2100

    aput v3, v5, v11

    invoke-static {v2, v7, v5, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v14, v3, v10

    mul-int/2addr v4, v8

    .line 44
    div-int/2addr v4, v12

    or-int/lit16 v4, v4, 0x2200

    aput v4, v3, v11

    invoke-static {v2, v7, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v14, v3, v10

    mul-int/2addr v6, v8

    .line 45
    div-int/2addr v6, v12

    or-int/lit16 v4, v6, 0x2300

    aput v4, v3, v11

    invoke-static {v2, v7, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v14, v3, v10

    mul-int/2addr v0, v8

    .line 46
    div-int/2addr v0, v12

    or-int/lit16 v0, v0, 0x2400

    aput v0, v3, v11

    invoke-static {v2, v7, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_37

    .line 47
    :cond_b
    aget-byte v3, v0, v2

    if-ne v3, v13, :cond_c

    const/16 v2, 0xb2

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 48
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 49
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 50
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 51
    :cond_c
    aget-byte v3, v0, v2

    if-ne v3, v7, :cond_d

    const/16 v2, 0xb4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 52
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v11, [I

    .line 53
    aget-byte v5, v0, v4

    const/4 v12, 0x6

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v11, [I

    .line 54
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v11, [I

    .line 55
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v11, [I

    .line 56
    aget-byte v4, v0, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v7

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 57
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v0, v5

    shl-int/2addr v5, v14

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 58
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 59
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 60
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 61
    aget-byte v4, v0, v4

    shl-int/2addr v4, v15

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v0, v5

    shl-int/2addr v5, v14

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 62
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x10

    .line 63
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x12

    .line 64
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x13

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 65
    :cond_d
    aget-byte v2, v0, v2

    if-ne v2, v8, :cond_86

    const/16 v2, 0xc8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 66
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 67
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 68
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 69
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 70
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 71
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 72
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 73
    :pswitch_4
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_86

    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v0, v0, v2

    and-int/2addr v0, v9

    if-ne v0, v11, :cond_e

    .line 75
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_37

    .line 76
    :cond_e
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_37

    :pswitch_5
    const/16 v2, 0x28

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 77
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 78
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 79
    aget-byte v2, v0, v4

    and-int/2addr v2, v6

    if-eq v2, v11, :cond_12

    if-eq v2, v13, :cond_11

    if-eq v2, v7, :cond_10

    if-eq v2, v8, :cond_f

    move v2, v10

    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_f
    move v2, v10

    move v4, v2

    move v3, v11

    goto :goto_1

    :cond_10
    move v4, v10

    move v2, v11

    move v3, v2

    goto :goto_1

    :cond_11
    move v3, v10

    move v4, v3

    move v2, v11

    goto :goto_1

    :cond_12
    move v2, v10

    move v3, v2

    move v4, v11

    :goto_1
    const/16 v5, 0x2e

    new-array v6, v11, [I

    aput v2, v6, v10

    .line 80
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v5, v11, [I

    aput v3, v5, v10

    .line 81
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v11, [I

    aput v4, v3, v10

    .line 82
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 83
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x27

    new-array v3, v11, [I

    .line 84
    aget-byte v0, v0, v4

    const/4 v4, 0x6

    shr-int/2addr v0, v4

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_6
    const/16 v2, 0xd1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 85
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v3, v11, [I

    .line 86
    aget-byte v5, v0, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v3, v11, [I

    .line 87
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v3, v11, [I

    .line 88
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v3, v11, [I

    .line 89
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v12

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 90
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v3, v11, [I

    .line 91
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v3, v11, [I

    .line 92
    aget-byte v0, v0, v4

    shr-int/2addr v0, v7

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_7
    const/16 v2, 0x15e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 93
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 94
    :pswitch_8
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0xd0

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {v1, v0, v4, v5}, Lk0/d1;->g3([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lo1/x;->A([Lo1/x;ILjava/lang/String;)V

    goto/16 :goto_37

    .line 95
    :pswitch_9
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0xcf

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {v1, v0, v4, v5}, Lk0/d1;->g3([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lo1/x;->A([Lo1/x;ILjava/lang/String;)V

    goto/16 :goto_37

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v0, v0, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 97
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_13

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 98
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 99
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_13
    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 100
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 101
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 102
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 103
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v0, v7

    and-int/2addr v0, v11

    aput v0, v2, v10

    .line 104
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 105
    :pswitch_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_86

    add-int/lit8 v2, p2, 0x2

    .line 106
    aget-byte v3, v0, v2

    and-int/2addr v3, v9

    add-int/lit8 v4, p2, 0x3

    .line 107
    aget-byte v5, v0, v4

    and-int/2addr v5, v9

    add-int/lit8 v7, p2, 0x4

    .line 108
    aget-byte v12, v0, v7

    and-int/2addr v12, v9

    add-int/lit8 v6, p2, 0x5

    .line 109
    aget-byte v13, v0, v6

    and-int/2addr v13, v9

    if-nez v3, :cond_14

    if-nez v5, :cond_14

    if-nez v12, :cond_14

    if-nez v13, :cond_14

    .line 110
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 111
    :cond_14
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_15

    sget v10, Ll0/c0;->h:I

    if-ne v10, v5, :cond_15

    sget v10, Ll0/c0;->i:I

    if-ne v10, v12, :cond_15

    sget v10, Ll0/c0;->j:I

    if-eq v10, v13, :cond_16

    .line 112
    :cond_15
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_16

    .line 113
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 114
    sput v8, Ll0/c0;->k:I

    .line 115
    sget-object v8, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v8}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 116
    :cond_16
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 117
    sput v5, Ll0/c0;->h:I

    .line 118
    sput v12, Ll0/c0;->i:I

    .line 119
    sput v13, Ll0/c0;->j:I

    .line 120
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 121
    aget-byte v2, v0, v4

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 122
    aget-byte v2, v0, v7

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 123
    aget-byte v0, v0, v6

    and-int/2addr v0, v9

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_37

    .line 124
    :pswitch_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_86

    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 126
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 127
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    invoke-static {v2}, Ll0/c0;->L0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 128
    aget-byte v0, v0, v2

    and-int/2addr v0, v9

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_37

    :pswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 129
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 130
    aget-byte v3, v0, v3

    const/16 v4, 0x78

    new-array v5, v11, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v11

    aput v9, v5, v10

    .line 131
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x79

    new-array v5, v11, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v11

    aput v9, v5, v10

    .line 132
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7a

    new-array v5, v11, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v11

    aput v9, v5, v10

    .line 133
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7b

    new-array v5, v11, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v11

    aput v9, v5, v10

    .line 134
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7d

    new-array v5, v11, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v11

    aput v9, v5, v10

    .line 135
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7e

    new-array v5, v11, [I

    and-int/2addr v2, v7

    aput v2, v5, v10

    .line 136
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 137
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 138
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 139
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 140
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v11, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 141
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v11, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v7

    aput v3, v4, v10

    .line 142
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 143
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v11, [I

    .line 144
    aget-byte v5, v0, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v11, [I

    .line 145
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v11, [I

    .line 146
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v11, [I

    .line 147
    aget-byte v5, v0, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v11, [I

    .line 148
    aget-byte v5, v0, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v11, [I

    .line 149
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 150
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v11, [I

    .line 151
    aget-byte v5, v0, v4

    const/4 v9, 0x6

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v11, [I

    .line 152
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v11, [I

    .line 153
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v11, [I

    .line 154
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v11, [I

    .line 155
    aget-byte v5, v0, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v11, [I

    .line 156
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v11, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 157
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v11, [I

    .line 158
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v11, [I

    .line 159
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v11, [I

    .line 160
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v11, [I

    .line 161
    aget-byte v5, v0, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v11, [I

    .line 162
    aget-byte v5, v0, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v11, [I

    .line 163
    aget-byte v0, v0, v4

    shr-int/2addr v0, v10

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_e
    add-int/lit8 v2, p2, 0x2

    .line 164
    aget-byte v0, v0, v2

    invoke-virtual {v1, v0}, Lk0/d1;->m3(I)V

    goto/16 :goto_37

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    .line 165
    invoke-virtual {v1, v0, v2, v3}, Lk0/d1;->l3([BII)V

    goto/16 :goto_37

    :pswitch_10
    add-int/lit8 v2, p2, 0x2

    .line 166
    aget-byte v0, v0, v2

    const/16 v2, 0x82

    new-array v3, v11, [I

    and-int/2addr v0, v11

    aput v0, v3, v10

    .line 167
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_11
    add-int/lit8 v2, p2, 0x2

    .line 168
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 169
    aget-byte v0, v0, v3

    const/16 v3, 0x69

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 170
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 171
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 172
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 173
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 174
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v11, [I

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 175
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 176
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v10

    .line 177
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 178
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x3

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 179
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 180
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 181
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v11, [I

    shr-int/2addr v0, v10

    and-int/2addr v0, v11

    aput v0, v3, v10

    .line 182
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_12
    add-int/lit8 v2, p2, 0x2

    .line 183
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 184
    aget-byte v0, v0, v3

    const/16 v3, 0x62

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 185
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x63

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 186
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 187
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v11

    aput v5, v4, v10

    .line 188
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v4, v11, [I

    and-int/2addr v2, v11

    aput v2, v4, v10

    .line 189
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 190
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x4

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 191
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v11, [I

    shr-int/lit8 v4, v0, 0x3

    and-int/2addr v4, v11

    aput v4, v3, v10

    .line 192
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v11, [I

    and-int/2addr v0, v7

    aput v0, v3, v10

    .line 193
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 194
    aget-byte v2, v0, v2

    if-eq v2, v11, :cond_1c

    if-eq v2, v13, :cond_1b

    if-eq v2, v7, :cond_1a

    if-eq v2, v8, :cond_19

    if-eq v2, v6, :cond_18

    goto/16 :goto_37

    :cond_18
    add-int/lit8 v2, p2, 0x3

    .line 195
    aget-byte v2, v0, v2

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_37

    :pswitch_13
    const/16 v2, 0x139

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 196
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_14
    const/16 v2, 0x138

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 197
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_15
    const/16 v2, 0x137

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 198
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_16
    const/16 v2, 0x136

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 199
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_17
    const/16 v2, 0x135

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 200
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_18
    const/16 v2, 0x134

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 201
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_19
    const/16 v2, 0x133

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 202
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_1a
    const/16 v2, 0x126

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 203
    aget-byte v5, v0, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x127

    new-array v3, v11, [I

    .line 204
    aget-byte v4, v0, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x128

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 205
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x129

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 206
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 207
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 208
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 209
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 210
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 211
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xd

    .line 212
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x130

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xe

    .line 213
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x131

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 214
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x132

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x10

    .line 215
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_19
    add-int/lit8 v2, p2, 0x3

    .line 216
    aget-byte v2, v0, v2

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    goto/16 :goto_37

    :pswitch_1b
    const/16 v2, 0x153

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 217
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x154

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 218
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x155

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 219
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_1c
    const/16 v2, 0x150

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 220
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x151

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 221
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x152

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 222
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_1d
    const/16 v2, 0x14d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 223
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 224
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 225
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_1e
    const/16 v2, 0x14a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 226
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 227
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 228
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_1f
    const/16 v2, 0x147

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 229
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x148

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 230
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x149

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 231
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_20
    const/16 v2, 0x125

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 232
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_21
    const/16 v2, 0x124

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 233
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_22
    const/16 v2, 0x123

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 234
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_23
    const/16 v2, 0x122

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 235
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_24
    const/16 v2, 0x121

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 236
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_25
    const/16 v2, 0x120

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 237
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_26
    const/16 v2, 0x11f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 238
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_27
    const/16 v2, 0x10d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 239
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10e

    new-array v3, v11, [I

    .line 240
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10f

    new-array v3, v11, [I

    .line 241
    aget-byte v4, v0, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x110

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 242
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x111

    new-array v3, v11, [I

    .line 243
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x112

    new-array v3, v11, [I

    .line 244
    aget-byte v5, v0, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x113

    new-array v3, v11, [I

    .line 245
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x114

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 246
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x115

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 247
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x116

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 248
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x117

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 249
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x118

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 250
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x119

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 251
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 252
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xd

    .line 253
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xe

    .line 254
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 255
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x10

    .line 256
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_1a
    add-int/lit8 v2, p2, 0x3

    .line 257
    aget-byte v2, v0, v2

    packed-switch v2, :pswitch_data_7

    goto/16 :goto_37

    :pswitch_28
    const/16 v2, 0x10c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 258
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_29
    const/16 v2, 0x10b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 259
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_2a
    const/16 v2, 0x10a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 260
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_2b
    const/16 v2, 0x109

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 261
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_2c
    const/16 v2, 0x108

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 262
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_2d
    const/16 v2, 0x107

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 263
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_2e
    const/16 v2, 0x106

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 264
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :pswitch_2f
    const/16 v2, 0xf4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 265
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf5

    new-array v3, v11, [I

    .line 266
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf6

    new-array v3, v11, [I

    .line 267
    aget-byte v4, v0, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf7

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 268
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v3, v11, [I

    .line 269
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf9

    new-array v3, v11, [I

    .line 270
    aget-byte v5, v0, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v3, v11, [I

    .line 271
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 272
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 273
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 274
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfe

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 275
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0xa

    .line 276
    aget-byte v3, v0, v3

    and-int/2addr v3, v9

    aput v3, v2, v10

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x100

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xb

    .line 277
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x101

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 278
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x102

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xd

    .line 279
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x103

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xe

    .line 280
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x104

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 281
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x105

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x10

    .line 282
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_1b
    const/16 v2, 0xef

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 283
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf0

    new-array v3, v11, [I

    .line 284
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf1

    new-array v3, v11, [I

    .line 285
    aget-byte v4, v0, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf2

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 286
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 287
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_1c
    const/16 v2, 0xe6

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 288
    aget-byte v5, v0, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v3, v11, [I

    .line 289
    aget-byte v4, v0, v4

    shr-int/2addr v4, v10

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 290
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe9

    new-array v3, v11, [I

    .line 291
    aget-byte v4, v0, v4

    const/4 v5, 0x6

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xea

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 292
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xeb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 293
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xec

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 294
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xed

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 295
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xee

    new-array v3, v11, [I

    const/16 v4, 0xa

    add-int/lit8 v4, p2, 0xa

    .line 296
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_1d
    add-int/lit8 v2, p2, 0x2

    .line 297
    aget-byte v2, v0, v2

    if-eq v2, v11, :cond_1f

    if-eq v2, v13, :cond_1e

    goto/16 :goto_37

    :cond_1e
    const/16 v2, 0xe2

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 298
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 299
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 300
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v3, v11, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 301
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_1f
    const/16 v2, 0xd9

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 302
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 303
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 304
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x9

    .line 305
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xa

    .line 306
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xc

    .line 307
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xe

    .line 308
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0xf

    .line 309
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x10

    aget-byte v5, v0, v5

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x11

    .line 310
    aget-byte v4, v0, v4

    shl-int/2addr v4, v14

    and-int v4, v4, v17

    const/16 v5, 0x12

    add-int/lit8 v5, p2, 0x12

    aget-byte v0, v0, v5

    and-int/2addr v0, v9

    or-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_20
    add-int/lit8 v2, p2, 0x2

    .line 311
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    if-eq v2, v11, :cond_24

    if-eq v2, v7, :cond_23

    if-eq v2, v14, :cond_22

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_21

    goto/16 :goto_37

    :cond_21
    const/16 v2, 0x141

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 312
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x142

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 313
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x143

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 314
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x144

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 315
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x145

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 316
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x146

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 317
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_22
    add-int/lit8 v2, p2, 0x3

    .line 318
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x4

    .line 319
    aget-byte v0, v0, v3

    const/16 v3, 0x21c

    .line 320
    invoke-static {v2, v0, v11, v3}, Lk0/qt;->i(IIZI)V

    .line 321
    iput-boolean v11, v1, Lk0/d1;->o:Z

    goto/16 :goto_37

    :cond_23
    add-int/lit8 v2, p2, 0x4

    .line 322
    aget-byte v2, v0, v2

    shl-int/2addr v2, v14

    and-int v2, v2, v17

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    and-int/2addr v0, v9

    or-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    const/16 v2, 0x407

    new-array v3, v11, [I

    aput v0, v3, v10

    .line 323
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 324
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v13, [I

    aput v11, v3, v10

    aput v0, v3, v11

    const/16 v0, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_24
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 325
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_25

    add-int/lit8 v2, p2, 0x3

    .line 326
    aget-byte v3, v0, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v11

    aget-byte v2, v0, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v11

    invoke-static {v3, v2, v10}, Ll0/c0;->b(III)V

    goto :goto_4

    :cond_25
    add-int/lit8 v2, p2, 0x3

    .line 327
    aget-byte v3, v0, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v11

    aget-byte v2, v0, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v11

    invoke-static {v3, v2, v10}, Ll0/c0;->a(III)V

    .line 328
    :goto_4
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v13, [I

    const/16 v4, 0xb

    aput v4, v3, v10

    add-int/lit8 v4, p2, 0x3

    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v11

    const/16 v0, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_37

    .line 329
    :cond_26
    sget v2, Lk0/nt;->a:I

    const v3, 0x99003d

    if-eq v2, v3, :cond_27

    goto/16 :goto_37

    :cond_27
    const-string v2, "persist.fyt.reversetemp"

    .line 330
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2a

    add-int/lit8 v2, p2, 0x2

    .line 331
    aget-byte v3, v0, v2

    and-int/2addr v3, v9

    const/16 v5, 0xa

    if-ge v3, v5, :cond_28

    new-array v2, v11, [I

    const/4 v3, -0x1

    aput v3, v2, v10

    const/16 v3, 0x1c

    .line 332
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_28
    const/16 v3, 0x1c

    new-array v5, v11, [I

    .line 333
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    aput v2, v5, v10

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x3

    .line 334
    aget-byte v3, v0, v2

    and-int/2addr v3, v9

    const/16 v5, 0xa

    if-ge v3, v5, :cond_29

    new-array v2, v11, [I

    const/4 v3, -0x1

    aput v3, v2, v10

    const/16 v3, 0x1b

    .line 335
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_29
    const/16 v3, 0x1b

    new-array v5, v11, [I

    .line 336
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    aput v2, v5, v10

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2a
    const/16 v3, 0x1b

    add-int/lit8 v2, p2, 0x2

    .line 337
    aget-byte v5, v0, v2

    and-int/2addr v5, v9

    const/16 v12, 0xa

    if-ge v5, v12, :cond_2b

    new-array v2, v11, [I

    const/4 v5, -0x1

    aput v5, v2, v10

    .line 338
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_2b
    new-array v5, v11, [I

    .line 339
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    aput v2, v5, v10

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x3

    .line 340
    aget-byte v3, v0, v2

    and-int/2addr v3, v9

    const/16 v5, 0xa

    if-ge v3, v5, :cond_2c

    new-array v2, v11, [I

    const/4 v3, -0x1

    aput v3, v2, v10

    const/16 v3, 0x1c

    .line 341
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2c
    const/16 v3, 0x1c

    new-array v5, v11, [I

    .line 342
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    aput v2, v5, v10

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x15

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 343
    aget-byte v12, v0, v5

    shr-int/2addr v12, v10

    const/16 v14, 0xf

    and-int/2addr v12, v14

    aput v12, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 344
    aget-byte v2, v0, v5

    shr-int/2addr v2, v8

    and-int/2addr v2, v14

    packed-switch v2, :pswitch_data_8

    move v2, v10

    :goto_8
    move v3, v2

    :goto_9
    move v5, v3

    goto :goto_a

    :pswitch_30
    move v2, v11

    goto :goto_8

    :pswitch_31
    move v3, v10

    move v5, v3

    move v2, v11

    goto :goto_a

    :pswitch_32
    move v5, v10

    move v2, v11

    move v3, v2

    goto :goto_a

    :pswitch_33
    move v3, v10

    move v2, v11

    move v5, v2

    goto :goto_a

    :pswitch_34
    move v2, v10

    move v3, v2

    move v5, v11

    goto :goto_a

    :pswitch_35
    move v2, v10

    move v3, v11

    goto :goto_9

    :pswitch_36
    move v2, v10

    move v5, v2

    move v3, v11

    :goto_a
    new-array v8, v11, [I

    aput v2, v8, v10

    const/16 v2, 0x12

    .line 345
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v11, [I

    aput v3, v8, v10

    .line 346
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v5, v3, v10

    .line 347
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x6

    .line 348
    aget-byte v5, v0, v3

    shr-int/2addr v5, v10

    and-int/2addr v5, v11

    aput v5, v2, v10

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v4, v11, [I

    .line 349
    aget-byte v5, v0, v3

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v4, v11, [I

    .line 350
    aget-byte v5, v0, v3

    shr-int/2addr v5, v13

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 351
    aget-byte v4, v0, v3

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v2, v10

    const/16 v4, 0xf

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 352
    aget-byte v3, v0, v3

    const/4 v4, 0x6

    shr-int/2addr v3, v4

    and-int/2addr v3, v11

    aput v3, v2, v10

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0x7

    .line 353
    aget-byte v3, v0, v3

    shr-int/2addr v3, v10

    and-int/2addr v3, v7

    aput v3, v2, v10

    const/16 v3, 0xc

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 354
    aget-byte v0, v0, v2

    and-int/2addr v0, v9

    const/16 v2, 0xa

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x258

    .line 355
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_37

    :cond_2d
    const/16 v2, 0x84

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 356
    aget-byte v4, v0, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 357
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v11, [I

    .line 358
    aget-byte v5, v0, v4

    const/4 v14, 0x6

    shr-int/2addr v5, v14

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v11, [I

    .line 359
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v11, [I

    .line 360
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v11, [I

    .line 361
    aget-byte v5, v0, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v11, [I

    .line 362
    aget-byte v4, v0, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 363
    aget-byte v5, v0, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v11, [I

    .line 364
    aget-byte v5, v0, v4

    const/4 v7, 0x6

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v11, [I

    .line 365
    aget-byte v5, v0, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v11, [I

    .line 366
    aget-byte v4, v0, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 367
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 368
    :cond_2e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_2f
    const/16 v2, 0x13a

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 369
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13b

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 370
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13c

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 371
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 372
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13e

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 373
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13f

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 374
    aget-byte v4, v0, v4

    and-int/2addr v4, v9

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x140

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x8

    .line 375
    aget-byte v0, v0, v4

    const/16 v4, 0xf

    and-int/2addr v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 376
    :cond_30
    iget-boolean v2, v1, Lk0/d1;->o:Z

    if-nez v2, :cond_86

    add-int/lit8 v2, p2, 0x2

    .line 377
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v0, v0, v3

    const/16 v3, 0x21c0

    invoke-static {v2, v0, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_37

    :cond_31
    add-int/lit8 v2, p2, 0x2

    .line 378
    aget-byte v2, v0, v2

    const/16 v3, 0x1f

    new-array v4, v11, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 379
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x20

    new-array v4, v11, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v7

    aput v2, v4, v10

    .line 380
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5d

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 381
    aget-byte v5, v0, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5e

    new-array v3, v11, [I

    .line 382
    aget-byte v0, v0, v4

    shr-int/2addr v0, v10

    and-int/2addr v0, v7

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_32
    const/16 v2, 0x81

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 383
    aget-byte v0, v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_33
    const/16 v2, 0x83

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 384
    aget-byte v0, v0, v4

    and-int/2addr v0, v9

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    .line 385
    :cond_34
    sget v2, Lk0/nt;->a:I

    const v3, 0x99003d

    if-ne v2, v3, :cond_35

    goto/16 :goto_37

    :cond_35
    add-int/lit8 v2, p2, 0x2

    .line 386
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 387
    aget-byte v3, v0, v3

    add-int/lit8 v5, p2, 0x6

    .line 388
    aget-byte v5, v0, v5

    new-array v4, v11, [I

    shr-int/lit8 v18, v2, 0x7

    and-int/lit8 v18, v18, 0x1

    aput v18, v4, v10

    const/16 v6, 0xa

    .line 389
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xb

    new-array v6, v11, [I

    shr-int/lit8 v19, v2, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v6, v10

    .line 390
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v11

    aput v6, v4, v10

    const/16 v6, 0xc

    .line 391
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v11

    aput v6, v4, v10

    .line 392
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x36

    new-array v6, v11, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v11

    aput v15, v6, v10

    .line 393
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    .line 394
    sget v4, Lk0/nt;->c:I

    const/16 v6, 0x52

    if-eq v4, v6, :cond_37

    packed-switch v4, :pswitch_data_9

    shr-int/lit8 v4, v3, 0x4

    and-int/2addr v4, v11

    if-nez v4, :cond_36

    const/16 v4, 0x15

    new-array v6, v11, [I

    and-int/2addr v2, v12

    aput v2, v6, v10

    .line 395
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_36
    if-ne v4, v11, :cond_3d

    const/16 v4, 0x15

    new-array v6, v11, [I

    and-int/2addr v2, v12

    add-int/2addr v2, v14

    aput v2, v6, v10

    .line 396
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_37
    :pswitch_37
    shr-int/lit8 v4, v3, 0x4

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_38

    goto :goto_b

    :cond_38
    move v14, v10

    :goto_b
    add-int/lit8 v4, p2, 0x9

    .line 397
    aget-byte v4, v0, v4

    const/16 v6, 0xf

    and-int/2addr v4, v6

    if-eq v4, v11, :cond_3c

    if-eq v4, v13, :cond_3b

    if-eq v4, v7, :cond_3a

    if-eq v4, v8, :cond_39

    goto :goto_c

    :cond_39
    const/16 v14, 0xc

    goto :goto_c

    :cond_3a
    const/16 v4, 0xb

    move v14, v4

    goto :goto_c

    :cond_3b
    const/16 v14, 0xa

    goto :goto_c

    :cond_3c
    move/from16 v14, v16

    :goto_c
    add-int/2addr v14, v12

    and-int/2addr v2, v14

    const/16 v4, 0x15

    new-array v6, v11, [I

    aput v2, v6, v10

    .line 398
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :cond_3d
    :goto_d
    and-int/lit8 v2, v3, 0xf

    and-int/2addr v2, v9

    packed-switch v2, :pswitch_data_a

    move v4, v10

    move v6, v4

    move v7, v6

    :goto_e
    move v13, v7

    :goto_f
    move v14, v13

    goto/16 :goto_10

    :pswitch_38
    move v4, v10

    move v6, v4

    move v7, v11

    goto :goto_e

    :pswitch_39
    move v4, v10

    move v6, v4

    move v13, v6

    move v7, v11

    move v14, v7

    goto :goto_10

    :pswitch_3a
    move v4, v10

    move v6, v4

    move v13, v6

    move v14, v13

    move v7, v11

    goto :goto_10

    :pswitch_3b
    move v4, v10

    move v6, v4

    move v14, v6

    move v7, v11

    move v13, v7

    goto :goto_10

    :pswitch_3c
    move v4, v10

    move v6, v4

    move v7, v6

    move v14, v7

    move v13, v11

    goto :goto_10

    :pswitch_3d
    move v4, v10

    move v6, v4

    move v7, v6

    move v13, v11

    goto :goto_f

    :pswitch_3e
    move v4, v10

    move v6, v4

    move v7, v6

    move v13, v7

    move v14, v11

    goto :goto_10

    :pswitch_3f
    move v4, v10

    move v7, v4

    move v13, v7

    move v14, v13

    move v6, v11

    goto :goto_10

    :pswitch_40
    move v6, v10

    move v7, v6

    move v13, v7

    move v14, v13

    move v4, v11

    :goto_10
    const/16 v15, 0x31

    new-array v12, v11, [I

    aput v4, v12, v10

    .line 399
    invoke-static {v15, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v12, v11, [I

    aput v6, v12, v10

    .line 400
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    new-array v4, v11, [I

    aput v7, v4, v10

    const/16 v6, 0x12

    .line 401
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v6, v11, [I

    aput v13, v6, v10

    .line 402
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x14

    new-array v6, v11, [I

    aput v14, v6, v10

    .line 403
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4d

    new-array v6, v11, [I

    aput v2, v6, v10

    .line 404
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 405
    aget-byte v4, v0, v2

    add-int/lit8 v6, p2, 0x5

    .line 406
    aget-byte v7, v0, v6

    const-string v12, "persist.fyt.reversetemp"

    .line 407
    invoke-static {v12, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3e

    .line 408
    aget-byte v4, v0, v6

    .line 409
    aget-byte v7, v0, v2

    :cond_3e
    and-int/lit16 v2, v4, 0xff

    if-eqz v2, :cond_3f

    if-eq v2, v9, :cond_40

    packed-switch v2, :pswitch_data_b

    if-lt v2, v11, :cond_41

    const/16 v4, 0x1c

    if-gt v2, v4, :cond_41

    new-array v4, v11, [I

    const/4 v6, 0x5

    mul-int/2addr v2, v6

    add-int/lit16 v2, v2, 0xa5

    aput v2, v4, v10

    const/16 v6, 0x1b

    .line 410
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :pswitch_41
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/16 v4, 0x140

    aput v4, v2, v10

    .line 411
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :pswitch_42
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/16 v4, 0x13b

    aput v4, v2, v10

    .line 412
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :pswitch_43
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/16 v4, 0x136

    aput v4, v2, v10

    .line 413
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :pswitch_44
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/16 v4, 0x9b

    aput v4, v2, v10

    .line 414
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :pswitch_45
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/16 v4, 0x96

    aput v4, v2, v10

    .line 415
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :pswitch_46
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/16 v4, 0xa5

    aput v4, v2, v10

    .line 416
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_3f
    :pswitch_47
    const/16 v6, 0x1b

    goto :goto_11

    :pswitch_48
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/16 v4, 0xa0

    aput v4, v2, v10

    .line 417
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_40
    const/16 v6, 0x1b

    new-array v2, v11, [I

    const/4 v4, -0x1

    aput v4, v2, v10

    .line 418
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :goto_11
    new-array v4, v11, [I

    aput v2, v4, v10

    .line 419
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    :cond_41
    :goto_12
    and-int/lit16 v2, v7, 0xff

    if-eqz v2, :cond_42

    if-eq v2, v9, :cond_43

    packed-switch v2, :pswitch_data_c

    if-lt v2, v11, :cond_44

    const/16 v4, 0x1c

    if-gt v2, v4, :cond_44

    new-array v6, v11, [I

    const/4 v7, 0x5

    mul-int/2addr v2, v7

    add-int/lit16 v2, v2, 0xa5

    aput v2, v6, v10

    .line 420
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :pswitch_49
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/16 v6, 0x140

    aput v6, v2, v10

    .line 421
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :pswitch_4a
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/16 v6, 0x13b

    aput v6, v2, v10

    .line 422
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :pswitch_4b
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/16 v6, 0x136

    aput v6, v2, v10

    .line 423
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :pswitch_4c
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/16 v6, 0x9b

    aput v6, v2, v10

    .line 424
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :pswitch_4d
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/16 v6, 0x96

    aput v6, v2, v10

    .line 425
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :pswitch_4e
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/16 v6, 0xa5

    aput v6, v2, v10

    .line 426
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_42
    :pswitch_4f
    const/16 v4, 0x1c

    goto :goto_13

    :pswitch_50
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/16 v6, 0xa0

    aput v6, v2, v10

    .line 427
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_43
    const/16 v4, 0x1c

    new-array v2, v11, [I

    const/4 v6, -0x1

    aput v6, v2, v10

    .line 428
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :goto_13
    new-array v6, v11, [I

    aput v2, v6, v10

    .line 429
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    :cond_44
    :goto_14
    const/16 v2, 0x1d

    new-array v4, v11, [I

    shr-int/lit8 v6, v5, 0x4

    const/16 v7, 0xf

    and-int/2addr v6, v7

    aput v6, v4, v10

    .line 430
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v11, [I

    and-int/2addr v5, v7

    aput v5, v4, v10

    .line 431
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 432
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_48

    add-int/lit8 v2, p2, 0x7

    .line 433
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    const-string v4, "persist.fyt.temperature"

    .line 434
    invoke-static {v4, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v11, :cond_46

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_45

    rsub-int v2, v2, 0x100

    const/16 v4, 0x12

    mul-int/2addr v2, v4

    rsub-int v2, v2, 0x528

    goto :goto_15

    :cond_45
    const/16 v4, 0x12

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x528

    :goto_15
    const/16 v4, 0xa

    .line 435
    div-int/2addr v2, v4

    mul-int/2addr v2, v4

    const/high16 v4, 0x10000000

    or-int/2addr v2, v4

    and-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_46
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_47

    rsub-int v2, v2, 0x100

    const/16 v4, 0xa

    mul-int/2addr v2, v4

    rsub-int v2, v2, 0x3e8

    goto :goto_16

    :cond_47
    const/16 v4, 0xa

    and-int/2addr v2, v9

    mul-int/2addr v2, v4

    add-int/lit16 v2, v2, 0x3e8

    .line 436
    :goto_16
    invoke-static {v2}, Lu0/d;->B3(I)V

    :cond_48
    const/16 v2, 0x39

    new-array v4, v11, [I

    const/4 v5, 0x5

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    aput v3, v4, v10

    .line 437
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 438
    aget-byte v3, v0, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_4a

    aget-byte v3, v0, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v11

    if-eq v3, v11, :cond_4a

    aget-byte v3, v0, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v11

    if-ne v3, v11, :cond_49

    goto :goto_17

    :cond_49
    new-array v3, v11, [I

    aput v10, v3, v10

    const/16 v4, 0xd

    .line 439
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_4a
    :goto_17
    const/16 v4, 0xd

    new-array v3, v11, [I

    aput v11, v3, v10

    .line 440
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_18
    add-int/lit8 v3, p2, 0x9

    .line 441
    aget-byte v4, v0, v3

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_4b

    const/16 v4, 0x25

    new-array v5, v11, [I

    .line 442
    aget-byte v3, v0, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v11

    aput v3, v5, v10

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_4b
    const/16 v3, 0x25

    new-array v4, v11, [I

    aput v10, v4, v10

    .line 443
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 444
    :goto_19
    iget v3, v1, Lk0/d1;->s:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_86

    .line 445
    aget-byte v0, v0, v2

    const/4 v2, 0x7

    shr-int/2addr v0, v2

    and-int/2addr v0, v11

    if-ne v0, v11, :cond_86

    .line 446
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    const/16 v0, 0x3e

    .line 447
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 448
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    .line 449
    :cond_4c
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const/4 v0, 0x6

    .line 450
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 451
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    .line 452
    :cond_4d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_79

    add-int/lit8 v2, p2, 0x2

    .line 453
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 454
    aget-byte v0, v0, v3

    and-int/2addr v2, v9

    .line 455
    iput v2, v1, Lk0/d1;->j:I

    .line 456
    sget v2, Lk0/nt;->c:I

    if-eq v2, v11, :cond_70

    if-ne v2, v13, :cond_4e

    goto/16 :goto_2e

    :cond_4e
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_66

    const/16 v3, 0x9d

    if-ne v2, v3, :cond_4f

    goto/16 :goto_27

    :cond_4f
    const/16 v3, 0x27

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x9c

    if-ne v2, v3, :cond_50

    goto/16 :goto_20

    :cond_50
    move v2, v10

    .line 457
    :goto_1a
    iget-object v3, v1, Lk0/d1;->k:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_52

    .line 458
    iget v4, v1, Lk0/d1;->j:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_51

    if-eqz v4, :cond_52

    .line 459
    iput v2, v1, Lk0/d1;->i:I

    goto :goto_1b

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 460
    :cond_52
    :goto_1b
    iget v4, v1, Lk0/d1;->j:I

    const/16 v5, 0x60

    if-eq v4, v5, :cond_59

    const/16 v5, 0x61

    if-eq v4, v5, :cond_86

    packed-switch v4, :pswitch_data_d

    and-int/2addr v0, v9

    if-ne v0, v11, :cond_53

    .line 461
    array-length v0, v3

    if-ge v2, v0, :cond_86

    .line 462
    aget-object v0, v3, v2

    aget v0, v0, v11

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_53
    if-nez v0, :cond_86

    .line 463
    iget v0, v1, Lk0/d1;->i:I

    array-length v2, v3

    if-ge v0, v2, :cond_54

    if-eq v0, v9, :cond_54

    .line 464
    aget-object v0, v3, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 465
    :cond_54
    iput v9, v1, Lk0/d1;->i:I

    goto/16 :goto_37

    :pswitch_51
    move v2, v10

    :goto_1c
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_55

    const/16 v3, 0x1e

    .line 466
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_55
    const/16 v0, 0x1e

    .line 467
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_52
    move v2, v10

    :goto_1d
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_56

    const/16 v3, 0x1f

    .line 468
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_56
    const/16 v0, 0x1f

    .line 469
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_53
    move v2, v10

    :goto_1e
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_57

    .line 470
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 471
    :cond_57
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_54
    move v2, v10

    :goto_1f
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_58

    const/4 v3, 0x7

    .line 472
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_58
    const/4 v3, 0x7

    .line 473
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    .line 474
    :cond_59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.syu.canbus"

    const-string v4, "com.syu.carinfo.rzc.klc.RzcKlcOnStarAct"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "onstar"

    const-string v3, "on"

    .line 477
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    :try_start_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_37

    :cond_5a
    :goto_20
    move v2, v10

    .line 480
    :goto_21
    iget-object v3, v1, Lk0/d1;->n:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_5c

    .line 481
    iget v4, v1, Lk0/d1;->j:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_5b

    if-eqz v4, :cond_5c

    .line 482
    iput v2, v1, Lk0/d1;->i:I

    goto :goto_22

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 483
    :cond_5c
    :goto_22
    iget v4, v1, Lk0/d1;->j:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_63

    packed-switch v4, :pswitch_data_e

    and-int/2addr v0, v9

    if-ne v0, v11, :cond_5d

    .line 484
    array-length v0, v3

    if-ge v2, v0, :cond_86

    .line 485
    aget-object v0, v3, v2

    aget v0, v0, v11

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_5d
    if-nez v0, :cond_86

    .line 486
    iget v0, v1, Lk0/d1;->i:I

    array-length v2, v3

    if-ge v0, v2, :cond_5e

    if-eq v0, v9, :cond_5e

    .line 487
    aget-object v0, v3, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 488
    :cond_5e
    iput v9, v1, Lk0/d1;->i:I

    goto/16 :goto_37

    :pswitch_55
    move v2, v10

    :goto_23
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_5f

    const/16 v3, 0x1e

    .line 489
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_5f
    const/16 v0, 0x1e

    .line 490
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_56
    move v2, v10

    :goto_24
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_60

    const/16 v3, 0x1f

    .line 491
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_60
    const/16 v0, 0x1f

    .line 492
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_57
    move v2, v10

    :goto_25
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_61

    .line 493
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 494
    :cond_61
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_58
    move v2, v10

    :goto_26
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_62

    const/4 v3, 0x7

    .line 495
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_62
    const/4 v3, 0x7

    .line 496
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_63
    and-int/2addr v0, v9

    if-ne v0, v11, :cond_86

    .line 497
    sget v0, Lh0/c;->E:I

    if-eq v0, v7, :cond_65

    if-eq v0, v8, :cond_64

    const/4 v2, 0x5

    if-eq v0, v2, :cond_65

    const/16 v0, 0xc

    .line 498
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 499
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_64
    const/16 v0, 0x12

    .line 500
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 501
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_65
    const/16 v0, 0x1a

    .line 502
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 503
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_66
    :goto_27
    move v2, v10

    .line 504
    :goto_28
    iget-object v3, v1, Lk0/d1;->l:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_68

    .line 505
    iget v4, v1, Lk0/d1;->j:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_67

    if-eqz v4, :cond_68

    .line 506
    iput v2, v1, Lk0/d1;->i:I

    goto :goto_29

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 507
    :cond_68
    :goto_29
    iget v4, v1, Lk0/d1;->j:I

    const/16 v5, 0x60

    if-eq v4, v5, :cond_6f

    const/16 v5, 0x61

    if-eq v4, v5, :cond_86

    packed-switch v4, :pswitch_data_f

    and-int/2addr v0, v9

    if-ne v0, v11, :cond_69

    .line 508
    array-length v0, v3

    if-ge v2, v0, :cond_86

    .line 509
    aget-object v0, v3, v2

    aget v0, v0, v11

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_69
    if-nez v0, :cond_86

    .line 510
    iget v0, v1, Lk0/d1;->i:I

    array-length v2, v3

    if-ge v0, v2, :cond_6a

    if-eq v0, v9, :cond_6a

    .line 511
    aget-object v0, v3, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 512
    :cond_6a
    iput v9, v1, Lk0/d1;->i:I

    goto/16 :goto_37

    :pswitch_59
    move v2, v10

    :goto_2a
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_6b

    const/16 v3, 0x1e

    .line 513
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_6b
    const/16 v0, 0x1e

    .line 514
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_5a
    move v2, v10

    :goto_2b
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_6c

    const/16 v3, 0x1f

    .line 515
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_6c
    const/16 v0, 0x1f

    .line 516
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_5b
    move v2, v10

    :goto_2c
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_6d

    .line 517
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 518
    :cond_6d
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_5c
    move v2, v10

    :goto_2d
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_6e

    const/4 v3, 0x7

    .line 519
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_6e
    const/4 v3, 0x7

    .line 520
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    .line 521
    :cond_6f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 522
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.syu.canbus"

    const-string v4, "com.syu.carinfo.rzc.klc.RzcKlcOnStarAct"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "onstar"

    const-string v3, "on"

    .line 524
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 526
    :try_start_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_37

    :cond_70
    :goto_2e
    move v2, v10

    .line 527
    :goto_2f
    iget-object v3, v1, Lk0/d1;->m:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_72

    .line 528
    iget v4, v1, Lk0/d1;->j:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_71

    if-eqz v4, :cond_72

    .line 529
    iput v2, v1, Lk0/d1;->i:I

    goto :goto_30

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 530
    :cond_72
    :goto_30
    iget v4, v1, Lk0/d1;->j:I

    packed-switch v4, :pswitch_data_10

    and-int/2addr v0, v9

    if-ne v0, v11, :cond_77

    .line 531
    array-length v0, v3

    if-ge v2, v0, :cond_86

    .line 532
    aget-object v0, v3, v2

    aget v0, v0, v11

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_5d
    move v2, v10

    :goto_31
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_73

    const/16 v3, 0x1e

    .line 533
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_73
    const/16 v0, 0x1e

    .line 534
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_5e
    move v2, v10

    :goto_32
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_74

    const/16 v3, 0x1f

    .line 535
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_74
    const/16 v0, 0x1f

    .line 536
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_5f
    move v2, v10

    :goto_33
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_75

    .line 537
    invoke-static {v14, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 538
    :cond_75
    invoke-static {v14, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_60
    move v2, v10

    :goto_34
    and-int/lit16 v3, v0, 0xff

    if-ge v2, v3, :cond_76

    const/4 v3, 0x7

    .line 539
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_76
    const/4 v3, 0x7

    .line 540
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :cond_77
    if-nez v0, :cond_86

    .line 541
    iget v0, v1, Lk0/d1;->i:I

    array-length v2, v3

    if-ge v0, v2, :cond_78

    if-eq v0, v9, :cond_78

    .line 542
    aget-object v0, v3, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 543
    :cond_78
    iput v9, v1, Lk0/d1;->i:I

    goto/16 :goto_37

    :cond_79
    add-int/lit8 v2, p2, 0x2

    .line 544
    aget-byte v2, v0, v2

    and-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x3

    .line 545
    aget-byte v0, v0, v3

    and-int/2addr v0, v9

    if-ne v0, v11, :cond_86

    if-ne v2, v8, :cond_86

    .line 546
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_37

    .line 547
    :cond_7a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_86

    add-int/lit8 v2, p2, 0x2

    .line 548
    aget-byte v2, v0, v2

    add-int/lit8 v3, p2, 0x3

    .line 549
    aget-byte v0, v0, v3

    or-int/lit16 v2, v2, 0x80

    and-int/2addr v2, v9

    .line 550
    iput v2, v1, Lk0/d1;->j:I

    move v2, v10

    .line 551
    :goto_35
    iget-object v3, v1, Lk0/d1;->k:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_7c

    .line 552
    iget v4, v1, Lk0/d1;->j:I

    aget-object v5, v3, v2

    aget v5, v5, v10

    if-ne v4, v5, :cond_7b

    if-eqz v4, :cond_7c

    .line 553
    iput v2, v1, Lk0/d1;->i:I

    goto :goto_36

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 554
    :cond_7c
    :goto_36
    iget v4, v1, Lk0/d1;->j:I

    packed-switch v4, :pswitch_data_11

    and-int/2addr v0, v9

    if-eqz v0, :cond_84

    .line 555
    array-length v0, v3

    if-ge v2, v0, :cond_86

    .line 556
    aget-object v0, v3, v2

    aget v0, v0, v11

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_61
    and-int/2addr v0, v9

    if-ne v0, v11, :cond_86

    .line 557
    invoke-virtual/range {p0 .. p0}, Lk0/d1;->i3()V

    goto/16 :goto_37

    .line 558
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Lk0/d1;->h3()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.rzc.andra.GmAndraCarinfoIndexAct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    const/16 v2, 0xc7

    new-array v3, v11, [I

    aput v0, v3, v10

    .line 559
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_7d
    and-int/2addr v0, v9

    if-ne v0, v11, :cond_86

    const/16 v0, 0x23

    .line 560
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 561
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    .line 562
    :pswitch_63
    invoke-virtual/range {p0 .. p0}, Lk0/d1;->h3()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.rzc.andra.GmAndraCarinfoIndexAct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    const/16 v2, 0xc6

    new-array v3, v11, [I

    aput v0, v3, v10

    .line 563
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_37

    :cond_7e
    and-int/2addr v0, v9

    if-ne v0, v11, :cond_86

    const/16 v0, 0x22

    .line 564
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 565
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_37

    :pswitch_64
    and-int/2addr v0, v9

    if-ne v0, v11, :cond_86

    .line 566
    sget v0, Lh0/c;->E:I

    if-eq v0, v7, :cond_81

    if-eq v0, v8, :cond_80

    const/4 v2, 0x5

    if-eq v0, v2, :cond_81

    .line 567
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->r3()Z

    move-result v0

    if-eqz v0, :cond_7f

    const/16 v0, 0x1a

    .line 568
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 569
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_37

    :cond_7f
    const/16 v0, 0xc

    .line 570
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 571
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_37

    :cond_80
    const/16 v0, 0x12

    .line 572
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 573
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_37

    :cond_81
    const/16 v0, 0x1a

    .line 574
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 575
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_37

    :pswitch_65
    and-int/2addr v0, v9

    if-ne v0, v11, :cond_86

    .line 576
    sget v0, Lh0/c;->E:I

    if-eq v0, v8, :cond_83

    .line 577
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->r3()Z

    move-result v0

    if-eqz v0, :cond_82

    const/16 v0, 0x12

    .line 578
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 579
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_37

    :cond_82
    const/16 v0, 0xd

    .line 580
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 581
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_37

    :cond_83
    const/16 v0, 0x12

    .line 582
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 583
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_37

    .line 584
    :cond_84
    iget v0, v1, Lk0/d1;->i:I

    array-length v2, v3

    if-ge v0, v2, :cond_85

    if-eq v0, v9, :cond_85

    .line 585
    aget-object v0, v3, v0

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    .line 586
    :cond_85
    iput v9, v1, Lk0/d1;->i:I

    :catch_1
    :cond_86
    :goto_37
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_4
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
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x10
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x78
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1d
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x17
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x17
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x17
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x17
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x86
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/d1;->x:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/d1;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/d1;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/d1;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/d1;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/d1;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/d1;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/d1;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/d1;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/d1;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x15f

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
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x5

    const/16 v4, 0xe3

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v1, v8, :cond_7

    const/16 v10, 0x31

    const/16 v11, 0x7d

    const/16 v12, 0xef

    const/16 v13, 0xb

    const/4 v15, 0x7

    const/16 v14, 0x9

    const/16 v16, 0x6

    const/16 v17, 0x8

    if-eq v1, v10, :cond_6

    const/16 v10, 0x3eb

    if-eq v1, v10, :cond_4

    const/16 v10, 0x405

    const/16 v18, 0x98

    if-eq v1, v10, :cond_2

    const/16 v10, 0x90

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    if-eqz v2, :cond_9

    .line 1
    array-length v1, v2

    if-lez v1, :cond_9

    .line 2
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/d1;->j3(I)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz v2, :cond_9

    .line 3
    array-length v1, v2

    if-lez v1, :cond_9

    .line 4
    aget v1, v2, v9

    iput v1, v0, Lk0/d1;->v:I

    goto/16 :goto_0

    :pswitch_2
    if-eqz v2, :cond_9

    .line 5
    array-length v1, v2

    if-lez v1, :cond_9

    .line 6
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/d1;->k3(I)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz v2, :cond_9

    .line 7
    array-length v1, v2

    if-lez v1, :cond_9

    new-array v1, v6, [I

    aput v4, v1, v9

    const/16 v3, 0x87

    aput v3, v1, v8

    aput v8, v1, v7

    .line 8
    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {v0, v2, v3}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v14, [I

    aput v4, v1, v9

    aput v18, v1, v8

    aput v16, v1, v7

    .line 10
    aget v4, v2, v9

    aput v4, v1, v5

    aget v4, v2, v8

    aput v4, v1, v6

    aget v4, v2, v7

    aput v4, v1, v3

    aget v3, v2, v5

    aput v3, v1, v16

    aget v2, v2, v6

    aput v2, v1, v15

    aput v9, v1, v17

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 11
    :pswitch_5
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [I

    aput v4, v1, v9

    const/16 v3, 0x8e

    aput v3, v1, v8

    aput v7, v1, v7

    .line 12
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :pswitch_6
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [I

    aput v4, v1, v9

    const/16 v3, 0x8d

    aput v3, v1, v8

    aput v7, v1, v7

    .line 14
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [I

    aput v4, v1, v9

    const/16 v3, 0x8b

    aput v3, v1, v8

    aput v7, v1, v7

    .line 16
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 17
    :pswitch_8
    invoke-virtual {v0, v2, v6}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v15, [I

    aput v4, v1, v9

    const/16 v4, 0x8a

    aput v4, v1, v8

    aput v6, v1, v7

    .line 18
    aget v4, v2, v9

    aput v4, v1, v5

    aget v4, v2, v8

    aput v4, v1, v6

    aget v4, v2, v7

    aput v4, v1, v3

    aget v2, v2, v5

    aput v2, v1, v16

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :pswitch_9
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [I

    aput v4, v1, v9

    aput v10, v1, v8

    aput v7, v1, v7

    .line 20
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :pswitch_a
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22
    aget v1, v2, v9

    const/16 v10, 0xe0

    if-ne v1, v7, :cond_1

    .line 23
    sget-object v1, Lk0/nt;->g:[I

    const/16 v11, 0x1b

    aget v1, v1, v11

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array v1, v3, [I

    aput v4, v1, v9

    aput v10, v1, v8

    aput v7, v1, v7

    .line 24
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array v1, v3, [I

    aput v4, v1, v9

    aput v10, v1, v8

    aput v7, v1, v7

    .line 25
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0xe

    new-array v1, v1, [I

    aput v4, v1, v9

    aput v12, v1, v8

    aput v13, v1, v7

    aput v11, v1, v5

    const/16 v4, 0xf2

    aput v4, v1, v6

    .line 26
    aget v4, v2, v9

    aput v4, v1, v3

    aget v3, v2, v8

    aput v3, v1, v16

    aget v3, v2, v7

    aput v3, v1, v15

    aget v3, v2, v5

    aput v3, v1, v17

    aget v2, v2, v6

    aput v2, v1, v14

    const/16 v2, 0xa

    aput v9, v1, v2

    aput v9, v1, v13

    const/16 v2, 0xc

    aput v9, v1, v2

    const/16 v2, 0xd

    aput v9, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :pswitch_c
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v6, [I

    aput v4, v1, v9

    aput v10, v1, v8

    aput v8, v1, v7

    .line 28
    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :pswitch_d
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v6, [I

    aput v4, v1, v9

    const/16 v3, 0x88

    aput v3, v1, v8

    aput v8, v1, v7

    .line 30
    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_e
    const/16 v1, 0x86

    const/16 v3, 0xa

    .line 31
    invoke-virtual {v0, v1, v3, v2}, Lk0/d1;->n3(IB[I)V

    goto/16 :goto_0

    .line 32
    :pswitch_f
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v6, [I

    aput v4, v1, v9

    const/16 v3, 0x85

    aput v3, v1, v8

    aput v8, v1, v7

    .line 33
    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 34
    :pswitch_10
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v6, [I

    aput v4, v1, v9

    const/16 v3, 0x84

    aput v3, v1, v8

    aput v8, v1, v7

    .line 35
    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 36
    :pswitch_11
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [I

    aput v4, v1, v9

    const/16 v3, 0x83

    aput v3, v1, v8

    aput v7, v1, v7

    .line 37
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 38
    :cond_2
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    aget v1, v2, v8

    mul-int/lit16 v1, v1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v10

    div-int/2addr v1, v10

    .line 40
    aget v10, v2, v7

    mul-int/lit16 v10, v10, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v11

    div-int/2addr v10, v11

    .line 41
    aget v11, v2, v9

    if-nez v11, :cond_3

    new-array v2, v14, [I

    aput v4, v2, v9

    aput v18, v2, v8

    aput v16, v2, v7

    aput v8, v2, v5

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v3

    shr-int/lit8 v1, v10, 0x8

    aput v1, v2, v16

    and-int/lit16 v1, v10, 0xff

    aput v1, v2, v15

    aput v9, v2, v17

    .line 42
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 43
    :cond_3
    aget v2, v2, v9

    if-ne v2, v8, :cond_9

    new-array v2, v14, [I

    aput v4, v2, v9

    aput v18, v2, v8

    aput v16, v2, v7

    aput v9, v2, v5

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v3

    shr-int/lit8 v1, v10, 0x8

    aput v1, v2, v16

    and-int/lit16 v1, v10, 0xff

    aput v1, v2, v15

    aput v9, v2, v17

    .line 44
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_4
    sget v1, Lu0/b;->o:I

    if-ne v1, v8, :cond_5

    new-array v1, v14, [I

    .line 46
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array v1, v14, [I

    .line 47
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 48
    :cond_6
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v13, [I

    aput v4, v1, v9

    aput v12, v1, v8

    aput v17, v1, v7

    aput v11, v1, v5

    const/16 v4, 0xf0

    aput v4, v1, v6

    .line 49
    aget v4, v2, v9

    aput v4, v1, v3

    aget v4, v2, v8

    aput v4, v1, v16

    aget v4, v2, v7

    aput v4, v1, v15

    aget v4, v2, v5

    aput v4, v1, v17

    aget v4, v2, v6

    aput v4, v1, v14

    aget v2, v2, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 50
    :cond_7
    sget v1, Lk0/nt;->c:I

    const/16 v10, 0x47

    if-eq v1, v10, :cond_8

    const/16 v10, 0x48

    if-eq v1, v10, :cond_8

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 51
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_9

    new-array v1, v3, [I

    aput v4, v1, v9

    const/16 v3, 0x82

    aput v3, v1, v8

    aput v7, v1, v7

    .line 52
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v8

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_8
    :pswitch_12
    new-array v1, v6, [I

    aput v4, v1, v9

    const/16 v3, 0xc6

    aput v3, v1, v8

    aput v8, v1, v7

    .line 53
    aget v2, v2, v9

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x57
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa0
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x99
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x99
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
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

.method public b([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    iget v1, p0, Lk0/d1;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/d1;->c:I

    .line 5
    iput v0, p0, Lk0/d1;->d:I

    .line 6
    iput v0, p0, Lk0/d1;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/d1;->b:[B

    iget v2, p0, Lk0/d1;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/d1;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/d1;->c:I

    .line 9
    iget p1, p0, Lk0/d1;->e:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/d1;->b:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lk0/d1;->e:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lk0/d1;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/d1;->b:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lk0/d1;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lk0/d1;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/d1;->d:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lk0/d1;->d:I

    .line 18
    :goto_1
    iput v0, p0, Lk0/d1;->e:I

    .line 19
    :cond_6
    iget p1, p0, Lk0/d1;->c:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/d1;->d:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lk0/d1;->b:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/d1;->e:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lk0/d1;->e:I

    .line 23
    iget v6, p0, Lk0/d1;->c:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/d1;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/d1;->e:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lk0/d1;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lk0/d1;->b:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lk0/d1;->d:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lk0/d1;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lk0/d1;->e:I

    iput v1, p0, Lk0/d1;->d:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lk0/d1;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/d1;->d:I

    .line 33
    :goto_4
    iput v0, p0, Lk0/d1;->e:I

    .line 34
    :cond_a
    iget v1, p0, Lk0/d1;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/d1;->d:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lk0/d1;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/d1;->c:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lk0/d1;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lk0/d1;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

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

.method public c3()V
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
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/4 v3, 0x1

    const/16 v5, 0xd

    aput v5, v1, v3

    const/4 v6, 0x2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lk0/d1;->d3()I

    move-result v7

    aput v7, v1, v6

    .line 3
    sget v6, Lu0/b;->D:I

    const/16 v7, 0x4f

    const/16 v8, 0xe

    const/16 v9, 0x4d

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0x45

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0xa

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const/16 v3, 0x57

    aput v3, v1, v13

    aput v12, v1, v14

    const/16 v3, 0x4c

    aput v3, v1, v18

    const/16 v3, 0x43

    aput v3, v1, v17

    aput v7, v1, v16

    aput v9, v1, v15

    aput v12, v1, v19

    goto/16 :goto_6

    .line 4
    :pswitch_1
    sget v3, Lu0/b;->s3:I

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v3, 0x3

    aput v9, v1, v3

    const/16 v3, 0x50

    aput v3, v1, v13

    const/16 v3, 0x33

    aput v3, v1, v14

    .line 5
    sget v3, Lu0/b;->r3:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 6
    rem-int/lit8 v6, v3, 0x64

    div-int/lit8 v6, v6, 0xa

    rem-int/lit16 v7, v3, 0x3e8

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    div-int/lit8 v7, v7, 0xa

    :goto_1
    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v18

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v17

    .line 7
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    .line 8
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v6, v3, 0x3c

    .line 9
    rem-int/lit8 v6, v6, 0x3c

    aput v4, v1, v15

    .line 10
    div-int/lit8 v7, v6, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v19

    .line 11
    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v11

    aput v4, v1, v10

    .line 12
    rem-int/lit8 v3, v3, 0x3c

    .line 13
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 14
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    goto/16 :goto_6

    :pswitch_2
    const/4 v6, 0x3

    const/16 v7, 0x54

    aput v7, v1, v6

    const/16 v6, 0x56

    aput v6, v1, v13

    aput v4, v1, v14

    .line 15
    sget v4, Ld1/d;->c:I

    if-ne v4, v3, :cond_c

    .line 16
    sget v4, Ld1/d;->e:I

    div-int/lit8 v6, v4, 0xa

    if-lez v6, :cond_3

    .line 17
    div-int/lit8 v6, v4, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v18

    .line 18
    :cond_3
    rem-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    const/16 v4, 0x2d

    aput v4, v1, v16

    .line 19
    sget v4, Ld1/d;->d:I

    div-int/lit8 v4, v4, 0x64

    .line 20
    div-int/lit16 v6, v4, 0x2710

    if-lez v6, :cond_4

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v15

    .line 21
    :cond_4
    rem-int/lit16 v6, v4, 0x2710

    div-int/lit16 v6, v6, 0x3e8

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v19

    .line 22
    rem-int/lit16 v6, v4, 0x3e8

    div-int/lit8 v6, v6, 0x64

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v11

    const/16 v6, 0x2e

    aput v6, v1, v10

    .line 23
    rem-int/lit8 v6, v4, 0x64

    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    .line 24
    rem-int/lit8 v4, v4, 0xa

    div-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v8

    goto/16 :goto_6

    :pswitch_3
    const/16 v3, 0x41

    aput v3, v1, v18

    const/16 v3, 0x55

    aput v3, v1, v17

    const/16 v3, 0x58

    aput v3, v1, v16

    goto/16 :goto_6

    .line 25
    :pswitch_4
    sget v6, Lo0/e;->C:I

    if-nez v6, :cond_5

    goto/16 :goto_6

    .line 26
    :cond_5
    sget v6, Lo0/e;->H:I

    if-ne v6, v3, :cond_6

    const/4 v3, 0x3

    const/16 v6, 0x44

    aput v6, v1, v3

    const/16 v3, 0x56

    aput v3, v1, v13

    const/16 v3, 0x44

    aput v3, v1, v14

    .line 27
    :cond_6
    sget v3, Lo0/e;->B:I

    rem-int/lit16 v3, v3, 0x3e8

    .line 28
    rem-int/lit8 v6, v3, 0x64

    div-int/lit8 v6, v6, 0xa

    rem-int/lit16 v7, v3, 0x3e8

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    div-int/lit8 v7, v7, 0xa

    :goto_2
    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v18

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v17

    .line 29
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v16

    .line 30
    sget v3, Lo0/e;->r:I

    div-int/lit8 v6, v3, 0x3c

    .line 31
    rem-int/lit8 v6, v6, 0x3c

    aput v4, v1, v15

    .line 32
    div-int/lit8 v7, v6, 0xa

    add-int/lit8 v7, v7, 0x30

    aput v7, v1, v19

    .line 33
    rem-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v11

    aput v4, v1, v10

    .line 34
    rem-int/lit8 v3, v3, 0x3c

    .line 35
    div-int/lit8 v4, v3, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v5

    .line 36
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v8

    goto/16 :goto_6

    :pswitch_5
    const/16 v3, 0x50

    aput v3, v1, v14

    const/16 v3, 0x48

    aput v3, v1, v18

    aput v7, v1, v17

    const/16 v3, 0x4e

    aput v3, v1, v16

    aput v12, v1, v15

    goto/16 :goto_6

    .line 37
    :pswitch_6
    sget v3, Lw0/d;->h:I

    const/high16 v6, 0x10000

    if-lt v3, v6, :cond_9

    const v6, 0x10002

    if-gt v3, v6, :cond_9

    .line 38
    sget v3, Lw0/d;->i:I

    div-int/lit16 v6, v3, 0x2710

    if-nez v6, :cond_8

    div-int/lit16 v6, v3, 0x2710

    add-int/2addr v6, v4

    goto :goto_3

    :cond_8
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v6, v4, 0x30

    :goto_3
    aput v6, v1, v18

    .line 39
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v17

    .line 40
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v16

    const/16 v4, 0x2e

    aput v4, v1, v15

    .line 41
    rem-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v19

    .line 42
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v11

    aput v9, v1, v10

    const/16 v3, 0x48

    aput v3, v1, v5

    const/16 v3, 0x7a

    aput v3, v1, v8

    goto :goto_6

    .line 43
    :cond_9
    sget v3, Lw0/d;->i:I

    div-int/lit16 v6, v3, 0x2710

    if-nez v6, :cond_a

    div-int/lit16 v6, v3, 0x2710

    add-int/2addr v6, v4

    goto :goto_4

    :cond_a
    div-int/lit16 v6, v3, 0x2710

    add-int/lit8 v6, v6, 0x30

    :goto_4
    aput v6, v1, v18

    .line 44
    rem-int/lit16 v6, v3, 0x2710

    div-int/lit16 v6, v6, 0x3e8

    if-nez v6, :cond_b

    rem-int/lit16 v6, v3, 0x2710

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v6, v4

    goto :goto_5

    :cond_b
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v6, v4, 0x30

    :goto_5
    aput v6, v1, v17

    .line 45
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v16

    .line 46
    rem-int/lit8 v4, v3, 0x64

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0x30

    aput v4, v1, v15

    .line 47
    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v19

    const/16 v3, 0x4b

    aput v3, v1, v11

    const/16 v3, 0x48

    aput v3, v1, v10

    const/16 v3, 0x7a

    aput v3, v1, v5

    goto :goto_6

    :pswitch_7
    const/16 v3, 0x57

    aput v3, v1, v13

    aput v12, v1, v14

    const/16 v3, 0x4c

    aput v3, v1, v18

    const/16 v3, 0x43

    aput v3, v1, v17

    aput v7, v1, v16

    aput v9, v1, v15

    aput v12, v1, v19

    :cond_c
    :goto_6
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_7
    if-ge v2, v0, :cond_d

    add-int/lit8 v4, v2, 0x1

    .line 48
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_7

    .line 49
    :cond_d
    invoke-static {v3}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public d3()I
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    move v1, v5

    goto :goto_3

    :cond_2
    const/4 v1, 0x7

    goto :goto_3

    .line 2
    :cond_3
    sget v0, Lo0/e;->H:I

    if-ne v0, v7, :cond_4

    goto :goto_3

    :cond_4
    if-ne v0, v6, :cond_5

    goto :goto_3

    :cond_5
    if-ne v0, v5, :cond_c

    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_3

    .line 3
    :cond_7
    sget v0, Lw0/d;->h:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_8

    :goto_0
    move v1, v7

    goto :goto_3

    :cond_8
    const v1, 0x10001

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    const v1, 0x10002

    if-ne v0, v1, :cond_a

    goto :goto_0

    :cond_a
    if-nez v0, :cond_b

    :goto_1
    move v1, v6

    goto :goto_3

    :cond_b
    if-ne v0, v7, :cond_c

    goto :goto_1

    :cond_c
    :goto_2
    move v1, v4

    :goto_3
    return v1
.end method

.method public e3()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xd

    if-ge v3, v4, :cond_0

    const/16 v4, 0x20

    .line 1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xc0

    aput v3, v1, v2

    const/4 v3, 0x1

    aput v4, v1, v3

    .line 2
    sget v4, Ly0/f;->i:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v4, v3, :cond_3

    sget v3, Ly0/f;->C0:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x56

    aput v4, v1, v7

    const/16 v4, 0x4f

    aput v4, v1, v6

    const/16 v4, 0x4c

    aput v4, v1, v5

    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    const/4 v5, 0x7

    .line 3
    div-int/lit8 v6, v3, 0xa

    add-int/lit8 v6, v6, 0x30

    aput v6, v1, v5

    :cond_2
    const/16 v5, 0x8

    .line 4
    rem-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    aput v3, v1, v5

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v3, 0x4d

    aput v3, v1, v7

    const/16 v3, 0x55

    aput v3, v1, v6

    const/16 v3, 0x54

    aput v3, v1, v5

    const/4 v3, 0x6

    const/16 v4, 0x45

    aput v4, v1, v3

    :goto_2
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 5
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_3

    .line 6
    :cond_4
    iput v7, p0, Lk0/d1;->z:I

    .line 7
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public final g3([BII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, v0, p2

    .line 1
    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p3
.end method

.method public h3()Ljava/lang/String;
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

.method public final i3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk0/d1;->h3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.rzc.andra.GmAndraCarinfoIndexAct"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 7
    invoke-static {v1, v0}, Ll0/b0;->l0(II)V

    const/4 v0, 0x1

    .line 8
    invoke-static {v1, v0}, Ll0/b0;->l0(II)V

    :goto_0
    return-void
.end method

.method public final j3(I)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x9

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0x2e

    aput-byte v4, v2, v3

    const/4 v5, 0x1

    const/16 v6, 0x33

    aput-byte v6, v2, v5

    const/4 v7, 0x2

    const/4 v8, 0x5

    aput-byte v8, v2, v7

    move/from16 v9, p1

    int-to-byte v9, v9

    const/4 v10, 0x3

    aput-byte v9, v2, v10

    .line 1
    iget-object v11, v0, Lk0/d1;->D:[I

    iget v12, v0, Lk0/d1;->E:I

    rem-int/2addr v12, v7

    aget v11, v11, v12

    int-to-byte v11, v11

    const/4 v12, 0x4

    aput-byte v11, v2, v12

    const/16 v11, 0x25

    aput-byte v11, v2, v8

    const/4 v13, 0x6

    aput-byte v3, v2, v13

    const/4 v14, 0x7

    const/16 v15, -0x56

    aput-byte v15, v2, v14

    const/16 v16, 0x8

    aput-byte v3, v2, v16

    invoke-static {v2}, Lk0/d1;->o3([B)V

    new-array v2, v1, [B

    aput-byte v4, v2, v3

    aput-byte v6, v2, v5

    aput-byte v8, v2, v7

    aput-byte v9, v2, v10

    .line 2
    iget-object v10, v0, Lk0/d1;->D:[I

    iget v5, v0, Lk0/d1;->E:I

    rem-int/2addr v5, v7

    aget v5, v10, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    aput-byte v11, v2, v8

    aput-byte v3, v2, v13

    aput-byte v15, v2, v14

    aput-byte v3, v2, v16

    invoke-static {v2}, Lk0/d1;->o3([B)V

    new-array v1, v1, [B

    aput-byte v4, v1, v3

    const/4 v2, 0x1

    aput-byte v6, v1, v2

    aput-byte v8, v1, v7

    const/4 v2, 0x3

    aput-byte v9, v1, v2

    .line 3
    iget-object v2, v0, Lk0/d1;->D:[I

    iget v4, v0, Lk0/d1;->E:I

    rem-int/2addr v4, v7

    aget v2, v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v12

    aput-byte v11, v1, v8

    aput-byte v3, v1, v13

    aput-byte v15, v1, v14

    aput-byte v3, v1, v16

    invoke-static {v1}, Lk0/d1;->o3([B)V

    .line 4
    iget v1, v0, Lk0/d1;->E:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/d1;->E:I

    .line 5
    rem-int/2addr v1, v7

    iput v1, v0, Lk0/d1;->E:I

    return-void
.end method

.method public final k3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/d1;->F:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xac

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/d1;->x:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/d1;->F:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/d1;->x:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3([BII)V
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

    const/16 p2, 0x76

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lk0/d1;->p:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iput-object p1, p0, Lk0/d1;->p:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final m3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x77

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const-string v1, "com.syu.carinfo.rzc.klc.RzcKlcOnStarAct"

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

    iget v3, p0, Lk0/d1;->g:I

    if-nez v3, :cond_5

    .line 3
    iput v0, p0, Lk0/d1;->g:I

    .line 4
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lk0/d1;->h:I

    .line 5
    sget p1, Lu0/b;->j:I

    if-eqz p1, :cond_1

    .line 6
    invoke-static {v2}, Lu0/d;->M(I)V

    .line 7
    :cond_1
    sget p1, Lu0/b;->D:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    iget p1, p0, Lk0/d1;->g:I

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

    if-eq p1, v0, :cond_3

    .line 11
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

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

    const-string v2, "com.syu.onstar.rzc.showpip"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/ContextWrapper;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 16
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

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
    iget p1, p0, Lk0/d1;->g:I

    if-nez p1, :cond_8

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 22
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_6
    iget p1, p0, Lk0/d1;->g:I

    if-ne p1, v0, :cond_7

    .line 24
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x6

    .line 25
    invoke-static {p1, v2}, Ll0/b0;->l0(II)V

    .line 26
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 27
    :cond_7
    iput v2, p0, Lk0/d1;->g:I

    .line 28
    iput v2, p0, Lk0/d1;->f:I

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

.method public final varargs n3(IB[I)V
    .locals 5

    const/16 p1, 0xd

    new-array p2, p1, [I

    const/16 v0, -0x1d

    const/4 v1, 0x0

    aput v0, p2, v1

    const/16 v0, -0x7a

    const/4 v2, 0x1

    aput v0, p2, v2

    const/4 v0, 0x2

    const/16 v2, 0xa

    aput v2, p2, v0

    .line 1
    array-length v0, p3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v2, :cond_1

    add-int/2addr v3, v0

    .line 2
    aget v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v2

    :goto_2
    if-ge v3, p1, :cond_2

    .line 3
    aput v1, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method
