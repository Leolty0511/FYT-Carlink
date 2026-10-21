.class public Lmodule/canbus/s;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/s$y;,
        Lmodule/canbus/s$x;
    }
.end annotation


# static fields
.field public static A0:I

.field public static B0:I

.field public static C0:I

.field public static D0:I

.field public static E0:I

.field public static final F0:[I

.field public static final G0:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/s$x;",
            ">;"
        }
    .end annotation
.end field

.field public static final x0:[I

.field public static final y0:[I

.field public static z0:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Z

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:F

.field public L:I

.field public M:I

.field public N:Ljava/lang/Runnable;

.field public O:Ljava/lang/Runnable;

.field public P:Ljava/lang/Runnable;

.field public Q:Lmodule/canbus/s$y;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public final b:[I

.field public b0:I

.field public c:Lo1/g0;

.field public final c0:Ljava/lang/Runnable;

.field public final d:I

.field public d0:B

.field public final e:I

.field public e0:Ljava/lang/Runnable;

.field public final f:I

.field public f0:Ljava/lang/Runnable;

.field public g:I

.field public g0:Ljava/lang/Runnable;

.field public h:I

.field public h0:Ljava/lang/Runnable;

.field public i:Z

.field public i0:Ljava/lang/Runnable;

.field public j:Ljava/lang/String;

.field public j0:Ljava/lang/Runnable;

.field public k:I

.field public k0:Ljava/lang/Runnable;

.field public l:I

.field public l0:Ljava/lang/Runnable;

.field public m:I

.field public m0:Ljava/lang/Runnable;

.field public n:[[I

.field public n0:Ljava/lang/Runnable;

.field public o:I

.field public o0:I

.field public p:I

.field public p0:I

.field public q:[[I

.field public q0:I

.field public r:I

.field public r0:I

.field public s:I

.field public s0:I

.field public t:[[I

.field public t0:Z

.field public u:I

.field public u0:I

.field public v:Ljava/lang/Runnable;

.field public v0:Ljava/lang/Runnable;

.field public w:I

.field public w0:I

.field public x:Ljava/lang/Runnable;

.field public y:I

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lmodule/canbus/s;->x0:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lmodule/canbus/s;->y0:[I

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/s;->z0:[I

    const/4 v0, 0x0

    .line 4
    sput v0, Lmodule/canbus/s;->A0:I

    .line 5
    sput v0, Lmodule/canbus/s;->B0:I

    const/4 v0, 0x1

    .line 6
    sput v0, Lmodule/canbus/s;->C0:I

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/s;->F0:[I

    .line 8
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/s;->G0:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x3
        0x7
        0x2
        0x8
        0x4
        0x6
        0x5
        0x1
        0x1
        0x21
        0x21
        0x1
        0x1
        0x1
        0x1
        0x21
        0x21
        0x6
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
        0x7
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
        0x24
        0x26
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xc

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    iput-object v2, v0, Lmodule/canbus/s;->b:[I

    .line 3
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lmodule/canbus/s;->c:Lo1/g0;

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lmodule/canbus/s;->d:I

    const/4 v3, 0x2

    .line 5
    iput v3, v0, Lmodule/canbus/s;->e:I

    const/4 v5, 0x3

    .line 6
    iput v5, v0, Lmodule/canbus/s;->f:I

    const/4 v6, 0x0

    .line 7
    iput v6, v0, Lmodule/canbus/s;->g:I

    .line 8
    iput v6, v0, Lmodule/canbus/s;->h:I

    .line 9
    iput-boolean v6, v0, Lmodule/canbus/s;->i:Z

    .line 10
    iput v6, v0, Lmodule/canbus/s;->k:I

    .line 11
    iput v6, v0, Lmodule/canbus/s;->m:I

    const/16 v7, 0x3d

    new-array v7, v7, [[I

    new-array v8, v3, [I

    .line 12
    fill-array-data v8, :array_1

    aput-object v8, v7, v6

    new-array v8, v3, [I

    fill-array-data v8, :array_2

    aput-object v8, v7, v2

    new-array v8, v3, [I

    fill-array-data v8, :array_3

    aput-object v8, v7, v3

    new-array v8, v3, [I

    fill-array-data v8, :array_4

    aput-object v8, v7, v5

    new-array v8, v3, [I

    fill-array-data v8, :array_5

    const/4 v9, 0x4

    aput-object v8, v7, v9

    new-array v8, v3, [I

    fill-array-data v8, :array_6

    const/4 v10, 0x5

    aput-object v8, v7, v10

    new-array v8, v3, [I

    fill-array-data v8, :array_7

    const/4 v11, 0x6

    aput-object v8, v7, v11

    new-array v8, v3, [I

    fill-array-data v8, :array_8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    new-array v8, v3, [I

    fill-array-data v8, :array_9

    const/16 v13, 0x8

    aput-object v8, v7, v13

    new-array v8, v3, [I

    fill-array-data v8, :array_a

    const/16 v14, 0x9

    aput-object v8, v7, v14

    new-array v8, v3, [I

    fill-array-data v8, :array_b

    const/16 v15, 0xa

    aput-object v8, v7, v15

    new-array v8, v3, [I

    fill-array-data v8, :array_c

    const/16 v16, 0xb

    aput-object v8, v7, v16

    new-array v8, v3, [I

    fill-array-data v8, :array_d

    aput-object v8, v7, v1

    new-array v8, v3, [I

    fill-array-data v8, :array_e

    const/16 v17, 0xd

    aput-object v8, v7, v17

    new-array v8, v3, [I

    fill-array-data v8, :array_f

    const/16 v18, 0xe

    aput-object v8, v7, v18

    new-array v8, v3, [I

    fill-array-data v8, :array_10

    const/16 v19, 0xf

    aput-object v8, v7, v19

    new-array v8, v3, [I

    fill-array-data v8, :array_11

    const/16 v20, 0x10

    aput-object v8, v7, v20

    new-array v8, v3, [I

    fill-array-data v8, :array_12

    const/16 v21, 0x11

    aput-object v8, v7, v21

    new-array v8, v3, [I

    fill-array-data v8, :array_13

    const/16 v22, 0x12

    aput-object v8, v7, v22

    new-array v8, v3, [I

    fill-array-data v8, :array_14

    const/16 v23, 0x13

    aput-object v8, v7, v23

    new-array v8, v3, [I

    fill-array-data v8, :array_15

    const/16 v24, 0x14

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_16

    const/16 v24, 0x15

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_17

    const/16 v24, 0x16

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_18

    const/16 v24, 0x17

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_19

    const/16 v24, 0x18

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_1a

    const/16 v24, 0x19

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_1b

    const/16 v24, 0x1a

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_1c

    const/16 v24, 0x1b

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_1d

    const/16 v24, 0x1c

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_1e

    const/16 v24, 0x1d

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_1f

    const/16 v24, 0x1e

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_20

    const/16 v24, 0x1f

    aput-object v8, v7, v24

    new-array v8, v3, [I

    fill-array-data v8, :array_21

    aput-object v8, v7, v4

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    const/16 v8, 0x21

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_23

    const/16 v8, 0x22

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_24

    const/16 v8, 0x23

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_25

    const/16 v8, 0x24

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_26

    const/16 v8, 0x25

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_27

    const/16 v8, 0x26

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_28

    const/16 v8, 0x27

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_29

    const/16 v8, 0x28

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2a

    const/16 v8, 0x29

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    const/16 v8, 0x2a

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    const/16 v8, 0x2b

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    const/16 v8, 0x2c

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    const/16 v8, 0x2d

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    const/16 v8, 0x2e

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    const/16 v8, 0x2f

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    const/16 v8, 0x30

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    const/16 v8, 0x31

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    const/16 v8, 0x32

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    const/16 v8, 0x33

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    const/16 v8, 0x34

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    const/16 v8, 0x35

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    const/16 v8, 0x36

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    const/16 v8, 0x37

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    const/16 v8, 0x38

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    const/16 v8, 0x39

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_3b

    const/16 v8, 0x3a

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    const/16 v8, 0x3b

    aput-object v4, v7, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_3d

    const/16 v8, 0x3c

    aput-object v4, v7, v8

    iput-object v7, v0, Lmodule/canbus/s;->n:[[I

    .line 13
    iput v6, v0, Lmodule/canbus/s;->p:I

    new-array v4, v13, [[I

    new-array v7, v3, [I

    .line 14
    fill-array-data v7, :array_3e

    aput-object v7, v4, v6

    new-array v7, v3, [I

    fill-array-data v7, :array_3f

    aput-object v7, v4, v2

    new-array v7, v3, [I

    fill-array-data v7, :array_40

    aput-object v7, v4, v3

    new-array v7, v3, [I

    fill-array-data v7, :array_41

    aput-object v7, v4, v5

    new-array v7, v3, [I

    fill-array-data v7, :array_42

    aput-object v7, v4, v9

    new-array v7, v3, [I

    fill-array-data v7, :array_43

    aput-object v7, v4, v10

    new-array v7, v3, [I

    fill-array-data v7, :array_44

    aput-object v7, v4, v11

    new-array v7, v3, [I

    fill-array-data v7, :array_45

    aput-object v7, v4, v12

    iput-object v4, v0, Lmodule/canbus/s;->q:[[I

    .line 15
    iput v6, v0, Lmodule/canbus/s;->s:I

    const/16 v4, 0x1c

    new-array v4, v4, [[I

    new-array v7, v3, [I

    .line 16
    fill-array-data v7, :array_46

    aput-object v7, v4, v6

    new-array v7, v3, [I

    fill-array-data v7, :array_47

    aput-object v7, v4, v2

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v4, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_49

    aput-object v2, v4, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_4a

    aput-object v2, v4, v9

    new-array v2, v3, [I

    fill-array-data v2, :array_4b

    aput-object v2, v4, v10

    new-array v2, v3, [I

    fill-array-data v2, :array_4c

    aput-object v2, v4, v11

    new-array v2, v3, [I

    fill-array-data v2, :array_4d

    aput-object v2, v4, v12

    new-array v2, v3, [I

    fill-array-data v2, :array_4e

    aput-object v2, v4, v13

    new-array v2, v3, [I

    fill-array-data v2, :array_4f

    aput-object v2, v4, v14

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v4, v15

    new-array v2, v3, [I

    fill-array-data v2, :array_51

    aput-object v2, v4, v16

    new-array v2, v3, [I

    fill-array-data v2, :array_52

    aput-object v2, v4, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_53

    aput-object v1, v4, v17

    new-array v1, v3, [I

    fill-array-data v1, :array_54

    aput-object v1, v4, v18

    new-array v1, v3, [I

    fill-array-data v1, :array_55

    aput-object v1, v4, v19

    new-array v1, v3, [I

    fill-array-data v1, :array_56

    aput-object v1, v4, v20

    new-array v1, v3, [I

    fill-array-data v1, :array_57

    aput-object v1, v4, v21

    new-array v1, v3, [I

    fill-array-data v1, :array_58

    aput-object v1, v4, v22

    new-array v1, v3, [I

    fill-array-data v1, :array_59

    aput-object v1, v4, v23

    new-array v1, v3, [I

    fill-array-data v1, :array_5a

    const/16 v2, 0x14

    aput-object v1, v4, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5b

    const/16 v2, 0x15

    aput-object v1, v4, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5c

    const/16 v2, 0x16

    aput-object v1, v4, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5d

    const/16 v2, 0x17

    aput-object v1, v4, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5e

    const/16 v2, 0x18

    aput-object v1, v4, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_5f

    const/16 v2, 0x19

    aput-object v1, v4, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_60

    const/16 v2, 0x1a

    aput-object v1, v4, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_61

    const/16 v2, 0x1b

    aput-object v1, v4, v2

    iput-object v4, v0, Lmodule/canbus/s;->t:[[I

    .line 17
    iput v6, v0, Lmodule/canbus/s;->u:I

    .line 18
    new-instance v1, Lmodule/canbus/s$k;

    invoke-direct {v1, v0}, Lmodule/canbus/s$k;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    .line 19
    iput v6, v0, Lmodule/canbus/s;->w:I

    .line 20
    new-instance v1, Lmodule/canbus/s$p;

    invoke-direct {v1, v0}, Lmodule/canbus/s$p;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 21
    iput v1, v0, Lmodule/canbus/s;->y:I

    .line 22
    new-instance v1, Lmodule/canbus/s$q;

    invoke-direct {v1, v0}, Lmodule/canbus/s$q;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->z:Ljava/lang/Runnable;

    .line 23
    new-instance v1, Lmodule/canbus/s$r;

    invoke-direct {v1, v0}, Lmodule/canbus/s$r;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->A:Ljava/lang/Runnable;

    .line 24
    iput-boolean v6, v0, Lmodule/canbus/s;->B:Z

    .line 25
    iput-boolean v6, v0, Lmodule/canbus/s;->C:Z

    .line 26
    iput-boolean v6, v0, Lmodule/canbus/s;->D:Z

    .line 27
    iput v6, v0, Lmodule/canbus/s;->E:I

    .line 28
    iput-boolean v6, v0, Lmodule/canbus/s;->F:Z

    .line 29
    new-instance v1, Lmodule/canbus/s$s;

    invoke-direct {v1, v0}, Lmodule/canbus/s$s;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->G:Ljava/lang/Runnable;

    .line 30
    new-instance v1, Lmodule/canbus/s$t;

    invoke-direct {v1, v0}, Lmodule/canbus/s$t;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->H:Ljava/lang/Runnable;

    .line 31
    new-instance v1, Lmodule/canbus/s$u;

    invoke-direct {v1, v0}, Lmodule/canbus/s$u;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->I:Ljava/lang/Runnable;

    .line 32
    new-instance v1, Lmodule/canbus/s$v;

    invoke-direct {v1, v0}, Lmodule/canbus/s$v;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->J:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lmodule/canbus/s;->K:F

    const/16 v1, 0xff

    .line 34
    iput v1, v0, Lmodule/canbus/s;->L:I

    .line 35
    iput v1, v0, Lmodule/canbus/s;->M:I

    .line 36
    new-instance v2, Lmodule/canbus/s$w;

    invoke-direct {v2, v0}, Lmodule/canbus/s$w;-><init>(Lmodule/canbus/s;)V

    iput-object v2, v0, Lmodule/canbus/s;->N:Ljava/lang/Runnable;

    .line 37
    new-instance v2, Lmodule/canbus/s$a;

    invoke-direct {v2, v0}, Lmodule/canbus/s$a;-><init>(Lmodule/canbus/s;)V

    iput-object v2, v0, Lmodule/canbus/s;->O:Ljava/lang/Runnable;

    .line 38
    new-instance v2, Lmodule/canbus/s$b;

    invoke-direct {v2, v0}, Lmodule/canbus/s$b;-><init>(Lmodule/canbus/s;)V

    iput-object v2, v0, Lmodule/canbus/s;->P:Ljava/lang/Runnable;

    const-string v2, ""

    .line 39
    iput-object v2, v0, Lmodule/canbus/s;->R:Ljava/lang/String;

    const-string v2, ""

    .line 40
    iput-object v2, v0, Lmodule/canbus/s;->S:Ljava/lang/String;

    .line 41
    iput v6, v0, Lmodule/canbus/s;->T:I

    .line 42
    iput v6, v0, Lmodule/canbus/s;->U:I

    .line 43
    iput v6, v0, Lmodule/canbus/s;->V:I

    .line 44
    iput v6, v0, Lmodule/canbus/s;->W:I

    .line 45
    iput v6, v0, Lmodule/canbus/s;->X:I

    .line 46
    iput v6, v0, Lmodule/canbus/s;->Y:I

    .line 47
    iput v6, v0, Lmodule/canbus/s;->Z:I

    .line 48
    iput v6, v0, Lmodule/canbus/s;->a0:I

    .line 49
    iput v1, v0, Lmodule/canbus/s;->b0:I

    .line 50
    new-instance v1, Lmodule/canbus/s$c;

    invoke-direct {v1, v0}, Lmodule/canbus/s$c;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->c0:Ljava/lang/Runnable;

    .line 51
    iput-byte v15, v0, Lmodule/canbus/s;->d0:B

    .line 52
    new-instance v1, Lmodule/canbus/s$d;

    invoke-direct {v1, v0}, Lmodule/canbus/s$d;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->e0:Ljava/lang/Runnable;

    .line 53
    new-instance v1, Lmodule/canbus/s$e;

    invoke-direct {v1, v0}, Lmodule/canbus/s$e;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->f0:Ljava/lang/Runnable;

    .line 54
    new-instance v1, Lmodule/canbus/s$f;

    invoke-direct {v1, v0}, Lmodule/canbus/s$f;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->g0:Ljava/lang/Runnable;

    .line 55
    new-instance v1, Lmodule/canbus/s$g;

    invoke-direct {v1, v0}, Lmodule/canbus/s$g;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->h0:Ljava/lang/Runnable;

    .line 56
    new-instance v1, Lmodule/canbus/s$h;

    invoke-direct {v1, v0}, Lmodule/canbus/s$h;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->i0:Ljava/lang/Runnable;

    .line 57
    new-instance v1, Lmodule/canbus/s$i;

    invoke-direct {v1, v0}, Lmodule/canbus/s$i;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->j0:Ljava/lang/Runnable;

    .line 58
    new-instance v1, Lmodule/canbus/s$j;

    invoke-direct {v1, v0}, Lmodule/canbus/s$j;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->k0:Ljava/lang/Runnable;

    .line 59
    new-instance v1, Lmodule/canbus/s$l;

    invoke-direct {v1, v0}, Lmodule/canbus/s$l;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->l0:Ljava/lang/Runnable;

    .line 60
    new-instance v1, Lmodule/canbus/s$m;

    invoke-direct {v1, v0}, Lmodule/canbus/s$m;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->m0:Ljava/lang/Runnable;

    .line 61
    new-instance v1, Lmodule/canbus/s$n;

    invoke-direct {v1, v0}, Lmodule/canbus/s$n;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->n0:Ljava/lang/Runnable;

    .line 62
    iput v6, v0, Lmodule/canbus/s;->o0:I

    .line 63
    iput v6, v0, Lmodule/canbus/s;->p0:I

    .line 64
    iput v6, v0, Lmodule/canbus/s;->q0:I

    .line 65
    iput v6, v0, Lmodule/canbus/s;->r0:I

    .line 66
    iput v6, v0, Lmodule/canbus/s;->s0:I

    .line 67
    iput-boolean v6, v0, Lmodule/canbus/s;->t0:Z

    const/16 v1, 0x64

    .line 68
    iput v1, v0, Lmodule/canbus/s;->u0:I

    .line 69
    new-instance v1, Lmodule/canbus/s$o;

    invoke-direct {v1, v0}, Lmodule/canbus/s$o;-><init>(Lmodule/canbus/s;)V

    iput-object v1, v0, Lmodule/canbus/s;->v0:Ljava/lang/Runnable;

    .line 70
    iput v6, v0, Lmodule/canbus/s;->w0:I

    return-void

    :array_0
    .array-data 4
        0x258
        0x64
        0x78
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x18
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0x30
        0xc
    .end array-data

    :array_c
    .array-data 4
        0x31
        0x19
    .end array-data

    :array_d
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x33
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x34
        0x4b
    .end array-data

    :array_10
    .array-data 4
        0x35
        0x16
    .end array-data

    :array_11
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_12
    .array-data 4
        0x37
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x38
        0x28
    .end array-data

    :array_14
    .array-data 4
        0x39
        0x29
    .end array-data

    :array_15
    .array-data 4
        0x3a
        0x2a
    .end array-data

    :array_16
    .array-data 4
        0x3b
        0x2b
    .end array-data

    :array_17
    .array-data 4
        0x3c
        0x2c
    .end array-data

    :array_18
    .array-data 4
        0x3d
        0x2d
    .end array-data

    :array_19
    .array-data 4
        0x3e
        0x1d
    .end array-data

    :array_1a
    .array-data 4
        0x3f
        0x47
    .end array-data

    :array_1b
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_1c
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_1d
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_1f
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_20
    .array-data 4
        0x86
        0xc
    .end array-data

    :array_21
    .array-data 4
        0x20
        0x7
    .end array-data

    :array_22
    .array-data 4
        0x21
        0x8
    .end array-data

    :array_23
    .array-data 4
        0x22
        0x4
    .end array-data

    :array_24
    .array-data 4
        0x23
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x24
        0x13
    .end array-data

    :array_26
    .array-data 4
        0x25
        0x14
    .end array-data

    :array_27
    .array-data 4
        0x26
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x27
        0x3
    .end array-data

    :array_29
    .array-data 4
        0x28
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_2b
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_2c
    .array-data 4
        0x86
        0xc
    .end array-data

    :array_2d
    .array-data 4
        0x91
        0x19
    .end array-data

    :array_2e
    .array-data 4
        0x92
        0x3
    .end array-data

    :array_2f
    .array-data 4
        0x93
        0x4
    .end array-data

    :array_30
    .array-data 4
        0x94
        0x43
    .end array-data

    :array_31
    .array-data 4
        0x95
        0x44
    .end array-data

    :array_32
    .array-data 4
        0x96
        0x2
    .end array-data

    :array_33
    .array-data 4
        0xb1
        0x7
    .end array-data

    :array_34
    .array-data 4
        0xb2
        0x8
    .end array-data

    :array_35
    .array-data 4
        0xb3
        0x4
    .end array-data

    :array_36
    .array-data 4
        0xb4
        0x3
    .end array-data

    :array_37
    .array-data 4
        0xb5
        0x5
    .end array-data

    :array_38
    .array-data 4
        0xb6
        0x10
    .end array-data

    :array_39
    .array-data 4
        0xb8
        0x6
    .end array-data

    :array_3a
    .array-data 4
        0xb9
        0x10
    .end array-data

    :array_3b
    .array-data 4
        0xba
        0x26
    .end array-data

    :array_3c
    .array-data 4
        0xbd
        0x3
    .end array-data

    :array_3d
    .array-data 4
        0xbe
        0x4
    .end array-data

    :array_3e
    .array-data 4
        0x20
        0x4b
    .end array-data

    :array_3f
    .array-data 4
        0x21
        0x4a
    .end array-data

    :array_40
    .array-data 4
        0x22
        0x36
    .end array-data

    :array_41
    .array-data 4
        0x23
        0x4c
    .end array-data

    :array_42
    .array-data 4
        0x24
        0x35
    .end array-data

    :array_43
    .array-data 4
        0x25
        0x36
    .end array-data

    :array_44
    .array-data 4
        0x26
        -0x1
    .end array-data

    :array_45
    .array-data 4
        0x26
        -0x1
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_47
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_48
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_49
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4a
    .array-data 4
        0x7
        0x36
    .end array-data

    :array_4b
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_4c
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_4d
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_4e
    .array-data 4
        0xb
        0x9
    .end array-data

    :array_4f
    .array-data 4
        0xc
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x31
        0x0
    .end array-data

    :array_51
    .array-data 4
        0x32
        0x6
    .end array-data

    :array_52
    .array-data 4
        0x33
        0x4a
    .end array-data

    :array_53
    .array-data 4
        0x34
        0x4b
    .end array-data

    :array_54
    .array-data 4
        0x35
        -0x1
    .end array-data

    :array_55
    .array-data 4
        0x36
        0x35
    .end array-data

    :array_56
    .array-data 4
        0x37
        0x12
    .end array-data

    :array_57
    .array-data 4
        0x38
        0x28
    .end array-data

    :array_58
    .array-data 4
        0x39
        0x29
    .end array-data

    :array_59
    .array-data 4
        0x3a
        0x2a
    .end array-data

    :array_5a
    .array-data 4
        0x3b
        0x2b
    .end array-data

    :array_5b
    .array-data 4
        0x3c
        0x2c
    .end array-data

    :array_5c
    .array-data 4
        0x3d
        0x2d
    .end array-data

    :array_5d
    .array-data 4
        0x3e
        0x1d
    .end array-data

    :array_5e
    .array-data 4
        0x3f
        0x19
    .end array-data

    :array_5f
    .array-data 4
        0x40
        0x5
    .end array-data

    :array_60
    .array-data 4
        0x41
        0x10
    .end array-data

    :array_61
    .array-data 4
        0x42
        0x36
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/s;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/s;->c0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic B3(Lmodule/canbus/s;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/s;->f0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static C3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/s;->G0:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/s$x;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/s$x;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic d3(Lmodule/canbus/s;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lmodule/canbus/s;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/s;->c:Lo1/g0;

    return-object p0
.end method

.method public static synthetic f3(Lmodule/canbus/s;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/s;->M3(I)V

    return-void
.end method

.method public static synthetic g3(Lmodule/canbus/s;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/s;->L3(I)V

    return-void
.end method

.method public static synthetic h3(Lmodule/canbus/s;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/s;->J3(I)V

    return-void
.end method

.method public static synthetic i3(Lmodule/canbus/s;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/s;->G3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic j3(Lmodule/canbus/s;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/s;->E3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic k3(Lmodule/canbus/s;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/s;->O3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l3(Lmodule/canbus/s;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/s;->u0:I

    return p0
.end method

.method public static synthetic m3(Lmodule/canbus/s;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/s;->w0:I

    return p0
.end method

.method public static synthetic n3(Lmodule/canbus/s;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/s;->w0:I

    return p1
.end method

.method public static synthetic o3(Lmodule/canbus/s;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/s;->w0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/s;->w0:I

    return v0
.end method

.method public static synthetic p3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/s;->E0:I

    return p0
.end method

.method public static synthetic q3(Lmodule/canbus/s;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/s;->F3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic r3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/s;->F0:[I

    return-object v0
.end method

.method public static synthetic s3(Lmodule/canbus/s;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/s;->K:F

    return p0
.end method

.method public static synthetic t3(Lmodule/canbus/s;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/s;->K:F

    return p1
.end method

.method public static synthetic u3(Lmodule/canbus/s;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/s;->M:I

    return p0
.end method

.method public static synthetic v3(Lmodule/canbus/s;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/s;->M:I

    return p1
.end method

.method public static synthetic w3(Lmodule/canbus/s;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/s;->L:I

    return p0
.end method

.method public static synthetic x3(Lmodule/canbus/s;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/s;->L:I

    return p1
.end method

.method public static synthetic y3(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/s;->N3()V

    return-void
.end method

.method public static synthetic z3(Lmodule/canbus/s;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/s;->c3(I)V

    return-void
.end method


# virtual methods
.method public final D3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.execute_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "raw_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.syu.voice"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final E3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, "Unkown"

    :cond_0
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xcb

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x21

    aput v3, v0, v1

    const/4 v1, 0x3

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
    if-ge v2, v1, :cond_4

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 3
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x71

    if-eq v3, v4, :cond_3

    const/16 v4, 0x77

    if-eq v3, v4, :cond_3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x5

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 4
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x4

    and-int/lit16 p1, p1, 0xff

    .line 5
    aput p1, v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x4

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 6
    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x5

    and-int/lit16 p1, p1, 0xff

    .line 7
    aput p1, v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_4
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final F3(BLjava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "Unkown"

    :cond_0
    const-string v0, "GB2312"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 2
    array-length v0, p2

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0xcb

    const/4 v4, 0x1

    aput v2, v0, v4

    const/4 v2, 0x2

    const/16 v4, 0x21

    aput v4, v0, v2

    const/4 v2, 0x3

    aput p1, v0, v2

    :goto_1
    if-ge v3, v1, :cond_2

    add-int/lit8 p1, v3, 0x4

    .line 3
    aget-byte v2, p2, v3

    aput v2, v0, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final G3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    const-string p2, "Unkown"

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 2
    array-length v0, p2

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    const/16 v0, 0x24

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    const/16 v5, 0xff

    .line 3
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0xe3

    aput v0, v2, v3

    const/16 v0, 0xcb

    const/4 v4, 0x1

    aput v0, v2, v4

    const/4 v0, 0x2

    const/16 v4, 0x21

    aput v4, v2, v0

    const/4 v0, 0x3

    aput p1, v2, v0

    :goto_2
    if-ge v3, v1, :cond_3

    add-int/lit8 p1, v3, 0x4

    .line 4
    aget-byte v0, p2, v3

    aput v0, v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final H3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/s;->Z2(I)V

    return-void
.end method

.method public final I3()V
    .locals 3

    const-string v0, "persist.fyt.showduduair"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.honda.ActivityAirControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final J3(I)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    :goto_0
    sput p1, Lmodule/canbus/s;->A0:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez p1, :cond_2

    new-array p1, v2, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    new-array p1, v2, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 6
    :cond_5
    :goto_1
    sget p1, Lk0/nt;->c:I

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x40

    if-eq p1, v0, :cond_6

    const/16 v0, 0x49

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x99

    if-eq p1, v0, :cond_6

    const/16 v0, 0x55

    if-eq p1, v0, :cond_6

    const/16 p1, 0x3f5

    new-array v0, v3, [I

    .line 7
    sget v2, Lmodule/canbus/s;->A0:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13d

    new-array v0, v3, [I

    .line 8
    sget v2, Lmodule/canbus/s;->A0:I

    aput v2, v0, v1

    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 9
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {p1, v3, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/s;->A0:I

    if-eq p1, v0, :cond_6

    .line 10
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x40
        0x3
    .end array-data
.end method

.method public final K3(II)V
    .locals 4

    .line 1
    sput p1, Lmodule/canbus/s;->A0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x39

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lmodule/canbus/s;->A0:I

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final L3(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lmodule/canbus/s;->C0:I

    const/16 v2, 0x145

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 2
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/s;->C0:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final M3(I)V
    .locals 2

    .line 1
    sput p1, Lmodule/canbus/s;->B0:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x96

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/s;->B0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public N2()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized N3()V
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
    sget v0, Lmodule/canbus/s;->E0:I

    const/16 v1, 0x9

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/s;->C3(II)V
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

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p1

    if-eqz v0, :cond_58

    .line 1
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget v3, v0, v1

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v4

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Air codeCmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "      value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget v8, v0, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    sget v4, Lk0/nt;->c:I

    const/16 v5, 0x2e

    const/16 v6, 0x37

    const/4 v10, -0x1

    const/16 v11, 0x44

    const/16 v12, 0x2a

    const/16 v13, 0x29

    const/16 v1, 0xb

    const/16 v14, 0xa

    const/4 v15, 0x3

    const/4 v9, 0x5

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x9a

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x9b

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x40

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x99

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x49

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x9c

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x55

    if-ne v4, v5, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    sget v4, Lk0/nt;->a:I

    const v5, 0x56012a

    const/16 v8, 0xd

    if-eq v4, v5, :cond_25

    const v5, 0x57012a

    if-eq v4, v5, :cond_25

    const v5, 0x58012a

    if-eq v4, v5, :cond_25

    const v5, 0x6d012a

    if-eq v4, v5, :cond_25

    const v5, 0x6f012a

    if-eq v4, v5, :cond_25

    const v5, 0x6e012a

    if-eq v4, v5, :cond_25

    const v5, 0x87012a

    if-eq v4, v5, :cond_25

    const v5, 0x88012a

    if-eq v4, v5, :cond_25

    const v5, 0x71012a

    if-eq v4, v5, :cond_25

    const v5, 0x72012a

    if-eq v4, v5, :cond_25

    const v5, 0x73012a

    if-eq v4, v5, :cond_25

    const v5, 0x74012a

    if-eq v4, v5, :cond_25

    const v5, 0x75012a

    if-eq v4, v5, :cond_25

    const v5, 0x76012a

    if-eq v4, v5, :cond_25

    const v5, 0x77012a

    if-eq v4, v5, :cond_25

    const v5, 0x78012a

    if-eq v4, v5, :cond_25

    const v5, 0x79012a

    if-eq v4, v5, :cond_25

    const v5, 0x7a012a

    if-eq v4, v5, :cond_25

    const v5, 0x7b012a

    if-eq v4, v5, :cond_25

    const v5, 0x7c012a

    if-eq v4, v5, :cond_25

    const v5, 0x7d012a

    if-eq v4, v5, :cond_25

    const v5, 0x7e012a

    if-eq v4, v5, :cond_25

    const v5, 0x7f012a

    if-eq v4, v5, :cond_25

    const v5, 0x80012a

    if-eq v4, v5, :cond_25

    const v5, 0x81012a

    if-eq v4, v5, :cond_25

    const v5, 0x82012a

    if-eq v4, v5, :cond_25

    const v5, 0x83012a

    if-eq v4, v5, :cond_25

    const v5, 0x84012a

    if-eq v4, v5, :cond_25

    const v5, 0x85012a

    if-eq v4, v5, :cond_25

    const v5, 0x86012a

    if-eq v4, v5, :cond_25

    const v5, 0x59012a

    if-eq v4, v5, :cond_25

    const v5, 0x70012a

    if-ne v4, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eq v3, v13, :cond_23

    if-eq v3, v12, :cond_21

    const/16 v4, 0x20

    const/16 v5, 0x12

    if-eq v3, v6, :cond_1e

    const/16 v6, 0x38

    if-eq v3, v6, :cond_1b

    const/16 v4, 0x43

    if-eq v3, v4, :cond_18

    if-eq v3, v11, :cond_a

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 6
    :pswitch_0
    aget v0, v0, v7

    if-ne v0, v10, :cond_3

    new-array v0, v9, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3
    new-array v0, v9, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 9
    :pswitch_1
    aget v1, v0, v7

    if-ne v1, v7, :cond_4

    new-array v0, v9, [I

    .line 10
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 11
    :cond_4
    aget v0, v0, v7

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 12
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 13
    :pswitch_2
    aget v0, v0, v7

    if-eqz v0, :cond_5

    new-array v0, v9, [I

    .line 14
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_5
    new-array v0, v9, [I

    .line 15
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 16
    :pswitch_3
    aget v0, v0, v7

    if-eqz v0, :cond_6

    new-array v0, v9, [I

    .line 17
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_6
    new-array v0, v9, [I

    .line 18
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 19
    :pswitch_4
    aget v0, v0, v7

    if-eqz v0, :cond_7

    new-array v0, v9, [I

    .line 20
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_7
    new-array v0, v9, [I

    .line 21
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 22
    :pswitch_5
    aget v0, v0, v7

    if-eqz v0, :cond_8

    .line 23
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 24
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 25
    :cond_8
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 26
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 27
    :pswitch_6
    aget v0, v0, v7

    if-eqz v0, :cond_9

    .line 28
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 29
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 30
    :cond_9
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 31
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 32
    :cond_a
    aget v3, v0, v7

    if-ne v3, v7, :cond_b

    new-array v0, v9, [I

    .line 33
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 34
    :cond_b
    aget v3, v0, v7

    if-ne v3, v2, :cond_c

    new-array v0, v9, [I

    .line 35
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 36
    :cond_c
    aget v2, v0, v7

    if-ne v2, v15, :cond_d

    new-array v0, v9, [I

    .line 37
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 38
    :cond_d
    aget v2, v0, v7

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    new-array v0, v9, [I

    .line 39
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 40
    :cond_e
    aget v2, v0, v7

    if-ne v2, v9, :cond_f

    new-array v0, v9, [I

    .line 41
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 42
    :cond_f
    aget v2, v0, v7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_10

    new-array v0, v9, [I

    .line 43
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 44
    :cond_10
    aget v2, v0, v7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_11

    new-array v0, v9, [I

    .line 45
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 46
    :cond_11
    aget v2, v0, v7

    const/16 v3, 0x8

    if-ne v2, v3, :cond_12

    new-array v0, v9, [I

    .line 47
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 48
    :cond_12
    aget v2, v0, v7

    const/16 v3, 0x9

    if-ne v2, v3, :cond_13

    new-array v0, v9, [I

    .line 49
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 50
    :cond_13
    aget v2, v0, v7

    if-ne v2, v14, :cond_14

    new-array v0, v9, [I

    .line 51
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 52
    :cond_14
    aget v2, v0, v7

    if-ne v2, v1, :cond_15

    new-array v0, v9, [I

    .line 53
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 54
    :cond_15
    aget v1, v0, v7

    const/16 v2, 0xc

    if-ne v1, v2, :cond_16

    new-array v0, v9, [I

    .line 55
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 56
    :cond_16
    aget v1, v0, v7

    if-ne v1, v8, :cond_17

    new-array v0, v9, [I

    .line 57
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 58
    :cond_17
    aget v0, v0, v7

    const/16 v1, 0xe

    if-ne v0, v1, :cond_58

    new-array v0, v9, [I

    .line 59
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 60
    :cond_18
    aget v0, v0, v7

    if-eq v0, v15, :cond_1a

    if-eq v0, v14, :cond_19

    goto/16 :goto_2

    :cond_19
    new-array v0, v9, [I

    .line 61
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_1a
    new-array v0, v9, [I

    .line 62
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 63
    :cond_1b
    aget v1, v0, v7

    if-ge v1, v5, :cond_1c

    new-array v0, v9, [I

    .line 64
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 65
    :cond_1c
    aget v1, v0, v7

    if-lt v1, v5, :cond_1d

    aget v1, v0, v7

    if-gt v1, v4, :cond_1d

    .line 66
    aget v0, v0, v7

    add-int/lit8 v0, v0, -0x11

    mul-int/2addr v0, v2

    sub-int/2addr v0, v7

    new-array v1, v9, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, -0x79

    aput v3, v1, v7

    aput v2, v1, v2

    const/16 v2, 0xe

    aput v2, v1, v15

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 67
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 68
    :cond_1d
    aget v0, v0, v7

    if-le v0, v4, :cond_58

    new-array v0, v9, [I

    .line 69
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 70
    :cond_1e
    aget v1, v0, v7

    if-ge v1, v5, :cond_1f

    new-array v0, v9, [I

    .line 71
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 72
    :cond_1f
    aget v1, v0, v7

    if-lt v1, v5, :cond_20

    aget v1, v0, v7

    if-gt v1, v4, :cond_20

    .line 73
    aget v0, v0, v7

    add-int/lit8 v0, v0, -0x11

    mul-int/2addr v0, v2

    sub-int/2addr v0, v7

    new-array v1, v9, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, -0x79

    aput v3, v1, v7

    aput v2, v1, v2

    const/16 v2, 0xc

    aput v2, v1, v15

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 74
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 75
    :cond_20
    aget v0, v0, v7

    if-le v0, v4, :cond_58

    new-array v0, v9, [I

    .line 76
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 77
    :cond_21
    aget v0, v0, v7

    if-eqz v0, :cond_22

    new-array v0, v9, [I

    .line 78
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_22
    new-array v0, v9, [I

    .line 79
    fill-array-data v0, :array_23

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 80
    :cond_23
    aget v0, v0, v7

    if-eqz v0, :cond_24

    new-array v0, v9, [I

    .line 81
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_24
    new-array v0, v9, [I

    .line 82
    fill-array-data v0, :array_25

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_25
    :goto_0
    if-eq v3, v13, :cond_3b

    if-eq v3, v12, :cond_39

    if-eq v3, v11, :cond_2d

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_2

    .line 83
    :pswitch_7
    aget v1, v0, v7

    const/4 v2, -0x2

    if-ne v1, v2, :cond_26

    new-array v0, v9, [I

    .line 84
    fill-array-data v0, :array_26

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 85
    :cond_26
    aget v0, v0, v7

    if-ne v0, v10, :cond_58

    new-array v0, v9, [I

    .line 86
    fill-array-data v0, :array_27

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 87
    :pswitch_8
    aget v0, v0, v7

    if-eqz v0, :cond_27

    .line 88
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 89
    fill-array-data v0, :array_28

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_27
    const/16 v1, 0xc

    .line 90
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 91
    fill-array-data v0, :array_29

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 92
    :pswitch_9
    aget v0, v0, v7

    if-eqz v0, :cond_28

    .line 93
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 94
    fill-array-data v0, :array_2a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 95
    :cond_28
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 96
    fill-array-data v0, :array_2b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 97
    :pswitch_a
    aget v0, v0, v7

    if-eqz v0, :cond_29

    .line 98
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x41

    aget v0, v0, v1

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 99
    fill-array-data v0, :array_2c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 100
    :cond_29
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x41

    aget v0, v0, v1

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 101
    fill-array-data v0, :array_2d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 102
    :pswitch_b
    aget v0, v0, v7

    if-eqz v0, :cond_2a

    .line 103
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v8

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 104
    fill-array-data v0, :array_2e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 105
    :cond_2a
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v8

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 106
    fill-array-data v0, :array_2f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 107
    :pswitch_c
    aget v0, v0, v7

    if-eqz v0, :cond_2b

    .line 108
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 109
    fill-array-data v0, :array_30

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 110
    :cond_2b
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 111
    fill-array-data v0, :array_31

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 112
    :pswitch_d
    aget v0, v0, v7

    if-eqz v0, :cond_2c

    .line 113
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-nez v0, :cond_58

    new-array v0, v9, [I

    .line 114
    fill-array-data v0, :array_32

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 115
    :cond_2c
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-ne v0, v7, :cond_58

    new-array v0, v9, [I

    .line 116
    fill-array-data v0, :array_33

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 117
    :cond_2d
    aget v3, v0, v7

    if-ne v3, v7, :cond_2e

    new-array v0, v9, [I

    .line 118
    fill-array-data v0, :array_34

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 119
    :cond_2e
    aget v3, v0, v7

    if-ne v3, v2, :cond_2f

    new-array v0, v9, [I

    .line 120
    fill-array-data v0, :array_35

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 121
    :cond_2f
    aget v2, v0, v7

    if-ne v2, v15, :cond_30

    new-array v0, v9, [I

    .line 122
    fill-array-data v0, :array_36

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 123
    :cond_30
    aget v2, v0, v7

    const/4 v3, 0x4

    if-ne v2, v3, :cond_31

    new-array v0, v9, [I

    .line 124
    fill-array-data v0, :array_37

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 125
    :cond_31
    aget v2, v0, v7

    if-ne v2, v9, :cond_32

    new-array v0, v9, [I

    .line 126
    fill-array-data v0, :array_38

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 127
    :cond_32
    aget v2, v0, v7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_33

    new-array v0, v9, [I

    .line 128
    fill-array-data v0, :array_39

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 129
    :cond_33
    aget v2, v0, v7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_34

    new-array v0, v9, [I

    .line 130
    fill-array-data v0, :array_3a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 131
    :cond_34
    aget v2, v0, v7

    const/16 v3, 0x8

    if-ne v2, v3, :cond_35

    new-array v0, v9, [I

    .line 132
    fill-array-data v0, :array_3b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 133
    :cond_35
    aget v2, v0, v7

    const/16 v3, 0x9

    if-ne v2, v3, :cond_36

    new-array v0, v9, [I

    .line 134
    fill-array-data v0, :array_3c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 135
    :cond_36
    aget v2, v0, v7

    if-ne v2, v14, :cond_37

    new-array v0, v9, [I

    .line 136
    fill-array-data v0, :array_3d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 137
    :cond_37
    aget v2, v0, v7

    if-ne v2, v1, :cond_38

    new-array v0, v9, [I

    .line 138
    fill-array-data v0, :array_3e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 139
    :cond_38
    aget v0, v0, v7

    const/16 v1, 0xc

    if-ne v0, v1, :cond_58

    new-array v0, v9, [I

    .line 140
    fill-array-data v0, :array_3f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 141
    :cond_39
    aget v0, v0, v7

    if-nez v0, :cond_3a

    new-array v0, v9, [I

    .line 142
    fill-array-data v0, :array_40

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3a
    new-array v0, v9, [I

    .line 143
    fill-array-data v0, :array_41

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 144
    :cond_3b
    aget v0, v0, v7

    if-nez v0, :cond_3c

    new-array v0, v9, [I

    .line 145
    fill-array-data v0, :array_42

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3c
    new-array v0, v9, [I

    .line 146
    fill-array-data v0, :array_43

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3d
    :goto_1
    const/16 v4, 0x21

    if-eq v3, v4, :cond_56

    const/16 v4, 0x22

    if-eq v3, v4, :cond_54

    if-eq v3, v13, :cond_52

    if-eq v3, v12, :cond_50

    if-eq v3, v6, :cond_4f

    const/16 v4, 0x38

    if-eq v3, v4, :cond_4e

    if-eq v3, v11, :cond_42

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_2

    .line 147
    :pswitch_e
    aget v0, v0, v7

    if-ne v0, v10, :cond_3e

    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 148
    fill-array-data v0, :array_44

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_3e
    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 149
    fill-array-data v0, :array_45

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_f
    const/4 v1, 0x6

    .line 150
    aget v2, v0, v7

    if-ne v2, v7, :cond_3f

    new-array v0, v1, [I

    .line 151
    fill-array-data v0, :array_46

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 152
    :cond_3f
    aget v0, v0, v7

    if-nez v0, :cond_58

    new-array v0, v1, [I

    .line 153
    fill-array-data v0, :array_47

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_10
    const/4 v1, 0x6

    .line 154
    aget v0, v0, v7

    if-eqz v0, :cond_40

    new-array v0, v1, [I

    .line 155
    fill-array-data v0, :array_48

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_40
    new-array v0, v1, [I

    .line 156
    fill-array-data v0, :array_49

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_11
    const/4 v1, 0x6

    .line 157
    aget v0, v0, v7

    if-eqz v0, :cond_41

    new-array v0, v1, [I

    .line 158
    fill-array-data v0, :array_4a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_41
    new-array v0, v1, [I

    .line 159
    fill-array-data v0, :array_4b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 160
    :cond_42
    aget v3, v0, v7

    if-ne v3, v7, :cond_43

    const/4 v3, 0x7

    new-array v0, v3, [I

    .line 161
    fill-array-data v0, :array_4c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_43
    const/4 v3, 0x7

    .line 162
    aget v4, v0, v7

    if-ne v4, v2, :cond_44

    new-array v0, v3, [I

    .line 163
    fill-array-data v0, :array_4d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 164
    :cond_44
    aget v2, v0, v7

    if-ne v2, v15, :cond_45

    new-array v0, v3, [I

    .line 165
    fill-array-data v0, :array_4e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 166
    :cond_45
    aget v2, v0, v7

    const/4 v4, 0x4

    if-ne v2, v4, :cond_46

    new-array v0, v3, [I

    .line 167
    fill-array-data v0, :array_4f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 168
    :cond_46
    aget v2, v0, v7

    if-ne v2, v9, :cond_47

    new-array v0, v3, [I

    .line 169
    fill-array-data v0, :array_50

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 170
    :cond_47
    aget v2, v0, v7

    const/4 v4, 0x6

    if-ne v2, v4, :cond_48

    new-array v0, v3, [I

    .line 171
    fill-array-data v0, :array_51

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 172
    :cond_48
    aget v2, v0, v7

    if-ne v2, v3, :cond_49

    new-array v0, v3, [I

    .line 173
    fill-array-data v0, :array_52

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 174
    :cond_49
    aget v2, v0, v7

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4a

    new-array v0, v3, [I

    .line 175
    fill-array-data v0, :array_53

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 176
    :cond_4a
    aget v2, v0, v7

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4b

    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 177
    fill-array-data v0, :array_54

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_4b
    const/4 v2, 0x6

    .line 178
    aget v3, v0, v7

    if-ne v3, v14, :cond_4c

    new-array v0, v2, [I

    .line 179
    fill-array-data v0, :array_55

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 180
    :cond_4c
    aget v2, v0, v7

    if-ne v2, v1, :cond_4d

    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 181
    fill-array-data v0, :array_56

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_4d
    const/4 v1, 0x7

    .line 182
    aget v0, v0, v7

    const/16 v2, 0xc

    if-ne v0, v2, :cond_58

    new-array v0, v1, [I

    .line 183
    fill-array-data v0, :array_57

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_4e
    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, -0x11

    aput v3, v1, v7

    const/4 v3, 0x4

    aput v3, v1, v2

    const/16 v2, 0x7d

    aput v2, v1, v15

    const/16 v2, 0x45

    aput v2, v1, v3

    aput v7, v1, v9

    .line 184
    aget v0, v0, v7

    const/4 v2, 0x6

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_4f
    const/4 v1, 0x7

    const/4 v3, 0x4

    new-array v1, v1, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, -0x11

    aput v4, v1, v7

    aput v3, v1, v2

    const/16 v2, 0x7d

    aput v2, v1, v15

    const/16 v2, 0x45

    aput v2, v1, v3

    aput v5, v1, v9

    .line 185
    aget v0, v0, v7

    const/4 v2, 0x6

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    .line 186
    :cond_50
    aget v0, v0, v7

    if-eqz v0, :cond_51

    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 187
    fill-array-data v0, :array_58

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_51
    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 188
    fill-array-data v0, :array_59

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_52
    const/4 v1, 0x7

    .line 189
    aget v0, v0, v7

    if-eqz v0, :cond_53

    new-array v0, v1, [I

    .line 190
    fill-array-data v0, :array_5a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_53
    new-array v0, v1, [I

    .line 191
    fill-array-data v0, :array_5b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 192
    :cond_54
    aget v0, v0, v7

    if-eqz v0, :cond_55

    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 193
    fill-array-data v0, :array_5c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_55
    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 194
    fill-array-data v0, :array_5d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_56
    const/4 v1, 0x6

    .line 195
    aget v0, v0, v7

    if-eqz v0, :cond_57

    new-array v0, v1, [I

    .line 196
    fill-array-data v0, :array_5e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_57
    new-array v0, v1, [I

    .line 197
    fill-array-data v0, :array_5f

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_58
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x79
        0x2
        0x9
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x79
        0x2
        0x9
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x79
        0x2
        0x10
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x79
        0x2
        0x10
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x79
        0x2
        0x12
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x79
        0x2
        0x12
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x79
        0x2
        0x11
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x79
        0x2
        0x11
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x79
        0x2
        0xf
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x79
        0x2
        0xf
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x79
        0x2
        0x8
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x79
        0x2
        0x8
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x79
        0x2
        0x7
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x79
        0x2
        0x7
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x1
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x0
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x1
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x0
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x1
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x79
        0x2
        0x6
        0x0
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x79
        0x2
        0x6
        0x1
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x0
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x79
        0x2
        0x24
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x79
        0x2
        0x24
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        0x87
        0x2
        0x50
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        0x87
        0x2
        0x50
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        -0x79
        0x2
        0xe
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        -0x79
        0x2
        0xe
        0x1f
    .end array-data

    :array_20
    .array-data 4
        0xe3
        -0x79
        0x2
        0xc
        0x0
    .end array-data

    :array_21
    .array-data 4
        0xe3
        -0x79
        0x2
        0xc
        0x1f
    .end array-data

    :array_22
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x1
    .end array-data

    :array_23
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x0
    .end array-data

    :array_24
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x1
    .end array-data

    :array_25
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x0
    .end array-data

    :array_26
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x19
    .end array-data

    :array_27
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x1a
    .end array-data

    :array_28
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x29
    .end array-data

    :array_29
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x29
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x24
    .end array-data

    :array_2b
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x24
    .end array-data

    :array_2c
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x23
    .end array-data

    :array_2d
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x23
    .end array-data

    :array_2e
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x25
    .end array-data

    :array_2f
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x25
    .end array-data

    :array_30
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x1
    .end array-data

    :array_31
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x2
    .end array-data

    :array_32
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x11
    .end array-data

    :array_33
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x11
    .end array-data

    :array_34
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x0
    .end array-data

    :array_35
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x1
    .end array-data

    :array_36
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x0
    .end array-data

    :array_37
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x1
    .end array-data

    :array_38
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x0
    .end array-data

    :array_39
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x1
    .end array-data

    :array_3a
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x0
    .end array-data

    :array_3b
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0xe3
        -0x79
        0x2
        0x6
        0x0
    .end array-data

    :array_3d
    .array-data 4
        0xe3
        -0x79
        0x2
        0x6
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x0
    .end array-data

    :array_3f
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x1
    .end array-data

    :array_40
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x14
    .end array-data

    :array_41
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x15
    .end array-data

    :array_42
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x12
    .end array-data

    :array_43
    .array-data 4
        0xe3
        -0x3a
        0x2
        0xac
        0x13
    .end array-data

    :array_44
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x80
    .end array-data

    :array_45
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x81
    .end array-data

    :array_46
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x0
    .end array-data

    :array_47
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x1
    .end array-data

    :array_48
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x1
    .end array-data

    :array_49
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x0
    .end array-data

    :array_4a
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x0
    .end array-data

    :array_4c
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0x1
    .end array-data

    :array_4d
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0xb
    .end array-data

    :array_4e
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_4f
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0xb
    .end array-data

    :array_50
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0x1
    .end array-data

    :array_51
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0xb
    .end array-data

    :array_52
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_53
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0xb
    .end array-data

    :array_54
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x0
    .end array-data

    :array_55
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_56
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_57
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0xb
    .end array-data

    :array_58
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x80
    .end array-data

    :array_59
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x81
    .end array-data

    :array_5a
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x80
    .end array-data

    :array_5b
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x81
    .end array-data

    :array_5c
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x1
    .end array-data

    :array_5d
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x0
    .end array-data

    :array_5e
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x0
    .end array-data
.end method

.method public final O3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v0, 0x24

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, -0x1d

    aput v3, v0, v2

    const/16 v2, -0x35

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const/16 v4, 0x21

    aput v4, v0, v2

    const/4 v2, 0x3

    aput v3, v0, v2

    const/4 v2, 0x4

    add-int/2addr v1, v2

    :goto_1
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, -0x4

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0xf

    .line 3
    aput p1, v0, v1

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public S2()V
    .locals 6

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
    iput v1, v0, Lk0/mt;->i:I

    .line 6
    iput v1, v0, Lk0/mt;->o:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lk0/mt;->b:I

    .line 8
    iput v2, v0, Lk0/mt;->c:I

    .line 9
    iput v2, v0, Lk0/mt;->d:I

    .line 10
    iput v2, v0, Lk0/mt;->j:I

    .line 11
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    const/16 v5, 0x23

    if-eq v3, v5, :cond_4

    const/16 v5, 0x28

    if-eq v3, v5, :cond_3

    const/16 v5, 0x98

    if-eq v3, v5, :cond_2

    const/16 v5, 0x10

    if-eq v3, v5, :cond_1

    const/16 v5, 0x11

    if-eq v3, v5, :cond_1

    const/16 v5, 0x17

    if-eq v3, v5, :cond_2

    const/16 v5, 0x18

    if-eq v3, v5, :cond_4

    const/16 v5, 0x20

    if-eq v3, v5, :cond_0

    const/16 v5, 0x21

    if-eq v3, v5, :cond_4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 12
    :pswitch_0
    iput v1, v0, Lk0/mt;->j:I

    .line 13
    invoke-virtual {p0}, Lmodule/canbus/s;->b3()V

    .line 14
    iget-object v0, p0, Lmodule/canbus/s;->O:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 16
    iput v2, v0, Lk0/mt;->c:I

    .line 17
    iput v2, v0, Lk0/mt;->d:I

    .line 18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p0}, Lmodule/canbus/s;->init()V

    .line 20
    iget-object v0, p0, Lmodule/canbus/s;->v0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p0}, Lmodule/canbus/s;->H3()V

    .line 22
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/s;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 23
    :pswitch_1
    iput v1, v0, Lk0/mt;->j:I

    .line 24
    invoke-virtual {p0}, Lmodule/canbus/s;->b3()V

    .line 25
    iget-object v0, p0, Lmodule/canbus/s;->O:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 26
    :pswitch_2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/s;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 27
    :cond_0
    iput v1, v0, Lk0/mt;->b:I

    .line 28
    iput v2, v0, Lk0/mt;->c:I

    .line 29
    iput v2, v0, Lk0/mt;->d:I

    .line 30
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    invoke-virtual {p0}, Lmodule/canbus/s;->init()V

    .line 32
    iget-object v0, p0, Lmodule/canbus/s;->v0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {p0}, Lmodule/canbus/s;->H3()V

    .line 34
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/s;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 35
    :cond_1
    iput v1, v0, Lk0/mt;->q:I

    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lmodule/canbus/s;->O:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 37
    :cond_3
    :pswitch_3
    invoke-virtual {p0}, Lmodule/canbus/s;->b3()V

    .line 38
    iget-object v0, p0, Lmodule/canbus/s;->O:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 39
    :cond_4
    :pswitch_4
    iget-object v0, p0, Lmodule/canbus/s;->O:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->j:I

    .line 41
    :cond_5
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_6

    .line 42
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 43
    :cond_6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->e0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 44
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    .line 45
    iget-object v0, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 46
    iget-object v0, p0, Lmodule/canbus/s;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 47
    iget-object v0, p0, Lmodule/canbus/s;->z:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 48
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 49
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 50
    iget-object v0, p0, Lmodule/canbus/s;->n0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 51
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->h0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 52
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->j0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 53
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->i0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 54
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->k0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 55
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->m0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 56
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 57
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 58
    sget-object v0, Lh0/d;->l:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 59
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 60
    new-instance v0, Lmodule/canbus/s$y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmodule/canbus/s$y;-><init>(Lmodule/canbus/s;Lmodule/canbus/s$k;)V

    iput-object v0, p0, Lmodule/canbus/s;->Q:Lmodule/canbus/s$y;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lmodule/canbus/s;->Q:Lmodule/canbus/s$y;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    :cond_7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
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
        0x44
        0x43
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0xe

    const/16 v4, 0x14

    const/16 v6, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/16 v15, 0xff

    const/4 v7, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_c0

    if-eq v2, v8, :cond_b8

    if-eq v2, v4, :cond_b7

    const/16 v3, 0x16

    const v17, 0xff00

    if-eq v2, v3, :cond_b6

    const/16 v3, 0x50

    const/4 v8, 0x5

    if-eq v2, v3, :cond_b0

    const/16 v3, 0x52

    const/16 v18, 0xf

    if-eq v2, v3, :cond_af

    if-eq v2, v14, :cond_a3

    const/16 v4, 0xf0

    if-eq v2, v12, :cond_89

    const/16 v3, 0x29

    if-eq v2, v3, :cond_88

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_83

    const/16 v3, 0x70

    if-eq v2, v3, :cond_7d

    const/16 v3, 0x71

    if-eq v2, v3, :cond_7c

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0x10

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_2d

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    if-eq v2, v5, :cond_a

    if-eq v2, v11, :cond_9

    if-eq v2, v14, :cond_6

    if-eq v2, v12, :cond_5

    if-eq v2, v10, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    const/16 v3, 0xf1

    if-eq v2, v3, :cond_0

    goto/16 :goto_2d

    :cond_0
    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    .line 4
    iget v2, v0, Lmodule/canbus/s;->E:I

    if-eq v2, v1, :cond_d9

    .line 5
    iput v1, v0, Lmodule/canbus/s;->E:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    .line 6
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 7
    iput-boolean v5, v0, Lmodule/canbus/s;->F:Z

    .line 8
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_2d

    :cond_1
    if-ne v1, v5, :cond_d9

    .line 9
    iget-boolean v1, v0, Lmodule/canbus/s;->F:Z

    if-eqz v1, :cond_d9

    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 10
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 11
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_2
    const/16 v2, 0x13f

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 12
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x140

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 13
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x141

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 14
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x142

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 15
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x143

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 16
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x144

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 17
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_3
    const/16 v2, 0xe6

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 18
    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 19
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    add-int/lit8 v1, v1, -0x28

    .line 20
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v13, [I

    aput v13, v3, v7

    aput v1, v3, v5

    const/16 v1, 0x419

    invoke-static {v2, v1, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_4
    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 22
    aget-byte v1, v1, v3

    const/16 v3, 0xe0

    new-array v4, v5, [I

    shl-int/lit8 v6, v1, 0x8

    and-int v6, v6, v17

    and-int/lit16 v8, v2, 0xff

    or-int/2addr v6, v8

    aput v6, v4, v7

    .line 23
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x21c

    .line 24
    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    .line 25
    iput-boolean v5, v0, Lmodule/canbus/s;->B:Z

    goto/16 :goto_2d

    :cond_5
    add-int/lit8 v2, p2, 0x7

    .line 26
    aget-byte v3, v1, v2

    shl-int/2addr v3, v10

    and-int v3, v3, v17

    add-int/lit8 v4, p2, 0x6

    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    or-int/2addr v3, v6

    const/16 v6, 0xa

    div-int/2addr v3, v6

    const/16 v6, 0x146

    new-array v11, v5, [I

    .line 27
    aget-byte v2, v1, v2

    shl-int/2addr v2, v10

    and-int v2, v2, v17

    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    aput v1, v11, v7

    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    .line 28
    sget-object v1, Lk0/nt;->f:[Lo1/x;

    new-array v2, v13, [I

    aput v8, v2, v7

    aput v3, v2, v5

    const/16 v3, 0x419

    invoke-static {v1, v3, v2, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_6
    add-int/lit8 v2, p2, 0x4

    .line 29
    aget-byte v3, v1, v2

    shl-int/2addr v3, v10

    and-int v3, v3, v17

    add-int/lit8 v4, p2, 0x3

    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    or-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x64

    .line 30
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    new-array v8, v13, [I

    aput v5, v8, v7

    aput v3, v8, v5

    const/16 v11, 0x419

    invoke-static {v6, v11, v8, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v6, 0x407

    new-array v8, v5, [I

    aput v3, v8, v7

    .line 31
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x95

    new-array v8, v5, [I

    .line 32
    aget-byte v2, v1, v2

    shl-int/2addr v2, v10

    and-int v2, v2, v17

    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    aput v1, v8, v7

    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    .line 33
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x47

    if-eq v1, v2, :cond_7

    const/16 v2, 0x48

    if-eq v1, v2, :cond_7

    const/16 v2, 0x52

    if-eq v1, v2, :cond_7

    const/16 v2, 0x54

    if-eq v1, v2, :cond_7

    goto/16 :goto_2d

    .line 34
    :cond_7
    sget v1, Lu0/b;->m:I

    if-ne v1, v5, :cond_d9

    if-nez v3, :cond_8

    .line 35
    sput v5, Lu0/b;->l:I

    .line 36
    invoke-static {v5}, Lu0/d;->x0(I)V

    goto/16 :goto_2d

    .line 37
    :cond_8
    sput v7, Lu0/b;->l:I

    goto/16 :goto_2d

    :cond_9
    const/16 v2, 0x147

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 38
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 39
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v13, [I

    const/16 v6, 0xc

    aput v6, v3, v7

    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    aput v6, v3, v5

    const/16 v6, 0x419

    invoke-static {v2, v6, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v14, v3, v7

    .line 40
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    aput v4, v3, v5

    invoke-static {v2, v6, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v13, [I

    aput v12, v3, v7

    add-int/lit8 v4, p2, 0x4

    .line 41
    aget-byte v8, v1, v4

    shr-int/2addr v8, v7

    and-int/lit8 v8, v8, 0xf

    aput v8, v3, v5

    invoke-static {v2, v6, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0xe7

    new-array v3, v5, [I

    .line 42
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 43
    :cond_a
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v13, [I

    const/16 v4, 0xb

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x3

    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    aput v6, v3, v5

    const/16 v6, 0x419

    invoke-static {v2, v6, v3, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 44
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    .line 45
    aget-byte v2, v1, v4

    shr-int/2addr v2, v14

    and-int/2addr v2, v5

    aget-byte v3, v1, v4

    shr-int/2addr v3, v12

    and-int/2addr v3, v5

    invoke-static {v2, v3, v7}, Ll0/c0;->b(III)V

    goto :goto_0

    .line 46
    :cond_b
    aget-byte v2, v1, v4

    shr-int/2addr v2, v14

    and-int/2addr v2, v5

    aget-byte v3, v1, v4

    shr-int/2addr v3, v12

    and-int/2addr v3, v5

    invoke-static {v2, v3, v7}, Ll0/c0;->a(III)V

    .line 47
    :goto_0
    sget v2, Lmodule/canbus/s;->B0:I

    if-ne v2, v5, :cond_d9

    .line 48
    sget v2, Lk0/nt;->W:I

    if-nez v2, :cond_14

    .line 49
    aget-byte v2, v1, v4

    shr-int/2addr v2, v12

    and-int/2addr v2, v5

    if-nez v2, :cond_19

    .line 50
    iget v2, v0, Lmodule/canbus/s;->o0:I

    aget-byte v3, v1, v4

    shr-int/2addr v3, v14

    and-int/2addr v3, v5

    if-eq v2, v3, :cond_12

    .line 51
    aget-byte v2, v1, v4

    shr-int/2addr v2, v14

    and-int/2addr v2, v5

    iput v2, v0, Lmodule/canbus/s;->o0:I

    if-ne v2, v5, :cond_e

    .line 52
    iget-boolean v2, v0, Lmodule/canbus/s;->t0:Z

    if-eqz v2, :cond_c

    .line 53
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_1

    .line 54
    :cond_c
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 55
    invoke-static {}, Lk0/qt;->t()V

    :cond_d
    :goto_1
    const/16 v2, 0x14

    .line 56
    iput v2, v0, Lmodule/canbus/s;->w:I

    .line 57
    iget-object v2, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 58
    :cond_e
    iget-boolean v2, v0, Lmodule/canbus/s;->t0:Z

    if-eqz v2, :cond_f

    .line 59
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    iget-object v3, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 60
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    iget-object v3, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa0

    invoke-static {v2, v3, v6, v7}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 61
    :cond_f
    iget v2, v0, Lmodule/canbus/s;->w:I

    if-lez v2, :cond_10

    .line 62
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    iget-object v3, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 63
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    iget-object v3, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-static {v2, v3, v6, v7}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 64
    :cond_10
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 65
    invoke-static {}, Lk0/qt;->f()V

    .line 66
    :cond_11
    iget-object v2, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 67
    :cond_12
    :goto_2
    iget-boolean v2, v0, Lmodule/canbus/s;->t0:Z

    if-eqz v2, :cond_19

    .line 68
    iget v2, v0, Lmodule/canbus/s;->p0:I

    aget-byte v3, v1, v4

    shr-int/2addr v3, v14

    and-int/2addr v3, v5

    if-eq v2, v3, :cond_19

    .line 69
    aget-byte v1, v1, v4

    shr-int/2addr v1, v14

    and-int/2addr v1, v5

    iput v1, v0, Lmodule/canbus/s;->p0:I

    if-ne v1, v5, :cond_13

    .line 70
    invoke-static {v5}, Lk0/qt;->a(I)V

    const/16 v1, 0x14

    .line 71
    iput v1, v0, Lmodule/canbus/s;->w:I

    .line 72
    iget-object v1, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 73
    :cond_13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 74
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa0

    invoke-static {v1, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 75
    :cond_14
    aget-byte v2, v1, v4

    shr-int/2addr v2, v14

    and-int/2addr v2, v5

    if-nez v2, :cond_19

    .line 76
    iget v2, v0, Lmodule/canbus/s;->o0:I

    aget-byte v3, v1, v4

    shr-int/2addr v3, v12

    and-int/2addr v3, v5

    if-eq v2, v3, :cond_19

    .line 77
    aget-byte v1, v1, v4

    shr-int/2addr v1, v12

    and-int/2addr v1, v5

    iput v1, v0, Lmodule/canbus/s;->o0:I

    if-ne v1, v5, :cond_16

    .line 78
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 79
    invoke-static {}, Lk0/qt;->t()V

    :cond_15
    const/16 v1, 0x14

    .line 80
    iput v1, v0, Lmodule/canbus/s;->w:I

    .line 81
    iget-object v1, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 82
    :cond_16
    iget v1, v0, Lmodule/canbus/s;->w:I

    if-lez v1, :cond_17

    .line 83
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 84
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v3, v4}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_3

    .line 85
    :cond_17
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 86
    invoke-static {}, Lk0/qt;->f()V

    .line 87
    :cond_18
    iget-object v1, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 88
    :cond_19
    :goto_3
    iput-boolean v5, v0, Lmodule/canbus/s;->C:Z

    goto/16 :goto_2d

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 89
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 90
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 91
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 92
    aget-byte v1, v1, v6

    const/16 v6, 0xa5

    new-array v9, v5, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v5

    aput v10, v9, v7

    .line 93
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xa6

    new-array v9, v5, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v5

    aput v10, v9, v7

    .line 94
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xa7

    new-array v9, v5, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v5

    aput v2, v9, v7

    .line 95
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v6, v5, [I

    and-int/lit8 v3, v3, 0xf

    aput v3, v6, v7

    .line 96
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v5, [I

    shr-int/lit8 v6, v4, 0x7

    and-int/2addr v6, v5

    aput v6, v3, v7

    .line 97
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v5, [I

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    .line 98
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v5, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 99
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v5, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 100
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v5, [I

    and-int/2addr v1, v14

    aput v1, v3, v7

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 102
    aget-byte v1, v1, v2

    const/16 v2, 0xb2

    new-array v3, v5, [I

    and-int/2addr v1, v5

    aput v1, v3, v7

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 104
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 105
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 106
    aget-byte v1, v1, v4

    const/16 v4, 0xae

    new-array v6, v5, [I

    and-int/lit8 v8, v2, 0x1

    aput v8, v6, v7

    .line 107
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xaf

    new-array v6, v5, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    aput v2, v6, v7

    .line 108
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v4, v5, [I

    aput v3, v4, v7

    .line 109
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v5, [I

    aput v1, v3, v7

    .line 110
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 111
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 112
    aget-byte v1, v1, v3

    const/16 v3, 0xa3

    new-array v4, v5, [I

    and-int/2addr v2, v5

    aput v2, v4, v7

    .line 113
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v5, [I

    aput v1, v3, v7

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 115
    aget-byte v3, v1, v2

    .line 116
    sget v4, Lk0/nt;->c:I

    if-ne v4, v8, :cond_d9

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_1d

    packed-switch v3, :pswitch_data_4

    .line 117
    invoke-static {}, Lk0/nt;->a()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 118
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 119
    aget-byte v1, v1, v3

    and-int/2addr v2, v15

    or-int/lit16 v2, v2, 0xa0

    .line 120
    iput v2, v0, Lmodule/canbus/s;->m:I

    move v2, v7

    .line 121
    :goto_4
    iget-object v3, v0, Lmodule/canbus/s;->n:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 122
    iget v4, v0, Lmodule/canbus/s;->m:I

    aget-object v6, v3, v2

    aget v6, v6, v7

    if-ne v4, v6, :cond_1a

    if-eqz v4, :cond_1b

    .line 123
    iput v2, v0, Lmodule/canbus/s;->l:I

    goto :goto_5

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1b
    :goto_5
    and-int/2addr v1, v15

    if-eqz v1, :cond_1c

    .line 124
    array-length v1, v3

    if-ge v2, v1, :cond_d9

    .line 125
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 126
    :cond_1c
    array-length v1, v3

    if-gt v2, v1, :cond_d9

    .line 127
    iget v1, v0, Lmodule/canbus/s;->l:I

    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 128
    :cond_1d
    :pswitch_6
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.canbus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_2d

    .line 129
    :cond_1e
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_2d

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 130
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 131
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 132
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x1

    .line 133
    aget-byte v6, v1, v6

    const/16 v9, 0xa0

    new-array v10, v5, [I

    aput v2, v10, v7

    .line 134
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v9, v5, [I

    aput v4, v9, v7

    .line 135
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    if-nez v3, :cond_1f

    .line 136
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    sub-int/2addr v6, v14

    const-string v4, "ascii"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v1, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, v0, Lmodule/canbus/s;->j:Ljava/lang/String;

    goto :goto_6

    :cond_1f
    if-ne v3, v5, :cond_20

    .line 137
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    sub-int/2addr v6, v14

    const-string v4, "unicode"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v1, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, v0, Lmodule/canbus/s;->j:Ljava/lang/String;

    :cond_20
    :goto_6
    const/16 v1, 0xa2

    .line 138
    iget-object v2, v0, Lmodule/canbus/s;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_8
    const/16 v2, 0x119

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 139
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11a

    new-array v3, v5, [I

    .line 140
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11b

    new-array v3, v5, [I

    .line 141
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11c

    new-array v3, v5, [I

    .line 142
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11d

    new-array v3, v5, [I

    .line 143
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11e

    new-array v3, v5, [I

    .line 144
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11f

    new-array v3, v5, [I

    .line 145
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x120

    new-array v3, v5, [I

    .line 146
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x121

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 147
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x122

    new-array v3, v5, [I

    .line 148
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x123

    new-array v3, v5, [I

    .line 149
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x124

    new-array v3, v5, [I

    .line 150
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x125

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 151
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x126

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 152
    aget-byte v1, v1, v4

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_9
    const/16 v2, 0x10e

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 153
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10f

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 154
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x110

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 155
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x111

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 156
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x112

    new-array v3, v5, [I

    .line 157
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x113

    new-array v3, v5, [I

    .line 158
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x114

    new-array v3, v5, [I

    .line 159
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x115

    new-array v3, v5, [I

    .line 160
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x116

    new-array v3, v5, [I

    .line 161
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x117

    new-array v3, v5, [I

    .line 162
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x118

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 163
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 164
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_5

    goto/16 :goto_2d

    :pswitch_b
    const/16 v2, 0x190

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 165
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x191

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 166
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x192

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 167
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_c
    const/16 v2, 0x18a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 168
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 169
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 170
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 171
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18e

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 172
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18f

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 173
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_d
    const/16 v2, 0x184

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 174
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x185

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 175
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x186

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 176
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x187

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 177
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x188

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 178
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x189

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 179
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_e
    const/16 v2, 0x17e

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 180
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17f

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 181
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x180

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 182
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x181

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 183
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x182

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 184
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x183

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 185
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_f
    const/16 v2, 0x178

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 186
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x179

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 187
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 188
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 189
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 190
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 191
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_10
    const/16 v2, 0x172

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 192
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x173

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 193
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x174

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 194
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x175

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 195
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x176

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 196
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x177

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 197
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_11
    const/16 v2, 0x16c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 198
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 199
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16e

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 200
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16f

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 201
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x170

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 202
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x171

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 203
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_12
    const/16 v2, 0x166

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 204
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x167

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 205
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x168

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 206
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x169

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 207
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 208
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 209
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_13
    const/16 v2, 0x164

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 210
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x165

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 211
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_14
    const/16 v2, 0x162

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 212
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x163

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 213
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_15
    const/16 v2, 0x15b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 214
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 215
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 216
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15e

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 217
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15f

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 218
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x160

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 219
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x161

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x9

    .line 220
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_16
    const/16 v2, 0x154

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 221
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x155

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 222
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x156

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 223
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x157

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 224
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x158

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 225
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x159

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 226
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x9

    .line 227
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_17
    add-int/lit8 v2, p2, 0x2

    .line 228
    aget-byte v2, v1, v2

    if-eq v2, v5, :cond_2a

    if-eq v2, v13, :cond_27

    if-eq v2, v14, :cond_26

    if-eq v2, v8, :cond_23

    if-eq v2, v11, :cond_22

    const/4 v4, 0x7

    if-eq v2, v4, :cond_21

    goto/16 :goto_2d

    .line 229
    :cond_21
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    const/16 v4, 0x11

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x152

    .line 230
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_2d

    :cond_22
    const/16 v2, 0x148

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 231
    aget-byte v6, v1, v6

    shl-int/lit8 v6, v6, 0x18

    const/high16 v9, -0x1000000

    and-int/2addr v6, v9

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    shl-int/lit8 v3, v9, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v3, v9

    or-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    or-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    or-int/2addr v3, v6

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x149

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x7

    .line 232
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x8

    .line 233
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x9

    .line 234
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xa

    .line 235
    aget-byte v6, v1, v4

    const/4 v9, 0x7

    shr-int/2addr v6, v9

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14d

    new-array v3, v5, [I

    .line 236
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14e

    new-array v3, v5, [I

    .line 237
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14f

    new-array v3, v5, [I

    .line 238
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x150

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xb

    .line 239
    aget-byte v6, v1, v4

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    add-int/lit8 v8, p2, 0xc

    aget-byte v9, v1, v8

    and-int/2addr v9, v15

    or-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x151

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0xd

    .line 240
    aget-byte v9, v1, v6

    shl-int/2addr v9, v10

    and-int v9, v9, v17

    add-int/lit8 v11, p2, 0xe

    aget-byte v12, v1, v11

    and-int/2addr v12, v15

    or-int/2addr v9, v12

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x153

    new-array v3, v5, [I

    add-int/lit8 v9, p2, 0xf

    .line 241
    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v5, [I

    .line 242
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int v4, v4, v17

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v5, [I

    .line 243
    aget-byte v4, v1, v6

    shl-int/2addr v4, v10

    and-int v4, v4, v17

    aget-byte v1, v1, v11

    and-int/2addr v1, v15

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_23
    const/16 v2, 0xfa

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 244
    aget-byte v6, v1, v6

    shl-int/2addr v6, v3

    const/high16 v8, 0xff0000

    and-int/2addr v6, v8

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    or-int/2addr v6, v8

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x6

    .line 245
    aget-byte v8, v1, v6

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    add-int/lit8 v11, p2, 0x7

    aget-byte v12, v1, v11

    and-int/2addr v12, v15

    or-int/2addr v8, v12

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v4, v5, [I

    add-int/lit8 v8, p2, 0x8

    .line 246
    aget-byte v8, v1, v8

    shl-int/2addr v8, v3

    const/high16 v12, 0xff0000

    and-int/2addr v8, v12

    add-int/lit8 v12, p2, 0x9

    aget-byte v12, v1, v12

    shl-int/2addr v12, v10

    and-int v12, v12, v17

    or-int/2addr v8, v12

    add-int/lit8 v12, p2, 0xa

    aget-byte v12, v1, v12

    and-int/2addr v12, v15

    or-int/2addr v8, v12

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfd

    new-array v4, v5, [I

    add-int/lit8 v8, p2, 0xb

    .line 247
    aget-byte v8, v1, v8

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    add-int/lit8 v12, p2, 0xc

    aget-byte v12, v1, v12

    and-int/2addr v12, v15

    or-int/2addr v8, v12

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfe

    new-array v4, v5, [I

    add-int/lit8 v8, p2, 0xd

    .line 248
    aget-byte v8, v1, v8

    shl-int/2addr v8, v3

    const/high16 v12, 0xff0000

    and-int/2addr v8, v12

    add-int/lit8 v12, p2, 0xe

    aget-byte v12, v1, v12

    shl-int/2addr v12, v10

    and-int v12, v12, v17

    or-int/2addr v8, v12

    add-int/lit8 v12, p2, 0xf

    aget-byte v12, v1, v12

    and-int/2addr v12, v15

    or-int/2addr v8, v12

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v5, [I

    add-int/lit8 v4, p2, 0x10

    .line 249
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int v4, v4, v17

    add-int/lit8 v8, p2, 0x11

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x100

    new-array v4, v5, [I

    add-int/lit8 v8, p2, 0x12

    .line 250
    aget-byte v8, v1, v8

    shl-int/2addr v8, v3

    const/high16 v12, 0xff0000

    and-int/2addr v8, v12

    add-int/lit8 v12, p2, 0x13

    aget-byte v12, v1, v12

    shl-int/2addr v12, v10

    and-int v12, v12, v17

    or-int/2addr v8, v12

    add-int/lit8 v12, p2, 0x14

    aget-byte v12, v1, v12

    and-int/2addr v12, v15

    or-int/2addr v8, v12

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x101

    new-array v4, v5, [I

    add-int/lit8 v8, p2, 0x15

    .line 251
    aget-byte v8, v1, v8

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    add-int/lit8 v12, p2, 0x16

    aget-byte v12, v1, v12

    and-int/2addr v12, v15

    or-int/2addr v8, v12

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x17

    .line 252
    aget-byte v2, v1, v2

    const/16 v4, 0x106

    new-array v8, v5, [I

    and-int/lit8 v12, v2, 0x3

    aput v12, v8, v7

    .line 253
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x105

    new-array v8, v5, [I

    shr-int/lit8 v12, v2, 0x2

    and-int/2addr v12, v14

    aput v12, v8, v7

    .line 254
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x104

    new-array v8, v5, [I

    shr-int/lit8 v12, v2, 0x4

    and-int/2addr v12, v14

    aput v12, v8, v7

    .line 255
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x103

    new-array v8, v5, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v5

    aput v14, v8, v7

    .line 256
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x102

    new-array v8, v5, [I

    const/4 v14, 0x7

    shr-int/2addr v2, v14

    and-int/2addr v2, v5

    aput v2, v8, v7

    .line 257
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    .line 258
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v13, [I

    const/16 v8, 0x13

    aput v8, v4, v7

    shl-int/lit8 v3, v12, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v3, v8

    aget-byte v6, v1, v6

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    or-int/2addr v3, v6

    aget-byte v6, v1, v11

    and-int/2addr v6, v15

    or-int/2addr v3, v6

    aput v3, v4, v5

    const/16 v3, 0x419

    invoke-static {v2, v3, v4, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x18

    .line 259
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    if-gez v1, :cond_24

    move v3, v7

    goto :goto_7

    :cond_24
    const/16 v2, 0xb

    if-le v1, v2, :cond_25

    const/16 v3, 0xb

    goto :goto_7

    :cond_25
    move v3, v1

    :goto_7
    const/16 v1, 0x107

    new-array v2, v5, [I

    .line 260
    iget-object v4, v0, Lmodule/canbus/s;->b:[I

    aget v3, v4, v3

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_26
    const/16 v2, 0xda

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 261
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_27
    const/16 v2, 0x6e

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 262
    aget-byte v6, v1, v6

    shl-int/2addr v6, v3

    const/high16 v8, 0xff0000

    and-int/2addr v6, v8

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    or-int/2addr v6, v8

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x6

    .line 263
    aget-byte v6, v1, v6

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    add-int/lit8 v8, p2, 0x7

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x8

    .line 264
    aget-byte v6, v1, v6

    shl-int/2addr v6, v3

    const/high16 v8, 0xff0000

    and-int/2addr v6, v8

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v1, v8

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    or-int/2addr v6, v8

    add-int/lit8 v8, p2, 0xa

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0xb

    .line 265
    aget-byte v6, v1, v6

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    add-int/lit8 v8, p2, 0xc

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0xd

    .line 266
    aget-byte v6, v1, v6

    shl-int/lit8 v3, v6, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v3, v6

    add-int/lit8 v6, p2, 0xe

    aget-byte v6, v1, v6

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    or-int/2addr v3, v6

    add-int/lit8 v6, p2, 0xf

    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    or-int/2addr v3, v6

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x10

    .line 267
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0x11

    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x12

    .line 268
    aget-byte v2, v1, v2

    const/16 v3, 0x68

    new-array v4, v5, [I

    and-int/lit8 v6, v2, 0x3

    aput v6, v4, v7

    .line 269
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v14

    aput v6, v4, v7

    .line 270
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x4

    and-int/2addr v6, v14

    aput v6, v4, v7

    .line 271
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 272
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v5, [I

    const/4 v6, 0x7

    shr-int/2addr v2, v6

    and-int/2addr v2, v5

    aput v2, v4, v7

    .line 273
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x13

    .line 274
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    if-gez v1, :cond_28

    move v3, v7

    goto :goto_8

    :cond_28
    const/16 v2, 0xb

    if-le v1, v2, :cond_29

    const/16 v3, 0xb

    goto :goto_8

    :cond_29
    move v3, v1

    :goto_8
    const/16 v1, 0x6d

    new-array v2, v5, [I

    .line 275
    iget-object v4, v0, Lmodule/canbus/s;->b:[I

    aget v3, v4, v3

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_2a
    const/16 v2, 0x62

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 276
    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v5, [I

    add-int/lit8 v6, p2, 0x4

    .line 277
    aget-byte v8, v1, v6

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    add-int/lit8 v11, p2, 0x5

    aget-byte v12, v1, v11

    and-int/2addr v12, v15

    or-int/2addr v8, v12

    aput v8, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v5, [I

    add-int/lit8 v8, p2, 0x6

    .line 278
    aget-byte v12, v1, v8

    shl-int/2addr v12, v10

    and-int v12, v12, v17

    add-int/lit8 v16, p2, 0x7

    aget-byte v9, v1, v16

    and-int/2addr v9, v15

    or-int/2addr v9, v12

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v5, [I

    add-int/lit8 v9, p2, 0x8

    .line 279
    aget-byte v12, v1, v9

    shl-int/2addr v12, v10

    and-int v12, v12, v17

    add-int/lit8 v18, p2, 0x9

    aget-byte v13, v1, v18

    and-int/2addr v13, v15

    or-int/2addr v12, v13

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v5, [I

    add-int/lit8 v12, p2, 0xa

    .line 280
    aget-byte v12, v1, v12

    shl-int/2addr v12, v3

    const/high16 v13, 0xff0000

    and-int/2addr v12, v13

    add-int/lit8 v13, p2, 0xb

    aget-byte v13, v1, v13

    shl-int/2addr v13, v10

    and-int v13, v13, v17

    or-int/2addr v12, v13

    add-int/lit8 v13, p2, 0xc

    aget-byte v13, v1, v13

    and-int/2addr v13, v15

    or-int/2addr v12, v13

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v5, [I

    add-int/lit8 v12, p2, 0xd

    .line 281
    aget-byte v12, v1, v12

    shl-int/2addr v12, v10

    and-int v12, v12, v17

    add-int/lit8 v13, p2, 0xe

    aget-byte v13, v1, v13

    and-int/2addr v13, v15

    or-int/2addr v12, v13

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 282
    aget-byte v2, v1, v2

    const/16 v4, 0x68

    new-array v12, v5, [I

    and-int/lit8 v13, v2, 0x3

    aput v13, v12, v7

    .line 283
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x69

    new-array v12, v5, [I

    shr-int/lit8 v13, v2, 0x2

    and-int/2addr v13, v14

    aput v13, v12, v7

    .line 284
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6a

    new-array v12, v5, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v14

    aput v13, v12, v7

    .line 285
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v12, v5, [I

    shr-int/lit8 v14, v2, 0x6

    and-int/2addr v14, v5

    aput v14, v12, v7

    .line 286
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6c

    new-array v12, v5, [I

    const/4 v14, 0x7

    shr-int/2addr v2, v14

    and-int/2addr v2, v5

    aput v2, v12, v7

    .line 287
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    .line 288
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/4 v4, 0x2

    new-array v12, v4, [I

    aput v3, v12, v7

    shl-int/lit8 v4, v13, 0x10

    const/high16 v13, 0xff0000

    and-int/2addr v4, v13

    aget-byte v6, v1, v6

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    or-int/2addr v6, v4

    aget-byte v11, v1, v11

    and-int/2addr v11, v15

    or-int/2addr v6, v11

    aput v6, v12, v5

    const/16 v6, 0x419

    const/4 v11, 0x0

    invoke-static {v2, v6, v12, v11, v11}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v11, v6, [I

    const/16 v6, 0x11

    aput v6, v11, v7

    .line 289
    aget-byte v6, v1, v8

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    or-int/2addr v6, v4

    aget-byte v8, v1, v16

    and-int/2addr v8, v15

    or-int/2addr v6, v8

    aput v6, v11, v5

    const/16 v6, 0x419

    const/4 v8, 0x0

    invoke-static {v2, v6, v11, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/16 v8, 0x12

    aput v8, v6, v7

    .line 290
    aget-byte v8, v1, v9

    shl-int/2addr v8, v10

    and-int v8, v8, v17

    or-int/2addr v4, v8

    aget-byte v8, v1, v18

    and-int/2addr v8, v15

    or-int/2addr v4, v8

    aput v4, v6, v5

    const/16 v4, 0x419

    const/4 v8, 0x0

    invoke-static {v2, v4, v6, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x10

    .line 291
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    if-gez v1, :cond_2b

    move v3, v7

    goto :goto_9

    :cond_2b
    const/16 v2, 0xb

    if-le v1, v2, :cond_2c

    const/16 v3, 0xb

    goto :goto_9

    :cond_2c
    move v3, v1

    :goto_9
    const/16 v1, 0x6d

    new-array v2, v5, [I

    .line 292
    iget-object v4, v0, Lmodule/canbus/s;->b:[I

    aget v3, v4, v3

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_18
    add-int/lit8 v2, p2, 0x2

    .line 293
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 294
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 295
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 296
    aget-byte v6, v1, v6

    add-int/lit8 v9, p2, 0x6

    .line 297
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x7

    .line 298
    aget-byte v10, v1, v10

    add-int/lit8 v13, p2, 0x8

    .line 299
    aget-byte v13, v1, v13

    add-int/lit8 v15, p2, 0x9

    .line 300
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0xa

    .line 301
    aget-byte v16, v1, v16

    const/16 v8, 0x78

    new-array v12, v5, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x3

    aput v17, v12, v7

    .line 302
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x77

    new-array v12, v5, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x3

    aput v17, v12, v7

    .line 303
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0x79

    new-array v12, v5, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v12, v7

    .line 304
    invoke-static {v8, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v8, v5, [I

    shr-int/lit8 v12, v3, 0x4

    const/16 v17, 0x7

    and-int/lit8 v12, v12, 0x7

    aput v12, v8, v7

    .line 305
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v8, v5, [I

    shr-int/lit8 v12, v3, 0x2

    and-int/2addr v12, v14

    aput v12, v8, v7

    .line 306
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v8, v5, [I

    and-int/2addr v3, v14

    aput v3, v8, v7

    .line 307
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v5, [I

    shr-int/lit8 v8, v4, 0x7

    and-int/2addr v8, v5

    aput v8, v3, v7

    .line 308
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v5, [I

    shr-int/lit8 v8, v4, 0x6

    and-int/2addr v8, v5

    aput v8, v3, v7

    .line 309
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v5, [I

    shr-int/lit8 v8, v4, 0x4

    and-int/2addr v8, v14

    aput v8, v3, v7

    .line 310
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v5, [I

    shr-int/lit8 v8, v4, 0x2

    and-int/2addr v8, v14

    aput v8, v3, v7

    .line 311
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v5, [I

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 312
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v5, [I

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 313
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v5, [I

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 314
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v5, [I

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 315
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v5, [I

    shr-int/lit8 v4, v6, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 316
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v5, [I

    shr-int/lit8 v4, v6, 0x0

    const/4 v8, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 317
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v5, [I

    shr-int/lit8 v4, v9, 0x6

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 318
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v5, [I

    shr-int/lit8 v4, v9, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 319
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v5, [I

    shr-int/lit8 v4, v9, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 320
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v5, [I

    shr-int/lit8 v4, v9, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 321
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v5, [I

    shr-int/lit8 v4, v9, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 322
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v5, [I

    shr-int/lit8 v4, v9, 0x1

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 323
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v5, [I

    shr-int/lit8 v4, v9, 0x0

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 324
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v5, [I

    shr-int/lit8 v4, v10, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 325
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v5, [I

    shr-int/lit8 v4, v10, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 326
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v5, [I

    shr-int/lit8 v4, v10, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 327
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v5, [I

    shr-int/lit8 v4, v10, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 328
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v5, [I

    shr-int/lit8 v4, v10, 0x2

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 329
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v5, [I

    shr-int/lit8 v4, v10, 0x0

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 330
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v5, [I

    shr-int/lit8 v4, v13, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 331
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 332
    sget v2, Lk0/nt;->a:I

    const v3, 0xd012a

    if-ne v2, v3, :cond_2d

    const/16 v3, 0xb

    add-int/lit8 v2, p2, 0xb

    .line 333
    aget-byte v1, v1, v2

    const/16 v2, 0x9e

    new-array v3, v5, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 334
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v5, [I

    and-int/lit8 v4, v1, 0x1

    aput v4, v3, v7

    .line 335
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v5, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v5

    aput v1, v3, v7

    .line 336
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_2d
    const v3, 0x8012a

    if-eq v2, v3, :cond_2f

    const v3, 0x9012a

    if-eq v2, v3, :cond_2f

    const v3, 0xa012a

    if-eq v2, v3, :cond_2f

    const v3, 0xb012a

    if-eq v2, v3, :cond_2f

    const v3, 0xf012a

    if-ne v2, v3, :cond_2e

    goto/16 :goto_a

    :cond_2e
    const/16 v2, 0x9e

    new-array v3, v5, [I

    shr-int/lit8 v4, v13, 0x5

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 337
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v5, [I

    shr-int/lit8 v4, v13, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 338
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v5, [I

    shr-int/lit8 v4, v13, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 339
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v5, [I

    shr-int/lit8 v4, v13, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 340
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v5, [I

    shr-int/lit8 v4, v13, 0x1

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 341
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v5, [I

    shr-int/lit8 v4, v13, 0x0

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 342
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 343
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 344
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 345
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 346
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 347
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x2

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 348
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x1

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 349
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v5, [I

    shr-int/lit8 v4, v15, 0x0

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 350
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v3, v5, [I

    shr-int/lit8 v4, v16, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 351
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd9

    new-array v3, v5, [I

    shr-int/lit8 v4, v16, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 352
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v3, v5, [I

    shr-int/lit8 v4, v16, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 353
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xea

    new-array v3, v5, [I

    shr-int/lit8 v4, v16, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 354
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xb

    .line 355
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v3, v5, [I

    .line 356
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v3, v5, [I

    .line 357
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v3, v5, [I

    .line 358
    aget-byte v6, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v3, v5, [I

    .line 359
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v3, v5, [I

    .line 360
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xc

    .line 361
    aget-byte v6, v1, v4

    const/4 v8, 0x7

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v3, v5, [I

    .line 362
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v5, [I

    .line 363
    aget-byte v6, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v5, [I

    .line 364
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xeb

    new-array v3, v5, [I

    .line 365
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xec

    new-array v3, v5, [I

    .line 366
    aget-byte v4, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v4, v6

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12c

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xd

    .line 367
    aget-byte v6, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    const/4 v8, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12d

    new-array v3, v5, [I

    .line 368
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12e

    new-array v3, v5, [I

    .line 369
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12f

    new-array v3, v5, [I

    .line 370
    aget-byte v6, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x131

    new-array v3, v5, [I

    .line 371
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x130

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xe

    .line 372
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x193

    new-array v3, v5, [I

    .line 373
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x194

    new-array v3, v5, [I

    .line 374
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x195

    new-array v3, v5, [I

    .line 375
    aget-byte v6, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x196

    new-array v3, v5, [I

    .line 376
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x197

    new-array v3, v5, [I

    .line 377
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x198

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xf

    .line 378
    aget-byte v6, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    const/4 v8, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x199

    new-array v3, v5, [I

    .line 379
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v5

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19a

    new-array v3, v5, [I

    .line 380
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    const/4 v8, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19d

    new-array v3, v5, [I

    .line 381
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x10

    .line 382
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19c

    new-array v3, v5, [I

    .line 383
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v14

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19e

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x11

    .line 384
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19f

    new-array v3, v5, [I

    .line 385
    aget-byte v6, v1, v4

    const/4 v8, 0x4

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a0

    new-array v3, v5, [I

    .line 386
    aget-byte v6, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v6, v8

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a1

    new-array v3, v5, [I

    .line 387
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v14

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_2f
    :goto_a
    const/16 v1, 0x98

    new-array v2, v5, [I

    const/4 v3, 0x7

    shr-int/lit8 v3, v6, 0x7

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 388
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x99

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 389
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9a

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x5

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 390
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9b

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 391
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9c

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x3

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 392
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x9d

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x2

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 393
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v1, 0xb3

    new-array v2, v5, [I

    shr-int/lit8 v3, v13, 0x1

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 394
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb4

    new-array v2, v5, [I

    and-int/lit8 v3, v13, 0x1

    aput v3, v2, v7

    .line 395
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb5

    new-array v2, v5, [I

    mul-int/lit16 v3, v15, 0x100

    add-int v16, v16, v3

    aput v16, v2, v7

    .line 396
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 397
    sget v1, Lk0/nt;->a:I

    const v2, 0xf012a

    if-ne v1, v2, :cond_d9

    const/16 v1, 0x9e

    new-array v2, v5, [I

    shr-int/lit8 v3, v15, 0x6

    and-int/2addr v3, v14

    aput v3, v2, v7

    .line 398
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc1

    new-array v2, v5, [I

    shr-int/lit8 v3, v15, 0x5

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 399
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc2

    new-array v2, v5, [I

    const/4 v3, 0x4

    shr-int/lit8 v3, v15, 0x4

    and-int/2addr v3, v5

    aput v3, v2, v7

    .line 400
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 401
    :pswitch_19
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_d9

    add-int/lit8 v2, p2, 0x2

    .line 402
    aget-byte v3, v1, v2

    and-int/2addr v3, v15

    const/16 v4, 0x28

    invoke-static {v3, v7, v4}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lmodule/canbus/s;->D0:I

    .line 403
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 404
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 405
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 406
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x6

    .line 407
    aget-byte v8, v1, v8

    add-int/lit8 v9, p2, 0x7

    .line 408
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x8

    .line 409
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x9

    .line 410
    aget-byte v11, v1, v11

    const/16 v12, 0xa

    add-int/lit8 v12, p2, 0xa

    .line 411
    aget-byte v1, v1, v12

    const/16 v12, 0xb7

    new-array v13, v5, [I

    aput v2, v13, v7

    .line 412
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v12, v5, [I

    aput v3, v12, v7

    .line 413
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v5, [I

    aput v4, v3, v7

    .line 414
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v5, [I

    aput v6, v3, v7

    .line 415
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v5, [I

    aput v8, v3, v7

    .line 416
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v5, [I

    aput v9, v3, v7

    .line 417
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v5, [I

    aput v10, v3, v7

    .line 418
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v5, [I

    aput v11, v3, v7

    .line 419
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v5, [I

    aput v1, v3, v7

    .line 420
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 421
    :pswitch_1a
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_1b
    const/16 v2, 0x136

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 422
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x137

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 423
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v14

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_1c
    add-int/lit8 v2, p2, 0x2

    .line 424
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 425
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_30

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 426
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    const/4 v4, 0x2

    .line 427
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 428
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    const/4 v4, 0x4

    .line 429
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_30
    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 430
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v5

    aput v4, v3, v7

    const/4 v4, 0x2

    .line 431
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    .line 432
    invoke-static {v14, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v5

    aput v4, v3, v7

    const/4 v4, 0x4

    .line 433
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_c
    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v7

    const/4 v4, 0x5

    .line 434
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    const/4 v4, 0x2

    shr-int/2addr v2, v4

    and-int/2addr v2, v5

    aput v2, v3, v7

    .line 435
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    .line 436
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_31

    const/16 v3, 0x16

    if-ne v2, v3, :cond_d9

    .line 437
    :cond_31
    iget v2, v0, Lmodule/canbus/s;->r0:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    and-int/2addr v4, v5

    if-eq v2, v4, :cond_d9

    .line 438
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    iput v1, v0, Lmodule/canbus/s;->r0:I

    .line 439
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-nez v1, :cond_d9

    .line 440
    iget v1, v0, Lmodule/canbus/s;->r0:I

    if-ne v1, v5, :cond_32

    .line 441
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_2d

    .line 442
    :cond_32
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_2d

    :pswitch_1d
    add-int/lit8 v2, p2, 0x2

    .line 443
    aget-byte v3, v1, v2

    and-int/2addr v3, v15

    add-int/lit8 v4, p2, 0x3

    .line 444
    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    add-int/lit8 v8, p2, 0x4

    .line 445
    aget-byte v9, v1, v8

    and-int/2addr v9, v15

    const/4 v10, 0x5

    add-int/lit8 v10, p2, 0x5

    .line 446
    aget-byte v11, v1, v10

    and-int/2addr v11, v15

    if-nez v3, :cond_33

    if-nez v6, :cond_33

    if-nez v9, :cond_33

    if-nez v11, :cond_33

    .line 447
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_d

    .line 448
    :cond_33
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_34

    sget v7, Ll0/c0;->h:I

    if-ne v7, v6, :cond_34

    sget v7, Ll0/c0;->i:I

    if-ne v7, v9, :cond_34

    sget v7, Ll0/c0;->j:I

    if-eq v7, v11, :cond_35

    .line 449
    :cond_34
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_35

    .line 450
    invoke-static {v5}, Lu0/d;->C2(I)V

    const/4 v5, 0x4

    .line 451
    sput v5, Ll0/c0;->k:I

    .line 452
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 453
    :cond_35
    :goto_d
    sput v3, Ll0/c0;->g:I

    .line 454
    sput v6, Ll0/c0;->h:I

    .line 455
    sput v9, Ll0/c0;->i:I

    .line 456
    sput v11, Ll0/c0;->j:I

    .line 457
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 458
    aget-byte v2, v1, v4

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 459
    aget-byte v2, v1, v8

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 460
    aget-byte v1, v1, v10

    and-int/2addr v1, v15

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_2d

    :pswitch_1e
    const/16 v2, 0x138

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 461
    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x139

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 462
    aget-byte v8, v1, v6

    and-int/2addr v8, v15

    aput v8, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13a

    new-array v3, v5, [I

    add-int/lit8 v8, p2, 0x4

    .line 463
    aget-byte v9, v1, v8

    and-int/2addr v9, v15

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13b

    new-array v3, v5, [I

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    .line 464
    aget-byte v9, v1, v5

    and-int/2addr v9, v15

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 465
    aget-byte v2, v1, v4

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    .line 466
    aget-byte v2, v1, v6

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    .line 467
    aget-byte v2, v1, v8

    and-int/2addr v2, v15

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    .line 468
    aget-byte v1, v1, v5

    and-int/2addr v1, v15

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_2d

    .line 469
    :pswitch_1f
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_e

    :sswitch_0
    add-int/lit8 v2, p2, 0x6

    .line 470
    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v5

    .line 471
    iget v4, v0, Lmodule/canbus/s;->g:I

    if-eq v4, v2, :cond_37

    .line 472
    iput v2, v0, Lmodule/canbus/s;->g:I

    const-string v2, "persist.fyt.showduduair"

    .line 473
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_37

    .line 474
    iget v2, v0, Lmodule/canbus/s;->g:I

    if-ne v2, v5, :cond_37

    .line 475
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.carinfo.honda.ActivityAirControl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 476
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/s;->I3()V

    goto :goto_e

    .line 477
    :cond_36
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 478
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    .line 479
    :cond_37
    :goto_e
    sget v2, Lk0/nt;->a:I

    const v4, 0x56012a

    if-eq v2, v4, :cond_38

    const v4, 0x57012a

    if-eq v2, v4, :cond_38

    const v4, 0x58012a

    if-eq v2, v4, :cond_38

    const v4, 0x59012a

    if-eq v2, v4, :cond_38

    const v4, 0x70012a

    if-eq v2, v4, :cond_38

    const v4, 0x6d012a

    if-eq v2, v4, :cond_38

    const v4, 0x87012a

    if-eq v2, v4, :cond_38

    const v4, 0x6f012a

    if-eq v2, v4, :cond_38

    const v4, 0x6e012a

    if-eq v2, v4, :cond_38

    const v4, 0x88012a

    if-eq v2, v4, :cond_38

    const v4, 0x71012a

    if-eq v2, v4, :cond_38

    const v4, 0x72012a

    if-eq v2, v4, :cond_38

    const v4, 0x73012a

    if-eq v2, v4, :cond_38

    const v4, 0x74012a

    if-eq v2, v4, :cond_38

    const v4, 0x75012a

    if-eq v2, v4, :cond_38

    const v4, 0x76012a

    if-eq v2, v4, :cond_38

    const v4, 0x77012a

    if-eq v2, v4, :cond_38

    const v4, 0x78012a

    if-eq v2, v4, :cond_38

    const v4, 0x79012a

    if-eq v2, v4, :cond_38

    const v4, 0x7a012a

    if-eq v2, v4, :cond_38

    const v4, 0x7b012a

    if-eq v2, v4, :cond_38

    const v4, 0x7d012a

    if-eq v2, v4, :cond_38

    const v4, 0x7e012a

    if-eq v2, v4, :cond_38

    const v4, 0x7f012a

    if-eq v2, v4, :cond_38

    const v4, 0x80012a

    if-eq v2, v4, :cond_38

    const v4, 0x81012a

    if-eq v2, v4, :cond_38

    const v4, 0x82012a

    if-eq v2, v4, :cond_38

    const v4, 0x83012a

    if-eq v2, v4, :cond_38

    const v4, 0x84012a

    if-eq v2, v4, :cond_38

    const v4, 0x85012a

    if-eq v2, v4, :cond_38

    const v4, 0x86012a

    if-eq v2, v4, :cond_38

    const v4, 0x7c012a

    if-ne v2, v4, :cond_3a

    .line 480
    :cond_38
    iget v2, v0, Lmodule/canbus/s;->g:I

    add-int/lit8 v4, p2, 0x6

    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v5

    if-eq v2, v6, :cond_3a

    .line 481
    aget-byte v2, v1, v4

    shr-int/2addr v2, v11

    and-int/2addr v2, v5

    iput v2, v0, Lmodule/canbus/s;->g:I

    if-ne v2, v5, :cond_3a

    const-string v2, "persist.fyt.showduduair"

    .line 482
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 483
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const/16 v2, 0x3e

    .line 484
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 485
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto :goto_f

    .line 486
    :cond_39
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 487
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    :cond_3a
    :goto_f
    add-int/lit8 v2, p2, 0x2

    .line 488
    aget-byte v2, v1, v2

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v5

    aput v6, v4, v7

    const/16 v6, 0xa

    .line 489
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v7

    const/16 v6, 0xb

    .line 490
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v5

    aput v6, v4, v7

    const/16 v6, 0xc

    .line 491
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3e

    new-array v6, v5, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v5

    aput v8, v6, v7

    .line 492
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v5

    aput v6, v4, v7

    const/16 v6, 0xd

    .line 493
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v6, v5, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v5

    aput v8, v6, v7

    .line 494
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    new-array v4, v5, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    aput v2, v4, v7

    .line 495
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 496
    aget-byte v2, v1, v2

    const/16 v3, 0x12

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 497
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 498
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v5, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v5

    aput v4, v3, v7

    const/16 v4, 0x14

    .line 499
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x7

    if-le v2, v3, :cond_3b

    const/4 v2, 0x7

    :cond_3b
    const/16 v3, 0x15

    new-array v4, v5, [I

    aput v2, v4, v7

    .line 500
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 501
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_40

    add-int/lit8 v2, p2, 0x4

    .line 502
    aget-byte v2, v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3d

    if-eqz v2, :cond_3c

    const/16 v3, 0x1b

    new-array v4, v5, [I

    and-int/2addr v2, v15

    aput v2, v4, v7

    .line 503
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3c
    const/16 v2, 0x1b

    new-array v3, v5, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 504
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3d
    const/16 v2, 0x1b

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 505
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_10
    add-int/lit8 v2, p2, 0x5

    .line 506
    aget-byte v2, v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    if-eqz v2, :cond_3e

    const/16 v3, 0x1c

    new-array v4, v5, [I

    and-int/2addr v2, v15

    aput v2, v4, v7

    .line 507
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_3e
    const/16 v2, 0x1c

    new-array v3, v5, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 508
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_3f
    const/16 v2, 0x1c

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 509
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_40
    add-int/lit8 v2, p2, 0x5

    .line 510
    aget-byte v2, v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    if-eqz v2, :cond_41

    const/16 v3, 0x1b

    new-array v4, v5, [I

    and-int/2addr v2, v15

    aput v2, v4, v7

    .line 511
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_41
    const/16 v2, 0x1b

    new-array v3, v5, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 512
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_42
    const/16 v2, 0x1b

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 513
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_11
    add-int/lit8 v2, p2, 0x4

    .line 514
    aget-byte v2, v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    if-eqz v2, :cond_43

    const/16 v3, 0x1c

    new-array v4, v5, [I

    and-int/2addr v2, v15

    aput v2, v4, v7

    .line 515
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_43
    const/16 v2, 0x1c

    new-array v3, v5, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 516
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_44
    const/16 v2, 0x1c

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 517
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_12
    add-int/lit8 v2, p2, 0x6

    .line 518
    aget-byte v2, v1, v2

    const/16 v3, 0x41

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 519
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x0

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 520
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 521
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x40

    new-array v4, v5, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v5

    aput v2, v4, v7

    .line 522
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 523
    aget-byte v2, v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_46

    if-eqz v2, :cond_45

    const/16 v3, 0x28

    new-array v4, v5, [I

    and-int/2addr v2, v15

    aput v2, v4, v7

    .line 524
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_45
    const/16 v2, 0x28

    new-array v3, v5, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 525
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_46
    const/16 v2, 0x28

    new-array v3, v5, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 526
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_13
    add-int/lit8 v2, p2, 0x9

    .line 527
    aget-byte v2, v1, v2

    const/16 v3, 0x30

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 528
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2e

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 529
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x5

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 530
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v4, v5, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v4, v7

    .line 531
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0xa

    .line 532
    aget-byte v4, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v4, v6

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 533
    aget-byte v2, v1, v2

    const/16 v3, 0x16

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x2

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 534
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x17

    new-array v4, v5, [I

    shr-int/lit8 v6, v2, 0x1

    and-int/2addr v6, v5

    aput v6, v4, v7

    .line 535
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v4, v5, [I

    and-int/2addr v2, v5

    aput v2, v4, v7

    .line 536
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    add-int/lit8 v2, p2, 0xb

    .line 537
    aget-byte v1, v1, v2

    const/16 v2, 0x1f

    new-array v3, v5, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 538
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v5, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 539
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v5, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v14

    aput v4, v3, v7

    .line 540
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v5, [I

    and-int/2addr v1, v14

    aput v1, v3, v7

    .line 541
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :pswitch_20
    add-int/lit8 v2, p2, 0x2

    .line 542
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 543
    aget-byte v1, v1, v4

    and-int/2addr v2, v15

    .line 544
    iput v2, v0, Lmodule/canbus/s;->m:I

    move v2, v7

    .line 545
    :goto_14
    iget-object v4, v0, Lmodule/canbus/s;->n:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_48

    .line 546
    iget v6, v0, Lmodule/canbus/s;->m:I

    aget-object v8, v4, v2

    aget v8, v8, v7

    if-ne v6, v8, :cond_47

    if-eqz v6, :cond_48

    .line 547
    iput v2, v0, Lmodule/canbus/s;->l:I

    goto :goto_15

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 548
    :cond_48
    :goto_15
    iget v6, v0, Lmodule/canbus/s;->m:I

    const/16 v8, 0x29

    if-eq v6, v8, :cond_d9

    packed-switch v6, :pswitch_data_6

    and-int/2addr v1, v15

    if-ne v1, v5, :cond_49

    .line 549
    array-length v1, v4

    if-ge v2, v1, :cond_d9

    .line 550
    aget-object v1, v4, v2

    aget v1, v1, v5

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_49
    if-nez v1, :cond_d9

    .line 551
    iget v1, v0, Lmodule/canbus/s;->l:I

    array-length v2, v4

    if-ge v1, v2, :cond_4a

    if-eq v1, v15, :cond_4a

    .line 552
    aget-object v1, v4, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 553
    :cond_4a
    iput v15, v0, Lmodule/canbus/s;->l:I

    goto/16 :goto_2d

    .line 554
    :pswitch_21
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_7

    packed-switch v2, :pswitch_data_8

    and-int/2addr v1, v15

    if-ne v1, v5, :cond_d9

    .line 555
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v1

    invoke-virtual {v1}, Lplugins/ZLink;->d0()Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "sys.carlink.type"

    invoke-static {v1, v7}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_4b

    goto :goto_16

    .line 556
    :cond_4b
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_4c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4c

    .line 557
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 558
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_4c
    const/16 v1, 0x1a

    .line 559
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 560
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 561
    :cond_4d
    :goto_16
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v11}, Lc/e;->c(I)Z

    goto/16 :goto_2d

    .line 562
    :pswitch_22
    iget v2, v0, Lmodule/canbus/s;->h:I

    and-int/2addr v1, v15

    if-eq v2, v1, :cond_d9

    .line 563
    iput v1, v0, Lmodule/canbus/s;->h:I

    if-eqz v1, :cond_50

    if-eq v1, v5, :cond_4f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4e

    goto/16 :goto_2d

    .line 564
    :cond_4e
    iput-boolean v5, v0, Lmodule/canbus/s;->i:Z

    const/16 v2, 0xc

    .line 565
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 566
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 567
    :cond_4f
    iput-boolean v7, v0, Lmodule/canbus/s;->i:Z

    goto/16 :goto_2d

    .line 568
    :cond_50
    iget-boolean v1, v0, Lmodule/canbus/s;->i:Z

    if-nez v1, :cond_54

    .line 569
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v1

    invoke-virtual {v1}, Lplugins/ZLink;->d0()Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "sys.carlink.type"

    invoke-static {v1, v7}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_51

    goto :goto_17

    .line 570
    :cond_51
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_52

    const/4 v2, 0x4

    if-eq v1, v2, :cond_52

    const/4 v2, 0x5

    if-eq v1, v2, :cond_52

    .line 571
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 572
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    goto :goto_18

    :cond_52
    const/16 v1, 0x1a

    .line 573
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 574
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto :goto_18

    .line 575
    :cond_53
    :goto_17
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v11}, Lc/e;->c(I)Z

    .line 576
    :cond_54
    :goto_18
    iput-boolean v7, v0, Lmodule/canbus/s;->i:Z

    goto/16 :goto_2d

    .line 577
    :pswitch_23
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_9

    packed-switch v2, :pswitch_data_a

    and-int/2addr v1, v15

    if-ne v1, v5, :cond_d9

    const/16 v1, 0x12

    .line 578
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 579
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 580
    :pswitch_24
    iget v2, v0, Lmodule/canbus/s;->h:I

    and-int/2addr v1, v15

    if-eq v2, v1, :cond_d9

    .line 581
    iput v1, v0, Lmodule/canbus/s;->h:I

    if-eqz v1, :cond_57

    if-eq v1, v5, :cond_56

    const/4 v2, 0x2

    if-eq v1, v2, :cond_55

    goto/16 :goto_2d

    .line 582
    :cond_55
    iput-boolean v5, v0, Lmodule/canbus/s;->i:Z

    const/16 v1, 0xd

    .line 583
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 584
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 585
    :cond_56
    iput-boolean v7, v0, Lmodule/canbus/s;->i:Z

    goto/16 :goto_2d

    .line 586
    :cond_57
    iget-boolean v1, v0, Lmodule/canbus/s;->i:Z

    if-nez v1, :cond_58

    .line 587
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_58

    const/4 v2, 0x5

    if-eq v1, v2, :cond_58

    const/16 v1, 0x12

    .line 588
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 589
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 590
    :cond_58
    iput-boolean v7, v0, Lmodule/canbus/s;->i:Z

    goto/16 :goto_2d

    :pswitch_25
    and-int/2addr v1, v15

    if-ne v1, v5, :cond_d9

    .line 591
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v1

    invoke-virtual {v1}, Lplugins/ZLink;->d0()Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "sys.carlink.type"

    invoke-static {v1, v7}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_59

    goto :goto_19

    .line 592
    :cond_59
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5a

    const/16 v1, 0xd

    .line 593
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 594
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_5a
    const/16 v1, 0x12

    .line 595
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 596
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 597
    :cond_5b
    :goto_19
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x240

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_2d

    .line 598
    :pswitch_26
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_b

    packed-switch v2, :pswitch_data_c

    and-int/2addr v1, v15

    if-ne v1, v5, :cond_d9

    const/4 v1, 0x5

    if-ne v2, v1, :cond_5d

    .line 599
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.honda.Act_CarCD_AoDeSai"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 600
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    const-string v3, "com.syu.carinfo.honda.Act_CarCD_AoDeSai"

    .line 601
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 602
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 603
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 604
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2d

    .line 605
    :cond_5c
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 606
    invoke-static {v11, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_5d
    const/4 v1, 0x2

    .line 607
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 608
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 609
    :pswitch_27
    iget v2, v0, Lmodule/canbus/s;->h:I

    and-int/2addr v1, v15

    if-eq v2, v1, :cond_d9

    .line 610
    iput v1, v0, Lmodule/canbus/s;->h:I

    if-eqz v1, :cond_60

    if-eq v1, v5, :cond_5f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5e

    goto/16 :goto_2d

    .line 611
    :cond_5e
    iput-boolean v5, v0, Lmodule/canbus/s;->i:Z

    .line 612
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 613
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 614
    :cond_5f
    iput-boolean v7, v0, Lmodule/canbus/s;->i:Z

    goto/16 :goto_2d

    :cond_60
    const/4 v2, 0x2

    .line 615
    iget-boolean v1, v0, Lmodule/canbus/s;->i:Z

    if-nez v1, :cond_61

    .line 616
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 617
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 618
    :cond_61
    iput-boolean v7, v0, Lmodule/canbus/s;->i:Z

    goto/16 :goto_2d

    :pswitch_28
    move v2, v13

    add-int/lit8 v2, p2, 0x2

    .line 619
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    .line 620
    iput v1, v0, Lmodule/canbus/s;->p:I

    move v1, v7

    .line 621
    :goto_1a
    iget-object v2, v0, Lmodule/canbus/s;->q:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_63

    .line 622
    iget v3, v0, Lmodule/canbus/s;->p:I

    aget-object v4, v2, v1

    aget v4, v4, v7

    if-ne v3, v4, :cond_62

    if-eqz v3, :cond_63

    .line 623
    iput v1, v0, Lmodule/canbus/s;->o:I

    goto :goto_1b

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 624
    :cond_63
    :goto_1b
    iget v1, v0, Lmodule/canbus/s;->p:I

    const/16 v3, 0x26

    if-eq v1, v3, :cond_64

    const/16 v3, 0x27

    if-eq v1, v3, :cond_64

    if-eqz v1, :cond_d9

    .line 625
    iget v1, v0, Lmodule/canbus/s;->o:I

    array-length v3, v2

    if-ge v1, v3, :cond_d9

    .line 626
    aget-object v1, v2, v1

    aget v1, v1, v5

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 627
    iget-object v1, v0, Lmodule/canbus/s;->q:[[I

    iget v2, v0, Lmodule/canbus/s;->o:I

    aget-object v1, v1, v2

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_64
    const-string v1, "com.syu.carlink"

    .line 628
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "com.syu.carlink"

    .line 629
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto/16 :goto_2d

    :pswitch_29
    move v2, v13

    add-int/lit8 v2, p2, 0x2

    .line 630
    aget-byte v1, v1, v2

    const/16 v2, 0x74

    new-array v3, v5, [I

    and-int/lit8 v1, v1, 0xf

    and-int/2addr v1, v15

    aput v1, v3, v7

    .line 631
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 632
    :pswitch_2a
    sget v2, Lh0/c;->E:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_78

    const/4 v3, 0x5

    if-eq v2, v3, :cond_78

    if-ne v2, v14, :cond_65

    goto/16 :goto_20

    .line 633
    :cond_65
    sget v2, Lmodule/canbus/s;->C0:I

    if-nez v2, :cond_66

    return-void

    .line 634
    :cond_66
    iput-boolean v5, v0, Lmodule/canbus/s;->D:Z

    add-int/lit8 v2, p2, 0x3

    .line 635
    aget-byte v3, v1, v2

    .line 636
    sget v4, Lmodule/canbus/s;->B0:I

    if-ne v4, v5, :cond_76

    iget-boolean v4, v0, Lmodule/canbus/s;->C:Z

    if-nez v4, :cond_76

    .line 637
    sget v4, Lk0/nt;->W:I

    if-nez v4, :cond_6f

    .line 638
    iget v4, v0, Lmodule/canbus/s;->o0:I

    aget-byte v6, v1, v2

    const/4 v7, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    if-eq v4, v6, :cond_6d

    .line 639
    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v5

    iput v4, v0, Lmodule/canbus/s;->o0:I

    if-ne v4, v5, :cond_69

    .line 640
    iget-boolean v4, v0, Lmodule/canbus/s;->t0:Z

    if-eqz v4, :cond_67

    .line 641
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_1c

    .line 642
    :cond_67
    sget-object v4, La/b;->O:Ljava/lang/String;

    invoke-static {v4}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 643
    invoke-static {}, Lk0/qt;->t()V

    :cond_68
    :goto_1c
    const/16 v4, 0x14

    .line 644
    iput v4, v0, Lmodule/canbus/s;->w:I

    .line 645
    iget-object v4, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_1d

    .line 646
    :cond_69
    iget-boolean v4, v0, Lmodule/canbus/s;->t0:Z

    if-eqz v4, :cond_6a

    .line 647
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v4

    iget-object v6, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v4, v6}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 648
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v4

    iget-object v6, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v7, 0xfa0

    invoke-static {v4, v6, v7, v8}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_1d

    .line 649
    :cond_6a
    iget v4, v0, Lmodule/canbus/s;->w:I

    if-lez v4, :cond_6b

    .line 650
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v4

    iget-object v6, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v4, v6}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 651
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v4

    iget-object v6, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v7, 0xfa0

    invoke-static {v4, v6, v7, v8}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_1d

    .line 652
    :cond_6b
    sget-object v4, La/b;->O:Ljava/lang/String;

    invoke-static {v4}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 653
    invoke-static {}, Lk0/qt;->f()V

    .line 654
    :cond_6c
    iget-object v4, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 655
    :cond_6d
    :goto_1d
    iget-boolean v4, v0, Lmodule/canbus/s;->t0:Z

    if-eqz v4, :cond_76

    .line 656
    iget v4, v0, Lmodule/canbus/s;->p0:I

    aget-byte v6, v1, v2

    shr-int/2addr v6, v14

    and-int/2addr v6, v5

    if-eq v4, v6, :cond_76

    .line 657
    aget-byte v1, v1, v2

    shr-int/2addr v1, v14

    and-int/2addr v1, v5

    iput v1, v0, Lmodule/canbus/s;->p0:I

    if-ne v1, v5, :cond_6e

    .line 658
    invoke-static {v5}, Lk0/qt;->a(I)V

    const/16 v1, 0x14

    .line 659
    iput v1, v0, Lmodule/canbus/s;->w:I

    .line 660
    iget-object v1, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 661
    :cond_6e
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 662
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa0

    invoke-static {v1, v2, v6, v7}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_1f

    .line 663
    :cond_6f
    aget-byte v4, v1, v2

    shr-int/2addr v4, v14

    and-int/2addr v4, v5

    .line 664
    sget v6, Lk0/nt;->c:I

    if-eq v6, v14, :cond_70

    const/4 v7, 0x4

    if-eq v6, v7, :cond_70

    const/16 v7, 0x23

    if-eq v6, v7, :cond_70

    const/16 v7, 0xd

    if-eq v6, v7, :cond_70

    if-eq v6, v5, :cond_70

    const/4 v7, 0x2

    if-ne v6, v7, :cond_71

    goto :goto_1e

    :cond_70
    const/4 v7, 0x2

    .line 665
    :goto_1e
    aget-byte v1, v1, v2

    shr-int/2addr v1, v7

    and-int/lit8 v4, v1, 0x1

    .line 666
    :cond_71
    iget v1, v0, Lmodule/canbus/s;->o0:I

    if-eq v1, v4, :cond_76

    .line 667
    iput v4, v0, Lmodule/canbus/s;->o0:I

    if-ne v4, v5, :cond_73

    .line 668
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 669
    invoke-static {}, Lk0/qt;->t()V

    :cond_72
    const/16 v1, 0x14

    .line 670
    iput v1, v0, Lmodule/canbus/s;->w:I

    .line 671
    iget-object v1, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 672
    :cond_73
    iget v1, v0, Lmodule/canbus/s;->w:I

    if-lez v1, :cond_74

    .line 673
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 674
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    iget-object v2, v0, Lmodule/canbus/s;->v:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa0

    invoke-static {v1, v2, v6, v7}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_1f

    .line 675
    :cond_74
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 676
    invoke-static {}, Lk0/qt;->f()V

    .line 677
    :cond_75
    iget-object v1, v0, Lmodule/canbus/s;->x:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_76
    :goto_1f
    shr-int/lit8 v1, v3, 0x6

    and-int/2addr v1, v5

    .line 678
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_d9

    if-ne v1, v5, :cond_d9

    .line 679
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 680
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_2d

    .line 681
    :cond_77
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 682
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_2d

    :cond_78
    :goto_20
    return-void

    .line 683
    :pswitch_2b
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_79

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_79

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_79

    const/16 v3, 0x9a

    if-eq v2, v3, :cond_79

    const/16 v3, 0x9b

    if-eq v2, v3, :cond_79

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_79

    const/16 v3, 0x40

    if-eq v2, v3, :cond_79

    const/16 v3, 0x49

    if-eq v2, v3, :cond_79

    const/16 v3, 0x9c

    if-eq v2, v3, :cond_79

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_79

    const/16 v3, 0x99

    if-eq v2, v3, :cond_79

    const/16 v3, 0x55

    if-ne v2, v3, :cond_d9

    :cond_79
    add-int/lit8 v2, p2, 0x2

    .line 684
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    const/16 v3, 0x40

    if-ne v2, v3, :cond_d9

    add-int/lit8 v2, p2, 0x3

    .line 685
    aget-byte v3, v1, v2

    if-nez v3, :cond_7a

    const/16 v1, 0x3f5

    new-array v2, v5, [I

    aput v5, v2, v7

    .line 686
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 687
    :cond_7a
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_7b

    const/16 v1, 0x3f5

    new-array v2, v5, [I

    aput v7, v2, v7

    .line 688
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_7b
    const/16 v3, 0x3f5

    new-array v4, v5, [I

    .line 689
    aget-byte v1, v1, v2

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_7c
    const/16 v2, 0x97

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 690
    aget-byte v6, v1, v4

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    const/4 v8, 0x2

    add-int/lit8 v8, p2, 0x2

    aget-byte v9, v1, v8

    and-int/2addr v9, v15

    or-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v5, [I

    .line 691
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int v4, v4, v17

    aget-byte v1, v1, v8

    and-int/2addr v1, v15

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 692
    :cond_7d
    sget v2, Lmodule/canbus/s;->B0:I

    if-ne v2, v5, :cond_81

    iget-boolean v2, v0, Lmodule/canbus/s;->D:Z

    if-nez v2, :cond_81

    .line 693
    sget v2, Lk0/nt;->W:I

    if-nez v2, :cond_7f

    .line 694
    iget v2, v0, Lmodule/canbus/s;->o0:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    const/4 v6, 0x7

    shr-int/2addr v4, v6

    and-int/2addr v4, v5

    if-eq v2, v4, :cond_81

    .line 695
    aget-byte v2, v1, v3

    shr-int/2addr v2, v6

    and-int/2addr v2, v5

    iput v2, v0, Lmodule/canbus/s;->o0:I

    if-ne v2, v5, :cond_7e

    .line 696
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 697
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_21

    .line 698
    :cond_7e
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 699
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_21

    :cond_7f
    add-int/lit8 v2, p2, 0x3

    .line 700
    aget-byte v2, v1, v2

    shr-int/2addr v2, v14

    and-int/2addr v2, v5

    .line 701
    iget v3, v0, Lmodule/canbus/s;->o0:I

    if-eq v3, v2, :cond_81

    .line 702
    iput v2, v0, Lmodule/canbus/s;->o0:I

    if-ne v2, v5, :cond_80

    .line 703
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 704
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_21

    .line 705
    :cond_80
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 706
    invoke-static {}, Lk0/qt;->f()V

    :cond_81
    :goto_21
    add-int/lit8 v2, p2, 0x3

    .line 707
    aget-byte v1, v1, v2

    shr-int/2addr v1, v11

    and-int/2addr v1, v5

    .line 708
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_d9

    if-ne v1, v5, :cond_d9

    .line 709
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 710
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_2d

    .line 711
    :cond_82
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d9

    .line 712
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_2d

    :cond_83
    add-int/lit8 v2, p2, 0x2

    .line 713
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 714
    aget-byte v1, v1, v3

    and-int/2addr v2, v15

    .line 715
    iput v2, v0, Lmodule/canbus/s;->s:I

    move v2, v7

    .line 716
    :goto_22
    iget-object v3, v0, Lmodule/canbus/s;->t:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_85

    .line 717
    iget v4, v0, Lmodule/canbus/s;->s:I

    aget-object v6, v3, v2

    aget v6, v6, v7

    if-ne v4, v6, :cond_84

    if-eqz v4, :cond_85

    .line 718
    iput v2, v0, Lmodule/canbus/s;->r:I

    goto :goto_23

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_85
    :goto_23
    and-int/2addr v1, v15

    if-ne v1, v5, :cond_86

    .line 719
    array-length v1, v3

    if-ge v2, v1, :cond_d9

    .line 720
    aget-object v1, v3, v2

    aget v1, v1, v5

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_86
    if-nez v1, :cond_d9

    .line 721
    iget v1, v0, Lmodule/canbus/s;->r:I

    array-length v2, v3

    if-ge v1, v2, :cond_87

    if-eq v1, v15, :cond_87

    .line 722
    aget-object v1, v3, v1

    aget v1, v1, v5

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 723
    :cond_87
    iput v15, v0, Lmodule/canbus/s;->r:I

    goto/16 :goto_2d

    .line 724
    :cond_88
    iget-boolean v2, v0, Lmodule/canbus/s;->B:Z

    if-nez v2, :cond_d9

    add-int/lit8 v2, p2, 0x2

    .line 725
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v15

    const/16 v3, 0x1200

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_2d

    :cond_89
    const/16 v2, 0xc

    add-int/lit8 v3, p2, 0x2

    .line 726
    aget-byte v3, v1, v3

    const/4 v8, 0x7

    shr-int/2addr v3, v8

    and-int/2addr v3, v5

    if-nez v3, :cond_8a

    goto :goto_24

    :cond_8a
    move v2, v11

    .line 727
    :goto_24
    sget-object v8, Lk0/nt;->g:[I

    const/16 v9, 0xf2

    aget v9, v8, v9

    if-eq v9, v2, :cond_8b

    const/16 v9, 0xf2

    .line 728
    aput v2, v8, v9

    .line 729
    sget-object v8, Lk0/nt;->f:[Lo1/x;

    new-array v12, v5, [I

    aput v2, v12, v7

    const/4 v2, 0x0

    invoke-static {v8, v9, v12, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_8b
    add-int/lit8 v2, p2, 0x3

    .line 730
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v8, v15

    or-int/2addr v2, v8

    if-nez v3, :cond_8c

    mul-int/lit8 v2, v2, 0xa

    .line 731
    :cond_8c
    sget-object v8, Lmodule/canbus/s;->x0:[I

    aget v9, v8, v7

    if-eq v9, v2, :cond_8d

    .line 732
    aput v2, v8, v7

    .line 733
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/4 v12, 0x2

    new-array v13, v12, [I

    aput v7, v13, v7

    aput v2, v13, v5

    const/4 v2, 0x0

    invoke-static {v9, v4, v13, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_8d
    add-int/lit8 v2, p2, 0x5

    .line 734
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0x6

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_8e

    mul-int/lit8 v2, v2, 0xa

    .line 735
    :cond_8e
    aget v9, v8, v5

    if-eq v9, v2, :cond_8f

    .line 736
    aput v2, v8, v5

    .line 737
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/4 v12, 0x2

    new-array v13, v12, [I

    aput v5, v13, v7

    aput v2, v13, v5

    const/4 v2, 0x0

    invoke-static {v9, v4, v13, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_8f
    add-int/lit8 v2, p2, 0x7

    .line 738
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_90

    mul-int/lit8 v2, v2, 0xa

    :cond_90
    const/4 v9, 0x2

    .line 739
    aget v12, v8, v9

    if-eq v12, v2, :cond_91

    .line 740
    aput v2, v8, v9

    .line 741
    sget-object v12, Lk0/nt;->f:[Lo1/x;

    new-array v13, v9, [I

    aput v9, v13, v7

    aput v2, v13, v5

    const/4 v2, 0x0

    invoke-static {v12, v4, v13, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_91
    add-int/lit8 v2, p2, 0x9

    .line 742
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0xa

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_92

    mul-int/lit8 v2, v2, 0xa

    .line 743
    :cond_92
    aget v9, v8, v14

    if-eq v9, v2, :cond_93

    .line 744
    aput v2, v8, v14

    .line 745
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/4 v12, 0x2

    new-array v13, v12, [I

    aput v14, v13, v7

    aput v2, v13, v5

    const/4 v2, 0x0

    invoke-static {v9, v4, v13, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_93
    add-int/lit8 v2, p2, 0xb

    .line 746
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_94

    mul-int/lit8 v2, v2, 0xa

    :cond_94
    const/4 v9, 0x4

    .line 747
    aget v12, v8, v9

    if-eq v12, v2, :cond_95

    .line 748
    aput v2, v8, v9

    .line 749
    sget-object v12, Lk0/nt;->f:[Lo1/x;

    const/4 v13, 0x2

    new-array v14, v13, [I

    aput v9, v14, v7

    aput v2, v14, v5

    const/4 v2, 0x0

    invoke-static {v12, v4, v14, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_95
    add-int/lit8 v2, p2, 0xd

    .line 750
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0xe

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_96

    mul-int/lit8 v2, v2, 0xa

    :cond_96
    const/4 v9, 0x5

    .line 751
    aget v12, v8, v9

    if-eq v12, v2, :cond_97

    .line 752
    aput v2, v8, v9

    .line 753
    sget-object v12, Lk0/nt;->f:[Lo1/x;

    const/4 v13, 0x2

    new-array v14, v13, [I

    aput v9, v14, v7

    aput v2, v14, v5

    const/4 v2, 0x0

    invoke-static {v12, v4, v14, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_97
    add-int/lit8 v2, p2, 0xf

    .line 754
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0x10

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_98

    mul-int/lit8 v2, v2, 0xa

    .line 755
    :cond_98
    aget v9, v8, v11

    if-eq v9, v2, :cond_99

    .line 756
    aput v2, v8, v11

    .line 757
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/4 v12, 0x2

    new-array v13, v12, [I

    aput v11, v13, v7

    aput v2, v13, v5

    const/4 v2, 0x0

    invoke-static {v9, v4, v13, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_99
    add-int/lit8 v2, p2, 0x11

    .line 758
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0x12

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_9a

    mul-int/lit8 v2, v2, 0xa

    :cond_9a
    const/4 v9, 0x7

    .line 759
    aget v11, v8, v9

    if-eq v11, v2, :cond_9b

    .line 760
    aput v2, v8, v9

    .line 761
    sget-object v11, Lk0/nt;->f:[Lo1/x;

    const/4 v12, 0x2

    new-array v13, v12, [I

    aput v9, v13, v7

    aput v2, v13, v5

    const/4 v2, 0x0

    invoke-static {v11, v4, v13, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_9b
    add-int/lit8 v2, p2, 0x13

    .line 762
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0x14

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_9c

    mul-int/lit8 v2, v2, 0xa

    .line 763
    :cond_9c
    aget v9, v8, v10

    if-eq v9, v2, :cond_9d

    .line 764
    aput v2, v8, v10

    .line 765
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/4 v11, 0x2

    new-array v12, v11, [I

    aput v10, v12, v7

    aput v2, v12, v5

    const/4 v2, 0x0

    invoke-static {v9, v4, v12, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_9d
    add-int/lit8 v2, p2, 0x15

    .line 766
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v9, p2, 0x16

    aget-byte v9, v1, v9

    and-int/2addr v9, v15

    or-int/2addr v2, v9

    if-nez v3, :cond_9e

    mul-int/lit8 v2, v2, 0xa

    .line 767
    :cond_9e
    aget v9, v8, v6

    if-eq v9, v2, :cond_9f

    .line 768
    aput v2, v8, v6

    .line 769
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/4 v11, 0x2

    new-array v12, v11, [I

    aput v6, v12, v7

    aput v2, v12, v5

    const/4 v2, 0x0

    invoke-static {v9, v4, v12, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_9f
    add-int/lit8 v2, p2, 0x17

    .line 770
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v6, p2, 0x18

    aget-byte v6, v1, v6

    and-int/2addr v6, v15

    or-int/2addr v2, v6

    if-nez v3, :cond_a0

    mul-int/lit8 v2, v2, 0xa

    :cond_a0
    const/16 v6, 0xa

    .line 771
    aget v9, v8, v6

    if-eq v9, v2, :cond_a1

    .line 772
    aput v2, v8, v6

    .line 773
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/4 v11, 0x2

    new-array v12, v11, [I

    aput v6, v12, v7

    aput v2, v12, v5

    const/4 v2, 0x0

    invoke-static {v9, v4, v12, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_a1
    add-int/lit8 v2, p2, 0x19

    .line 774
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    shl-int/2addr v2, v10

    add-int/lit8 v6, p2, 0x1a

    aget-byte v1, v1, v6

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    if-nez v3, :cond_a2

    mul-int/lit8 v1, v1, 0xa

    :cond_a2
    const/16 v2, 0xb

    .line 775
    aget v3, v8, v2

    if-eq v3, v1, :cond_d9

    .line 776
    aput v1, v8, v2

    .line 777
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v2, v6, v7

    aput v1, v6, v5

    const/4 v1, 0x0

    invoke-static {v3, v4, v6, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_a3
    add-int/lit8 v2, p2, 0x2

    .line 778
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 779
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 780
    aget-byte v1, v1, v4

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v5

    if-nez v4, :cond_a4

    move v6, v7

    goto :goto_25

    :cond_a4
    if-ne v4, v5, :cond_a5

    const/16 v6, 0x2710

    goto :goto_25

    :cond_a5
    move v6, v4

    .line 781
    :goto_25
    sget-object v8, Lk0/nt;->g:[I

    const/16 v9, 0xee

    aget v9, v8, v9

    if-eq v9, v6, :cond_a6

    const/16 v9, 0xee

    .line 782
    aput v6, v8, v9

    .line 783
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/16 v11, 0xee

    new-array v12, v5, [I

    aput v6, v12, v7

    const/4 v6, 0x0

    invoke-static {v9, v11, v12, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_a6
    and-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_a7

    move v6, v7

    goto :goto_26

    :cond_a7
    move v6, v5

    :goto_26
    const/16 v9, 0xf7

    .line 784
    aget v9, v8, v9

    if-eq v9, v6, :cond_a8

    const/16 v9, 0xf7

    .line 785
    aput v6, v8, v9

    .line 786
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/16 v11, 0xf7

    new-array v12, v5, [I

    aput v6, v12, v7

    const/4 v6, 0x0

    invoke-static {v9, v11, v12, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_a8
    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_a9

    move v6, v7

    goto :goto_27

    :cond_a9
    move v6, v5

    :goto_27
    const/16 v9, 0xf5

    .line 787
    aget v9, v8, v9

    if-eq v9, v6, :cond_aa

    const/16 v9, 0xf5

    .line 788
    aput v6, v8, v9

    .line 789
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/16 v11, 0xf5

    new-array v12, v5, [I

    aput v6, v12, v7

    const/4 v6, 0x0

    invoke-static {v9, v11, v12, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_aa
    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_ab

    move v6, v7

    goto :goto_28

    :cond_ab
    move v6, v5

    :goto_28
    const/16 v9, 0xf6

    .line 790
    aget v9, v8, v9

    if-eq v9, v6, :cond_ac

    const/16 v9, 0xf6

    .line 791
    aput v6, v8, v9

    .line 792
    sget-object v9, Lk0/nt;->f:[Lo1/x;

    const/16 v11, 0xf6

    new-array v12, v5, [I

    aput v6, v12, v7

    const/4 v6, 0x0

    invoke-static {v9, v11, v12, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_ac
    and-int/2addr v3, v15

    shl-int/2addr v3, v10

    and-int/2addr v1, v15

    or-int/2addr v1, v3

    if-nez v4, :cond_ad

    mul-int/lit8 v1, v1, 0xa

    :cond_ad
    const/16 v3, 0xed

    .line 793
    aget v3, v8, v3

    if-eq v3, v1, :cond_ae

    const/16 v3, 0xed

    .line 794
    aput v1, v8, v3

    .line 795
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0xed

    new-array v6, v5, [I

    aput v1, v6, v7

    const/4 v1, 0x0

    invoke-static {v3, v4, v6, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_ae
    and-int/lit8 v1, v2, 0xf

    sub-int/2addr v1, v5

    const/16 v2, 0xef

    .line 796
    aget v2, v8, v2

    if-eq v2, v1, :cond_d9

    const/16 v2, 0xef

    .line 797
    aput v1, v8, v2

    .line 798
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0xef

    new-array v4, v5, [I

    aput v1, v4, v7

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_af
    const/16 v2, 0x134

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x2

    .line 799
    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x135

    new-array v3, v5, [I

    add-int/lit8 v6, p2, 0x3

    .line 800
    aget-byte v8, v1, v6

    and-int/lit8 v8, v8, 0xf

    aput v8, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 801
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v18, v3, v7

    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int v4, v4, v17

    aget-byte v1, v1, v6

    and-int/2addr v1, v15

    or-int/2addr v1, v4

    aput v1, v3, v5

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_b0
    move v3, v13

    add-int/lit8 v2, p2, 0x2

    .line 802
    aget-byte v3, v1, v2

    .line 803
    sget v4, Lk0/nt;->c:I

    const/16 v6, 0x2e

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x2f

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x9a

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x9b

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x3d

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x40

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x49

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x9c

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x4a

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x99

    if-eq v4, v6, :cond_b1

    const/16 v6, 0x55

    if-eq v4, v6, :cond_b1

    const/16 v4, 0x3f5

    new-array v6, v5, [I

    and-int/2addr v3, v15

    aput v3, v6, v7

    .line 804
    invoke-static {v4, v6}, Lk0/qt;->y0(I[I)V

    .line 805
    :cond_b1
    iget v3, v0, Lmodule/canbus/s;->s0:I

    aget-byte v4, v1, v2

    if-eq v3, v4, :cond_b3

    .line 806
    aget-byte v3, v1, v2

    iput v3, v0, Lmodule/canbus/s;->s0:I

    .line 807
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v3

    if-nez v3, :cond_b3

    .line 808
    iget v3, v0, Lmodule/canbus/s;->s0:I

    if-eqz v3, :cond_b2

    .line 809
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto :goto_29

    .line 810
    :cond_b2
    invoke-static {v7}, Lk0/qt;->a(I)V

    .line 811
    :cond_b3
    :goto_29
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x16

    if-ne v3, v4, :cond_d9

    .line 812
    iget v3, v0, Lmodule/canbus/s;->u:I

    aget-byte v4, v1, v2

    if-eq v3, v4, :cond_d9

    .line 813
    aget-byte v4, v1, v2

    if-ne v4, v14, :cond_b4

    .line 814
    sget-object v3, Ly0/f;->b:Ly0/e;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ly0/e;->a(I)V

    goto :goto_2a

    :cond_b4
    if-ne v3, v14, :cond_b5

    .line 815
    sget-object v3, Ly0/f;->b:Ly0/e;

    sget v4, Lu0/b;->D:I

    invoke-virtual {v3, v4}, Ly0/e;->a(I)V

    .line 816
    :cond_b5
    :goto_2a
    aget-byte v1, v1, v2

    iput v1, v0, Lmodule/canbus/s;->u:I

    goto/16 :goto_2d

    :cond_b6
    const/16 v2, 0x95

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 817
    aget-byte v6, v1, v4

    shl-int/2addr v6, v10

    and-int v6, v6, v17

    const/4 v8, 0x2

    add-int/lit8 v8, p2, 0x2

    aget-byte v9, v1, v8

    and-int/2addr v9, v15

    or-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v5, [I

    .line 818
    aget-byte v4, v1, v4

    shl-int/2addr v4, v10

    and-int v4, v4, v17

    aget-byte v1, v1, v8

    and-int/2addr v1, v15

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_b7
    const/16 v2, 0x1a2

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 819
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a3

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 820
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a4

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 821
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a5

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 822
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1a6

    new-array v3, v5, [I

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    .line 823
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    :cond_b8
    add-int/lit8 v2, p2, 0x2

    .line 824
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 825
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 826
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 827
    aget-byte v6, v1, v6

    add-int/lit8 v8, p2, 0x6

    .line 828
    aget-byte v1, v1, v8

    and-int/2addr v3, v15

    if-gez v3, :cond_b9

    move v3, v7

    goto :goto_2b

    :cond_b9
    const/16 v8, 0x28

    if-le v3, v8, :cond_ba

    const/16 v3, 0x28

    .line 829
    :cond_ba
    :goto_2b
    sget-object v8, Lk0/nt;->g:[I

    const/16 v9, 0xf4

    aget v9, v8, v9

    if-eq v9, v3, :cond_bb

    const/16 v9, 0xf4

    .line 830
    aput v3, v8, v9

    .line 831
    sget-object v8, Lk0/nt;->f:[Lo1/x;

    new-array v11, v5, [I

    aput v3, v11, v7

    const/4 v12, 0x0

    invoke-static {v8, v9, v11, v12, v12}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_bb
    and-int/2addr v4, v15

    if-gez v4, :cond_bc

    move v4, v7

    goto :goto_2c

    :cond_bc
    sub-int/2addr v3, v5

    if-le v4, v3, :cond_bd

    move v4, v3

    :cond_bd
    :goto_2c
    and-int/lit8 v3, v2, 0xf

    if-eqz v3, :cond_be

    move v3, v5

    :cond_be
    and-int/2addr v6, v15

    shl-int/2addr v6, v10

    and-int/2addr v1, v15

    or-int/2addr v1, v6

    const/4 v6, 0x7

    shr-int/2addr v2, v6

    and-int/2addr v2, v5

    if-nez v2, :cond_bf

    mul-int/lit8 v1, v1, 0xa

    .line 832
    :cond_bf
    sget-object v6, Lmodule/canbus/s;->y0:[I

    aget v8, v6, v4

    if-eq v8, v1, :cond_d9

    .line 833
    aput v1, v6, v4

    .line 834
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    const/16 v8, 0xf3

    const/4 v9, 0x4

    new-array v9, v9, [I

    aput v4, v9, v7

    aput v1, v9, v5

    const/4 v1, 0x2

    aput v3, v9, v1

    aput v2, v9, v14

    const/4 v1, 0x0

    invoke-static {v6, v8, v9, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_c0
    add-int/lit8 v2, p2, 0x2

    .line 835
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_c2

    add-int/lit8 v2, p2, 0x3

    .line 836
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_c1

    const/16 v1, 0x48

    .line 837
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 838
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    .line 839
    :cond_c1
    aget-byte v1, v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d9

    const/16 v1, 0x47

    .line 840
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 841
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_2d

    :cond_c2
    const/4 v3, 0x2

    .line 842
    aget-byte v4, v1, v2

    if-ne v4, v3, :cond_c3

    const/16 v2, 0xe8

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 843
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 844
    :cond_c3
    aget-byte v3, v1, v2

    if-ne v3, v14, :cond_c4

    const/16 v2, 0xe9

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 845
    aget-byte v8, v1, v4

    and-int/2addr v8, v15

    aput v8, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 846
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v6, v3, v7

    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v5

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 847
    :cond_c4
    aget-byte v3, v1, v2

    if-ne v3, v11, :cond_ca

    add-int/lit8 v2, p2, 0x3

    .line 848
    aget-byte v2, v1, v2

    packed-switch v2, :pswitch_data_d

    goto/16 :goto_2d

    :pswitch_2c
    const-string v1, "\u8f66\u901f\u8d85\u8fc7170\uff0c\u8bf7\u52ff\u5371\u9669\u9a7e\u9a76\u54e6"

    .line 849
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_2d
    const-string v1, "\u8f66\u901f\u8d85\u8fc7150\uff0c\u8bf7\u52ff\u6fc0\u70c8\u9a7e\u9a76\u54e6"

    .line 850
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_2e
    const-string v1, "\u8f66\u901f\u8d85\u8fc7130"

    .line 851
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_2f
    const-string v1, "\u8f66\u901f\u8d85\u8fc7120"

    .line 852
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_30
    const-string v1, "\u60a8\u5df2\u8fde\u7eed\u9a7e\u9a76\u8d85\u8fc73\u5c0f\u65f6\uff0c\u8bf7\u52ff\u75b2\u52b3\u9a7e\u9a76\u54e6"

    .line 853
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_31
    const-string v1, "\u60a8\u5df2\u8fde\u7eed\u9a7e\u9a76\u8d85\u8fc72\u5c0f\u65f6\uff0c\u8bf7\u52ff\u75b2\u52b3\u9a7e\u9a76\u54e6"

    .line 854
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_32
    const-string v1, "\u884c\u9a76\u91cc\u7a0b\u5269\u4f5950\u516c\u91cc\u8bf7\u53ca\u65f6\u52a0\u6cb9\u54e6"

    .line 855
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_33
    const-string v1, "\u884c\u9a76\u91cc\u7a0b\u5269\u4f59100\u516c\u91cc\u8bf7\u53ca\u65f6\u52a0\u6cb9\u54e6"

    .line 856
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_34
    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 857
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_c5

    const-string v1, "\u540e\u5907\u7bb1\u5df2\u6253\u5f00"

    .line 858
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 859
    :cond_c5
    aget-byte v1, v1, v2

    if-nez v1, :cond_d9

    const-string v1, "\u540e\u5907\u7bb1\u5df2\u5173\u95ed"

    .line 860
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_35
    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 861
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_c6

    const-string v1, "\u53f3\u540e\u95e8\u5df2\u6253\u5f00"

    .line 862
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 863
    :cond_c6
    aget-byte v1, v1, v2

    if-nez v1, :cond_d9

    const-string v1, "\u53f3\u540e\u95e8\u5df2\u5173\u95ed"

    .line 864
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_36
    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 865
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_c7

    const-string v1, "\u5de6\u540e\u95e8\u5df2\u6253\u5f00"

    .line 866
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 867
    :cond_c7
    aget-byte v1, v1, v2

    if-nez v1, :cond_d9

    const-string v1, "\u5de6\u540e\u95e8\u5df2\u5173\u95ed"

    .line 868
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_37
    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 869
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_c8

    const-string v1, "\u53f3\u524d\u95e8\u5df2\u6253\u5f00"

    .line 870
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    .line 871
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v3, "exectue_tts voice \u53f3\u524d\u95e8\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 872
    :cond_c8
    aget-byte v1, v1, v2

    if-nez v1, :cond_d9

    const-string v1, "\u53f3\u524d\u95e8\u5df2\u5173\u95ed"

    .line 873
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_38
    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 874
    aget-byte v3, v1, v2

    if-ne v3, v5, :cond_c9

    const-string v1, "\u5de6\u524d\u95e8\u5df2\u6253\u5f00"

    .line 875
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    .line 876
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v3, "exectue_tts voice \u5de6\u524d\u95e8\u5df2\u6253\u5f00"

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 877
    :cond_c9
    aget-byte v1, v1, v2

    if-nez v1, :cond_d9

    const-string v1, "\u5de6\u524d\u95e8\u5df2\u5173\u95ed"

    .line 878
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_39
    const-string v1, "\u8bf7\u526f\u9a7e\u9a76\u4e58\u5ba2\u7cfb\u597d\u5b89\u5168\u5e26"

    .line 879
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    :pswitch_3a
    const-string v1, "\u8bf7\u4e3b\u9a7e\u9a76\u4e58\u5ba2\u7cfb\u597d\u5b89\u5168\u5e26"

    .line 880
    invoke-virtual {v0, v1}, Lmodule/canbus/s;->D3(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 881
    :cond_ca
    aget-byte v3, v1, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_cb

    const/16 v2, 0x108

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 882
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x109

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x4

    .line 883
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x5

    .line 884
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x6

    .line 885
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10c

    new-array v3, v5, [I

    const/4 v4, 0x7

    add-int/lit8 v4, p2, 0x7

    .line 886
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 887
    :cond_cb
    aget-byte v3, v1, v2

    if-ne v3, v10, :cond_cc

    const/16 v2, 0x10d

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 888
    aget-byte v6, v1, v4

    and-int/2addr v6, v15

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 889
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v6, 0x7

    aput v6, v3, v7

    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v5

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 890
    :cond_cc
    aget-byte v3, v1, v2

    const/16 v4, 0x16

    if-ne v3, v4, :cond_cd

    const/16 v2, 0x127

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 891
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2d

    .line 892
    :cond_cd
    aget-byte v3, v1, v2

    const/16 v4, 0x14

    if-ne v3, v4, :cond_ce

    .line 893
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/16 v4, 0xa

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v14

    aput v1, v3, v5

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 894
    :cond_ce
    aget-byte v3, v1, v2

    const/16 v4, 0x15

    if-ne v3, v4, :cond_d4

    add-int/lit8 v2, p2, 0x3

    .line 895
    aget-byte v1, v1, v2

    if-eqz v1, :cond_d3

    if-eq v1, v5, :cond_d2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d1

    if-eq v1, v14, :cond_d0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_cf

    goto/16 :goto_2d

    .line 896
    :cond_cf
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 897
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x254

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_2d

    .line 898
    :cond_d0
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 899
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x253

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_2d

    .line 900
    :cond_d1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 901
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x250

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_2d

    .line 902
    :cond_d2
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 903
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24f

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_2d

    .line 904
    :cond_d3
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 905
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_2d

    .line 906
    :cond_d4
    aget-byte v3, v1, v2

    const/16 v4, 0x17

    if-ne v3, v4, :cond_d5

    const/16 v2, 0x128

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 907
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2d

    .line 908
    :cond_d5
    aget-byte v3, v1, v2

    const/16 v4, 0x18

    if-ne v3, v4, :cond_d6

    const/16 v2, 0x129

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 909
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2d

    .line 910
    :cond_d6
    aget-byte v3, v1, v2

    const/16 v4, 0x19

    if-ne v3, v4, :cond_d7

    const/16 v2, 0x12a

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 911
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2d

    .line 912
    :cond_d7
    aget-byte v3, v1, v2

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_d8

    const/16 v2, 0x12b

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 913
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2d

    .line 914
    :cond_d8
    aget-byte v2, v1, v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_d9

    const/16 v2, 0x132

    new-array v3, v5, [I

    add-int/lit8 v4, p2, 0x3

    .line 915
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x133

    new-array v3, v5, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 916
    aget-byte v1, v1, v4

    and-int/2addr v1, v15

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_d9
    :goto_2d
    return-void

    :pswitch_data_0
    .packed-switch -0x30
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x77
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x11
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3012a -> :sswitch_0
        0x4012a -> :sswitch_0
        0xc012a -> :sswitch_0
        0xd012a -> :sswitch_0
        0xe012a -> :sswitch_0
        0x14012a -> :sswitch_0
        0x1c012a -> :sswitch_0
        0x1d012a -> :sswitch_0
        0x25012a -> :sswitch_0
        0x26012a -> :sswitch_0
        0x29012a -> :sswitch_0
        0x2a012a -> :sswitch_0
        0x2b012a -> :sswitch_0
        0x2c012a -> :sswitch_0
        0x31012a -> :sswitch_0
        0x32012a -> :sswitch_0
        0x3c012a -> :sswitch_0
        0x40012a -> :sswitch_0
        0x49012a -> :sswitch_0
        0x4a012a -> :sswitch_0
        0x4c012a -> :sswitch_0
        0x4d012a -> :sswitch_0
        0x4e012a -> :sswitch_0
        0x4f012a -> :sswitch_0
        0x50012a -> :sswitch_0
        0x51012a -> :sswitch_0
        0x5a012a -> :sswitch_0
        0x5b012a -> :sswitch_0
        0x5c012a -> :sswitch_0
        0x5d012a -> :sswitch_0
        0x5e012a -> :sswitch_0
        0x5f012a -> :sswitch_0
        0x60012a -> :sswitch_0
        0x61012a -> :sswitch_0
        0x63012a -> :sswitch_0
        0x64012a -> :sswitch_0
        0x67012a -> :sswitch_0
        0x68012a -> :sswitch_0
        0x69012a -> :sswitch_0
        0x6a012a -> :sswitch_0
        0x89012a -> :sswitch_0
        0x8a012a -> :sswitch_0
        0x8b012a -> :sswitch_0
        0x8c012a -> :sswitch_0
        0x8d012a -> :sswitch_0
        0x8e012a -> :sswitch_0
        0x8f012a -> :sswitch_0
        0x90012a -> :sswitch_0
        0x91012a -> :sswitch_0
        0x92012a -> :sswitch_0
        0x93012a -> :sswitch_0
        0x94012a -> :sswitch_0
        0x99012a -> :sswitch_0
        0x9a012a -> :sswitch_0
        0x9b012a -> :sswitch_0
        0x9c012a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x7
        :pswitch_26
        :pswitch_25
        :pswitch_23
        :pswitch_21
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x56
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x6d
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x56
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x6d
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x56
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x6d
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/s;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/s;->z:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/s;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/s;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/s;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->e0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v1, p0, Lmodule/canbus/s;->f0:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, p0, Lmodule/canbus/s;->n0:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 11
    sget-object v1, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->h0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v1, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->j0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v1, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->i0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v1, Lu0/c;->w:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->k0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->m0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/s;->l0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    iget-object v1, p0, Lmodule/canbus/s;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lmodule/canbus/s;->v0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lmodule/canbus/s;->O:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 20
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/s;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 21
    sget-object v0, Lh0/d;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/s;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 22
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/s;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lmodule/canbus/s;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x1a7

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

    const/16 v3, 0x3ed

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    const/16 v3, 0x405

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/16 v9, 0x8

    const/16 v10, 0xe3

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v1, v3, :cond_2

    const/16 v3, -0x70

    packed-switch v1, :pswitch_data_0

    const/16 v16, 0xa

    const/16 v15, 0xb

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const/16 v3, -0xd

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v6, [I

    aput v10, v1, v5

    aput v3, v1, v4

    aput v8, v1, v14

    .line 2
    aget v3, v2, v5

    aput v3, v1, v13

    aget v3, v2, v4

    aput v3, v1, v12

    aget v3, v2, v14

    aput v3, v1, v11

    aget v3, v2, v13

    aput v3, v1, v8

    aget v3, v2, v12

    aput v3, v1, v7

    aget v2, v2, v11

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v6, [I

    aput v10, v1, v5

    aput v3, v1, v4

    aput v8, v1, v14

    aput v7, v1, v13

    .line 4
    aget v3, v2, v5

    aput v3, v1, v12

    aget v3, v2, v4

    aput v3, v1, v11

    aget v3, v2, v14

    aput v3, v1, v8

    aget v3, v2, v13

    aput v3, v1, v7

    aget v2, v2, v12

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 5
    :pswitch_2
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    aput v3, v1, v4

    aput v14, v1, v14

    .line 6
    aget v3, v2, v5

    aput v3, v1, v13

    aget v2, v2, v4

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 7
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/s;->a3()V

    goto/16 :goto_1

    :pswitch_4
    if-eqz v2, :cond_6

    .line 8
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v15, [I

    aput v10, v1, v5

    const/16 v3, -0x37

    aput v3, v1, v4

    aput v9, v1, v14

    .line 9
    aget v3, v2, v5

    aput v3, v1, v13

    aget v3, v2, v4

    aput v3, v1, v12

    aget v3, v2, v14

    aput v3, v1, v11

    aget v3, v2, v13

    aput v3, v1, v8

    aget v3, v2, v12

    aput v3, v1, v7

    aget v3, v2, v11

    aput v3, v1, v9

    aget v3, v2, v8

    aput v3, v1, v6

    aget v2, v2, v7

    aput v2, v1, v16

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_5
    if-eqz v2, :cond_6

    .line 10
    array-length v1, v2

    if-lt v1, v4, :cond_6

    .line 11
    aget v1, v2, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/s;->J3(I)V

    goto/16 :goto_1

    :pswitch_6
    if-eqz v2, :cond_6

    .line 12
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v12, [I

    aput v10, v1, v5

    const/16 v3, -0x7e

    aput v3, v1, v4

    aput v4, v1, v14

    .line 13
    aget v2, v2, v5

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_7
    if-eqz v2, :cond_6

    .line 14
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    const/16 v3, -0x7d

    aput v3, v1, v4

    aput v14, v1, v14

    .line 15
    aget v3, v2, v5

    aput v3, v1, v13

    aget v2, v2, v4

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_8
    if-eqz v2, :cond_6

    .line 16
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    aput v3, v1, v4

    aput v14, v1, v14

    .line 17
    aget v2, v2, v5

    aput v2, v1, v13

    aput v5, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 18
    :pswitch_9
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v15, [I

    aput v10, v1, v5

    const/16 v3, 0xef

    aput v3, v1, v4

    aput v9, v1, v14

    const/16 v3, 0x7d

    aput v3, v1, v13

    const/16 v3, 0xf0

    aput v3, v1, v12

    .line 19
    aget v3, v2, v5

    aput v3, v1, v11

    aget v3, v2, v4

    aput v3, v1, v8

    aget v3, v2, v14

    aput v3, v1, v7

    aget v3, v2, v13

    aput v3, v1, v9

    aget v3, v2, v12

    aput v3, v1, v6

    aget v2, v2, v11

    aput v2, v1, v16

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_a
    if-eqz v2, :cond_6

    .line 20
    array-length v1, v2

    if-lez v1, :cond_6

    .line 21
    aget v1, v2, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/s;->L3(I)V

    goto/16 :goto_1

    .line 22
    :pswitch_b
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    const/16 v3, -0x38

    aput v3, v1, v4

    aput v14, v1, v14

    .line 23
    aget v3, v2, v5

    aput v3, v1, v13

    aget v2, v2, v4

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 24
    :pswitch_c
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    const/16 v3, -0x7c

    aput v3, v1, v4

    aput v14, v1, v14

    .line 25
    aget v3, v2, v5

    aput v3, v1, v13

    aget v2, v2, v4

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 26
    :pswitch_d
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    const/16 v3, -0x20

    aput v3, v1, v4

    aput v14, v1, v14

    .line 27
    aget v3, v2, v5

    aput v3, v1, v13

    aget v2, v2, v4

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_e
    if-eqz v2, :cond_6

    .line 28
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v12, [I

    aput v10, v1, v5

    const/16 v3, -0x11

    aput v3, v1, v4

    .line 29
    aget v3, v2, v5

    aput v3, v1, v14

    aget v2, v2, v4

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_f
    if-eqz v2, :cond_6

    .line 30
    array-length v1, v2

    if-lt v1, v14, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    const/16 v3, -0x3a

    aput v3, v1, v4

    aput v14, v1, v14

    .line 31
    aget v3, v2, v5

    int-to-byte v3, v3

    aput v3, v1, v13

    aget v2, v2, v4

    int-to-byte v2, v2

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_10
    if-eqz v2, :cond_6

    .line 32
    array-length v1, v2

    if-lez v1, :cond_6

    .line 33
    aget v1, v2, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/s;->M3(I)V

    goto/16 :goto_1

    :pswitch_11
    new-array v1, v11, [I

    .line 34
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_12
    if-eqz v2, :cond_6

    .line 35
    array-length v1, v2

    if-lez v1, :cond_6

    .line 36
    aget v1, v2, v5

    if-ge v1, v4, :cond_0

    .line 37
    aput v4, v2, v5

    goto :goto_0

    .line 38
    :cond_0
    aget v1, v2, v5

    const/16 v3, 0xf

    if-le v1, v3, :cond_1

    .line 39
    aput v3, v2, v5

    :cond_1
    :goto_0
    new-array v1, v11, [I

    aput v10, v1, v5

    const/16 v3, -0x3a

    aput v3, v1, v4

    aput v14, v1, v14

    const/16 v3, -0x3f

    aput v3, v1, v13

    .line 40
    aget v2, v2, v5

    int-to-byte v2, v2

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_13
    if-eqz v2, :cond_6

    .line 41
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    aput v3, v1, v4

    aput v14, v1, v14

    const/16 v3, 0x33

    aput v3, v1, v13

    .line 42
    aget v2, v2, v5

    int-to-byte v2, v2

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v11, [I

    .line 43
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_14
    if-eqz v2, :cond_6

    .line 44
    array-length v1, v2

    if-lez v1, :cond_6

    const/16 v1, 0x13e

    new-array v3, v4, [I

    .line 45
    aget v2, v2, v5

    aput v2, v3, v5

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1

    :pswitch_15
    if-eqz v2, :cond_6

    .line 46
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    const/16 v3, -0x1a

    aput v3, v1, v4

    aput v14, v1, v14

    .line 47
    aget v3, v2, v5

    int-to-byte v3, v3

    aput v3, v1, v13

    aget v2, v2, v4

    int-to-byte v2, v2

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_16
    if-eqz v2, :cond_6

    .line 48
    array-length v1, v2

    if-lez v1, :cond_6

    new-array v1, v11, [I

    aput v10, v1, v5

    aput v3, v1, v4

    aput v14, v1, v14

    .line 49
    aget v3, v2, v5

    int-to-byte v3, v3

    aput v3, v1, v13

    aget v2, v2, v4

    int-to-byte v2, v2

    aput v2, v1, v12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 50
    :cond_2
    aget v1, v2, v4

    mul-int/lit16 v1, v1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 51
    aget v3, v2, v14

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v15

    div-int/2addr v3, v15

    .line 52
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 53
    aget v15, v2, v5

    const/16 v16, -0x68

    if-nez v15, :cond_3

    new-array v2, v6, [I

    aput v10, v2, v5

    aput v16, v2, v4

    aput v8, v2, v14

    aput v4, v2, v13

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v12

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v11

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v8

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v7

    aput v5, v2, v9

    .line 54
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    .line 55
    :cond_3
    aget v2, v2, v5

    if-ne v2, v4, :cond_6

    new-array v2, v6, [I

    aput v10, v2, v5

    aput v16, v2, v4

    aput v8, v2, v14

    aput v5, v2, v13

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v12

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v11

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v8

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v7

    aput v5, v2, v9

    .line 56
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    .line 57
    array-length v1, v2

    if-lez v1, :cond_6

    .line 58
    sget v1, Lk0/nt;->a:I

    const v3, 0xe012a

    if-ne v1, v3, :cond_5

    .line 59
    aget v1, v2, v5

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/s;->K3(II)V

    goto :goto_1

    .line 60
    :cond_5
    aget v1, v2, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/s;->J3(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x78
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x96
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        -0x40
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x32
        0x0
    .end array-data
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
    sget-object v0, Lmodule/canbus/s;->F0:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/s;->E0:I

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x2
        0x77
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x79
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7a
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7b
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7c
        0x0
    .end array-data
.end method

.method public b([B)V
    .locals 5

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
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 3
    :sswitch_0
    array-length v1, p1

    new-array v1, v1, [I

    .line 4
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v0, v2, :cond_2

    .line 5
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 v0, 0x3fb

    invoke-static {p1, v0, v1}, Lo1/x;->B([Lo1/x;I[I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2e012a -> :sswitch_0
        0x2f012a -> :sswitch_0
        0x3c012a -> :sswitch_0
        0x3d012a -> :sswitch_0
        0x40012a -> :sswitch_0
        0x49012a -> :sswitch_0
        0x4a012a -> :sswitch_0
        0x99012a -> :sswitch_0
        0x9a012a -> :sswitch_0
        0x9b012a -> :sswitch_0
        0x9c012a -> :sswitch_0
    .end sparse-switch
.end method

.method public final b3()V
    .locals 5

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xee

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    const/4 v4, 0x6

    aput v4, v1, v2

    const/4 v2, 0x3

    const/16 v4, 0x75

    aput v4, v1, v2

    const/4 v2, 0x4

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(I)V
    .locals 14

    .line 1
    iget v0, p0, Lmodule/canbus/s;->Y:I

    if-lez v0, :cond_4

    sget-object v1, Lmodule/canbus/s;->z0:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget v0, p0, Lmodule/canbus/s;->T:I

    div-int/lit8 v0, v0, 0x64

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Route_remain ==== ---->: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 4
    :try_start_0
    iget-object p1, p0, Lmodule/canbus/s;->S:Ljava/lang/String;

    const-string v3, "GB2312"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    array-length v3, p1

    const/16 v4, 0x17

    if-le v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    array-length v3, p1

    :goto_0
    new-array v5, v4, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v3, :cond_2

    .line 6
    aget-byte v8, p1, v7

    aput-byte v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-array p1, v1, [I

    const/16 v1, 0xe3

    aput v1, p1, v6

    const/16 v1, 0x9c

    aput v1, p1, v2

    const/16 v1, 0x1e

    const/4 v3, 0x2

    aput v1, p1, v3

    .line 7
    sget-object v7, Lmodule/canbus/s;->z0:[I

    iget v8, p0, Lmodule/canbus/s;->Y:I

    aget v7, v7, v8

    const/4 v8, 0x3

    aput v7, p1, v8

    iget v7, p0, Lmodule/canbus/s;->X:I

    and-int/lit16 v7, v7, 0xff

    const/4 v9, 0x4

    aput v7, p1, v9

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    const/4 v10, 0x5

    aput v7, p1, v10

    and-int/lit16 v0, v0, 0xff

    const/4 v7, 0x6

    aput v0, p1, v7

    const/4 v0, 0x7

    aput v2, p1, v0

    const/16 v11, 0x8

    aput v6, p1, v11

    const/16 v12, 0x9

    aput v6, p1, v12

    aget-byte v6, v5, v6

    const/16 v13, 0xa

    aput v6, p1, v13

    aget-byte v2, v5, v2

    const/16 v6, 0xb

    aput v2, p1, v6

    aget-byte v2, v5, v3

    const/16 v3, 0xc

    aput v2, p1, v3

    aget-byte v2, v5, v8

    const/16 v8, 0xd

    aput v2, p1, v8

    aget-byte v2, v5, v9

    const/16 v9, 0xe

    aput v2, p1, v9

    aget-byte v2, v5, v10

    const/16 v10, 0xf

    aput v2, p1, v10

    aget-byte v2, v5, v7

    const/16 v7, 0x10

    aput v2, p1, v7

    aget-byte v0, v5, v0

    const/16 v2, 0x11

    aput v0, p1, v2

    const/16 v0, 0x12

    aget-byte v11, v5, v11

    aput v11, p1, v0

    const/16 v0, 0x13

    aget-byte v11, v5, v12

    aput v11, p1, v0

    const/16 v0, 0x14

    aget-byte v11, v5, v13

    aput v11, p1, v0

    const/16 v0, 0x15

    aget-byte v6, v5, v6

    aput v6, p1, v0

    const/16 v0, 0x16

    aget-byte v3, v5, v3

    aput v3, p1, v0

    aget-byte v0, v5, v8

    aput v0, p1, v4

    const/16 v0, 0x18

    aget-byte v3, v5, v9

    aput v3, p1, v0

    const/16 v0, 0x19

    aget-byte v3, v5, v10

    aput v3, p1, v0

    const/16 v0, 0x1a

    aget-byte v3, v5, v7

    aput v3, p1, v0

    const/16 v0, 0x1b

    aget-byte v2, v5, v2

    aput v2, p1, v0

    const/16 v0, 0x1c

    const/16 v2, 0x12

    aget-byte v2, v5, v2

    aput v2, p1, v0

    const/16 v0, 0x1d

    const/16 v2, 0x13

    aget-byte v2, v5, v2

    aput v2, p1, v0

    const/16 v0, 0x14

    aget-byte v0, v5, v0

    aput v0, p1, v1

    const/16 v0, 0x1f

    const/16 v1, 0x15

    aget-byte v1, v5, v1

    aput v1, p1, v0

    const/16 v0, 0x20

    const/16 v1, 0x16

    aget-byte v1, v5, v1

    aput v1, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_3
    new-array p1, v1, [I

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_4
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x9c
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/s;->G0:Lo1/f;

    new-instance v1, Lmodule/canbus/s$x;

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/s$x;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
