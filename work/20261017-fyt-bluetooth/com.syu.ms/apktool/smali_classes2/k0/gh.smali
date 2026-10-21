.class public Lk0/gh;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/gh$j;
    }
.end annotation


# static fields
.field public static A0:I = 0x0

.field public static B0:I = 0x0

.field public static C0:I = 0x0

.field public static D0:I = 0xff

.field public static k0:I = 0x0

.field public static l0:I = 0x0

.field public static m0:I = 0x0

.field public static n0:I = 0x0

.field public static o0:I = 0x14

.field public static p0:I = 0x24

.field public static q0:I = 0x1

.field public static r0:I = 0x0

.field public static s0:I = 0x0

.field public static t0:I = 0x0

.field public static u0:I = 0x0

.field public static v0:I = 0x0

.field public static w0:I = 0x32

.field public static x0:I = 0x80

.field public static y0:I = 0x80

.field public static z0:I = 0x80


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:I

.field public C:Z

.field public D:Ljava/lang/Runnable;

.field public E:Z

.field public F:Z

.field public G:Ljava/lang/Runnable;

.field public H:I

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:Lo1/g0;

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public final a0:I

.field public b:[[I

.field public final b0:I

.field public c:[[I

.field public final c0:I

.field public d:I

.field public final d0:I

.field public e:I

.field public e0:I

.field public f:Z

.field public f0:Ljava/lang/Runnable;

.field public g:I

.field public g0:Ljava/lang/Runnable;

.field public h:I

.field public h0:I

.field public i:I

.field public i0:Ljava/lang/Runnable;

.field public j:[[I

.field public j0:I

.field public k:[[I

.field public l:I

.field public m:I

.field public n:[[I

.field public final o:[B

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:Lk0/gh$j;

.field public x:Ljava/lang/Runnable;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/16 v1, 0xf

    new-array v2, v1, [[I

    .line 2
    iput-object v2, v0, Lk0/gh;->b:[[I

    const/4 v2, 0x5

    new-array v3, v2, [[I

    .line 3
    iput-object v3, v0, Lk0/gh;->c:[[I

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lk0/gh;->d:I

    .line 5
    iput v3, v0, Lk0/gh;->e:I

    .line 6
    iput-boolean v3, v0, Lk0/gh;->f:Z

    .line 7
    iput v3, v0, Lk0/gh;->g:I

    .line 8
    iput v3, v0, Lk0/gh;->i:I

    const/16 v4, 0x24

    new-array v4, v4, [[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 9
    fill-array-data v6, :array_0

    aput-object v6, v4, v3

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    const/4 v7, 0x1

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    const/4 v8, 0x3

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    const/4 v9, 0x4

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v2

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    const/4 v10, 0x6

    aput-object v6, v4, v10

    new-array v6, v5, [I

    fill-array-data v6, :array_7

    const/4 v11, 0x7

    aput-object v6, v4, v11

    new-array v6, v5, [I

    fill-array-data v6, :array_8

    const/16 v12, 0x8

    aput-object v6, v4, v12

    new-array v6, v5, [I

    fill-array-data v6, :array_9

    const/16 v13, 0x9

    aput-object v6, v4, v13

    new-array v6, v5, [I

    fill-array-data v6, :array_a

    const/16 v14, 0xa

    aput-object v6, v4, v14

    new-array v6, v5, [I

    fill-array-data v6, :array_b

    const/16 v15, 0xb

    aput-object v6, v4, v15

    new-array v6, v5, [I

    fill-array-data v6, :array_c

    const/16 v16, 0xc

    aput-object v6, v4, v16

    new-array v6, v5, [I

    fill-array-data v6, :array_d

    const/16 v17, 0xd

    aput-object v6, v4, v17

    new-array v6, v5, [I

    fill-array-data v6, :array_e

    const/16 v18, 0xe

    aput-object v6, v4, v18

    new-array v6, v5, [I

    fill-array-data v6, :array_f

    aput-object v6, v4, v1

    new-array v6, v5, [I

    fill-array-data v6, :array_10

    const/16 v19, 0x10

    aput-object v6, v4, v19

    new-array v6, v5, [I

    fill-array-data v6, :array_11

    const/16 v20, 0x11

    aput-object v6, v4, v20

    new-array v6, v5, [I

    fill-array-data v6, :array_12

    const/16 v1, 0x12

    aput-object v6, v4, v1

    new-array v6, v5, [I

    fill-array-data v6, :array_13

    const/16 v1, 0x13

    aput-object v6, v4, v1

    new-array v6, v5, [I

    fill-array-data v6, :array_14

    const/16 v15, 0x14

    aput-object v6, v4, v15

    new-array v6, v5, [I

    fill-array-data v6, :array_15

    const/16 v15, 0x15

    aput-object v6, v4, v15

    new-array v6, v5, [I

    fill-array-data v6, :array_16

    const/16 v22, 0x16

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_17

    const/16 v22, 0x17

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_18

    const/16 v22, 0x18

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_19

    const/16 v22, 0x19

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_1a

    const/16 v22, 0x1a

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_1b

    const/16 v22, 0x1b

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_1c

    const/16 v22, 0x1c

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_1d

    const/16 v22, 0x1d

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_1e

    const/16 v22, 0x1e

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_1f

    const/16 v22, 0x1f

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_20

    const/16 v22, 0x20

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_21

    const/16 v22, 0x21

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_22

    const/16 v22, 0x22

    aput-object v6, v4, v22

    new-array v6, v5, [I

    fill-array-data v6, :array_23

    const/16 v22, 0x23

    aput-object v6, v4, v22

    iput-object v4, v0, Lk0/gh;->j:[[I

    new-array v4, v1, [[I

    new-array v6, v5, [I

    .line 10
    fill-array-data v6, :array_24

    aput-object v6, v4, v3

    new-array v6, v5, [I

    fill-array-data v6, :array_25

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_26

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_27

    aput-object v6, v4, v8

    new-array v6, v5, [I

    fill-array-data v6, :array_28

    aput-object v6, v4, v9

    new-array v6, v5, [I

    fill-array-data v6, :array_29

    aput-object v6, v4, v2

    new-array v6, v5, [I

    fill-array-data v6, :array_2a

    aput-object v6, v4, v10

    new-array v6, v5, [I

    fill-array-data v6, :array_2b

    aput-object v6, v4, v11

    new-array v6, v5, [I

    fill-array-data v6, :array_2c

    aput-object v6, v4, v12

    new-array v6, v5, [I

    fill-array-data v6, :array_2d

    aput-object v6, v4, v13

    new-array v6, v5, [I

    fill-array-data v6, :array_2e

    aput-object v6, v4, v14

    new-array v6, v5, [I

    fill-array-data v6, :array_2f

    const/16 v21, 0xb

    aput-object v6, v4, v21

    new-array v6, v5, [I

    fill-array-data v6, :array_30

    aput-object v6, v4, v16

    new-array v6, v5, [I

    fill-array-data v6, :array_31

    aput-object v6, v4, v17

    new-array v6, v5, [I

    fill-array-data v6, :array_32

    aput-object v6, v4, v18

    new-array v6, v5, [I

    fill-array-data v6, :array_33

    const/16 v16, 0xf

    aput-object v6, v4, v16

    new-array v6, v5, [I

    fill-array-data v6, :array_34

    aput-object v6, v4, v19

    new-array v6, v5, [I

    fill-array-data v6, :array_35

    aput-object v6, v4, v20

    new-array v6, v5, [I

    fill-array-data v6, :array_36

    const/16 v16, 0x12

    aput-object v6, v4, v16

    iput-object v4, v0, Lk0/gh;->k:[[I

    .line 11
    iput v3, v0, Lk0/gh;->m:I

    const/16 v4, 0xb

    new-array v6, v4, [[I

    new-array v4, v5, [I

    .line 12
    fill-array-data v4, :array_37

    aput-object v4, v6, v3

    new-array v4, v5, [I

    fill-array-data v4, :array_38

    aput-object v4, v6, v7

    new-array v4, v5, [I

    fill-array-data v4, :array_39

    aput-object v4, v6, v5

    new-array v4, v5, [I

    fill-array-data v4, :array_3a

    aput-object v4, v6, v8

    new-array v4, v5, [I

    fill-array-data v4, :array_3b

    aput-object v4, v6, v9

    new-array v4, v5, [I

    fill-array-data v4, :array_3c

    aput-object v4, v6, v2

    new-array v4, v5, [I

    fill-array-data v4, :array_3d

    aput-object v4, v6, v10

    new-array v4, v5, [I

    fill-array-data v4, :array_3e

    aput-object v4, v6, v11

    new-array v4, v5, [I

    fill-array-data v4, :array_3f

    aput-object v4, v6, v12

    new-array v4, v5, [I

    fill-array-data v4, :array_40

    aput-object v4, v6, v13

    new-array v4, v5, [I

    fill-array-data v4, :array_41

    aput-object v4, v6, v14

    iput-object v6, v0, Lk0/gh;->n:[[I

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 13
    iput-object v4, v0, Lk0/gh;->o:[B

    .line 14
    iput v3, v0, Lk0/gh;->p:I

    .line 15
    iput v3, v0, Lk0/gh;->q:I

    .line 16
    iput v3, v0, Lk0/gh;->r:I

    .line 17
    iput v3, v0, Lk0/gh;->s:I

    .line 18
    iput v3, v0, Lk0/gh;->t:I

    const/4 v4, -0x1

    .line 19
    iput v4, v0, Lk0/gh;->u:I

    .line 20
    iput-boolean v3, v0, Lk0/gh;->v:Z

    .line 21
    new-instance v4, Lk0/gh$a;

    invoke-direct {v4, v0}, Lk0/gh$a;-><init>(Lk0/gh;)V

    iput-object v4, v0, Lk0/gh;->x:Ljava/lang/Runnable;

    .line 22
    iput v3, v0, Lk0/gh;->y:I

    .line 23
    iput v3, v0, Lk0/gh;->z:I

    .line 24
    new-instance v4, Lk0/gh$b;

    invoke-direct {v4, v0}, Lk0/gh$b;-><init>(Lk0/gh;)V

    iput-object v4, v0, Lk0/gh;->A:Ljava/lang/Runnable;

    .line 25
    iput v3, v0, Lk0/gh;->B:I

    .line 26
    iput-boolean v3, v0, Lk0/gh;->C:Z

    .line 27
    new-instance v4, Lk0/gh$c;

    invoke-direct {v4, v0}, Lk0/gh$c;-><init>(Lk0/gh;)V

    iput-object v4, v0, Lk0/gh;->D:Ljava/lang/Runnable;

    .line 28
    iput-boolean v3, v0, Lk0/gh;->E:Z

    .line 29
    iput-boolean v3, v0, Lk0/gh;->F:Z

    .line 30
    new-instance v4, Lk0/gh$d;

    invoke-direct {v4, v0}, Lk0/gh$d;-><init>(Lk0/gh;)V

    iput-object v4, v0, Lk0/gh;->G:Ljava/lang/Runnable;

    .line 31
    iput v3, v0, Lk0/gh;->H:I

    .line 32
    new-instance v4, Lk0/gh$e;

    invoke-direct {v4, v0}, Lk0/gh$e;-><init>(Lk0/gh;)V

    iput-object v4, v0, Lk0/gh;->I:Ljava/lang/Runnable;

    .line 33
    new-instance v4, Lk0/gh$f;

    invoke-direct {v4, v0}, Lk0/gh$f;-><init>(Lk0/gh;)V

    iput-object v4, v0, Lk0/gh;->J:Ljava/lang/Runnable;

    .line 34
    new-instance v4, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x20

    invoke-direct {v4, v6, v10}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v4, v0, Lk0/gh;->K:Lo1/g0;

    .line 35
    iput v7, v0, Lk0/gh;->L:I

    .line 36
    iput v12, v0, Lk0/gh;->M:I

    .line 37
    iput v13, v0, Lk0/gh;->N:I

    .line 38
    iput v14, v0, Lk0/gh;->O:I

    const/16 v4, 0xb

    .line 39
    iput v4, v0, Lk0/gh;->P:I

    .line 40
    iput v5, v0, Lk0/gh;->Q:I

    .line 41
    iput v8, v0, Lk0/gh;->R:I

    .line 42
    iput v9, v0, Lk0/gh;->S:I

    .line 43
    iput v2, v0, Lk0/gh;->T:I

    const/16 v2, 0xf

    .line 44
    iput v2, v0, Lk0/gh;->U:I

    const/16 v2, 0x12

    .line 45
    iput v2, v0, Lk0/gh;->V:I

    .line 46
    iput v1, v0, Lk0/gh;->W:I

    const/16 v1, 0x14

    .line 47
    iput v1, v0, Lk0/gh;->X:I

    .line 48
    iput v15, v0, Lk0/gh;->Y:I

    const/16 v1, 0x16

    .line 49
    iput v1, v0, Lk0/gh;->Z:I

    const/16 v1, 0x17

    .line 50
    iput v1, v0, Lk0/gh;->a0:I

    const/16 v1, 0x18

    .line 51
    iput v1, v0, Lk0/gh;->b0:I

    const/16 v1, 0x19

    .line 52
    iput v1, v0, Lk0/gh;->c0:I

    const/16 v1, 0x1a

    .line 53
    iput v1, v0, Lk0/gh;->d0:I

    .line 54
    iput v3, v0, Lk0/gh;->e0:I

    .line 55
    new-instance v1, Lk0/gh$g;

    invoke-direct {v1, v0}, Lk0/gh$g;-><init>(Lk0/gh;)V

    iput-object v1, v0, Lk0/gh;->f0:Ljava/lang/Runnable;

    .line 56
    new-instance v1, Lk0/gh$h;

    invoke-direct {v1, v0}, Lk0/gh$h;-><init>(Lk0/gh;)V

    iput-object v1, v0, Lk0/gh;->g0:Ljava/lang/Runnable;

    .line 57
    iput v3, v0, Lk0/gh;->h0:I

    .line 58
    new-instance v1, Lk0/gh$i;

    invoke-direct {v1, v0}, Lk0/gh$i;-><init>(Lk0/gh;)V

    iput-object v1, v0, Lk0/gh;->i0:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 59
    iput v1, v0, Lk0/gh;->j0:I

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
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0xd
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x20
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x21
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x22
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x23
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x11
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x12
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_14
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_15
    .array-data 4
        0x17
        0x1f
    .end array-data

    :array_16
    .array-data 4
        0x18
        0x1e
    .end array-data

    :array_17
    .array-data 4
        0x19
        0x3e
    .end array-data

    :array_18
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_19
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_1a
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_1c
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_1d
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_1e
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_1f
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_20
    .array-data 4
        0x89
        0x4a
    .end array-data

    :array_21
    .array-data 4
        0x8a
        0x3a
    .end array-data

    :array_22
    .array-data 4
        0x8b
        0x37
    .end array-data

    :array_23
    .array-data 4
        0x8c
        0x10
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_25
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_26
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_27
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_28
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_29
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_2a
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_2c
    .array-data 4
        0x15
        0x15
    .end array-data

    :array_2d
    .array-data 4
        0x16
        0x34
    .end array-data

    :array_2e
    .array-data 4
        0x17
        0x16
    .end array-data

    :array_2f
    .array-data 4
        0x18
        0x26
    .end array-data

    :array_30
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_31
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_32
    .array-data 4
        0x1b
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x1c
        0x4b
    .end array-data

    :array_34
    .array-data 4
        0x1d
        0x4a
    .end array-data

    :array_35
    .array-data 4
        0x1e
        0x40
    .end array-data

    :array_36
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_37
    .array-data 4
        0x1
        0x4b
    .end array-data

    :array_38
    .array-data 4
        0x2
        0x4a
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x4a
    .end array-data

    :array_3a
    .array-data 4
        0x4
        0x35
    .end array-data

    :array_3b
    .array-data 4
        0x5
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_3d
    .array-data 4
        0x7
        0x9
    .end array-data

    :array_3e
    .array-data 4
        0x8
        0x3a
    .end array-data

    :array_3f
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_40
    .array-data 4
        0x10
        0x26
    .end array-data

    :array_41
    .array-data 4
        0x11
        0x3e
    .end array-data
.end method

.method public static synthetic A3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->S3(I)V

    return-void
.end method

.method public static U3([B)V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x3f01c7

    if-eq v0, v4, :cond_2

    const v4, 0x3e01c7

    if-eq v0, v4, :cond_2

    const v4, 0x4801c7

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_4

    .line 2
    array-length v0, p0

    if-le v0, v2, :cond_4

    .line 3
    array-length v0, p0

    sub-int/2addr v0, v3

    :goto_0
    if-gt v3, v0, :cond_1

    .line 4
    aget-byte v2, p0, v3

    add-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 5
    aput-byte v1, p0, v0

    .line 6
    invoke-static {p0}, Lz/k;->q([B)V

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz p0, :cond_4

    .line 7
    array-length v0, p0

    if-le v0, v2, :cond_4

    .line 8
    array-length v0, p0

    sub-int/2addr v0, v3

    .line 9
    aget-byte v1, p0, v1

    :goto_2
    if-gt v3, v0, :cond_3

    .line 10
    aget-byte v2, p0, v3

    add-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 11
    aput-byte v1, p0, v0

    .line 12
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic d3(Lk0/gh;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/gh;->s:I

    return p0
.end method

.method public static synthetic e3(Lk0/gh;IIIII)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lk0/gh;->I3(IIIII)V

    return-void
.end method

.method public static synthetic f3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->R3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->G3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->H3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->F3(I)V

    return-void
.end method

.method public static synthetic j3()I
    .locals 1

    .line 1
    sget v0, Lk0/gh;->p0:I

    return v0
.end method

.method public static synthetic k3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->Q3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->P3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->O3(I)V

    return-void
.end method

.method public static synthetic n3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->K3(I)V

    return-void
.end method

.method public static synthetic o3(Lk0/gh;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->c3(Z)V

    return-void
.end method

.method public static synthetic p3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->T3(I)V

    return-void
.end method

.method public static synthetic q3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->B3(I)V

    return-void
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lk0/gh;->q0:I

    return v0
.end method

.method public static synthetic s3(Lk0/gh;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lk0/gh;->f:Z

    return p0
.end method

.method public static synthetic t3(Lk0/gh;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/gh;->f:Z

    return p1
.end method

.method public static synthetic u3(Lk0/gh;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/gh;->K:Lo1/g0;

    return-object p0
.end method

.method public static synthetic v3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->M3(I)V

    return-void
.end method

.method public static synthetic w3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->L3(I)V

    return-void
.end method

.method public static synthetic x3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->J3(I)V

    return-void
.end method

.method public static synthetic y3(Lk0/gh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/gh;->N3(I)V

    return-void
.end method

.method public static synthetic z3()I
    .locals 1

    .line 1
    sget v0, Lk0/gh;->D0:I

    return v0
.end method


# virtual methods
.method public final B3(I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0x84

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final C3(II)V
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

.method public final D3()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->a:I

    const v1, 0x5001c7

    const/high16 v2, 0x10000000

    const-string v3, "android.intent.category.DEFAULT"

    const-string v4, "com.syu.canbus"

    if-eq v0, v1, :cond_0

    const v1, 0x5101c7

    if-eq v0, v1, :cond_0

    const v1, 0x5401c7

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.Air_Activity_LZ_Haites_Toyota_UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 10
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final E3(II)V
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

.method public final F3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v2, 0x90

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->r0:I

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v2, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v2, [I

    .line 6
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/gh;->r0:I

    if-eq p1, v0, :cond_4

    .line 8
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_4
    return-void

    :array_0
    .array-data 4
        0xe3
        0x83
        0x2
        0x27
        0x8
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x2
        0x27
        0x7
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x2
        0x27
        0x5
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x2
        0x27
        0x4
    .end array-data
.end method

.method public final G3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x91

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->p0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v0, 0xb

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->p0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final H3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v2, 0x8f

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->q0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/gh;->q0:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final I3(IIIII)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x99

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p2, v1, v2

    const/16 v4, 0x9a

    .line 2
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p3, v1, v2

    const/16 v4, 0x9b

    .line 3
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p4, v1, v2

    const/16 v4, 0x9c

    .line 4
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v0, [I

    aput p5, v1, v2

    const/16 v4, 0x9d

    .line 5
    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/16 v4, 0xe3

    aput v4, v1, v2

    aput v3, v1, v0

    const/4 v0, 0x2

    const/4 v3, 0x5

    aput v3, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    const/4 v0, 0x4

    aput p2, v1, v0

    aput p3, v1, v3

    const/4 v0, 0x6

    aput p4, v1, v0

    const/4 v0, 0x7

    aput p5, v1, v0

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    .line 7
    sput p1, Lk0/gh;->v0:I

    .line 8
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->v0:I

    if-eq p1, v1, :cond_0

    .line 9
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    .line 10
    :cond_0
    sput p2, Lk0/gh;->w0:I

    .line 11
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 p2, 0x13

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/gh;->w0:I

    if-eq p1, v0, :cond_1

    .line 12
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, p2, v0}, Lo1/g0;->g(II)V

    .line 13
    :cond_1
    sput p3, Lk0/gh;->x0:I

    .line 14
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/gh;->x0:I

    if-eq p1, p3, :cond_2

    .line 15
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    .line 16
    :cond_2
    sput p4, Lk0/gh;->y0:I

    .line 17
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 p2, 0x15

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/gh;->y0:I

    if-eq p1, p3, :cond_3

    .line 18
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    .line 19
    :cond_3
    sput p5, Lk0/gh;->z0:I

    .line 20
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 p2, 0x16

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/gh;->z0:I

    if-eq p1, p3, :cond_4

    .line 21
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_4
    return-void
.end method

.method public final J3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa2

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->D0:I

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    const/16 v2, -0x7d

    aput v2, v3, v0

    const/4 v0, 0x2

    aput v0, v3, v0

    const/4 v0, 0x3

    const/16 v2, 0x27

    aput v2, v3, v0

    const/4 v0, 0x4

    aput p1, v3, v0

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->D0:I

    if-eq p1, v1, :cond_1

    .line 5
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final K3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa0

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->A0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/gh;->A0:I

    if-eq p1, v3, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v3, Lk0/gh;->A0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.allscreenon"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    sget v0, Lk0/gh;->A0:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final L3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0xa1

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->B0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->B0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final M3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x94

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->t0:I

    const/4 v1, 0x5

    new-array v3, v1, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    const/16 v4, 0x84

    aput v4, v3, v0

    const/4 v0, 0x2

    aput v0, v3, v0

    const/4 v0, 0x3

    const/16 v4, 0x61

    aput v4, v3, v0

    const/4 v0, 0x4

    aput p1, v3, v0

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/gh;->t0:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final N3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa3

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->C0:I

    const-string v1, "com.fyt.screenbutton"

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.fyt.screenbutton.CanbusShow"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.fyt.screenbutton.CanbusHide"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v0, 0x19

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->C0:I

    if-eq p1, v1, :cond_2

    .line 10
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final O3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x8d

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->n0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/gh;->n0:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/gh;->n0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.height"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    sget v0, Lk0/gh;->n0:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final P3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x8c

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->m0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/gh;->m0:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/gh;->m0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "%d"

    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.width"

    .line 5
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    sget v0, Lk0/gh;->m0:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final Q3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x93

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->s0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->s0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final R3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v1, 0x8e

    .line 1
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->o0:I

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->o0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gh;->I:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/gh;->g0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/gh;->i0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    .line 8
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    .line 12
    iput v1, v0, Lk0/mt;->l:I

    .line 13
    iget-object v0, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/gh;->T3(I)V

    .line 14
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 15
    :sswitch_0
    iget-object v0, p0, Lk0/gh;->i0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/gh;->g0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 17
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->b:I

    goto :goto_0

    .line 18
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->l:I

    goto :goto_0

    .line 19
    :sswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->l:I

    .line 20
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/gh;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 21
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ls18"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Lt18"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v3, p0, Lk0/gh;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v3, p0, Lk0/gh;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lk0/gh;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v3, p0, Lk0/gh;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 28
    sget v3, Lk0/nt;->a:I

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    .line 29
    :sswitch_4
    iput v1, v0, Lk0/mt;->i:I

    .line 30
    :goto_1
    new-instance v0, Lk0/gh$j;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lk0/gh$j;-><init>(Lk0/gh;Lk0/gh$a;)V

    iput-object v0, p0, Lk0/gh;->w:Lk0/gh$j;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.syu.canbus.fb.click"

    .line 32
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    iget-object v4, p0, Lk0/gh;->w:Lk0/gh$j;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 35
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 36
    invoke-static {}, La/f;->w()I

    move-result v0

    const/16 v1, 0x438

    if-ne v0, v1, :cond_2

    .line 37
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1101c7 -> :sswitch_3
        0x1201c7 -> :sswitch_3
        0x2801c6 -> :sswitch_3
        0x4501c8 -> :sswitch_2
        0x4601c7 -> :sswitch_3
        0x4801c7 -> :sswitch_3
        0x4b01c7 -> :sswitch_3
        0x5401c7 -> :sswitch_3
        0x7001b7 -> :sswitch_1
        0x7c01c5 -> :sswitch_0
        0x7d01c5 -> :sswitch_0
        0x8301c8 -> :sswitch_3
        0xc101c4 -> :sswitch_3
        0xc201c4 -> :sswitch_2
        0xf801c7 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2801c6 -> :sswitch_4
        0x3101c7 -> :sswitch_4
        0x3801c7 -> :sswitch_4
        0x3901c7 -> :sswitch_4
        0x4601c7 -> :sswitch_4
        0x9a01c7 -> :sswitch_4
        0x9b01c7 -> :sswitch_4
        0xa101c7 -> :sswitch_4
        0xe301c6 -> :sswitch_4
        0xe401c6 -> :sswitch_4
        0xf801c6 -> :sswitch_4
        0xf901c6 -> :sswitch_4
        0xfa01c6 -> :sswitch_4
    .end sparse-switch
.end method

.method public final S3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa5

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/gh;->u0:I

    const-string v1, "persist.fyt.androictrldvoice"

    if-ne p1, v0, :cond_0

    const-string p1, "1"

    .line 3
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 4
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->u0:I

    if-eq p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_1
    return-void
.end method

.method public final T3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/gh;->l0:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x88

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/gh;->l0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, 0x20

    const/16 v5, 0x1d

    const/16 v8, 0xa

    const/16 v9, 0x10

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x4

    const/4 v4, 0x5

    const/4 v10, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x31

    if-eq v2, v12, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    sget v2, Lk0/nt;->a:I

    const v12, 0x3e01c7

    if-eq v2, v12, :cond_1

    const v12, 0x3f01c7

    if-eq v2, v12, :cond_1

    const v12, 0x4801c7

    if-ne v2, v12, :cond_10

    :cond_1
    new-array v2, v11, [I

    add-int/lit8 v12, p2, 0x2

    .line 3
    aget-byte v18, v1, v12

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v8, v11, [I

    .line 4
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x5

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2a

    new-array v8, v11, [I

    .line 5
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v8, v11, [I

    .line 6
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5c

    new-array v8, v11, [I

    .line 7
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v8, v11, [I

    .line 8
    aget-byte v12, v1, v12

    shr-int/2addr v12, v7

    and-int/2addr v12, v11

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v8, v11, [I

    add-int/lit8 v12, p2, 0x3

    .line 9
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v8, v11, [I

    .line 10
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x6

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v8, v11, [I

    .line 11
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x36

    new-array v8, v11, [I

    .line 12
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x3

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v8, v11, [I

    .line 13
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v8, v11, [I

    .line 14
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x1

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x22

    new-array v8, v11, [I

    .line 15
    aget-byte v12, v1, v12

    shr-int/2addr v12, v7

    and-int/2addr v12, v11

    aput v12, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v8, v11, [I

    add-int/lit8 v12, p2, 0x4

    .line 16
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x7

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 17
    aget-byte v8, v1, v12

    shr-int/2addr v8, v4

    and-int/2addr v8, v11

    aput v8, v2, v7

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v8, v11, [I

    .line 18
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0x1

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v8, v11, [I

    .line 19
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x3

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 20
    aget-byte v8, v1, v12

    shr-int/2addr v8, v7

    and-int/2addr v8, v10

    aput v8, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v8, p2, 0x5

    .line 21
    aget-byte v12, v1, v8

    shr-int/2addr v12, v14

    and-int/2addr v12, v10

    aput v12, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v12, v11, [I

    .line 22
    aget-byte v19, v1, v8

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0x3

    aput v19, v12, v7

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4b

    new-array v12, v11, [I

    .line 23
    aget-byte v19, v1, v8

    shr-int/lit8 v19, v19, 0x2

    and-int/lit8 v19, v19, 0x1

    aput v19, v12, v7

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v12, v11, [I

    .line 24
    aget-byte v8, v1, v8

    shr-int/2addr v8, v11

    and-int/2addr v8, v11

    aput v8, v12, v7

    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v8, v11, [I

    add-int/lit8 v12, p2, 0x6

    .line 25
    aget-byte v19, v1, v12

    shr-int/lit8 v19, v19, 0x0

    const/16 v17, 0xf

    and-int/lit8 v19, v19, 0xf

    aput v19, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    .line 26
    aget-byte v2, v1, v12

    shr-int/2addr v2, v7

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v10, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v14, :cond_2

    packed-switch v2, :pswitch_data_0

    move v2, v7

    :goto_0
    move v8, v2

    :goto_1
    move v12, v8

    goto :goto_2

    :pswitch_0
    move v2, v11

    goto :goto_0

    :pswitch_1
    move v2, v7

    move v8, v11

    goto :goto_1

    :pswitch_2
    move v8, v7

    move v2, v11

    move v12, v2

    goto :goto_2

    :cond_2
    move v2, v7

    move v12, v2

    move v8, v11

    goto :goto_2

    :cond_3
    move v12, v7

    move v2, v11

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v7

    move v12, v8

    move v2, v11

    :goto_2
    const/16 v9, 0x14

    new-array v13, v11, [I

    aput v2, v13, v7

    .line 27
    invoke-static {v9, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v9, v11, [I

    aput v8, v9, v7

    .line 28
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v8, v11, [I

    aput v12, v8, v7

    .line 29
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v8, v11, [I

    aput v12, v8, v7

    .line 30
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v8, v11, [I

    add-int/lit8 v9, p2, 0x7

    .line 31
    aget-byte v9, v1, v9

    const/16 v12, 0xf

    and-int/2addr v9, v12

    aput v9, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 32
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v2, p2, 0x8

    .line 33
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    goto :goto_3

    :cond_5
    const/16 v8, 0xff

    add-int/lit8 v2, p2, 0x9

    .line 34
    aget-byte v2, v1, v2

    :goto_3
    and-int/2addr v2, v8

    const/16 v9, 0xfe

    if-ne v2, v9, :cond_6

    new-array v2, v11, [I

    const/4 v9, -0x2

    aput v9, v2, v7

    const/16 v9, 0x1b

    .line 35
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_6
    const/16 v9, 0x1b

    if-ne v2, v8, :cond_7

    new-array v2, v11, [I

    const/4 v8, -0x3

    aput v8, v2, v7

    .line 36
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_7
    new-array v8, v11, [I

    mul-int/2addr v2, v4

    aput v2, v8, v7

    .line 37
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    :goto_4
    const-string v2, "persist.fyt.reversetemp"

    .line 38
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v2, p2, 0x9

    .line 39
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    goto :goto_5

    :cond_8
    const/16 v8, 0xff

    add-int/lit8 v2, p2, 0x8

    .line 40
    aget-byte v2, v1, v2

    :goto_5
    and-int/2addr v2, v8

    const/16 v9, 0xfe

    if-ne v2, v9, :cond_9

    new-array v2, v11, [I

    const/4 v9, -0x2

    aput v9, v2, v7

    const/16 v9, 0x1c

    .line 41
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_9
    const/16 v9, 0x1c

    if-ne v2, v8, :cond_a

    new-array v2, v11, [I

    const/4 v8, -0x3

    aput v8, v2, v7

    .line 42
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_a
    new-array v8, v11, [I

    mul-int/2addr v2, v4

    aput v2, v8, v7

    .line 43
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0xa

    .line 44
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    and-int/2addr v2, v8

    if-eq v2, v11, :cond_d

    if-eq v2, v6, :cond_c

    if-eq v2, v10, :cond_b

    move v2, v7

    :goto_7
    move v8, v2

    goto :goto_8

    :cond_b
    move v2, v11

    goto :goto_7

    :cond_c
    move v2, v7

    move v8, v11

    goto :goto_8

    :cond_d
    move v8, v7

    move v2, v11

    :goto_8
    const/16 v9, 0x2f

    new-array v12, v11, [I

    aput v2, v12, v7

    .line 45
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v9, v11, [I

    aput v8, v9, v7

    .line 46
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v8, v11, [I

    add-int/lit8 v9, p2, 0xb

    .line 47
    aget-byte v9, v1, v9

    const/16 v12, 0xf

    and-int/2addr v9, v12

    aput v9, v8, v7

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 48
    aget-byte v2, v1, v2

    const/16 v8, 0xff

    and-int/2addr v2, v8

    const/16 v9, 0xfe

    if-ne v2, v9, :cond_e

    new-array v2, v11, [I

    const/4 v9, -0x2

    aput v9, v2, v7

    const/16 v9, 0x28

    .line 49
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_e
    const/16 v9, 0x28

    if-ne v2, v8, :cond_f

    new-array v2, v11, [I

    const/4 v8, -0x3

    aput v8, v2, v7

    .line 50
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_f
    new-array v8, v11, [I

    mul-int/2addr v2, v4

    aput v2, v8, v7

    .line 51
    invoke-static {v9, v8}, Lk0/qt;->y0(I[I)V

    .line 52
    :cond_10
    :goto_9
    aget-byte v2, v1, p2

    if-eq v2, v5, :cond_78

    const/16 v8, 0x1e

    if-eq v2, v8, :cond_77

    if-eq v2, v3, :cond_5f

    const/16 v8, 0x35

    if-eq v2, v8, :cond_5e

    const/16 v8, 0x62

    if-eq v2, v8, :cond_5d

    const/16 v8, 0x23

    if-eq v2, v8, :cond_5a

    const/16 v8, 0x24

    if-eq v2, v8, :cond_57

    const/16 v8, 0x64

    if-eq v2, v8, :cond_51

    const/16 v8, 0x65

    if-eq v2, v8, :cond_4f

    const/4 v8, -0x1

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_33

    .line 53
    :pswitch_3
    sget v2, Lk0/nt;->a:I

    const v8, 0x6501c6

    if-eq v2, v8, :cond_11

    goto/16 :goto_33

    :cond_11
    new-array v2, v11, [I

    add-int/lit8 v8, p2, 0x2

    .line 54
    aget-byte v9, v1, v8

    shr-int/2addr v9, v15

    and-int/2addr v9, v10

    aput v9, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v5, v11, [I

    .line 55
    aget-byte v9, v1, v8

    shr-int/2addr v9, v7

    and-int/2addr v9, v10

    aput v9, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v5, v11, [I

    .line 56
    aget-byte v9, v1, v8

    shr-int/2addr v9, v14

    and-int/2addr v9, v10

    aput v9, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 57
    aget-byte v5, v1, v8

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v2, v7

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 58
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v11, [I

    .line 59
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_33

    .line 60
    :pswitch_4
    sget v2, Lk0/nt;->a:I

    const v3, 0x6501c6

    if-eq v2, v3, :cond_12

    goto/16 :goto_33

    :cond_12
    const/16 v2, 0x47

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 61
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v11, [I

    .line 62
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v3, v11, [I

    .line 63
    aget-byte v1, v1, v4

    shr-int/2addr v1, v10

    and-int/2addr v1, v11

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_33

    .line 64
    :pswitch_5
    sget v2, Lk0/nt;->a:I

    const v5, 0x6501c6

    if-eq v2, v5, :cond_13

    goto/16 :goto_33

    :cond_13
    const/16 v2, 0x25

    new-array v5, v11, [I

    add-int/lit8 v9, p2, 0x5

    .line 65
    aget-byte v12, v1, v9

    const/4 v13, 0x7

    shr-int/2addr v12, v13

    and-int/2addr v12, v11

    aput v12, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 66
    aget-byte v2, v1, v9

    shr-int/2addr v2, v13

    and-int/2addr v2, v11

    add-int/lit8 v5, p2, 0x2

    .line 67
    aget-byte v12, v1, v5

    const/16 v13, 0xff

    and-int/2addr v12, v13

    add-int/lit8 v16, p2, 0x3

    .line 68
    aget-byte v14, v1, v16

    and-int/2addr v14, v13

    const-string v10, "persist.fyt.reversetemp"

    .line 69
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 70
    aget-byte v10, v1, v16

    and-int/lit16 v12, v10, 0xff

    .line 71
    aget-byte v5, v1, v5

    and-int/lit16 v14, v5, 0xff

    :cond_14
    const/16 v5, 0x10

    if-eq v12, v5, :cond_19

    const/16 v5, 0x50

    if-eq v12, v5, :cond_18

    if-ne v2, v11, :cond_16

    const/16 v5, 0x22

    if-lt v12, v5, :cond_15

    const/16 v5, 0x36

    if-gt v12, v5, :cond_15

    new-array v5, v11, [I

    const/16 v10, 0xa

    mul-int/2addr v12, v10

    add-int/lit16 v12, v12, 0x136

    aput v12, v5, v7

    const/16 v10, 0x1b

    .line 72
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_15
    const/16 v10, 0x1b

    new-array v5, v11, [I

    aput v8, v5, v7

    .line 73
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_16
    const/16 v10, 0x1b

    if-lt v12, v3, :cond_17

    const/16 v5, 0x40

    if-gt v12, v5, :cond_17

    new-array v5, v11, [I

    mul-int/2addr v12, v4

    aput v12, v5, v7

    .line 74
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_17
    new-array v5, v11, [I

    aput v8, v5, v7

    .line 75
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_18
    const/16 v10, 0x1b

    new-array v5, v11, [I

    const/4 v12, -0x3

    aput v12, v5, v7

    .line 76
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_19
    const/16 v10, 0x1b

    new-array v5, v11, [I

    const/4 v12, -0x2

    aput v12, v5, v7

    .line 77
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    :goto_a
    const/16 v5, 0x10

    if-eq v14, v5, :cond_1e

    const/16 v5, 0x50

    if-eq v14, v5, :cond_1d

    if-ne v2, v11, :cond_1b

    const/16 v2, 0x22

    if-lt v14, v2, :cond_1a

    const/16 v2, 0x36

    if-gt v14, v2, :cond_1a

    new-array v2, v11, [I

    const/16 v3, 0xa

    mul-int/2addr v14, v3

    add-int/lit16 v14, v14, 0x136

    aput v14, v2, v7

    const/16 v5, 0x1c

    .line 78
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1a
    const/16 v5, 0x1c

    new-array v2, v11, [I

    aput v8, v2, v7

    .line 79
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1b
    const/16 v5, 0x1c

    if-lt v14, v3, :cond_1c

    const/16 v2, 0x40

    if-gt v14, v2, :cond_1c

    new-array v2, v11, [I

    mul-int/2addr v14, v4

    aput v14, v2, v7

    .line 80
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1c
    new-array v2, v11, [I

    aput v8, v2, v7

    .line 81
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1d
    const/16 v5, 0x1c

    new-array v2, v11, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 82
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_1e
    const/16 v5, 0x1c

    new-array v2, v11, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 83
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v2, 0x15

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 84
    aget-byte v5, v1, v4

    const/16 v8, 0xf

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 85
    aget-byte v2, v1, v4

    shr-int/2addr v2, v15

    and-int/2addr v2, v8

    packed-switch v2, :pswitch_data_4

    move v2, v7

    :goto_c
    move v3, v2

    :goto_d
    move v4, v3

    goto :goto_e

    :pswitch_6
    move v2, v11

    goto :goto_c

    :pswitch_7
    move v3, v7

    move v4, v3

    move v2, v11

    goto :goto_e

    :pswitch_8
    move v4, v7

    move v2, v11

    move v3, v2

    goto :goto_e

    :pswitch_9
    move v3, v7

    move v2, v11

    move v4, v2

    goto :goto_e

    :pswitch_a
    move v2, v7

    move v3, v2

    move v4, v11

    goto :goto_e

    :pswitch_b
    move v2, v7

    move v3, v11

    goto :goto_d

    :pswitch_c
    move v2, v7

    move v4, v2

    move v3, v11

    :goto_e
    const/16 v5, 0x12

    new-array v8, v11, [I

    aput v2, v8, v7

    .line 86
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v5, v11, [I

    aput v3, v5, v7

    .line 87
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v11, [I

    aput v4, v3, v7

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v3, v11, [I

    .line 89
    aget-byte v4, v1, v9

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v3, v11, [I

    .line 90
    aget-byte v4, v1, v9

    const/4 v5, 0x3

    shr-int/2addr v4, v5

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x6

    .line 91
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v3, v11, [I

    .line 92
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v3, v11, [I

    .line 93
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v11, [I

    .line 94
    aget-byte v5, v1, v4

    const/4 v6, 0x3

    shr-int/2addr v5, v6

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 95
    aget-byte v3, v1, v4

    const/4 v5, 0x6

    shr-int/2addr v3, v5

    and-int/2addr v3, v11

    aput v3, v2, v7

    const/16 v3, 0x10

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 96
    aget-byte v3, v1, v4

    const/4 v4, 0x7

    shr-int/2addr v3, v4

    and-int/2addr v3, v11

    aput v3, v2, v7

    const/16 v3, 0xf

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 97
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eqz v1, :cond_20

    if-ne v1, v2, :cond_1f

    goto :goto_f

    :cond_1f
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 98
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_33

    .line 99
    :cond_20
    :goto_f
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_33

    :pswitch_d
    add-int/lit8 v2, p2, 0x2

    .line 100
    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v2, 0x6

    if-eqz v2, :cond_22

    if-nez v3, :cond_21

    .line 101
    invoke-virtual {v0, v11}, Lk0/gh;->B3(I)V

    .line 102
    :cond_21
    iput-boolean v11, v0, Lk0/gh;->v:Z

    goto :goto_10

    .line 103
    :cond_22
    iput-boolean v7, v0, Lk0/gh;->v:Z

    :goto_10
    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_23

    move v1, v7

    goto :goto_11

    :cond_23
    move v1, v11

    .line 104
    :goto_11
    sput v1, Lk0/gh;->k0:I

    const/16 v2, 0x3f5

    new-array v3, v11, [I

    aput v1, v3, v7

    .line 105
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 106
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_25

    .line 107
    iget v1, v0, Lk0/gh;->d:I

    sget v2, Lk0/gh;->k0:I

    if-eq v1, v2, :cond_7c

    .line 108
    iput v2, v0, Lk0/gh;->d:I

    .line 109
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 110
    iget v1, v0, Lk0/gh;->d:I

    if-ne v1, v11, :cond_24

    .line 111
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_7c

    const/16 v1, 0xa4

    new-array v2, v11, [I

    aput v11, v2, v7

    .line 112
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "true"

    .line 113
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    .line 114
    invoke-static {v1, v2}, La/i;->a0(J)V

    .line 115
    iput-boolean v11, v0, Lk0/gh;->f:Z

    .line 116
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_33

    :cond_24
    if-nez v1, :cond_7c

    .line 117
    iget-boolean v1, v0, Lk0/gh;->f:Z

    if-eqz v1, :cond_7c

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_7c

    const/16 v1, 0xa4

    new-array v2, v11, [I

    aput v7, v2, v7

    .line 118
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const-wide/16 v1, 0x15e

    .line 119
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "false"

    .line 120
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 121
    :cond_25
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 122
    sget v1, Lk0/nt;->a:I

    const v2, 0xa601c7

    if-ne v1, v2, :cond_27

    .line 123
    iget v1, v0, Lk0/gh;->d:I

    sget v2, Lk0/gh;->k0:I

    if-eq v1, v2, :cond_7c

    .line 124
    iput v2, v0, Lk0/gh;->d:I

    if-ne v2, v11, :cond_26

    .line 125
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 126
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_33

    :cond_26
    if-nez v2, :cond_7c

    .line 127
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 128
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_33

    .line 129
    :cond_27
    sget v1, Lk0/gh;->k0:I

    if-eqz v1, :cond_28

    .line 130
    invoke-static {v11}, Lk0/qt;->a(I)V

    goto/16 :goto_33

    .line 131
    :cond_28
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_33

    :pswitch_e
    const/16 v2, 0x80

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x2

    .line 132
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 133
    aget-byte v2, v1, v4

    shr-int/2addr v2, v7

    and-int/2addr v2, v6

    .line 134
    sget v3, Lk0/gh;->B0:I

    if-ne v3, v11, :cond_29

    rsub-int/lit8 v2, v2, 0xe

    :cond_29
    const/16 v3, 0x81

    new-array v4, v11, [I

    aput v2, v4, v7

    .line 135
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x3

    .line 136
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v11, [I

    .line 137
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x4

    .line 138
    aget-byte v5, v1, v4

    shr-int/2addr v5, v15

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v11, [I

    .line 139
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 140
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v11, [I

    const/4 v4, 0x6

    add-int/lit8 v4, p2, 0x6

    .line 141
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v11, [I

    .line 142
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    const/4 v4, 0x3

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_33

    .line 143
    :pswitch_f
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_33

    :pswitch_10
    add-int/lit8 v2, p2, 0x2

    .line 144
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v5, p2, 0x3

    .line 145
    aget-byte v5, v1, v5

    and-int/2addr v5, v4

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    or-int v4, v5, v6

    const v5, 0xffff

    if-ne v4, v5, :cond_2a

    move v4, v7

    :cond_2a
    const/16 v5, 0x95

    new-array v6, v11, [I

    or-int/2addr v4, v3

    aput v4, v6, v7

    .line 146
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x96

    new-array v5, v11, [I

    .line 147
    aget-byte v2, v1, v2

    const/16 v6, 0xff

    and-int/2addr v2, v6

    aput v2, v5, v7

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 148
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, p2, 0x6

    aget-byte v8, v1, v8

    and-int/2addr v8, v6

    or-int/2addr v5, v8

    or-int/2addr v3, v5

    aput v3, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x7

    .line 149
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p2, 0x8

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_33

    :pswitch_11
    add-int/lit8 v2, p2, 0x2

    .line 150
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    .line 151
    aget-byte v5, v1, v2

    const/4 v8, 0x3

    shr-int/2addr v5, v8

    and-int/2addr v5, v11

    shl-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x8

    shl-int/2addr v5, v15

    const/16 v8, 0x10

    and-int/2addr v5, v8

    or-int/2addr v3, v5

    .line 152
    sget v5, Lu0/b;->w:I

    const/4 v8, 0x6

    shl-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v3, v5

    .line 153
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v8, 0x419

    new-array v9, v6, [I

    const/16 v10, 0xb

    aput v10, v9, v7

    aput v3, v9, v11

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v8, v9, v3, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 154
    aget-byte v3, v1, v2

    shr-int/2addr v3, v6

    and-int/2addr v3, v11

    aget-byte v2, v1, v2

    const/4 v8, 0x3

    shr-int/2addr v2, v8

    and-int/2addr v2, v11

    invoke-static {v3, v2, v7}, Ll0/c0;->N1(III)V

    add-int/lit8 v2, p2, 0x3

    .line 155
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    shl-int/2addr v8, v7

    or-int/2addr v2, v8

    const/16 v8, 0x408

    new-array v9, v11, [I

    aput v2, v9, v7

    .line 156
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 157
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    const/16 v8, 0x10

    shl-int/2addr v2, v8

    const/high16 v8, 0xff0000

    and-int/2addr v2, v8

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v2, v8

    add-int/lit8 v8, p2, 0x9

    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    shl-int/2addr v8, v7

    or-int/2addr v2, v8

    const/16 v8, 0x7b

    new-array v9, v11, [I

    aput v2, v9, v7

    .line 158
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 159
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const v8, 0xff00

    and-int/2addr v2, v8

    add-int/lit8 v8, p2, 0xb

    aget-byte v8, v1, v8

    and-int/2addr v8, v3

    shl-int/lit8 v3, v8, 0x0

    or-int/2addr v2, v3

    const/16 v3, 0x7c

    new-array v8, v11, [I

    aput v2, v8, v7

    .line 160
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x62

    new-array v8, v11, [I

    aput v2, v8, v7

    .line 161
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x419

    new-array v6, v6, [I

    aput v4, v6, v7

    aput v2, v6, v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 162
    invoke-static {v5, v3, v6, v2, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0xc

    .line 163
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-nez v1, :cond_2b

    .line 164
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_33

    :cond_2b
    and-int/lit16 v2, v1, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2c

    rsub-int v1, v1, 0x100

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    .line 165
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_33

    :cond_2c
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    .line 166
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_33

    :pswitch_12
    add-int/lit8 v2, p2, 0x2

    .line 167
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x17c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_33

    .line 168
    :pswitch_13
    sget v2, Lk0/nt;->a:I

    const v3, 0x6501c6

    if-eq v2, v3, :cond_7c

    const v3, 0x3e01c7

    if-eq v2, v3, :cond_7c

    const v3, 0x3f01c7

    if-eq v2, v3, :cond_7c

    const v3, 0x4801c7

    if-ne v2, v3, :cond_2d

    goto/16 :goto_33

    :cond_2d
    add-int/lit8 v2, p2, 0x2

    .line 169
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    new-array v3, v11, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v11

    aput v9, v3, v7

    const/16 v9, 0xa

    .line 170
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 171
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 172
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3a

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 173
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 174
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x2

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 175
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v11

    aput v9, v3, v7

    const/16 v9, 0xf

    .line 176
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x11

    new-array v9, v11, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v11

    aput v2, v9, v7

    .line 177
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 178
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v3, 0x12

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 179
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 180
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v9, v11, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/lit8 v12, v10, 0x1

    aput v12, v9, v7

    .line 181
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v9, v11, [I

    const/4 v12, 0x7

    and-int/2addr v10, v12

    aput v10, v9, v7

    .line 182
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xf

    and-int/2addr v2, v3

    if-le v2, v12, :cond_2e

    const/4 v13, 0x7

    goto :goto_12

    :cond_2e
    move v13, v2

    :goto_12
    const/16 v2, 0x15

    new-array v3, v11, [I

    aput v13, v3, v7

    .line 183
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 184
    aget-byte v3, v1, v2

    const/16 v9, 0xff

    and-int/2addr v3, v9

    add-int/lit8 v10, p2, 0x5

    .line 185
    aget-byte v12, v1, v10

    and-int/2addr v12, v9

    const-string v13, "persist.fyt.reversetemp"

    .line 186
    invoke-static {v13, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 187
    aget-byte v3, v1, v10

    and-int/2addr v3, v9

    .line 188
    aget-byte v2, v1, v2

    and-int/lit16 v12, v2, 0xff

    :cond_2f
    const/16 v2, 0x21

    if-eqz v3, :cond_33

    const/16 v9, 0x1f

    if-eq v3, v9, :cond_32

    if-lt v3, v11, :cond_30

    if-gt v3, v5, :cond_30

    new-array v9, v11, [I

    mul-int/lit8 v10, v3, 0x5

    add-int/lit16 v10, v10, 0xaf

    aput v10, v9, v7

    const/16 v10, 0x1b

    .line 189
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_30
    if-lt v3, v2, :cond_31

    const/16 v9, 0x26

    if-gt v3, v9, :cond_31

    new-array v9, v11, [I

    add-int/lit8 v10, v3, -0x21

    mul-int/2addr v10, v4

    add-int/lit16 v10, v10, 0x96

    aput v10, v9, v7

    const/16 v10, 0x1b

    .line 190
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_31
    const/16 v10, 0x1b

    new-array v9, v11, [I

    aput v8, v9, v7

    .line 191
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_32
    const/16 v10, 0x1b

    new-array v9, v11, [I

    const/4 v13, -0x3

    aput v13, v9, v7

    .line 192
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_33
    const/16 v10, 0x1b

    new-array v9, v11, [I

    const/4 v13, -0x2

    aput v13, v9, v7

    .line 193
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    :goto_13
    if-eqz v12, :cond_37

    const/16 v9, 0x1f

    if-eq v12, v9, :cond_36

    if-lt v12, v11, :cond_34

    if-gt v12, v5, :cond_34

    new-array v3, v11, [I

    mul-int/2addr v12, v4

    add-int/lit16 v12, v12, 0xaf

    aput v12, v3, v7

    const/16 v9, 0x1c

    .line 194
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_34
    if-lt v12, v2, :cond_35

    const/16 v9, 0x26

    if-gt v3, v9, :cond_35

    new-array v3, v11, [I

    sub-int/2addr v12, v2

    mul-int/2addr v12, v4

    add-int/lit16 v12, v12, 0x96

    aput v12, v3, v7

    const/16 v9, 0x1c

    .line 195
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_35
    const/16 v9, 0x1c

    new-array v3, v11, [I

    aput v8, v3, v7

    .line 196
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_36
    const/16 v9, 0x1c

    new-array v3, v11, [I

    const/4 v10, -0x3

    aput v10, v3, v7

    .line 197
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_37
    const/16 v9, 0x1c

    new-array v3, v11, [I

    const/4 v10, -0x2

    aput v10, v3, v7

    .line 198
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_14
    add-int/lit8 v3, p2, 0x6

    .line 199
    aget-byte v3, v1, v3

    const/16 v9, 0xff

    and-int/2addr v3, v9

    new-array v9, v11, [I

    shr-int/lit8 v10, v3, 0x7

    and-int/2addr v10, v11

    aput v10, v9, v7

    .line 200
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    new-array v9, v11, [I

    shr-int/lit8 v10, v3, 0x6

    and-int/2addr v10, v11

    aput v10, v9, v7

    const/16 v10, 0x10

    .line 201
    invoke-static {v10, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x36

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x5

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 202
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x4c

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x4

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 203
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x23

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x3

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 204
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    .line 205
    sget v9, Lk0/nt;->a:I

    sparse-switch v9, :sswitch_data_0

    goto :goto_15

    .line 206
    :sswitch_0
    iget v9, v0, Lk0/gh;->y:I

    shr-int/lit8 v10, v3, 0x2

    and-int/2addr v10, v11

    if-eq v9, v10, :cond_38

    .line 207
    iput v10, v0, Lk0/gh;->y:I

    if-nez v10, :cond_38

    .line 208
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    const/4 v9, 0x6

    .line 209
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    .line 210
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    :cond_38
    :goto_15
    const/16 v9, 0x43

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x2

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 211
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x25

    new-array v10, v11, [I

    and-int/2addr v3, v11

    aput v3, v10, v7

    .line 212
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x7

    .line 213
    aget-byte v3, v1, v3

    const/16 v9, 0xff

    and-int/2addr v3, v9

    if-eqz v3, :cond_3c

    const/16 v9, 0x1f

    if-eq v3, v9, :cond_3b

    if-lt v3, v11, :cond_39

    if-gt v3, v5, :cond_39

    new-array v9, v11, [I

    add-int/lit8 v3, v3, 0x23

    mul-int/2addr v3, v4

    aput v3, v9, v7

    const/16 v3, 0x28

    .line 214
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_39
    if-lt v3, v2, :cond_3a

    const/16 v9, 0x26

    if-gt v3, v9, :cond_3a

    new-array v9, v11, [I

    sub-int/2addr v3, v2

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x96

    aput v3, v9, v7

    const/16 v3, 0x28

    .line 215
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_3a
    const/16 v3, 0x28

    new-array v9, v11, [I

    aput v8, v9, v7

    .line 216
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_3b
    const/16 v3, 0x28

    new-array v9, v11, [I

    const/4 v10, -0x3

    aput v10, v9, v7

    .line 217
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_3c
    const/16 v3, 0x28

    new-array v9, v11, [I

    const/4 v10, -0x2

    aput v10, v9, v7

    .line 218
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    :goto_16
    add-int/lit8 v3, p2, 0x8

    .line 219
    aget-byte v3, v1, v3

    const/16 v9, 0xff

    and-int/2addr v3, v9

    const/16 v9, 0x2a

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x7

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 220
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x2e

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x6

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 221
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x2f

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x5

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 222
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x2b

    new-array v10, v11, [I

    shr-int/lit8 v12, v3, 0x4

    and-int/2addr v12, v11

    aput v12, v10, v7

    .line 223
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0x2c

    new-array v10, v11, [I

    const/16 v12, 0xf

    and-int/2addr v3, v12

    aput v3, v10, v7

    .line 224
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x55

    new-array v9, v11, [I

    add-int/lit8 v10, p2, 0xa

    .line 225
    aget-byte v12, v1, v10

    shr-int/2addr v12, v15

    and-int/2addr v12, v11

    aput v12, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x5c

    new-array v9, v11, [I

    .line 226
    aget-byte v12, v1, v10

    shr-int/lit8 v6, v12, 0x2

    and-int/2addr v6, v11

    aput v6, v9, v7

    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x22

    new-array v6, v11, [I

    .line 227
    aget-byte v9, v1, v10

    const/4 v12, 0x3

    shr-int/2addr v9, v12

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4b

    new-array v6, v11, [I

    .line 228
    aget-byte v9, v1, v10

    shr-int/2addr v9, v11

    and-int/2addr v9, v11

    aput v9, v6, v7

    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x9

    .line 229
    aget-byte v3, v1, v3

    const/16 v6, 0xff

    and-int/2addr v3, v6

    if-eqz v3, :cond_40

    const/16 v6, 0x1f

    if-eq v3, v6, :cond_3f

    if-lt v3, v11, :cond_3d

    if-gt v3, v5, :cond_3d

    const/16 v2, 0x29

    new-array v6, v11, [I

    add-int/lit8 v3, v3, 0x23

    mul-int/2addr v3, v4

    aput v3, v6, v7

    .line 230
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_3d
    if-lt v3, v2, :cond_3e

    const/16 v6, 0x26

    if-gt v3, v6, :cond_3e

    const/16 v6, 0x29

    new-array v8, v11, [I

    sub-int/2addr v3, v2

    mul-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x96

    aput v3, v8, v7

    .line 231
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_3e
    const/16 v2, 0x29

    new-array v3, v11, [I

    aput v8, v3, v7

    .line 232
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_3f
    const/16 v2, 0x29

    new-array v3, v11, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 233
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_17

    :cond_40
    const/16 v2, 0x29

    new-array v3, v11, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 234
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 235
    :goto_17
    sget v2, Lk0/nt;->a:I

    const v3, 0x3501c7

    if-eq v2, v3, :cond_41

    const v3, 0x3601c7

    if-eq v2, v3, :cond_41

    goto/16 :goto_33

    :cond_41
    new-array v2, v11, [I

    add-int/lit8 v3, p2, 0xb

    .line 236
    aget-byte v4, v1, v3

    shr-int/2addr v4, v15

    const/16 v6, 0xf

    and-int/2addr v4, v6

    aput v4, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v11, [I

    .line 237
    aget-byte v1, v1, v3

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_33

    :pswitch_14
    add-int/lit8 v2, p2, 0x2

    .line 238
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x18

    move v3, v7

    const/16 v4, 0xf

    :goto_18
    if-ge v3, v4, :cond_7c

    new-array v5, v6, [I

    aput v3, v5, v7

    mul-int/lit8 v8, v3, 0x2

    add-int v8, p2, v8

    add-int/lit8 v9, v8, 0x3

    .line 239
    aget-byte v9, v1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v15

    aget-byte v8, v1, v8

    and-int/2addr v8, v10

    or-int/2addr v8, v9

    or-int/2addr v8, v2

    aput v8, v5, v11

    const/16 v8, 0x77

    .line 240
    iget-object v9, v0, Lk0/gh;->b:[[I

    aget-object v9, v9, v3

    invoke-static {v8, v5, v9}, Lk0/qt;->C0(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 241
    iget-object v8, v0, Lk0/gh;->b:[[I

    aput-object v5, v8, v3

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :pswitch_15
    add-int/lit8 v2, p2, 0x2

    .line 242
    aget-byte v2, v1, v2

    const/16 v3, 0x65

    new-array v5, v11, [I

    and-int/lit16 v8, v2, 0x80

    if-nez v8, :cond_43

    move v8, v7

    goto :goto_19

    :cond_43
    move v8, v11

    :goto_19
    aput v8, v5, v7

    .line 243
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v5, v11, [I

    and-int/lit8 v8, v2, 0x70

    shr-int/2addr v8, v15

    aput v8, v5, v7

    .line 244
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v5, v11, [I

    and-int/lit8 v8, v2, 0xc

    shr-int/lit8 v6, v8, 0x2

    aput v6, v5, v7

    .line 245
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v5, v11, [I

    const/4 v6, 0x3

    and-int/2addr v2, v6

    aput v2, v5, v7

    .line 246
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 247
    aget-byte v2, v1, v2

    const/16 v3, 0x69

    new-array v5, v11, [I

    and-int/lit16 v6, v2, 0x80

    if-nez v6, :cond_44

    move v6, v7

    goto :goto_1a

    :cond_44
    move v6, v11

    :goto_1a
    aput v6, v5, v7

    .line 248
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_45

    move v6, v7

    goto :goto_1b

    :cond_45
    move v6, v11

    :goto_1b
    aput v6, v5, v7

    .line 249
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_46

    move v6, v7

    goto :goto_1c

    :cond_46
    move v6, v11

    :goto_1c
    aput v6, v5, v7

    .line 250
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_47

    move v6, v7

    goto :goto_1d

    :cond_47
    move v6, v11

    :goto_1d
    aput v6, v5, v7

    .line 251
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v5, v11, [I

    const/4 v6, 0x7

    and-int/2addr v2, v6

    aput v2, v5, v7

    .line 252
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 253
    aget-byte v2, v1, v2

    const/16 v3, 0x6e

    new-array v5, v11, [I

    and-int/lit16 v6, v2, 0x80

    if-nez v6, :cond_48

    move v6, v7

    goto :goto_1e

    :cond_48
    move v6, v11

    :goto_1e
    aput v6, v5, v7

    .line 254
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_49

    move v6, v7

    goto :goto_1f

    :cond_49
    move v6, v11

    :goto_1f
    aput v6, v5, v7

    .line 255
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x70

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x20

    if-nez v6, :cond_4a

    move v6, v7

    goto :goto_20

    :cond_4a
    move v6, v11

    :goto_20
    aput v6, v5, v7

    .line 256
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x71

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_4b

    move v6, v7

    goto :goto_21

    :cond_4b
    move v6, v11

    :goto_21
    aput v6, v5, v7

    .line 257
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x72

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_4c

    move v6, v7

    goto :goto_22

    :cond_4c
    move v6, v11

    :goto_22
    aput v6, v5, v7

    .line 258
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x73

    new-array v5, v11, [I

    const/4 v6, 0x7

    and-int/2addr v2, v6

    aput v2, v5, v7

    .line 259
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 260
    aget-byte v2, v1, v2

    const/16 v3, 0x74

    new-array v5, v11, [I

    and-int/lit16 v6, v2, 0x80

    if-nez v6, :cond_4d

    move v6, v7

    goto :goto_23

    :cond_4d
    move v6, v11

    :goto_23
    aput v6, v5, v7

    .line 261
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x75

    new-array v5, v11, [I

    and-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_4e

    move v6, v7

    goto :goto_24

    :cond_4e
    move v6, v11

    :goto_24
    aput v6, v5, v7

    .line 262
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v5, v11, [I

    shr-int/lit8 v6, v2, 0x2

    const/4 v8, 0x3

    and-int/2addr v6, v8

    aput v6, v5, v7

    .line 263
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v5, v11, [I

    and-int/2addr v2, v8

    aput v2, v5, v7

    .line 264
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x6

    add-int/lit8 v2, p2, 0x6

    .line 265
    aget-byte v1, v1, v2

    const/16 v2, 0x79

    new-array v3, v11, [I

    shr-int/lit8 v5, v1, 0x2

    const/4 v6, 0x7

    and-int/2addr v5, v6

    aput v5, v3, v7

    .line 266
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v11, [I

    and-int/lit8 v5, v1, 0x3

    aput v5, v3, v7

    .line 267
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v11, [I

    shr-int/2addr v1, v4

    const/4 v4, 0x3

    and-int/2addr v1, v4

    aput v1, v3, v7

    .line 268
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_33

    .line 269
    :cond_4f
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_50

    goto/16 :goto_33

    :cond_50
    add-int/lit8 v2, p2, 0x2

    .line 270
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {}, La/f;->w()I

    move-result v4

    mul-int/2addr v2, v4

    div-int/2addr v2, v3

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 271
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    invoke-static {}, La/f;->i()I

    move-result v4

    mul-int/2addr v1, v4

    div-int/2addr v1, v3

    .line 272
    sget-object v3, Lk0/nt;->e:La/h;

    invoke-virtual {v3, v2, v1}, La/h;->g(II)Z

    goto/16 :goto_33

    :cond_51
    const/16 v3, 0xff

    add-int/lit8 v2, p2, 0x2

    .line 273
    aget-byte v2, v1, v2

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 274
    aget-byte v1, v1, v4

    and-int/2addr v2, v3

    .line 275
    iput v2, v0, Lk0/gh;->m:I

    move v2, v7

    .line 276
    :goto_25
    iget-object v3, v0, Lk0/gh;->n:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_53

    .line 277
    iget v4, v0, Lk0/gh;->m:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_52

    if-eqz v4, :cond_53

    .line 278
    iput v2, v0, Lk0/gh;->l:I

    goto :goto_26

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_53
    :goto_26
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_54

    .line 279
    array-length v1, v3

    if-ge v2, v1, :cond_7c

    .line 280
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_33

    .line 281
    :cond_54
    iget v1, v0, Lk0/gh;->l:I

    array-length v2, v3

    if-ge v1, v2, :cond_55

    const/16 v2, 0xff

    if-eq v1, v2, :cond_56

    .line 282
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_27

    :cond_55
    const/16 v2, 0xff

    .line 283
    :cond_56
    :goto_27
    iput v2, v0, Lk0/gh;->l:I

    goto/16 :goto_33

    :cond_57
    const/16 v2, 0xff

    add-int/lit8 v3, p2, 0x2

    .line 284
    aget-byte v3, v1, v3

    and-int/2addr v2, v3

    const-string v3, "persist.syu.reversefrontdoor"

    .line 285
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_58

    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v3, v7

    .line 286
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v11

    aput v5, v3, v7

    .line 287
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_28

    :cond_58
    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v11

    aput v5, v3, v7

    .line 288
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v11

    aput v5, v3, v7

    .line 289
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_28
    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v11

    aput v5, v3, v7

    const/4 v5, 0x3

    .line 290
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v11

    aput v5, v3, v7

    .line 291
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v11

    aput v5, v3, v7

    .line 292
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v11, [I

    shr-int/lit8 v5, v2, 0x0

    and-int/2addr v5, v11

    aput v5, v3, v7

    .line 293
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x89

    new-array v5, v11, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v11

    aput v2, v5, v7

    .line 294
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v11, [I

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 295
    aget-byte v6, v1, v5

    shr-int/2addr v6, v11

    and-int/2addr v6, v11

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 296
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_7c

    .line 297
    iget v2, v0, Lk0/gh;->d:I

    aget-byte v3, v1, v5

    and-int/2addr v3, v11

    if-eq v2, v3, :cond_7c

    .line 298
    aget-byte v1, v1, v5

    and-int/2addr v1, v11

    iput v1, v0, Lk0/gh;->d:I

    if-ne v1, v11, :cond_59

    .line 299
    iput v4, v0, Lk0/gh;->e:I

    goto/16 :goto_33

    :cond_59
    if-nez v1, :cond_7c

    .line 300
    iput v4, v0, Lk0/gh;->e:I

    const/16 v1, 0xa4

    new-array v2, v11, [I

    aput v7, v2, v7

    .line 301
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 302
    iget-boolean v1, v0, Lk0/gh;->f:Z

    if-eqz v1, :cond_7c

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 303
    iget v1, v0, Lk0/gh;->g:I

    invoke-static {v1}, Ly0/h;->t0(I)V

    const-wide/16 v1, 0x15e

    .line 304
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "persist.lesc.video.ignore"

    const-string v2, "false"

    .line 305
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iput-boolean v7, v0, Lk0/gh;->f:Z

    goto/16 :goto_33

    :cond_5a
    add-int/lit8 v2, p2, 0x2

    .line 307
    aget-byte v3, v1, v2

    const/16 v5, 0xff

    and-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v8, p2, 0x3

    .line 308
    aget-byte v9, v1, v8

    and-int/2addr v9, v5

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v10, p2, 0x4

    aget-byte v12, v1, v10

    and-int/2addr v12, v5

    or-int v5, v9, v12

    const v9, 0xffff

    if-ne v5, v9, :cond_5b

    move v5, v7

    :cond_5b
    const/16 v9, 0x63

    new-array v12, v11, [I

    or-int/2addr v5, v3

    aput v5, v12, v7

    .line 309
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    .line 310
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v9, 0x419

    new-array v12, v6, [I

    const/16 v13, 0x10

    aput v13, v12, v7

    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    const/high16 v13, 0xff0000

    and-int/2addr v2, v13

    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    const v13, 0xff00

    and-int/2addr v8, v13

    or-int/2addr v2, v8

    aget-byte v8, v1, v10

    const/16 v10, 0xff

    and-int/2addr v8, v10

    or-int/2addr v2, v8

    aput v2, v12, v11

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v9, v12, v2, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    move v2, v7

    :goto_29
    if-ge v2, v4, :cond_7c

    new-array v5, v6, [I

    aput v2, v5, v7

    mul-int/lit8 v8, v2, 0x2

    add-int v8, p2, v8

    add-int/lit8 v9, v8, 0x5

    .line 311
    aget-byte v9, v1, v9

    const/16 v10, 0xff

    and-int/2addr v9, v10

    shl-int/lit8 v9, v9, 0x8

    const/4 v12, 0x6

    add-int/2addr v8, v12

    aget-byte v8, v1, v8

    and-int/2addr v8, v10

    or-int/2addr v8, v9

    or-int/2addr v8, v3

    aput v8, v5, v11

    const/16 v8, 0x64

    .line 312
    iget-object v9, v0, Lk0/gh;->c:[[I

    aget-object v9, v9, v2

    invoke-static {v8, v5, v9}, Lk0/qt;->C0(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 313
    iget-object v8, v0, Lk0/gh;->c:[[I

    aput-object v5, v8, v2

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 314
    :cond_5d
    iget v2, v0, Lk0/gh;->u:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    if-eq v2, v4, :cond_7c

    .line 315
    aget-byte v1, v1, v3

    iput v1, v0, Lk0/gh;->u:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7c

    .line 316
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 317
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_33

    :cond_5e
    add-int/lit8 v2, p2, 0x3

    .line 318
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x17c

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_33

    :cond_5f
    add-int/lit8 v2, p2, 0x2

    .line 319
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v5, p2, 0x3

    .line 320
    aget-byte v1, v1, v5

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 321
    iput v2, v0, Lk0/gh;->i:I

    .line 322
    sget v2, Lk0/nt;->a:I

    const v3, 0x7c01c5

    if-eq v2, v3, :cond_71

    const v3, 0x7d01c5

    if-eq v2, v3, :cond_71

    move v2, v7

    .line 323
    :goto_2a
    iget-object v3, v0, Lk0/gh;->j:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_61

    .line 324
    iget v5, v0, Lk0/gh;->i:I

    aget-object v8, v3, v2

    aget v8, v8, v7

    if-ne v5, v8, :cond_60

    if-eqz v5, :cond_61

    .line 325
    iput v2, v0, Lk0/gh;->h:I

    goto :goto_2b

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 326
    :cond_61
    :goto_2b
    iget v5, v0, Lk0/gh;->i:I

    const/4 v8, 0x3

    if-eq v5, v8, :cond_6f

    if-eq v5, v15, :cond_6d

    const/16 v8, 0x12

    if-eq v5, v8, :cond_67

    const/16 v4, 0x16

    if-eq v5, v4, :cond_65

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_62

    .line 327
    array-length v1, v3

    if-ge v2, v1, :cond_7c

    .line 328
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_33

    .line 329
    :cond_62
    iget v1, v0, Lk0/gh;->h:I

    array-length v2, v3

    if-ge v1, v2, :cond_63

    const/16 v2, 0xff

    if-eq v1, v2, :cond_64

    .line 330
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_2c

    :cond_63
    const/16 v2, 0xff

    .line 331
    :cond_64
    :goto_2c
    iput v2, v0, Lk0/gh;->h:I

    goto/16 :goto_33

    :cond_65
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v11, :cond_66

    .line 332
    sget-object v1, Lk0/nt;->e:La/h;

    invoke-virtual {v1}, La/h;->e()Z

    goto/16 :goto_33

    .line 333
    :cond_66
    sget-object v1, Lk0/nt;->e:La/h;

    invoke-virtual {v1}, La/h;->f()Z

    goto/16 :goto_33

    :cond_67
    const-string v2, "/sys/fytver/fyt_bin_version"

    .line 334
    invoke-static {v2}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ls18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v2, "/sys/fytver/fyt_bin_version"

    .line 335
    invoke-static {v2}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Lt18"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    sget v2, Lk0/nt;->a:I

    const v3, 0xc101c4

    if-eq v2, v3, :cond_69

    const v3, 0xf801c7

    if-ne v2, v3, :cond_68

    goto :goto_2d

    :cond_68
    if-ne v1, v11, :cond_7c

    .line 336
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 337
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_33

    .line 338
    :cond_69
    :goto_2d
    iget v2, v0, Lk0/gh;->t:I

    if-eq v2, v1, :cond_7c

    .line 339
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    if-ne v1, v6, :cond_6c

    .line 340
    iget v2, v0, Lk0/gh;->t:I

    if-ne v2, v11, :cond_6c

    .line 341
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 342
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    goto :goto_2e

    :cond_6a
    if-ne v1, v6, :cond_6b

    .line 343
    iget v2, v0, Lk0/gh;->t:I

    if-ne v2, v11, :cond_6b

    .line 344
    invoke-static {}, Lo1/u;->z()I

    goto :goto_2e

    :cond_6b
    if-nez v1, :cond_6c

    .line 345
    iget v2, v0, Lk0/gh;->t:I

    if-ne v2, v11, :cond_6c

    .line 346
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    .line 347
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    .line 348
    :cond_6c
    :goto_2e
    iput v1, v0, Lk0/gh;->t:I

    goto/16 :goto_33

    :cond_6d
    if-ne v1, v11, :cond_7c

    .line 349
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6e

    sget-object v1, La/b;->Q:Ljava/lang/String;

    .line 350
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    new-array v1, v4, [I

    .line 351
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [I

    .line 352
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_33

    .line 353
    :cond_6e
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    .line 354
    invoke-static {v15, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_33

    :cond_6f
    if-ne v1, v11, :cond_7c

    .line 355
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_70

    sget-object v1, La/b;->Q:Ljava/lang/String;

    .line 356
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    new-array v1, v4, [I

    .line 357
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [I

    .line 358
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_33

    :cond_70
    const/4 v1, 0x3

    .line 359
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 360
    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_33

    :cond_71
    move v2, v7

    .line 361
    :goto_2f
    iget-object v3, v0, Lk0/gh;->k:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_73

    .line 362
    iget v4, v0, Lk0/gh;->i:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_72

    if-eqz v4, :cond_73

    .line 363
    iput v2, v0, Lk0/gh;->h:I

    goto :goto_30

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_73
    :goto_30
    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_74

    .line 364
    array-length v1, v3

    if-ge v2, v1, :cond_7c

    .line 365
    aget-object v1, v3, v2

    aget v1, v1, v11

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_33

    .line 366
    :cond_74
    iget v1, v0, Lk0/gh;->h:I

    array-length v2, v3

    if-ge v1, v2, :cond_75

    const/16 v2, 0xff

    if-eq v1, v2, :cond_76

    .line 367
    aget-object v1, v3, v1

    aget v1, v1, v11

    invoke-static {v1, v11}, Ll0/b0;->l0(II)V

    goto :goto_31

    :cond_75
    const/16 v2, 0xff

    .line 368
    :cond_76
    :goto_31
    iput v2, v0, Lk0/gh;->h:I

    goto/16 :goto_33

    :cond_77
    const/16 v2, 0xff

    add-int/lit8 v3, p2, 0x2

    .line 369
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/gh;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x3

    .line 370
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/gh;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x4

    .line 371
    aget-byte v3, v1, v3

    and-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lk0/gh;->a3(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 372
    aget-byte v3, v1, v3

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lk0/gh;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    const/16 v2, 0x7d

    new-array v3, v11, [I

    const/4 v4, 0x6

    add-int/lit8 v5, p2, 0x6

    .line 373
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v11, [I

    .line 374
    aget-byte v4, v1, v5

    const/4 v6, 0x7

    shr-int/2addr v4, v6

    and-int/2addr v4, v11

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v11, [I

    .line 375
    aget-byte v1, v1, v5

    shr-int/2addr v1, v7

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_33

    :cond_78
    add-int/lit8 v2, p2, 0x2

    .line 376
    aget-byte v3, v1, v2

    const/16 v5, 0xff

    and-int/2addr v3, v5

    add-int/lit8 v6, p2, 0x3

    .line 377
    aget-byte v8, v1, v6

    and-int/2addr v8, v5

    add-int/lit8 v9, p2, 0x4

    .line 378
    aget-byte v10, v1, v9

    and-int/2addr v10, v5

    add-int/lit8 v4, p2, 0x5

    .line 379
    aget-byte v12, v1, v4

    and-int/2addr v12, v5

    if-nez v3, :cond_79

    if-nez v8, :cond_79

    if-nez v10, :cond_79

    if-nez v12, :cond_79

    .line 380
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_32

    .line 381
    :cond_79
    sget v5, Ll0/c0;->g:I

    if-ne v5, v3, :cond_7a

    sget v5, Ll0/c0;->h:I

    if-ne v5, v8, :cond_7a

    sget v5, Ll0/c0;->i:I

    if-ne v5, v10, :cond_7a

    sget v5, Ll0/c0;->j:I

    if-eq v5, v12, :cond_7b

    .line 382
    :cond_7a
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_7b

    .line 383
    invoke-static {v11}, Lu0/d;->C2(I)V

    .line 384
    sput v15, Ll0/c0;->k:I

    .line 385
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 386
    :cond_7b
    :goto_32
    sput v3, Ll0/c0;->g:I

    .line 387
    sput v8, Ll0/c0;->h:I

    .line 388
    sput v10, Ll0/c0;->i:I

    .line 389
    sput v12, Ll0/c0;->j:I

    .line 390
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lk0/gh;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 391
    aget-byte v2, v1, v6

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lk0/gh;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 392
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lk0/gh;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 393
    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lk0/gh;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    :cond_7c
    :goto_33
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x55
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1101c7 -> :sswitch_0
        0x1201c7 -> :sswitch_0
        0x3701c7 -> :sswitch_0
        0x4001c7 -> :sswitch_0
        0x4901c7 -> :sswitch_0
        0x6401c8 -> :sswitch_0
        0x6501c8 -> :sswitch_0
        0x9a01c7 -> :sswitch_0
        0x9b01c7 -> :sswitch_0
        0xb801c8 -> :sswitch_0
        0xb901c8 -> :sswitch_0
        0xe801c6 -> :sswitch_0
        0xf701c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x10
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xf
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7d
        0x2
        0xf
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/gh;->K:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/gh;->i0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/gh;->g0:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/gh;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/gh;->J:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/gh;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/gh;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/gh;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/gh;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->z:Lo1/y;

    iget-object v1, p0, Lk0/gh;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.fyt.screenbutton.CanbusHide"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.fyt.screenbutton"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xa6

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
    .locals 9

    const/16 p3, 0x1b

    const/4 p4, 0x0

    if-eq p1, p3, :cond_32

    const/16 p3, 0x39

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, p3, :cond_31

    const/16 p3, 0x3ed

    const/4 v4, 0x6

    if-eq p1, p3, :cond_2c

    const/16 p3, 0x405

    const/16 v5, 0xe3

    const/4 v6, 0x5

    if-eq p1, p3, :cond_29

    const/16 p3, 0x1d

    if-eq p1, p3, :cond_28

    const/16 p3, 0x1e

    const/16 v7, 0x9e

    if-eq p1, p3, :cond_27

    const/16 p3, 0x84

    const/4 v8, 0x7

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/16 v4, 0x3e9

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_8

    .line 1
    :pswitch_0
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->S3(I)V

    goto/16 :goto_8

    .line 2
    :pswitch_1
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->K3(I)V

    goto/16 :goto_8

    .line 3
    :pswitch_2
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->b3(I)V

    goto/16 :goto_8

    .line 4
    :pswitch_3
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->Q3(I)V

    goto/16 :goto_8

    .line 5
    :pswitch_4
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->G3(I)V

    goto/16 :goto_8

    .line 6
    :pswitch_5
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->F3(I)V

    goto/16 :goto_8

    .line 7
    :pswitch_6
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->H3(I)V

    goto/16 :goto_8

    .line 8
    :pswitch_7
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->R3(I)V

    goto/16 :goto_8

    .line 9
    :pswitch_8
    aget p1, p2, p4

    if-ne p1, v3, :cond_0

    .line 10
    sget p1, Lk0/gh;->o0:I

    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 11
    :cond_0
    sget p1, Lk0/nt;->U:I

    if-ne p1, v3, :cond_2

    .line 12
    aget p1, p2, p4

    if-ne p1, v3, :cond_1

    .line 13
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    invoke-static {p1, v4, p4}, Lo1/x;->x([Lo1/x;II)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    invoke-static {p1, v4, v3}, Lo1/x;->x([Lo1/x;II)V

    :cond_2
    :goto_0
    new-array p1, v0, [I

    aput v5, p1, p4

    aput v5, p1, v3

    aput v3, p1, v2

    .line 15
    aget p2, p2, p4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 16
    :pswitch_9
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/gh;->P3(I)V

    .line 17
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/gh;->O3(I)V

    goto/16 :goto_8

    .line 18
    :pswitch_a
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 19
    aget p1, p2, p4

    if-eq p1, v8, :cond_3

    packed-switch p1, :pswitch_data_3

    new-array p1, v6, [I

    aput v5, p1, p4

    aput p3, p1, v3

    aput v2, p1, v2

    .line 20
    aget p3, p2, p4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 21
    :pswitch_b
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/gh;->N3(I)V

    goto/16 :goto_8

    .line 22
    :pswitch_c
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/gh;->L3(I)V

    goto/16 :goto_8

    .line 23
    :pswitch_d
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/gh;->M3(I)V

    goto/16 :goto_8

    .line 24
    :cond_3
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/gh;->T3(I)V

    new-array p1, v6, [I

    aput v5, p1, p4

    aput p3, p1, v3

    aput v2, p1, v2

    .line 25
    aget p3, p2, p4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 26
    :pswitch_e
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_33

    new-array p1, v6, [I

    aput v5, p1, p4

    const/16 p3, 0x90

    aput p3, p1, v3

    aput v2, p1, v2

    .line 27
    aget p3, p2, p4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 28
    :pswitch_f
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_33

    new-array p1, v6, [I

    aput v5, p1, p4

    const/16 p3, -0x7a

    aput p3, p1, v3

    aput v2, p1, v2

    .line 29
    aget p3, p2, p4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 30
    :pswitch_10
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 31
    sget p1, Lk0/nt;->U:I

    if-ne p1, v3, :cond_5

    .line 32
    aget p1, p2, p4

    if-ne p1, v3, :cond_4

    .line 33
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    invoke-static {p1, v4, p4}, Lo1/x;->x([Lo1/x;II)V

    goto :goto_1

    .line 34
    :cond_4
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    invoke-static {p1, v4, v3}, Lo1/x;->x([Lo1/x;II)V

    :cond_5
    :goto_1
    new-array p1, v0, [I

    aput v5, p1, p4

    const/16 p3, -0x1d

    aput p3, p1, v3

    aput v3, p1, v2

    .line 35
    aget p2, p2, p4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 36
    :pswitch_11
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 37
    aget p1, p2, p4

    const/16 p3, 0x27

    if-ne p1, p3, :cond_6

    .line 38
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/gh;->J3(I)V

    goto/16 :goto_8

    :cond_6
    new-array p1, v6, [I

    aput v5, p1, p4

    const/16 p3, -0x7d

    aput p3, p1, v3

    aput v2, p1, v2

    .line 39
    aget p3, p2, p4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_12
    new-array p1, v3, [I

    .line 40
    aget p2, p2, p4

    aput p2, p1, p4

    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 41
    :pswitch_13
    sget p1, Lk0/nt;->a:I

    const p3, 0x5001c7

    const/16 v0, 0x3e

    if-eq p1, p3, :cond_8

    const p3, 0x5101c7

    if-eq p1, p3, :cond_8

    const p3, 0x5401c7

    if-eq p1, p3, :cond_8

    .line 42
    aget p1, p2, p4

    if-ne p1, v3, :cond_7

    .line 43
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.carinfo.air.Air_Activity_WC_YL_Toyota_UI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 44
    invoke-virtual {p0}, Lk0/gh;->D3()V

    goto/16 :goto_8

    .line 45
    :cond_7
    aget p1, p2, p4

    if-nez p1, :cond_33

    .line 46
    invoke-static {v0, p4}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    .line 48
    :cond_8
    aget p1, p2, p4

    if-ne p1, v3, :cond_9

    .line 49
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.carinfo.air.Air_Activity_LZ_Haites_Toyota_UI"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 50
    invoke-virtual {p0}, Lk0/gh;->D3()V

    goto/16 :goto_8

    .line 51
    :cond_9
    aget p1, p2, p4

    if-nez p1, :cond_33

    .line 52
    invoke-static {v0, p4}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_14
    new-array p1, v8, [B

    const/16 p3, 0x5a

    aput-byte p3, p1, p4

    const/16 p3, -0x5b

    aput-byte p3, p1, v3

    aput-byte v2, p1, v2

    const/16 p3, 0x3d

    aput-byte p3, p1, v1

    .line 54
    aget p3, p2, p4

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    aget p2, p2, v3

    int-to-byte p2, p2

    aput-byte p2, p1, v6

    aput-byte p4, p1, v4

    invoke-static {p1}, Lk0/gh;->U3([B)V

    goto/16 :goto_8

    :pswitch_15
    if-eqz p2, :cond_33

    .line 55
    array-length p1, p2

    if-le p1, v3, :cond_33

    new-array p1, v6, [I

    aput v5, p1, p4

    aput p3, p1, v3

    aput v2, p1, v2

    .line 56
    aget p3, p2, p4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_16
    if-eqz p2, :cond_33

    .line 57
    array-length p1, p2

    if-lez p1, :cond_33

    new-array p1, v0, [I

    aput v5, p1, p4

    const/16 p3, 0x33

    aput p3, p1, v3

    aput v3, p1, v2

    .line 58
    aget p2, p2, p4

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_17
    if-eqz p2, :cond_33

    .line 59
    array-length p1, p2

    if-lez p1, :cond_33

    const/16 p1, 0x14

    .line 60
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_18
    if-eqz p2, :cond_33

    .line 61
    array-length p1, p2

    if-le p1, v3, :cond_33

    const-string p1, "persist.fyt.reversetemp"

    .line 62
    invoke-static {p1, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 63
    aget p1, p2, p4

    if-ne p1, v2, :cond_a

    .line 64
    aget p1, p2, v3

    invoke-virtual {p0, v0, p1}, Lk0/gh;->C3(II)V

    goto/16 :goto_8

    .line 65
    :cond_a
    aget p1, p2, p4

    if-ne p1, v1, :cond_b

    .line 66
    aget p1, p2, v3

    invoke-virtual {p0, v6, p1}, Lk0/gh;->C3(II)V

    goto/16 :goto_8

    .line 67
    :cond_b
    aget p1, p2, p4

    if-ne p1, v0, :cond_c

    .line 68
    aget p1, p2, v3

    invoke-virtual {p0, v2, p1}, Lk0/gh;->C3(II)V

    goto/16 :goto_8

    .line 69
    :cond_c
    aget p1, p2, p4

    if-ne p1, v6, :cond_d

    .line 70
    aget p1, p2, v3

    invoke-virtual {p0, v1, p1}, Lk0/gh;->C3(II)V

    goto/16 :goto_8

    .line 71
    :cond_d
    aget p1, p2, p4

    aget p2, p2, v3

    invoke-virtual {p0, p1, p2}, Lk0/gh;->C3(II)V

    goto/16 :goto_8

    .line 72
    :cond_e
    aget p1, p2, p4

    const/16 p3, 0x2a

    if-ne p1, p3, :cond_10

    aget p1, p2, v3

    if-ne p1, v3, :cond_10

    .line 73
    sget-object p1, Lk0/nt;->g:[I

    const/16 p3, 0x43

    aget p1, p1, p3

    if-ne p1, v3, :cond_f

    new-array p1, v3, [I

    aput p4, p1, p4

    .line 74
    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    new-array p1, v3, [I

    aput v3, p1, p4

    .line 75
    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    .line 76
    :cond_10
    :goto_2
    aget p1, p2, p4

    aget p2, p2, v3

    invoke-virtual {p0, p1, p2}, Lk0/gh;->C3(II)V

    goto/16 :goto_8

    :pswitch_19
    if-eqz p2, :cond_33

    .line 77
    array-length p1, p2

    if-lez p1, :cond_33

    const/16 p1, 0x22

    .line 78
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_1a
    if-eqz p2, :cond_33

    .line 79
    array-length p1, p2

    if-lez p1, :cond_33

    .line 80
    aget p1, p2, p4

    const/16 p3, 0x41

    if-ne p1, p3, :cond_11

    new-array p1, v6, [I

    .line 81
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 82
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v6, [I

    .line 83
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 84
    :cond_11
    aget p1, p2, p4

    const/16 p2, 0x1f

    if-ne p1, p2, :cond_33

    new-array p1, v6, [I

    .line 85
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_1b
    if-eqz p2, :cond_33

    .line 86
    array-length p1, p2

    if-lez p1, :cond_33

    const/16 p1, 0x23

    .line 87
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_1c
    if-eqz p2, :cond_33

    .line 88
    array-length p1, p2

    if-lez p1, :cond_33

    .line 89
    aget p1, p2, p4

    if-eqz p1, :cond_12

    .line 90
    aput v3, p2, p4

    :cond_12
    const/16 p1, 0x13

    .line 91
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_1d
    if-eqz p2, :cond_33

    .line 92
    array-length p1, p2

    if-lez p1, :cond_33

    .line 93
    aget p1, p2, p4

    if-eqz p1, :cond_13

    .line 94
    aput v3, p2, p4

    :cond_13
    const/16 p1, 0x12

    .line 95
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_1e
    if-eqz p2, :cond_33

    .line 96
    array-length p1, p2

    if-lez p1, :cond_33

    .line 97
    aget p1, p2, p4

    if-eqz p1, :cond_14

    .line 98
    aput v3, p2, p4

    :cond_14
    const/16 p1, 0x11

    .line 99
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_1f
    if-eqz p2, :cond_33

    .line 100
    array-length p1, p2

    if-lez p1, :cond_33

    .line 101
    aget p1, p2, p4

    if-eqz p1, :cond_15

    .line 102
    aput v3, p2, p4

    :cond_15
    const/16 p1, 0x10

    .line 103
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_20
    if-eqz p2, :cond_33

    .line 104
    array-length p1, p2

    if-lez p1, :cond_33

    .line 105
    aget p1, p2, p4

    const/16 p2, 0xf

    if-eqz p1, :cond_17

    if-eq p1, v3, :cond_16

    goto/16 :goto_8

    .line 106
    :cond_16
    invoke-virtual {p0, p2, v3}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    .line 107
    :cond_17
    invoke-virtual {p0, p2, p4}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_21
    if-eqz p2, :cond_33

    .line 108
    array-length p1, p2

    if-lez p1, :cond_33

    .line 109
    aget p1, p2, p4

    if-eqz p1, :cond_18

    .line 110
    aput v3, p2, p4

    :cond_18
    const/16 p1, 0xe

    .line 111
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_22
    if-eqz p2, :cond_33

    .line 112
    array-length p1, p2

    if-lez p1, :cond_33

    .line 113
    aget p1, p2, p4

    if-eqz p1, :cond_19

    .line 114
    aput v3, p2, p4

    :cond_19
    const/16 p1, 0xd

    .line 115
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_23
    if-eqz p2, :cond_33

    .line 116
    array-length p1, p2

    if-lez p1, :cond_33

    .line 117
    aget p1, p2, p4

    if-gez p1, :cond_1a

    .line 118
    aput p4, p2, p4

    goto :goto_3

    .line 119
    :cond_1a
    aget p1, p2, p4

    if-le p1, v1, :cond_1b

    .line 120
    aput v1, p2, p4

    :cond_1b
    :goto_3
    const/16 p1, 0xc

    .line 121
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_24
    const/16 p1, 0xa

    .line 122
    invoke-virtual {p0, p1, p4}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_25
    const/16 p1, 0x9

    .line 123
    invoke-virtual {p0, p1, p4}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_26
    const/16 p1, 0x8

    .line 124
    invoke-virtual {p0, p1, p4}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_27
    if-eqz p2, :cond_33

    .line 125
    array-length p1, p2

    if-lez p1, :cond_33

    .line 126
    aget p1, p2, p4

    if-gez p1, :cond_1c

    .line 127
    aput p4, p2, p4

    goto :goto_4

    .line 128
    :cond_1c
    aget p1, p2, p4

    if-le p1, v1, :cond_1d

    .line 129
    aput v1, p2, p4

    .line 130
    :cond_1d
    :goto_4
    aget p1, p2, p4

    invoke-virtual {p0, v8, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_28
    if-eqz p2, :cond_33

    .line 131
    array-length p1, p2

    if-lez p1, :cond_33

    .line 132
    aget p1, p2, p4

    if-gez p1, :cond_1e

    .line 133
    aput p4, p2, p4

    goto :goto_5

    .line 134
    :cond_1e
    aget p1, p2, p4

    if-le p1, v4, :cond_1f

    .line 135
    aput v4, p2, p4

    .line 136
    :cond_1f
    :goto_5
    aget p1, p2, p4

    invoke-virtual {p0, v6, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_29
    if-eqz p2, :cond_33

    .line 137
    array-length p1, p2

    if-lez p1, :cond_33

    .line 138
    aget p1, p2, p4

    if-eqz p1, :cond_20

    .line 139
    aput v3, p2, p4

    .line 140
    :cond_20
    aget p1, p2, p4

    invoke-virtual {p0, v0, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_2a
    if-eqz p2, :cond_33

    .line 141
    array-length p1, p2

    if-lez p1, :cond_33

    .line 142
    aget p1, p2, p4

    if-eqz p1, :cond_21

    .line 143
    aput v3, p2, p4

    .line 144
    :cond_21
    aget p1, p2, p4

    invoke-virtual {p0, v1, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_2b
    if-eqz p2, :cond_33

    .line 145
    array-length p1, p2

    if-lez p1, :cond_33

    .line 146
    aget p1, p2, p4

    if-eqz p1, :cond_22

    .line 147
    aput v3, p2, p4

    .line 148
    :cond_22
    aget p1, p2, p4

    invoke-virtual {p0, v2, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_2c
    if-eqz p2, :cond_33

    .line 149
    array-length p1, p2

    if-lez p1, :cond_33

    .line 150
    aget p1, p2, p4

    if-eqz p1, :cond_23

    .line 151
    aput v3, p2, p4

    .line 152
    :cond_23
    aget p1, p2, p4

    invoke-virtual {p0, v3, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_2d
    if-eqz p2, :cond_33

    .line 153
    array-length p1, p2

    if-lez p1, :cond_33

    .line 154
    aget p1, p2, p4

    if-eqz p1, :cond_24

    .line 155
    aput v3, p2, p4

    .line 156
    :cond_24
    aget p1, p2, p4

    invoke-virtual {p0, p4, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :pswitch_2e
    if-eqz p2, :cond_33

    .line 157
    array-length p1, p2

    if-lez p1, :cond_33

    .line 158
    aget p1, p2, p4

    if-gez p1, :cond_25

    .line 159
    aput p4, p2, p4

    goto :goto_6

    .line 160
    :cond_25
    aget p1, p2, p4

    if-le p1, v0, :cond_26

    .line 161
    aput v0, p2, p4

    .line 162
    :cond_26
    :goto_6
    aget p1, p2, p4

    invoke-virtual {p0, v4, p1}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    :cond_27
    if-eqz p2, :cond_33

    .line 163
    array-length p1, p2

    if-lez p1, :cond_33

    new-array p1, v3, [I

    .line 164
    aget p2, p2, p4

    aput p2, p1, p4

    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    :cond_28
    if-eqz p2, :cond_33

    .line 165
    array-length p1, p2

    if-lez p1, :cond_33

    const/16 p1, 0x25

    .line 166
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    goto/16 :goto_8

    .line 167
    :cond_29
    invoke-virtual {p0, p2, v2}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 168
    aget p1, p2, v3

    mul-int/lit16 p1, p1, 0xff

    invoke-static {}, La/f;->w()I

    move-result p3

    div-int/2addr p1, p3

    .line 169
    aget p3, p2, v2

    mul-int/lit16 p3, p3, 0xff

    invoke-static {}, La/f;->i()I

    move-result v4

    div-int/2addr p3, v4

    .line 170
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_2a

    .line 171
    aget p3, p2, v2

    mul-int/lit16 p3, p3, 0xff

    div-int/lit16 p3, p3, 0x208

    .line 172
    :cond_2a
    aget p2, p2, p4

    if-nez p2, :cond_2b

    new-array p2, v6, [I

    aput v5, p2, p4

    const/16 p4, 0x86

    aput p4, p2, v3

    aput v2, p2, v2

    aput p1, p2, v1

    aput p3, p2, v0

    .line 173
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_8

    :cond_2b
    new-array p1, v6, [I

    .line 174
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_8

    :cond_2c
    if-eqz p2, :cond_33

    .line 175
    array-length p1, p2

    if-lez p1, :cond_33

    .line 176
    aget p1, p2, p4

    const/16 p3, 0x21

    if-nez p1, :cond_2d

    .line 177
    invoke-virtual {p0, p3, v3}, Lk0/gh;->E3(II)V

    goto :goto_7

    .line 178
    :cond_2d
    aget p1, p2, p4

    if-ne p1, v3, :cond_2e

    .line 179
    invoke-virtual {p0, p3, v2}, Lk0/gh;->E3(II)V

    goto :goto_7

    .line 180
    :cond_2e
    aget p1, p2, p4

    if-ne p1, v1, :cond_2f

    .line 181
    invoke-virtual {p0, p3, v1}, Lk0/gh;->E3(II)V

    goto :goto_7

    .line 182
    :cond_2f
    aget p1, p2, p4

    if-ne p1, v2, :cond_30

    .line 183
    invoke-virtual {p0, p3, v4}, Lk0/gh;->E3(II)V

    .line 184
    :cond_30
    :goto_7
    sget p1, Lk0/gh;->k0:I

    if-eqz p1, :cond_33

    .line 185
    aget p1, p2, p4

    if-ne p1, v0, :cond_33

    const/16 p1, 0x20

    .line 186
    invoke-virtual {p0, p1, p4}, Lk0/gh;->E3(II)V

    goto :goto_8

    .line 187
    :cond_31
    aget p1, p2, p4

    aget p3, p2, v3

    aget v3, p2, v2

    aget v4, p2, v1

    aget v5, p2, v0

    move-object v0, p0

    move v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lk0/gh;->I3(IIIII)V

    goto :goto_8

    :cond_32
    if-eqz p2, :cond_33

    .line 188
    array-length p1, p2

    if-lez p1, :cond_33

    const/16 p1, 0x26

    .line 189
    aget p2, p2, p4

    invoke-virtual {p0, p1, p2}, Lk0/gh;->E3(II)V

    :cond_33
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

    :pswitch_data_3
    .packed-switch 0x61
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x70
        0x2
        0x1f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x86
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public final a3(I)I
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

.method public b([B)V
    .locals 9

    const v0, 0x4801c7

    const v1, 0x3e01c7

    const v2, 0x3f01c7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OBD Rcv--> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p1

    invoke-static {p1, v3, v8}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    sget v5, Lk0/nt;->a:I

    if-eq v5, v1, :cond_0

    if-eq v5, v2, :cond_0

    if-eq v5, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v5, p1

    new-array v5, v5, [I

    .line 4
    array-length v6, p1

    sub-int/2addr v6, v4

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_1

    .line 5
    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    const/16 v7, 0x41c

    invoke-static {v6, v7, v5}, Lo1/x;->B([Lo1/x;I[I)V

    .line 7
    :cond_2
    :goto_1
    sget v5, Lk0/nt;->a:I

    const/16 v6, 0x400

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v5, v2, :cond_20

    if-eq v5, v1, :cond_20

    if-ne v5, v0, :cond_3

    goto/16 :goto_11

    :cond_3
    const v0, 0x4e01c7

    const-wide/16 v1, 0x64

    if-eq v5, v0, :cond_12

    const v0, 0x4f01c7

    if-eq v5, v0, :cond_12

    const v0, 0x5001c7

    if-eq v5, v0, :cond_12

    const v0, 0x5101c7

    if-eq v5, v0, :cond_12

    const v0, 0x5401c7

    if-ne v5, v0, :cond_4

    goto/16 :goto_9

    :cond_4
    if-eqz p1, :cond_11

    .line 8
    array-length v0, p1

    if-gtz v0, :cond_5

    goto/16 :goto_8

    .line 9
    :cond_5
    iget v0, p0, Lk0/gh;->p:I

    array-length v1, p1

    add-int/2addr v0, v1

    if-le v0, v6, :cond_6

    .line 10
    iput v3, p0, Lk0/gh;->p:I

    .line 11
    iput v3, p0, Lk0/gh;->q:I

    .line 12
    iput v3, p0, Lk0/gh;->r:I

    .line 13
    :cond_6
    iget-object v0, p0, Lk0/gh;->o:[B

    iget v1, p0, Lk0/gh;->p:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v0, p0, Lk0/gh;->p:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lk0/gh;->p:I

    .line 15
    iget p1, p0, Lk0/gh;->r:I

    const/4 v1, -0x1

    if-eqz p1, :cond_a

    if-lt p1, v0, :cond_7

    return-void

    .line 16
    :cond_7
    iget-object p1, p0, Lk0/gh;->o:[B

    aget-byte p1, p1, v4

    move v0, v8

    .line 17
    :goto_2
    iget v2, p0, Lk0/gh;->r:I

    if-ge v0, v2, :cond_8

    .line 18
    iget-object v2, p0, Lk0/gh;->o:[B

    aget-byte v2, v2, v0

    add-int/2addr p1, v2

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 19
    iget-object v0, p0, Lk0/gh;->o:[B

    aget-byte v5, v0, v2

    if-ne p1, v5, :cond_9

    sub-int/2addr v2, v4

    .line 20
    invoke-virtual {p0, v0, v4, v2}, Lk0/gh;->U2([BII)V

    .line 21
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v0, v4, [B

    aput-byte v1, v0, v3

    invoke-virtual {p1, v0}, Lo1/e0;->i([B)V

    .line 22
    iget p1, p0, Lk0/gh;->r:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/gh;->q:I

    goto :goto_3

    .line 23
    :cond_9
    iput v4, p0, Lk0/gh;->q:I

    .line 24
    :goto_3
    iput v3, p0, Lk0/gh;->r:I

    .line 25
    :cond_a
    iget p1, p0, Lk0/gh;->p:I

    sub-int/2addr p1, v8

    :goto_4
    iget v0, p0, Lk0/gh;->q:I

    if-ge v0, p1, :cond_f

    .line 26
    iget-object v2, p0, Lk0/gh;->o:[B

    aget-byte v5, v2, v0

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_e

    add-int/lit8 v5, v0, 0x2

    .line 27
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lk0/gh;->r:I

    add-int/lit8 v6, v0, 0x3

    add-int/2addr v5, v6

    .line 28
    iput v5, p0, Lk0/gh;->r:I

    .line 29
    iget v6, p0, Lk0/gh;->p:I

    if-lt v5, v6, :cond_b

    sub-int/2addr v5, v0

    .line 30
    iput v5, p0, Lk0/gh;->r:I

    goto :goto_7

    :cond_b
    add-int/lit8 v5, v0, 0x1

    .line 31
    aget-byte v2, v2, v5

    add-int/lit8 v0, v0, 0x2

    .line 32
    :goto_5
    iget v5, p0, Lk0/gh;->r:I

    if-ge v0, v5, :cond_c

    .line 33
    iget-object v5, p0, Lk0/gh;->o:[B

    aget-byte v5, v5, v0

    add-int/2addr v2, v5

    int-to-byte v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    xor-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    .line 34
    iget-object v2, p0, Lk0/gh;->o:[B

    aget-byte v6, v2, v5

    if-ne v0, v6, :cond_d

    .line 35
    iget v0, p0, Lk0/gh;->q:I

    add-int/lit8 v6, v0, 0x1

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v6, v5}, Lk0/gh;->U2([BII)V

    .line 36
    sget-object v0, Lz/a;->i:Lo1/e0;

    new-array v2, v4, [B

    aput-byte v1, v2, v3

    invoke-virtual {v0, v2}, Lo1/e0;->i([B)V

    .line 37
    iget v0, p0, Lk0/gh;->r:I

    iput v0, p0, Lk0/gh;->q:I

    goto :goto_6

    .line 38
    :cond_d
    iget v0, p0, Lk0/gh;->q:I

    add-int/2addr v0, v4

    iput v0, p0, Lk0/gh;->q:I

    .line 39
    :goto_6
    iput v3, p0, Lk0/gh;->r:I

    .line 40
    :cond_e
    iget v0, p0, Lk0/gh;->q:I

    add-int/2addr v0, v4

    iput v0, p0, Lk0/gh;->q:I

    goto :goto_4

    :cond_f
    :goto_7
    if-eqz v0, :cond_2e

    .line 41
    iget p1, p0, Lk0/gh;->p:I

    sub-int/2addr p1, v0

    iput p1, p0, Lk0/gh;->p:I

    if-eqz p1, :cond_10

    .line 42
    iget-object v1, p0, Lk0/gh;->o:[B

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :cond_10
    iput v3, p0, Lk0/gh;->q:I

    goto/16 :goto_19

    .line 44
    :cond_11
    :goto_8
    invoke-static {v1, v2}, La/i;->a0(J)V

    return-void

    :cond_12
    :goto_9
    if-eqz p1, :cond_1f

    .line 45
    array-length v0, p1

    if-gtz v0, :cond_13

    goto/16 :goto_10

    .line 46
    :cond_13
    iget v0, p0, Lk0/gh;->p:I

    array-length v1, p1

    add-int/2addr v0, v1

    if-le v0, v6, :cond_14

    .line 47
    iput v3, p0, Lk0/gh;->p:I

    .line 48
    iput v3, p0, Lk0/gh;->q:I

    .line 49
    iput v3, p0, Lk0/gh;->r:I

    .line 50
    :cond_14
    iget-object v0, p0, Lk0/gh;->o:[B

    iget v1, p0, Lk0/gh;->p:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v0, p0, Lk0/gh;->p:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lk0/gh;->p:I

    .line 52
    iget p1, p0, Lk0/gh;->r:I

    if-eqz p1, :cond_18

    if-lt p1, v0, :cond_15

    return-void

    .line 53
    :cond_15
    iget-object p1, p0, Lk0/gh;->o:[B

    aget-byte p1, p1, v3

    move v0, v3

    .line 54
    :goto_a
    iget v1, p0, Lk0/gh;->r:I

    if-ge v0, v1, :cond_16

    .line 55
    iget-object v1, p0, Lk0/gh;->o:[B

    aget-byte v1, v1, v0

    add-int/2addr p1, v1

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 56
    iget-object v0, p0, Lk0/gh;->o:[B

    aget-byte v2, v0, v1

    if-ne p1, v2, :cond_17

    .line 57
    aget-byte p1, v0, v7

    iput p1, p0, Lk0/gh;->s:I

    add-int/2addr v1, v4

    .line 58
    iput v1, p0, Lk0/gh;->q:I

    goto :goto_b

    .line 59
    :cond_17
    iput v4, p0, Lk0/gh;->q:I

    .line 60
    :goto_b
    iput v3, p0, Lk0/gh;->r:I

    .line 61
    :cond_18
    iget p1, p0, Lk0/gh;->p:I

    sub-int/2addr p1, v4

    :goto_c
    iget v0, p0, Lk0/gh;->q:I

    if-ge v0, p1, :cond_1d

    .line 62
    iget-object v1, p0, Lk0/gh;->o:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_1c

    add-int/lit8 v0, v0, 0x4

    .line 63
    iput v0, p0, Lk0/gh;->r:I

    .line 64
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFrameStartIndex--> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lk0/gh;->q:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "mChecksumIndex--> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lk0/gh;->r:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lk0/gh;->r:I

    iget v1, p0, Lk0/gh;->p:I

    if-lt v0, v1, :cond_19

    .line 66
    iget p1, p0, Lk0/gh;->q:I

    sub-int/2addr v0, p1

    iput v0, p0, Lk0/gh;->r:I

    goto :goto_f

    .line 67
    :cond_19
    iget-object v0, p0, Lk0/gh;->o:[B

    iget v1, p0, Lk0/gh;->q:I

    aget-byte v0, v0, v1

    add-int/2addr v1, v4

    .line 68
    :goto_d
    iget v2, p0, Lk0/gh;->r:I

    if-ge v1, v2, :cond_1a

    .line 69
    iget-object v2, p0, Lk0/gh;->o:[B

    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1a
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 70
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checksum2--> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "DATA_MISC[mChecksumIndex]--> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lk0/gh;->o:[B

    iget v8, p0, Lk0/gh;->r:I

    aget-byte v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lk0/gh;->o:[B

    iget v2, p0, Lk0/gh;->r:I

    aget-byte v5, v1, v2

    if-ne v0, v5, :cond_1b

    .line 72
    iget v0, p0, Lk0/gh;->q:I

    add-int/2addr v0, v7

    aget-byte v0, v1, v0

    iput v0, p0, Lk0/gh;->s:I

    .line 73
    iput v2, p0, Lk0/gh;->q:I

    goto :goto_e

    .line 74
    :cond_1b
    iget v0, p0, Lk0/gh;->q:I

    add-int/2addr v0, v4

    iput v0, p0, Lk0/gh;->q:I

    .line 75
    :goto_e
    iput v3, p0, Lk0/gh;->r:I

    .line 76
    :cond_1c
    iget v0, p0, Lk0/gh;->q:I

    add-int/2addr v0, v4

    iput v0, p0, Lk0/gh;->q:I

    goto/16 :goto_c

    .line 77
    :cond_1d
    :goto_f
    iget p1, p0, Lk0/gh;->q:I

    if-eqz p1, :cond_2e

    .line 78
    iget v0, p0, Lk0/gh;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lk0/gh;->p:I

    if-eqz v0, :cond_1e

    .line 79
    iget-object v1, p0, Lk0/gh;->o:[B

    invoke-static {v1, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    :cond_1e
    iput v3, p0, Lk0/gh;->q:I

    goto/16 :goto_19

    .line 81
    :cond_1f
    :goto_10
    invoke-static {v1, v2}, La/i;->a0(J)V

    return-void

    :cond_20
    :goto_11
    if-eqz p1, :cond_2e

    .line 82
    array-length v0, p1

    if-gtz v0, :cond_21

    goto/16 :goto_19

    .line 83
    :cond_21
    iget v0, p0, Lk0/gh;->p:I

    array-length v1, p1

    add-int/2addr v0, v1

    if-le v0, v6, :cond_22

    .line 84
    iput v3, p0, Lk0/gh;->p:I

    .line 85
    iput v3, p0, Lk0/gh;->q:I

    .line 86
    iput v3, p0, Lk0/gh;->r:I

    .line 87
    :cond_22
    iget-object v0, p0, Lk0/gh;->o:[B

    iget v1, p0, Lk0/gh;->p:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lk0/gh;->p:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lk0/gh;->p:I

    .line 89
    iget p1, p0, Lk0/gh;->r:I

    if-eqz p1, :cond_26

    if-lt p1, v0, :cond_23

    return-void

    .line 90
    :cond_23
    iget-object p1, p0, Lk0/gh;->o:[B

    aget-byte p1, p1, v8

    move v0, v7

    .line 91
    :goto_12
    iget v1, p0, Lk0/gh;->r:I

    if-ge v0, v1, :cond_24

    .line 92
    iget-object v1, p0, Lk0/gh;->o:[B

    aget-byte v1, v1, v0

    add-int/2addr p1, v1

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_24
    sub-int/2addr p1, v4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 93
    iget-object v0, p0, Lk0/gh;->o:[B

    aget-byte v1, v0, v1

    if-ne p1, v1, :cond_25

    .line 94
    aget-byte p1, v0, v8

    invoke-virtual {p0, v0, v8, p1}, Lk0/gh;->U2([BII)V

    .line 95
    iget p1, p0, Lk0/gh;->r:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/gh;->q:I

    goto :goto_13

    .line 96
    :cond_25
    iput v8, p0, Lk0/gh;->q:I

    .line 97
    :goto_13
    iput v3, p0, Lk0/gh;->r:I

    .line 98
    :cond_26
    iget p1, p0, Lk0/gh;->p:I

    sub-int/2addr p1, v7

    :goto_14
    iget v0, p0, Lk0/gh;->q:I

    if-ge v0, p1, :cond_2c

    .line 99
    iget-object v1, p0, Lk0/gh;->o:[B

    aget-byte v2, v1, v0

    const/16 v5, 0x5a

    if-ne v2, v5, :cond_2b

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    const/16 v5, -0x5b

    if-ne v2, v5, :cond_2b

    .line 100
    iget v2, p0, Lk0/gh;->r:I

    const/16 v5, 0x200

    if-le v2, v5, :cond_27

    .line 101
    iput v3, p0, Lk0/gh;->r:I

    goto :goto_17

    :cond_27
    add-int/lit8 v2, v0, 0x2

    .line 102
    aget-byte v2, v1, v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lk0/gh;->r:I

    .line 103
    iget v5, p0, Lk0/gh;->p:I

    if-lt v2, v5, :cond_28

    sub-int/2addr v2, v0

    .line 104
    iput v2, p0, Lk0/gh;->r:I

    goto :goto_18

    :cond_28
    add-int/lit8 v2, v0, 0x2

    .line 105
    aget-byte v1, v1, v2

    add-int/lit8 v0, v0, 0x3

    .line 106
    :goto_15
    iget v2, p0, Lk0/gh;->r:I

    if-ge v0, v2, :cond_29

    .line 107
    iget-object v2, p0, Lk0/gh;->o:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_29
    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    .line 108
    iget-object v1, p0, Lk0/gh;->o:[B

    aget-byte v2, v1, v2

    if-ne v0, v2, :cond_2a

    .line 109
    iget v0, p0, Lk0/gh;->q:I

    add-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v8

    aget-byte v0, v1, v0

    invoke-virtual {p0, v1, v2, v0}, Lk0/gh;->U2([BII)V

    .line 110
    iget v0, p0, Lk0/gh;->r:I

    iput v0, p0, Lk0/gh;->q:I

    goto :goto_16

    .line 111
    :cond_2a
    iget v0, p0, Lk0/gh;->q:I

    add-int/2addr v0, v4

    iput v0, p0, Lk0/gh;->q:I

    .line 112
    :goto_16
    iput v3, p0, Lk0/gh;->r:I

    .line 113
    :cond_2b
    :goto_17
    iget v0, p0, Lk0/gh;->q:I

    add-int/2addr v0, v4

    iput v0, p0, Lk0/gh;->q:I

    goto :goto_14

    :cond_2c
    :goto_18
    if-eqz v0, :cond_2e

    .line 114
    iget p1, p0, Lk0/gh;->p:I

    sub-int/2addr p1, v0

    iput p1, p0, Lk0/gh;->p:I

    if-eqz p1, :cond_2d

    .line 115
    iget-object v1, p0, Lk0/gh;->o:[B

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_2d
    iput v3, p0, Lk0/gh;->q:I

    :cond_2e
    :goto_19
    return-void
.end method

.method public final b3(I)V
    .locals 6

    .line 1
    iget v0, p0, Lk0/gh;->j0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    iput v0, p0, Lk0/gh;->j0:I

    const/16 v3, 0x8

    new-array v3, v3, [B

    const/16 v4, 0x2e

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/16 v4, 0x33

    aput-byte v4, v3, v1

    const/4 v1, 0x4

    aput-byte v1, v3, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput-byte p1, v3, v2

    if-nez v0, :cond_0

    const/16 p1, 0x22

    goto :goto_0

    :cond_0
    const/16 p1, 0xcc

    :goto_0
    int-to-byte p1, p1

    aput-byte p1, v3, v1

    const/4 p1, 0x5

    aput-byte v5, v3, p1

    const/4 p1, 0x6

    aput-byte v5, v3, p1

    const/4 p1, 0x7

    aput-byte v5, v3, p1

    .line 2
    invoke-static {v3}, Lk0/gh;->U3([B)V

    return-void
.end method

.method public final c3(Z)V
    .locals 4

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 1111111=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/gh;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/gh;->E:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    iput-boolean p1, p0, Lk0/gh;->E:Z

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo 222222=== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/gh;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6521"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_3
    const-string v1, "6316"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "6312"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "6315"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6318"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "6319"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-eqz p1, :cond_6

    .line 12
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 13
    :cond_6
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_7
    :goto_0
    const/16 v0, 0xe

    if-eqz p1, :cond_8

    .line 14
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 15
    :cond_8
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_9
    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_a

    .line 16
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 17
    :cond_a
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_2
    return-void
.end method
