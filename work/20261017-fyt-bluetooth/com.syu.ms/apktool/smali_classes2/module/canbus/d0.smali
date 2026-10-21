.class public Lmodule/canbus/d0;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/d0$q;
    }
.end annotation


# static fields
.field public static Z:I

.field public static a0:I

.field public static b0:I

.field public static c0:I

.field public static d0:I

.field public static e0:I

.field public static f0:I

.field public static g0:I

.field public static h0:I

.field public static i0:I

.field public static j0:I

.field public static k0:I

.field public static l0:I

.field public static m0:I

.field public static n0:I

.field public static final o0:[I

.field public static final p0:[I

.field public static final q0:[I

.field public static final r0:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/d0$q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Ljava/lang/Runnable;

.field public C:J

.field public D:I

.field public E:Ljava/lang/Runnable;

.field public F:Ljava/lang/Runnable;

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:Ljava/lang/Runnable;

.field public L:Ljava/lang/Runnable;

.field public M:F

.field public N:I

.field public O:I

.field public P:Ljava/lang/Runnable;

.field public Q:Ljava/lang/Runnable;

.field public R:Ljava/lang/Runnable;

.field public S:B

.field public T:Ljava/lang/Runnable;

.field public U:Ljava/lang/Runnable;

.field public V:I

.field public W:I

.field public X:Ljava/lang/Runnable;

.field public Y:I

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:[[I

.field public i:[[I

.field public j:Lo1/g0;

.field public final k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:[[I

.field public q:I

.field public r:I

.field public s:[[I

.field public t:[[I

.field public u:I

.field public v:I

.field public w:[[I

.field public x:I

.field public y:Z

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/d0;->o0:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/d0;->p0:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/d0;->q0:[I

    .line 4
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/d0;->r0:Lo1/f;

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

    :array_1
    .array-data 4
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
    .end array-data

    :array_2
    .array-data 4
        0x0
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
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2
    iput-object v1, v0, Lmodule/canbus/d0;->b:[B

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lmodule/canbus/d0;->c:I

    .line 4
    iput v1, v0, Lmodule/canbus/d0;->d:I

    .line 5
    iput v1, v0, Lmodule/canbus/d0;->e:I

    .line 6
    iput-boolean v1, v0, Lmodule/canbus/d0;->f:Z

    .line 7
    iput v1, v0, Lmodule/canbus/d0;->g:I

    const/4 v2, 0x5

    new-array v3, v2, [[I

    .line 8
    iput-object v3, v0, Lmodule/canbus/d0;->h:[[I

    const/16 v3, 0xf

    new-array v4, v3, [[I

    .line 9
    iput-object v4, v0, Lmodule/canbus/d0;->i:[[I

    .line 10
    new-instance v4, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-direct {v4, v5, v6}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v4, v0, Lmodule/canbus/d0;->j:Lo1/g0;

    const/4 v4, 0x1

    .line 11
    iput v4, v0, Lmodule/canbus/d0;->k:I

    .line 12
    iput v1, v0, Lmodule/canbus/d0;->m:I

    .line 13
    iput-boolean v1, v0, Lmodule/canbus/d0;->n:Z

    .line 14
    iput v1, v0, Lmodule/canbus/d0;->o:I

    const/16 v5, 0x18

    new-array v6, v5, [[I

    const/4 v7, 0x2

    new-array v8, v7, [I

    .line 15
    fill-array-data v8, :array_0

    aput-object v8, v6, v1

    new-array v8, v7, [I

    fill-array-data v8, :array_1

    aput-object v8, v6, v4

    new-array v8, v7, [I

    fill-array-data v8, :array_2

    aput-object v8, v6, v7

    new-array v8, v7, [I

    fill-array-data v8, :array_3

    const/4 v9, 0x3

    aput-object v8, v6, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_4

    const/4 v10, 0x4

    aput-object v8, v6, v10

    new-array v8, v7, [I

    fill-array-data v8, :array_5

    aput-object v8, v6, v2

    new-array v8, v7, [I

    fill-array-data v8, :array_6

    const/4 v11, 0x6

    aput-object v8, v6, v11

    new-array v8, v7, [I

    fill-array-data v8, :array_7

    const/4 v12, 0x7

    aput-object v8, v6, v12

    new-array v8, v7, [I

    fill-array-data v8, :array_8

    const/16 v13, 0x8

    aput-object v8, v6, v13

    new-array v8, v7, [I

    fill-array-data v8, :array_9

    const/16 v14, 0x9

    aput-object v8, v6, v14

    new-array v8, v7, [I

    fill-array-data v8, :array_a

    const/16 v15, 0xa

    aput-object v8, v6, v15

    new-array v8, v7, [I

    fill-array-data v8, :array_b

    const/16 v16, 0xb

    aput-object v8, v6, v16

    new-array v8, v7, [I

    fill-array-data v8, :array_c

    const/16 v17, 0xc

    aput-object v8, v6, v17

    new-array v8, v7, [I

    fill-array-data v8, :array_d

    const/16 v18, 0xd

    aput-object v8, v6, v18

    new-array v8, v7, [I

    fill-array-data v8, :array_e

    const/16 v19, 0xe

    aput-object v8, v6, v19

    new-array v8, v7, [I

    fill-array-data v8, :array_f

    aput-object v8, v6, v3

    new-array v8, v7, [I

    fill-array-data v8, :array_10

    const/16 v20, 0x10

    aput-object v8, v6, v20

    new-array v8, v7, [I

    fill-array-data v8, :array_11

    const/16 v21, 0x11

    aput-object v8, v6, v21

    new-array v8, v7, [I

    fill-array-data v8, :array_12

    const/16 v22, 0x12

    aput-object v8, v6, v22

    new-array v8, v7, [I

    fill-array-data v8, :array_13

    const/16 v23, 0x13

    aput-object v8, v6, v23

    new-array v8, v7, [I

    fill-array-data v8, :array_14

    const/16 v24, 0x14

    aput-object v8, v6, v24

    new-array v8, v7, [I

    fill-array-data v8, :array_15

    const/16 v25, 0x15

    aput-object v8, v6, v25

    new-array v8, v7, [I

    fill-array-data v8, :array_16

    const/16 v25, 0x16

    aput-object v8, v6, v25

    new-array v8, v7, [I

    fill-array-data v8, :array_17

    const/16 v25, 0x17

    aput-object v8, v6, v25

    iput-object v6, v0, Lmodule/canbus/d0;->p:[[I

    .line 16
    iput v1, v0, Lmodule/canbus/d0;->r:I

    const/16 v6, 0x1b

    new-array v6, v6, [[I

    new-array v8, v7, [I

    .line 17
    fill-array-data v8, :array_18

    aput-object v8, v6, v1

    new-array v8, v7, [I

    fill-array-data v8, :array_19

    aput-object v8, v6, v4

    new-array v8, v7, [I

    fill-array-data v8, :array_1a

    aput-object v8, v6, v7

    new-array v8, v7, [I

    fill-array-data v8, :array_1b

    aput-object v8, v6, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_1c

    aput-object v8, v6, v10

    new-array v8, v7, [I

    fill-array-data v8, :array_1d

    aput-object v8, v6, v2

    new-array v8, v7, [I

    fill-array-data v8, :array_1e

    aput-object v8, v6, v11

    new-array v8, v7, [I

    fill-array-data v8, :array_1f

    aput-object v8, v6, v12

    new-array v8, v7, [I

    fill-array-data v8, :array_20

    aput-object v8, v6, v13

    new-array v8, v7, [I

    fill-array-data v8, :array_21

    aput-object v8, v6, v14

    new-array v8, v7, [I

    fill-array-data v8, :array_22

    aput-object v8, v6, v15

    new-array v8, v7, [I

    fill-array-data v8, :array_23

    aput-object v8, v6, v16

    new-array v8, v7, [I

    fill-array-data v8, :array_24

    aput-object v8, v6, v17

    new-array v8, v7, [I

    fill-array-data v8, :array_25

    aput-object v8, v6, v18

    new-array v8, v7, [I

    fill-array-data v8, :array_26

    aput-object v8, v6, v19

    new-array v8, v7, [I

    fill-array-data v8, :array_27

    aput-object v8, v6, v3

    new-array v3, v7, [I

    fill-array-data v3, :array_28

    aput-object v3, v6, v20

    new-array v3, v7, [I

    fill-array-data v3, :array_29

    aput-object v3, v6, v21

    new-array v3, v7, [I

    fill-array-data v3, :array_2a

    aput-object v3, v6, v22

    new-array v3, v7, [I

    fill-array-data v3, :array_2b

    aput-object v3, v6, v23

    new-array v3, v7, [I

    fill-array-data v3, :array_2c

    aput-object v3, v6, v24

    new-array v3, v7, [I

    fill-array-data v3, :array_2d

    const/16 v8, 0x15

    aput-object v3, v6, v8

    new-array v3, v7, [I

    fill-array-data v3, :array_2e

    const/16 v8, 0x16

    aput-object v3, v6, v8

    new-array v3, v7, [I

    fill-array-data v3, :array_2f

    const/16 v8, 0x17

    aput-object v3, v6, v8

    new-array v3, v7, [I

    fill-array-data v3, :array_30

    aput-object v3, v6, v5

    new-array v3, v7, [I

    fill-array-data v3, :array_31

    const/16 v5, 0x19

    aput-object v3, v6, v5

    new-array v3, v7, [I

    fill-array-data v3, :array_32

    const/16 v5, 0x1a

    aput-object v3, v6, v5

    iput-object v6, v0, Lmodule/canbus/d0;->s:[[I

    new-array v3, v15, [[I

    new-array v5, v7, [I

    .line 18
    fill-array-data v5, :array_33

    aput-object v5, v3, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_34

    aput-object v5, v3, v4

    new-array v5, v7, [I

    fill-array-data v5, :array_35

    aput-object v5, v3, v7

    new-array v5, v7, [I

    fill-array-data v5, :array_36

    aput-object v5, v3, v9

    new-array v5, v7, [I

    fill-array-data v5, :array_37

    aput-object v5, v3, v10

    new-array v5, v7, [I

    fill-array-data v5, :array_38

    aput-object v5, v3, v2

    new-array v5, v7, [I

    fill-array-data v5, :array_39

    aput-object v5, v3, v11

    new-array v5, v7, [I

    fill-array-data v5, :array_3a

    aput-object v5, v3, v12

    new-array v5, v7, [I

    fill-array-data v5, :array_3b

    aput-object v5, v3, v13

    new-array v5, v7, [I

    fill-array-data v5, :array_3c

    aput-object v5, v3, v14

    iput-object v3, v0, Lmodule/canbus/d0;->t:[[I

    .line 19
    iput v1, v0, Lmodule/canbus/d0;->v:I

    new-array v3, v12, [[I

    new-array v5, v7, [I

    .line 20
    fill-array-data v5, :array_3d

    aput-object v5, v3, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_3e

    aput-object v5, v3, v4

    new-array v4, v7, [I

    fill-array-data v4, :array_3f

    aput-object v4, v3, v7

    new-array v4, v7, [I

    fill-array-data v4, :array_40

    aput-object v4, v3, v9

    new-array v4, v7, [I

    fill-array-data v4, :array_41

    aput-object v4, v3, v10

    new-array v4, v7, [I

    fill-array-data v4, :array_42

    aput-object v4, v3, v2

    new-array v2, v7, [I

    fill-array-data v2, :array_43

    aput-object v2, v3, v11

    iput-object v3, v0, Lmodule/canbus/d0;->w:[[I

    .line 21
    iput v1, v0, Lmodule/canbus/d0;->x:I

    .line 22
    iput-boolean v1, v0, Lmodule/canbus/d0;->y:Z

    .line 23
    new-instance v2, Lmodule/canbus/d0$h;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$h;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->z:Ljava/lang/Runnable;

    .line 24
    iput-boolean v1, v0, Lmodule/canbus/d0;->A:Z

    .line 25
    new-instance v2, Lmodule/canbus/d0$i;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$i;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->B:Ljava/lang/Runnable;

    const-wide/16 v2, -0x1

    .line 26
    iput-wide v2, v0, Lmodule/canbus/d0;->C:J

    const/4 v2, -0x1

    .line 27
    iput v2, v0, Lmodule/canbus/d0;->D:I

    .line 28
    new-instance v2, Lmodule/canbus/d0$j;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$j;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->E:Ljava/lang/Runnable;

    .line 29
    new-instance v2, Lmodule/canbus/d0$k;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$k;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->F:Ljava/lang/Runnable;

    .line 30
    new-instance v2, Lmodule/canbus/d0$l;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$l;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->G:Ljava/lang/Runnable;

    .line 31
    new-instance v2, Lmodule/canbus/d0$m;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$m;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->H:Ljava/lang/Runnable;

    .line 32
    new-instance v2, Lmodule/canbus/d0$n;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$n;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->I:Ljava/lang/Runnable;

    .line 33
    new-instance v2, Lmodule/canbus/d0$o;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$o;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->J:Ljava/lang/Runnable;

    .line 34
    new-instance v2, Lmodule/canbus/d0$p;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$p;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->K:Ljava/lang/Runnable;

    .line 35
    new-instance v2, Lmodule/canbus/d0$a;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$a;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->L:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 36
    iput v2, v0, Lmodule/canbus/d0;->M:F

    const/16 v2, 0xff

    .line 37
    iput v2, v0, Lmodule/canbus/d0;->N:I

    .line 38
    iput v2, v0, Lmodule/canbus/d0;->O:I

    .line 39
    new-instance v2, Lmodule/canbus/d0$b;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$b;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->P:Ljava/lang/Runnable;

    .line 40
    new-instance v2, Lmodule/canbus/d0$c;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$c;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->Q:Ljava/lang/Runnable;

    .line 41
    new-instance v2, Lmodule/canbus/d0$d;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$d;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->R:Ljava/lang/Runnable;

    .line 42
    iput-byte v15, v0, Lmodule/canbus/d0;->S:B

    .line 43
    new-instance v2, Lmodule/canbus/d0$e;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$e;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->T:Ljava/lang/Runnable;

    .line 44
    new-instance v2, Lmodule/canbus/d0$f;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$f;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->U:Ljava/lang/Runnable;

    .line 45
    iput v1, v0, Lmodule/canbus/d0;->V:I

    const/16 v2, 0x64

    .line 46
    iput v2, v0, Lmodule/canbus/d0;->W:I

    .line 47
    new-instance v2, Lmodule/canbus/d0$g;

    invoke-direct {v2, v0}, Lmodule/canbus/d0$g;-><init>(Lmodule/canbus/d0;)V

    iput-object v2, v0, Lmodule/canbus/d0;->X:Ljava/lang/Runnable;

    .line 48
    iput v1, v0, Lmodule/canbus/d0;->Y:I

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
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x10
    .end array-data

    :array_c
    .array-data 4
        0x18
        0x5
    .end array-data

    :array_d
    .array-data 4
        0x19
        0x9
    .end array-data

    :array_e
    .array-data 4
        0x1a
        0x15
    .end array-data

    :array_f
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_11
    .array-data 4
        0x83
        0x1b
    .end array-data

    :array_12
    .array-data 4
        0x84
        0x1c
    .end array-data

    :array_13
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_17
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_19
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_1a
    .array-data 4
        0x7
        0x14
    .end array-data

    :array_1b
    .array-data 4
        0x8
        0x44
    .end array-data

    :array_1c
    .array-data 4
        0xa
        0x13
    .end array-data

    :array_1d
    .array-data 4
        0xb
        0x43
    .end array-data

    :array_1e
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_1f
    .array-data 4
        0xd
        0x12
    .end array-data

    :array_20
    .array-data 4
        0xe
        0x26
    .end array-data

    :array_21
    .array-data 4
        0xf
        0x26
    .end array-data

    :array_22
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_23
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_25
    .array-data 4
        0x13
        0xd
    .end array-data

    :array_26
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_27
    .array-data 4
        0x15
        0x5
    .end array-data

    :array_28
    .array-data 4
        0x16
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x17
        0x6
    .end array-data

    :array_2a
    .array-data 4
        0x18
        0x6
    .end array-data

    :array_2b
    .array-data 4
        0x19
        0xc
    .end array-data

    :array_2c
    .array-data 4
        0x1a
        0x19
    .end array-data

    :array_2d
    .array-data 4
        0x1b
        0x19
    .end array-data

    :array_2e
    .array-data 4
        0x1c
        -0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1d
        0x1a
    .end array-data

    :array_30
    .array-data 4
        0x1e
        -0x1
    .end array-data

    :array_31
    .array-data 4
        0x1f
        0x3e
    .end array-data

    :array_32
    .array-data 4
        0x20
        0xc
    .end array-data

    :array_33
    .array-data 4
        0x1
        0x4b
    .end array-data

    :array_34
    .array-data 4
        0x4
        0x35
    .end array-data

    :array_35
    .array-data 4
        0x5
        0x4a
    .end array-data

    :array_36
    .array-data 4
        0x6
        0x36
    .end array-data

    :array_37
    .array-data 4
        0x10
        0x1b
    .end array-data

    :array_38
    .array-data 4
        0x11
        0x1c
    .end array-data

    :array_39
    .array-data 4
        0x12
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x13
        0x4
    .end array-data

    :array_3b
    .array-data 4
        0x14
        0x40
    .end array-data

    :array_3c
    .array-data 4
        0x15
        0x0
    .end array-data

    :array_3d
    .array-data 4
        0x1
        0x4b
    .end array-data

    :array_3e
    .array-data 4
        0x2
        0x4a
    .end array-data

    :array_3f
    .array-data 4
        0x3
        0x36
    .end array-data

    :array_40
    .array-data 4
        0x4
        0x36
    .end array-data

    :array_41
    .array-data 4
        0x5
        0x4c
    .end array-data

    :array_42
    .array-data 4
        0x6
        0x35
    .end array-data

    :array_43
    .array-data 4
        0x7
        0x1
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d0;->X3()V

    return-void
.end method

.method public static synthetic B3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->l0:I

    return v0
.end method

.method public static synthetic C3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->n0:I

    return v0
.end method

.method public static synthetic D3(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d0;->V3()V

    return-void
.end method

.method public static synthetic E3(Lmodule/canbus/d0;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->c4(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic F3(Lmodule/canbus/d0;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->R3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic G3(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d0;->a3()V

    return-void
.end method

.method public static synthetic H3(Lmodule/canbus/d0;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d0;->M:F

    return p0
.end method

.method public static synthetic I3(Lmodule/canbus/d0;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/d0;->M:F

    return p1
.end method

.method public static synthetic J3(Lmodule/canbus/d0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d0;->O:I

    return p0
.end method

.method public static synthetic K3(Lmodule/canbus/d0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/d0;->O:I

    return p1
.end method

.method public static synthetic L3(Lmodule/canbus/d0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d0;->N:I

    return p0
.end method

.method public static synthetic M3(Lmodule/canbus/d0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/d0;->N:I

    return p1
.end method

.method public static synthetic N3(Lmodule/canbus/d0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/d0;->U:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static Q3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/d0;->r0:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/d0$q;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/d0$q;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic c3(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d0;->b4()V

    return-void
.end method

.method public static synthetic d3(Lmodule/canbus/d0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmodule/canbus/d0;->C:J

    return-wide v0
.end method

.method public static d4([B)V
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

.method public static synthetic e3(Lmodule/canbus/d0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d0;->W:I

    return p0
.end method

.method public static synthetic f3(Lmodule/canbus/d0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lmodule/canbus/d0;->C:J

    return-wide p1
.end method

.method public static synthetic g3(Lmodule/canbus/d0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d0;->Y:I

    return p0
.end method

.method public static synthetic h3(Lmodule/canbus/d0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/d0;->Y:I

    return p1
.end method

.method public static synthetic i3(Lmodule/canbus/d0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/d0;->Y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/d0;->Y:I

    return v0
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->d0:I

    return v0
.end method

.method public static synthetic k3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/d0;->d0:I

    return p0
.end method

.method public static synthetic l3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/d0;->o0:[I

    return-object v0
.end method

.method public static synthetic m3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->c0:I

    return v0
.end method

.method public static synthetic n3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->e0:I

    return v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->h0:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d0;->W3()V

    return-void
.end method

.method public static synthetic q3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->f0:I

    return v0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->i0:I

    return v0
.end method

.method public static synthetic s3(Lmodule/canbus/d0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/d0;->D:I

    return p0
.end method

.method public static synthetic t3(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d0;->Z3()V

    return-void
.end method

.method public static synthetic u3(Lmodule/canbus/d0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/d0;->D:I

    return p1
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->g0:I

    return v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->j0:I

    return v0
.end method

.method public static synthetic x3(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/d0;->a4()V

    return-void
.end method

.method public static synthetic y3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->k0:I

    return v0
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/d0;->m0:I

    return v0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 1

    .line 1
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x1a

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public O2([I)V
    .locals 6

    if-eqz p1, :cond_9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0xa

    const/16 v4, 0x15

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v5

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, p1, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    aget p1, p1, v5

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, p1, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 10
    invoke-virtual {p0, p1, v0}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, v1, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 12
    invoke-virtual {p0, v1, v0}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    aget p1, p1, v5

    const/4 v1, -0x2

    if-eq p1, v1, :cond_4

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    goto/16 :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0, v3, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 15
    invoke-virtual {p0, v3, v0}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_0

    :cond_4
    const/16 p1, 0x9

    .line 16
    invoke-virtual {p0, p1, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 17
    invoke-virtual {p0, p1, v0}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_0

    .line 18
    :pswitch_4
    aget p1, p1, v5

    const/16 v1, 0xc

    const/16 v2, 0x19

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 20
    invoke-virtual {p0, v2, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 21
    invoke-virtual {p0, v2, v0}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_0

    .line 22
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v5, :cond_9

    .line 23
    invoke-virtual {p0, v2, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 24
    invoke-virtual {p0, v2, v0}, Lmodule/canbus/d0;->P3(II)V

    goto :goto_0

    .line 25
    :pswitch_5
    aget p1, p1, v5

    const/16 v1, 0xd

    if-eqz p1, :cond_6

    .line 26
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 27
    invoke-virtual {p0, v4, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 28
    invoke-virtual {p0, v4, v0}, Lmodule/canbus/d0;->P3(II)V

    goto :goto_0

    .line 29
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v5, :cond_9

    .line 30
    invoke-virtual {p0, v4, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 31
    invoke-virtual {p0, v4, v0}, Lmodule/canbus/d0;->P3(II)V

    goto :goto_0

    .line 32
    :pswitch_6
    aget p1, p1, v5

    const/16 v1, 0xb

    const/16 v2, 0x17

    if-eqz p1, :cond_7

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_9

    .line 34
    invoke-virtual {p0, v2, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 35
    invoke-virtual {p0, v2, v0}, Lmodule/canbus/d0;->P3(II)V

    goto :goto_0

    .line 36
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v5, :cond_9

    .line 37
    invoke-virtual {p0, v2, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 38
    invoke-virtual {p0, v2, v0}, Lmodule/canbus/d0;->P3(II)V

    goto :goto_0

    .line 39
    :pswitch_7
    aget p1, p1, v5

    if-eqz p1, :cond_8

    .line 40
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_9

    .line 41
    invoke-virtual {p0, v4, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 42
    invoke-virtual {p0, v4, v0}, Lmodule/canbus/d0;->P3(II)V

    goto :goto_0

    .line 43
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v5, :cond_9

    .line 44
    invoke-virtual {p0, v5, v5}, Lmodule/canbus/d0;->P3(II)V

    .line 45
    invoke-virtual {p0, v5, v0}, Lmodule/canbus/d0;->P3(II)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final O3(I)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x84

    aput v3, v2, v0

    const/4 v3, 0x2

    aput v3, v2, v3

    const/4 v5, 0x3

    const/16 v6, 0x8

    aput v6, v2, v5

    const/4 v7, 0x4

    aput p1, v2, v7

    .line 1
    invoke-static {v2}, Lz/k;->s([I)V

    const/4 v2, 0x6

    new-array v2, v2, [B

    const/16 v8, 0x2e

    aput-byte v8, v2, v4

    const/16 v8, -0x7c

    aput-byte v8, v2, v0

    aput-byte v3, v2, v3

    aput-byte v6, v2, v5

    int-to-byte p1, p1

    aput-byte p1, v2, v7

    aput-byte v4, v2, v1

    .line 2
    invoke-static {v2}, Lmodule/canbus/d0;->d4([B)V

    return-void
.end method

.method public P2([I)V
    .locals 5

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/d0;->p0:[I

    sget-object v1, Ly0/f;->c0:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/2addr v3, v0

    const/16 v4, 0xa

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/d0;->h0:I

    .line 3
    aget v3, v1, v0

    shr-int/2addr v3, v0

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v3

    aget v3, p1, v3

    sput v3, Lmodule/canbus/d0;->i0:I

    const/4 v3, 0x2

    .line 4
    aget v1, v1, v3

    shr-int/lit8 v0, v1, 0x1

    invoke-static {v0, v2, v4}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/d0;->j0:I

    :cond_0
    return-void
.end method

.method public final P3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x20

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

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
    sget-object p1, Lmodule/canbus/d0;->q0:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/d0;->m0:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/d0;->n0:I

    :cond_0
    return-void
.end method

.method public final R3(BLjava/lang/String;)V
    .locals 6

    if-nez p2, :cond_1

    .line 1
    sget p2, Lu0/b;->D:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    const-string p2, "  "

    goto :goto_0

    :cond_0
    const-string p2, "Unkown"

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x4

    .line 3
    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    .line 4
    aput v3, v2, v4

    const/4 v3, 0x1

    .line 5
    aput p1, v2, v3

    add-int/2addr v1, v3

    const/4 p1, 0x2

    .line 6
    aput v1, v2, p1

    const/4 p1, 0x3

    const/16 v1, 0x10

    .line 7
    aput v1, v2, p1

    :goto_1
    if-ge v4, v0, :cond_3

    .line 8
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v1, v4, 0x1

    add-int/lit8 v3, v1, 0x4

    and-int/lit16 v5, p1, 0xff

    .line 9
    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x5

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 10
    aput p1, v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public S2()V
    .locals 7

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 2
    iget-object v1, p0, Lmodule/canbus/d0;->Q:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    const/16 v1, 0x29

    if-le v0, v1, :cond_0

    const/16 v1, 0x4c

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x29

    add-int/lit8 v0, v0, 0x7

    .line 3
    :cond_0
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/d0;->R:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    const-string v1, "com.syu.canbus"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v4, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    :goto_0
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v4, Lk0/mt;->e:I

    .line 8
    iput v2, v4, Lk0/mt;->f:I

    .line 9
    iput v2, v4, Lk0/mt;->g:I

    .line 10
    iput v2, v4, Lk0/mt;->b:I

    .line 11
    iput v2, v4, Lk0/mt;->c:I

    .line 12
    iput v2, v4, Lk0/mt;->d:I

    .line 13
    sget-object v4, Lu0/c;->m:Lo1/y;

    iget-object v5, p0, Lmodule/canbus/d0;->T:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v0, v4, :cond_4

    const/16 v4, 0xb

    if-eq v0, v4, :cond_3

    const/16 v4, 0x1b

    if-eq v0, v4, :cond_2

    const/16 v4, 0x1d

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    .line 14
    :pswitch_1
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v4, Lk0/mt;->g:I

    goto :goto_1

    .line 15
    :pswitch_2
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v4, Lk0/mt;->g:I

    :cond_2
    :goto_1
    :pswitch_3
    move v4, v2

    goto :goto_3

    .line 16
    :cond_3
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v4, Lk0/mt;->g:I

    goto :goto_2

    .line 17
    :cond_4
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v4, Lk0/mt;->g:I

    :goto_2
    :pswitch_4
    move v4, v5

    :goto_3
    if-nez v4, :cond_5

    .line 18
    iget-object v6, p0, Lk0/lt;->a:Lk0/mt;

    iput v5, v6, Lk0/mt;->b:I

    .line 19
    iput v5, v6, Lk0/mt;->c:I

    .line 20
    iput v5, v6, Lk0/mt;->d:I

    .line 21
    :cond_5
    invoke-static {}, Lk0/nt;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v4, v2, :cond_6

    .line 22
    invoke-virtual {p0}, Lmodule/canbus/d0;->init()V

    .line 23
    iget-object v4, p0, Lmodule/canbus/d0;->X:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 24
    invoke-virtual {p0}, Lmodule/canbus/d0;->S3()V

    .line 25
    sget-object v4, Ly0/g;->d:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->z:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    :cond_6
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v5, v4, Lk0/mt;->l:I

    packed-switch v0, :pswitch_data_3

    :pswitch_5
    goto/16 :goto_4

    .line 27
    :pswitch_6
    iput v5, v4, Lk0/mt;->f:I

    .line 28
    iput v2, v4, Lk0/mt;->g:I

    .line 29
    iput v2, v4, Lk0/mt;->b:I

    .line 30
    iput v2, v4, Lk0/mt;->l:I

    .line 31
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 32
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v4

    invoke-interface {v4, v2}, Lui/b;->a(Z)V

    .line 33
    :cond_7
    sget-object v4, Lu0/c;->o:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->I:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 34
    sget-object v4, Lu0/c;->p:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->J:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    sget-object v4, Lw0/e;->c:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->K:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 36
    sget-object v4, Lh0/d;->c:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->H:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 37
    sget-object v4, Lh0/d;->a:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->H:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 38
    sget-object v4, Lo1/h;->c:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->E:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 39
    sget-object v4, Lo1/h;->d:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->F:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 40
    sget-object v4, Lo1/h;->e:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->G:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_4

    .line 41
    :pswitch_7
    iput v5, v4, Lk0/mt;->f:I

    .line 42
    iput v2, v4, Lk0/mt;->g:I

    .line 43
    iput v2, v4, Lk0/mt;->l:I

    .line 44
    sget-object v4, Lu0/c;->o:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->I:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 45
    sget-object v4, Lu0/c;->p:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->J:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 46
    sget-object v4, Lw0/e;->c:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->K:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 47
    sget-object v4, Lh0/d;->c:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->H:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 48
    sget-object v4, Lh0/d;->a:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->H:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 49
    sget-object v4, Lo1/h;->c:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->E:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 50
    sget-object v4, Lo1/h;->d:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->F:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 51
    sget-object v4, Lo1/h;->e:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->G:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 52
    :goto_4
    sget-object v4, Lo1/h;->a:Lo1/y;

    iget-object v6, p0, Lmodule/canbus/d0;->P:Ljava/lang/Runnable;

    invoke-virtual {v4, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 53
    sget v4, Lk0/nt;->a:I

    sparse-switch v4, :sswitch_data_0

    .line 54
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v5, v4, Lk0/mt;->q:I

    goto :goto_5

    .line 55
    :sswitch_0
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v4, Lk0/mt;->q:I

    .line 56
    :goto_5
    iget-object v4, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v6, 0x9

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, v4, Lk0/mt;->m:[I

    const/16 v4, 0x27

    if-ne v0, v4, :cond_8

    .line 57
    iget-object v0, p0, Lmodule/canbus/d0;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 58
    iget-object v0, p0, Lmodule/canbus/d0;->j:Lo1/g0;

    invoke-virtual {v0, v2, v5}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/d0;->Y3(I)V

    .line 59
    :cond_8
    sget v0, Lk0/nt;->c:I

    const/16 v4, 0x2a

    if-lt v0, v4, :cond_9

    const/16 v4, 0x4d

    if-le v0, v4, :cond_a

    :cond_9
    const/16 v4, 0x57

    if-eq v0, v4, :cond_a

    const/16 v4, 0x58

    if-ne v0, v4, :cond_b

    .line 60
    :cond_a
    iget-object v0, p0, Lmodule/canbus/d0;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 61
    :cond_b
    sget v0, Lk0/nt;->a:I

    const v4, 0x20018d

    if-eq v0, v4, :cond_c

    const v4, 0x41018d

    if-ne v0, v4, :cond_e

    .line 62
    :cond_c
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_d

    .line 63
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_6

    .line 64
    :cond_d
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 65
    :goto_6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v5, v0, Lk0/mt;->b:I

    .line 66
    iput v5, v0, Lk0/mt;->c:I

    .line 67
    iput v5, v0, Lk0/mt;->d:I

    .line 68
    :cond_e
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_f

    .line 69
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v5, v0, Lk0/mt;->i:I

    .line 70
    invoke-static {}, La/f;->w()I

    move-result v0

    const/16 v1, 0x438

    if-ne v0, v1, :cond_f

    .line 71
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 72
    :cond_f
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 73
    iget-object v0, p0, Lmodule/canbus/d0;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x8018d -> :sswitch_0
        0xc018d -> :sswitch_0
        0x15018d -> :sswitch_0
        0x1a018d -> :sswitch_0
        0x1b018d -> :sswitch_0
        0x1c018d -> :sswitch_0
        0x1d018d -> :sswitch_0
        0x2a018d -> :sswitch_0
        0x2b018d -> :sswitch_0
        0x2d018d -> :sswitch_0
        0x2e018d -> :sswitch_0
        0x2f018d -> :sswitch_0
        0x32018d -> :sswitch_0
        0x33018d -> :sswitch_0
        0x34018d -> :sswitch_0
        0x37018d -> :sswitch_0
        0x38018d -> :sswitch_0
        0x3a018d -> :sswitch_0
        0x3b018d -> :sswitch_0
        0x3e018d -> :sswitch_0
        0x3f018d -> :sswitch_0
        0x41018d -> :sswitch_0
        0x4a018d -> :sswitch_0
        0x4b018d -> :sswitch_0
    .end sparse-switch

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

.method public final S3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/d0;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmodule/canbus/d0;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/d0;->R2([I)V

    return-void
.end method

.method public T3([BII)V
    .locals 6

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x31

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lmodule/canbus/d0;->f:Z

    const/16 v0, 0xa2

    new-array v1, p3, [I

    add-int/lit8 v2, p2, 0x5

    .line 3
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x2

    .line 4
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    .line 5
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    .line 6
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x6

    .line 7
    aget-byte p1, p1, p2

    const/16 p2, 0xa4

    new-array v4, p3, [I

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v3

    .line 8
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xa5

    new-array v4, p3, [I

    shr-int/2addr v0, v3

    and-int/lit8 v0, v0, 0xf

    aput v0, v4, v3

    .line 9
    invoke-static {p2, v4}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xa6

    new-array v0, p3, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v0, v3

    .line 10
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xa7

    new-array v0, p3, [I

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v3

    .line 11
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xad

    new-array v0, p3, [I

    shr-int/lit8 v1, v2, 0x4

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v3

    .line 12
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xa8

    new-array v0, p3, [I

    shr-int/lit8 v1, v2, 0x0

    and-int/lit8 v1, v1, 0xf

    aput v1, v0, v3

    .line 13
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xa9

    new-array v0, p3, [I

    shr-int/lit8 p1, p1, 0x2

    and-int/2addr p1, p3

    aput p1, v0, v3

    .line 14
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x35

    const/16 v5, 0x1d

    const/16 v6, 0xf

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_dd

    const/16 v3, 0x41

    const/16 v13, 0xa

    const/4 v14, -0x1

    const/4 v12, 0x2

    const/16 v4, 0xff

    if-eq v2, v3, :cond_d4

    const/16 v3, 0x4d

    const v17, 0xff00

    if-eq v2, v3, :cond_d3

    const/16 v3, 0x50

    if-eq v2, v3, :cond_d2

    const/16 v3, 0x52

    const/4 v11, 0x7

    if-eq v2, v3, :cond_cb

    const/16 v3, 0x58

    if-eq v2, v3, :cond_ca

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_c9

    const/16 v3, 0x5f

    const/4 v15, 0x6

    if-eq v2, v3, :cond_c8

    const/16 v3, 0x64

    if-eq v2, v3, :cond_c2

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_b9

    const/16 v3, 0xc

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_43

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x40

    shr-int/2addr v2, v15

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v10}, Lmodule/canbus/d0;->O3(I)V

    .line 4
    :cond_0
    iput-boolean v10, v0, Lmodule/canbus/d0;->y:Z

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v9, v0, Lmodule/canbus/d0;->y:Z

    :goto_0
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v10

    .line 6
    :goto_1
    sput v2, Lmodule/canbus/d0;->Z:I

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_3

    move v2, v9

    goto :goto_2

    :cond_3
    move v2, v10

    .line 7
    :goto_2
    sput v2, Lmodule/canbus/d0;->a0:I

    const/16 v3, 0x3f5

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 8
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    sget v2, Lmodule/canbus/d0;->a0:I

    if-eqz v2, :cond_4

    .line 11
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {v9}, Lk0/qt;->a(I)V

    :cond_5
    :goto_3
    const/16 v2, 0xaa

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v10, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 14
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 15
    :pswitch_1
    iget-boolean v2, v0, Lmodule/canbus/d0;->f:Z

    if-eqz v2, :cond_6

    goto/16 :goto_43

    .line 16
    :cond_6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v2, p2, 0x2

    .line 17
    aget-byte v5, v1, v2

    shr-int/2addr v5, v7

    and-int/2addr v5, v6

    const/16 v11, 0xe

    invoke-static {v5, v9, v11}, Lo1/o0;->a(III)I

    move-result v5

    sput v5, Lmodule/canbus/d0;->k0:I

    .line 18
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    const/16 v5, 0xe

    invoke-static {v2, v9, v5}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/d0;->l0:I

    add-int/lit8 v2, p2, 0x3

    .line 19
    aget-byte v5, v1, v2

    shr-int/2addr v5, v7

    and-int/2addr v5, v6

    invoke-static {v5, v12, v3}, Lo1/o0;->a(III)I

    move-result v5

    sput v5, Lmodule/canbus/d0;->e0:I

    add-int/lit8 v5, p2, 0x4

    .line 20
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/2addr v5, v6

    invoke-static {v5, v12, v3}, Lo1/o0;->a(III)I

    move-result v5

    sput v5, Lmodule/canbus/d0;->f0:I

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2, v12, v3}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/d0;->g0:I

    add-int/lit8 v2, p2, 0x5

    .line 22
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v3, 0x3f

    invoke-static {v2, v9, v3}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/d0;->c0:I

    :cond_7
    const/16 v2, 0xa2

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 23
    aget-byte v5, v1, v5

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 25
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 26
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 27
    aget-byte v1, v1, v5

    const/16 v5, 0xa4

    new-array v11, v10, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v6

    aput v13, v11, v9

    .line 28
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xa5

    new-array v11, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v6

    aput v2, v11, v9

    .line 29
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v5, v10, [I

    shr-int/lit8 v11, v3, 0x4

    and-int/2addr v11, v6

    aput v11, v5, v9

    .line 30
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v5, v10, [I

    shr-int/2addr v3, v9

    and-int/2addr v3, v6

    aput v3, v5, v9

    .line 31
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v10, [I

    shr-int/lit8 v5, v4, 0x4

    and-int/2addr v5, v6

    aput v5, v3, v9

    .line 32
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v10, [I

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v3, v9

    .line 33
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 34
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_9

    const/16 v3, 0x50

    if-eq v2, v3, :cond_9

    const/16 v3, 0x51

    if-eq v2, v3, :cond_9

    const/16 v3, 0x52

    if-eq v2, v3, :cond_9

    const/16 v3, 0x53

    if-eq v2, v3, :cond_9

    const/16 v3, 0x54

    if-eq v2, v3, :cond_9

    const/16 v3, 0x55

    if-eq v2, v3, :cond_9

    const/16 v3, 0x56

    if-eq v2, v3, :cond_9

    const/16 v3, 0x59

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_9

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_9

    const/16 v3, 0x60

    if-eq v2, v3, :cond_9

    const/16 v3, 0x61

    if-eq v2, v3, :cond_9

    const/16 v3, 0x62

    if-eq v2, v3, :cond_9

    const/16 v3, 0x63

    if-eq v2, v3, :cond_9

    const/16 v3, 0x64

    if-eq v2, v3, :cond_9

    const/16 v3, 0x65

    if-eq v2, v3, :cond_9

    const/16 v3, 0x66

    if-eq v2, v3, :cond_9

    const/16 v3, 0x67

    if-eq v2, v3, :cond_9

    const/16 v3, 0x68

    if-ne v2, v3, :cond_8

    goto :goto_4

    :cond_8
    const/16 v2, 0xa9

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x0

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 35
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v10, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v3, v9

    .line 36
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_9
    :goto_4
    const/16 v2, 0xa9

    new-array v3, v10, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 38
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_43

    .line 39
    :pswitch_3
    iget-boolean v2, v0, Lmodule/canbus/d0;->A:Z

    if-nez v2, :cond_de

    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x17c

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_43

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    new-array v15, v10, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v9

    .line 42
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    const/16 v15, 0xb

    new-array v8, v10, [I

    shr-int/lit8 v17, v2, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v8, v9

    .line 43
    invoke-static {v15, v8}, Lk0/qt;->y0(I[I)V

    new-array v8, v10, [I

    shr-int/lit8 v15, v2, 0x5

    and-int/2addr v15, v10

    aput v15, v8, v9

    .line 44
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    .line 45
    sget v3, Lk0/nt;->c:I

    const/16 v8, 0x29

    if-le v3, v8, :cond_a

    const/16 v8, 0x4e

    if-lt v3, v8, :cond_c

    :cond_a
    const/16 v8, 0x57

    if-eq v3, v8, :cond_c

    const/16 v8, 0x58

    if-ne v3, v8, :cond_b

    goto :goto_5

    :cond_b
    const/16 v3, 0xd

    new-array v8, v10, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v10

    aput v15, v8, v9

    .line 46
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_c
    :goto_5
    const/16 v3, 0xd

    new-array v8, v10, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v10

    aput v15, v8, v9

    .line 47
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v3, 0xe

    new-array v8, v10, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v10

    aput v15, v8, v9

    .line 48
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 49
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 50
    aget-byte v2, v1, v2

    and-int/lit8 v3, v2, 0xf

    if-le v3, v11, :cond_d

    move v3, v11

    :cond_d
    const/16 v8, 0x15

    new-array v15, v10, [I

    aput v3, v15, v9

    .line 51
    invoke-static {v8, v15}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 52
    aget-byte v3, v1, v3

    add-int/lit8 v8, p2, 0x5

    .line 53
    aget-byte v8, v1, v8

    add-int/lit8 v15, p2, 0x6

    .line 54
    aget-byte v15, v1, v15

    and-int/lit8 v7, v15, 0x1

    const/16 v6, 0x21

    const/16 v4, 0x1c

    const/16 v12, 0x1b

    if-nez v16, :cond_e

    new-array v3, v10, [I

    aput v14, v3, v9

    .line 55
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    aput v14, v3, v9

    .line 56
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_e
    const-string v11, "persist.fyt.reversetemp"

    .line 57
    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2b

    if-eqz v3, :cond_1c

    const/16 v11, 0x1f

    if-eq v3, v11, :cond_1b

    .line 58
    sget v11, Lk0/nt;->c:I

    const/16 v4, 0x2a

    if-lt v11, v4, :cond_f

    const/16 v4, 0x4e

    if-le v11, v4, :cond_16

    :cond_f
    const/16 v4, 0x57

    if-eq v11, v4, :cond_16

    const/16 v4, 0x58

    if-ne v11, v4, :cond_10

    goto :goto_7

    :cond_10
    if-ne v7, v10, :cond_13

    if-lt v3, v10, :cond_11

    if-gt v3, v5, :cond_11

    new-array v4, v10, [I

    add-int/lit8 v3, v3, 0x40

    aput v3, v4, v9

    .line 59
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_11
    if-lt v3, v6, :cond_12

    const/16 v4, 0x26

    if-gt v3, v4, :cond_12

    new-array v4, v10, [I

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x3b

    aput v3, v4, v9

    .line 60
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_12
    new-array v3, v10, [I

    aput v14, v3, v9

    .line 61
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_13
    if-lt v3, v10, :cond_14

    if-gt v3, v5, :cond_14

    new-array v4, v10, [I

    add-int/lit8 v3, v3, 0x23

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    aput v3, v4, v9

    .line 62
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_14
    const/4 v11, 0x5

    if-lt v3, v6, :cond_15

    const/16 v4, 0x26

    if-gt v3, v4, :cond_15

    new-array v4, v10, [I

    sub-int/2addr v3, v6

    mul-int/2addr v3, v11

    const/16 v11, 0x96

    add-int/2addr v3, v11

    aput v3, v4, v9

    .line 63
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_15
    new-array v3, v10, [I

    aput v14, v3, v9

    .line 64
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_16
    :goto_7
    if-ne v7, v10, :cond_17

    new-array v4, v10, [I

    mul-int/2addr v3, v13

    aput v3, v4, v9

    .line 65
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_17
    if-lt v3, v10, :cond_18

    if-gt v3, v5, :cond_18

    new-array v4, v10, [I

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    add-int/lit16 v3, v3, 0xaf

    aput v3, v4, v9

    .line 66
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_18
    const/16 v4, 0x20

    if-lt v3, v4, :cond_19

    const/16 v11, 0x23

    if-gt v3, v11, :cond_19

    new-array v11, v10, [I

    sub-int/2addr v3, v4

    const/4 v4, 0x5

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xa0

    aput v3, v11, v9

    .line 67
    invoke-static {v12, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_19
    const/16 v4, 0x24

    if-lt v3, v4, :cond_1a

    const/16 v4, 0x25

    if-gt v3, v4, :cond_1a

    new-array v4, v10, [I

    add-int/lit8 v3, v3, -0x24

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    const/16 v11, 0x96

    add-int/2addr v3, v11

    aput v3, v4, v9

    .line 68
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1a
    new-array v3, v10, [I

    aput v14, v3, v9

    .line 69
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 70
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1c
    new-array v3, v10, [I

    const/4 v4, -0x2

    aput v4, v3, v9

    .line 71
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    if-eqz v8, :cond_2a

    const/16 v3, 0x1f

    if-eq v8, v3, :cond_29

    .line 72
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x2a

    if-lt v3, v4, :cond_1d

    const/16 v4, 0x4e

    if-le v3, v4, :cond_24

    :cond_1d
    const/16 v4, 0x57

    if-eq v3, v4, :cond_24

    const/16 v4, 0x58

    if-ne v3, v4, :cond_1e

    goto :goto_9

    :cond_1e
    if-ne v7, v10, :cond_21

    if-lt v8, v10, :cond_1f

    if-gt v8, v5, :cond_1f

    new-array v3, v10, [I

    add-int/lit8 v8, v8, 0x40

    aput v8, v3, v9

    const/16 v4, 0x1c

    .line 73
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_1f
    if-lt v8, v6, :cond_20

    const/16 v3, 0x26

    if-gt v8, v3, :cond_20

    new-array v3, v10, [I

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x3b

    aput v8, v3, v9

    const/16 v4, 0x1c

    .line 74
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_20
    const/16 v4, 0x1c

    new-array v3, v10, [I

    aput v14, v3, v9

    .line 75
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_21
    const/16 v4, 0x1c

    if-lt v8, v10, :cond_22

    if-gt v8, v5, :cond_22

    new-array v3, v10, [I

    add-int/lit8 v8, v8, 0x23

    const/4 v11, 0x5

    mul-int/2addr v8, v11

    aput v8, v3, v9

    .line 76
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_22
    const/4 v11, 0x5

    if-lt v8, v6, :cond_23

    const/16 v3, 0x26

    if-gt v8, v3, :cond_23

    new-array v3, v10, [I

    sub-int/2addr v8, v6

    mul-int/2addr v8, v11

    const/16 v4, 0x96

    add-int/2addr v8, v4

    aput v8, v3, v9

    const/16 v4, 0x1c

    .line 77
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_23
    const/16 v4, 0x1c

    new-array v3, v10, [I

    aput v14, v3, v9

    .line 78
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_24
    :goto_9
    const/16 v4, 0x1c

    if-ne v7, v10, :cond_25

    new-array v3, v10, [I

    mul-int/2addr v8, v13

    aput v8, v3, v9

    .line 79
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_25
    if-lt v8, v10, :cond_26

    if-gt v8, v5, :cond_26

    new-array v3, v10, [I

    const/4 v11, 0x5

    mul-int/2addr v8, v11

    add-int/lit16 v8, v8, 0xaf

    aput v8, v3, v9

    .line 80
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_26
    const/16 v3, 0x20

    if-lt v8, v3, :cond_27

    const/16 v4, 0x23

    if-gt v8, v4, :cond_27

    new-array v4, v10, [I

    sub-int/2addr v8, v3

    const/4 v3, 0x5

    mul-int/2addr v8, v3

    add-int/lit16 v8, v8, 0xa0

    aput v8, v4, v9

    const/16 v3, 0x1c

    .line 81
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_27
    const/16 v3, 0x24

    if-lt v8, v3, :cond_28

    const/16 v3, 0x25

    if-gt v8, v3, :cond_28

    new-array v3, v10, [I

    add-int/lit8 v8, v8, -0x24

    const/4 v4, 0x5

    mul-int/2addr v8, v4

    const/16 v4, 0x96

    add-int/2addr v8, v4

    aput v8, v3, v9

    const/16 v4, 0x1c

    .line 82
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_28
    const/16 v4, 0x1c

    new-array v3, v10, [I

    aput v14, v3, v9

    .line 83
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_29
    const/16 v4, 0x1c

    new-array v3, v10, [I

    const/4 v8, -0x3

    aput v8, v3, v9

    .line 84
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_2a
    const/16 v4, 0x1c

    new-array v3, v10, [I

    const/4 v8, -0x2

    aput v8, v3, v9

    .line 85
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_2b
    if-eqz v3, :cond_39

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_38

    .line 86
    sget v4, Lk0/nt;->c:I

    const/16 v11, 0x2a

    if-lt v4, v11, :cond_2c

    const/16 v11, 0x4e

    if-le v4, v11, :cond_33

    :cond_2c
    const/16 v11, 0x57

    if-eq v4, v11, :cond_33

    const/16 v11, 0x58

    if-ne v4, v11, :cond_2d

    goto :goto_a

    :cond_2d
    if-ne v7, v10, :cond_30

    if-lt v3, v10, :cond_2e

    if-gt v3, v5, :cond_2e

    new-array v4, v10, [I

    add-int/lit8 v3, v3, 0x40

    aput v3, v4, v9

    const/16 v3, 0x1c

    .line 87
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_2e
    if-lt v3, v6, :cond_2f

    const/16 v4, 0x26

    if-gt v3, v4, :cond_2f

    new-array v4, v10, [I

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x3b

    aput v3, v4, v9

    const/16 v11, 0x1c

    .line 88
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_2f
    const/16 v11, 0x1c

    new-array v3, v10, [I

    aput v14, v3, v9

    .line 89
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_30
    const/16 v11, 0x1c

    if-lt v3, v10, :cond_31

    if-gt v3, v5, :cond_31

    new-array v4, v10, [I

    add-int/lit8 v3, v3, 0x23

    const/16 v16, 0x5

    mul-int/lit8 v3, v3, 0x5

    aput v3, v4, v9

    .line 90
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_31
    const/16 v16, 0x5

    if-lt v3, v6, :cond_32

    const/16 v4, 0x26

    if-gt v3, v4, :cond_32

    new-array v4, v10, [I

    sub-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x5

    const/16 v11, 0x96

    add-int/2addr v3, v11

    aput v3, v4, v9

    const/16 v11, 0x1c

    .line 91
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_32
    const/16 v11, 0x1c

    new-array v3, v10, [I

    aput v14, v3, v9

    .line 92
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    :cond_33
    :goto_a
    const/16 v11, 0x1c

    if-ne v7, v10, :cond_34

    new-array v4, v10, [I

    mul-int/2addr v3, v13

    aput v3, v4, v9

    .line 93
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_34
    if-lt v3, v10, :cond_35

    if-gt v3, v5, :cond_35

    new-array v4, v10, [I

    const/16 v16, 0x5

    mul-int/lit8 v3, v3, 0x5

    add-int/lit16 v3, v3, 0xaf

    aput v3, v4, v9

    .line 94
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_35
    const/16 v4, 0x20

    if-lt v3, v4, :cond_36

    const/16 v11, 0x23

    if-gt v3, v11, :cond_36

    new-array v11, v10, [I

    sub-int/2addr v3, v4

    const/4 v4, 0x5

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0xa0

    aput v3, v11, v9

    const/16 v3, 0x1c

    .line 95
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_36
    const/16 v4, 0x24

    if-lt v3, v4, :cond_37

    const/16 v4, 0x25

    if-gt v3, v4, :cond_37

    new-array v4, v10, [I

    add-int/lit8 v3, v3, -0x24

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    const/16 v11, 0x96

    add-int/2addr v3, v11

    aput v3, v4, v9

    const/16 v3, 0x1c

    .line 96
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_37
    const/16 v3, 0x1c

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 97
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_38
    const/16 v3, 0x1c

    new-array v4, v10, [I

    const/4 v11, -0x3

    aput v11, v4, v9

    .line 98
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_39
    const/16 v3, 0x1c

    new-array v4, v10, [I

    const/4 v11, -0x2

    aput v11, v4, v9

    .line 99
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_b
    if-eqz v8, :cond_47

    const/16 v3, 0x1f

    if-eq v8, v3, :cond_46

    .line 100
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x2a

    if-lt v3, v4, :cond_3a

    const/16 v4, 0x4e

    if-le v3, v4, :cond_41

    :cond_3a
    const/16 v4, 0x57

    if-eq v3, v4, :cond_41

    const/16 v4, 0x58

    if-ne v3, v4, :cond_3b

    goto :goto_c

    :cond_3b
    if-ne v7, v10, :cond_3e

    if-lt v8, v10, :cond_3c

    if-gt v8, v5, :cond_3c

    new-array v3, v10, [I

    add-int/lit8 v8, v8, 0x40

    aput v8, v3, v9

    .line 101
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_3c
    if-lt v8, v6, :cond_3d

    const/16 v3, 0x26

    if-gt v8, v3, :cond_3d

    new-array v3, v10, [I

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x3b

    aput v8, v3, v9

    .line 102
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_3d
    new-array v3, v10, [I

    aput v14, v3, v9

    .line 103
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_3e
    if-lt v8, v10, :cond_3f

    if-gt v8, v5, :cond_3f

    new-array v3, v10, [I

    add-int/lit8 v8, v8, 0x23

    const/4 v4, 0x5

    mul-int/2addr v8, v4

    aput v8, v3, v9

    .line 104
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_3f
    const/4 v4, 0x5

    if-lt v8, v6, :cond_40

    const/16 v3, 0x26

    if-gt v8, v3, :cond_40

    new-array v3, v10, [I

    sub-int/2addr v8, v6

    mul-int/2addr v8, v4

    const/16 v4, 0x96

    add-int/2addr v8, v4

    aput v8, v3, v9

    .line 105
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_40
    new-array v3, v10, [I

    aput v14, v3, v9

    .line 106
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_41
    :goto_c
    if-ne v7, v10, :cond_42

    new-array v3, v10, [I

    mul-int/2addr v8, v13

    aput v8, v3, v9

    .line 107
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_42
    if-lt v8, v10, :cond_43

    if-gt v8, v5, :cond_43

    new-array v3, v10, [I

    const/4 v4, 0x5

    mul-int/2addr v8, v4

    add-int/lit16 v8, v8, 0xaf

    aput v8, v3, v9

    .line 108
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_43
    const/16 v3, 0x20

    if-lt v8, v3, :cond_44

    const/16 v4, 0x23

    if-gt v8, v4, :cond_44

    new-array v4, v10, [I

    sub-int/2addr v8, v3

    const/4 v3, 0x5

    mul-int/2addr v8, v3

    add-int/lit16 v8, v8, 0xa0

    aput v8, v4, v9

    .line 109
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_44
    const/16 v3, 0x24

    if-lt v8, v3, :cond_45

    const/16 v3, 0x25

    if-gt v8, v3, :cond_45

    new-array v3, v10, [I

    add-int/lit8 v8, v8, -0x24

    const/4 v4, 0x5

    mul-int/2addr v8, v4

    const/16 v4, 0x96

    add-int/2addr v8, v4

    aput v8, v3, v9

    .line 110
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_45
    new-array v3, v10, [I

    aput v14, v3, v9

    .line 111
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_46
    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 112
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_47
    new-array v3, v10, [I

    const/4 v4, -0x2

    aput v4, v3, v9

    .line 113
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    .line 114
    :goto_d
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x2a

    if-lt v3, v4, :cond_48

    const/16 v4, 0x4d

    if-le v3, v4, :cond_4a

    :cond_48
    const/16 v4, 0x57

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x58

    if-ne v3, v4, :cond_49

    goto :goto_e

    :cond_49
    new-array v3, v10, [I

    shr-int/lit8 v4, v15, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 115
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_4a
    :goto_e
    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 116
    aget-byte v4, v1, v4

    const/4 v8, 0x7

    shr-int/2addr v4, v8

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v4, v10, [I

    shr-int/lit8 v8, v15, 0x6

    and-int/2addr v8, v10

    aput v8, v4, v9

    .line 117
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_f
    new-array v3, v10, [I

    shr-int/lit8 v4, v15, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/16 v4, 0x10

    .line 118
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x36

    new-array v4, v10, [I

    shr-int/lit8 v8, v15, 0x4

    and-int/2addr v8, v10

    aput v8, v4, v9

    .line 119
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v4, v10, [I

    shr-int/lit8 v8, v15, 0x3

    and-int/2addr v8, v10

    aput v8, v4, v9

    .line 120
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v4, v10, [I

    const/4 v8, 0x2

    shr-int/lit8 v11, v15, 0x2

    and-int/lit8 v8, v11, 0x1

    aput v8, v4, v9

    .line 121
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v4, v10, [I

    aput v7, v4, v9

    .line 122
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 123
    sget v3, Lk0/nt;->a:I

    const v4, 0x21018d

    if-eq v3, v4, :cond_50

    const v4, 0x22018d

    if-eq v3, v4, :cond_50

    const v4, 0x23018d

    if-ne v3, v4, :cond_4b

    goto/16 :goto_11

    .line 124
    :cond_4b
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x50

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x51

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x52

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x53

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x54

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x55

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x56

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x59

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x5e

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x60

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x61

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x62

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x63

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x64

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x65

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x66

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x67

    if-eq v3, v4, :cond_4c

    const/16 v4, 0x68

    if-ne v3, v4, :cond_4d

    :cond_4c
    add-int/lit8 v3, p2, 0x7

    .line 125
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4e

    .line 126
    invoke-static {v9}, Lu0/d;->A3(I)V

    :cond_4d
    :goto_10
    const/16 v4, 0xff

    goto :goto_12

    :cond_4e
    if-ne v7, v10, :cond_4f

    mul-int/2addr v3, v13

    add-int/lit16 v3, v3, 0x258

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    and-int/2addr v3, v14

    .line 127
    invoke-static {v3}, Lu0/d;->B3(I)V

    goto :goto_10

    :cond_4f
    const/4 v4, 0x5

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x258

    .line 128
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto :goto_10

    :cond_50
    :goto_11
    add-int/lit8 v3, p2, 0x7

    .line 129
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    mul-int/2addr v3, v13

    add-int/lit16 v3, v3, 0x258

    .line 130
    invoke-static {v3}, Lu0/d;->A3(I)V

    :goto_12
    const/16 v3, 0x9b

    new-array v8, v10, [I

    add-int/lit8 v11, p2, 0x7

    .line 131
    aget-byte v11, v1, v11

    and-int/2addr v4, v11

    aput v4, v8, v9

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x8

    .line 132
    aget-byte v3, v1, v3

    if-eqz v3, :cond_57

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_56

    if-ne v7, v10, :cond_53

    if-lt v3, v10, :cond_51

    if-gt v3, v5, :cond_51

    const/16 v4, 0x28

    new-array v8, v10, [I

    add-int/lit8 v3, v3, 0x40

    aput v3, v8, v9

    .line 133
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_51
    if-lt v3, v6, :cond_52

    const/16 v4, 0x26

    if-gt v3, v4, :cond_52

    const/16 v4, 0x28

    new-array v8, v10, [I

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x3b

    aput v3, v8, v9

    .line 134
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_52
    const/16 v3, 0x28

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 135
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_53
    if-lt v3, v10, :cond_54

    if-gt v3, v5, :cond_54

    const/16 v4, 0x28

    new-array v8, v10, [I

    add-int/lit8 v3, v3, 0x23

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    aput v3, v8, v9

    .line 136
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_54
    if-lt v3, v6, :cond_55

    const/16 v4, 0x26

    if-gt v3, v4, :cond_55

    const/16 v4, 0x28

    new-array v8, v10, [I

    sub-int/2addr v3, v6

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    const/16 v11, 0x96

    add-int/2addr v3, v11

    aput v3, v8, v9

    .line 137
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_55
    const/16 v3, 0x28

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 138
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_56
    const/16 v3, 0x28

    new-array v4, v10, [I

    const/4 v8, -0x3

    aput v8, v4, v9

    .line 139
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_57
    const/16 v3, 0x28

    new-array v4, v10, [I

    const/4 v8, -0x2

    aput v8, v4, v9

    .line 140
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_13
    add-int/lit8 v3, p2, 0xa

    .line 141
    aget-byte v3, v1, v3

    if-eqz v3, :cond_5e

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_5d

    if-ne v7, v10, :cond_5a

    if-lt v3, v10, :cond_58

    if-gt v3, v5, :cond_58

    const/16 v4, 0x29

    new-array v5, v10, [I

    add-int/lit8 v3, v3, 0x40

    aput v3, v5, v9

    .line 142
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_58
    if-lt v3, v6, :cond_59

    const/16 v4, 0x26

    if-gt v3, v4, :cond_59

    const/16 v4, 0x29

    new-array v5, v10, [I

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x3b

    aput v3, v5, v9

    .line 143
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_59
    const/16 v3, 0x29

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 144
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_5a
    if-lt v3, v10, :cond_5b

    if-gt v3, v5, :cond_5b

    const/16 v4, 0x29

    new-array v5, v10, [I

    add-int/lit8 v3, v3, 0x23

    const/4 v6, 0x5

    mul-int/2addr v3, v6

    aput v3, v5, v9

    .line 145
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_5b
    if-lt v3, v6, :cond_5c

    const/16 v4, 0x26

    if-gt v3, v4, :cond_5c

    const/16 v4, 0x29

    new-array v5, v10, [I

    sub-int/2addr v3, v6

    const/4 v6, 0x5

    mul-int/2addr v3, v6

    const/16 v6, 0x96

    add-int/2addr v3, v6

    aput v3, v5, v9

    .line 146
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_5c
    const/16 v3, 0x29

    new-array v4, v10, [I

    aput v14, v4, v9

    .line 147
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_5d
    const/16 v3, 0x29

    new-array v4, v10, [I

    const/4 v5, -0x3

    aput v5, v4, v9

    .line 148
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_5e
    const/16 v3, 0x29

    new-array v4, v10, [I

    const/4 v5, -0x2

    aput v5, v4, v9

    .line 149
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_14
    add-int/lit8 v3, p2, 0x9

    .line 150
    aget-byte v3, v1, v3

    const/16 v4, 0x2a

    new-array v5, v10, [I

    shr-int/lit8 v6, v3, 0x7

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 151
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2e

    new-array v5, v10, [I

    shr-int/lit8 v6, v3, 0x6

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 152
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2f

    new-array v5, v10, [I

    shr-int/lit8 v6, v3, 0x5

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 153
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2b

    new-array v5, v10, [I

    shr-int/lit8 v6, v3, 0x4

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 154
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2c

    new-array v5, v10, [I

    const/16 v6, 0xf

    and-int/2addr v3, v6

    aput v3, v5, v9

    .line 155
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 156
    sget v3, Lk0/nt;->a:I

    const v4, 0x5d018d

    if-eq v3, v4, :cond_60

    const v4, 0x5e018d

    if-eq v3, v4, :cond_60

    const v4, 0x5f018d

    if-eq v3, v4, :cond_60

    const v4, 0x60018d

    if-eq v3, v4, :cond_60

    const v4, 0x61018d

    if-ne v3, v4, :cond_5f

    goto :goto_15

    :cond_5f
    const/16 v3, 0x12

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 157
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 158
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v10, [I

    const/4 v5, 0x5

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aput v2, v4, v9

    .line 159
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_60
    :goto_15
    add-int/lit8 v2, p2, 0xb

    .line 160
    aget-byte v3, v1, v2

    const/4 v4, 0x4

    shr-int/2addr v3, v4

    and-int/2addr v3, v10

    if-ne v3, v10, :cond_61

    move v3, v10

    goto :goto_16

    :cond_61
    move v3, v9

    :goto_16
    move v4, v3

    move v5, v4

    move v6, v5

    .line 161
    aget-byte v7, v1, v2

    const/4 v8, 0x3

    and-int/2addr v7, v8

    if-eq v7, v10, :cond_64

    const/4 v11, 0x2

    if-eq v7, v11, :cond_63

    if-eq v7, v8, :cond_62

    move v7, v9

    goto :goto_17

    :cond_62
    move v7, v9

    move v6, v10

    goto :goto_17

    :cond_63
    move v6, v10

    move v7, v6

    goto :goto_17

    :cond_64
    const/4 v11, 0x2

    move v7, v10

    .line 162
    :goto_17
    aget-byte v12, v1, v2

    shr-int/2addr v12, v11

    and-int/2addr v12, v8

    if-eq v12, v10, :cond_67

    if-eq v12, v11, :cond_66

    if-eq v12, v8, :cond_65

    move v8, v9

    goto :goto_18

    :cond_65
    move v8, v9

    move v4, v10

    goto :goto_18

    :cond_66
    move v4, v10

    move v8, v4

    goto :goto_18

    :cond_67
    move v8, v10

    :goto_18
    const/16 v11, 0x12

    new-array v12, v10, [I

    aput v3, v12, v9

    .line 163
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v11, v10, [I

    aput v7, v11, v9

    .line 164
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v7, v10, [I

    aput v6, v7, v9

    .line 165
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x16

    new-array v6, v10, [I

    aput v5, v6, v9

    .line 166
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x17

    new-array v5, v10, [I

    aput v8, v5, v9

    .line 167
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v5, v10, [I

    aput v4, v5, v9

    .line 168
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x31

    new-array v4, v10, [I

    .line 169
    aget-byte v5, v1, v2

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x32

    new-array v4, v10, [I

    .line 170
    aget-byte v2, v1, v2

    const/4 v5, 0x6

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aput v2, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :goto_19
    const/16 v2, 0x50

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 171
    aget-byte v1, v1, v4

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 172
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x18

    move v3, v9

    :goto_1a
    const/16 v4, 0xf

    if-ge v3, v4, :cond_de

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v9

    mul-int/lit8 v4, v3, 0x2

    add-int v4, p2, v4

    add-int/lit8 v6, v4, 0x3

    .line 173
    aget-byte v6, v1, v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    const/4 v8, 0x4

    add-int/2addr v4, v8

    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v2

    aput v4, v5, v10

    const/16 v4, 0x86

    .line 174
    iget-object v6, v0, Lmodule/canbus/d0;->i:[[I

    aget-object v6, v6, v3

    invoke-static {v4, v5, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 175
    iget-object v4, v0, Lmodule/canbus/d0;->i:[[I

    aput-object v5, v4, v3

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 176
    aget-byte v2, v1, v2

    const/16 v3, 0x73

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_69

    move v5, v9

    goto :goto_1b

    :cond_69
    move v5, v10

    :goto_1b
    aput v5, v4, v9

    .line 177
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x74

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x70

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    aput v5, v4, v9

    .line 178
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x75

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0xc

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    aput v5, v4, v9

    .line 179
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v4, v10, [I

    const/4 v5, 0x3

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 180
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 181
    aget-byte v2, v1, v2

    const/16 v3, 0x77

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_6a

    move v5, v9

    goto :goto_1c

    :cond_6a
    move v5, v10

    :goto_1c
    aput v5, v4, v9

    .line 182
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_6b

    move v5, v9

    goto :goto_1d

    :cond_6b
    move v5, v10

    :goto_1d
    aput v5, v4, v9

    .line 183
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x79

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_6c

    move v5, v9

    goto :goto_1e

    :cond_6c
    move v5, v10

    :goto_1e
    aput v5, v4, v9

    .line 184
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7a

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_6d

    move v5, v9

    goto :goto_1f

    :cond_6d
    move v5, v10

    :goto_1f
    aput v5, v4, v9

    .line 185
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7b

    new-array v4, v10, [I

    const/4 v5, 0x7

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 186
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 187
    aget-byte v2, v1, v2

    const/16 v3, 0x7c

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_6e

    move v5, v9

    goto :goto_20

    :cond_6e
    move v5, v10

    :goto_20
    aput v5, v4, v9

    .line 188
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7d

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_6f

    move v5, v9

    goto :goto_21

    :cond_6f
    move v5, v10

    :goto_21
    aput v5, v4, v9

    .line 189
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7e

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_70

    move v5, v9

    goto :goto_22

    :cond_70
    move v5, v10

    :goto_22
    aput v5, v4, v9

    .line 190
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7f

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_71

    move v5, v9

    goto :goto_23

    :cond_71
    move v5, v10

    :goto_23
    aput v5, v4, v9

    .line 191
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x80

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_72

    move v5, v9

    goto :goto_24

    :cond_72
    move v5, v10

    :goto_24
    aput v5, v4, v9

    .line 192
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x81

    new-array v4, v10, [I

    const/4 v5, 0x7

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 193
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 194
    aget-byte v2, v1, v2

    const/16 v3, 0x82

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_73

    move v5, v9

    goto :goto_25

    :cond_73
    move v5, v10

    :goto_25
    aput v5, v4, v9

    .line 195
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x83

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_74

    move v5, v9

    goto :goto_26

    :cond_74
    move v5, v10

    :goto_26
    aput v5, v4, v9

    .line 196
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x84

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x2

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 197
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa1

    new-array v4, v10, [I

    and-int/2addr v2, v6

    aput v2, v4, v9

    .line 198
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 199
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_75

    const/16 v3, 0x50

    if-eq v2, v3, :cond_75

    const/16 v3, 0x51

    if-eq v2, v3, :cond_75

    const/16 v3, 0x52

    if-eq v2, v3, :cond_75

    const/16 v3, 0x53

    if-eq v2, v3, :cond_75

    const/16 v3, 0x54

    if-eq v2, v3, :cond_75

    const/16 v3, 0x55

    if-eq v2, v3, :cond_75

    const/16 v3, 0x56

    if-eq v2, v3, :cond_75

    const/16 v3, 0x59

    if-eq v2, v3, :cond_75

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_75

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_75

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_75

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_75

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_75

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_75

    const/16 v3, 0x60

    if-eq v2, v3, :cond_75

    const/16 v3, 0x61

    if-eq v2, v3, :cond_75

    const/16 v3, 0x62

    if-eq v2, v3, :cond_75

    const/16 v3, 0x63

    if-eq v2, v3, :cond_75

    const/16 v3, 0x64

    if-eq v2, v3, :cond_75

    const/16 v3, 0x65

    if-eq v2, v3, :cond_75

    const/16 v3, 0x66

    if-eq v2, v3, :cond_75

    const/16 v3, 0x67

    if-eq v2, v3, :cond_75

    const/16 v3, 0x68

    if-ne v2, v3, :cond_de

    :cond_75
    add-int/lit8 v2, p2, 0x6

    .line 200
    aget-byte v2, v1, v2

    const/16 v3, 0xb6

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x5

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 201
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xba

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x3

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 202
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc7

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 203
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc9

    new-array v4, v10, [I

    shr-int/2addr v2, v9

    const/4 v5, 0x3

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 204
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 205
    aget-byte v6, v1, v4

    const/4 v7, 0x5

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v3, v10, [I

    .line 206
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v5

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v3, v10, [I

    .line 207
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf5

    new-array v3, v10, [I

    .line 208
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf6

    new-array v3, v10, [I

    const/16 v4, 0x8

    add-int/lit8 v4, p2, 0x8

    .line 209
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf7

    new-array v3, v10, [I

    .line 210
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v3, v10, [I

    .line 211
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf9

    new-array v3, v10, [I

    .line 212
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v3, v10, [I

    .line 213
    aget-byte v5, v1, v4

    const/4 v6, 0x3

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v3, v10, [I

    .line 214
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfc

    new-array v3, v10, [I

    .line 215
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 216
    aget-byte v2, v1, v2

    const/16 v3, 0x6a

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_76

    move v5, v9

    goto :goto_27

    :cond_76
    move v5, v10

    :goto_27
    aput v5, v4, v9

    .line 217
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_77

    move v5, v9

    goto :goto_28

    :cond_77
    move v5, v10

    :goto_28
    aput v5, v4, v9

    .line 218
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_78

    move v5, v9

    goto :goto_29

    :cond_78
    move v5, v10

    :goto_29
    aput v5, v4, v9

    .line 219
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_79

    move v5, v9

    goto :goto_2a

    :cond_79
    move v5, v10

    :goto_2a
    aput v5, v4, v9

    .line 220
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/4 v3, 0x3

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 221
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7a

    const v3, 0xffffff

    :cond_7a
    const/16 v4, 0x6e

    new-array v5, v10, [I

    or-int/2addr v3, v2

    aput v3, v5, v9

    .line 222
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 223
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7b

    const v3, 0xffffff

    :cond_7b
    const/16 v4, 0x6f

    new-array v5, v10, [I

    or-int/2addr v3, v2

    aput v3, v5, v9

    .line 224
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x5

    .line 225
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7c

    const v3, 0xffffff

    :cond_7c
    const/16 v4, 0x70

    new-array v5, v10, [I

    or-int/2addr v3, v2

    aput v3, v5, v9

    .line 226
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x6

    .line 227
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7d

    const v3, 0xffffff

    :cond_7d
    const/16 v5, 0x71

    new-array v6, v10, [I

    or-int/2addr v3, v2

    aput v3, v6, v9

    .line 228
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/4 v3, 0x7

    add-int/lit8 v3, p2, 0x7

    .line 229
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7e

    const v1, 0xffffff

    :cond_7e
    const/16 v3, 0x72

    new-array v4, v10, [I

    or-int/2addr v1, v2

    aput v1, v4, v9

    .line 230
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :pswitch_8
    move v2, v12

    add-int/lit8 v3, p2, 0x2

    .line 231
    aget-byte v1, v1, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 232
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7f

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 233
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 234
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2b

    :cond_7f
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 235
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 236
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_2b
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x3

    .line 237
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    aput v4, v2, v9

    const/4 v4, 0x4

    .line 238
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v2, v9

    const/4 v1, 0x5

    .line 239
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 240
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, p2, 0x3

    .line 241
    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v3

    or-int v3, v4, v5

    const v4, 0xffff

    if-ne v3, v4, :cond_80

    move v3, v9

    :cond_80
    const/16 v4, 0x68

    new-array v5, v10, [I

    or-int/2addr v3, v2

    aput v3, v5, v9

    .line 242
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    move v3, v9

    :goto_2c
    const/4 v4, 0x5

    if-ge v3, v4, :cond_de

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v9

    mul-int/lit8 v4, v3, 0x2

    add-int v4, p2, v4

    add-int/lit8 v6, v4, 0x5

    .line 243
    aget-byte v6, v1, v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    const/4 v8, 0x6

    add-int/2addr v4, v8

    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v2

    aput v4, v5, v10

    const/16 v4, 0x69

    .line 244
    iget-object v6, v0, Lmodule/canbus/d0;->h:[[I

    aget-object v6, v6, v3

    invoke-static {v4, v5, v6}, Lk0/qt;->C0(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 245
    iget-object v4, v0, Lmodule/canbus/d0;->h:[[I

    aput-object v5, v4, v3

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 246
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v5, p2, 0x3

    .line 247
    aget-byte v5, v1, v5

    and-int/2addr v5, v4

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    const/4 v6, 0x4

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    or-int v4, v5, v6

    const v5, 0xffff

    if-ne v4, v5, :cond_82

    move v4, v9

    :cond_82
    const/16 v5, 0x67

    new-array v6, v10, [I

    or-int/2addr v3, v4

    aput v3, v6, v9

    .line 248
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    .line 249
    sget v3, Lk0/nt;->c:I

    const/16 v4, 0x29

    if-le v3, v4, :cond_83

    const/16 v4, 0x4d

    if-le v3, v4, :cond_de

    :cond_83
    const/16 v4, 0x4f

    if-eq v3, v4, :cond_de

    const/16 v4, 0x50

    if-eq v3, v4, :cond_de

    const/16 v4, 0x57

    if-eq v3, v4, :cond_de

    const/16 v4, 0x58

    if-eq v3, v4, :cond_de

    const/16 v3, 0xba

    new-array v4, v10, [I

    .line 250
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    aput v1, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :pswitch_b
    move v2, v4

    add-int/lit8 v3, p2, 0x8

    .line 251
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    shl-int/lit8 v3, v3, 0x18

    const/16 v4, 0x64

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x2

    .line 252
    aget-byte v6, v1, v6

    and-int/2addr v6, v2

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    and-int/2addr v7, v2

    or-int/2addr v6, v7

    or-int/2addr v6, v3

    aput v6, v5, v9

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x65

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x4

    .line 253
    aget-byte v6, v1, v6

    and-int/2addr v6, v2

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, v1, v7

    and-int/2addr v7, v2

    or-int/2addr v6, v7

    aput v6, v5, v9

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x66

    new-array v5, v10, [I

    add-int/lit8 v6, p2, 0x6

    .line 254
    aget-byte v7, v1, v6

    and-int/2addr v7, v2

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    const/4 v11, 0x7

    add-int/lit8 v11, p2, 0x7

    aget-byte v12, v1, v11

    and-int/2addr v12, v2

    or-int/2addr v7, v12

    or-int/2addr v3, v7

    aput v3, v5, v9

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 255
    aget-byte v3, v1, v6

    and-int/2addr v3, v2

    shl-int/2addr v3, v8

    aget-byte v1, v1, v11

    and-int/2addr v1, v2

    shl-int/2addr v1, v9

    or-int/2addr v1, v3

    new-array v2, v10, [I

    aput v1, v2, v9

    const/16 v1, 0x96

    .line 256
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 257
    :pswitch_c
    sget v2, Lk0/nt;->c:I

    const/16 v4, 0x20

    if-ne v2, v4, :cond_8d

    add-int/lit8 v2, p2, 0x2

    .line 258
    aget-byte v2, v1, v2

    const/4 v4, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 259
    aget-byte v1, v1, v5

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 260
    iput v2, v0, Lmodule/canbus/d0;->r:I

    move v2, v9

    .line 261
    :goto_2d
    iget-object v4, v0, Lmodule/canbus/d0;->s:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_85

    .line 262
    iget v5, v0, Lmodule/canbus/d0;->r:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_84

    if-eqz v5, :cond_85

    .line 263
    iput v2, v0, Lmodule/canbus/d0;->q:I

    goto :goto_2e

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 264
    :cond_85
    :goto_2e
    iget v5, v0, Lmodule/canbus/d0;->r:I

    if-eq v5, v3, :cond_8b

    const/16 v3, 0x1e

    if-eq v5, v3, :cond_89

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v10, :cond_86

    .line 265
    array-length v1, v4

    if-ge v2, v1, :cond_de

    .line 266
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    :cond_86
    if-nez v1, :cond_de

    .line 267
    iget v1, v0, Lmodule/canbus/d0;->q:I

    array-length v2, v4

    if-ge v1, v2, :cond_87

    const/16 v2, 0xff

    if-eq v1, v2, :cond_88

    .line 268
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_2f

    :cond_87
    const/16 v2, 0xff

    .line 269
    :cond_88
    :goto_2f
    iput v2, v0, Lmodule/canbus/d0;->q:I

    goto/16 :goto_43

    :cond_89
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_de

    .line 270
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v10, :cond_8a

    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 271
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_43

    :cond_8a
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 272
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_43

    :cond_8b
    const/4 v2, 0x3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v10, :cond_de

    .line 273
    sget v1, Lh0/c;->E:I

    if-eq v1, v2, :cond_8c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8c

    const/16 v1, 0x12

    .line 274
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 275
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    :cond_8c
    const/16 v1, 0x1a

    .line 276
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 277
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    .line 278
    :cond_8d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_de

    add-int/lit8 v2, p2, 0x2

    .line 279
    aget-byte v2, v1, v2

    const/4 v4, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 280
    aget-byte v1, v1, v5

    const/16 v4, 0xff

    and-int/2addr v2, v4

    .line 281
    iput v2, v0, Lmodule/canbus/d0;->m:I

    move v2, v9

    .line 282
    :goto_30
    iget-object v4, v0, Lmodule/canbus/d0;->p:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_8f

    .line 283
    iget v5, v0, Lmodule/canbus/d0;->m:I

    aget-object v6, v4, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_8e

    if-eqz v5, :cond_8f

    .line 284
    iput v2, v0, Lmodule/canbus/d0;->l:I

    goto :goto_31

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 285
    :cond_8f
    :goto_31
    iget v5, v0, Lmodule/canbus/d0;->m:I

    if-eq v5, v10, :cond_a3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_9c

    const/16 v6, 0x19

    if-eq v5, v6, :cond_99

    const/16 v6, 0x87

    if-eq v5, v6, :cond_93

    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-ne v1, v10, :cond_90

    .line 286
    array-length v1, v4

    if-ge v2, v1, :cond_de

    .line 287
    aget-object v1, v4, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    :cond_90
    if-nez v1, :cond_de

    .line 288
    iget v1, v0, Lmodule/canbus/d0;->l:I

    array-length v2, v4

    if-ge v1, v2, :cond_91

    const/16 v2, 0xff

    if-eq v1, v2, :cond_92

    .line 289
    aget-object v1, v4, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_32

    :cond_91
    const/16 v2, 0xff

    .line 290
    :cond_92
    :goto_32
    iput v2, v0, Lmodule/canbus/d0;->l:I

    goto/16 :goto_43

    .line 291
    :cond_93
    iget v2, v0, Lmodule/canbus/d0;->o:I

    if-eq v2, v1, :cond_de

    .line 292
    iput v1, v0, Lmodule/canbus/d0;->o:I

    if-ne v1, v10, :cond_94

    .line 293
    iput-boolean v9, v0, Lmodule/canbus/d0;->n:Z

    goto/16 :goto_43

    :cond_94
    const/4 v2, 0x2

    if-ne v1, v2, :cond_95

    .line 294
    iput-boolean v10, v0, Lmodule/canbus/d0;->n:Z

    const/16 v1, 0x19

    .line 295
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 296
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    :cond_95
    if-nez v1, :cond_de

    .line 297
    iget-boolean v1, v0, Lmodule/canbus/d0;->n:Z

    if-nez v1, :cond_98

    .line 298
    sget v1, Lk0/nt;->c:I

    packed-switch v1, :pswitch_data_2

    .line 299
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 300
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    .line 301
    :pswitch_d
    iget-boolean v1, v0, Lmodule/canbus/d0;->f:Z

    if-eqz v1, :cond_96

    .line 302
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 303
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    .line 304
    :cond_96
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xa2

    aget v2, v1, v2

    if-eqz v2, :cond_97

    const/16 v2, 0xa2

    .line 305
    aget v1, v1, v2

    iput v1, v0, Lmodule/canbus/d0;->g:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 306
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_43

    :cond_97
    const/4 v1, 0x5

    .line 307
    iget v2, v0, Lmodule/canbus/d0;->g:I

    if-eqz v2, :cond_de

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v9

    const/16 v3, 0x84

    aput v3, v1, v10

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x7

    const/4 v4, 0x3

    aput v3, v1, v4

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 308
    invoke-static {v1}, Lz/k;->s([I)V

    .line 309
    iput v9, v0, Lmodule/canbus/d0;->g:I

    goto/16 :goto_43

    .line 310
    :cond_98
    iput-boolean v9, v0, Lmodule/canbus/d0;->n:Z

    goto/16 :goto_43

    :cond_99
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v10, :cond_de

    .line 311
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x50

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x51

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x52

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x53

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x54

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x55

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x56

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x59

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x60

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x61

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x62

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x63

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x64

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x66

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x67

    if-eq v1, v2, :cond_9b

    const/16 v2, 0x68

    if-ne v1, v2, :cond_9a

    goto :goto_33

    :cond_9a
    const/16 v1, 0x9

    .line 312
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 313
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    :cond_9b
    :goto_33
    const-string v1, "com.syu.carlink"

    .line 314
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_de

    const-string v1, "com.syu.carlink"

    .line 315
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto/16 :goto_43

    .line 316
    :cond_9c
    iget v2, v0, Lmodule/canbus/d0;->o:I

    if-eq v2, v1, :cond_de

    .line 317
    iput v1, v0, Lmodule/canbus/d0;->o:I

    if-ne v1, v10, :cond_9d

    .line 318
    iput-boolean v9, v0, Lmodule/canbus/d0;->n:Z

    goto/16 :goto_43

    :cond_9d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_9e

    .line 319
    iput-boolean v10, v0, Lmodule/canbus/d0;->n:Z

    .line 320
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 321
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    :cond_9e
    if-nez v1, :cond_de

    .line 322
    iget-boolean v1, v0, Lmodule/canbus/d0;->n:Z

    if-nez v1, :cond_9f

    .line 323
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 324
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    .line 325
    :cond_9f
    iput-boolean v9, v0, Lmodule/canbus/d0;->n:Z

    goto/16 :goto_43

    :cond_a0
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eqz v1, :cond_de

    .line 326
    sget v1, Lk0/nt;->c:I

    packed-switch v1, :pswitch_data_3

    const/16 v1, 0x8

    .line 327
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 328
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    .line 329
    :pswitch_e
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xa2

    aget v1, v1, v2

    if-lez v1, :cond_a1

    add-int/lit8 v1, v1, -0x1

    .line 330
    :cond_a1
    iget-boolean v2, v0, Lmodule/canbus/d0;->f:Z

    if-nez v2, :cond_a2

    const/4 v2, 0x5

    new-array v3, v2, [I

    const/16 v2, 0xe3

    aput v2, v3, v9

    const/16 v2, 0x84

    aput v2, v3, v10

    const/4 v2, 0x2

    aput v2, v3, v2

    const/4 v4, 0x7

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v6, 0x4

    aput v1, v3, v6

    .line 331
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_34

    :cond_a2
    const/4 v2, 0x2

    const/4 v4, 0x7

    const/4 v5, 0x3

    :goto_34
    const/4 v3, 0x6

    new-array v3, v3, [B

    const/16 v6, 0x2e

    aput-byte v6, v3, v9

    const/16 v6, -0x7c

    aput-byte v6, v3, v10

    aput-byte v2, v3, v2

    aput-byte v4, v3, v5

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v3, v2

    const/4 v1, 0x5

    aput-byte v9, v3, v1

    .line 332
    invoke-static {v3}, Lmodule/canbus/d0;->d4([B)V

    goto/16 :goto_43

    :cond_a3
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eqz v1, :cond_de

    .line 333
    sget v1, Lk0/nt;->c:I

    packed-switch v1, :pswitch_data_4

    const/4 v4, 0x7

    .line 334
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    .line 335
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_43

    .line 336
    :pswitch_f
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0xa2

    aget v1, v1, v2

    const/16 v2, 0x3f

    if-ge v1, v2, :cond_a4

    add-int/lit8 v1, v1, 0x1

    .line 337
    :cond_a4
    iget-boolean v2, v0, Lmodule/canbus/d0;->f:Z

    if-nez v2, :cond_a5

    const/4 v2, 0x5

    new-array v3, v2, [I

    const/16 v2, 0xe3

    aput v2, v3, v9

    const/16 v2, 0x84

    aput v2, v3, v10

    const/4 v2, 0x2

    aput v2, v3, v2

    const/4 v4, 0x7

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v6, 0x4

    aput v1, v3, v6

    .line 338
    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_35

    :cond_a5
    const/4 v2, 0x2

    const/4 v4, 0x7

    const/4 v5, 0x3

    :goto_35
    const/4 v3, 0x6

    new-array v3, v3, [B

    const/16 v6, 0x2e

    aput-byte v6, v3, v9

    const/16 v6, -0x7c

    aput-byte v6, v3, v10

    aput-byte v2, v3, v2

    aput-byte v4, v3, v5

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v3, v2

    const/4 v1, 0x5

    aput-byte v9, v3, v1

    .line 339
    invoke-static {v3}, Lmodule/canbus/d0;->d4([B)V

    goto/16 :goto_43

    :pswitch_10
    add-int/lit8 v2, p2, 0x2

    .line 340
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 341
    aget-byte v3, v1, v3

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 342
    aget-byte v1, v1, v4

    const/16 v4, 0x61

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x0

    const/16 v7, 0xf

    and-int/2addr v6, v7

    aput v6, v5, v9

    .line 343
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x62

    new-array v5, v10, [I

    const/4 v6, 0x7

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 344
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v10, [I

    const/16 v5, 0xff

    and-int/2addr v3, v5

    aput v3, v4, v9

    .line 345
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v10, [I

    and-int/lit8 v4, v1, 0x1

    aput v4, v3, v9

    .line 346
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 347
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v10, [I

    const/4 v4, 0x2

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 348
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 349
    :pswitch_11
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_a6

    add-int/lit8 v2, p2, 0x2

    .line 350
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/d0;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 351
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/d0;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 352
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/d0;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 353
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/d0;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    :cond_a6
    const/16 v2, 0xb0

    new-array v3, v10, [I

    const/4 v4, 0x6

    add-int/lit8 v5, p2, 0x6

    .line 354
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v10, [I

    .line 355
    aget-byte v4, v1, v5

    const/4 v6, 0x7

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 356
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x29

    if-le v2, v3, :cond_a7

    const/16 v3, 0x4d

    if-le v2, v3, :cond_a8

    :cond_a7
    const/16 v3, 0x57

    if-eq v2, v3, :cond_a8

    const/16 v3, 0x58

    if-eq v2, v3, :cond_a8

    const/16 v2, 0xb3

    new-array v3, v10, [I

    .line 357
    aget-byte v4, v1, v5

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_a8
    const/16 v2, 0xb2

    new-array v3, v10, [I

    .line 358
    aget-byte v1, v1, v5

    shr-int/2addr v1, v9

    const/4 v4, 0x7

    and-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 359
    :pswitch_12
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_de

    add-int/lit8 v2, p2, 0x2

    .line 360
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/lit8 v5, p2, 0x3

    .line 361
    aget-byte v6, v1, v5

    and-int/2addr v6, v4

    add-int/lit8 v7, p2, 0x4

    .line 362
    aget-byte v8, v1, v7

    and-int/2addr v8, v4

    const/4 v11, 0x5

    add-int/lit8 v11, p2, 0x5

    .line 363
    aget-byte v12, v1, v11

    and-int/2addr v12, v4

    if-nez v3, :cond_a9

    if-nez v6, :cond_a9

    if-nez v8, :cond_a9

    if-nez v12, :cond_a9

    .line 364
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_36

    .line 365
    :cond_a9
    sget v4, Ll0/c0;->g:I

    if-ne v4, v3, :cond_aa

    sget v4, Ll0/c0;->h:I

    if-ne v4, v6, :cond_aa

    sget v4, Ll0/c0;->i:I

    if-ne v4, v8, :cond_aa

    sget v4, Ll0/c0;->j:I

    if-eq v4, v12, :cond_ab

    .line 366
    :cond_aa
    sget v4, Lu0/b;->o:I

    if-nez v4, :cond_ab

    .line 367
    invoke-static {v10}, Lu0/d;->C2(I)V

    const/4 v4, 0x4

    .line 368
    sput v4, Ll0/c0;->k:I

    .line 369
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 370
    :cond_ab
    :goto_36
    sput v3, Ll0/c0;->g:I

    .line 371
    sput v6, Ll0/c0;->h:I

    .line 372
    sput v8, Ll0/c0;->i:I

    .line 373
    sput v12, Ll0/c0;->j:I

    .line 374
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/d0;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 375
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/d0;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 376
    aget-byte v2, v1, v7

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lmodule/canbus/d0;->b3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 377
    aget-byte v1, v1, v11

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lmodule/canbus/d0;->b3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_43

    :pswitch_13
    const/16 v2, 0xfd

    new-array v3, v10, [I

    const/4 v4, 0x2

    add-int/lit8 v5, p2, 0x2

    .line 378
    aget-byte v4, v1, v5

    const/4 v6, 0x7

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfe

    new-array v3, v10, [I

    .line 379
    aget-byte v4, v1, v5

    const/4 v6, 0x6

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 380
    aget-byte v3, v1, v5

    const/4 v4, 0x5

    shr-int/2addr v3, v4

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/16 v3, 0xff

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x100

    new-array v3, v10, [I

    .line 381
    aget-byte v4, v1, v5

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x101

    new-array v3, v10, [I

    .line 382
    aget-byte v4, v1, v5

    const/4 v6, 0x3

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x102

    new-array v3, v10, [I

    .line 383
    aget-byte v4, v1, v5

    const/4 v6, 0x2

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x103

    new-array v3, v10, [I

    .line 384
    aget-byte v1, v1, v5

    shr-int/2addr v1, v10

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 385
    :pswitch_14
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    .line 386
    aget-byte v1, v1, v3

    packed-switch v1, :pswitch_data_5

    goto/16 :goto_43

    :pswitch_15
    const/16 v1, 0xf2

    .line 387
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_16
    const/16 v1, 0xf1

    .line 388
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_17
    const/16 v1, 0xf0

    .line 389
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_18
    const/16 v1, 0xef

    .line 390
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_19
    const/16 v1, 0xee

    .line 391
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_1a
    const/16 v1, 0xed

    .line 392
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    .line 393
    :pswitch_1b
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_6

    :pswitch_1c
    const/16 v2, 0x85

    new-array v3, v10, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 394
    aget-byte v1, v1, v4

    const/4 v4, 0x6

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 395
    :pswitch_1d
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0xf4

    .line 396
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    .line 397
    :pswitch_1e
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0xf3

    .line 398
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_1f
    move v3, v12

    .line 399
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0xdf

    .line 400
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_20
    move v3, v12

    .line 401
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0xec

    .line 402
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_21
    move v3, v12

    add-int/lit8 v2, p2, 0x3

    .line 403
    aget-byte v2, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0xff

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    const/16 v2, 0x10

    div-int/2addr v1, v2

    const/16 v2, 0x9c

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 404
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 405
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 406
    :pswitch_22
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0xeb

    .line 407
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_23
    move v3, v12

    .line 408
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0xea

    .line 409
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_24
    move v3, v12

    .line 410
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0x1e

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0xe9

    .line 411
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_43

    :pswitch_25
    const/16 v2, 0xe0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 412
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v3, v10, [I

    .line 413
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe2

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 414
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 415
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 416
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 417
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 418
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 419
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 420
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    const/16 v5, 0x10

    add-int/lit8 v5, p2, 0x10

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :pswitch_26
    const/16 v2, 0xd6

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 421
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v3, v10, [I

    .line 422
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v3, v10, [I

    .line 423
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd9

    new-array v3, v10, [I

    .line 424
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v3, v10, [I

    .line 425
    aget-byte v5, v1, v4

    const/4 v6, 0x3

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 426
    iget v2, v0, Lmodule/canbus/d0;->x:I

    aget-byte v3, v1, v4

    shr-int/2addr v3, v6

    and-int/2addr v3, v10

    if-eq v2, v3, :cond_ad

    .line 427
    aget-byte v2, v1, v4

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    iput v2, v0, Lmodule/canbus/d0;->x:I

    if-ne v2, v10, :cond_ac

    .line 428
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 429
    invoke-static {}, Lo1/u;->z()I

    goto :goto_37

    :cond_ac
    if-nez v2, :cond_ad

    .line 430
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 431
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 432
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.syu.canbus"

    const-string v5, "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct"

    .line 433
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 434
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 435
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_ad
    :goto_37
    const/16 v2, 0xdb

    new-array v3, v10, [I

    .line 437
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    const/4 v5, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 438
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 439
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 440
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    const/4 v5, 0x6

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :pswitch_27
    move v5, v4

    .line 441
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_de

    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 442
    aget-byte v1, v1, v2

    and-int/2addr v1, v5

    .line 443
    iput v1, v0, Lmodule/canbus/d0;->v:I

    move v1, v9

    .line 444
    :goto_38
    iget-object v2, v0, Lmodule/canbus/d0;->w:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_af

    .line 445
    iget v3, v0, Lmodule/canbus/d0;->v:I

    aget-object v4, v2, v1

    aget v4, v4, v9

    if-ne v3, v4, :cond_ae

    if-eqz v3, :cond_af

    .line 446
    iput v1, v0, Lmodule/canbus/d0;->u:I

    goto :goto_39

    :cond_ae
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 447
    :cond_af
    :goto_39
    iget v1, v0, Lmodule/canbus/d0;->v:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_b7

    packed-switch v1, :pswitch_data_7

    if-eqz v1, :cond_de

    .line 448
    iget v1, v0, Lmodule/canbus/d0;->u:I

    array-length v3, v2

    if-ge v1, v3, :cond_b1

    const/16 v3, 0xff

    if-eq v1, v3, :cond_b0

    .line 449
    aget-object v1, v2, v1

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 450
    iget-object v1, v0, Lmodule/canbus/d0;->w:[[I

    iget v2, v0, Lmodule/canbus/d0;->u:I

    aget-object v1, v1, v2

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto :goto_3a

    :cond_b0
    move v1, v3

    goto :goto_3b

    :cond_b1
    :goto_3a
    const/16 v1, 0xff

    .line 451
    :goto_3b
    iput v1, v0, Lmodule/canbus/d0;->u:I

    goto/16 :goto_43

    .line 452
    :pswitch_28
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x50

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x51

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x53

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x54

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x55

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x56

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x59

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x60

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x61

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x62

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x63

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x64

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x65

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x66

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x67

    if-eq v1, v2, :cond_b2

    const/16 v2, 0x68

    if-ne v1, v2, :cond_de

    .line 453
    :cond_b2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRSEAct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 454
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    const-string v3, "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRSEAct"

    .line 455
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 456
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 457
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 459
    :pswitch_29
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x51

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x53

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x54

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x55

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x56

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x59

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x60

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x61

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x62

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x63

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x64

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x65

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x66

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x67

    if-eq v1, v2, :cond_b3

    const/16 v2, 0x68

    if-ne v1, v2, :cond_de

    .line 460
    :cond_b3
    iget v1, v0, Lmodule/canbus/d0;->x:I

    if-ne v1, v10, :cond_b4

    .line 461
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_43

    :cond_b4
    if-nez v1, :cond_de

    .line 462
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 463
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    const-string v3, "com.syu.carinfo.xp.ziyouguang.PAToyotaCarCDAct"

    .line 464
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 465
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 466
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 467
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 468
    :pswitch_2a
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x50

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x51

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x53

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x54

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x55

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x56

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x59

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x60

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x61

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x62

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x63

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x64

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x65

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x66

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x67

    if-eq v1, v2, :cond_b5

    const/16 v2, 0x68

    if-ne v1, v2, :cond_de

    .line 469
    :cond_b5
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRadioAct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 470
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    const-string v3, "com.syu.carinfo.xp.ziyouguang.PAToyotaXMRadioAct"

    .line 471
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 472
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 473
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 474
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_43

    .line 475
    :pswitch_2b
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x50

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x51

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x52

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x53

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x54

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x55

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x56

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x59

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x60

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x61

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x62

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x63

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x64

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x65

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x66

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x67

    if-eq v1, v2, :cond_b6

    const/16 v2, 0x68

    if-ne v1, v2, :cond_de

    :cond_b6
    const-string v1, "com.syu.carlink"

    .line 476
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_de

    const-string v1, "com.syu.carlink"

    .line 477
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto/16 :goto_43

    .line 478
    :cond_b7
    invoke-static {}, Lo1/u;->c1()I

    goto/16 :goto_43

    .line 479
    :cond_b8
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_43

    :cond_b9
    add-int/lit8 v2, p2, 0x2

    .line 480
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v10, :cond_c0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_bf

    const/16 v3, 0x8

    if-eq v2, v3, :cond_be

    if-eq v2, v13, :cond_bd

    const/16 v3, 0xd

    if-eq v2, v3, :cond_bc

    const/4 v3, 0x3

    if-eq v2, v3, :cond_bb

    const/4 v3, 0x4

    if-eq v2, v3, :cond_ba

    goto/16 :goto_43

    :cond_ba
    const/16 v2, 0x95

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 481
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 482
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 483
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_bb
    add-int/lit8 v2, p2, 0x4

    .line 484
    aget-byte v3, v1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    and-int v3, v3, v17

    add-int/lit8 v4, p2, 0x3

    aget-byte v5, v1, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x64

    const/16 v5, 0x407

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 485
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    .line 486
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v6, 0x419

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v10, v7, v9

    aput v3, v7, v10

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v3, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v3, 0x99

    new-array v5, v10, [I

    .line 487
    aget-byte v2, v1, v2

    const/16 v6, 0x8

    shl-int/2addr v2, v6

    and-int v2, v2, v17

    aget-byte v4, v1, v4

    const/16 v6, 0xff

    and-int/2addr v4, v6

    or-int/2addr v2, v4

    aput v2, v5, v9

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x61

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 488
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_bc
    const/4 v2, 0x3

    const/16 v5, 0xff

    add-int/lit8 v3, p2, 0x3

    .line 489
    aget-byte v1, v1, v3

    and-int/2addr v1, v5

    const/16 v2, 0x92

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 490
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 491
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x2

    const/4 v5, 0x3

    and-int/2addr v4, v5

    aput v4, v3, v9

    .line 492
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    const/4 v4, 0x6

    shr-int/2addr v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v9

    .line 493
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_bd
    const/4 v5, 0x3

    const/16 v2, 0x9a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 494
    aget-byte v4, v1, v4

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_be
    add-int/lit8 v2, p2, 0x3

    .line 495
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 496
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 497
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 498
    iput-boolean v10, v0, Lmodule/canbus/d0;->A:Z

    goto/16 :goto_43

    :cond_bf
    const/16 v2, 0x8a

    new-array v3, v10, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 499
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    .line 500
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_c0
    const/16 v2, 0x87

    new-array v3, v10, [I

    const/4 v4, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 501
    aget-byte v4, v1, v5

    const/4 v6, 0x6

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    .line 502
    aget-byte v4, v1, v5

    const/4 v6, 0x5

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    .line 503
    aget-byte v4, v1, v5

    const/4 v6, 0x7

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 504
    aget-byte v4, v1, v5

    const/4 v6, 0x3

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    .line 505
    aget-byte v4, v1, v5

    const/4 v6, 0x4

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v10, [I

    .line 506
    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v10, [I

    .line 507
    aget-byte v4, v1, v5

    const/4 v6, 0x2

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 508
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_c1

    .line 509
    aget-byte v2, v1, v5

    const/4 v3, 0x3

    shr-int/2addr v2, v3

    and-int/2addr v2, v10

    aget-byte v1, v1, v5

    const/4 v4, 0x4

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_43

    :cond_c1
    const/4 v3, 0x3

    const/4 v4, 0x4

    .line 510
    aget-byte v2, v1, v5

    shr-int/2addr v2, v3

    and-int/2addr v2, v10

    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_43

    :cond_c2
    move v3, v8

    add-int/lit8 v2, p2, 0x2

    .line 511
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 512
    aget-byte v1, v1, v3

    and-int/lit16 v3, v2, 0xff

    .line 513
    iput v3, v0, Lmodule/canbus/d0;->m:I

    move v3, v9

    .line 514
    :goto_3c
    iget-object v4, v0, Lmodule/canbus/d0;->t:[[I

    array-length v5, v4

    if-ge v3, v5, :cond_c4

    .line 515
    iget v5, v0, Lmodule/canbus/d0;->m:I

    aget-object v6, v4, v3

    aget v6, v6, v9

    if-ne v5, v6, :cond_c3

    if-eqz v5, :cond_c4

    .line 516
    iput v3, v0, Lmodule/canbus/d0;->l:I

    goto :goto_3d

    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_c4
    :goto_3d
    const/16 v5, 0xff

    and-int/2addr v1, v5

    if-eqz v1, :cond_c5

    .line 517
    array-length v5, v4

    if-ge v3, v5, :cond_c6

    .line 518
    aget-object v3, v4, v3

    aget v3, v3, v10

    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    goto :goto_3e

    .line 519
    :cond_c5
    array-length v5, v4

    if-gt v3, v5, :cond_c6

    .line 520
    iget v3, v0, Lmodule/canbus/d0;->l:I

    aget-object v3, v4, v3

    aget v3, v3, v10

    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    :cond_c6
    :goto_3e
    if-eqz v1, :cond_de

    if-eq v2, v10, :cond_c7

    const/4 v1, 0x5

    if-eq v2, v1, :cond_c7

    const/16 v1, 0x14

    if-eq v2, v1, :cond_c7

    goto/16 :goto_43

    .line 521
    :cond_c7
    invoke-static {}, Lo1/u;->x0()V

    goto/16 :goto_43

    :cond_c8
    const/16 v2, 0xbb

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 522
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v10, [I

    .line 523
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v10, [I

    .line 524
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v10, [I

    .line 525
    aget-byte v5, v1, v4

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v10, [I

    .line 526
    aget-byte v5, v1, v4

    const/4 v6, 0x3

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v10, [I

    .line 527
    aget-byte v5, v1, v4

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v10, [I

    .line 528
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v10, [I

    .line 529
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 530
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 531
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 532
    aget-byte v4, v1, v4

    and-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v10, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 533
    aget-byte v1, v1, v4

    and-int/2addr v1, v5

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_c9
    const/16 v2, 0xc8

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 534
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v3, v10, [I

    .line 535
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v3, v10, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 536
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_ca
    const/16 v2, 0x22

    new-array v3, v10, [I

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 537
    aget-byte v1, v1, v4

    const/4 v4, 0x7

    shr-int/2addr v1, v4

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    .line 538
    :cond_cb
    sget v2, Lk0/nt;->a:I

    const v3, 0x27018d

    if-ne v2, v3, :cond_cf

    .line 539
    sget v2, Lmodule/canbus/d0;->b0:I

    if-nez v2, :cond_cc

    goto/16 :goto_43

    :cond_cc
    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 540
    aget-byte v1, v1, v2

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    and-int/2addr v1, v10

    .line 541
    sget v2, Lu0/b;->o:I

    if-eqz v2, :cond_cd

    goto/16 :goto_43

    :cond_cd
    if-eqz v1, :cond_ce

    .line 542
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 543
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_43

    .line 544
    :cond_ce
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_de

    .line 545
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_43

    .line 546
    :cond_cf
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x29

    if-le v2, v3, :cond_d0

    const/16 v3, 0x4d

    if-le v2, v3, :cond_d1

    :cond_d0
    const/16 v3, 0x57

    if-eq v2, v3, :cond_d1

    const/16 v3, 0x58

    if-ne v2, v3, :cond_de

    :cond_d1
    const/16 v2, 0xb0

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 547
    aget-byte v4, v1, v4

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 548
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v10, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 549
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_d2
    add-int/lit8 v2, p2, 0x3

    .line 550
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    const/4 v4, 0x2

    add-int/lit8 v4, p2, 0x2

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    shl-int/2addr v1, v9

    or-int/2addr v1, v2

    const/16 v2, 0x9a

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 551
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 552
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_d3
    const/16 v2, 0xd3

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 553
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 554
    aget-byte v4, v1, v4

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    and-int v4, v4, v17

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_d4
    add-int/lit8 v2, p2, 0x2

    .line 555
    aget-byte v2, v1, v2

    if-eq v2, v10, :cond_db

    const/4 v3, 0x2

    if-eq v2, v3, :cond_da

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d5

    goto/16 :goto_43

    :cond_d5
    add-int/lit8 v2, p2, 0x3

    .line 556
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x8

    shl-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v1, v4

    and-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x0

    or-int/2addr v2, v3

    const/16 v3, 0x9a

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 557
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x408

    new-array v4, v10, [I

    aput v2, v4, v9

    .line 558
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 559
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/16 v5, 0x9b

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 560
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    .line 561
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const-string v2, "persist.fyt.temperature"

    .line 562
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_d7

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_d6

    rsub-int v1, v1, 0x100

    mul-int/lit8 v1, v1, 0x12

    rsub-int v1, v1, 0x528

    goto :goto_3f

    :cond_d6
    mul-int/lit8 v1, v1, 0x12

    add-int/lit16 v1, v1, 0x528

    :goto_3f
    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/2addr v1, v14

    goto :goto_41

    :cond_d7
    and-int/lit16 v2, v1, 0x80

    if-lez v2, :cond_d8

    goto :goto_40

    :cond_d8
    move v9, v10

    :goto_40
    if-eqz v9, :cond_d9

    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_41

    :cond_d9
    const/16 v2, 0xff

    rsub-int v4, v1, 0xff

    add-int/2addr v4, v10

    mul-int/2addr v4, v13

    rsub-int v1, v4, 0x3e8

    .line 563
    :goto_41
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_43

    :cond_da
    const/16 v2, 0xff

    add-int/lit8 v3, p2, 0x3

    .line 564
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    shl-int/2addr v4, v9

    or-int/2addr v3, v4

    const/16 v4, 0x95

    new-array v5, v10, [I

    aput v3, v5, v9

    .line 565
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x6

    .line 566
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    shl-int/2addr v4, v9

    or-int/2addr v3, v4

    new-array v4, v10, [I

    aput v3, v4, v9

    const/16 v3, 0x96

    .line 567
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x8

    .line 568
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x9

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xa

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    shl-int/2addr v4, v9

    or-int/2addr v3, v4

    const/16 v4, 0x97

    new-array v5, v10, [I

    aput v3, v5, v9

    .line 569
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0xb

    .line 570
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xc

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xd

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    shl-int/2addr v4, v9

    or-int/2addr v3, v4

    const/16 v4, 0x98

    new-array v5, v10, [I

    aput v3, v5, v9

    .line 571
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0xe

    .line 572
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/lit8 v4, p2, 0xf

    aget-byte v4, v1, v4

    and-int/2addr v4, v2

    shl-int/2addr v4, v9

    or-int/2addr v3, v4

    const/16 v4, 0x99

    new-array v5, v10, [I

    aput v3, v5, v9

    .line 573
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x10

    .line 574
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x11

    aget-byte v1, v1, v4

    and-int/2addr v1, v2

    shl-int/2addr v1, v9

    or-int/2addr v1, v3

    const/16 v2, 0x61

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 575
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_43

    :cond_db
    add-int/lit8 v2, p2, 0x3

    .line 576
    aget-byte v2, v1, v2

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 577
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/4 v4, 0x5

    .line 578
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/4 v4, 0x4

    .line 579
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/4 v4, 0x3

    .line 580
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.syu.reversefrontdoor"

    .line 581
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_dc

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x0

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 582
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v10

    aput v2, v3, v9

    const/4 v4, 0x2

    .line 583
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_42

    :cond_dc
    const/4 v4, 0x2

    new-array v3, v10, [I

    shr-int/lit8 v5, v2, 0x0

    and-int/2addr v5, v10

    aput v5, v3, v9

    .line 584
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 585
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_42
    add-int/lit8 v2, p2, 0x6

    .line 586
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x7

    .line 587
    aget-byte v3, v1, v3

    const/16 v4, 0x87

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 588
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x88

    new-array v5, v10, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v10

    aput v6, v5, v9

    .line 589
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x89

    new-array v5, v10, [I

    const/4 v6, 0x5

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v5, v9

    .line 590
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 591
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 592
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 593
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 594
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 595
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 596
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v10, [I

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    aput v3, v4, v9

    .line 597
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 598
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x9

    .line 599
    aget-byte v1, v1, v3

    const/16 v3, 0x91

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x2

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 600
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 601
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x93

    new-array v4, v10, [I

    and-int/2addr v2, v10

    aput v2, v4, v9

    .line 602
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    const/4 v4, 0x5

    shr-int/2addr v1, v4

    const/4 v4, 0x3

    and-int/2addr v1, v4

    aput v1, v3, v9

    .line 603
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_43

    :cond_dd
    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x2

    .line 604
    aget-byte v4, v1, v3

    const/16 v6, 0xf

    and-int/2addr v4, v6

    aput v4, v2, v9

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v10, [I

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 605
    aget-byte v7, v1, v5

    and-int/2addr v7, v6

    aput v7, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v4, v10, [I

    .line 606
    aget-byte v3, v1, v3

    const/4 v7, 0x4

    shr-int/2addr v3, v7

    and-int/2addr v3, v6

    aput v3, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 607
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v2, v9

    const/16 v1, 0x20

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :cond_de
    :goto_43
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1b
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x4f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x8
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
        0xc9
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xc8
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x2
        0x7
        0x0
    .end array-data
.end method

.method public final U3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7d

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final declared-synchronized V3()V
    .locals 2

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

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/d0;->n0:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d0;->Q3(II)V
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

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/d0;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/d0;->U:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/d0;->X:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/d0;->Q:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lmodule/canbus/d0;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lw0/e;->c:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lo1/h;->c:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Lo1/h;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lo1/h;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/d0;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lmodule/canbus/d0;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 20
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lui/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized W3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/d0;->h0:I

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d0;->Q3(II)V
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

.method public final declared-synchronized X3()V
    .locals 2

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

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/d0;->m0:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d0;->Q3(II)V
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

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x104

    if-ge p2, p3, :cond_2

    const/16 p3, 0x69

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x86

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/16 p3, 0xf

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lmodule/canbus/d0;->i:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lmodule/canbus/d0;->h:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final Y3(I)V
    .locals 3

    .line 1
    sput p1, Lmodule/canbus/d0;->b0:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xae

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/d0;->j:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/d0;->b0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/d0;->j:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 11

    const/16 p3, 0x3ed

    const/4 p4, 0x6

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, p3, :cond_1a

    const/16 p3, 0x405

    const/16 v5, 0xe3

    const/4 v6, 0x5

    if-eq p1, p3, :cond_14

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_0
    if-eqz p2, :cond_1f

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1f

    new-array p1, v6, [I

    aput v5, p1, v4

    const/16 p3, 0x95

    aput p3, p1, v3

    aput v2, p1, v2

    .line 2
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_1
    if-eqz p2, :cond_1f

    .line 3
    array-length p1, p2

    if-lez p1, :cond_1f

    new-array p1, v6, [I

    aput v5, p1, v4

    const/16 p3, 0x93

    aput p3, p1, v3

    aput v2, p1, v2

    .line 4
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_2
    if-eqz p2, :cond_1f

    .line 5
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 6
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_5

    :pswitch_3
    if-eqz p2, :cond_1f

    .line 7
    array-length p1, p2

    if-le p1, v3, :cond_1f

    new-array p1, v6, [I

    aput v5, p1, v4

    const/16 p3, 0x94

    aput p3, p1, v3

    aput v2, p1, v2

    .line 8
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    .line 9
    :pswitch_4
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-array p1, v6, [I

    aput v5, p1, v4

    const/16 p3, -0x23

    aput p3, p1, v3

    aput v2, p1, v2

    .line 10
    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 11
    aget p1, p2, v4

    if-ne p1, v2, :cond_1f

    .line 12
    iget p1, p0, Lmodule/canbus/d0;->V:I

    add-int/2addr p1, v3

    iput p1, p0, Lmodule/canbus/d0;->V:I

    const/16 p2, 0xd5

    new-array p3, v3, [I

    aput p1, p3, v4

    .line 13
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 14
    iget p1, p0, Lmodule/canbus/d0;->V:I

    if-le p1, v2, :cond_1f

    .line 15
    iput v4, p0, Lmodule/canbus/d0;->V:I

    goto/16 :goto_5

    .line 16
    :pswitch_5
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-array p1, v6, [I

    aput v5, p1, v4

    const/16 p3, -0x21

    aput p3, p1, v3

    aput v2, p1, v2

    .line 17
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    .line 18
    :pswitch_6
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1f

    new-array p1, v6, [I

    aput v5, p1, v4

    const/16 p3, -0x7d

    aput p3, p1, v3

    aput v2, p1, v2

    .line 19
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_7
    if-eqz p2, :cond_1f

    .line 20
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 21
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lmodule/canbus/d0;->Y3(I)V

    goto/16 :goto_5

    :pswitch_8
    if-eqz p2, :cond_1f

    .line 22
    array-length p1, p2

    if-le p1, v3, :cond_1f

    new-array p1, p4, [B

    const/16 p3, 0x2e

    aput-byte p3, p1, v4

    const/16 p3, -0x7c

    aput-byte p3, p1, v3

    aput-byte v2, p1, v2

    .line 23
    aget p3, p2, v4

    int-to-byte p3, p3

    aput-byte p3, p1, v1

    aget p3, p2, v3

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    aput-byte v4, p1, v6

    invoke-static {p1}, Lmodule/canbus/d0;->d4([B)V

    .line 24
    iget-boolean p1, p0, Lmodule/canbus/d0;->f:Z

    if-nez p1, :cond_1f

    new-array p1, v6, [I

    aput v5, p1, v4

    const/16 p3, 0x84

    aput p3, p1, v3

    aput v2, p1, v2

    .line 25
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_9
    if-eqz p2, :cond_1f

    .line 26
    array-length p1, p2

    if-lez p1, :cond_1f

    new-array p1, v0, [I

    aput v5, p1, v4

    const/16 p3, 0x33

    aput p3, p1, v3

    aput v3, p1, v2

    .line 27
    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_a
    if-eqz p2, :cond_1f

    .line 28
    array-length p1, p2

    if-lez p1, :cond_1f

    const/16 p1, 0x14

    .line 29
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_b
    if-eqz p2, :cond_1f

    .line 30
    array-length p1, p2

    if-le p1, v3, :cond_1f

    .line 31
    aget p1, p2, v4

    aget p2, p2, v3

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->P3(II)V

    goto/16 :goto_5

    :pswitch_c
    if-eqz p2, :cond_1f

    .line 32
    array-length p1, p2

    if-lez p1, :cond_1f

    const/16 p1, 0x22

    .line 33
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_d
    if-eqz p2, :cond_1f

    .line 34
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 35
    aget p1, p2, v4

    const/16 p3, 0x41

    if-ne p1, p3, :cond_0

    new-array p1, v6, [I

    .line 36
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 37
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 38
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 39
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 40
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 41
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 42
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    .line 43
    :cond_0
    aget p1, p2, v4

    const/16 p2, 0x1f

    if-ne p1, p2, :cond_1f

    new-array p1, v6, [I

    .line 44
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :pswitch_e
    if-eqz p2, :cond_1f

    .line 45
    array-length p1, p2

    if-lez p1, :cond_1f

    const/16 p1, 0x23

    .line 46
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_f
    if-eqz p2, :cond_1f

    .line 47
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 48
    aget p1, p2, v4

    if-eqz p1, :cond_1

    .line 49
    aput v3, p2, v4

    :cond_1
    const/16 p1, 0x13

    .line 50
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_10
    if-eqz p2, :cond_1f

    .line 51
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 52
    aget p1, p2, v4

    if-eqz p1, :cond_2

    .line 53
    aput v3, p2, v4

    :cond_2
    const/16 p1, 0x12

    .line 54
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_11
    if-eqz p2, :cond_1f

    .line 55
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 56
    aget p1, p2, v4

    if-eqz p1, :cond_3

    .line 57
    aput v3, p2, v4

    :cond_3
    const/16 p1, 0x11

    .line 58
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_12
    if-eqz p2, :cond_1f

    .line 59
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 60
    aget p1, p2, v4

    if-eqz p1, :cond_4

    .line 61
    aput v3, p2, v4

    :cond_4
    const/16 p1, 0x10

    .line 62
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_13
    if-eqz p2, :cond_1f

    .line 63
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 64
    aget p1, p2, v4

    const/16 p2, 0xf

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    goto/16 :goto_5

    .line 65
    :cond_5
    invoke-virtual {p0, p2, v3}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    .line 66
    :cond_6
    invoke-virtual {p0, p2, v4}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_14
    if-eqz p2, :cond_1f

    .line 67
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 68
    aget p1, p2, v4

    if-eqz p1, :cond_7

    .line 69
    aput v3, p2, v4

    :cond_7
    const/16 p1, 0xe

    .line 70
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_15
    if-eqz p2, :cond_1f

    .line 71
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 72
    aget p1, p2, v4

    if-eqz p1, :cond_8

    .line 73
    aput v3, p2, v4

    :cond_8
    const/16 p1, 0xd

    .line 74
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_16
    if-eqz p2, :cond_1f

    .line 75
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 76
    aget p1, p2, v4

    if-gez p1, :cond_9

    .line 77
    aput v4, p2, v4

    goto :goto_0

    .line 78
    :cond_9
    aget p1, p2, v4

    if-le p1, v1, :cond_a

    .line 79
    aput v1, p2, v4

    :cond_a
    :goto_0
    const/16 p1, 0xc

    .line 80
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_17
    const/16 p1, 0xa

    .line 81
    invoke-virtual {p0, p1, v4}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_18
    const/16 p1, 0x9

    .line 82
    invoke-virtual {p0, p1, v4}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_19
    const/16 p1, 0x8

    .line 83
    invoke-virtual {p0, p1, v4}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_1a
    if-eqz p2, :cond_1f

    .line 84
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 85
    aget p1, p2, v4

    if-gez p1, :cond_b

    .line 86
    aput v4, p2, v4

    goto :goto_1

    .line 87
    :cond_b
    aget p1, p2, v4

    if-le p1, v1, :cond_c

    .line 88
    aput v1, p2, v4

    :cond_c
    :goto_1
    const/4 p1, 0x7

    .line 89
    aget p2, p2, v4

    invoke-virtual {p0, p1, p2}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_1b
    if-eqz p2, :cond_1f

    .line 90
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 91
    aget p1, p2, v4

    invoke-virtual {p0, v6, p1}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_1c
    if-eqz p2, :cond_1f

    .line 92
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 93
    aget p1, p2, v4

    if-eqz p1, :cond_d

    .line 94
    aput v3, p2, v4

    .line 95
    :cond_d
    aget p1, p2, v4

    invoke-virtual {p0, v0, p1}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_1d
    if-eqz p2, :cond_1f

    .line 96
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 97
    aget p1, p2, v4

    if-eqz p1, :cond_e

    .line 98
    aput v3, p2, v4

    .line 99
    :cond_e
    aget p1, p2, v4

    invoke-virtual {p0, v1, p1}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_1e
    if-eqz p2, :cond_1f

    .line 100
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 101
    aget p1, p2, v4

    if-eqz p1, :cond_f

    .line 102
    aput v3, p2, v4

    .line 103
    :cond_f
    aget p1, p2, v4

    invoke-virtual {p0, v2, p1}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_1f
    if-eqz p2, :cond_1f

    .line 104
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 105
    aget p1, p2, v4

    if-eqz p1, :cond_10

    .line 106
    aput v3, p2, v4

    .line 107
    :cond_10
    aget p1, p2, v4

    invoke-virtual {p0, v3, p1}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_20
    if-eqz p2, :cond_1f

    .line 108
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 109
    aget p1, p2, v4

    if-eqz p1, :cond_11

    .line 110
    aput v3, p2, v4

    .line 111
    :cond_11
    aget p1, p2, v4

    invoke-virtual {p0, v4, p1}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    :pswitch_21
    if-eqz p2, :cond_1f

    .line 112
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 113
    aget p1, p2, v4

    if-gez p1, :cond_12

    .line 114
    aput v4, p2, v4

    goto :goto_2

    .line 115
    :cond_12
    aget p1, p2, v4

    if-le p1, v0, :cond_13

    .line 116
    aput v0, p2, v4

    .line 117
    :cond_13
    :goto_2
    aget p1, p2, v4

    invoke-virtual {p0, p4, p1}, Lmodule/canbus/d0;->U3(II)V

    goto/16 :goto_5

    .line 118
    :cond_14
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 119
    aget p1, p2, v3

    mul-int/lit16 p1, p1, 0xff

    invoke-static {}, La/f;->w()I

    move-result p3

    div-int/2addr p1, p3

    .line 120
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p3

    sget-object v7, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "touch_x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, p2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 121
    aget p3, p2, v2

    mul-int/lit16 p3, p3, 0xff

    invoke-static {}, La/f;->i()I

    move-result v8

    div-int/2addr p3, v8

    .line 122
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "touch_y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, p2, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_15

    .line 124
    aget p3, p2, v2

    mul-int/lit16 p3, p3, 0xff

    div-int/lit16 p3, p3, 0x208

    .line 125
    invoke-static {}, La/f;->w()I

    move-result v7

    const/16 v8, 0x4b0

    if-ne v7, v8, :cond_15

    .line 126
    aget p3, p2, v2

    mul-int/lit16 p3, p3, 0xff

    div-int/lit16 p3, p3, 0x384

    .line 127
    :cond_15
    sget v7, Lk0/nt;->c:I

    const/16 v8, 0x4f

    const/16 v9, 0x85

    if-eq v7, v8, :cond_18

    const/16 v8, 0x50

    if-eq v7, v8, :cond_18

    const/16 v8, 0x51

    if-eq v7, v8, :cond_18

    const/16 v8, 0x52

    if-eq v7, v8, :cond_18

    const/16 v8, 0x53

    if-eq v7, v8, :cond_18

    const/16 v8, 0x54

    if-eq v7, v8, :cond_18

    const/16 v8, 0x55

    if-eq v7, v8, :cond_18

    const/16 v8, 0x56

    if-eq v7, v8, :cond_18

    const/16 v8, 0x59

    if-eq v7, v8, :cond_18

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_18

    const/16 v8, 0x5b

    if-eq v7, v8, :cond_18

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_18

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_18

    const/16 v8, 0x5e

    if-eq v7, v8, :cond_18

    const/16 v8, 0x5f

    if-eq v7, v8, :cond_18

    const/16 v8, 0x60

    if-eq v7, v8, :cond_18

    const/16 v8, 0x61

    if-eq v7, v8, :cond_18

    const/16 v8, 0x62

    if-eq v7, v8, :cond_18

    const/16 v8, 0x63

    if-eq v7, v8, :cond_18

    const/16 v8, 0x64

    if-eq v7, v8, :cond_18

    const/16 v8, 0x65

    if-eq v7, v8, :cond_18

    const/16 v8, 0x66

    if-eq v7, v8, :cond_18

    const/16 v8, 0x67

    if-eq v7, v8, :cond_18

    const/16 v8, 0x68

    if-ne v7, v8, :cond_16

    goto :goto_3

    .line 128
    :cond_16
    aget v7, p2, v4

    if-ne v7, v3, :cond_17

    new-array p2, p4, [I

    aput v5, p2, v4

    aput v9, p2, v3

    aput v1, p2, v2

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v1

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v0

    aput v4, p2, v6

    .line 129
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_5

    .line 130
    :cond_17
    aget p2, p2, v4

    if-nez p2, :cond_1f

    new-array p2, p4, [I

    aput v5, p2, v4

    aput v9, p2, v3

    aput v1, p2, v2

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v1

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v0

    aput v3, p2, v6

    .line 131
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_5

    .line 132
    :cond_18
    :goto_3
    aget v7, p2, v4

    if-ne v7, v3, :cond_19

    new-array p2, p4, [I

    aput v5, p2, v4

    aput v9, p2, v3

    aput v1, p2, v2

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v1

    and-int/lit16 p1, p3, 0xff

    aput p1, p2, v0

    aput v4, p2, v6

    .line 133
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_5

    .line 134
    :cond_19
    aget p2, p2, v4

    if-nez p2, :cond_1f

    new-array p2, p4, [I

    aput v5, p2, v4

    aput v9, p2, v3

    aput v1, p2, v2

    and-int/lit16 p1, p1, 0xff

    aput p1, p2, v1

    and-int/lit16 p1, p3, 0xff

    aput p1, p2, v0

    aput v3, p2, v6

    .line 135
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_5

    :cond_1a
    if-eqz p2, :cond_1f

    .line 136
    array-length p1, p2

    if-lez p1, :cond_1f

    .line 137
    sget p1, Lmodule/canbus/d0;->Z:I

    if-eqz p1, :cond_1e

    .line 138
    aget p1, p2, v4

    const/16 p3, 0x21

    if-nez p1, :cond_1b

    .line 139
    invoke-virtual {p0, p3, v3}, Lmodule/canbus/d0;->U3(II)V

    goto :goto_4

    .line 140
    :cond_1b
    aget p1, p2, v4

    if-ne p1, v3, :cond_1c

    .line 141
    invoke-virtual {p0, p3, v2}, Lmodule/canbus/d0;->U3(II)V

    goto :goto_4

    .line 142
    :cond_1c
    aget p1, p2, v4

    if-ne p1, v1, :cond_1d

    .line 143
    invoke-virtual {p0, p3, v1}, Lmodule/canbus/d0;->U3(II)V

    goto :goto_4

    .line 144
    :cond_1d
    aget p1, p2, v4

    if-ne p1, v2, :cond_1e

    .line 145
    invoke-virtual {p0, p3, p4}, Lmodule/canbus/d0;->U3(II)V

    .line 146
    :cond_1e
    :goto_4
    sget p1, Lmodule/canbus/d0;->a0:I

    if-eqz p1, :cond_1f

    .line 147
    aget p1, p2, v4

    if-ne p1, v0, :cond_1f

    const/16 p1, 0x20

    .line 148
    invoke-virtual {p0, p1, v4}, Lmodule/canbus/d0;->U3(II)V

    :cond_1f
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7d
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7d
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7d
        0x4
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7d
        0x6
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7d
        0x9
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7d
        0xa
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x70
        0x2
        0x7d
        0xd
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x70
        0x2
        0x1f
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
    sget-object v0, Lmodule/canbus/d0;->o0:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/d0;->d0:I

    :cond_0
    return-void
.end method

.method public final declared-synchronized Z3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/d0;->i0:I

    const/4 v1, 0x6

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d0;->Q3(II)V
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

.method public final a3()V
    .locals 13

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/16 v2, 0x92

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x4

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xa

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eq v5, v2, :cond_4

    if-eq v5, v7, :cond_3

    if-eq v5, v8, :cond_2

    const/16 v2, 0xd

    if-eq v5, v2, :cond_1

    const/16 v2, 0x11

    if-eq v5, v2, :cond_0

    packed-switch v5, :pswitch_data_0

    aput v3, v1, v9

    goto/16 :goto_2

    :pswitch_0
    aput v6, v1, v9

    goto/16 :goto_2

    :pswitch_1
    aput v4, v1, v9

    .line 2
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    goto/16 :goto_2

    :pswitch_2
    aput v7, v1, v9

    .line 3
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    goto :goto_2

    :cond_0
    const/16 v2, 0xb

    aput v2, v1, v9

    goto :goto_2

    :cond_1
    const/16 v2, 0x9

    aput v2, v1, v9

    goto :goto_2

    :cond_2
    aput v0, v1, v9

    goto :goto_2

    :cond_3
    aput v8, v1, v9

    .line 4
    sget v2, Lh0/c;->J:I

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    goto :goto_2

    .line 5
    :cond_4
    sget v5, Lw0/d;->i:I

    .line 6
    sget v10, Lw0/d;->j:I

    mul-int/lit16 v10, v10, 0xff

    .line 7
    sget v11, Lw0/d;->h:I

    const/high16 v12, 0x10000

    if-ne v11, v12, :cond_5

    aput v9, v1, v9

    goto :goto_0

    :cond_5
    const v12, 0x10001

    if-ne v11, v12, :cond_6

    aput v9, v1, v9

    goto :goto_0

    :cond_6
    const v12, 0x10002

    if-ne v11, v12, :cond_7

    aput v9, v1, v9

    goto :goto_0

    :cond_7
    if-nez v11, :cond_8

    aput v2, v1, v9

    goto :goto_0

    :cond_8
    if-ne v11, v2, :cond_9

    aput v2, v1, v9

    .line 8
    :cond_9
    :goto_0
    rem-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_a

    if-eqz v10, :cond_a

    aput v0, v1, v7

    goto :goto_1

    :cond_a
    aput v2, v1, v7

    :goto_1
    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v8

    .line 9
    :goto_2
    sget v2, Lk0/nt;->c:I

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_b

    const/16 v4, 0x50

    if-eq v2, v4, :cond_b

    const/16 v4, 0x51

    if-eq v2, v4, :cond_b

    const/16 v4, 0x52

    if-eq v2, v4, :cond_b

    const/16 v4, 0x53

    if-eq v2, v4, :cond_b

    const/16 v4, 0x54

    if-eq v2, v4, :cond_b

    const/16 v4, 0x55

    if-eq v2, v4, :cond_b

    const/16 v4, 0x56

    if-eq v2, v4, :cond_b

    const/16 v4, 0x59

    if-eq v2, v4, :cond_b

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_b

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_b

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_b

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_b

    const/16 v4, 0x5e

    if-eq v2, v4, :cond_b

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_b

    const/16 v4, 0x60

    if-eq v2, v4, :cond_b

    const/16 v4, 0x61

    if-eq v2, v4, :cond_b

    const/16 v4, 0x62

    if-eq v2, v4, :cond_b

    const/16 v4, 0x63

    if-eq v2, v4, :cond_b

    const/16 v4, 0x64

    if-eq v2, v4, :cond_b

    const/16 v4, 0x65

    if-eq v2, v4, :cond_b

    const/16 v4, 0x66

    if-eq v2, v4, :cond_b

    const/16 v4, 0x67

    if-eq v2, v4, :cond_b

    const/16 v4, 0x68

    if-ne v2, v4, :cond_d

    :cond_b
    const-string v2, "sys.carlink.type"

    .line 10
    invoke-static {v2, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_d

    const-string v2, "com.syu.carlink"

    .line 11
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget v2, Lu0/b;->D:I

    if-eq v2, v6, :cond_c

    const/16 v4, 0xc

    if-ne v2, v4, :cond_d

    :cond_c
    const/16 v2, 0x8

    aput v2, v1, v9

    :cond_d
    const/4 v2, 0x7

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_e

    add-int/lit8 v4, v3, 0x1

    .line 12
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 13
    :cond_e
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a4()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/d0;->j0:I

    const/4 v1, 0x5

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/d0;->Q3(II)V
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
    iget v1, p0, Lmodule/canbus/d0;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lmodule/canbus/d0;->c:I

    .line 5
    iput v0, p0, Lmodule/canbus/d0;->d:I

    .line 6
    iput v0, p0, Lmodule/canbus/d0;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lmodule/canbus/d0;->b:[B

    iget v2, p0, Lmodule/canbus/d0;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lmodule/canbus/d0;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lmodule/canbus/d0;->c:I

    .line 9
    iget p1, p0, Lmodule/canbus/d0;->e:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lmodule/canbus/d0;->b:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lmodule/canbus/d0;->e:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lmodule/canbus/d0;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lmodule/canbus/d0;->b:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lmodule/canbus/d0;->T3([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lmodule/canbus/d0;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lmodule/canbus/d0;->d:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lmodule/canbus/d0;->d:I

    .line 18
    :goto_1
    iput v0, p0, Lmodule/canbus/d0;->e:I

    .line 19
    :cond_6
    iget p1, p0, Lmodule/canbus/d0;->c:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lmodule/canbus/d0;->d:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lmodule/canbus/d0;->b:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lmodule/canbus/d0;->e:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lmodule/canbus/d0;->e:I

    .line 23
    iget v6, p0, Lmodule/canbus/d0;->c:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lmodule/canbus/d0;->e:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lmodule/canbus/d0;->e:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lmodule/canbus/d0;->b:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lmodule/canbus/d0;->b:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lmodule/canbus/d0;->d:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lmodule/canbus/d0;->T3([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lmodule/canbus/d0;->e:I

    iput v1, p0, Lmodule/canbus/d0;->d:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lmodule/canbus/d0;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lmodule/canbus/d0;->d:I

    .line 33
    :goto_4
    iput v0, p0, Lmodule/canbus/d0;->e:I

    .line 34
    :cond_a
    iget v1, p0, Lmodule/canbus/d0;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lmodule/canbus/d0;->d:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lmodule/canbus/d0;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lmodule/canbus/d0;->c:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lmodule/canbus/d0;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lmodule/canbus/d0;->d:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final b3(I)I
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

.method public final declared-synchronized b4()V
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
    sget v0, Lmodule/canbus/d0;->c0:I

    .line 3
    sget v1, Lmodule/canbus/d0;->d0:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, 0x7

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/d0;->Q3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c4(ILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/16 v2, -0x3b

    const/16 v3, -0x1d

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p2, :cond_0

    new-array p2, v5, [I

    aput v3, p2, v4

    aput v2, p2, v7

    aput v6, p2, v6

    int-to-byte p1, p1

    aput p1, p2, v1

    aput v7, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 3
    array-length v9, v8

    add-int/2addr v9, v5

    new-array v9, v9, [I

    .line 4
    aput v3, v9, v4

    .line 5
    aput v2, v9, v7

    .line 6
    array-length v2, v8

    add-int/2addr v2, v6

    int-to-byte v2, v2

    aput v2, v9, v6

    int-to-byte p1, p1

    .line 7
    aput p1, v9, v1

    .line 8
    aput v7, v9, v0

    .line 9
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v5, v4

    .line 10
    aget-char v0, v8, v4

    int-to-byte v0, v0

    aput v0, v9, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v9}, Lz/k;->s([I)V

    :goto_1
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/d0;->r0:Lo1/f;

    new-instance v1, Lmodule/canbus/d0$q;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d0$q;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/d0$q;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d0$q;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/d0$q;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d0$q;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 4
    new-instance v1, Lmodule/canbus/d0$q;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d0$q;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 5
    new-instance v1, Lmodule/canbus/d0$q;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d0$q;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 6
    new-instance v1, Lmodule/canbus/d0$q;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v3}, Lmodule/canbus/d0$q;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
