.class public Lk0/ke;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static B:I = 0xff

.field public static C:I = 0xff

.field public static D:Ljava/lang/Runnable;


# instance fields
.field public A:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[[I

.field public k:I

.field public l:I

.field public m:[[I

.field public n:Z

.field public o:Lo1/o;

.field public p:Lo1/o;

.field public q:Lo1/o;

.field public r:Lo1/o;

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;

.field public x:J

.field public y:I

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk0/ke$d;

    invoke-direct {v0}, Lk0/ke$d;-><init>()V

    sput-object v0, Lk0/ke;->D:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xff

    .line 2
    iput v1, v0, Lk0/ke;->c:I

    .line 3
    iput v1, v0, Lk0/ke;->i:I

    const/16 v2, 0x6a

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v8, 0x4

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    const/4 v9, 0x5

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    const/4 v10, 0x6

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    const/4 v11, 0x7

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    const/16 v12, 0x8

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_9

    const/16 v13, 0x9

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_a

    const/16 v14, 0xa

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_b

    const/16 v15, 0xb

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_c

    const/16 v16, 0xc

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_d

    const/16 v17, 0xd

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v18, 0xe

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v19, 0xf

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v20, 0x10

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v21, 0x11

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v22, 0x12

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v23, 0x13

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v24, 0x14

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v25, 0x15

    aput-object v4, v2, v25

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

    new-array v4, v3, [I

    fill-array-data v4, :array_3b

    const/16 v25, 0x3b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    const/16 v25, 0x3c

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3d

    const/16 v25, 0x3d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3e

    const/16 v25, 0x3e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3f

    const/16 v25, 0x3f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_40

    const/16 v25, 0x40

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_41

    const/16 v25, 0x41

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_42

    const/16 v25, 0x42

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_43

    const/16 v25, 0x43

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_44

    const/16 v25, 0x44

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_45

    const/16 v25, 0x45

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_46

    const/16 v25, 0x46

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_47

    const/16 v25, 0x47

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_48

    const/16 v25, 0x48

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_49

    const/16 v25, 0x49

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_4a

    const/16 v25, 0x4a

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_4b

    const/16 v25, 0x4b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_4c

    const/16 v25, 0x4c

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_4d

    const/16 v25, 0x4d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_4e

    const/16 v25, 0x4e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_4f

    const/16 v25, 0x4f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_50

    const/16 v25, 0x50

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_51

    const/16 v25, 0x51

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_52

    const/16 v25, 0x52

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_53

    const/16 v25, 0x53

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_54

    const/16 v25, 0x54

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_55

    const/16 v25, 0x55

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_56

    const/16 v25, 0x56

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_57

    const/16 v25, 0x57

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_58

    const/16 v25, 0x58

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_59

    const/16 v25, 0x59

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5a

    const/16 v25, 0x5a

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5b

    const/16 v25, 0x5b

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5c

    const/16 v25, 0x5c

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5d

    const/16 v25, 0x5d

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5e

    const/16 v25, 0x5e

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_5f

    const/16 v25, 0x5f

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_60

    const/16 v25, 0x60

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_61

    const/16 v25, 0x61

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_62

    const/16 v25, 0x62

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_63

    const/16 v25, 0x63

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_64

    const/16 v25, 0x64

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_65

    const/16 v25, 0x65

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_66

    const/16 v25, 0x66

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_67

    const/16 v25, 0x67

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_68

    const/16 v25, 0x68

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_69

    const/16 v25, 0x69

    aput-object v4, v2, v25

    iput-object v2, v0, Lk0/ke;->j:[[I

    .line 5
    iput v1, v0, Lk0/ke;->l:I

    const/16 v1, 0x15

    new-array v1, v1, [[I

    new-array v2, v3, [I

    .line 6
    fill-array-data v2, :array_6a

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_6b

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_6c

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_6d

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_6e

    aput-object v2, v1, v8

    new-array v2, v3, [I

    fill-array-data v2, :array_6f

    aput-object v2, v1, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_70

    aput-object v2, v1, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_71

    aput-object v2, v1, v11

    new-array v2, v3, [I

    fill-array-data v2, :array_72

    aput-object v2, v1, v12

    new-array v2, v3, [I

    fill-array-data v2, :array_73

    aput-object v2, v1, v13

    new-array v2, v3, [I

    fill-array-data v2, :array_74

    aput-object v2, v1, v14

    new-array v2, v3, [I

    fill-array-data v2, :array_75

    aput-object v2, v1, v15

    new-array v2, v3, [I

    fill-array-data v2, :array_76

    aput-object v2, v1, v16

    new-array v2, v3, [I

    fill-array-data v2, :array_77

    aput-object v2, v1, v17

    new-array v2, v3, [I

    fill-array-data v2, :array_78

    aput-object v2, v1, v18

    new-array v2, v3, [I

    fill-array-data v2, :array_79

    aput-object v2, v1, v19

    new-array v2, v3, [I

    fill-array-data v2, :array_7a

    aput-object v2, v1, v20

    new-array v2, v3, [I

    fill-array-data v2, :array_7b

    aput-object v2, v1, v21

    new-array v2, v3, [I

    fill-array-data v2, :array_7c

    aput-object v2, v1, v22

    new-array v2, v3, [I

    fill-array-data v2, :array_7d

    aput-object v2, v1, v23

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    aput-object v2, v1, v24

    iput-object v1, v0, Lk0/ke;->m:[[I

    .line 7
    iput-boolean v6, v0, Lk0/ke;->n:Z

    .line 8
    iput v5, v0, Lk0/ke;->s:I

    .line 9
    new-instance v1, Lk0/ke$i;

    invoke-direct {v1, v0}, Lk0/ke$i;-><init>(Lk0/ke;)V

    iput-object v1, v0, Lk0/ke;->t:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Lk0/ke$j;

    invoke-direct {v1, v0}, Lk0/ke$j;-><init>(Lk0/ke;)V

    iput-object v1, v0, Lk0/ke;->u:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Lk0/ke$k;

    invoke-direct {v1, v0}, Lk0/ke$k;-><init>(Lk0/ke;)V

    iput-object v1, v0, Lk0/ke;->v:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lk0/ke$a;

    invoke-direct {v1, v0}, Lk0/ke$a;-><init>(Lk0/ke;)V

    iput-object v1, v0, Lk0/ke;->w:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 13
    iput-wide v1, v0, Lk0/ke;->x:J

    const/4 v1, -0x1

    .line 14
    iput v1, v0, Lk0/ke;->y:I

    .line 15
    new-instance v1, Lk0/ke$b;

    invoke-direct {v1, v0}, Lk0/ke$b;-><init>(Lk0/ke;)V

    iput-object v1, v0, Lk0/ke;->z:Ljava/lang/Runnable;

    .line 16
    new-instance v1, Lk0/ke$c;

    invoke-direct {v1, v0}, Lk0/ke$c;-><init>(Lk0/ke;)V

    iput-object v1, v0, Lk0/ke;->A:Ljava/lang/Runnable;

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
        0x5
        0x12
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x4
        0xd
    .end array-data

    :array_b
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_d
    .array-data 4
        0xf
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x10
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x20
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x21
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x65
        0x2
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_13
    .array-data 4
        0xe
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_17
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_18
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_19
    .array-data 4
        0x89
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x8a
        0x6
    .end array-data

    :array_1b
    .array-data 4
        0x8b
        0x37
    .end array-data

    :array_1c
    .array-data 4
        0x8c
        0x15
    .end array-data

    :array_1d
    .array-data 4
        0x8d
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0xc1
        0x19
    .end array-data

    :array_1f
    .array-data 4
        0xc2
        0x3
    .end array-data

    :array_20
    .array-data 4
        0xc3
        0x4
    .end array-data

    :array_21
    .array-data 4
        0xc4
        0x1d
    .end array-data

    :array_22
    .array-data 4
        0xc5
        0x49
    .end array-data

    :array_23
    .array-data 4
        0xc6
        0x6
    .end array-data

    :array_24
    .array-data 4
        0xc7
        0x15
    .end array-data

    :array_25
    .array-data 4
        0xc8
        0x36
    .end array-data

    :array_26
    .array-data 4
        0xc9
        0xc
    .end array-data

    :array_27
    .array-data 4
        0xca
        0x28
    .end array-data

    :array_28
    .array-data 4
        0xcb
        0x29
    .end array-data

    :array_29
    .array-data 4
        0xcc
        0x2a
    .end array-data

    :array_2a
    .array-data 4
        0xcd
        0x2b
    .end array-data

    :array_2b
    .array-data 4
        0xce
        0x2c
    .end array-data

    :array_2c
    .array-data 4
        0xcf
        0x2d
    .end array-data

    :array_2d
    .array-data 4
        0xd0
        0x10
    .end array-data

    :array_2e
    .array-data 4
        0xd1
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0xd2
        0x1
    .end array-data

    :array_30
    .array-data 4
        0xd3
        0x38
    .end array-data

    :array_31
    .array-data 4
        0xd4
        0x26
    .end array-data

    :array_32
    .array-data 4
        0xd5
        0x6
    .end array-data

    :array_33
    .array-data 4
        0xd6
        0x26
    .end array-data

    :array_34
    .array-data 4
        0xd7
        0x7
    .end array-data

    :array_35
    .array-data 4
        0xd8
        0x8
    .end array-data

    :array_36
    .array-data 4
        0xd9
        0x3
    .end array-data

    :array_37
    .array-data 4
        0xda
        0x4
    .end array-data

    :array_38
    .array-data 4
        0xdb
        0x20
    .end array-data

    :array_39
    .array-data 4
        0xdc
        0x21
    .end array-data

    :array_3a
    .array-data 4
        0xdd
        0x20
    .end array-data

    :array_3b
    .array-data 4
        0xde
        0x21
    .end array-data

    :array_3c
    .array-data 4
        0xdf
        0x35
    .end array-data

    :array_3d
    .array-data 4
        0xe0
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0xe1
        0x1d
    .end array-data

    :array_3f
    .array-data 4
        0xe2
        0x4d
    .end array-data

    :array_40
    .array-data 4
        0xe3
        0x15
    .end array-data

    :array_41
    .array-data 4
        0xe4
        0x36
    .end array-data

    :array_42
    .array-data 4
        0xe5
        0x1
    .end array-data

    :array_43
    .array-data 4
        0xe6
        0x49
    .end array-data

    :array_44
    .array-data 4
        0xe7
        0x37
    .end array-data

    :array_45
    .array-data 4
        0xe8
        0x12
    .end array-data

    :array_46
    .array-data 4
        0xe9
        0x4e
    .end array-data

    :array_47
    .array-data 4
        0xea
        0x1d
    .end array-data

    :array_48
    .array-data 4
        0xeb
        0x5
    .end array-data

    :array_49
    .array-data 4
        0xec
        0x2
    .end array-data

    :array_4a
    .array-data 4
        0xed
        0x36
    .end array-data

    :array_4b
    .array-data 4
        0xee
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0xef
        0x5
    .end array-data

    :array_4d
    .array-data 4
        0xf0
        0x4c
    .end array-data

    :array_4e
    .array-data 4
        0xf1
        0x19
    .end array-data

    :array_4f
    .array-data 4
        0xf2
        0x4e
    .end array-data

    :array_50
    .array-data 4
        0xf3
        0x15
    .end array-data

    :array_51
    .array-data 4
        0xf4
        0x1a
    .end array-data

    :array_52
    .array-data 4
        0xf5
        0x12
    .end array-data

    :array_53
    .array-data 4
        0xf6
        0x40
    .end array-data

    :array_54
    .array-data 4
        0xf7
        0x37
    .end array-data

    :array_55
    .array-data 4
        0xf8
        0x12
    .end array-data

    :array_56
    .array-data 4
        0xf9
        0x2
    .end array-data

    :array_57
    .array-data 4
        0xfa
        0x49
    .end array-data

    :array_58
    .array-data 4
        0xfb
        0x1
    .end array-data

    :array_59
    .array-data 4
        0xfc
        0x37
    .end array-data

    :array_5a
    .array-data 4
        0xfd
        0x36
    .end array-data

    :array_5b
    .array-data 4
        0xfe
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0xff
        0xd
    .end array-data

    :array_5d
    .array-data 4
        0x100
        0x21
    .end array-data

    :array_5e
    .array-data 4
        0x101
        0x20
    .end array-data

    :array_5f
    .array-data 4
        0x102
        0x26
    .end array-data

    :array_60
    .array-data 4
        0x103
        0x40
    .end array-data

    :array_61
    .array-data 4
        0x105
        0x7
    .end array-data

    :array_62
    .array-data 4
        0x106
        0x8
    .end array-data

    :array_63
    .array-data 4
        0x107
        0x4a
    .end array-data

    :array_64
    .array-data 4
        0x108
        0x4b
    .end array-data

    :array_65
    .array-data 4
        0x10b
        0x15
    .end array-data

    :array_66
    .array-data 4
        0x10c
        0x12
    .end array-data

    :array_67
    .array-data 4
        0x10d
        0x1b
    .end array-data

    :array_68
    .array-data 4
        0x10e
        0x1c
    .end array-data

    :array_69
    .array-data 4
        0x11e
        0x1
    .end array-data

    :array_6a
    .array-data 4
        0x1
        0x36
    .end array-data

    :array_6b
    .array-data 4
        0x2
        0x37
    .end array-data

    :array_6c
    .array-data 4
        0x3
        0x22
    .end array-data

    :array_6d
    .array-data 4
        0x4
        0x23
    .end array-data

    :array_6e
    .array-data 4
        0x5
        0x20
    .end array-data

    :array_6f
    .array-data 4
        0x6
        0x21
    .end array-data

    :array_70
    .array-data 4
        0x7
        0x6
    .end array-data

    :array_71
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_72
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_73
    .array-data 4
        0xa
        0x12
    .end array-data

    :array_74
    .array-data 4
        0xb
        0x1a
    .end array-data

    :array_75
    .array-data 4
        0xc
        0x19
    .end array-data

    :array_76
    .array-data 4
        0xd
        0x2
    .end array-data

    :array_77
    .array-data 4
        0xe
        0x26
    .end array-data

    :array_78
    .array-data 4
        0xf
        0x15
    .end array-data

    :array_79
    .array-data 4
        0x10
        0x5
    .end array-data

    :array_7a
    .array-data 4
        0x11
        0xc
    .end array-data

    :array_7b
    .array-data 4
        0x12
        0x26
    .end array-data

    :array_7c
    .array-data 4
        0x13
        -0x1
    .end array-data

    :array_7d
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_7e
    .array-data 4
        0x15
        0x8
    .end array-data
.end method

.method public static a3()V
    .locals 17

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
    const/16 v3, 0xd

    aput v3, v1, v2

    const/16 v3, 0x91

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 2
    invoke-static {}, Lk0/ke;->b3()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v1, v6

    .line 3
    sget v3, Lu0/b;->f:I

    if-ne v3, v5, :cond_a

    .line 4
    sget v3, Lu0/b;->D:I

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/16 v12, 0xa

    const/16 v13, 0x30

    if-eq v3, v5, :cond_5

    const/16 v5, 0xb

    const/16 v6, 0x3a

    const/16 v14, 0x3e7

    const/4 v15, 0x5

    const/16 v16, 0x39

    if-eq v3, v10, :cond_3

    if-eq v3, v9, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    sget v3, Lu0/b;->r3:I

    if-gt v3, v14, :cond_2

    .line 6
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 7
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 8
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_1

    :cond_2
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_1
    aput v4, v1, v8

    .line 9
    sget v3, Lu0/b;->t3:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 10
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 11
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 12
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    .line 13
    :cond_3
    sget v3, Lo0/e;->B:I

    if-gt v3, v14, :cond_4

    .line 14
    div-int/lit8 v14, v3, 0x64

    div-int/lit8 v14, v3, 0x64

    add-int/2addr v14, v13

    aput v14, v1, v10

    .line 15
    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    rem-int/lit8 v10, v3, 0x64

    div-int/2addr v10, v12

    add-int/2addr v10, v13

    aput v10, v1, v15

    .line 16
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v11

    goto :goto_2

    :cond_4
    aput v16, v1, v10

    aput v16, v1, v15

    aput v16, v1, v11

    :goto_2
    aput v4, v1, v8

    .line 17
    sget v3, Lo0/e;->r:I

    div-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 18
    div-int/lit8 v4, v3, 0x3c

    rem-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v7

    aput v6, v1, v12

    .line 19
    rem-int/lit8 v4, v3, 0x3c

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v5

    const/16 v4, 0xc

    .line 20
    rem-int/lit8 v3, v3, 0x3c

    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v4

    goto/16 :goto_5

    :cond_5
    const/4 v3, 0x3

    aput v13, v1, v3

    .line 21
    sget v3, Lw0/d;->j:I

    and-int/lit16 v3, v3, 0xff

    rem-int/2addr v3, v11

    add-int/2addr v3, v5

    add-int/2addr v3, v13

    aput v3, v1, v10

    .line 22
    sget v3, Lw0/d;->h:I

    const/high16 v10, 0x10000

    sub-int v14, v3, v10

    if-eqz v14, :cond_8

    sub-int v14, v3, v10

    if-eq v5, v14, :cond_8

    sub-int/2addr v3, v10

    if-ne v6, v3, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    sget v3, Lw0/d;->i:I

    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    if-ne v4, v5, :cond_7

    .line 24
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v11

    .line 25
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 26
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 27
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    :cond_7
    aput v13, v1, v11

    .line 28
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 29
    rem-int/lit8 v4, v3, 0x64

    div-int/2addr v4, v12

    add-int/2addr v4, v13

    aput v4, v1, v9

    .line 30
    rem-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v7

    goto :goto_5

    .line 31
    :cond_8
    :goto_3
    sget v3, Lw0/d;->i:I

    div-int/lit16 v5, v3, 0x2710

    if-nez v5, :cond_9

    div-int/lit16 v5, v3, 0x2710

    add-int/2addr v5, v4

    goto :goto_4

    :cond_9
    div-int/lit16 v4, v3, 0x2710

    add-int/lit8 v5, v4, 0x30

    :goto_4
    aput v5, v1, v11

    .line 32
    rem-int/lit16 v4, v3, 0x2710

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v4, v13

    aput v4, v1, v8

    .line 33
    rem-int/lit16 v4, v3, 0x3e8

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v13

    aput v4, v1, v9

    const/16 v4, 0x2e

    aput v4, v1, v7

    .line 34
    rem-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v12

    add-int/2addr v3, v13

    aput v3, v1, v12

    :cond_a
    :goto_5
    const/16 v3, 0x10

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    :goto_6
    if-ge v2, v0, :cond_b

    add-int/lit8 v4, v2, 0x1

    .line 35
    aget v2, v1, v2

    int-to-byte v2, v2

    aput v2, v3, v4

    move v2, v4

    goto :goto_6

    .line 36
    :cond_b
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method

.method public static b3()I
    .locals 7

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :goto_0
    :pswitch_1
    move v1, v3

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x16

    goto :goto_2

    .line 2
    :pswitch_3
    sget v0, Lo0/e;->H:I

    if-ne v0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/16 v1, 0x19

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_6

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x85

    goto :goto_2

    .line 3
    :pswitch_5
    sget v0, Lw0/d;->h:I

    const/high16 v3, 0x10000

    sub-int v4, v0, v3

    if-nez v4, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    sub-int v4, v0, v3

    if-ne v6, v4, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    sub-int v3, v0, v3

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x4

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v5

    if-ne v6, v0, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :pswitch_6
    move v1, v4

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v5

    .line 4
    :goto_2
    sget v0, Lu0/b;->o:I

    if-ne v0, v6, :cond_7

    const/16 v5, 0x10

    goto :goto_3

    .line 5
    :cond_7
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d3(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic e3(Lk0/ke;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ke;->l3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/ke;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ke;->x:J

    return-wide v0
.end method

.method public static synthetic g3(Lk0/ke;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ke;->x:J

    return-wide p1
.end method

.method public static synthetic h3(Lk0/ke;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ke;->y:I

    return p0
.end method

.method public static synthetic i3(Lk0/ke;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ke;->y:I

    return p1
.end method

.method public static synthetic j3(Lk0/ke;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/ke;->k3(BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

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
    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Le/c;->y:Lo1/o;

    iput-object v0, p0, Lk0/ke;->o:Lo1/o;

    .line 8
    sget-object v0, Le/c;->z:Lo1/o;

    iput-object v0, p0, Lk0/ke;->p:Lo1/o;

    .line 9
    sget-object v0, Le/c;->w:Lo1/o;

    iput-object v0, p0, Lk0/ke;->q:Lo1/o;

    .line 10
    sget-object v0, Le/c;->x:Lo1/o;

    iput-object v0, p0, Lk0/ke;->r:Lo1/o;

    .line 11
    new-instance v0, Lk0/ke$e;

    invoke-direct {v0, p0}, Lk0/ke$e;-><init>(Lk0/ke;)V

    sput-object v0, Le/c;->w:Lo1/o;

    .line 12
    new-instance v0, Lk0/ke$f;

    invoke-direct {v0, p0}, Lk0/ke$f;-><init>(Lk0/ke;)V

    sput-object v0, Le/c;->z:Lo1/o;

    .line 13
    new-instance v0, Lk0/ke$g;

    invoke-direct {v0, p0}, Lk0/ke$g;-><init>(Lk0/ke;)V

    sput-object v0, Le/c;->y:Lo1/o;

    .line 14
    new-instance v0, Lk0/ke$h;

    invoke-direct {v0, p0}, Lk0/ke$h;-><init>(Lk0/ke;)V

    sput-object v0, Le/c;->x:Lo1/o;

    .line 15
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v2, p0, Lk0/ke;->v:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 16
    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    :goto_0
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lk0/ke;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lk0/ke;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    iget-object v0, p0, Lk0/ke;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lk0/ke;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Lk0/ke;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Lk0/ke;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/ke;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public U2([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x18

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/16 v10, 0x8

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v2, v3, :cond_53

    const/16 v3, -0x10

    if-eq v2, v3, :cond_52

    const/16 v3, 0x34

    const/4 v14, 0x4

    if-eq v2, v3, :cond_51

    const/16 v3, 0x41

    if-eq v2, v3, :cond_4c

    const/16 v3, 0x72

    const/4 v15, 0x6

    if-eq v2, v3, :cond_4b

    const/16 v3, 0x74

    const/16 v6, 0x80

    if-eq v2, v3, :cond_41

    const/16 v3, 0x78

    if-eq v2, v3, :cond_40

    const/16 v3, 0x11

    const/16 v7, 0xd

    const/16 v4, 0x12

    const/4 v5, 0x7

    if-eq v2, v3, :cond_35

    if-eq v2, v4, :cond_33

    const/16 v3, 0x21

    if-eq v2, v3, :cond_18

    const/16 v3, 0x22

    if-eq v2, v3, :cond_f

    const/16 v3, 0x31

    if-eq v2, v3, :cond_3

    const/16 v3, 0x32

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    const/16 v3, 0x81

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v13

    shl-int/2addr v5, v10

    shr-int/lit8 v6, v1, 0x5

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 4
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x82

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v13

    shl-int/2addr v5, v10

    shr-int/lit8 v6, v1, 0x4

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 5
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x83

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v13

    shl-int/2addr v5, v10

    shr-int/lit8 v6, v1, 0x3

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 6
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x84

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v13

    shl-int/2addr v5, v10

    shr-int/lit8 v6, v1, 0x2

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 7
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x85

    new-array v4, v13, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v13

    shl-int/2addr v2, v10

    shr-int/2addr v1, v12

    and-int/2addr v1, v9

    or-int/2addr v1, v2

    aput v1, v4, v12

    .line 8
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 9
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 10
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 11
    aget-byte v4, v1, v4

    add-int/lit8 v7, p2, 0x5

    .line 12
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x6

    .line 13
    aget-byte v1, v1, v8

    const/16 v8, 0x73

    new-array v11, v13, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v13

    shl-int/2addr v15, v10

    shr-int/lit8 v16, v7, 0x2

    and-int/lit8 v16, v16, 0x3

    or-int v15, v15, v16

    aput v15, v11, v12

    .line 14
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x74

    new-array v11, v13, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v13

    shl-int/2addr v15, v10

    shr-int/lit8 v16, v7, 0x1

    and-int/lit8 v16, v16, 0x1

    or-int v15, v15, v16

    aput v15, v11, v12

    .line 15
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x75

    new-array v11, v13, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v13

    shl-int/2addr v15, v10

    shr-int/lit8 v16, v4, 0x5

    and-int/lit8 v16, v16, 0x7

    or-int v15, v15, v16

    aput v15, v11, v12

    .line 16
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x76

    new-array v11, v13, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v13

    shl-int/2addr v15, v10

    shr-int/lit8 v16, v4, 0x2

    and-int/lit8 v5, v16, 0x7

    or-int/2addr v5, v15

    aput v5, v11, v12

    .line 17
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x77

    new-array v8, v13, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v13

    shl-int/2addr v11, v10

    shr-int/lit8 v15, v7, 0x0

    and-int/2addr v15, v13

    or-int/2addr v11, v15

    aput v11, v8, v12

    .line 18
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x78

    new-array v8, v13, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v13

    shl-int/lit8 v15, v11, 0x8

    shr-int/lit8 v16, v4, 0x1

    and-int/lit8 v16, v16, 0x1

    or-int v15, v15, v16

    aput v15, v8, v12

    .line 19
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x79

    new-array v8, v13, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v13

    shl-int/lit8 v15, v2, 0x8

    shr-int/2addr v4, v12

    and-int/2addr v4, v13

    or-int/2addr v4, v15

    aput v4, v8, v12

    .line 20
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7a

    new-array v5, v13, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v13

    shl-int/2addr v8, v10

    shr-int/lit8 v15, v1, 0x2

    and-int/2addr v15, v13

    or-int/2addr v8, v15

    aput v8, v5, v12

    .line 21
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7b

    new-array v5, v13, [I

    shr-int/lit8 v8, v3, 0x5

    and-int/2addr v8, v13

    shl-int/2addr v8, v10

    shr-int/lit8 v15, v1, 0x1

    and-int/2addr v15, v13

    or-int/2addr v8, v15

    aput v8, v5, v12

    .line 22
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x7c

    new-array v5, v13, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/2addr v8, v13

    shl-int/2addr v8, v10

    shr-int/2addr v1, v12

    and-int/2addr v1, v13

    or-int/2addr v1, v8

    aput v1, v5, v12

    .line 23
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7d

    new-array v4, v13, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v13

    shl-int/2addr v5, v10

    shr-int/lit8 v8, v7, 0x7

    and-int/2addr v8, v13

    or-int/2addr v5, v8

    aput v5, v4, v12

    .line 24
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7e

    new-array v4, v13, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/lit8 v8, v5, 0x1

    shl-int/2addr v8, v10

    shr-int/lit8 v15, v7, 0x6

    and-int/2addr v15, v13

    or-int/2addr v8, v15

    aput v8, v4, v12

    .line 25
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x7f

    new-array v4, v13, [I

    shr-int/lit8 v8, v3, 0x1

    and-int/2addr v8, v13

    shl-int/2addr v8, v10

    shr-int/lit8 v15, v7, 0x5

    and-int/2addr v15, v13

    or-int/2addr v8, v15

    aput v8, v4, v12

    .line 26
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    new-array v1, v13, [I

    shr-int/2addr v3, v12

    and-int/lit8 v4, v3, 0x1

    shl-int/2addr v4, v10

    shr-int/2addr v7, v14

    and-int/2addr v7, v13

    or-int/2addr v4, v7

    aput v4, v1, v12

    .line 27
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    .line 28
    sget v1, Lk0/nt;->a:I

    const v4, 0x801a3

    if-eq v1, v4, :cond_0

    const v4, 0x1101a3

    if-ne v1, v4, :cond_66

    :cond_0
    const/16 v1, 0x8a

    new-array v4, v13, [I

    shl-int/lit8 v6, v11, 0x4

    and-int/2addr v5, v9

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 29
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8b

    new-array v4, v13, [I

    shl-int/2addr v2, v14

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    aput v2, v4, v12

    .line 30
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 32
    aget-byte v1, v1, v3

    const/16 v3, 0x6d

    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v13

    shl-int/2addr v6, v10

    shr-int/lit8 v7, v1, 0x7

    and-int/2addr v7, v13

    or-int/2addr v6, v7

    aput v6, v4, v12

    .line 33
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v13, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v13

    shl-int/2addr v6, v10

    shr-int/lit8 v7, v1, 0x4

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 34
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v13

    shl-int/2addr v5, v10

    shr-int/lit8 v6, v1, 0x3

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 35
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x70

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v13

    shl-int/2addr v5, v10

    shr-int/lit8 v6, v1, 0x2

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 36
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x71

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v13

    shl-int/lit8 v6, v5, 0x8

    shr-int/lit8 v7, v1, 0x1

    and-int/2addr v7, v13

    or-int/2addr v6, v7

    aput v6, v4, v12

    .line 37
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x72

    new-array v4, v13, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v13

    shl-int/lit8 v6, v2, 0x8

    shr-int/2addr v1, v12

    and-int/2addr v1, v13

    or-int/2addr v6, v1

    aput v6, v4, v12

    .line 38
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 39
    sget v3, Lk0/nt;->a:I

    const v4, 0x801a3

    if-eq v3, v4, :cond_1

    const v4, 0x1101a3

    if-ne v3, v4, :cond_66

    :cond_1
    const/16 v3, 0x88

    new-array v4, v13, [I

    shl-int/2addr v5, v14

    or-int/2addr v5, v7

    aput v5, v4, v12

    .line 40
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x89

    new-array v4, v13, [I

    shl-int/2addr v2, v14

    or-int/2addr v1, v2

    aput v1, v4, v12

    .line 41
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_2
    const/16 v2, 0x62

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x4

    .line 42
    aget-byte v6, v1, v4

    shl-int/2addr v6, v10

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/lit8 v8, p2, 0x5

    aget-byte v9, v1, v8

    and-int/2addr v9, v11

    or-int/2addr v6, v9

    aput v6, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v13, [I

    .line 43
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v7

    aget-byte v6, v1, v8

    and-int/2addr v6, v11

    or-int/2addr v4, v6

    aput v4, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v13, [I

    add-int/lit8 v4, p2, 0x6

    .line 44
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int/2addr v4, v7

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    or-int/2addr v1, v4

    aput v1, v3, v12

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 46
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 47
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 48
    aget-byte v6, v1, v6

    add-int/lit8 v14, p2, 0x7

    .line 49
    aget-byte v14, v1, v14

    add-int/lit8 v17, p2, 0x8

    .line 50
    aget-byte v18, v1, v17

    add-int/lit8 v19, p2, 0x9

    .line 51
    aget-byte v20, v1, v19

    const/16 v11, 0xa

    new-array v10, v13, [I

    shr-int/lit8 v21, v2, 0x6

    and-int/lit8 v21, v21, 0x1

    aput v21, v10, v12

    .line 52
    invoke-static {v11, v10}, Lk0/qt;->y0(I[I)V

    const/16 v10, 0x35

    new-array v11, v13, [I

    shr-int/lit8 v21, v2, 0x5

    and-int/lit8 v21, v21, 0x1

    aput v21, v11, v12

    .line 53
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    new-array v10, v13, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v13

    aput v2, v10, v12

    .line 54
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v10, v13, [I

    shr-int/lit8 v11, v3, 0x6

    and-int/2addr v11, v13

    aput v11, v10, v12

    .line 55
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v10, v13, [I

    shr-int/lit8 v11, v3, 0x5

    and-int/2addr v11, v13

    aput v11, v10, v12

    .line 56
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v10, v13, [I

    shr-int/lit8 v11, v3, 0x4

    and-int/2addr v11, v13

    aput v11, v10, v12

    .line 57
    invoke-static {v2, v10}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v3, v8

    and-int/2addr v3, v13

    aput v3, v2, v12

    const/16 v3, 0xe

    .line 58
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v5, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    const/16 v3, 0x10

    .line 59
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v13, [I

    shr-int/lit8 v8, v5, 0x4

    and-int/2addr v8, v13

    aput v8, v3, v12

    .line 60
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v13, [I

    shr-int/lit8 v8, v5, 0x2

    and-int/2addr v8, v9

    aput v8, v3, v12

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v13, [I

    and-int/2addr v5, v9

    aput v5, v3, v12

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v6, 0xf

    if-eq v2, v9, :cond_8

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    if-eq v2, v15, :cond_6

    const/16 v3, 0xb

    if-eq v2, v3, :cond_5

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    move v3, v12

    move v5, v3

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_4
    move v5, v12

    move v3, v13

    move v6, v3

    goto :goto_1

    :cond_5
    move v5, v12

    move v6, v5

    move v3, v13

    goto :goto_1

    :cond_6
    move v3, v12

    move v6, v3

    move v5, v13

    goto :goto_1

    :cond_7
    move v3, v12

    move v5, v13

    goto :goto_0

    :cond_8
    move v3, v12

    move v5, v3

    move v6, v13

    :goto_1
    new-array v8, v13, [I

    aput v3, v8, v12

    .line 63
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    new-array v3, v13, [I

    aput v5, v3, v12

    const/16 v4, 0x13

    .line 64
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v13, [I

    aput v6, v4, v12

    .line 65
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v13, [I

    aput v2, v4, v12

    .line 66
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v13, [I

    const/16 v4, 0x8

    if-le v14, v4, :cond_9

    const/16 v10, 0x8

    goto :goto_2

    :cond_9
    move v10, v14

    :goto_2
    aput v10, v3, v12

    .line 67
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 68
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 69
    aget-byte v18, v1, v19

    .line 70
    aget-byte v20, v1, v17

    :cond_a
    move/from16 v2, v18

    move/from16 v3, v20

    and-int/lit16 v4, v2, 0xff

    const/4 v5, -0x2

    if-ne v2, v5, :cond_b

    const/16 v2, 0x1b

    new-array v4, v13, [I

    aput v5, v4, v12

    .line 71
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    const/4 v6, -0x1

    if-ne v2, v6, :cond_c

    const/16 v2, 0x1b

    new-array v4, v13, [I

    const/4 v6, -0x3

    aput v6, v4, v12

    .line 72
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    const/16 v2, 0x1b

    new-array v6, v13, [I

    aput v4, v6, v12

    .line 73
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_3
    and-int/lit16 v2, v3, 0xff

    if-ne v3, v5, :cond_d

    const/16 v2, 0x1c

    new-array v3, v13, [I

    aput v5, v3, v12

    .line 74
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    const/16 v2, 0x1c

    new-array v3, v13, [I

    const/4 v4, -0x3

    aput v4, v3, v12

    .line 75
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    const/16 v3, 0x1c

    new-array v4, v13, [I

    aput v2, v4, v12

    .line 76
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 77
    :goto_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_66

    add-int/lit8 v2, p2, 0xd

    .line 78
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 79
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_1d

    .line 80
    :cond_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_66

    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v13, :cond_13

    .line 82
    sget v3, Lk0/ke;->B:I

    add-int/lit8 v5, p2, 0x3

    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    if-eq v3, v6, :cond_13

    .line 83
    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_10

    if-nez v3, :cond_10

    .line 84
    invoke-static {}, Lu0/d;->M1()V

    goto :goto_5

    .line 85
    :cond_10
    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    if-nez v6, :cond_11

    if-ne v3, v4, :cond_11

    .line 86
    invoke-static {}, Lu0/d;->O1()V

    goto :goto_5

    .line 87
    :cond_11
    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    if-ge v3, v6, :cond_12

    .line 88
    invoke-static {}, Lu0/d;->O1()V

    goto :goto_5

    .line 89
    :cond_12
    invoke-static {}, Lu0/d;->M1()V

    .line 90
    :goto_5
    aget-byte v3, v1, v5

    and-int/2addr v3, v4

    sput v3, Lk0/ke;->B:I

    .line 91
    :cond_13
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-eq v3, v8, :cond_14

    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-eq v3, v9, :cond_14

    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-eq v3, v14, :cond_14

    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/4 v3, 0x5

    if-ne v2, v3, :cond_66

    .line 92
    :cond_14
    sget v2, Lk0/ke;->C:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v5, v1, v3

    and-int/2addr v5, v4

    if-eq v2, v5, :cond_66

    .line 93
    aget-byte v5, v1, v3

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_15

    if-nez v2, :cond_15

    .line 94
    invoke-static {v12}, Ll0/b0;->w(I)V

    goto :goto_6

    .line 95
    :cond_15
    aget-byte v5, v1, v3

    and-int/2addr v5, v4

    if-nez v5, :cond_16

    if-ne v2, v4, :cond_16

    .line 96
    invoke-static {v12}, Ll0/b0;->R(I)V

    goto :goto_6

    .line 97
    :cond_16
    aget-byte v5, v1, v3

    and-int/2addr v5, v4

    if-ge v2, v5, :cond_17

    .line 98
    invoke-static {v12}, Ll0/b0;->R(I)V

    goto :goto_6

    .line 99
    :cond_17
    invoke-static {v12}, Ll0/b0;->w(I)V

    .line 100
    :goto_6
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    sput v1, Lk0/ke;->C:I

    goto/16 :goto_1d

    .line 101
    :cond_18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 102
    sget v2, Lk0/nt;->c:I

    if-eq v2, v4, :cond_25

    const/16 v3, 0x13

    if-ne v2, v3, :cond_19

    goto/16 :goto_a

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v3, v1, v2

    const/16 v5, 0xff

    and-int/2addr v3, v5

    add-int/lit16 v3, v3, 0xc0

    iput v3, v0, Lk0/ke;->f:I

    move v3, v12

    .line 104
    :goto_7
    iget-object v5, v0, Lk0/ke;->j:[[I

    array-length v6, v5

    if-ge v3, v6, :cond_1b

    .line 105
    iget v6, v0, Lk0/ke;->f:I

    aget-object v7, v5, v3

    aget v7, v7, v12

    if-ne v6, v7, :cond_1a

    if-eqz v6, :cond_1b

    .line 106
    iput v3, v0, Lk0/ke;->g:I

    goto :goto_8

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 107
    :cond_1b
    :goto_8
    aget-byte v2, v1, v2

    const/16 v6, 0xff

    and-int/2addr v2, v6

    const/16 v7, 0x39

    if-eq v2, v7, :cond_24

    add-int/lit8 v2, p2, 0x3

    .line 108
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-eqz v1, :cond_21

    .line 109
    array-length v1, v5

    if-ge v3, v1, :cond_66

    .line 110
    aget-object v1, v5, v3

    aget v1, v1, v12

    const/16 v2, 0xe8

    if-ne v1, v2, :cond_1c

    sget v1, Lk0/nt;->c:I

    if-ne v1, v9, :cond_1c

    .line 111
    invoke-static {v8, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 112
    :cond_1c
    aget-object v1, v5, v3

    aget v1, v1, v12

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_1d

    sget v1, Lu0/b;->D:I

    if-eq v1, v13, :cond_1d

    .line 113
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 114
    :cond_1d
    aget-object v1, v5, v3

    aget v1, v1, v12

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_1e

    sget v1, Lu0/b;->D:I

    if-eq v1, v13, :cond_1e

    const/16 v1, 0x1a

    .line 115
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 116
    :cond_1e
    aget-object v1, v5, v3

    aget v1, v1, v12

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1f

    sget v1, Lu0/b;->D:I

    if-eq v1, v13, :cond_1f

    .line 117
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 118
    :cond_1f
    aget-object v1, v5, v3

    aget v1, v1, v12

    const/16 v2, 0xce

    if-ne v1, v2, :cond_20

    sget v1, Lu0/b;->D:I

    if-eq v1, v13, :cond_20

    const/16 v1, 0x42

    .line 119
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 120
    :cond_20
    aget-object v1, v5, v3

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 121
    :cond_21
    iget v1, v0, Lk0/ke;->g:I

    array-length v2, v5

    if-ge v1, v2, :cond_22

    const/16 v2, 0xff

    if-eq v1, v2, :cond_23

    .line 122
    aget-object v1, v5, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto :goto_9

    :cond_22
    const/16 v2, 0xff

    .line 123
    :cond_23
    :goto_9
    iput v2, v0, Lk0/ke;->g:I

    goto/16 :goto_1d

    :cond_24
    move v2, v6

    add-int/lit8 v3, p2, 0x3

    .line 124
    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    if-ne v1, v13, :cond_66

    const/4 v1, 0x5

    .line 125
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 126
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_25
    :goto_a
    const/16 v2, 0xff

    add-int/lit8 v3, p2, 0x2

    .line 127
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    iput v3, v0, Lk0/ke;->k:I

    add-int/lit8 v3, p2, 0x3

    .line 128
    aget-byte v6, v1, v3

    and-int/2addr v6, v2

    move v2, v12

    .line 129
    :goto_b
    iget-object v7, v0, Lk0/ke;->m:[[I

    array-length v9, v7

    if-ge v2, v9, :cond_27

    .line 130
    iget v9, v0, Lk0/ke;->k:I

    aget-object v10, v7, v2

    aget v10, v10, v12

    if-ne v9, v10, :cond_26

    if-eqz v9, :cond_27

    .line 131
    iput v2, v0, Lk0/ke;->l:I

    goto :goto_c

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 132
    :cond_27
    :goto_c
    iget v9, v0, Lk0/ke;->k:I

    if-eq v9, v8, :cond_31

    const/16 v8, 0xe

    if-eq v9, v8, :cond_2f

    const/16 v4, 0x14

    if-eq v9, v4, :cond_2d

    const/16 v4, 0x15

    if-eq v9, v4, :cond_2b

    .line 133
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v13, :cond_28

    .line 134
    array-length v1, v7

    if-ge v2, v1, :cond_66

    .line 135
    aget-object v1, v7, v2

    aget v1, v1, v13

    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 136
    :cond_28
    iget v1, v0, Lk0/ke;->l:I

    array-length v2, v7

    if-ge v1, v2, :cond_29

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2a

    .line 137
    aget-object v1, v7, v1

    aget v1, v1, v13

    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto :goto_d

    :cond_29
    const/16 v2, 0xff

    .line 138
    :cond_2a
    :goto_d
    iput v2, v0, Lk0/ke;->l:I

    goto/16 :goto_1d

    :cond_2b
    const/16 v2, 0xff

    move v1, v12

    :goto_e
    and-int/lit16 v3, v6, 0xff

    if-ge v1, v3, :cond_2c

    const/16 v3, 0x8

    .line 139
    invoke-static {v3, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2c
    const/16 v3, 0x8

    .line 140
    invoke-static {v3, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_2d
    const/16 v2, 0xff

    move v1, v12

    :goto_f
    and-int/lit16 v3, v6, 0xff

    if-ge v1, v3, :cond_2e

    .line 141
    invoke-static {v5, v12}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 142
    :cond_2e
    invoke-static {v5, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_2f
    const/16 v2, 0xff

    .line 143
    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    if-ne v1, v13, :cond_66

    .line 144
    sget v1, Lk0/nt;->c:I

    if-ne v1, v4, :cond_30

    const/16 v1, 0x26

    .line 145
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 146
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_30
    const/16 v2, 0x13

    if-ne v1, v2, :cond_66

    const/16 v1, 0x19

    .line 147
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 148
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    .line 149
    :cond_31
    aget-byte v1, v1, v3

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v13, :cond_66

    .line 150
    sget v1, Lk0/nt;->c:I

    if-ne v1, v4, :cond_32

    const/16 v1, 0x37

    .line 151
    invoke-static {v1, v12}, Ll0/b0;->l0(II)V

    .line 152
    invoke-static {v1, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_32
    const/16 v2, 0x13

    if-ne v1, v2, :cond_66

    .line 153
    invoke-static {v13, v12}, Ll0/b0;->l0(II)V

    .line 154
    invoke-static {v13, v13}, Ll0/b0;->l0(II)V

    goto/16 :goto_1d

    :cond_33
    add-int/lit8 v2, p2, 0x4

    .line 155
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 156
    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_34

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 157
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 158
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_34
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 159
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 160
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_10
    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 161
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v13

    aput v3, v2, v12

    .line 162
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v13

    aput v3, v2, v12

    const/4 v3, 0x5

    .line 163
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v13, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v13

    aput v1, v2, v12

    .line 164
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    .line 165
    :cond_35
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_66

    add-int/lit8 v2, p2, 0x4

    .line 166
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 167
    aget-byte v3, v1, v3

    const/16 v6, 0xff

    and-int/2addr v2, v6

    .line 168
    iput v2, v0, Lk0/ke;->e:I

    move v2, v12

    .line 169
    :goto_11
    iget-object v6, v0, Lk0/ke;->j:[[I

    array-length v10, v6

    if-ge v2, v10, :cond_37

    .line 170
    iget v10, v0, Lk0/ke;->e:I

    aget-object v11, v6, v2

    aget v11, v11, v12

    if-ne v10, v11, :cond_36

    if-eqz v10, :cond_37

    .line 171
    iput v2, v0, Lk0/ke;->d:I

    goto :goto_12

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_37
    :goto_12
    const/16 v10, 0xff

    and-int/2addr v3, v10

    if-eqz v3, :cond_3a

    .line 172
    array-length v3, v6

    if-ge v2, v3, :cond_3d

    .line 173
    aget-object v3, v6, v2

    aget v3, v3, v12

    if-ne v3, v15, :cond_39

    sget v3, Lh0/c;->E:I

    if-lt v3, v9, :cond_38

    const/4 v10, 0x5

    if-le v3, v10, :cond_39

    .line 174
    :cond_38
    invoke-static {v7, v12}, Ll0/b0;->l0(II)V

    goto :goto_14

    .line 175
    :cond_39
    aget-object v2, v6, v2

    aget v2, v2, v13

    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    goto :goto_14

    .line 176
    :cond_3a
    iget v2, v0, Lk0/ke;->d:I

    array-length v3, v6

    if-ge v2, v3, :cond_3b

    const/16 v3, 0xff

    if-eq v2, v3, :cond_3c

    .line 177
    aget-object v2, v6, v2

    aget v2, v2, v13

    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    goto :goto_13

    :cond_3b
    const/16 v3, 0xff

    .line 178
    :cond_3c
    :goto_13
    iput v3, v0, Lk0/ke;->d:I

    .line 179
    :cond_3d
    :goto_14
    sget v2, Lk0/nt;->c:I

    if-eqz v2, :cond_3f

    if-eq v2, v13, :cond_3f

    if-eq v2, v8, :cond_3f

    if-eq v2, v9, :cond_3f

    if-eq v2, v14, :cond_3f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3f

    if-eq v2, v15, :cond_3f

    if-eq v2, v5, :cond_3f

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3f

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3f

    if-eq v2, v7, :cond_3f

    const/16 v3, 0xe

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3f

    if-eq v2, v4, :cond_3f

    const/16 v3, 0x13

    if-ne v2, v3, :cond_3e

    goto :goto_15

    :cond_3e
    add-int/lit8 v2, p2, 0x9

    .line 180
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x2580

    invoke-static {v2, v1, v13, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1d

    :cond_3f
    :goto_15
    add-int/lit8 v2, p2, 0x9

    .line 181
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    add-int/lit8 v3, p2, 0x8

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v13, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1d

    :cond_40
    add-int/lit8 v2, p2, 0x4

    .line 182
    aget-byte v2, v1, v2

    const/16 v3, 0x9

    add-int/lit8 v3, p2, 0x9

    .line 183
    aget-byte v1, v1, v3

    const/16 v3, 0x8e

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v13

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v6, v1, 0x7

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 184
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x8f

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v13

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 185
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x90

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v13

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v6, v1, 0x5

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 186
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x91

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v13

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v6, v1, 0x4

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 187
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v13

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v6, v1, 0x3

    and-int/2addr v6, v13

    or-int/2addr v5, v6

    aput v5, v4, v12

    .line 188
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x93

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v13

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    shr-int/lit8 v7, v1, 0x2

    and-int/2addr v7, v13

    or-int/2addr v5, v7

    aput v5, v4, v12

    .line 189
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x94

    new-array v4, v13, [I

    shr-int/2addr v2, v13

    and-int/2addr v2, v13

    shl-int/2addr v2, v6

    shr-int/2addr v1, v13

    and-int/2addr v1, v13

    or-int/2addr v1, v2

    aput v1, v4, v12

    .line 190
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    .line 191
    :cond_41
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_66

    add-int/lit8 v2, p2, 0x2

    .line 192
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v2, v6

    iput v2, v0, Lk0/ke;->h:I

    move v2, v12

    .line 193
    :goto_16
    iget-object v3, v0, Lk0/ke;->j:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_43

    .line 194
    iget v4, v0, Lk0/ke;->h:I

    aget-object v5, v3, v2

    aget v5, v5, v12

    if-ne v4, v5, :cond_42

    if-eqz v4, :cond_43

    .line 195
    iput v2, v0, Lk0/ke;->i:I

    goto :goto_17

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 196
    :cond_43
    :goto_17
    iget v4, v0, Lk0/ke;->h:I

    if-eq v4, v6, :cond_45

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-eqz v4, :cond_45

    .line 197
    array-length v4, v3

    if-ge v2, v4, :cond_44

    .line 198
    aget-object v2, v3, v2

    aget v2, v2, v13

    invoke-static {v2, v12}, Ll0/b0;->l0(II)V

    :cond_44
    const/16 v4, 0xff

    goto :goto_18

    .line 199
    :cond_45
    iget v2, v0, Lk0/ke;->i:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_46

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v4

    if-nez v5, :cond_46

    .line 200
    aget-object v2, v3, v2

    aget v2, v2, v13

    invoke-static {v2, v13}, Ll0/b0;->l0(II)V

    .line 201
    :cond_46
    iput v4, v0, Lk0/ke;->i:I

    :goto_18
    add-int/lit8 v2, p2, 0x3

    .line 202
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    iget v5, v0, Lk0/ke;->b:I

    if-eq v3, v5, :cond_4a

    if-nez v5, :cond_47

    .line 203
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_47

    .line 204
    invoke-static {}, Lu0/d;->B1()V

    goto :goto_19

    .line 205
    :cond_47
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-nez v3, :cond_48

    .line 206
    invoke-static {}, Lu0/d;->I1()V

    goto :goto_19

    .line 207
    :cond_48
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    if-le v3, v5, :cond_49

    .line 208
    invoke-static {}, Lu0/d;->I1()V

    goto :goto_19

    .line 209
    :cond_49
    invoke-static {}, Lu0/d;->B1()V

    .line 210
    :cond_4a
    :goto_19
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    iput v1, v0, Lk0/ke;->b:I

    goto/16 :goto_1d

    :cond_4b
    add-int/lit8 v2, p2, 0x2

    .line 211
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 212
    aget-byte v1, v1, v3

    const/16 v3, 0x63

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 213
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x64

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 214
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 215
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 216
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 217
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 218
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v13, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v13

    aput v5, v4, v12

    .line 219
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v13, [I

    and-int/2addr v2, v13

    aput v2, v4, v12

    .line 220
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v13, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v13

    aput v4, v3, v12

    .line 221
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v13, [I

    shr-int/2addr v1, v15

    and-int/2addr v1, v13

    aput v1, v3, v12

    .line 222
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    .line 223
    :cond_4c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 224
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4d

    add-int/lit8 v2, p2, 0x2

    .line 225
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 226
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 227
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 228
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/ke;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_1d

    :cond_4d
    const/16 v3, 0xff

    add-int/lit8 v2, p2, 0x2

    .line 229
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 230
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 231
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 232
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 233
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x7

    .line 234
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x8

    .line 235
    aget-byte v8, v1, v7

    and-int/2addr v8, v3

    const/16 v9, 0x9

    add-int/lit8 v9, p2, 0x9

    .line 236
    aget-byte v10, v1, v9

    and-int/2addr v10, v3

    if-nez v4, :cond_4e

    if-nez v6, :cond_4e

    if-nez v8, :cond_4e

    if-nez v10, :cond_4e

    .line 237
    invoke-static {v12}, Lu0/d;->C2(I)V

    goto :goto_1a

    .line 238
    :cond_4e
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_4f

    sget v3, Ll0/c0;->h:I

    if-ne v3, v6, :cond_4f

    sget v3, Ll0/c0;->i:I

    if-ne v3, v8, :cond_4f

    sget v3, Ll0/c0;->j:I

    if-eq v3, v10, :cond_50

    .line 239
    :cond_4f
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_50

    .line 240
    invoke-static {v13}, Lu0/d;->C2(I)V

    .line 241
    sput v14, Ll0/c0;->k:I

    .line 242
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 243
    :cond_50
    :goto_1a
    sput v4, Ll0/c0;->g:I

    .line 244
    sput v6, Ll0/c0;->h:I

    .line 245
    sput v8, Ll0/c0;->i:I

    .line 246
    sput v10, Ll0/c0;->j:I

    .line 247
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 248
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 249
    aget-byte v2, v1, v7

    and-int/2addr v2, v3

    invoke-static {v2}, Lk0/ke;->d3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 250
    aget-byte v1, v1, v9

    and-int/2addr v1, v3

    invoke-static {v1}, Lk0/ke;->d3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1d

    :cond_51
    move v3, v11

    add-int/lit8 v2, p2, 0x6

    .line 251
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x7

    .line 252
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    const/16 v5, 0x8

    add-int/lit8 v6, p2, 0x8

    .line 253
    aget-byte v1, v1, v6

    and-int/2addr v1, v3

    shl-int/2addr v2, v5

    shl-int/lit8 v3, v4, 0x4

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/16 v2, 0x8c

    new-array v3, v13, [I

    aput v1, v3, v12

    .line 254
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    .line 255
    :cond_52
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 256
    :cond_53
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 257
    sget v2, Lk0/nt;->a:I

    const v3, 0x201a3

    if-eq v2, v3, :cond_56

    const v3, 0x1001a3

    if-eq v2, v3, :cond_56

    const v3, 0x1401a3

    if-ne v2, v3, :cond_54

    goto :goto_1b

    :cond_54
    const v3, 0xe01a3

    if-ne v2, v3, :cond_59

    add-int/lit8 v2, p2, 0x5

    .line 258
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v13, :cond_55

    iget-boolean v3, v0, Lk0/ke;->n:Z

    if-eqz v3, :cond_55

    .line 259
    invoke-static {v13}, Lk0/qt;->a(I)V

    .line 260
    iput-boolean v12, v0, Lk0/ke;->n:Z

    goto :goto_1c

    .line 261
    :cond_55
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    if-nez v2, :cond_59

    iget-boolean v2, v0, Lk0/ke;->n:Z

    if-nez v2, :cond_59

    .line 262
    invoke-static {v12}, Lk0/qt;->a(I)V

    .line 263
    iput-boolean v13, v0, Lk0/ke;->n:Z

    goto :goto_1c

    :cond_56
    :goto_1b
    add-int/lit8 v2, p2, 0x4

    .line 264
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x5

    .line 265
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x6

    .line 266
    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    add-int/lit8 v6, p2, 0x7

    .line 267
    aget-byte v6, v1, v6

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x8

    .line 268
    aget-byte v7, v1, v7

    and-int/2addr v7, v3

    if-ne v4, v13, :cond_58

    if-eq v2, v13, :cond_57

    if-eq v5, v13, :cond_57

    if-eq v6, v13, :cond_57

    if-ne v7, v13, :cond_58

    .line 269
    :cond_57
    iget-boolean v3, v0, Lk0/ke;->n:Z

    if-eqz v3, :cond_58

    .line 270
    invoke-static {v13}, Lk0/qt;->a(I)V

    .line 271
    iput-boolean v12, v0, Lk0/ke;->n:Z

    goto :goto_1c

    :cond_58
    if-nez v2, :cond_59

    if-nez v4, :cond_59

    if-nez v5, :cond_59

    if-nez v6, :cond_59

    if-nez v7, :cond_59

    .line 272
    invoke-static {v12}, Lk0/qt;->a(I)V

    .line 273
    iput-boolean v13, v0, Lk0/ke;->n:Z

    .line 274
    :cond_59
    :goto_1c
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x3f5

    if-ne v2, v8, :cond_5e

    add-int/lit8 v2, p2, 0x4

    .line 275
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x6

    .line 276
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x7

    .line 277
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    add-int/lit8 v6, p2, 0x8

    .line 278
    aget-byte v1, v1, v6

    if-ne v5, v13, :cond_5a

    new-array v1, v13, [I

    aput v12, v1, v12

    .line 279
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_5a
    if-ne v1, v13, :cond_5b

    new-array v1, v13, [I

    aput v13, v1, v12

    .line 280
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_5b
    if-ne v4, v13, :cond_5c

    new-array v1, v13, [I

    aput v8, v1, v12

    .line 281
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_5c
    if-ne v2, v13, :cond_5d

    new-array v1, v13, [I

    aput v9, v1, v12

    .line 282
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_5d
    new-array v1, v13, [I

    const/4 v2, -0x1

    aput v2, v1, v12

    .line 283
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1d

    :cond_5e
    const/16 v4, 0xe

    if-ne v2, v4, :cond_63

    add-int/lit8 v2, p2, 0x3

    .line 284
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x4

    .line 285
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 286
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x7

    .line 287
    aget-byte v6, v1, v6

    const/16 v7, 0x8

    add-int/lit8 v7, p2, 0x8

    .line 288
    aget-byte v1, v1, v7

    new-array v7, v13, [I

    aput v2, v7, v12

    .line 289
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    if-ne v6, v13, :cond_5f

    new-array v1, v13, [I

    aput v12, v1, v12

    .line 290
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_5f
    if-ne v1, v13, :cond_60

    new-array v1, v13, [I

    aput v13, v1, v12

    .line 291
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_60
    if-ne v5, v13, :cond_61

    new-array v1, v13, [I

    aput v8, v1, v12

    .line 292
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_61
    if-ne v4, v13, :cond_62

    new-array v1, v13, [I

    aput v9, v1, v12

    .line 293
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_62
    new-array v1, v13, [I

    const/4 v3, -0x1

    aput v3, v1, v12

    .line 294
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_63
    const/16 v4, 0x10

    if-ne v2, v4, :cond_65

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 295
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v13, :cond_64

    .line 296
    iget-boolean v2, v0, Lk0/ke;->n:Z

    if-eqz v2, :cond_64

    .line 297
    invoke-static {v13}, Lk0/qt;->a(I)V

    .line 298
    iput-boolean v12, v0, Lk0/ke;->n:Z

    goto :goto_1d

    :cond_64
    if-nez v1, :cond_66

    .line 299
    invoke-static {v12}, Lk0/qt;->a(I)V

    .line 300
    iput-boolean v13, v0, Lk0/ke;->n:Z

    goto :goto_1d

    :cond_65
    new-array v1, v13, [I

    const/4 v2, -0x1

    aput v2, v1, v12

    .line 301
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :cond_66
    :goto_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ke;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lk0/ke;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ke;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/ke;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/ke;->o:Lo1/o;

    sput-object v0, Le/c;->y:Lo1/o;

    .line 6
    iget-object v0, p0, Lk0/ke;->p:Lo1/o;

    sput-object v0, Le/c;->z:Lo1/o;

    .line 7
    iget-object v0, p0, Lk0/ke;->q:Lo1/o;

    sput-object v0, Le/c;->w:Lo1/o;

    .line 8
    iget-object v0, p0, Lk0/ke;->r:Lo1/o;

    sput-object v0, Le/c;->x:Lo1/o;

    .line 9
    sget-object v0, Lk0/ke;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Lk0/ke;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Lk0/ke;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ke;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/ke;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x96

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
    .locals 8

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_e

    if-eq p1, v2, :cond_d

    if-eq p1, v4, :cond_c

    if-eq p1, v0, :cond_b

    const/16 v5, 0x3eb

    const/16 v6, 0xe

    const/16 v7, 0xfd

    if-eq p1, v5, :cond_7

    const/16 v5, 0x3ed

    if-eq p1, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_f

    .line 1
    array-length p1, p2

    if-lez p1, :cond_f

    .line 2
    sget p1, Lk0/nt;->c:I

    if-ne p1, v4, :cond_2

    .line 3
    aget p1, p2, v3

    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 5
    iput-boolean v3, p0, Lk0/ke;->n:Z

    goto/16 :goto_2

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v3

    aput v4, p1, v2

    aput v7, p1, v4

    aput v4, p1, v0

    .line 6
    aget p2, p2, v3

    add-int/2addr p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_2
    if-eq p1, p4, :cond_4

    const/16 v5, 0x13

    if-ne p1, v5, :cond_3

    goto :goto_0

    :cond_3
    if-ne p1, v6, :cond_f

    new-array p1, p4, [I

    aput p3, p1, v3

    aput v4, p1, v2

    aput v7, p1, v4

    aput v1, p1, v0

    .line 7
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 8
    :cond_4
    :goto_0
    aget p1, p2, v3

    if-ne p1, v1, :cond_5

    new-array p1, v0, [I

    .line 9
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 10
    :cond_5
    aget p1, p2, v3

    const/16 v5, 0xf2

    if-ne p1, p4, :cond_6

    new-array p1, p4, [I

    aput p3, p1, v3

    aput v4, p1, v2

    aput v5, p1, v4

    aput v4, p1, v0

    .line 11
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_6
    new-array p1, p4, [I

    aput p3, p1, v3

    aput v4, p1, v2

    aput v5, p1, v4

    aput v4, p1, v0

    .line 12
    aget p2, p2, v3

    add-int/2addr p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 13
    :cond_7
    sget p1, Lk0/nt;->c:I

    if-ne p1, v6, :cond_a

    .line 14
    aget p1, p2, v3

    if-nez p1, :cond_8

    move p1, v2

    goto :goto_1

    .line 15
    :cond_8
    aget p1, p2, v3

    if-ne p1, v2, :cond_9

    move p1, v4

    goto :goto_1

    :cond_9
    move p1, v3

    :goto_1
    new-array p2, p4, [I

    aput p3, p2, v3

    aput v4, p2, v2

    aput v7, p2, v4

    aput v1, p2, v0

    aput p1, p2, v1

    .line 16
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_a
    const/16 p2, 0x10

    if-ne p1, p2, :cond_f

    new-array p1, p4, [I

    .line 17
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 18
    :cond_b
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p3, p1, v3

    aput v1, p1, v2

    const/16 p3, 0x7e

    aput p3, p1, v4

    const/16 p3, 0x21

    aput p3, p1, v0

    aput v3, p1, v1

    .line 19
    aget p3, p2, v3

    aput p3, p1, p4

    const/4 p3, 0x6

    aget p2, p2, v2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 20
    :cond_c
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, p4, [I

    aput p3, p1, v3

    aput v4, p1, v2

    const/16 p3, 0x6d

    aput p3, p1, v4

    .line 21
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 22
    :cond_d
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, p4, [I

    aput p3, p1, v3

    aput v4, p1, v2

    const/16 p3, 0x6c

    aput p3, p1, v4

    .line 23
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 24
    :cond_e
    invoke-static {p2, v4}, Lk0/qt;->l0([II)Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, p4, [I

    aput p3, p1, v3

    aput v4, p1, v2

    const/16 p3, 0x6b

    aput p3, p1, v4

    .line 25
    aget p3, p2, v3

    aput p3, p1, v0

    aget p2, p2, v2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_f
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x79
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x79
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0xfd
        0x1
        0x0
    .end array-data
.end method

.method public final k3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x23

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x20

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 3
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 4
    aput p1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final l3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v3, 0x3d

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/ke$l;

    invoke-direct {v1, p0, p1}, Lk0/ke$l;-><init>(Lk0/ke;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
