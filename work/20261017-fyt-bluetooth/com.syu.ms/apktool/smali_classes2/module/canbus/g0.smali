.class public Lmodule/canbus/g0;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/g0$h;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static final C:[I

.field public static final D:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/g0$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:[[I

.field public k:I

.field public l:I

.field public m:[[I

.field public n:Ljava/lang/Runnable;

.field public o:I

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:B

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/g0;->C:[I

    .line 2
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/g0;->D:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x18
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x30
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x5

    new-array v2, v1, [[I

    .line 2
    iput-object v2, v0, Lmodule/canbus/g0;->b:[[I

    const/16 v2, 0xf

    new-array v3, v2, [[I

    .line 3
    iput-object v3, v0, Lmodule/canbus/g0;->c:[[I

    const/4 v3, 0x7

    new-array v4, v3, [I

    .line 4
    iput-object v4, v0, Lmodule/canbus/g0;->d:[I

    const/4 v4, 0x0

    .line 5
    iput v4, v0, Lmodule/canbus/g0;->f:I

    const/16 v5, 0x22

    new-array v5, v5, [[I

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 6
    fill-array-data v7, :array_0

    aput-object v7, v5, v4

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    const/4 v8, 0x1

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_3

    const/4 v9, 0x3

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    const/4 v10, 0x4

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    const/4 v11, 0x6

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_7

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_8

    const/16 v12, 0x8

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_9

    const/16 v13, 0x9

    aput-object v7, v5, v13

    new-array v7, v6, [I

    fill-array-data v7, :array_a

    const/16 v14, 0xa

    aput-object v7, v5, v14

    new-array v7, v6, [I

    fill-array-data v7, :array_b

    const/16 v15, 0xb

    aput-object v7, v5, v15

    new-array v7, v6, [I

    fill-array-data v7, :array_c

    const/16 v16, 0xc

    aput-object v7, v5, v16

    new-array v7, v6, [I

    fill-array-data v7, :array_d

    const/16 v15, 0xd

    aput-object v7, v5, v15

    new-array v7, v6, [I

    fill-array-data v7, :array_e

    const/16 v18, 0xe

    aput-object v7, v5, v18

    new-array v7, v6, [I

    fill-array-data v7, :array_f

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_10

    const/16 v19, 0x10

    aput-object v7, v5, v19

    new-array v7, v6, [I

    fill-array-data v7, :array_11

    const/16 v20, 0x11

    aput-object v7, v5, v20

    new-array v7, v6, [I

    fill-array-data v7, :array_12

    const/16 v21, 0x12

    aput-object v7, v5, v21

    new-array v7, v6, [I

    fill-array-data v7, :array_13

    const/16 v22, 0x13

    aput-object v7, v5, v22

    new-array v7, v6, [I

    fill-array-data v7, :array_14

    const/16 v2, 0x14

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_15

    const/16 v23, 0x15

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_16

    const/16 v23, 0x16

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_17

    const/16 v23, 0x17

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_18

    const/16 v23, 0x18

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_19

    const/16 v23, 0x19

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_1a

    const/16 v23, 0x1a

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_1b

    const/16 v23, 0x1b

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_1c

    const/16 v23, 0x1c

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_1d

    const/16 v23, 0x1d

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_1e

    const/16 v23, 0x1e

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_1f

    const/16 v23, 0x1f

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_20

    const/16 v23, 0x20

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_21

    const/16 v23, 0x21

    aput-object v7, v5, v23

    iput-object v5, v0, Lmodule/canbus/g0;->g:[[I

    .line 7
    iput v4, v0, Lmodule/canbus/g0;->i:I

    new-array v5, v15, [[I

    new-array v7, v6, [I

    .line 8
    fill-array-data v7, :array_22

    aput-object v7, v5, v4

    new-array v7, v6, [I

    fill-array-data v7, :array_23

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_24

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_25

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_26

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_27

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_28

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_29

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_2a

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_2b

    aput-object v7, v5, v13

    new-array v7, v6, [I

    fill-array-data v7, :array_2c

    aput-object v7, v5, v14

    new-array v7, v6, [I

    fill-array-data v7, :array_2d

    const/16 v17, 0xb

    aput-object v7, v5, v17

    new-array v7, v6, [I

    fill-array-data v7, :array_2e

    aput-object v7, v5, v16

    iput-object v5, v0, Lmodule/canbus/g0;->j:[[I

    .line 9
    iput v4, v0, Lmodule/canbus/g0;->l:I

    new-array v2, v2, [[I

    new-array v5, v6, [I

    .line 10
    fill-array-data v5, :array_2f

    aput-object v5, v2, v4

    new-array v5, v6, [I

    fill-array-data v5, :array_30

    aput-object v5, v2, v8

    new-array v5, v6, [I

    fill-array-data v5, :array_31

    aput-object v5, v2, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_32

    aput-object v5, v2, v9

    new-array v5, v6, [I

    fill-array-data v5, :array_33

    aput-object v5, v2, v10

    new-array v5, v6, [I

    fill-array-data v5, :array_34

    aput-object v5, v2, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_35

    aput-object v1, v2, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_36

    aput-object v1, v2, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_37

    aput-object v1, v2, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_38

    aput-object v1, v2, v13

    new-array v1, v6, [I

    fill-array-data v1, :array_39

    aput-object v1, v2, v14

    new-array v1, v6, [I

    fill-array-data v1, :array_3a

    const/16 v3, 0xb

    aput-object v1, v2, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3b

    aput-object v1, v2, v16

    new-array v1, v6, [I

    fill-array-data v1, :array_3c

    aput-object v1, v2, v15

    new-array v1, v6, [I

    fill-array-data v1, :array_3d

    aput-object v1, v2, v18

    new-array v1, v6, [I

    fill-array-data v1, :array_3e

    const/16 v3, 0xf

    aput-object v1, v2, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3f

    aput-object v1, v2, v19

    new-array v1, v6, [I

    fill-array-data v1, :array_40

    aput-object v1, v2, v20

    new-array v1, v6, [I

    fill-array-data v1, :array_41

    aput-object v1, v2, v21

    new-array v1, v6, [I

    fill-array-data v1, :array_42

    aput-object v1, v2, v22

    iput-object v2, v0, Lmodule/canbus/g0;->m:[[I

    .line 11
    new-instance v1, Lmodule/canbus/g0$a;

    invoke-direct {v1, v0}, Lmodule/canbus/g0$a;-><init>(Lmodule/canbus/g0;)V

    iput-object v1, v0, Lmodule/canbus/g0;->n:Ljava/lang/Runnable;

    const/16 v1, 0xff

    .line 12
    iput v1, v0, Lmodule/canbus/g0;->o:I

    .line 13
    new-instance v2, Lmodule/canbus/g0$b;

    invoke-direct {v2, v0}, Lmodule/canbus/g0$b;-><init>(Lmodule/canbus/g0;)V

    iput-object v2, v0, Lmodule/canbus/g0;->p:Ljava/lang/Runnable;

    .line 14
    iput v1, v0, Lmodule/canbus/g0;->q:I

    .line 15
    new-instance v1, Lmodule/canbus/g0$c;

    invoke-direct {v1, v0}, Lmodule/canbus/g0$c;-><init>(Lmodule/canbus/g0;)V

    iput-object v1, v0, Lmodule/canbus/g0;->r:Ljava/lang/Runnable;

    .line 16
    new-instance v1, Lmodule/canbus/g0$d;

    invoke-direct {v1, v0}, Lmodule/canbus/g0$d;-><init>(Lmodule/canbus/g0;)V

    iput-object v1, v0, Lmodule/canbus/g0;->s:Ljava/lang/Runnable;

    const/16 v1, 0xf

    .line 17
    iput-byte v1, v0, Lmodule/canbus/g0;->t:B

    .line 18
    new-instance v1, Lmodule/canbus/g0$e;

    invoke-direct {v1, v0}, Lmodule/canbus/g0$e;-><init>(Lmodule/canbus/g0;)V

    iput-object v1, v0, Lmodule/canbus/g0;->u:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lmodule/canbus/g0$f;

    invoke-direct {v1, v0}, Lmodule/canbus/g0$f;-><init>(Lmodule/canbus/g0;)V

    iput-object v1, v0, Lmodule/canbus/g0;->v:Ljava/lang/Runnable;

    const/16 v1, 0x64

    .line 20
    iput v1, v0, Lmodule/canbus/g0;->w:I

    .line 21
    new-instance v1, Lmodule/canbus/g0$g;

    invoke-direct {v1, v0}, Lmodule/canbus/g0$g;-><init>(Lmodule/canbus/g0;)V

    iput-object v1, v0, Lmodule/canbus/g0;->x:Ljava/lang/Runnable;

    .line 22
    iput v4, v0, Lmodule/canbus/g0;->y:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x15
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x15
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x36
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x3
    .end array-data

    :array_9
    .array-data 4
        0xa
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x36
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x2
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x12
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x40
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x18
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x5
    .end array-data

    :array_15
    .array-data 4
        0x20
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_17
    .array-data 4
        0x22
        0x6
    .end array-data

    :array_18
    .array-data 4
        0x23
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x24
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x25
        0x22
    .end array-data

    :array_1b
    .array-data 4
        0x26
        0x23
    .end array-data

    :array_1c
    .array-data 4
        0x27
        0x20
    .end array-data

    :array_1d
    .array-data 4
        0x28
        0x21
    .end array-data

    :array_1e
    .array-data 4
        0x29
        0x36
    .end array-data

    :array_1f
    .array-data 4
        0x2a
        0x3a
    .end array-data

    :array_20
    .array-data 4
        0x2b
        0x37
    .end array-data

    :array_21
    .array-data 4
        0x30
        0x3e
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_23
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_24
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_25
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x5
        0x2
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_28
    .array-data 4
        0x7
        0x1a
    .end array-data

    :array_29
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_2a
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_2b
    .array-data 4
        0xa
        0x6
    .end array-data

    :array_2c
    .array-data 4
        0xb
        0x5
    .end array-data

    :array_2d
    .array-data 4
        0xc
        0x1d
    .end array-data

    :array_2e
    .array-data 4
        0xd
        0x12
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
        0x4
    .end array-data

    :array_32
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_33
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_34
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_35
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_36
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_37
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_38
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_39
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_3a
    .array-data 4
        0x16
        0x1d
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
        0x3
    .end array-data

    :array_3e
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_3f
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_40
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_41
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_42
    .array-data 4
        0x88
        0x2
    .end array-data
.end method

.method public static synthetic a3(Lmodule/canbus/g0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g0;->u3()V

    return-void
.end method

.method public static synthetic b3(Lmodule/canbus/g0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/g0;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lmodule/canbus/g0;IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmodule/canbus/g0;->t3(IIII)V

    return-void
.end method

.method public static synthetic d3(Lmodule/canbus/g0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g0;->z:I

    return p0
.end method

.method public static synthetic e3(Lmodule/canbus/g0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/g0;->z:I

    return p1
.end method

.method public static synthetic f3(Lmodule/canbus/g0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/g0;->z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/g0;->z:I

    return v0
.end method

.method public static synthetic g3(Lmodule/canbus/g0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/g0;->q3()V

    return-void
.end method

.method public static synthetic h3(Lmodule/canbus/g0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g0;->w:I

    return p0
.end method

.method public static synthetic i3(Lmodule/canbus/g0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/g0;->y:I

    return p0
.end method

.method public static synthetic j3(Lmodule/canbus/g0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/g0;->y:I

    return p1
.end method

.method public static synthetic k3(Lmodule/canbus/g0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/g0;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/g0;->y:I

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g0;->B:I

    return v0
.end method

.method public static synthetic m3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/g0;->B:I

    return p0
.end method

.method public static synthetic n3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/g0;->C:[I

    return-object v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/g0;->A:I

    return v0
.end method

.method public static p3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/g0;->D:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/g0$h;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/g0$h;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x1c

    .line 2
    sput v0, Ly0/f;->C0:I

    :cond_1
    return-void
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
    iput v1, v0, Lk0/mt;->i:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->l:I

    .line 8
    iput v2, v0, Lk0/mt;->b:I

    .line 9
    iput v2, v0, Lk0/mt;->c:I

    .line 10
    iput v2, v0, Lk0/mt;->d:I

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/g0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 13
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->l:I

    .line 14
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/g0;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/g0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 16
    :pswitch_2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/g0;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/g0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 18
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v3, 0x0

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 19
    :pswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 20
    iput v1, v0, Lk0/mt;->c:I

    .line 21
    iput v2, v0, Lk0/mt;->d:I

    .line 22
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lmodule/canbus/g0;->init()V

    .line 24
    iget-object v0, p0, Lmodule/canbus/g0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 25
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/g0;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    :cond_0
    :goto_0
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_1

    .line 27
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/g0;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    :pswitch_5
    sget v0, Lk0/nt;->c:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 29
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 30
    :cond_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    .line 31
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/4 v3, 0x6

    const/4 v5, 0x7

    const/4 v7, 0x3

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v10, :cond_5b

    const/16 v11, 0x1e

    if-eq v2, v11, :cond_5a

    const/16 v11, 0x40

    const/16 v12, 0xf

    const/4 v13, 0x2

    if-eq v2, v11, :cond_59

    const/16 v11, 0x50

    if-eq v2, v11, :cond_58

    const/16 v11, 0x52

    if-eq v2, v11, :cond_57

    const/16 v11, 0x5a

    const v14, 0xff00

    if-eq v2, v11, :cond_56

    const/16 v11, 0x65

    if-eq v2, v11, :cond_55

    const/16 v11, 0x6e

    if-eq v2, v11, :cond_54

    const/16 v11, 0x10

    if-eq v2, v11, :cond_51

    const/16 v14, 0x11

    const/16 v4, 0xa

    if-eq v2, v14, :cond_2f

    const/16 v14, 0x30

    if-eq v2, v14, :cond_2e

    const/16 v14, 0x31

    if-eq v2, v14, :cond_2c

    const/16 v14, 0x1f

    const/16 v6, 0x23

    const/16 v18, -0x3

    const/16 v19, -0x2

    const/4 v15, -0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1e

    .line 2
    :pswitch_0
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, p2, 0x2

    .line 3
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    and-int/2addr v4, v5

    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    const/16 v3, 0x17c

    invoke-static {v2, v4, v1, v3}, Lk0/qt;->j(IIII)V

    goto/16 :goto_1e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x164

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_1e

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 5
    aget-byte v2, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 6
    aget-byte v7, v1, v7

    add-int/lit8 v13, p2, 0x4

    .line 7
    aget-byte v13, v1, v13

    add-int/lit8 v16, p2, 0x5

    .line 8
    aget-byte v11, v1, v16

    add-int/lit8 v16, p2, 0x6

    .line 9
    aget-byte v1, v1, v16

    new-array v3, v10, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v3, v9

    .line 10
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v4, v10, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v9

    .line 11
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v4, v10, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v9

    .line 12
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v4, v10, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v9

    .line 13
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v4, v10, [I

    shr-int/lit8 v16, v2, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v9

    .line 14
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 15
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v10, [I

    shr-int/lit8 v4, v7, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 16
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v10, [I

    shr-int/lit8 v4, v7, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 17
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    shr-int/lit8 v4, v7, 0x5

    and-int/lit8 v16, v4, 0x1

    aput v16, v3, v9

    .line 18
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v10, [I

    and-int/2addr v4, v5

    aput v4, v3, v9

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    and-int/lit8 v4, v7, 0xf

    aput v4, v3, v9

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 21
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0x1b

    const/16 v4, 0x1c

    if-nez v2, :cond_c

    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v10

    if-nez v2, :cond_7

    if-eqz v13, :cond_3

    if-eq v13, v14, :cond_2

    if-lez v13, :cond_1

    const/16 v2, 0x1d

    if-gt v13, v2, :cond_1

    new-array v2, v10, [I

    add-int/2addr v13, v6

    aput v13, v2, v9

    .line 22
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v10, [I

    aput v15, v2, v9

    .line 23
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 24
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 25
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    if-eqz v11, :cond_6

    if-eq v11, v14, :cond_5

    if-lez v11, :cond_4

    const/16 v2, 0x1d

    if-gt v11, v2, :cond_4

    new-array v2, v10, [I

    add-int/2addr v11, v6

    aput v11, v2, v9

    .line 26
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_4
    new-array v2, v10, [I

    aput v15, v2, v9

    .line 27
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_5
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 28
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_6
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 29
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_7
    if-eq v13, v15, :cond_9

    if-eqz v13, :cond_8

    new-array v2, v10, [I

    and-int/lit16 v5, v13, 0xff

    aput v5, v2, v9

    .line 30
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_8
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 31
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_9
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 32
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    if-eq v11, v15, :cond_b

    if-eqz v11, :cond_a

    new-array v2, v10, [I

    and-int/lit16 v3, v11, 0xff

    aput v3, v2, v9

    .line 33
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_a
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 34
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_b
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 35
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_c
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v10

    if-nez v2, :cond_13

    if-eqz v13, :cond_f

    if-eq v13, v14, :cond_e

    if-lez v13, :cond_d

    const/16 v2, 0x1d

    if-gt v13, v2, :cond_d

    new-array v2, v10, [I

    add-int/2addr v13, v6

    aput v13, v2, v9

    .line 36
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_d
    new-array v2, v10, [I

    aput v15, v2, v9

    .line 37
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_e
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 38
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 39
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    if-eqz v11, :cond_12

    if-eq v11, v14, :cond_11

    if-lez v11, :cond_10

    const/16 v2, 0x1d

    if-gt v11, v2, :cond_10

    new-array v2, v10, [I

    add-int/2addr v11, v6

    aput v11, v2, v9

    .line 40
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v2, v10, [I

    aput v15, v2, v9

    .line 41
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 42
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 43
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_13
    if-eq v13, v15, :cond_15

    if-eqz v13, :cond_14

    new-array v2, v10, [I

    and-int/lit16 v5, v13, 0xff

    aput v5, v2, v9

    .line 44
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_14
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 45
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_15
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 46
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_3
    if-eq v11, v15, :cond_17

    if-eqz v11, :cond_16

    new-array v2, v10, [I

    and-int/lit16 v4, v11, 0xff

    aput v4, v2, v9

    .line 47
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_16
    new-array v2, v10, [I

    aput v19, v2, v9

    .line 48
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_17
    new-array v2, v10, [I

    aput v18, v2, v9

    .line 49
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    const/16 v2, 0x43

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 50
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x37

    new-array v3, v10, [I

    shr-int/lit8 v5, v1, 0x1

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 51
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v10, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 52
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    const/4 v3, 0x6

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v2, v9

    const/16 v1, 0x10

    .line 53
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v10, [I

    aput v4, v2, v9

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x18

    move v3, v9

    :goto_5
    if-ge v3, v12, :cond_62

    new-array v4, v13, [I

    aput v3, v4, v9

    mul-int/lit8 v5, v3, 0x2

    add-int v5, p2, v5

    add-int/lit8 v6, v5, 0x3

    .line 56
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    const/4 v7, 0x4

    add-int/2addr v5, v7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v5, v6

    or-int/2addr v5, v2

    aput v5, v4, v10

    const/16 v5, 0x85

    .line 57
    iget-object v6, v0, Lmodule/canbus/g0;->c:[[I

    aget-object v6, v6, v3

    invoke-static {v5, v4, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 58
    iget-object v5, v0, Lmodule/canbus/g0;->c:[[I

    aput-object v4, v5, v3

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_3
    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 59
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    .line 60
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v7

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    .line 61
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v7

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    .line 62
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 63
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    .line 64
    aget-byte v6, v1, v4

    const/4 v8, 0x6

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 65
    aget-byte v6, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    .line 66
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    .line 67
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 68
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v10, [I

    .line 69
    aget-byte v6, v1, v4

    const/4 v8, 0x6

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    .line 70
    aget-byte v6, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    .line 71
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    .line 72
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    .line 73
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v10, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 74
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v10, [I

    .line 75
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    .line 76
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    .line 77
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 79
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_19

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 80
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 81
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_19
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 82
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 83
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 84
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 85
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    aput v1, v2, v9

    const/4 v1, 0x5

    .line 86
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 87
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 88
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    or-int/2addr v3, v4

    const v4, 0xffff

    if-ne v3, v4, :cond_1a

    move v3, v9

    :cond_1a
    const/16 v4, 0x81

    new-array v5, v10, [I

    or-int/2addr v3, v2

    aput v3, v5, v9

    .line 89
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    move v3, v9

    :goto_7
    const/4 v4, 0x5

    if-ge v3, v4, :cond_62

    new-array v4, v13, [I

    aput v3, v4, v9

    mul-int/lit8 v5, v3, 0x2

    add-int v5, p2, v5

    add-int/lit8 v6, v5, 0x5

    .line 90
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    const/4 v7, 0x6

    add-int/2addr v5, v7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v5, v6

    or-int/2addr v5, v2

    aput v5, v4, v10

    const/16 v5, 0x82

    .line 91
    iget-object v6, v0, Lmodule/canbus/g0;->b:[[I

    aget-object v6, v6, v3

    invoke-static {v5, v4, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 92
    iget-object v5, v0, Lmodule/canbus/g0;->b:[[I

    aput-object v4, v5, v3

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 93
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, p2, 0x3

    .line 94
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    const v5, 0xffff

    if-ne v4, v5, :cond_1c

    move v4, v9

    :cond_1c
    const/16 v5, 0x80

    new-array v6, v10, [I

    or-int/2addr v3, v4

    aput v3, v6, v9

    .line 95
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x84

    new-array v4, v10, [I

    .line 96
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    aput v1, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :pswitch_7
    add-int/lit8 v2, p2, 0x8

    .line 97
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x18

    const/16 v3, 0x7d

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x2

    .line 98
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    or-int/2addr v6, v2

    aput v6, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7e

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x4

    .line 99
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7f

    new-array v4, v10, [I

    add-int/lit8 v6, p2, 0x6

    .line 100
    aget-byte v7, v1, v6

    and-int/2addr v7, v8

    const/16 v11, 0x8

    shl-int/2addr v7, v11

    add-int/lit8 v5, p2, 0x7

    aget-byte v12, v1, v5

    and-int/2addr v12, v8

    or-int/2addr v7, v12

    or-int/2addr v2, v7

    aput v2, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 101
    aget-byte v2, v1, v6

    and-int/2addr v2, v8

    shl-int/2addr v2, v11

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    shl-int/2addr v1, v9

    or-int/2addr v1, v2

    const/16 v2, 0x83

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 103
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 104
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 105
    iput v2, v0, Lmodule/canbus/g0;->l:I

    move v2, v9

    .line 106
    :goto_8
    iget-object v3, v0, Lmodule/canbus/g0;->m:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 107
    iget v4, v0, Lmodule/canbus/g0;->l:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_1d

    if-eqz v4, :cond_1e

    .line 108
    iput v2, v0, Lmodule/canbus/g0;->k:I

    goto :goto_9

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    :goto_9
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_1f

    .line 109
    array-length v1, v3

    if-ge v2, v1, :cond_62

    .line 110
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_1f
    if-nez v1, :cond_62

    .line 111
    iget v1, v0, Lmodule/canbus/g0;->k:I

    array-length v2, v3

    if-ge v1, v2, :cond_20

    if-eq v1, v8, :cond_20

    .line 112
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 113
    :cond_20
    iput v8, v0, Lmodule/canbus/g0;->k:I

    goto/16 :goto_1e

    :pswitch_9
    add-int/lit8 v2, p2, 0x4

    .line 114
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x5

    .line 115
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x6

    .line 116
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x7

    .line 117
    aget-byte v6, v1, v6

    add-int/lit8 v11, p2, 0x8

    .line 118
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x9

    .line 119
    aget-byte v12, v1, v12

    const/16 v14, 0x62

    new-array v15, v10, [I

    add-int/lit8 v17, p2, 0x2

    .line 120
    aget-byte v18, v1, v17

    aput v18, v15, v9

    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    .line 121
    aget-byte v14, v1, v17

    if-ne v14, v10, :cond_21

    const/16 v1, 0x63

    new-array v8, v10, [I

    aput v2, v8, v9

    .line 122
    invoke-static {v1, v8}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v2, v10, [I

    .line 123
    invoke-static {v3, v4}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v10, [I

    and-int/lit8 v3, v6, 0x7

    aput v3, v2, v9

    .line 124
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v2, v10, [I

    and-int/lit8 v3, v11, 0x3

    aput v3, v2, v9

    .line 125
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    .line 126
    :cond_21
    aget-byte v1, v1, v17

    if-ne v1, v13, :cond_62

    const/16 v1, 0x69

    new-array v5, v10, [I

    and-int/2addr v2, v8

    aput v2, v5, v9

    .line 127
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6a

    new-array v2, v10, [I

    and-int/2addr v3, v8

    aput v3, v2, v9

    .line 128
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6b

    new-array v2, v10, [I

    and-int/lit16 v3, v4, 0xff

    aput v3, v2, v9

    .line 129
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v10, [I

    and-int/lit8 v3, v6, 0x1

    aput v3, v2, v9

    .line 130
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6d

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 131
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6e

    new-array v2, v10, [I

    shr-int/lit8 v3, v6, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 132
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6f

    new-array v2, v10, [I

    const/4 v3, 0x5

    shr-int/lit8 v3, v6, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 133
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x70

    new-array v2, v10, [I

    .line 134
    invoke-static {v11, v12}, Lo1/p0;->c(BB)I

    move-result v3

    aput v3, v2, v9

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 135
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 136
    aget-byte v3, v1, v3

    const/16 v4, 0x2b

    new-array v7, v10, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v10

    aput v11, v7, v9

    .line 137
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4e

    new-array v7, v10, [I

    const/4 v11, 0x5

    shr-int/2addr v2, v11

    and-int/2addr v2, v5

    aput v2, v7, v9

    .line 138
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    if-eqz v3, :cond_24

    if-eq v3, v14, :cond_23

    if-lt v3, v10, :cond_22

    const/16 v2, 0x1d

    if-gt v3, v2, :cond_22

    const/16 v2, 0x28

    new-array v4, v10, [I

    and-int/2addr v3, v8

    add-int/2addr v3, v6

    aput v3, v4, v9

    .line 139
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_22
    const/16 v2, 0x28

    new-array v3, v10, [I

    aput v15, v3, v9

    .line 140
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_23
    const/16 v2, 0x28

    new-array v3, v10, [I

    aput v18, v3, v9

    .line 141
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_24
    const/16 v2, 0x28

    new-array v3, v10, [I

    aput v19, v3, v9

    .line 142
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v2, 0x30

    new-array v3, v10, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 143
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v10, [I

    .line 144
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v10, [I

    .line 145
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v10, [I

    .line 146
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 147
    aget-byte v2, v1, v2

    const/16 v3, 0x11

    new-array v5, v10, [I

    shr-int/lit8 v11, v2, 0x0

    and-int/2addr v11, v10

    aput v11, v5, v9

    .line 148
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x21

    new-array v5, v10, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v10

    aput v11, v5, v9

    .line 149
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 150
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4c

    new-array v5, v10, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 151
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 152
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_62

    add-int/lit8 v2, p2, 0x3

    .line 153
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    const-string v2, "persist.fyt.temperature"

    .line 154
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_26

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_25

    rsub-int v1, v1, 0x100

    mul-int/lit8 v1, v1, 0x12

    rsub-int v1, v1, 0x528

    goto :goto_b

    :cond_25
    mul-int/lit8 v1, v1, 0x12

    add-int/lit16 v1, v1, 0x528

    :goto_b
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/2addr v1, v15

    goto :goto_d

    :cond_26
    and-int/lit16 v2, v1, 0x80

    if-lez v2, :cond_27

    goto :goto_c

    :cond_27
    move v9, v10

    :goto_c
    if-eqz v9, :cond_28

    mul-int/2addr v1, v4

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_d

    :cond_28
    rsub-int v1, v1, 0x100

    mul-int/2addr v1, v4

    rsub-int v1, v1, 0x3e8

    .line 155
    :goto_d
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_1e

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 156
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v4, p2, 0x3

    .line 157
    aget-byte v5, v1, v4

    and-int/2addr v5, v8

    add-int/lit8 v6, p2, 0x4

    .line 158
    aget-byte v7, v1, v6

    and-int/2addr v7, v8

    const/4 v11, 0x5

    add-int/lit8 v11, p2, 0x5

    .line 159
    aget-byte v12, v1, v11

    and-int/2addr v12, v8

    if-nez v3, :cond_29

    if-nez v5, :cond_29

    if-nez v7, :cond_29

    if-nez v12, :cond_29

    .line 160
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_e

    .line 161
    :cond_29
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_2a

    sget v9, Ll0/c0;->h:I

    if-ne v9, v5, :cond_2a

    sget v9, Ll0/c0;->i:I

    if-ne v9, v7, :cond_2a

    sget v9, Ll0/c0;->j:I

    if-eq v9, v12, :cond_2b

    .line 162
    :cond_2a
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_2b

    .line 163
    invoke-static {v10}, Lu0/d;->C2(I)V

    const/4 v9, 0x4

    .line 164
    sput v9, Ll0/c0;->k:I

    .line 165
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 166
    :cond_2b
    :goto_e
    sput v3, Ll0/c0;->g:I

    .line 167
    sput v5, Ll0/c0;->h:I

    .line 168
    sput v7, Ll0/c0;->i:I

    .line 169
    sput v12, Ll0/c0;->j:I

    .line 170
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 171
    aget-byte v2, v1, v4

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 172
    aget-byte v2, v1, v6

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 173
    aget-byte v1, v1, v11

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1e

    .line 174
    :cond_2c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v2, p2, 0x5

    .line 175
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    .line 176
    aget-byte v3, v1, v3

    and-int/2addr v2, v8

    const/16 v3, 0x77

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 177
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3f

    .line 178
    invoke-static {v2, v9, v3}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lmodule/canbus/g0;->A:I

    if-ne v2, v10, :cond_2d

    .line 179
    sput v10, Lmodule/canbus/g0;->A:I

    :cond_2d
    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 180
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 181
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 182
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 183
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 184
    aget-byte v4, v1, v4

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 185
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v10, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 186
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    .line 187
    :cond_2e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 188
    :cond_2f
    iget-byte v2, v0, Lmodule/canbus/g0;->t:B

    const/16 v3, 0x10

    if-eq v2, v3, :cond_30

    goto/16 :goto_1e

    :cond_30
    add-int/lit8 v2, p2, 0x2

    .line 189
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 190
    aget-byte v1, v1, v3

    .line 191
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v10, :cond_48

    .line 192
    sget v3, Lu0/b;->D:I

    const/16 v6, 0xb

    if-eq v3, v6, :cond_37

    const/16 v6, 0xd

    if-eq v3, v6, :cond_37

    const/4 v3, 0x4

    if-eq v2, v3, :cond_36

    const/4 v3, 0x5

    if-ne v2, v3, :cond_31

    goto :goto_11

    :cond_31
    if-ne v2, v5, :cond_32

    const/16 v2, 0x7c

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 193
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    .line 194
    :cond_32
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_35

    and-int/2addr v2, v8

    .line 195
    iput v2, v0, Lmodule/canbus/g0;->f:I

    move v2, v9

    .line 196
    :goto_f
    iget-object v3, v0, Lmodule/canbus/g0;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_34

    .line 197
    iget v4, v0, Lmodule/canbus/g0;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_33

    if-eqz v4, :cond_34

    .line 198
    iput v2, v0, Lmodule/canbus/g0;->e:I

    goto :goto_10

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 199
    :cond_34
    :goto_10
    iget v4, v0, Lmodule/canbus/g0;->f:I

    if-eqz v4, :cond_62

    if-ne v1, v10, :cond_62

    .line 200
    array-length v1, v3

    if-ge v2, v1, :cond_62

    .line 201
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 202
    iget-object v1, v0, Lmodule/canbus/g0;->g:[[I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_35
    if-le v2, v7, :cond_62

    .line 203
    invoke-virtual {v0, v2}, Lmodule/canbus/g0;->s3(I)V

    goto/16 :goto_1e

    :cond_36
    :goto_11
    const/16 v2, 0x7b

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 204
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    .line 205
    :cond_37
    sget v3, Lk0/nt;->c:I

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3f

    if-eq v3, v4, :cond_3f

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3f

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3f

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3f

    const/16 v4, 0xe

    if-eq v3, v4, :cond_3f

    if-eq v3, v12, :cond_3f

    const/16 v4, 0x10

    if-eq v3, v4, :cond_3f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3e

    const/4 v3, 0x5

    if-ne v2, v3, :cond_38

    goto :goto_15

    :cond_38
    if-ne v2, v5, :cond_39

    const/16 v2, 0x7c

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 206
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_39
    const/16 v3, 0x8

    if-eq v2, v3, :cond_3d

    if-eq v2, v6, :cond_3d

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3a

    goto :goto_14

    :cond_3a
    and-int/2addr v2, v8

    .line 207
    iput v2, v0, Lmodule/canbus/g0;->f:I

    move v2, v9

    .line 208
    :goto_12
    iget-object v3, v0, Lmodule/canbus/g0;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3c

    .line 209
    iget v4, v0, Lmodule/canbus/g0;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_3b

    if-eqz v4, :cond_3c

    .line 210
    iput v2, v0, Lmodule/canbus/g0;->e:I

    goto :goto_13

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 211
    :cond_3c
    :goto_13
    iget v4, v0, Lmodule/canbus/g0;->f:I

    if-eqz v4, :cond_62

    if-ne v1, v10, :cond_62

    .line 212
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 213
    iget-object v1, v0, Lmodule/canbus/g0;->g:[[I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    .line 214
    :cond_3d
    :goto_14
    invoke-virtual {v0, v2}, Lmodule/canbus/g0;->s3(I)V

    goto/16 :goto_1e

    :cond_3e
    :goto_15
    const/16 v2, 0x7b

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 215
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_3f
    const/16 v3, 0x20

    if-ne v2, v3, :cond_40

    if-ne v1, v10, :cond_40

    const/4 v3, 0x5

    .line 216
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 217
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 218
    sget-object v1, Lu0/b;->c:Lu0/h;

    invoke-interface {v1, v9}, Lu0/h;->c(I)V

    goto/16 :goto_1e

    :cond_40
    const/16 v3, 0x21

    if-ne v2, v3, :cond_41

    if-ne v1, v10, :cond_41

    .line 219
    invoke-static {v10, v9}, Ll0/b0;->l0(II)V

    .line 220
    invoke-static {v10, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_41
    if-ne v2, v13, :cond_42

    if-ne v1, v10, :cond_42

    .line 221
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    .line 222
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_42
    if-ne v2, v7, :cond_43

    if-ne v1, v10, :cond_43

    const/16 v3, 0x8

    .line 223
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 224
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_43
    if-ne v2, v10, :cond_44

    if-ne v1, v10, :cond_44

    const/16 v1, 0x19

    .line 225
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 226
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_44
    const/4 v3, 0x6

    if-ne v2, v3, :cond_45

    if-ne v1, v10, :cond_45

    .line 227
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    .line 228
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_45
    const/4 v3, 0x4

    if-eq v2, v3, :cond_47

    const/4 v3, 0x5

    if-ne v2, v3, :cond_46

    goto :goto_16

    :cond_46
    if-ne v2, v5, :cond_62

    const/16 v2, 0x7c

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 229
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_47
    :goto_16
    const/16 v2, 0x7b

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 230
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    .line 231
    :cond_48
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_62

    and-int/2addr v2, v8

    .line 232
    iput v2, v0, Lmodule/canbus/g0;->f:I

    move v2, v9

    .line 233
    :goto_17
    iget-object v3, v0, Lmodule/canbus/g0;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4a

    .line 234
    iget v4, v0, Lmodule/canbus/g0;->f:I

    aget-object v6, v3, v2

    aget v6, v6, v9

    if-ne v4, v6, :cond_49

    if-eqz v4, :cond_4a

    .line 235
    iput v2, v0, Lmodule/canbus/g0;->e:I

    goto :goto_18

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 236
    :cond_4a
    :goto_18
    iget v4, v0, Lmodule/canbus/g0;->f:I

    if-eq v4, v13, :cond_4f

    if-eq v4, v7, :cond_4d

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_4b

    .line 237
    array-length v1, v3

    if-ge v2, v1, :cond_62

    .line 238
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_4b
    if-nez v1, :cond_62

    .line 239
    iget v1, v0, Lmodule/canbus/g0;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_4c

    if-eq v1, v8, :cond_4c

    .line 240
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 241
    :cond_4c
    iput v8, v0, Lmodule/canbus/g0;->e:I

    goto/16 :goto_1e

    :cond_4d
    move v2, v9

    :goto_19
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_4e

    const/16 v3, 0x8

    .line 242
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_4e
    const/16 v3, 0x8

    .line 243
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_4f
    move v2, v9

    :goto_1a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_50

    .line 244
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 245
    :cond_50
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_1e

    :cond_51
    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 246
    aget-byte v6, v1, v4

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 247
    iget-object v2, v0, Lmodule/canbus/g0;->d:[I

    if-eqz v2, :cond_62

    array-length v3, v2

    if-lt v3, v5, :cond_62

    .line 248
    aget-byte v3, v1, v4

    aput v3, v2, v9

    :goto_1b
    if-ge v10, v5, :cond_53

    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v3, v10, -0x1

    mul-int/2addr v3, v13

    add-int/2addr v2, v3

    .line 249
    aget-byte v2, v1, v2

    const/4 v4, 0x4

    add-int/lit8 v6, p2, 0x4

    add-int/2addr v6, v3

    aget-byte v3, v1, v6

    invoke-static {v2, v3}, Lo1/p0;->c(BB)I

    move-result v2

    .line 250
    iget-object v3, v0, Lmodule/canbus/g0;->d:[I

    aget v4, v3, v10

    if-eq v4, v2, :cond_52

    .line 251
    aput v2, v3, v10

    :cond_52
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 252
    :cond_53
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    const/16 v2, 0x67

    iget-object v3, v0, Lmodule/canbus/g0;->d:[I

    invoke-static {v1, v2, v3}, Lo1/x;->B([Lo1/x;I[I)V

    goto/16 :goto_1e

    :cond_54
    const/16 v2, 0xb5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 253
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 254
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 255
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 256
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 257
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v10, [I

    .line 258
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 259
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v10, [I

    .line 260
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_55
    const/16 v2, 0x408

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 261
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    invoke-static {v4, v1}, Lo1/p0;->c(BB)I

    move-result v1

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_56
    const/16 v2, 0xa0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 262
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 263
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 264
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 265
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 266
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 267
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v10, [I

    .line 268
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v10, [I

    .line 269
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v10, [I

    .line 270
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v10, [I

    .line 271
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_57
    const/16 v2, 0x9d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 272
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 273
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v10, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 274
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_58
    const/4 v4, 0x4

    const/16 v2, 0x99

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 275
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v10, [I

    .line 276
    aget-byte v4, v1, v5

    shr-int/2addr v4, v13

    and-int/2addr v4, v7

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v10, [I

    .line 277
    aget-byte v1, v1, v5

    shr-int/2addr v1, v9

    and-int/2addr v1, v7

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_59
    const/16 v2, 0xaa

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 278
    aget-byte v6, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    and-int/2addr v6, v7

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v10, [I

    .line 279
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v10, [I

    .line 280
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 281
    aget-byte v6, v1, v4

    const/4 v8, 0x6

    shr-int/2addr v6, v8

    and-int/2addr v6, v7

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v10, [I

    .line 282
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v10, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 283
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v10, [I

    .line 284
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v10, [I

    .line 285
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v10, [I

    .line 286
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v10, [I

    .line 287
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v7

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v10, [I

    .line 288
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1e

    :cond_5a
    add-int/lit8 v2, p2, 0x2

    .line 289
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 290
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 291
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 292
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto :goto_1e

    :cond_5b
    add-int/lit8 v2, p2, 0x2

    .line 293
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 294
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 295
    iput v2, v0, Lmodule/canbus/g0;->i:I

    move v2, v9

    .line 296
    :goto_1c
    iget-object v3, v0, Lmodule/canbus/g0;->j:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_5d

    .line 297
    iget v4, v0, Lmodule/canbus/g0;->i:I

    aget-object v6, v3, v2

    aget v6, v6, v9

    if-ne v4, v6, :cond_5c

    if-eqz v4, :cond_5d

    .line 298
    iput v2, v0, Lmodule/canbus/g0;->h:I

    goto :goto_1d

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 299
    :cond_5d
    :goto_1d
    iget v4, v0, Lmodule/canbus/g0;->i:I

    if-eq v4, v5, :cond_60

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_5e

    .line 300
    array-length v1, v3

    if-ge v2, v1, :cond_62

    .line 301
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto :goto_1e

    :cond_5e
    if-nez v1, :cond_62

    .line 302
    iget v1, v0, Lmodule/canbus/g0;->h:I

    array-length v2, v3

    if-ge v1, v2, :cond_5f

    if-eq v1, v8, :cond_5f

    .line 303
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 304
    :cond_5f
    iput v8, v0, Lmodule/canbus/g0;->h:I

    goto :goto_1e

    :cond_60
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_62

    .line 305
    sget v1, Lh0/c;->E:I

    if-eq v1, v7, :cond_61

    const/4 v2, 0x4

    if-eq v1, v2, :cond_61

    const/4 v2, 0x5

    if-eq v1, v2, :cond_61

    const/4 v1, 0x6

    .line 306
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 307
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_1e

    :cond_61
    const/16 v1, 0x1a

    .line 308
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 309
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    :cond_62
    :goto_1e
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/g0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g0;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g0;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/g0;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g0;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lmodule/canbus/g0;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/g0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xbd

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
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x51

    const/4 v4, 0x7

    const/16 v5, 0x98

    const/16 v6, 0x9

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0xe3

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-eq v1, v3, :cond_2

    const/16 v3, 0x405

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {v0, v2, v15}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x97

    aput v3, v1, v13

    aput v15, v1, v15

    .line 2
    aget v3, v2, v14

    aput v3, v1, v10

    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x72

    aput v3, v1, v13

    aput v15, v1, v15

    .line 3
    aget v3, v2, v14

    aput v3, v1, v10

    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x83

    aput v3, v1, v13

    aput v15, v1, v15

    .line 4
    aget v3, v2, v14

    aput v3, v1, v10

    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x84

    aput v3, v1, v13

    aput v15, v1, v15

    .line 5
    aget v3, v2, v14

    aput v3, v1, v10

    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {v0, v2, v15}, Lmodule/canbus/g0;->r3([II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x71

    aput v3, v1, v13

    aput v15, v1, v15

    .line 7
    aget v3, v2, v14

    aput v3, v1, v10

    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :pswitch_5
    invoke-virtual {v0, v2, v15}, Lmodule/canbus/g0;->r3([II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x74

    aput v3, v1, v13

    aput v15, v1, v15

    .line 9
    aget v3, v2, v14

    aput v3, v1, v10

    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    invoke-virtual {v0, v2, v13}, Lmodule/canbus/g0;->r3([II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x90

    aput v3, v1, v13

    aput v15, v1, v15

    .line 11
    aget v2, v2, v14

    aput v2, v1, v10

    aput v14, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 12
    :pswitch_7
    invoke-virtual {v0, v2, v15}, Lmodule/canbus/g0;->r3([II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v12, [I

    aput v11, v1, v14

    const/16 v3, 0x8a

    aput v3, v1, v13

    aput v15, v1, v15

    .line 13
    aget v3, v2, v14

    aput v3, v1, v10

    aget v2, v2, v13

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v2, v15}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    aget v1, v2, v13

    mul-int/lit16 v1, v1, 0x3ff

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 16
    aget v3, v2, v15

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v16

    div-int v3, v3, v16

    .line 17
    aget v16, v2, v14

    if-nez v16, :cond_1

    new-array v2, v6, [I

    aput v11, v2, v14

    aput v5, v2, v13

    aput v7, v2, v15

    aput v13, v2, v10

    shr-int/lit8 v5, v1, 0x8

    aput v5, v2, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v12

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v7

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v4

    aput v14, v2, v8

    .line 18
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :cond_1
    aget v2, v2, v14

    if-ne v2, v13, :cond_4

    new-array v2, v6, [I

    aput v11, v2, v14

    aput v5, v2, v13

    aput v7, v2, v15

    aput v14, v2, v10

    shr-int/lit8 v5, v1, 0x8

    aput v5, v2, v9

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v12

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v7

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v4

    aput v14, v2, v8

    .line 20
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 21
    array-length v1, v2

    if-le v1, v15, :cond_4

    .line 22
    aget v1, v2, v14

    if-ne v1, v13, :cond_3

    new-array v1, v6, [I

    aput v11, v1, v14

    aput v5, v1, v13

    aput v7, v1, v15

    aput v13, v1, v10

    .line 23
    aget v3, v2, v13

    shr-int/2addr v3, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v9

    aget v3, v2, v13

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v12

    aget v3, v2, v15

    shr-int/2addr v3, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v7

    aget v2, v2, v15

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    aput v14, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 24
    :cond_3
    aget v1, v2, v14

    if-nez v1, :cond_4

    new-array v1, v6, [I

    aput v11, v1, v14

    aput v5, v1, v13

    aput v7, v1, v15

    aput v14, v1, v10

    .line 25
    aget v3, v2, v13

    shr-int/2addr v3, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v9

    aget v3, v2, v13

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v12

    aget v3, v2, v15

    shr-int/2addr v3, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v7

    aget v2, v2, v15

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    aput v14, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    sget-object v0, Lmodule/canbus/g0;->C:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/g0;->B:I

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/g0;->D:Lo1/f;

    new-instance v1, Lmodule/canbus/g0$h;

    const/4 v2, 0x7

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/g0$h;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final q3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/g0;->Z2(I)V

    return-void
.end method

.method public final r3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x74

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x64

    .line 2
    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

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

.method public final t3(IIII)V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x72

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v3, 0x3

    aput p1, v0, v3

    const/4 v4, 0x4

    aput p2, v0, v4

    const/4 v4, 0x5

    aput p3, v0, v4

    const/4 v4, 0x6

    aput p4, v0, v4

    const/4 v4, 0x7

    aput v3, v0, v4

    shl-int/2addr p1, v1

    not-int p1, p1

    const/16 v3, 0x8

    aput p1, v0, v3

    shl-int/lit8 p1, p2, 0x2

    not-int p1, p1

    aput p1, v0, v2

    shl-int/lit8 p1, p3, 0x2

    not-int p1, p1

    const/16 p2, 0xa

    aput p1, v0, p2

    shl-int/lit8 p1, p4, 0x2

    not-int p1, p1

    const/16 p2, 0xb

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final declared-synchronized u3()V
    .locals 2

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
    sget v0, Lmodule/canbus/g0;->B:I

    const/4 v1, 0x7

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/g0;->p3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
