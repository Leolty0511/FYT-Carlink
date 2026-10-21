.class public Lmodule/canbus/c;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/c$u;
    }
.end annotation


# static fields
.field public static A0:I

.field public static B0:I

.field public static final C0:[I

.field public static final D0:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/c$u;",
            ">;"
        }
    .end annotation
.end field

.field public static w0:I

.field public static x0:I

.field public static y0:I

.field public static z0:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Lo1/g0;

.field public final C:I

.field public final D:I

.field public final E:I

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public I:I

.field public J:B

.field public K:Ljava/lang/Runnable;

.field public L:Ljava/lang/Runnable;

.field public M:Ljava/lang/Runnable;

.field public N:I

.field public O:Ljava/lang/Runnable;

.field public P:I

.field public Q:Ljava/lang/Runnable;

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

.field public b:I

.field public b0:I

.field public c:I

.field public final c0:Ljava/lang/Runnable;

.field public d:[[I

.field public d0:F

.field public e:[[I

.field public e0:I

.field public f:I

.field public f0:I

.field public g:I

.field public g0:Ljava/lang/Runnable;

.field public h:[[I

.field public h0:Ljava/lang/Runnable;

.field public i:I

.field public i0:Z

.field public j:I

.field public j0:Ljava/lang/Runnable;

.field public k:[[I

.field public k0:I

.field public l:I

.field public l0:I

.field public m:I

.field public m0:Z

.field public n:Z

.field public n0:I

.field public o:I

.field public o0:Ljava/lang/Runnable;

.field public final p:[B

.field public p0:Ljava/lang/Runnable;

.field public q:I

.field public q0:Ljava/lang/Runnable;

.field public r:I

.field public r0:I

.field public s:I

.field public s0:Ljava/lang/Runnable;

.field public t:I

.field public t0:I

.field public u:Z

.field public u0:Ljava/lang/Runnable;

.field public v:I

.field public v0:I

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:B

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/c;->z0:[I

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/c;->C0:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/c;->D0:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
        0xb
        0xc
        0x9
        0x8
        0xa
        0xa
        0xa
        0x3
        0x7
        0x5
        0x5
        0x3
        0x3
        0x7
        0x3
        0x6
        0x6
        0x8
        0x3
    .end array-data

    :array_1
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
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lmodule/canbus/c;->c:I

    const/16 v2, 0x22

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

    const/16 v15, 0x13

    aput-object v4, v2, v15

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

    iput-object v2, v0, Lmodule/canbus/c;->d:[[I

    const/16 v2, 0x1b

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 4
    fill-array-data v4, :array_22

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_23

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_24

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_25

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_26

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_27

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_28

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_29

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_2a

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    const/16 v22, 0xc

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    const/16 v25, 0x16

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    const/16 v25, 0x17

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    const/16 v25, 0x18

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3b

    const/16 v25, 0x19

    aput-object v4, v2, v25

    new-array v4, v3, [I

    fill-array-data v4, :array_3c

    const/16 v25, 0x1a

    aput-object v4, v2, v25

    iput-object v2, v0, Lmodule/canbus/c;->e:[[I

    .line 5
    iput v1, v0, Lmodule/canbus/c;->g:I

    new-array v2, v15, [[I

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_3d

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_3e

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_3f

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_40

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_41

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_42

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_43

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_44

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_45

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_46

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_47

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_48

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_49

    const/16 v22, 0xc

    aput-object v4, v2, v22

    new-array v4, v3, [I

    fill-array-data v4, :array_4a

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_4b

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_4c

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_4d

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_4e

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_4f

    aput-object v4, v2, v21

    iput-object v2, v0, Lmodule/canbus/c;->h:[[I

    .line 7
    iput v1, v0, Lmodule/canbus/c;->j:I

    const/16 v2, 0x17

    new-array v2, v2, [[I

    new-array v4, v3, [I

    .line 8
    fill-array-data v4, :array_50

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_51

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_52

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_53

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_54

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_55

    aput-object v4, v2, v8

    new-array v4, v3, [I

    fill-array-data v4, :array_56

    aput-object v4, v2, v9

    new-array v4, v3, [I

    fill-array-data v4, :array_57

    aput-object v4, v2, v10

    new-array v4, v3, [I

    fill-array-data v4, :array_58

    aput-object v4, v2, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_59

    aput-object v4, v2, v12

    new-array v4, v3, [I

    fill-array-data v4, :array_5a

    aput-object v4, v2, v13

    new-array v4, v3, [I

    fill-array-data v4, :array_5b

    aput-object v4, v2, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_5c

    const/16 v7, 0xc

    aput-object v4, v2, v7

    new-array v4, v3, [I

    fill-array-data v4, :array_5d

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_5e

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_5f

    aput-object v4, v2, v18

    new-array v4, v3, [I

    fill-array-data v4, :array_60

    aput-object v4, v2, v19

    new-array v4, v3, [I

    fill-array-data v4, :array_61

    aput-object v4, v2, v20

    new-array v4, v3, [I

    fill-array-data v4, :array_62

    aput-object v4, v2, v21

    new-array v4, v3, [I

    fill-array-data v4, :array_63

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_64

    aput-object v4, v2, v23

    new-array v4, v3, [I

    fill-array-data v4, :array_65

    aput-object v4, v2, v24

    new-array v4, v3, [I

    fill-array-data v4, :array_66

    const/16 v7, 0x16

    aput-object v4, v2, v7

    iput-object v2, v0, Lmodule/canbus/c;->k:[[I

    .line 9
    iput v1, v0, Lmodule/canbus/c;->l:I

    const/4 v2, -0x1

    .line 10
    iput v2, v0, Lmodule/canbus/c;->m:I

    .line 11
    iput-boolean v1, v0, Lmodule/canbus/c;->n:Z

    .line 12
    iput v1, v0, Lmodule/canbus/c;->o:I

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 13
    iput-object v2, v0, Lmodule/canbus/c;->p:[B

    .line 14
    iput v1, v0, Lmodule/canbus/c;->q:I

    .line 15
    iput v1, v0, Lmodule/canbus/c;->r:I

    .line 16
    iput v1, v0, Lmodule/canbus/c;->s:I

    .line 17
    iput v1, v0, Lmodule/canbus/c;->t:I

    .line 18
    iput-boolean v1, v0, Lmodule/canbus/c;->u:Z

    .line 19
    iput v1, v0, Lmodule/canbus/c;->v:I

    .line 20
    new-instance v2, Lmodule/canbus/c$k;

    invoke-direct {v2, v0}, Lmodule/canbus/c$k;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->w:Ljava/lang/Runnable;

    .line 21
    new-instance v2, Lmodule/canbus/c$m;

    invoke-direct {v2, v0}, Lmodule/canbus/c$m;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->x:Ljava/lang/Runnable;

    .line 22
    iput-byte v1, v0, Lmodule/canbus/c;->y:B

    .line 23
    new-instance v2, Lmodule/canbus/c$n;

    invoke-direct {v2, v0}, Lmodule/canbus/c$n;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->z:Ljava/lang/Runnable;

    .line 24
    new-instance v2, Lmodule/canbus/c$o;

    invoke-direct {v2, v0}, Lmodule/canbus/c$o;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->A:Ljava/lang/Runnable;

    .line 25
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x20

    invoke-direct {v2, v4, v7}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lmodule/canbus/c;->B:Lo1/g0;

    .line 26
    iput v5, v0, Lmodule/canbus/c;->C:I

    .line 27
    iput v3, v0, Lmodule/canbus/c;->D:I

    .line 28
    iput v6, v0, Lmodule/canbus/c;->E:I

    .line 29
    iput v1, v0, Lmodule/canbus/c;->F:I

    .line 30
    new-instance v2, Lmodule/canbus/c$p;

    invoke-direct {v2, v0}, Lmodule/canbus/c$p;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->G:Ljava/lang/Runnable;

    .line 31
    new-instance v2, Lmodule/canbus/c$q;

    invoke-direct {v2, v0}, Lmodule/canbus/c$q;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->H:Ljava/lang/Runnable;

    .line 32
    iput v1, v0, Lmodule/canbus/c;->I:I

    .line 33
    iput-byte v8, v0, Lmodule/canbus/c;->J:B

    .line 34
    new-instance v2, Lmodule/canbus/c$r;

    invoke-direct {v2, v0}, Lmodule/canbus/c$r;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->K:Ljava/lang/Runnable;

    .line 35
    new-instance v2, Lmodule/canbus/c$s;

    invoke-direct {v2, v0}, Lmodule/canbus/c$s;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->L:Ljava/lang/Runnable;

    .line 36
    new-instance v2, Lmodule/canbus/c$t;

    invoke-direct {v2, v0}, Lmodule/canbus/c$t;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->M:Ljava/lang/Runnable;

    .line 37
    iput v1, v0, Lmodule/canbus/c;->N:I

    .line 38
    new-instance v2, Lmodule/canbus/c$a;

    invoke-direct {v2, v0}, Lmodule/canbus/c$a;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->O:Ljava/lang/Runnable;

    .line 39
    iput v1, v0, Lmodule/canbus/c;->P:I

    .line 40
    new-instance v2, Lmodule/canbus/c$b;

    invoke-direct {v2, v0}, Lmodule/canbus/c$b;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->Q:Ljava/lang/Runnable;

    const-string v2, ""

    .line 41
    iput-object v2, v0, Lmodule/canbus/c;->R:Ljava/lang/String;

    const-string v2, ""

    .line 42
    iput-object v2, v0, Lmodule/canbus/c;->S:Ljava/lang/String;

    .line 43
    iput v1, v0, Lmodule/canbus/c;->T:I

    .line 44
    iput v1, v0, Lmodule/canbus/c;->U:I

    .line 45
    iput v1, v0, Lmodule/canbus/c;->V:I

    .line 46
    iput v1, v0, Lmodule/canbus/c;->W:I

    .line 47
    iput v1, v0, Lmodule/canbus/c;->X:I

    .line 48
    iput v1, v0, Lmodule/canbus/c;->Y:I

    .line 49
    iput v1, v0, Lmodule/canbus/c;->Z:I

    .line 50
    iput v5, v0, Lmodule/canbus/c;->a0:I

    const/16 v2, 0xff

    .line 51
    iput v2, v0, Lmodule/canbus/c;->b0:I

    .line 52
    new-instance v2, Lmodule/canbus/c$c;

    invoke-direct {v2, v0}, Lmodule/canbus/c$c;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->c0:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 53
    iput v2, v0, Lmodule/canbus/c;->d0:F

    const/16 v2, 0xff

    .line 54
    iput v2, v0, Lmodule/canbus/c;->e0:I

    .line 55
    iput v2, v0, Lmodule/canbus/c;->f0:I

    .line 56
    new-instance v2, Lmodule/canbus/c$d;

    invoke-direct {v2, v0}, Lmodule/canbus/c$d;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->g0:Ljava/lang/Runnable;

    .line 57
    new-instance v2, Lmodule/canbus/c$e;

    invoke-direct {v2, v0}, Lmodule/canbus/c$e;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->h0:Ljava/lang/Runnable;

    .line 58
    iput-boolean v1, v0, Lmodule/canbus/c;->i0:Z

    .line 59
    new-instance v2, Lmodule/canbus/c$f;

    invoke-direct {v2, v0}, Lmodule/canbus/c$f;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->j0:Ljava/lang/Runnable;

    .line 60
    iput v1, v0, Lmodule/canbus/c;->k0:I

    .line 61
    iput v1, v0, Lmodule/canbus/c;->l0:I

    .line 62
    iput-boolean v1, v0, Lmodule/canbus/c;->m0:Z

    .line 63
    iput v1, v0, Lmodule/canbus/c;->n0:I

    .line 64
    new-instance v2, Lmodule/canbus/c$g;

    invoke-direct {v2, v0}, Lmodule/canbus/c$g;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->o0:Ljava/lang/Runnable;

    .line 65
    new-instance v2, Lmodule/canbus/c$h;

    invoke-direct {v2, v0}, Lmodule/canbus/c$h;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->p0:Ljava/lang/Runnable;

    .line 66
    new-instance v2, Lmodule/canbus/c$i;

    invoke-direct {v2, v0}, Lmodule/canbus/c$i;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->q0:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 67
    iput v2, v0, Lmodule/canbus/c;->r0:I

    .line 68
    new-instance v2, Lmodule/canbus/c$j;

    invoke-direct {v2, v0}, Lmodule/canbus/c$j;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->s0:Ljava/lang/Runnable;

    const/16 v2, 0x64

    .line 69
    iput v2, v0, Lmodule/canbus/c;->t0:I

    .line 70
    new-instance v2, Lmodule/canbus/c$l;

    invoke-direct {v2, v0}, Lmodule/canbus/c$l;-><init>(Lmodule/canbus/c;)V

    iput-object v2, v0, Lmodule/canbus/c;->u0:Ljava/lang/Runnable;

    .line 71
    iput v1, v0, Lmodule/canbus/c;->v0:I

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
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x10
    .end array-data

    :array_c
    .array-data 4
        0x11
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x12
        0x6
    .end array-data

    :array_e
    .array-data 4
        0x13
        0x10
    .end array-data

    :array_f
    .array-data 4
        0x14
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x15
        0x36
    .end array-data

    :array_11
    .array-data 4
        0x16
        0x9
    .end array-data

    :array_12
    .array-data 4
        0x17
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x18
        0x18
    .end array-data

    :array_14
    .array-data 4
        0x19
        0x12
    .end array-data

    :array_15
    .array-data 4
        0x1a
        0x1a
    .end array-data

    :array_16
    .array-data 4
        0x1b
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x1c
        0x26
    .end array-data

    :array_18
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_19
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_1b
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_1c
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_1d
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_1e
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_1f
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_20
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_21
    .array-data 4
        0x29
        0x30
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
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_26
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_27
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_28
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_29
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_2a
    .array-data 4
        0x9
        0x1d
    .end array-data

    :array_2b
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_2d
    .array-data 4
        0xc
        0x10
    .end array-data

    :array_2e
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x11
        0x5
    .end array-data

    :array_30
    .array-data 4
        0x12
        0x18
    .end array-data

    :array_31
    .array-data 4
        0x13
        0x36
    .end array-data

    :array_32
    .array-data 4
        0x14
        0x19
    .end array-data

    :array_33
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_34
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_35
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_36
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_37
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_38
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_39
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_3a
    .array-data 4
        0x27
        0x2e
    .end array-data

    :array_3b
    .array-data 4
        0x28
        0x2f
    .end array-data

    :array_3c
    .array-data 4
        0x29
        0x30
    .end array-data

    :array_3d
    .array-data 4
        0x1
        0x36
    .end array-data

    :array_3e
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_3f
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_40
    .array-data 4
        0x4
        0x6
    .end array-data

    :array_41
    .array-data 4
        0x5
        0x37
    .end array-data

    :array_42
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_43
    .array-data 4
        0x7
        0x1f
    .end array-data

    :array_44
    .array-data 4
        0x8
        0x1d
    .end array-data

    :array_45
    .array-data 4
        0x9
        0x22
    .end array-data

    :array_46
    .array-data 4
        0xa
        0x23
    .end array-data

    :array_47
    .array-data 4
        0xb
        0x35
    .end array-data

    :array_48
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_49
    .array-data 4
        0xd
        0x1
    .end array-data

    :array_4a
    .array-data 4
        0x11
        0x1e
    .end array-data

    :array_4b
    .array-data 4
        0x12
        0x1f
    .end array-data

    :array_4c
    .array-data 4
        0x13
        0x20
    .end array-data

    :array_4d
    .array-data 4
        0x14
        0x22
    .end array-data

    :array_4e
    .array-data 4
        0x15
        0x23
    .end array-data

    :array_4f
    .array-data 4
        0x16
        0x21
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x1d
    .end array-data

    :array_51
    .array-data 4
        0x2
        0x36
    .end array-data

    :array_52
    .array-data 4
        0x3
        0x9
    .end array-data

    :array_53
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_54
    .array-data 4
        0x5
        0x1
    .end array-data

    :array_55
    .array-data 4
        0x6
        0x3a
    .end array-data

    :array_56
    .array-data 4
        0x7
        0x3f
    .end array-data

    :array_57
    .array-data 4
        0x8
        0x37
    .end array-data

    :array_58
    .array-data 4
        0x9
        -0x1
    .end array-data

    :array_59
    .array-data 4
        0xa
        0x22
    .end array-data

    :array_5a
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_5b
    .array-data 4
        0xc
        0x3
    .end array-data

    :array_5c
    .array-data 4
        0xd
        0x21
    .end array-data

    :array_5d
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_5e
    .array-data 4
        0xf
        0x6
    .end array-data

    :array_5f
    .array-data 4
        0x10
        0x4
    .end array-data

    :array_60
    .array-data 4
        0x18
        0x18
    .end array-data

    :array_61
    .array-data 4
        0x38
        0xc
    .end array-data

    :array_62
    .array-data 4
        0x40
        0x7
    .end array-data

    :array_63
    .array-data 4
        0x41
        0x8
    .end array-data

    :array_64
    .array-data 4
        0x50
        0x1e
    .end array-data

    :array_65
    .array-data 4
        0x51
        0x1f
    .end array-data

    :array_66
    .array-data 4
        0x71
        0x9
    .end array-data
.end method

.method public static A3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/c;->D0:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/c$u;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/c$u;->a(I)V

    :cond_0
    return-void
.end method

.method public static G3([B)V
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

.method public static synthetic access$1700()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c;->A0:I

    return v0
.end method

.method public static synthetic e3(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c;->a3()V

    return-void
.end method

.method public static synthetic f3(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c;->b3()V

    return-void
.end method

.method public static synthetic g3(Lmodule/canbus/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c;->d0:F

    return p0
.end method

.method public static synthetic h3(Lmodule/canbus/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/c;->d0:F

    return p1
.end method

.method public static synthetic i3(Lmodule/canbus/c;F)F
    .locals 1

    .line 1
    iget v0, p0, Lmodule/canbus/c;->d0:F

    rem-float/2addr v0, p1

    iput v0, p0, Lmodule/canbus/c;->d0:F

    return v0
.end method

.method public static synthetic j3(Lmodule/canbus/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c;->f0:I

    return p0
.end method

.method public static synthetic k3(Lmodule/canbus/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/c;->f0:I

    return p1
.end method

.method public static synthetic l3(Lmodule/canbus/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/c;->p0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic m3(Lmodule/canbus/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c;->t0:I

    return p0
.end method

.method public static synthetic n3(Lmodule/canbus/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c;->v0:I

    return p0
.end method

.method public static synthetic o3(Lmodule/canbus/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/c;->v0:I

    return p1
.end method

.method public static synthetic p3(Lmodule/canbus/c;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/c;->v0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/c;->v0:I

    return v0
.end method

.method public static synthetic q3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/c;->B0:I

    return v0
.end method

.method public static synthetic r3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/c;->B0:I

    return p0
.end method

.method public static synthetic s3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/c;->C0:[I

    return-object v0
.end method

.method public static synthetic t3(Lmodule/canbus/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/c;->z:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic u3(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c;->F3()V

    return-void
.end method

.method public static synthetic v3(Lmodule/canbus/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmodule/canbus/c;->m0:Z

    return p1
.end method

.method public static synthetic w3(Lmodule/canbus/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/c;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic x3(Lmodule/canbus/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/c;->e0:I

    return p0
.end method

.method public static synthetic y3(Lmodule/canbus/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/c;->e0:I

    return p1
.end method

.method public static synthetic z3(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/c;->d3()V

    return-void
.end method


# virtual methods
.method public final B3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk0/lt;->R2([I)V

    return-void
.end method

.method public final C3(I)V
    .locals 4

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
    sput p1, Lmodule/canbus/c;->x0:I

    const/16 v2, 0x77

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v2, 0xe3

    aput v2, p1, v0

    const/16 v2, -0x3a

    aput v2, p1, v1

    const/4 v1, 0x2

    aput v1, p1, v1

    const/4 v2, 0x3

    aput v1, p1, v2

    const/4 v2, 0x4

    .line 3
    sget v3, Lmodule/canbus/c;->x0:I

    aput v3, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/c;->x0:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final D3(I)V
    .locals 4

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
    sput p1, Lmodule/canbus/c;->w0:I

    const/16 v2, 0x76

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v2, 0xe3

    aput v2, p1, v0

    const/16 v2, -0x3a

    aput v2, p1, v1

    const/4 v2, 0x2

    aput v2, p1, v2

    const/4 v2, 0x3

    aput v0, p1, v2

    const/4 v2, 0x4

    .line 3
    sget v3, Lmodule/canbus/c;->w0:I

    aput v3, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/c;->w0:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final E3(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lmodule/canbus/c;->y0:I

    const/16 v2, 0x78

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput p1, v4, v0

    .line 2
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v2, 0xe3

    aput v2, p1, v0

    const/16 v2, -0x3a

    aput v2, p1, v3

    const/4 v2, 0x2

    aput v2, p1, v2

    aput v1, p1, v1

    const/4 v2, 0x4

    .line 3
    sget v3, Lmodule/canbus/c;->y0:I

    aput v3, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/c;->y0:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final declared-synchronized F3()V
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
    sget v0, Lmodule/canbus/c;->B0:I

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/c;->A3(II)V
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

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 10

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x1

    const/16 v2, 0x51

    if-eq v0, v2, :cond_0

    const/16 v2, 0x54

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/c;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lmodule/canbus/c;->j0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/c;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->g0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lmodule/canbus/c;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 11
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget v2, Lk0/nt;->c:I

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    const/16 v7, 0x23

    if-eq v2, v7, :cond_1

    const/16 v7, 0x24

    if-eq v2, v7, :cond_1

    .line 13
    iget-object v7, p0, Lk0/lt;->a:Lk0/mt;

    iput v6, v7, Lk0/mt;->q:I

    goto :goto_0

    .line 14
    :cond_1
    iget-object v7, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v7, Lk0/mt;->r:I

    goto :goto_0

    .line 15
    :cond_2
    iget-object v7, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v7, Lk0/mt;->q:I

    :goto_0
    const/4 v7, 0x2

    const-string v8, "com.syu.canbus"

    if-eq v2, v7, :cond_a

    const/4 v9, 0x5

    if-eq v2, v5, :cond_9

    if-eq v2, v4, :cond_8

    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_9

    const/16 v0, 0x29

    if-eq v2, v0, :cond_7

    const/16 v0, 0x2a

    if-eq v2, v0, :cond_6

    const/16 v0, 0x2c

    if-eq v2, v0, :cond_5

    const/16 v0, 0x2d

    if-eq v2, v0, :cond_5

    const/16 v0, 0x3f

    if-eq v2, v0, :cond_3

    const/16 v0, 0x40

    if-eq v2, v0, :cond_5

    const/16 v0, 0x43

    if-eq v2, v0, :cond_3

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v1, v0, Lk0/mt;->e:I

    .line 18
    iput v1, v0, Lk0/mt;->f:I

    .line 19
    iput v1, v0, Lk0/mt;->g:I

    .line 20
    iput v6, v0, Lk0/mt;->b:I

    .line 21
    iput v6, v0, Lk0/mt;->c:I

    .line 22
    iput v6, v0, Lk0/mt;->d:I

    goto/16 :goto_2

    .line 23
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 24
    iput v1, v0, Lk0/mt;->e:I

    .line 25
    iput v1, v0, Lk0/mt;->f:I

    .line 26
    iput v1, v0, Lk0/mt;->g:I

    .line 27
    iput v1, v0, Lk0/mt;->l:I

    .line 28
    iput v6, v0, Lk0/mt;->b:I

    .line 29
    iput v6, v0, Lk0/mt;->c:I

    .line 30
    iput v6, v0, Lk0/mt;->d:I

    .line 31
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 33
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0, v1, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->D3(I)V

    .line 34
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0, v5, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->E3(I)V

    goto/16 :goto_2

    .line 35
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 36
    iput v1, v0, Lk0/mt;->e:I

    .line 37
    iput v1, v0, Lk0/mt;->f:I

    .line 38
    iput v1, v0, Lk0/mt;->g:I

    .line 39
    iput v6, v0, Lk0/mt;->b:I

    .line 40
    iput v6, v0, Lk0/mt;->c:I

    .line 41
    iput v6, v0, Lk0/mt;->d:I

    .line 42
    iget-object v0, p0, Lmodule/canbus/c;->M:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 43
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x0

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 44
    iput v1, v0, Lk0/mt;->e:I

    .line 45
    iput v1, v0, Lk0/mt;->f:I

    .line 46
    iput v1, v0, Lk0/mt;->g:I

    .line 47
    iput v6, v0, Lk0/mt;->b:I

    .line 48
    iput v6, v0, Lk0/mt;->c:I

    .line 49
    iput v6, v0, Lk0/mt;->d:I

    goto/16 :goto_2

    .line 50
    :cond_3
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 51
    iput v1, v0, Lk0/mt;->e:I

    .line 52
    iput v1, v0, Lk0/mt;->f:I

    .line 53
    iput v1, v0, Lk0/mt;->g:I

    .line 54
    iput v6, v0, Lk0/mt;->b:I

    .line 55
    iput v6, v0, Lk0/mt;->c:I

    .line 56
    iput v6, v0, Lk0/mt;->d:I

    .line 57
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    .line 58
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->l:I

    goto :goto_1

    .line 59
    :cond_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v6, v0, Lk0/mt;->l:I

    .line 60
    :goto_1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 61
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 62
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0, v1, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->D3(I)V

    .line 63
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0, v7, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->C3(I)V

    .line 64
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0, v5, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->E3(I)V

    goto/16 :goto_2

    .line 65
    :cond_5
    :pswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 66
    iput v1, v0, Lk0/mt;->e:I

    .line 67
    iput v1, v0, Lk0/mt;->f:I

    .line 68
    iput v1, v0, Lk0/mt;->g:I

    .line 69
    iput v6, v0, Lk0/mt;->b:I

    .line 70
    iput v6, v0, Lk0/mt;->c:I

    .line 71
    iput v6, v0, Lk0/mt;->d:I

    .line 72
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 73
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 74
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0, v1, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->D3(I)V

    .line 75
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0, v5, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/c;->E3(I)V

    goto/16 :goto_2

    .line 76
    :cond_6
    :pswitch_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 77
    iput v1, v0, Lk0/mt;->e:I

    .line 78
    iput v1, v0, Lk0/mt;->f:I

    .line 79
    iput v1, v0, Lk0/mt;->g:I

    .line 80
    iput v1, v0, Lk0/mt;->b:I

    .line 81
    iput v1, v0, Lk0/mt;->c:I

    .line 82
    iput v6, v0, Lk0/mt;->d:I

    .line 83
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 84
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 85
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    invoke-virtual {p0}, Lmodule/canbus/c;->init()V

    .line 87
    iget-object v0, p0, Lmodule/canbus/c;->u0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {p0}, Lmodule/canbus/c;->B3()V

    .line 89
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_2

    .line 90
    :cond_7
    :pswitch_6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 91
    iput v1, v0, Lk0/mt;->e:I

    .line 92
    iput v1, v0, Lk0/mt;->f:I

    .line 93
    iput v1, v0, Lk0/mt;->g:I

    .line 94
    iput v6, v0, Lk0/mt;->b:I

    .line 95
    iput v6, v0, Lk0/mt;->c:I

    .line 96
    iput v6, v0, Lk0/mt;->d:I

    .line 97
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 98
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_2

    .line 99
    :cond_8
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lk0/mt;->a:[Ljava/lang/String;

    .line 100
    iput v1, v2, Lk0/mt;->e:I

    .line 101
    iput v1, v2, Lk0/mt;->f:I

    .line 102
    iput v1, v2, Lk0/mt;->g:I

    .line 103
    iput v1, v2, Lk0/mt;->b:I

    .line 104
    iput v1, v2, Lk0/mt;->c:I

    .line 105
    iput v6, v2, Lk0/mt;->d:I

    new-array v2, v9, [B

    .line 106
    fill-array-data v2, :array_0

    invoke-static {v2}, Lmodule/canbus/c;->G3([B)V

    .line 107
    iget-object v2, p0, Lmodule/canbus/c;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 108
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    invoke-virtual {p0}, Lmodule/canbus/c;->init()V

    .line 110
    iget-object v0, p0, Lmodule/canbus/c;->u0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {p0}, Lmodule/canbus/c;->B3()V

    .line 112
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 113
    :cond_9
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lk0/mt;->a:[Ljava/lang/String;

    .line 114
    iput v1, v2, Lk0/mt;->e:I

    .line 115
    iput v1, v2, Lk0/mt;->f:I

    .line 116
    iput v1, v2, Lk0/mt;->g:I

    .line 117
    iput v6, v2, Lk0/mt;->b:I

    .line 118
    iput v6, v2, Lk0/mt;->c:I

    .line 119
    iput v6, v2, Lk0/mt;->d:I

    new-array v2, v9, [B

    .line 120
    fill-array-data v2, :array_1

    invoke-static {v2}, Lmodule/canbus/c;->G3([B)V

    .line 121
    iget-object v2, p0, Lmodule/canbus/c;->o0:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 122
    :cond_a
    :pswitch_7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 123
    iput v1, v0, Lk0/mt;->e:I

    .line 124
    iput v1, v0, Lk0/mt;->f:I

    .line 125
    iput v1, v0, Lk0/mt;->g:I

    .line 126
    iput v1, v0, Lk0/mt;->b:I

    .line 127
    iput v1, v0, Lk0/mt;->c:I

    .line 128
    iput v6, v0, Lk0/mt;->d:I

    .line 129
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    invoke-virtual {p0}, Lmodule/canbus/c;->init()V

    .line 131
    iget-object v0, p0, Lmodule/canbus/c;->u0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {p0}, Lmodule/canbus/c;->B3()V

    .line 133
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x35
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 1
        0x2et
        -0x7ft
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2et
        -0x7ft
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x30

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_7b

    const/16 v3, 0x30

    const/4 v9, 0x2

    if-eq v2, v3, :cond_7a

    const/16 v3, 0x7d

    const/16 v13, 0xa

    const/16 v15, 0x8

    const/4 v10, 0x6

    const/16 v14, 0xff

    if-eq v2, v3, :cond_73

    const/16 v3, 0x32

    if-eq v2, v3, :cond_72

    const/16 v3, 0x33

    if-eq v2, v3, :cond_71

    const/16 v3, 0x40

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x41

    const/16 v4, 0x3f

    const/16 v5, 0x9

    const/4 v12, 0x7

    if-eq v2, v3, :cond_58

    const/16 v3, 0x1e

    const/16 v11, 0x12

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_26

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 3
    aget-byte v1, v1, v3

    if-eq v2, v9, :cond_0

    goto/16 :goto_26

    .line 4
    :cond_0
    iget v2, v0, Lmodule/canbus/c;->I:I

    if-eq v1, v2, :cond_81

    if-le v1, v2, :cond_2

    move v2, v7

    .line 5
    :goto_0
    iget v3, v0, Lmodule/canbus/c;->I:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto :goto_2

    :cond_2
    if-ge v1, v2, :cond_4

    move v2, v7

    .line 8
    :goto_1
    iget v3, v0, Lmodule/canbus/c;->I:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    .line 9
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    .line 11
    :cond_4
    :goto_2
    iput v1, v0, Lmodule/canbus/c;->I:I

    goto/16 :goto_26

    .line 12
    :pswitch_1
    sget v2, Lk0/nt;->a:I

    const v4, 0x90033

    if-ne v2, v4, :cond_5

    const/16 v2, 0x1d

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 13
    aget-byte v9, v1, v5

    shr-int/lit8 v6, v9, 0x3

    and-int/2addr v6, v12

    aput v6, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 14
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v12

    aput v1, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 16
    aget-byte v1, v1, v4

    and-int/2addr v2, v14

    .line 17
    iput v2, v0, Lmodule/canbus/c;->j:I

    move v2, v7

    .line 18
    :goto_3
    iget-object v4, v0, Lmodule/canbus/c;->k:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 19
    iget v5, v0, Lmodule/canbus/c;->j:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_6

    if-eqz v5, :cond_7

    .line 20
    iput v2, v0, Lmodule/canbus/c;->i:I

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 21
    :cond_7
    :goto_4
    iget v5, v0, Lmodule/canbus/c;->j:I

    const/16 v6, 0x40

    if-eq v5, v6, :cond_10

    const/16 v6, 0x41

    if-eq v5, v6, :cond_e

    const/16 v6, 0x50

    if-eq v5, v6, :cond_c

    const/16 v6, 0x51

    if-eq v5, v6, :cond_a

    and-int/2addr v1, v14

    if-ne v1, v8, :cond_8

    .line 22
    array-length v1, v4

    if-ge v2, v1, :cond_81

    .line 23
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_8
    if-nez v1, :cond_81

    .line 24
    iget v1, v0, Lmodule/canbus/c;->i:I

    array-length v2, v4

    if-ge v1, v2, :cond_9

    if-eq v1, v14, :cond_9

    .line 25
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 26
    :cond_9
    iput v14, v0, Lmodule/canbus/c;->i:I

    goto/16 :goto_26

    :cond_a
    move v2, v7

    :goto_5
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_b

    .line 27
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 28
    :cond_b
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_c
    move v2, v7

    :goto_6
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_d

    const/16 v3, 0x1f

    .line 29
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    const/16 v1, 0x1f

    .line 30
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_e
    move v2, v7

    :goto_7
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_f

    .line 31
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 32
    :cond_f
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_10
    move v2, v7

    :goto_8
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_11

    .line 33
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 34
    :cond_11
    invoke-static {v12, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 35
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_81

    add-int/lit8 v2, p2, 0x1

    .line 36
    aget-byte v2, v1, v2

    if-ne v2, v15, :cond_12

    add-int/lit8 v2, p2, 0x3

    .line 37
    aget-byte v4, v1, v2

    add-int/lit8 v6, p2, 0x4

    .line 38
    aget-byte v9, v1, v6

    add-int/lit8 v9, p2, 0x5

    .line 39
    aget-byte v10, v1, v9

    and-int/2addr v4, v14

    .line 40
    invoke-static {v4, v7, v3}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lmodule/canbus/c;->A0:I

    const/16 v3, 0x7b

    new-array v4, v8, [I

    add-int/lit8 v10, p2, 0x2

    .line 41
    aget-byte v10, v1, v10

    aput v10, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7c

    new-array v4, v8, [I

    .line 42
    aget-byte v2, v1, v2

    aput v2, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 43
    aget-byte v4, v1, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    .line 44
    aget-byte v4, v1, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 45
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 46
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 47
    aget-byte v4, v1, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 48
    aget-byte v1, v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 50
    aget-byte v1, v1, v4

    and-int/2addr v2, v14

    .line 51
    iput v2, v0, Lmodule/canbus/c;->g:I

    move v2, v7

    .line 52
    :goto_9
    iget-object v4, v0, Lmodule/canbus/c;->h:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_14

    .line 53
    iget v5, v0, Lmodule/canbus/c;->g:I

    aget-object v6, v4, v2

    aget v6, v6, v7

    if-ne v5, v6, :cond_13

    if-eqz v5, :cond_14

    .line 54
    iput v2, v0, Lmodule/canbus/c;->f:I

    goto :goto_a

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 55
    :cond_14
    :goto_a
    iget v5, v0, Lmodule/canbus/c;->g:I

    const/16 v6, 0x11

    if-eq v5, v6, :cond_19

    if-eq v5, v11, :cond_17

    and-int/2addr v1, v14

    if-ne v1, v8, :cond_15

    .line 56
    array-length v1, v4

    if-ge v2, v1, :cond_81

    .line 57
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_15
    if-nez v1, :cond_81

    .line 58
    iget v1, v0, Lmodule/canbus/c;->f:I

    array-length v2, v4

    if-ge v1, v2, :cond_16

    if-eq v1, v14, :cond_16

    .line 59
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 60
    :cond_16
    iput v14, v0, Lmodule/canbus/c;->f:I

    goto/16 :goto_26

    :cond_17
    move v2, v7

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_18

    const/16 v3, 0x1f

    .line 61
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    const/16 v1, 0x1f

    .line 62
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_19
    move v2, v7

    :goto_c
    and-int/lit16 v4, v1, 0xff

    if-ge v2, v4, :cond_1a

    .line 63
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 64
    :cond_1a
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 65
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 66
    iget-boolean v2, v0, Lmodule/canbus/c;->u:Z

    if-nez v2, :cond_81

    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v14

    const/16 v3, 0x21c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_26

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 68
    aget-byte v3, v1, v2

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v8

    .line 69
    iput v5, v0, Lmodule/canbus/c;->l0:I

    .line 70
    sget v9, Lk0/nt;->c:I

    if-eq v9, v4, :cond_1e

    const/16 v4, 0x43

    if-eq v9, v4, :cond_1e

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    goto/16 :goto_d

    .line 71
    :pswitch_5
    iget v4, v0, Lmodule/canbus/c;->k0:I

    aget-byte v9, v1, v2

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    if-eq v4, v9, :cond_24

    .line 72
    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    iput v1, v0, Lmodule/canbus/c;->k0:I

    .line 73
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-nez v1, :cond_24

    .line 74
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->l:I

    if-ne v1, v8, :cond_1c

    .line 75
    iget v1, v0, Lmodule/canbus/c;->k0:I

    if-ne v1, v8, :cond_1b

    .line 76
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_24

    .line 77
    iput-boolean v8, v0, Lmodule/canbus/c;->m0:Z

    .line 78
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_d

    .line 79
    :cond_1b
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lmodule/canbus/c;->m0:Z

    if-eqz v1, :cond_24

    .line 80
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 81
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 82
    iput-boolean v7, v0, Lmodule/canbus/c;->m0:Z

    goto/16 :goto_d

    .line 83
    :cond_1c
    iget v1, v0, Lmodule/canbus/c;->k0:I

    if-ne v1, v8, :cond_1d

    .line 84
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-nez v1, :cond_24

    .line 85
    iput-boolean v8, v0, Lmodule/canbus/c;->m0:Z

    .line 86
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_d

    .line 87
    :cond_1d
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lmodule/canbus/c;->m0:Z

    if-eqz v1, :cond_24

    .line 88
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 89
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 90
    iput-boolean v7, v0, Lmodule/canbus/c;->m0:Z

    goto/16 :goto_d

    .line 91
    :cond_1e
    :pswitch_6
    iget v4, v0, Lmodule/canbus/c;->k0:I

    aget-byte v9, v1, v2

    shr-int/2addr v9, v8

    and-int/2addr v9, v8

    if-eq v4, v9, :cond_24

    .line 92
    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    iput v1, v0, Lmodule/canbus/c;->k0:I

    if-nez v1, :cond_1f

    .line 93
    invoke-static {v13}, Lu0/d;->R2(I)V

    .line 94
    invoke-static {v13}, Lu0/d;->S2(I)V

    .line 95
    invoke-static {v13}, Lu0/d;->T2(I)V

    .line 96
    invoke-static {v13}, Lu0/d;->U2(I)V

    .line 97
    invoke-static {v13}, Lu0/d;->D2(I)V

    .line 98
    invoke-static {v13}, Lu0/d;->E2(I)V

    .line 99
    invoke-static {v13}, Lu0/d;->F2(I)V

    .line 100
    invoke-static {v13}, Lu0/d;->G2(I)V

    .line 101
    :cond_1f
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x43

    if-eq v1, v2, :cond_20

    packed-switch v1, :pswitch_data_3

    goto :goto_d

    .line 102
    :cond_20
    :pswitch_7
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-nez v1, :cond_24

    .line 103
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    iget v1, v1, Lk0/mt;->l:I

    if-ne v1, v8, :cond_22

    .line 104
    iget v1, v0, Lmodule/canbus/c;->k0:I

    if-ne v1, v8, :cond_21

    .line 105
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_24

    .line 106
    iput-boolean v8, v0, Lmodule/canbus/c;->m0:Z

    .line 107
    invoke-static {}, Lo1/u;->z()I

    goto :goto_d

    .line 108
    :cond_21
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lmodule/canbus/c;->m0:Z

    if-eqz v1, :cond_24

    .line 109
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 110
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 111
    iput-boolean v7, v0, Lmodule/canbus/c;->m0:Z

    goto :goto_d

    .line 112
    :cond_22
    iget v1, v0, Lmodule/canbus/c;->k0:I

    if-ne v1, v8, :cond_23

    .line 113
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-nez v1, :cond_24

    .line 114
    iput-boolean v8, v0, Lmodule/canbus/c;->m0:Z

    .line 115
    invoke-static {}, Lo1/u;->j()I

    goto :goto_d

    .line 116
    :cond_23
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lmodule/canbus/c;->m0:Z

    if-eqz v1, :cond_24

    .line 117
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 118
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    .line 119
    iput-boolean v7, v0, Lmodule/canbus/c;->m0:Z

    :cond_24
    :goto_d
    const/16 v1, 0x7a

    new-array v2, v8, [I

    shr-int/lit8 v4, v3, 0x2

    and-int/2addr v4, v6

    aput v4, v2, v7

    .line 120
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6b

    new-array v2, v8, [I

    aput v5, v2, v7

    .line 121
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x6c

    new-array v2, v8, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 122
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 123
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    .line 124
    sget-object v2, Lk0/nt;->g:[I

    const/16 v3, 0x77

    aget v2, v2, v3

    if-ne v2, v8, :cond_81

    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_81

    .line 125
    iget v2, v0, Lmodule/canbus/c;->l:I

    if-eq v2, v1, :cond_81

    .line 126
    iput v1, v0, Lmodule/canbus/c;->l:I

    if-ne v1, v8, :cond_25

    .line 127
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-nez v1, :cond_81

    .line 128
    iput-boolean v8, v0, Lmodule/canbus/c;->n:Z

    .line 129
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_26

    :cond_25
    if-nez v1, :cond_81

    .line 130
    iget-boolean v1, v0, Lmodule/canbus/c;->n:Z

    if-eqz v1, :cond_81

    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 131
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 132
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :pswitch_9
    const-string v2, "persist.fyt.radar_click"

    .line 133
    invoke-static {v2, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, p2, 0x2

    .line 134
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    .line 135
    aget-byte v3, v1, v3

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x4

    .line 136
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    add-int/lit8 v5, p2, 0x5

    .line 137
    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    if-nez v2, :cond_26

    if-nez v3, :cond_26

    if-nez v4, :cond_26

    if-nez v5, :cond_26

    .line 138
    iget v6, v0, Lmodule/canbus/c;->l0:I

    if-nez v6, :cond_28

    .line 139
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_e

    .line 140
    :cond_26
    sget v6, Ll0/c0;->g:I

    if-ne v6, v2, :cond_27

    sget v6, Ll0/c0;->h:I

    if-ne v6, v3, :cond_27

    sget v6, Ll0/c0;->i:I

    if-ne v6, v4, :cond_27

    sget v6, Ll0/c0;->j:I

    if-eq v6, v5, :cond_28

    .line 141
    :cond_27
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_28

    .line 142
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 143
    sput v10, Ll0/c0;->k:I

    .line 144
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 145
    :cond_28
    :goto_e
    sput v2, Ll0/c0;->g:I

    .line 146
    sput v3, Ll0/c0;->h:I

    .line 147
    sput v4, Ll0/c0;->i:I

    .line 148
    sput v5, Ll0/c0;->j:I

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 149
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 150
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 151
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 152
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_26

    .line 153
    :pswitch_a
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_81

    add-int/lit8 v2, p2, 0x2

    .line 154
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 155
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 156
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 157
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_26

    .line 158
    :pswitch_b
    sget v2, Lk0/nt;->a:I

    const v5, 0x30033

    if-eq v2, v5, :cond_2f

    const v5, 0x70033

    if-eq v2, v5, :cond_2f

    const v5, 0x40033

    if-ne v2, v5, :cond_2a

    goto/16 :goto_12

    :cond_2a
    add-int/lit8 v2, p2, 0x2

    .line 159
    aget-byte v2, v1, v2

    new-array v5, v8, [I

    shr-int/lit8 v15, v2, 0x7

    and-int/2addr v15, v8

    aput v15, v5, v7

    .line 160
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xb

    new-array v13, v8, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v8

    aput v15, v13, v7

    .line 161
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v8

    aput v13, v5, v7

    const/16 v13, 0xc

    .line 162
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v13, v8, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v8

    aput v15, v13, v7

    .line 163
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x31

    new-array v13, v8, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v8

    aput v15, v13, v7

    .line 164
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v13, v8, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v8

    aput v15, v13, v7

    .line 165
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v13, v2, 0x1

    and-int/2addr v13, v8

    aput v13, v5, v7

    const/16 v13, 0xf

    .line 166
    invoke-static {v13, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x26

    new-array v13, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v13, v7

    .line 167
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 168
    aget-byte v2, v1, v2

    new-array v5, v8, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v8

    aput v13, v5, v7

    .line 169
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v8

    aput v13, v11, v7

    .line 170
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x5

    and-int/2addr v13, v8

    aput v13, v11, v7

    .line 171
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x15

    new-array v11, v8, [I

    const/16 v13, 0xf

    and-int/2addr v2, v13

    aput v2, v11, v7

    .line 172
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 173
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x1b

    new-array v5, v8, [I

    add-int/lit8 v11, p2, 0x5

    .line 174
    aget-byte v11, v1, v11

    and-int/2addr v11, v14

    aput v11, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v5, v8, [I

    add-int/lit8 v11, p2, 0x4

    .line 175
    aget-byte v11, v1, v11

    and-int/2addr v11, v14

    aput v11, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_2b
    const/16 v2, 0x1b

    new-array v5, v8, [I

    add-int/lit8 v11, p2, 0x4

    .line 176
    aget-byte v11, v1, v11

    and-int/2addr v11, v14

    aput v11, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v5, v8, [I

    add-int/lit8 v11, p2, 0x5

    .line 177
    aget-byte v11, v1, v11

    and-int/2addr v11, v14

    aput v11, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    :goto_f
    add-int/lit8 v2, p2, 0x6

    .line 178
    aget-byte v2, v1, v2

    const/16 v5, 0x36

    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x7

    and-int/2addr v13, v8

    aput v13, v11, v7

    .line 179
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    .line 180
    sget v5, Lk0/nt;->a:I

    const v11, 0x90033

    if-eq v5, v11, :cond_2c

    const/16 v5, 0x1d

    new-array v11, v8, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v6

    aput v13, v11, v7

    .line 181
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    new-array v5, v8, [I

    shr-int/lit8 v11, v2, 0x0

    and-int/2addr v6, v11

    aput v6, v5, v7

    .line 182
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    :cond_2c
    const/16 v3, 0x43

    new-array v5, v8, [I

    shr-int/lit8 v6, v2, 0x3

    and-int/2addr v6, v8

    aput v6, v5, v7

    .line 183
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 184
    sget v3, Lk0/nt;->c:I

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x30

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x31

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x32

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x33

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x34

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x35

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x36

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x37

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x38

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x39

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_2e

    const/16 v5, 0x3b

    if-eq v3, v5, :cond_2e

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x43

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x45

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x47

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x48

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x49

    if-ne v3, v4, :cond_2d

    goto :goto_10

    :cond_2d
    const/16 v3, 0x35

    new-array v4, v8, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 185
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_11

    :cond_2e
    :goto_10
    const/16 v3, 0x35

    new-array v4, v8, [I

    shr-int/2addr v2, v10

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 186
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 187
    :goto_11
    sget v2, Lk0/nt;->a:I

    const v3, 0x2d0033

    if-ne v2, v3, :cond_81

    const/16 v2, 0x16

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 188
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v8, [I

    .line 189
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v8, [I

    .line 190
    aget-byte v5, v1, v4

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v3, v8, [I

    .line 191
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x7

    .line 192
    aget-byte v4, v1, v3

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0x1a

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v4, v8, [I

    .line 193
    aget-byte v1, v1, v3

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    .line 194
    :cond_2f
    :goto_12
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OBD0x21 air data "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, p2, -0x1

    add-int/lit8 v3, p3, 0x2

    invoke-static {v1, v15, v3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x2

    .line 195
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v12

    if-eq v3, v8, :cond_34

    if-eq v3, v9, :cond_33

    if-eq v3, v6, :cond_32

    const/4 v5, 0x4

    if-eq v3, v5, :cond_31

    const/4 v5, 0x5

    if-eq v3, v5, :cond_30

    move v5, v7

    move v10, v5

    :goto_13
    move v12, v10

    goto :goto_14

    :cond_30
    move v10, v7

    move v12, v10

    move v5, v8

    goto :goto_14

    :cond_31
    move v10, v7

    move v5, v8

    move v12, v5

    goto :goto_14

    :cond_32
    move v5, v7

    move v10, v5

    move v12, v8

    goto :goto_14

    :cond_33
    move v5, v7

    move v10, v8

    goto :goto_13

    :cond_34
    move v5, v7

    move v12, v5

    move v10, v8

    :goto_14
    new-array v15, v8, [I

    aput v5, v15, v7

    .line 196
    invoke-static {v11, v15}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v11, v8, [I

    aput v10, v11, v7

    .line 197
    invoke-static {v5, v11}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v10, v8, [I

    aput v12, v10, v7

    .line 198
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x4d

    new-array v10, v8, [I

    aput v3, v10, v7

    .line 199
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 200
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_35

    new-array v3, v8, [I

    aput v7, v3, v7

    const/16 v5, 0xc

    .line 201
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_35
    const/16 v5, 0xc

    shr-int/lit8 v3, v2, 0x2

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_36

    new-array v3, v8, [I

    aput v8, v3, v7

    .line 202
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :cond_36
    :goto_15
    const/16 v3, 0xb

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 203
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_37

    new-array v2, v8, [I

    aput v7, v2, v7

    .line 204
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_37
    new-array v2, v8, [I

    aput v8, v2, v7

    .line 205
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_16
    add-int/lit8 v2, p2, 0x3

    .line 206
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    const/16 v3, 0x15

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x4

    const/16 v11, 0xf

    and-int/2addr v10, v11

    aput v10, v5, v7

    .line 207
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 208
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v8

    aput v5, v3, v7

    const/16 v5, 0xf

    .line 209
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x26

    new-array v5, v8, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v8

    aput v10, v5, v7

    .line 210
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v5, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v5, v7

    .line 211
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 212
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v2, 0x1b

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 213
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v4

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 214
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_38
    const/16 v2, 0x1b

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 215
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v4

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 216
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_17
    const/16 v2, 0x1d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 217
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    const/4 v3, 0x5

    add-int/lit8 v3, p2, 0x5

    .line 218
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v2, v7

    const/16 v1, 0x1e

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    .line 219
    :pswitch_c
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x50

    if-ne v2, v3, :cond_3d

    add-int/lit8 v2, p2, 0x2

    .line 220
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 221
    aget-byte v1, v1, v3

    and-int/2addr v2, v14

    .line 222
    iput v2, v0, Lmodule/canbus/c;->c:I

    move v2, v7

    .line 223
    :goto_18
    iget-object v3, v0, Lmodule/canbus/c;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3a

    .line 224
    iget v4, v0, Lmodule/canbus/c;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_39

    if-eqz v4, :cond_3a

    .line 225
    iput v2, v0, Lmodule/canbus/c;->b:I

    goto :goto_19

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3a
    :goto_19
    and-int/2addr v1, v14

    if-ne v1, v8, :cond_3b

    .line 226
    array-length v1, v3

    if-ge v2, v1, :cond_81

    .line 227
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_3b
    if-nez v1, :cond_81

    .line 228
    iget v1, v0, Lmodule/canbus/c;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_3c

    if-eq v1, v14, :cond_3c

    .line 229
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 230
    :cond_3c
    iput v14, v0, Lmodule/canbus/c;->b:I

    goto/16 :goto_26

    :cond_3d
    add-int/lit8 v2, p2, 0x2

    .line 231
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 232
    aget-byte v1, v1, v3

    and-int/2addr v2, v14

    .line 233
    iput v2, v0, Lmodule/canbus/c;->c:I

    move v2, v7

    .line 234
    :goto_1a
    iget-object v3, v0, Lmodule/canbus/c;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_3f

    .line 235
    iget v4, v0, Lmodule/canbus/c;->c:I

    aget-object v12, v3, v2

    aget v12, v12, v7

    if-ne v4, v12, :cond_3e

    if-eqz v4, :cond_3f

    .line 236
    iput v2, v0, Lmodule/canbus/c;->b:I

    goto :goto_1b

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 237
    :cond_3f
    :goto_1b
    iget v4, v0, Lmodule/canbus/c;->c:I

    if-eq v4, v6, :cond_54

    const/4 v12, 0x4

    if-eq v4, v12, :cond_50

    const/4 v12, 0x5

    if-eq v4, v12, :cond_4d

    if-eq v4, v10, :cond_4a

    const/16 v6, 0xc

    if-eq v4, v6, :cond_48

    const/16 v6, 0x16

    if-eq v4, v6, :cond_45

    .line 238
    sget v4, Lk0/nt;->c:I

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_40

    const/16 v6, 0x3b

    if-le v4, v6, :cond_44

    :cond_40
    if-eq v4, v15, :cond_44

    if-ne v4, v5, :cond_41

    goto :goto_1c

    :cond_41
    and-int/2addr v1, v14

    if-ne v1, v8, :cond_42

    .line 239
    array-length v1, v3

    if-ge v2, v1, :cond_81

    .line 240
    iget-byte v1, v0, Lmodule/canbus/c;->y:B

    if-nez v1, :cond_81

    add-int/2addr v1, v8

    int-to-byte v1, v1

    .line 241
    iput-byte v1, v0, Lmodule/canbus/c;->y:B

    .line 242
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 243
    iget-object v1, v0, Lmodule/canbus/c;->z:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_26

    :cond_42
    if-nez v1, :cond_81

    .line 244
    iget v1, v0, Lmodule/canbus/c;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_43

    if-eq v1, v14, :cond_43

    .line 245
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 246
    iget-object v1, v0, Lmodule/canbus/c;->z:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 247
    iput-byte v7, v0, Lmodule/canbus/c;->y:B

    .line 248
    :cond_43
    iput v14, v0, Lmodule/canbus/c;->b:I

    goto/16 :goto_26

    :cond_44
    :goto_1c
    and-int/2addr v1, v14

    if-eqz v1, :cond_81

    .line 249
    iget v1, v0, Lmodule/canbus/c;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_81

    .line 250
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 251
    iget-object v1, v0, Lmodule/canbus/c;->d:[[I

    iget v2, v0, Lmodule/canbus/c;->b:I

    aget-object v1, v1, v2

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_45
    and-int/2addr v1, v14

    if-ne v1, v8, :cond_81

    .line 252
    sget v1, Lk0/nt;->c:I

    if-eqz v1, :cond_47

    if-eq v1, v9, :cond_47

    const/16 v2, 0x54

    if-ne v1, v2, :cond_46

    goto :goto_1d

    :cond_46
    const/16 v1, 0x1d

    .line 253
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 254
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 255
    :cond_47
    :goto_1d
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 256
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 257
    :cond_48
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x51

    if-ne v1, v2, :cond_49

    .line 258
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_81

    const/16 v1, 0x10

    .line 259
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 260
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_49
    const/16 v1, 0x10

    .line 261
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 262
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_4a
    and-int/2addr v1, v14

    if-ne v1, v8, :cond_81

    .line 263
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x21

    if-eq v1, v2, :cond_4c

    const/16 v2, 0x23

    if-ne v1, v2, :cond_4b

    goto :goto_1e

    :cond_4b
    const/16 v1, 0xc

    .line 264
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 265
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_4c
    :goto_1e
    const/16 v1, 0xd

    .line 266
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 267
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_4d
    and-int/2addr v1, v14

    if-ne v1, v8, :cond_81

    .line 268
    iget-byte v1, v0, Lmodule/canbus/c;->y:B

    if-nez v1, :cond_81

    add-int/2addr v1, v8

    int-to-byte v1, v1

    .line 269
    iput-byte v1, v0, Lmodule/canbus/c;->y:B

    .line 270
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_4e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4e

    .line 271
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 272
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    goto :goto_20

    :cond_4e
    const/16 v1, 0x1a

    goto :goto_1f

    .line 273
    :cond_4f
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 274
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    goto :goto_20

    .line 275
    :goto_1f
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 276
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 277
    :goto_20
    iget-object v1, v0, Lmodule/canbus/c;->z:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_26

    :cond_50
    and-int/2addr v1, v14

    if-ne v1, v8, :cond_81

    .line 278
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x51

    if-ne v1, v2, :cond_53

    .line 279
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_52

    const/4 v2, 0x4

    if-eq v1, v2, :cond_52

    const/4 v3, 0x5

    if-eq v1, v3, :cond_52

    .line 280
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_51

    const/16 v1, 0x1a

    .line 281
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 282
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 283
    :cond_51
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 284
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_52
    const/16 v1, 0x1a

    .line 285
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 286
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_53
    const/4 v2, 0x4

    .line 287
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 288
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_54
    const/4 v2, 0x4

    and-int/2addr v1, v14

    if-ne v1, v8, :cond_81

    .line 289
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x51

    if-ne v1, v3, :cond_57

    .line 290
    sget v1, Lh0/c;->E:I

    if-eq v1, v6, :cond_56

    if-eq v1, v2, :cond_56

    const/4 v2, 0x5

    if-eq v1, v2, :cond_56

    .line 291
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 292
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 293
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 294
    :cond_55
    invoke-static {v6, v7}, Ll0/b0;->l0(II)V

    .line 295
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 296
    :cond_56
    invoke-static {v11, v7}, Ll0/b0;->l0(II)V

    .line 297
    invoke-static {v11, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 298
    :cond_57
    invoke-static {v6, v7}, Ll0/b0;->l0(II)V

    .line 299
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_58
    add-int/lit8 v2, p2, 0x2

    .line 300
    aget-byte v2, v1, v2

    const/16 v3, -0x80

    if-eq v2, v3, :cond_6c

    const/16 v3, -0x7f

    if-eq v2, v3, :cond_68

    const/16 v3, -0x58

    if-eq v2, v3, :cond_67

    const/16 v3, 0x40

    if-eq v2, v3, :cond_66

    if-eq v2, v8, :cond_64

    if-eq v2, v9, :cond_60

    if-eq v2, v6, :cond_5f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_59

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_26

    :pswitch_d
    const/16 v2, 0x91

    new-array v5, v8, [I

    add-int/lit8 v6, p2, 0x3

    .line 301
    aget-byte v6, v1, v6

    and-int/2addr v4, v6

    shl-int/2addr v4, v15

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    aput v1, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :pswitch_e
    const/16 v2, 0x8f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 302
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    .line 303
    aget-byte v4, v1, v4

    const/16 v5, 0xf

    and-int/2addr v4, v5

    shl-int/2addr v4, v15

    const v5, 0xff00

    and-int/2addr v4, v5

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    aget-byte v1, v1, v5

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :pswitch_f
    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 304
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 305
    aget-byte v5, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 306
    aget-byte v5, v1, v4

    const/4 v9, 0x4

    shr-int/2addr v5, v9

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 307
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 308
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v12

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 309
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 310
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    .line 311
    aget-byte v1, v1, v4

    const/4 v4, 0x5

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    .line 312
    :cond_59
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x51

    if-ne v2, v3, :cond_5e

    add-int/lit8 v2, p2, 0x3

    .line 313
    aget-byte v3, v1, v2

    const/4 v4, 0x4

    shr-int/2addr v3, v4

    const/16 v4, 0xf

    and-int/2addr v3, v4

    .line 314
    iget v4, v0, Lmodule/canbus/c;->o:I

    if-eq v4, v3, :cond_5d

    if-eqz v3, :cond_5b

    .line 315
    sget v4, Ly0/f;->i:I

    if-eq v4, v8, :cond_5c

    .line 316
    sget v4, Ly0/f;->c:I

    iput v4, v0, Lmodule/canbus/c;->F:I

    const/4 v5, 0x5

    .line 317
    div-int/2addr v4, v5

    if-ge v4, v8, :cond_5a

    move v4, v8

    .line 318
    :cond_5a
    invoke-static {v4}, Ly0/h;->t0(I)V

    goto :goto_21

    :cond_5b
    if-nez v3, :cond_5c

    .line 319
    iget v4, v0, Lmodule/canbus/c;->F:I

    invoke-static {v4}, Ly0/h;->t0(I)V

    .line 320
    :cond_5c
    :goto_21
    iput v3, v0, Lmodule/canbus/c;->o:I

    :cond_5d
    const/16 v3, 0x9d

    new-array v4, v8, [I

    .line 321
    aget-byte v5, v1, v2

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9e

    new-array v4, v8, [I

    .line 322
    aget-byte v5, v1, v2

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9f

    new-array v4, v8, [I

    .line 323
    aget-byte v5, v1, v2

    const/4 v6, 0x5

    shr-int/2addr v5, v6

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa0

    new-array v4, v8, [I

    .line 324
    aget-byte v1, v1, v2

    const/4 v2, 0x4

    shr-int/2addr v1, v2

    and-int/2addr v1, v8

    aput v1, v4, v7

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_5e
    const/16 v2, 0x92

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 325
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 326
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 327
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 328
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    and-int/2addr v5, v14

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 329
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const v5, 0xff00

    and-int/2addr v4, v5

    const/16 v5, 0xc

    add-int/lit8 v5, p2, 0xc

    aget-byte v1, v1, v5

    and-int/2addr v1, v14

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_5f
    add-int/lit8 v2, p2, 0x3

    .line 330
    aget-byte v1, v1, v2

    const/16 v2, 0x63

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 331
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    shr-int/2addr v1, v10

    and-int/2addr v1, v8

    aput v1, v3, v7

    .line 332
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_60
    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 333
    aget-byte v6, v1, v4

    shl-int/2addr v6, v15

    const v10, 0xff00

    and-int/2addr v6, v10

    add-int/lit8 v10, p2, 0x4

    aget-byte v11, v1, v10

    shl-int/2addr v11, v7

    and-int/2addr v11, v14

    or-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v8, [I

    .line 334
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const v6, 0xff00

    and-int/2addr v4, v6

    aget-byte v6, v1, v10

    shl-int/2addr v6, v7

    and-int/2addr v6, v14

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 335
    aget-byte v6, v1, v4

    shl-int/2addr v6, v15

    const v10, 0xff00

    and-int/2addr v6, v10

    add-int/lit8 v11, p2, 0x6

    aget-byte v12, v1, v11

    shl-int/2addr v12, v7

    and-int/2addr v12, v14

    or-int/2addr v6, v12

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 336
    aget-byte v2, v1, v4

    shl-int/2addr v2, v15

    and-int/2addr v2, v10

    aget-byte v3, v1, v11

    and-int/2addr v3, v14

    or-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    const/16 v3, 0x407

    new-array v4, v8, [I

    aput v2, v4, v7

    .line 337
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 338
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v4, v9, [I

    aput v8, v4, v7

    aput v2, v4, v8

    const/16 v2, 0x419

    const/4 v6, 0x0

    invoke-static {v3, v2, v4, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 339
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/lit8 v6, p2, 0x8

    aget-byte v6, v1, v6

    shl-int/2addr v6, v7

    and-int/2addr v6, v14

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 340
    aget-byte v6, v1, v4

    shl-int/2addr v6, v15

    const v9, 0xff00

    and-int/2addr v6, v9

    add-int/lit8 v9, p2, 0xa

    aget-byte v10, v1, v9

    shl-int/2addr v10, v7

    and-int/2addr v10, v14

    or-int/2addr v6, v10

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0xb

    .line 341
    aget-byte v6, v1, v6

    const/16 v10, 0x10

    shl-int/2addr v6, v10

    const/high16 v10, 0xff0000

    and-int/2addr v6, v10

    add-int/lit8 v10, p2, 0xc

    aget-byte v10, v1, v10

    shl-int/2addr v10, v15

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int/2addr v6, v10

    add-int/lit8 v10, p2, 0xd

    aget-byte v10, v1, v10

    shl-int/2addr v10, v7

    and-int/2addr v10, v14

    or-int/2addr v6, v10

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0xe

    .line 342
    aget-byte v6, v1, v6

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 343
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 344
    aget-byte v2, v1, v4

    .line 345
    aget-byte v1, v1, v9

    shl-int/2addr v2, v15

    const v3, 0xff00

    and-int/2addr v2, v3

    and-int/2addr v1, v14

    or-int/2addr v1, v2

    const-string v2, "persist.fyt.temperature"

    .line 346
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_62

    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_61

    const/high16 v2, 0x10000

    sub-int/2addr v2, v1

    mul-int/2addr v2, v5

    const/4 v3, 0x5

    .line 347
    div-int/2addr v2, v3

    rsub-int v1, v2, 0x528

    goto :goto_22

    :cond_61
    const/4 v3, 0x5

    mul-int/2addr v1, v5

    .line 348
    div-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x528

    .line 349
    :goto_22
    div-int/2addr v1, v13

    mul-int/2addr v1, v13

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_62
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_63

    const/high16 v2, 0x10000

    sub-int/2addr v2, v1

    rsub-int v1, v2, 0x3e8

    goto :goto_23

    :cond_63
    add-int/lit16 v1, v1, 0x3e8

    .line 350
    :goto_23
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_26

    :cond_64
    add-int/lit8 v2, p2, 0x3

    .line 351
    aget-byte v1, v1, v2

    const/16 v2, 0x65

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 352
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 353
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 354
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x5

    .line 355
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    const/4 v3, 0x4

    .line 356
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x2

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 357
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 358
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_65

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x0

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 359
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 360
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_65
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x1

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 361
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 362
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_66
    const/16 v2, 0x83

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 363
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 364
    aget-byte v4, v1, v4

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 365
    aget-byte v9, v1, v4

    shr-int/2addr v9, v7

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    .line 366
    aget-byte v9, v1, v4

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    .line 367
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_67
    const/16 v2, 0x99

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 368
    aget-byte v5, v1, v4

    const/4 v10, 0x5

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    .line 369
    aget-byte v5, v1, v4

    const/4 v10, 0x4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    .line 370
    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    .line 371
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    :cond_68
    const/16 v2, 0xa1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 372
    aget-byte v5, v1, v4

    const/4 v10, 0x4

    shr-int/2addr v5, v10

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 373
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    if-ne v2, v8, :cond_69

    .line 374
    sget v2, Lu0/b;->j:I

    if-ne v2, v8, :cond_6a

    const/16 v2, 0x19

    .line 375
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 376
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_24

    .line 377
    :cond_69
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    if-ne v2, v9, :cond_6a

    .line 378
    sget v2, Lu0/b;->j:I

    if-nez v2, :cond_6a

    const/16 v2, 0x19

    .line 379
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 380
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 381
    :cond_6a
    :goto_24
    aget-byte v2, v1, v4

    shr-int/2addr v2, v9

    and-int/2addr v2, v6

    if-ne v2, v9, :cond_6b

    .line 382
    sget v1, Ly0/f;->i:I

    if-ne v1, v8, :cond_81

    const/16 v2, 0xc

    .line 383
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 384
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_6b
    const/16 v2, 0xc

    .line 385
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v6

    if-ne v1, v8, :cond_81

    .line 386
    sget v1, Ly0/f;->i:I

    if-nez v1, :cond_81

    .line 387
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 388
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_6c
    const/16 v2, 0x88

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 389
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 390
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 391
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 392
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 393
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 394
    aget-byte v1, v1, v4

    and-int/2addr v1, v14

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_26

    .line 395
    :cond_6d
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_6f

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_6f

    packed-switch v2, :pswitch_data_5

    goto/16 :goto_26

    .line 396
    :pswitch_10
    iget v2, v0, Lmodule/canbus/c;->m:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    if-eq v2, v4, :cond_81

    .line 397
    aget-byte v1, v1, v3

    iput v1, v0, Lmodule/canbus/c;->m:I

    if-nez v1, :cond_6e

    .line 398
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_81

    .line 399
    iput-boolean v8, v0, Lmodule/canbus/c;->n:Z

    .line 400
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_26

    :cond_6e
    if-ne v1, v8, :cond_81

    .line 401
    iget-boolean v1, v0, Lmodule/canbus/c;->n:Z

    if-eqz v1, :cond_81

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 402
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 403
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    .line 404
    :cond_6f
    :pswitch_11
    iget v2, v0, Lmodule/canbus/c;->m:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    if-eq v2, v4, :cond_81

    .line 405
    aget-byte v1, v1, v3

    iput v1, v0, Lmodule/canbus/c;->m:I

    if-nez v1, :cond_70

    .line 406
    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-nez v1, :cond_81

    .line 407
    iput-boolean v8, v0, Lmodule/canbus/c;->n:Z

    .line 408
    invoke-static {}, Lo1/u;->j()I

    goto/16 :goto_26

    :cond_70
    if-ne v1, v8, :cond_81

    .line 409
    iget-boolean v1, v0, Lmodule/canbus/c;->n:Z

    if-eqz v1, :cond_81

    invoke-static {}, Lo1/u;->V()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 410
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 411
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_26

    :cond_71
    add-int/lit8 v2, p2, 0x2

    .line 412
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 413
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 414
    aget-byte v4, v1, v4

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    .line 415
    aget-byte v1, v1, v5

    .line 416
    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->O2(I)V

    .line 417
    invoke-static {v3}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->Q2(I)V

    .line 418
    invoke-static {v4}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->P2(I)V

    .line 419
    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->N2(I)V

    goto/16 :goto_26

    :cond_72
    add-int/lit8 v2, p2, 0x2

    .line 420
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 421
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 422
    aget-byte v4, v1, v4

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    .line 423
    aget-byte v1, v1, v5

    .line 424
    invoke-static {v2}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->I2(I)V

    .line 425
    invoke-static {v3}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->K2(I)V

    .line 426
    invoke-static {v4}, Ll0/c0;->K1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->J2(I)V

    .line 427
    invoke-static {v1}, Ll0/c0;->K1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->H2(I)V

    goto/16 :goto_26

    :cond_73
    add-int/lit8 v2, p2, 0x2

    .line 428
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    if-eq v2, v8, :cond_78

    if-eq v2, v10, :cond_77

    if-eq v2, v15, :cond_76

    if-eq v2, v6, :cond_75

    const/4 v3, 0x4

    if-eq v2, v3, :cond_74

    goto/16 :goto_26

    :cond_74
    add-int/lit8 v2, p2, 0x7

    .line 429
    aget-byte v2, v1, v2

    shl-int/2addr v2, v15

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x6

    aget-byte v1, v1, v3

    and-int/2addr v1, v14

    or-int/2addr v1, v2

    div-int/2addr v1, v13

    .line 430
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v9, [I

    const/4 v4, 0x5

    aput v4, v3, v7

    aput v1, v3, v8

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_75
    add-int/lit8 v2, p2, 0x4

    .line 431
    aget-byte v2, v1, v2

    shl-int/2addr v2, v15

    const v3, 0xff00

    and-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v14

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 432
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 433
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v9, [I

    aput v8, v3, v7

    aput v1, v3, v8

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_76
    add-int/lit8 v2, p2, 0x3

    .line 434
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 435
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 436
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 437
    iput-boolean v8, v0, Lmodule/canbus/c;->u:Z

    goto/16 :goto_26

    .line 438
    :cond_77
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v9, [I

    aput v6, v3, v7

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v8

    const/16 v4, 0x419

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v9, [I

    const/4 v6, 0x4

    aput v6, v3, v7

    add-int/lit8 v6, p2, 0x4

    .line 439
    aget-byte v1, v1, v6

    shr-int/2addr v1, v7

    const/16 v6, 0xf

    and-int/2addr v1, v6

    aput v1, v3, v8

    invoke-static {v2, v4, v3, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_78
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 440
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_79

    add-int/lit8 v2, p2, 0x3

    .line 441
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aget-byte v2, v1, v2

    const/4 v4, 0x4

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    invoke-static {v3, v2, v7}, Ll0/c0;->b(III)V

    goto :goto_25

    :cond_79
    const/4 v4, 0x4

    add-int/lit8 v2, p2, 0x3

    .line 442
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aget-byte v2, v1, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v8

    invoke-static {v3, v2, v7}, Ll0/c0;->a(III)V

    :goto_25
    add-int/lit8 v2, p2, 0x3

    .line 443
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    iput v1, v0, Lmodule/canbus/c;->t:I

    .line 444
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v9, [I

    const/16 v4, 0xb

    aput v4, v3, v7

    aput v1, v3, v8

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_26

    .line 445
    :cond_7a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_7b
    add-int/lit8 v2, p2, 0x3

    .line 446
    aget-byte v2, v1, v2

    const/16 v3, -0x5b

    if-eq v2, v3, :cond_80

    const/16 v3, -0x56

    if-eq v2, v3, :cond_7f

    const/16 v3, -0x10

    if-eq v2, v3, :cond_7e

    const/16 v3, 0x55

    if-eq v2, v3, :cond_7d

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_7c

    goto/16 :goto_26

    :cond_7c
    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 447
    aget-byte v1, v1, v2

    if-ne v1, v8, :cond_81

    .line 448
    invoke-static {v6, v7}, Ll0/b0;->l0(II)V

    .line 449
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    goto :goto_26

    :cond_7d
    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 450
    aget-byte v1, v1, v2

    if-ne v1, v8, :cond_81

    const/16 v1, 0x10

    .line 451
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 452
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_26

    .line 453
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rev D0 0xf0333 .DataMain.sBlackScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zed"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v6, [I

    .line 454
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 455
    sget v1, Lu0/b;->j:I

    if-ne v1, v8, :cond_81

    new-array v1, v6, [I

    .line 456
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_26

    .line 457
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rev D0 0xaa2222 .DataMain.sBlackScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zed"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v6, [I

    .line 458
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 459
    sget v1, Lu0/b;->j:I

    goto :goto_26

    :cond_80
    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 460
    aget-byte v1, v1, v3

    if-ne v1, v8, :cond_81

    .line 461
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 462
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    :cond_81
    :goto_26
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_5
        :pswitch_5
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
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x11
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4a
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0xe
    .end array-data
.end method

.method public W2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/c;->u0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/c;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->x:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->w:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->g0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lmodule/canbus/c;->q0:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/c;->o0:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v2, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/c;->H:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v2, p0, Lmodule/canbus/c;->K:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, p0, Lmodule/canbus/c;->p0:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v1, p0, Lmodule/canbus/c;->L:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    iget-object v1, p0, Lmodule/canbus/c;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lmodule/canbus/c;->j0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lmodule/canbus/c;->h0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/c;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/c;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lmodule/canbus/c;->M:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 19
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/c;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lmodule/canbus/c;->B:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 21
    iget-object v0, p0, Lmodule/canbus/c;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa2

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
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x405

    const/16 v5, 0x98

    const/16 v6, 0xc

    const/4 v7, 0x7

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x6

    const/16 v12, 0xe3

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/16 v16, 0x0

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2e

    const/16 v17, 0xc6

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-array v1, v6, [I

    aput v12, v1, v16

    aput v5, v1, v8

    aput v9, v1, v4

    .line 1
    aget v3, v2, v16

    aput v3, v1, v15

    aget v3, v2, v8

    aput v3, v1, v13

    aget v3, v2, v4

    aput v3, v1, v14

    aget v3, v2, v15

    aput v3, v1, v11

    aget v2, v2, v13

    aput v2, v1, v7

    aput v16, v1, v10

    aput v16, v1, v9

    const/16 v2, 0xa

    aput v16, v1, v2

    const/16 v2, 0xb

    aput v16, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_1
    new-array v1, v14, [I

    aput v12, v1, v16

    const/16 v3, 0x90

    aput v3, v1, v8

    aput v4, v1, v4

    .line 2
    aget v3, v2, v16

    aput v3, v1, v15

    aget v2, v2, v8

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_2
    new-array v1, v14, [I

    aput v12, v1, v16

    const/16 v3, 0xa8

    aput v3, v1, v8

    aput v4, v1, v4

    .line 3
    aget v3, v2, v16

    aput v3, v1, v15

    aget v2, v2, v8

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_3
    new-array v1, v11, [B

    aput-byte v3, v1, v16

    const/16 v3, -0x58

    aput-byte v3, v1, v8

    aput-byte v4, v1, v4

    .line 4
    aget v3, v2, v16

    int-to-byte v3, v3

    aput-byte v3, v1, v15

    aget v2, v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v13

    aput-byte v16, v1, v14

    invoke-static {v1}, Lmodule/canbus/c;->G3([B)V

    goto/16 :goto_1

    :pswitch_4
    new-array v1, v14, [I

    aput v12, v1, v16

    aput v17, v1, v8

    aput v4, v1, v4

    .line 5
    aget v3, v2, v16

    aput v3, v1, v15

    aget v2, v2, v8

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_5
    new-array v1, v14, [I

    aput v12, v1, v16

    const/16 v3, 0xa0

    aput v3, v1, v8

    aput v4, v1, v4

    .line 6
    aget v3, v2, v16

    aput v3, v1, v15

    aget v2, v2, v8

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 7
    :pswitch_6
    aget v1, v2, v16

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v15, :cond_0

    new-array v1, v14, [I

    aput v12, v1, v16

    aput v17, v1, v8

    aput v4, v1, v4

    .line 8
    aget v3, v2, v16

    aput v3, v1, v15

    aget v2, v2, v8

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 9
    :cond_0
    aget v1, v2, v8

    invoke-virtual {v0, v1}, Lmodule/canbus/c;->E3(I)V

    goto/16 :goto_1

    .line 10
    :cond_1
    aget v1, v2, v8

    invoke-virtual {v0, v1}, Lmodule/canbus/c;->C3(I)V

    goto/16 :goto_1

    .line 11
    :cond_2
    aget v1, v2, v8

    invoke-virtual {v0, v1}, Lmodule/canbus/c;->D3(I)V

    goto/16 :goto_1

    :pswitch_7
    new-array v1, v11, [I

    aput v12, v1, v16

    const/16 v3, 0xa6

    aput v3, v1, v8

    aput v15, v1, v4

    .line 12
    aget v3, v2, v16

    aput v3, v1, v15

    aget v3, v2, v8

    aput v3, v1, v13

    aget v2, v2, v4

    aput v2, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_8
    new-array v1, v11, [I

    aput v12, v1, v16

    const/16 v3, 0xef

    aput v3, v1, v8

    aput v15, v1, v4

    const/16 v3, 0x7d

    aput v3, v1, v15

    const/16 v3, 0x4b

    aput v3, v1, v13

    .line 13
    aget v2, v2, v16

    aput v2, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_9
    const/16 v1, 0xa

    new-array v1, v1, [B

    aput-byte v3, v1, v16

    const/16 v3, -0x39

    aput-byte v3, v1, v8

    aput-byte v11, v1, v4

    .line 14
    aget v3, v2, v16

    int-to-byte v3, v3

    aput-byte v3, v1, v15

    aget v3, v2, v8

    int-to-byte v3, v3

    aput-byte v3, v1, v13

    aget v3, v2, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v14

    aget v3, v2, v15

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    aget v3, v2, v13

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    aget v3, v2, v14

    int-to-byte v3, v3

    aput-byte v3, v1, v10

    aput-byte v16, v1, v9

    invoke-static {v1}, Lmodule/canbus/c;->G3([B)V

    .line 15
    aget v1, v2, v16

    if-nez v1, :cond_3

    aget v1, v2, v8

    if-nez v1, :cond_3

    aget v1, v2, v4

    if-nez v1, :cond_3

    aget v1, v2, v15

    if-nez v1, :cond_3

    aget v1, v2, v13

    if-nez v1, :cond_3

    aget v1, v2, v14

    if-nez v1, :cond_3

    const-wide/16 v1, 0x64

    .line 16
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array v1, v14, [B

    .line 17
    fill-array-data v1, :array_0

    invoke-static {v1}, Lmodule/canbus/c;->G3([B)V

    .line 18
    :cond_3
    iput v8, v0, Lmodule/canbus/c;->n0:I

    goto/16 :goto_1

    :pswitch_a
    if-eqz v2, :cond_7

    .line 19
    aget v1, v2, v16

    if-ne v1, v8, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v8, v16

    :goto_0
    iput-boolean v8, v0, Lmodule/canbus/c;->i0:Z

    goto/16 :goto_1

    .line 20
    :pswitch_b
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v14, [I

    aput v12, v1, v16

    aput v17, v1, v8

    aput v4, v1, v4

    aput v16, v1, v15

    .line 21
    aget v2, v2, v16

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_c
    new-array v1, v14, [I

    .line 22
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_d
    new-array v1, v14, [I

    .line 23
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {v0, v2, v4}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    aget v1, v2, v8

    mul-int/lit16 v1, v1, 0x500

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 26
    aget v3, v2, v4

    mul-int/lit16 v3, v3, 0x2d0

    invoke-static {}, La/f;->i()I

    move-result v17

    div-int v3, v3, v17

    .line 27
    aget v17, v2, v16

    if-nez v17, :cond_6

    new-array v2, v6, [I

    aput v12, v2, v16

    aput v5, v2, v8

    aput v9, v2, v4

    aput v8, v2, v15

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v13

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v14

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v11

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v7

    aput v16, v2, v10

    aput v16, v2, v9

    const/16 v1, 0xa

    aput v16, v2, v1

    const/16 v1, 0xb

    aput v16, v2, v1

    .line 28
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    .line 29
    :cond_6
    aget v2, v2, v16

    if-ne v2, v8, :cond_7

    new-array v2, v6, [I

    aput v12, v2, v16

    aput v5, v2, v8

    aput v9, v2, v4

    aput v16, v2, v15

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v13

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v14

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v11

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v7

    aput v16, v2, v10

    aput v16, v2, v9

    const/16 v1, 0xa

    aput v16, v2, v1

    const/16 v1, 0xb

    aput v16, v2, v1

    .line 30
    invoke-static {v2}, Lz/k;->s([I)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2et
        -0x70t
        0x1t
        0x21t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2
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
    sget-object v0, Lmodule/canbus/c;->C0:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/c;->B0:I

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 15

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v1, :cond_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/16 v5, 0x11

    const/16 v6, 0xd0

    const/16 v7, 0xe3

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x7

    const/4 v13, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v11, :cond_1

    if-eq v0, v13, :cond_1

    const/16 v14, 0x9

    packed-switch v0, :pswitch_data_0

    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v3, [I

    aput v7, v0, v8

    aput v6, v0, v1

    aput v12, v0, v11

    aput v5, v0, v13

    aput v9, v0, v10

    .line 5
    sget v1, Lu0/b;->s3:I

    rem-int/lit8 v3, v1, 0x64

    aput v3, v0, v2

    div-int/lit8 v1, v1, 0x64

    aput v1, v0, v9

    sget v1, Lu0/b;->t3:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v0, v12

    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v0, v4

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    aput v7, v0, v8

    aput v6, v0, v1

    aput v12, v0, v11

    aput v5, v0, v13

    aput v13, v0, v10

    .line 6
    sget v1, Lu0/b;->s3:I

    rem-int/lit8 v3, v1, 0x64

    aput v3, v0, v2

    div-int/lit8 v1, v1, 0x64

    aput v1, v0, v9

    sget v1, Lu0/b;->t3:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v0, v12

    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    aput v2, v0, v4

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_2
    sget v0, Lw0/d;->i:I

    .line 9
    sget v14, Lw0/d;->h:I

    if-eqz v14, :cond_3

    if-eq v14, v1, :cond_3

    packed-switch v14, :pswitch_data_1

    goto :goto_0

    .line 10
    :pswitch_2
    sget v0, Lw0/d;->i:I

    mul-int/2addr v0, v3

    new-array v3, v4, [I

    aput v7, v3, v8

    aput v6, v3, v1

    aput v2, v3, v11

    aput v5, v3, v13

    aput v10, v3, v10

    .line 11
    rem-int/lit8 v1, v0, 0x64

    aput v1, v3, v2

    rem-int/lit16 v1, v0, 0x2710

    div-int/lit8 v1, v1, 0x64

    aput v1, v3, v9

    div-int/lit16 v0, v0, 0x2710

    aput v0, v3, v12

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v3, v4, [I

    aput v7, v3, v8

    aput v6, v3, v1

    aput v2, v3, v11

    aput v5, v3, v13

    aput v2, v3, v10

    .line 12
    rem-int/lit8 v1, v0, 0x64

    aput v1, v3, v2

    rem-int/lit16 v1, v0, 0x2710

    div-int/lit8 v1, v1, 0x64

    aput v1, v3, v9

    div-int/lit16 v0, v0, 0x2710

    aput v0, v3, v12

    invoke-static {v3}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xd0
        0x2
        0x11
        0x8
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xd0
        0x2
        0x11
        0x7
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xd0
        0x2
        0x11
        0x1
    .end array-data
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
    iget v1, p0, Lmodule/canbus/c;->q:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lmodule/canbus/c;->q:I

    .line 5
    iput v0, p0, Lmodule/canbus/c;->r:I

    .line 6
    iput v0, p0, Lmodule/canbus/c;->s:I

    .line 7
    :cond_2
    iget-object v1, p0, Lmodule/canbus/c;->p:[B

    iget v2, p0, Lmodule/canbus/c;->q:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lmodule/canbus/c;->q:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lmodule/canbus/c;->q:I

    .line 9
    iget p1, p0, Lmodule/canbus/c;->s:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lmodule/canbus/c;->p:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lmodule/canbus/c;->s:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lmodule/canbus/c;->p:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lmodule/canbus/c;->p:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lmodule/canbus/c;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lmodule/canbus/c;->s:I

    add-int/2addr p1, v4

    iput p1, p0, Lmodule/canbus/c;->r:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lmodule/canbus/c;->r:I

    .line 18
    :goto_1
    iput v0, p0, Lmodule/canbus/c;->s:I

    .line 19
    :cond_6
    iget p1, p0, Lmodule/canbus/c;->q:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lmodule/canbus/c;->r:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lmodule/canbus/c;->p:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lmodule/canbus/c;->s:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lmodule/canbus/c;->s:I

    .line 23
    iget v6, p0, Lmodule/canbus/c;->q:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lmodule/canbus/c;->s:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lmodule/canbus/c;->s:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lmodule/canbus/c;->p:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lmodule/canbus/c;->p:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lmodule/canbus/c;->r:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lmodule/canbus/c;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lmodule/canbus/c;->s:I

    iput v1, p0, Lmodule/canbus/c;->r:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lmodule/canbus/c;->r:I

    add-int/2addr v1, v4

    iput v1, p0, Lmodule/canbus/c;->r:I

    .line 33
    :goto_4
    iput v0, p0, Lmodule/canbus/c;->s:I

    .line 34
    :cond_a
    iget v1, p0, Lmodule/canbus/c;->r:I

    add-int/2addr v1, v4

    iput v1, p0, Lmodule/canbus/c;->r:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lmodule/canbus/c;->q:I

    sub-int/2addr p1, v1

    iput p1, p0, Lmodule/canbus/c;->q:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lmodule/canbus/c;->p:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lmodule/canbus/c;->r:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final b3()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->i:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget v0, Ly0/f;->C0:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0xd0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    const/16 v4, 0x11

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v2, 0x5

    aput v0, v1, v2

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xd0
        0x3
        0x11
        0x2
        0x0
    .end array-data
.end method

.method public final c3(I)I
    .locals 8

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    .line 1
    rem-int/lit16 p1, p1, 0x168

    :cond_0
    if-gez p1, :cond_1

    .line 2
    rem-int/lit16 p1, p1, 0x168

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rsub-int p1, p1, 0x168

    :cond_1
    int-to-double v1, p1

    const-wide v3, 0x4036800000000000L    # 22.5

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2

    if-gez p1, :cond_3

    :cond_2
    const-wide v5, 0x4075180000000000L    # 337.5

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_4

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    goto/16 :goto_0

    :cond_4
    cmpl-double p1, v1, v3

    const-wide v3, 0x4050e00000000000L    # 67.5

    if-lez p1, :cond_5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_5

    const/4 p1, 0x2

    goto :goto_0

    :cond_5
    cmpl-double p1, v1, v3

    const-wide v3, 0x405c200000000000L    # 112.5

    if-ltz p1, :cond_6

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x4

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x6

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/16 p1, 0x8

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/16 p1, 0xa

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/16 p1, 0xc

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/16 p1, 0xe

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final d3()V
    .locals 11

    .line 1
    iget v0, p0, Lmodule/canbus/c;->Y:I

    if-ltz v0, :cond_2

    sget-object v1, Lmodule/canbus/c;->z0:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lmodule/canbus/c;->Z:I

    if-nez v0, :cond_1

    iget v1, p0, Lmodule/canbus/c;->V:I

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, p0, Lmodule/canbus/c;->U:I

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    .line 4
    iget v3, p0, Lmodule/canbus/c;->T:I

    mul-int/2addr v3, v2

    const/16 v4, 0x13

    new-array v4, v4, [I

    const/16 v5, 0xe3

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    const/16 v7, 0xa2

    aput v7, v4, v5

    const/4 v5, 0x2

    const/16 v7, 0x10

    aput v7, v4, v5

    const/4 v5, 0x3

    .line 5
    iget v8, p0, Lmodule/canbus/c;->a0:I

    const/4 v9, 0x7

    shl-int/2addr v8, v9

    and-int/lit16 v8, v8, 0x80

    const/4 v10, 0x6

    shl-int/2addr v0, v10

    and-int/lit8 v0, v0, 0x40

    or-int/2addr v0, v8

    aput v0, v4, v5

    const/4 v0, 0x4

    iget v5, p0, Lmodule/canbus/c;->V:I

    .line 6
    invoke-virtual {p0, v5}, Lmodule/canbus/c;->c3(I)I

    move-result v5

    aput v5, v4, v0

    const/4 v0, 0x5

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    and-int/lit16 v0, v1, 0xff

    aput v0, v4, v10

    shr-int/lit8 v0, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v9

    and-int/lit16 v0, v3, 0xff

    const/16 v1, 0x8

    aput v0, v4, v1

    const/16 v0, 0x9

    sget-object v1, Lmodule/canbus/c;->z0:[I

    iget v3, p0, Lmodule/canbus/c;->Y:I

    aget v1, v1, v3

    aput v1, v4, v0

    aput v6, v4, v2

    const/16 v0, 0xb

    aput v6, v4, v0

    const/16 v0, 0xc

    aput v6, v4, v0

    const/16 v0, 0xd

    aput v6, v4, v0

    const/16 v0, 0xe

    aput v6, v4, v0

    const/16 v0, 0xf

    aput v6, v4, v0

    aput v6, v4, v7

    const/16 v0, 0x11

    aput v6, v4, v0

    const/16 v0, 0x12

    aput v6, v4, v0

    .line 7
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/c;->D0:Lo1/f;

    new-instance v1, Lmodule/canbus/c$u;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/c$u;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
