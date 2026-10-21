.class public Lk0/ll;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A0:I

.field public static q0:Le/e$a;

.field public static r0:I

.field public static s0:I

.field public static t0:I

.field public static u0:I

.field public static v0:I

.field public static w0:I

.field public static x0:I

.field public static y0:I

.field public static z0:I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Z

.field public D:Ljava/lang/Runnable;

.field public E:Ljava/lang/Runnable;

.field public F:Ljava/lang/Runnable;

.field public G:I

.field public H:Z

.field public I:I

.field public J:I

.field public K:Z

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public final a0:I

.field public b:I

.field public final b0:I

.field public c:I

.field public c0:Lo1/g0;

.field public d:[[I

.field public d0:I

.field public e:I

.field public e0:I

.field public f:I

.field public f0:I

.field public g:[[I

.field public g0:I

.field public h:I

.field public h0:Ljava/lang/Runnable;

.field public i:I

.field public i0:Ljava/lang/Runnable;

.field public j:I

.field public j0:I

.field public k:I

.field public k0:Ljava/lang/Runnable;

.field public l:Lo1/p;

.field public l0:Z

.field public m:I

.field public m0:B

.field public n:I

.field public n0:Ljava/lang/Runnable;

.field public o:I

.field public o0:Ljava/lang/Runnable;

.field public p:I

.field public p0:I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:I

.field public t:Z

.field public u:Ljava/lang/Runnable;

.field public v:Z

.field public w:Z

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Le/e$a;-><init>(III)V

    sput-object v0, Lk0/ll;->q0:Le/e$a;

    const/16 v0, 0xff

    .line 2
    sput v0, Lk0/ll;->r0:I

    .line 3
    sput v1, Lk0/ll;->s0:I

    const/4 v0, 0x1

    .line 4
    sput v0, Lk0/ll;->t0:I

    .line 5
    sput v1, Lk0/ll;->u0:I

    .line 6
    sput v1, Lk0/ll;->v0:I

    .line 7
    sput v1, Lk0/ll;->w0:I

    .line 8
    sput v1, Lk0/ll;->x0:I

    .line 9
    sput v1, Lk0/ll;->y0:I

    .line 10
    sput v1, Lk0/ll;->z0:I

    .line 11
    sput v1, Lk0/ll;->A0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/ll;->c:I

    const/16 v2, 0xd

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

    const/16 v2, 0xc

    aput-object v5, v3, v2

    iput-object v3, v0, Lk0/ll;->d:[[I

    .line 4
    iput v1, v0, Lk0/ll;->f:I

    const/16 v3, 0x24

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_d

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    const/16 v11, 0xd

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    const/16 v11, 0xe

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    const/16 v11, 0xf

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    const/16 v11, 0x10

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    const/16 v11, 0x11

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    const/16 v11, 0x12

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    const/16 v11, 0x13

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    const/16 v11, 0x14

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    const/16 v11, 0x15

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    const/16 v11, 0x16

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    const/16 v11, 0x17

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    const/16 v11, 0x18

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    const/16 v11, 0x19

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    const/16 v11, 0x1a

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    const/16 v11, 0x1b

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    const/16 v11, 0x1c

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    const/16 v11, 0x1d

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    const/16 v11, 0x1e

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    const/16 v11, 0x1f

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    const/16 v11, 0x20

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    const/16 v15, 0x21

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    const/16 v15, 0x22

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_30

    const/16 v15, 0x23

    aput-object v5, v3, v15

    iput-object v3, v0, Lk0/ll;->g:[[I

    .line 6
    iput v1, v0, Lk0/ll;->h:I

    const/4 v3, -0x1

    .line 7
    iput v3, v0, Lk0/ll;->i:I

    .line 8
    iput v3, v0, Lk0/ll;->j:I

    .line 9
    iput v3, v0, Lk0/ll;->k:I

    .line 10
    new-instance v5, Lk0/ll$k;

    invoke-direct {v5, v0}, Lk0/ll$k;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->l:Lo1/p;

    .line 11
    iput v1, v0, Lk0/ll;->m:I

    .line 12
    iput v1, v0, Lk0/ll;->n:I

    .line 13
    iput v1, v0, Lk0/ll;->o:I

    .line 14
    iput v1, v0, Lk0/ll;->p:I

    .line 15
    iput v1, v0, Lk0/ll;->q:I

    .line 16
    new-instance v5, Lk0/ll$l;

    invoke-direct {v5, v0}, Lk0/ll$l;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->r:Ljava/lang/Runnable;

    .line 17
    iput v1, v0, Lk0/ll;->s:I

    .line 18
    iput-boolean v1, v0, Lk0/ll;->t:Z

    .line 19
    new-instance v5, Lk0/ll$m;

    invoke-direct {v5, v0}, Lk0/ll$m;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->u:Ljava/lang/Runnable;

    .line 20
    iput-boolean v1, v0, Lk0/ll;->v:Z

    .line 21
    iput-boolean v1, v0, Lk0/ll;->w:Z

    .line 22
    new-instance v5, Lk0/ll$n;

    invoke-direct {v5, v0}, Lk0/ll$n;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->x:Ljava/lang/Runnable;

    .line 23
    new-instance v5, Lk0/ll$o;

    invoke-direct {v5, v0}, Lk0/ll$o;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->y:Ljava/lang/Runnable;

    .line 24
    iput v1, v0, Lk0/ll;->z:I

    .line 25
    new-instance v5, Lk0/ll$p;

    invoke-direct {v5, v0}, Lk0/ll$p;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->A:Ljava/lang/Runnable;

    .line 26
    new-instance v5, Lk0/ll$q;

    invoke-direct {v5, v0}, Lk0/ll$q;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->B:Ljava/lang/Runnable;

    .line 27
    iput-boolean v1, v0, Lk0/ll;->C:Z

    .line 28
    new-instance v5, Lk0/ll$r;

    invoke-direct {v5, v0}, Lk0/ll$r;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->D:Ljava/lang/Runnable;

    .line 29
    new-instance v5, Lk0/ll$s;

    invoke-direct {v5, v0}, Lk0/ll$s;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->E:Ljava/lang/Runnable;

    .line 30
    new-instance v5, Lk0/ll$a;

    invoke-direct {v5, v0}, Lk0/ll$a;-><init>(Lk0/ll;)V

    iput-object v5, v0, Lk0/ll;->F:Ljava/lang/Runnable;

    .line 31
    iput v3, v0, Lk0/ll;->G:I

    .line 32
    iput-boolean v1, v0, Lk0/ll;->H:Z

    .line 33
    iput v1, v0, Lk0/ll;->I:I

    .line 34
    iput v1, v0, Lk0/ll;->J:I

    .line 35
    iput-boolean v1, v0, Lk0/ll;->K:Z

    .line 36
    iput v1, v0, Lk0/ll;->L:I

    .line 37
    iput v1, v0, Lk0/ll;->M:I

    .line 38
    iput v1, v0, Lk0/ll;->N:I

    .line 39
    iput v1, v0, Lk0/ll;->O:I

    const/16 v5, 0xff

    .line 40
    iput v5, v0, Lk0/ll;->P:I

    const/16 v5, 0xfe

    .line 41
    iput v5, v0, Lk0/ll;->Q:I

    .line 42
    iput v1, v0, Lk0/ll;->R:I

    .line 43
    iput-boolean v1, v0, Lk0/ll;->S:Z

    .line 44
    iput v6, v0, Lk0/ll;->T:I

    .line 45
    iput v4, v0, Lk0/ll;->U:I

    .line 46
    iput v7, v0, Lk0/ll;->V:I

    .line 47
    iput v8, v0, Lk0/ll;->W:I

    .line 48
    iput v10, v0, Lk0/ll;->X:I

    .line 49
    iput v12, v0, Lk0/ll;->Y:I

    .line 50
    iput v13, v0, Lk0/ll;->Z:I

    .line 51
    iput v14, v0, Lk0/ll;->a0:I

    .line 52
    iput v2, v0, Lk0/ll;->b0:I

    .line 53
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v11}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/ll;->c0:Lo1/g0;

    .line 54
    iput v1, v0, Lk0/ll;->d0:I

    .line 55
    iput v1, v0, Lk0/ll;->e0:I

    .line 56
    iput v1, v0, Lk0/ll;->f0:I

    .line 57
    iput v1, v0, Lk0/ll;->g0:I

    .line 58
    new-instance v2, Lk0/ll$f;

    invoke-direct {v2, v0}, Lk0/ll$f;-><init>(Lk0/ll;)V

    iput-object v2, v0, Lk0/ll;->h0:Ljava/lang/Runnable;

    .line 59
    new-instance v2, Lk0/ll$g;

    invoke-direct {v2, v0}, Lk0/ll$g;-><init>(Lk0/ll;)V

    iput-object v2, v0, Lk0/ll;->i0:Ljava/lang/Runnable;

    .line 60
    iput v3, v0, Lk0/ll;->j0:I

    .line 61
    new-instance v2, Lk0/ll$h;

    invoke-direct {v2, v0}, Lk0/ll$h;-><init>(Lk0/ll;)V

    iput-object v2, v0, Lk0/ll;->k0:Ljava/lang/Runnable;

    .line 62
    iput-boolean v1, v0, Lk0/ll;->l0:Z

    .line 63
    iput-byte v9, v0, Lk0/ll;->m0:B

    .line 64
    new-instance v2, Lk0/ll$i;

    invoke-direct {v2, v0}, Lk0/ll$i;-><init>(Lk0/ll;)V

    iput-object v2, v0, Lk0/ll;->n0:Ljava/lang/Runnable;

    .line 65
    new-instance v2, Lk0/ll$j;

    invoke-direct {v2, v0}, Lk0/ll$j;-><init>(Lk0/ll;)V

    iput-object v2, v0, Lk0/ll;->o0:Ljava/lang/Runnable;

    .line 66
    iput v1, v0, Lk0/ll;->p0:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x22
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x23
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
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x11
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x12
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x13
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x12
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x5
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x1d
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x8
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_12
    .array-data 4
        0xa
        0x15
    .end array-data

    :array_13
    .array-data 4
        0xb
        0x36
    .end array-data

    :array_14
    .array-data 4
        0xc
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0xd
        0x26
    .end array-data

    :array_16
    .array-data 4
        0xe
        0x12
    .end array-data

    :array_17
    .array-data 4
        0xf
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x11
        0x22
    .end array-data

    :array_19
    .array-data 4
        0x12
        0x23
    .end array-data

    :array_1a
    .array-data 4
        0x13
        0x20
    .end array-data

    :array_1b
    .array-data 4
        0x14
        0x21
    .end array-data

    :array_1c
    .array-data 4
        0x21
        0x9
    .end array-data

    :array_1d
    .array-data 4
        0x22
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0x31
        0x1d
    .end array-data

    :array_1f
    .array-data 4
        0x32
        0x28
    .end array-data

    :array_20
    .array-data 4
        0x33
        0x29
    .end array-data

    :array_21
    .array-data 4
        0x34
        0x2a
    .end array-data

    :array_22
    .array-data 4
        0x35
        0x2b
    .end array-data

    :array_23
    .array-data 4
        0x36
        0x2c
    .end array-data

    :array_24
    .array-data 4
        0x37
        0x2d
    .end array-data

    :array_25
    .array-data 4
        0x38
        0x2e
    .end array-data

    :array_26
    .array-data 4
        0x39
        0x2f
    .end array-data

    :array_27
    .array-data 4
        0x3a
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x3b
        0x4
    .end array-data

    :array_29
    .array-data 4
        0x3c
        -0x1
    .end array-data

    :array_2a
    .array-data 4
        0x3d
        -0x1
    .end array-data

    :array_2b
    .array-data 4
        0x81
        0x3
    .end array-data

    :array_2c
    .array-data 4
        0x82
        0x4
    .end array-data

    :array_2d
    .array-data 4
        0x83
        0x1e
    .end array-data

    :array_2e
    .array-data 4
        0x84
        0x1f
    .end array-data

    :array_2f
    .array-data 4
        0x90
        0x12
    .end array-data

    :array_30
    .array-data 4
        0x91
        0x1a
    .end array-data
.end method

.method public static synthetic c3()Le/e$a;
    .locals 1

    .line 1
    sget-object v0, Lk0/ll;->q0:Le/e$a;

    return-object v0
.end method

.method public static synthetic d3(Le/e$a;)Le/e$a;
    .locals 0

    .line 1
    sput-object p0, Lk0/ll;->q0:Le/e$a;

    return-object p0
.end method

.method public static synthetic e3(Lk0/ll;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ll;->b3(Z)V

    return-void
.end method

.method public static synthetic f3(Lk0/ll;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ll;->t3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/ll;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ll;->s3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/ll;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ll;->q3(Z)V

    return-void
.end method

.method public static synthetic i3()I
    .locals 1

    .line 1
    sget v0, Lk0/ll;->s0:I

    return v0
.end method

.method public static synthetic j3(Lk0/ll;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ll;->B:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic k3(Lk0/ll;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ll;->o0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic l3(Lk0/ll;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ll;->c0:Lo1/g0;

    return-object p0
.end method

.method public static synthetic m3(Lk0/ll;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ll;->v3(I)V

    return-void
.end method

.method public static synthetic n3(Lk0/ll;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ll;->r3(I)V

    return-void
.end method

.method public static synthetic o3(Lk0/ll;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ll;->u3(I)V

    return-void
.end method


# virtual methods
.method public K2()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk0/ll;->a3()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    .line 2
    sput v0, Ly0/f;->C0:I

    :cond_0
    return-void
.end method

.method public O2([I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    aget p1, p1, v0

    const/16 v1, 0x45

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x84

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v0

    const/4 v0, 0x0

    invoke-static {p1, v1, v3, v0, v0}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lk0/ll;->a3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/e;->e:Lo1/z;

    iget-object v1, p0, Lk0/ll;->l:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->a(Lo1/p;)V

    .line 3
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ll;->n0:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v1, p0, Lk0/ll;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/ll;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/ll;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ll;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/ll;->x:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v1, Lu0/c;->n:Lo1/y;

    iget-object v3, p0, Lk0/ll;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v1, p0, Lk0/ll;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lk0/ll;->k0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    const-string v0, "persist.sys.syu.dsp"

    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lk0/ll;->d0:I

    const/4 v3, 0x4

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->b:I

    .line 14
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {v0, v2}, Ln0/c4;->g3(Z)V

    .line 15
    invoke-static {v3}, Ly0/h;->V(I)V

    .line 16
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0, v2}, Lui/b;->a(Z)V

    .line 18
    :cond_1
    iget-object v0, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 19
    sget v0, Lk0/nt;->c:I

    const/16 v4, 0xa

    const/4 v5, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ll;->p3(I)V

    goto :goto_1

    .line 21
    :cond_3
    :goto_0
    iget-object v0, p0, Lk0/ll;->c0:Lo1/g0;

    const/4 v6, 0x2

    invoke-virtual {v0, v2, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ll;->p3(I)V

    .line 22
    iget-object v0, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {v0, v6, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ll;->x3(I)V

    .line 23
    iget-object v0, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {v0, v5, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ll;->y3(I)V

    .line 24
    iget-object v0, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {v0, v3, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/ll;->w3(I)V

    :goto_1
    const-string v0, "ro.build.fytmanufacturer"

    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    .line 26
    sput-object v3, Le/c;->f:Lo1/o;

    .line 27
    sput-object v3, Le/c;->g:Lo1/o;

    .line 28
    sput-object v3, Le/c;->e:Lo1/o;

    .line 29
    sput-object v3, Le/c;->i:Lo1/o;

    .line 30
    sget v6, Lk0/nt;->c:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    const/16 v7, 0x5f

    if-ne v0, v7, :cond_4

    .line 31
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lk0/ll;->i0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    const-string v0, "com.syu.canbus"

    if-ne v6, v4, :cond_5

    .line 33
    new-instance v3, Lk0/ll$b;

    invoke-direct {v3, p0}, Lk0/ll$b;-><init>(Lk0/ll;)V

    sput-object v3, Le/c;->f:Lo1/o;

    .line 34
    new-instance v3, Lk0/ll$c;

    invoke-direct {v3, p0}, Lk0/ll$c;-><init>(Lk0/ll;)V

    sput-object v3, Le/c;->g:Lo1/o;

    .line 35
    new-instance v3, Lk0/ll$d;

    invoke-direct {v3, p0}, Lk0/ll$d;-><init>(Lk0/ll;)V

    sput-object v3, Le/c;->e:Lo1/o;

    .line 36
    new-instance v3, Lk0/ll$e;

    invoke-direct {v3, p0}, Lk0/ll$e;-><init>(Lk0/ll;)V

    sput-object v3, Le/c;->i:Lo1/o;

    .line 37
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_2

    .line 38
    :cond_5
    iget-object v3, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lk0/mt;->a:[Ljava/lang/String;

    .line 39
    :goto_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->e:I

    .line 40
    sget v3, Lk0/nt;->c:I

    if-eq v3, v2, :cond_7

    if-eq v3, v5, :cond_7

    if-ne v3, v4, :cond_6

    goto :goto_3

    .line 41
    :cond_6
    iput v1, v0, Lk0/mt;->f:I

    goto :goto_4

    .line 42
    :cond_7
    :goto_3
    iput v2, v0, Lk0/mt;->f:I

    .line 43
    :goto_4
    iput v2, v0, Lk0/mt;->g:I

    .line 44
    iput v1, v0, Lk0/mt;->j:I

    .line 45
    iput v1, v0, Lk0/mt;->o:I

    .line 46
    iput v2, v0, Lk0/mt;->l:I

    new-array v2, v2, [I

    const/16 v3, 0x45

    aput v3, v2, v1

    .line 47
    iput-object v2, v0, Lk0/mt;->m:[I

    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v6, 0x77

    const/16 v7, 0x12

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, 0x3

    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eq v2, v7, :cond_4c

    const/16 v5, 0x18

    const v18, 0xff00

    if-eq v2, v5, :cond_49

    const/16 v5, 0x24

    const/16 v8, 0xf

    if-eq v2, v5, :cond_40

    const/16 v5, 0x2e

    if-eq v2, v5, :cond_39

    const/16 v5, 0x30

    if-eq v2, v5, :cond_38

    const/16 v5, 0x31

    if-eq v2, v5, :cond_35

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1c

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 3
    aget-byte v1, v1, v5

    and-int/2addr v2, v4

    .line 4
    iput v2, v0, Lk0/ll;->f:I

    move v2, v3

    .line 5
    :goto_0
    iget-object v5, v0, Lk0/ll;->g:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 6
    iget v6, v0, Lk0/ll;->f:I

    aget-object v8, v5, v2

    aget v8, v8, v3

    if-ne v6, v8, :cond_0

    if-eqz v6, :cond_1

    .line 7
    iput v2, v0, Lk0/ll;->e:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget v6, v0, Lk0/ll;->f:I

    const/16 v8, 0xe

    if-eq v6, v8, :cond_8

    const/16 v7, 0x22

    if-eq v6, v7, :cond_7

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_4

    and-int/2addr v1, v4

    if-ne v1, v9, :cond_2

    .line 9
    array-length v1, v5

    if-ge v2, v1, :cond_6b

    .line 10
    aget-object v1, v5, v2

    aget v1, v1, v9

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_1c

    :cond_2
    if-nez v1, :cond_6b

    .line 11
    iget v1, v0, Lk0/ll;->e:I

    array-length v2, v5

    if-ge v1, v2, :cond_3

    if-eq v1, v4, :cond_3

    .line 12
    aget-object v1, v5, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 13
    :cond_3
    iput v4, v0, Lk0/ll;->e:I

    goto/16 :goto_1c

    :cond_4
    and-int/2addr v1, v4

    if-ne v1, v9, :cond_6b

    .line 14
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 15
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 16
    :cond_5
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 17
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_1c

    :cond_6
    and-int/2addr v1, v4

    if-ne v1, v9, :cond_6b

    .line 18
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 19
    sget-object v1, La/b;->R:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_7
    and-int/2addr v1, v4

    if-ne v1, v9, :cond_6b

    .line 20
    invoke-static {}, Lu0/d;->u1()V

    goto/16 :goto_1c

    :cond_8
    and-int/2addr v1, v4

    if-ne v1, v9, :cond_6b

    .line 21
    sget v1, Lh0/c;->E:I

    if-eq v1, v15, :cond_a

    if-eq v1, v12, :cond_9

    if-eq v1, v13, :cond_a

    goto/16 :goto_1c

    .line 22
    :cond_9
    invoke-static {v7, v3}, Ll0/b0;->l0(II)V

    .line 23
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_1c

    :cond_a
    const/16 v1, 0x1a

    .line 24
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    .line 25
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_1c

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 27
    aget-byte v1, v1, v5

    and-int/2addr v2, v4

    .line 28
    iput v2, v0, Lk0/ll;->c:I

    move v2, v3

    .line 29
    :goto_2
    iget-object v5, v0, Lk0/ll;->d:[[I

    array-length v6, v5

    if-ge v2, v6, :cond_c

    .line 30
    iget v6, v0, Lk0/ll;->c:I

    aget-object v7, v5, v2

    aget v7, v7, v3

    if-ne v6, v7, :cond_b

    if-eqz v6, :cond_c

    .line 31
    iput v2, v0, Lk0/ll;->b:I

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    and-int/2addr v1, v4

    if-ne v1, v9, :cond_d

    .line 32
    array-length v1, v5

    if-ge v2, v1, :cond_6b

    .line 33
    aget-object v1, v5, v2

    aget v1, v1, v9

    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_1c

    :cond_d
    if-nez v1, :cond_6b

    .line 34
    iget v1, v0, Lk0/ll;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_e

    if-eq v1, v4, :cond_e

    .line 35
    aget-object v1, v5, v1

    aget v1, v1, v9

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 36
    :cond_e
    iput v4, v0, Lk0/ll;->b:I

    goto/16 :goto_1c

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 37
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    iput v2, v0, Lk0/ll;->I:I

    const/16 v2, 0x6d

    new-array v5, v9, [I

    add-int/lit8 v7, p2, 0x3

    .line 38
    aget-byte v16, v1, v7

    and-int/lit8 v16, v16, 0xf

    aput v16, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 39
    aget-byte v2, v1, v7

    and-int/2addr v2, v8

    .line 40
    invoke-virtual/range {p0 .. p0}, Lk0/ll;->a3()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 41
    iget v5, v0, Lk0/ll;->J:I

    if-eq v5, v2, :cond_20

    .line 42
    iput v2, v0, Lk0/ll;->J:I

    if-nez v2, :cond_20

    .line 43
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-array v2, v10, [I

    .line 44
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 45
    :cond_f
    iget v5, v0, Lk0/ll;->J:I

    if-eq v5, v2, :cond_1f

    .line 46
    iput v2, v0, Lk0/ll;->J:I

    .line 47
    iget v2, v0, Lk0/ll;->d0:I

    if-ne v2, v9, :cond_13

    .line 48
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v5, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " DataCanbus.DATA[U_CAR_BACKCAR_MUTE] =  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lk0/nt;->g:[I

    const/16 v17, 0x85

    aget v12, v8, v17

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v2, 0x85

    .line 49
    aget v2, v8, v2

    if-nez v2, :cond_13

    sget v2, Lk0/nt;->c:I

    if-eq v2, v11, :cond_13

    .line 50
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 51
    iget v2, v0, Lk0/ll;->J:I

    if-ne v2, v10, :cond_10

    const/16 v2, 0x400

    .line 52
    invoke-static {v2, v9}, Ly0/h;->Y(IZ)V

    .line 53
    iput v9, v0, Lk0/ll;->e0:I

    goto :goto_4

    .line 54
    :cond_10
    iget v2, v0, Lk0/ll;->e0:I

    if-ne v2, v9, :cond_13

    const/16 v2, 0x400

    .line 55
    invoke-static {v2, v3}, Ly0/h;->Y(IZ)V

    .line 56
    iput v3, v0, Lk0/ll;->e0:I

    goto :goto_4

    .line 57
    :cond_11
    iget v2, v0, Lk0/ll;->J:I

    if-ne v2, v10, :cond_12

    .line 58
    sget v2, Ly0/f;->i:I

    if-eq v2, v9, :cond_13

    const/4 v2, -0x5

    .line 59
    invoke-static {v2}, Ly0/h;->u0(I)V

    .line 60
    iput v9, v0, Lk0/ll;->e0:I

    goto :goto_4

    .line 61
    :cond_12
    iget v2, v0, Lk0/ll;->e0:I

    if-ne v2, v9, :cond_13

    const/4 v2, -0x5

    .line 62
    invoke-static {v2}, Ly0/h;->u0(I)V

    .line 63
    iput v3, v0, Lk0/ll;->e0:I

    .line 64
    :cond_13
    :goto_4
    iget v2, v0, Lk0/ll;->J:I

    if-ne v2, v10, :cond_16

    .line 65
    iget v2, v0, Lk0/ll;->h:I

    or-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->h:I

    .line 66
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v6

    if-ne v2, v14, :cond_14

    goto/16 :goto_6

    .line 67
    :cond_14
    sget v2, Lk0/nt;->c:I

    if-ne v2, v11, :cond_15

    .line 68
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_6

    .line 69
    :cond_15
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x7d

    new-array v5, v9, [I

    aput v9, v5, v3

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_16
    if-ne v2, v9, :cond_18

    .line 70
    iget v2, v0, Lk0/ll;->h:I

    or-int/2addr v2, v14

    iput v2, v0, Lk0/ll;->h:I

    .line 71
    sget v4, Lk0/nt;->c:I

    if-ne v4, v11, :cond_17

    if-ne v2, v15, :cond_17

    .line 72
    sget v2, Lu0/b;->o:I

    if-ne v2, v9, :cond_17

    .line 73
    invoke-static {v3}, Lk0/qt;->a(I)V

    .line 74
    iput v14, v0, Lk0/ll;->h:I

    .line 75
    :cond_17
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 76
    iput-boolean v9, v0, Lk0/ll;->H:Z

    .line 77
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_6

    .line 78
    :cond_18
    iget v2, v0, Lk0/ll;->h:I

    if-ne v2, v9, :cond_1b

    .line 79
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v6

    if-ne v2, v14, :cond_19

    goto :goto_5

    .line 80
    :cond_19
    sget v2, Lk0/nt;->c:I

    if-ne v2, v11, :cond_1a

    .line 81
    invoke-static {v3}, Lk0/qt;->a(I)V

    goto :goto_5

    .line 82
    :cond_1a
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x7d

    new-array v5, v9, [I

    aput v3, v5, v3

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_5

    :cond_1b
    if-ne v2, v14, :cond_1c

    .line 83
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-boolean v2, v0, Lk0/ll;->t:Z

    if-nez v2, :cond_1e

    .line 84
    invoke-static {}, Lo1/u;->k()V

    goto :goto_5

    .line 85
    :cond_1c
    sget v4, Lk0/nt;->c:I

    if-ne v4, v11, :cond_1d

    if-ne v2, v15, :cond_1d

    .line 86
    sget v2, Lu0/b;->o:I

    if-ne v2, v9, :cond_1d

    .line 87
    invoke-static {v3}, Lk0/qt;->a(I)V

    .line 88
    :cond_1d
    invoke-static {v13, v3}, Ll0/b0;->l0(II)V

    .line 89
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    .line 90
    sget-object v2, Lu0/b;->c:Lu0/h;

    invoke-interface {v2, v3}, Lu0/h;->c(I)V

    .line 91
    :cond_1e
    :goto_5
    iput v3, v0, Lk0/ll;->h:I

    .line 92
    iput-boolean v3, v0, Lk0/ll;->H:Z

    goto :goto_6

    :cond_1f
    if-ne v5, v2, :cond_20

    .line 93
    sget v2, Lk0/nt;->c:I

    if-ne v2, v13, :cond_20

    if-ne v5, v9, :cond_20

    .line 94
    iget v2, v0, Lk0/ll;->h:I

    or-int/2addr v2, v14

    iput v2, v0, Lk0/ll;->h:I

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JumpPage.isAppTop(DataApp.sAppCarVideoPrefix) 2222222222= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, La/b;->Q:Ljava/lang/String;

    invoke-static {v4}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zed"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 97
    iput-boolean v9, v0, Lk0/ll;->H:Z

    const-string v2, "zed"

    const-string v4, "JumpPage.activityByIntentName = 2222222222"

    .line 98
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_20
    :goto_6
    const/16 v2, 0x6e

    new-array v4, v9, [I

    .line 100
    aget-byte v5, v1, v7

    const/4 v6, 0x4

    shr-int/2addr v5, v6

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 101
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 102
    sget v2, Lk0/nt;->c:I

    if-eq v2, v9, :cond_27

    if-eq v2, v15, :cond_27

    const/16 v4, 0xa

    if-ne v2, v4, :cond_21

    goto :goto_7

    :cond_21
    if-ne v2, v14, :cond_24

    .line 103
    iget v2, v0, Lk0/ll;->P:I

    aget-byte v4, v1, v5

    shr-int/2addr v4, v3

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_2a

    .line 104
    aget-byte v2, v1, v5

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->P:I

    if-ne v2, v9, :cond_22

    .line 105
    invoke-virtual {v0, v3}, Lk0/ll;->b3(Z)V

    goto/16 :goto_8

    .line 106
    :cond_22
    invoke-static {v13, v3}, Ll0/b0;->l0(II)V

    .line 107
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    .line 108
    sget-object v2, Lu0/b;->c:Lu0/h;

    invoke-interface {v2, v3}, Lu0/h;->c(I)V

    .line 109
    sget v2, Lh0/c;->E:I

    if-eq v2, v15, :cond_23

    const/4 v4, 0x4

    if-eq v2, v4, :cond_23

    if-eq v2, v13, :cond_23

    goto :goto_8

    .line 110
    :cond_23
    invoke-virtual {v0, v9}, Lk0/ll;->b3(Z)V

    goto :goto_8

    .line 111
    :cond_24
    iget v2, v0, Lk0/ll;->P:I

    aget-byte v4, v1, v5

    shr-int/2addr v4, v3

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_2a

    .line 112
    aget-byte v2, v1, v5

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->P:I

    if-ne v2, v9, :cond_25

    .line 113
    invoke-virtual {v0, v3}, Lk0/ll;->b3(Z)V

    goto :goto_8

    .line 114
    :cond_25
    sget v2, Lh0/c;->E:I

    if-eq v2, v15, :cond_26

    const/4 v4, 0x4

    if-eq v2, v4, :cond_26

    if-eq v2, v13, :cond_26

    goto :goto_8

    .line 115
    :cond_26
    invoke-virtual {v0, v9}, Lk0/ll;->b3(Z)V

    goto :goto_8

    .line 116
    :cond_27
    :goto_7
    iget v2, v0, Lk0/ll;->P:I

    aget-byte v4, v1, v5

    shr-int/2addr v4, v3

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_2a

    .line 117
    aget-byte v2, v1, v5

    shr-int/2addr v2, v3

    and-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->P:I

    if-ne v2, v9, :cond_28

    const/16 v2, 0x82

    new-array v4, v9, [I

    aput v3, v4, v3

    .line 118
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 119
    iput v3, v0, Lk0/ll;->z:I

    .line 120
    iget-object v2, v0, Lk0/ll;->A:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {v0, v3}, Lk0/ll;->b3(Z)V

    goto :goto_8

    .line 122
    :cond_28
    invoke-static {v13, v3}, Ll0/b0;->l0(II)V

    .line 123
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    .line 124
    sget-object v2, Lu0/b;->c:Lu0/h;

    invoke-interface {v2, v3}, Lu0/h;->c(I)V

    .line 125
    sget v2, Lh0/c;->E:I

    if-eq v2, v15, :cond_29

    const/4 v4, 0x4

    if-eq v2, v4, :cond_29

    if-eq v2, v13, :cond_29

    goto :goto_8

    .line 126
    :cond_29
    invoke-virtual {v0, v9}, Lk0/ll;->b3(Z)V

    :cond_2a
    :goto_8
    const/16 v2, 0x70

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 127
    aget-byte v6, v1, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 128
    aget-byte v2, v1, v5

    and-int/2addr v2, v7

    iput v2, v0, Lk0/ll;->Q:I

    .line 129
    iget v2, v0, Lk0/ll;->R:I

    add-int/lit8 v4, p2, 0x6

    aget-byte v5, v1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    if-eq v2, v5, :cond_2c

    .line 130
    aget-byte v2, v1, v4

    shr-int/2addr v2, v9

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_2b

    sget v2, Lu0/b;->j:I

    if-ne v2, v9, :cond_2b

    const/16 v2, 0x19

    .line 131
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    .line 132
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 133
    :cond_2b
    aget-byte v2, v1, v4

    shr-int/2addr v2, v9

    and-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->R:I

    :cond_2c
    const/16 v2, 0xa7

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 134
    aget-byte v1, v1, v5

    const/4 v5, 0x4

    shr-int/2addr v1, v5

    and-int/2addr v1, v9

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 135
    iput-boolean v9, v0, Lk0/ll;->S:Z

    goto/16 :goto_1c

    :pswitch_3
    const/16 v2, 0xa1

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 136
    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 137
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    const/16 v4, 0xc

    const-string v5, "ascii"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v1, 0xa2

    .line 138
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_1c

    .line 139
    :pswitch_4
    sget v2, Lk0/nt;->c:I

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2d

    goto/16 :goto_1c

    .line 140
    :cond_2d
    iget v2, v0, Lk0/ll;->G:I

    add-int/lit8 v4, p2, 0x2

    aget-byte v5, v1, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-eq v2, v5, :cond_2f

    const/16 v5, 0x11

    if-ne v2, v5, :cond_2e

    .line 141
    aget-byte v2, v1, v4

    const/16 v5, 0x11

    if-eq v2, v5, :cond_2e

    .line 142
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 143
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    .line 144
    :cond_2e
    aget-byte v2, v1, v4

    const/16 v5, 0xff

    and-int/2addr v2, v5

    iput v2, v0, Lk0/ll;->G:I

    goto :goto_9

    :cond_2f
    const/16 v5, 0xff

    :goto_9
    const/16 v2, 0x88

    new-array v6, v9, [I

    .line 145
    aget-byte v8, v1, v4

    and-int/2addr v8, v5

    aput v8, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v6, v9, [I

    add-int/lit8 v8, p2, 0x3

    .line 146
    aget-byte v8, v1, v8

    and-int/2addr v8, v5

    aput v8, v6, v3

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    .line 147
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    if-eqz v2, :cond_34

    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    if-eq v2, v9, :cond_34

    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    if-ne v2, v14, :cond_30

    goto/16 :goto_a

    .line 148
    :cond_30
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    const/16 v6, 0xf

    if-ne v2, v6, :cond_31

    const/16 v2, 0x8d

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 149
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 150
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 151
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 152
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v9, [I

    .line 153
    aget-byte v6, v1, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v4, v9, [I

    .line 154
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v4, v9, [I

    .line 155
    aget-byte v6, v1, v5

    shr-int/2addr v6, v15

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v4, v9, [I

    .line 156
    aget-byte v6, v1, v5

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v4, v9, [I

    .line 157
    aget-byte v6, v1, v5

    shr-int/2addr v6, v13

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v4, v9, [I

    .line 158
    aget-byte v6, v1, v5

    shr-int/2addr v6, v11

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v4, v9, [I

    .line 159
    aget-byte v5, v1, v5

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v4, v9, [I

    const/16 v5, 0x8

    add-int/lit8 v5, p2, 0x8

    .line 160
    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    .line 161
    :cond_31
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    const/16 v6, 0x10

    if-ne v2, v6, :cond_32

    const/16 v2, 0x8d

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 162
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 163
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 164
    aget-byte v6, v1, v6

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 165
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v4, v9, [I

    .line 166
    aget-byte v1, v1, v5

    shr-int/2addr v1, v9

    and-int/2addr v1, v9

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    .line 167
    :cond_32
    aget-byte v2, v1, v4

    const/16 v5, 0xff

    and-int/2addr v2, v5

    if-ne v2, v7, :cond_33

    const/16 v2, 0x99

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 168
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 169
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x6

    .line 170
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 171
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v4, v9, [I

    .line 172
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v4, v9, [I

    const/16 v5, 0x8

    add-int/lit8 v5, p2, 0x8

    .line 173
    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    .line 174
    :cond_33
    aget-byte v2, v1, v4

    and-int/2addr v2, v5

    const/16 v4, 0x14

    if-ne v2, v4, :cond_6b

    const/16 v2, 0x9f

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x4

    .line 175
    aget-byte v6, v1, v6

    and-int/2addr v6, v5

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x5

    .line 176
    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_34
    :goto_a
    const/16 v2, 0x8a

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 177
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v18

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x6

    .line 178
    aget-byte v5, v1, v5

    and-int/2addr v5, v7

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 179
    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    .line 180
    :pswitch_5
    invoke-static {}, Lo1/i;->o()Lo1/i;

    move-result-object v1

    iget-boolean v1, v1, Lo1/i;->b:Z

    goto/16 :goto_1c

    .line 181
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lk0/ll;->a3()Z

    move-result v2

    if-nez v2, :cond_37

    .line 182
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v6

    if-ne v2, v14, :cond_37

    add-int/lit8 v2, p2, 0x2

    .line 183
    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_36

    .line 184
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/high16 v4, 0x20000

    invoke-virtual {v2, v4, v9}, Lu0/i;->g4(IZ)V

    goto :goto_b

    :cond_36
    const/high16 v4, 0x20000

    .line 185
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lu0/i;->g4(IZ)V

    :cond_37
    :goto_b
    add-int/lit8 v2, p2, 0x3

    .line 186
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x14

    div-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 187
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    div-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 188
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    div-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 189
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    div-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 190
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    div-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x8

    .line 191
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    div-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x9

    .line 192
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    div-int/2addr v2, v4

    invoke-static {v2}, Lu0/d;->T2(I)V

    const/16 v2, 0xa

    add-int/lit8 v2, p2, 0xa

    .line 193
    aget-byte v1, v1, v2

    and-int/2addr v1, v3

    div-int/2addr v1, v4

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_1c

    .line 194
    :cond_38
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_39
    add-int/lit8 v2, p2, 0x2

    .line 195
    aget-byte v2, v1, v2

    const/16 v4, -0x69

    if-eq v2, v4, :cond_3f

    const/16 v4, -0x5c

    if-eq v2, v4, :cond_3e

    if-eq v2, v14, :cond_3d

    if-eq v2, v15, :cond_3c

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3b

    if-eq v2, v13, :cond_3a

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1c

    :pswitch_6
    const/16 v2, 0xac

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 196
    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :pswitch_7
    const/16 v5, 0xff

    const/16 v2, 0xab

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 197
    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :pswitch_8
    const/16 v5, 0xff

    const/16 v2, 0x87

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 198
    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :pswitch_9
    const/16 v5, 0xff

    const/16 v2, 0x86

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 199
    aget-byte v1, v1, v6

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_3a
    const/16 v5, 0xff

    const/16 v2, 0x7e

    new-array v4, v9, [I

    add-int/lit8 v6, p2, 0x3

    .line 200
    aget-byte v1, v1, v6

    add-int/2addr v1, v9

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_3b
    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 201
    aget-byte v5, v1, v4

    and-int/2addr v5, v10

    aput v5, v2, v3

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v5, v9, [I

    .line 202
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v9

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v5, v9, [I

    .line 203
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v5, v9, [I

    .line 204
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v9

    aput v1, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_3c
    const/16 v2, 0x74

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 205
    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 206
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 207
    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_3d
    const/16 v2, 0x71

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 208
    aget-byte v5, v1, v5

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 209
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 210
    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_3e
    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x3

    .line 211
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v15

    or-int/lit16 v5, v5, 0x100

    aput v5, v2, v3

    const/16 v5, 0x412

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 212
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v15

    or-int/lit16 v6, v6, 0x200

    aput v6, v2, v3

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 213
    aget-byte v4, v1, v4

    shr-int/2addr v4, v3

    and-int/2addr v4, v15

    or-int/lit16 v4, v4, 0x400

    aput v4, v2, v3

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 214
    aget-byte v1, v1, v4

    shr-int/2addr v1, v11

    and-int/2addr v1, v15

    or-int/lit16 v1, v1, 0x800

    aput v1, v2, v3

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_3f
    const/16 v2, 0x85

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 215
    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_40
    move v5, v4

    add-int/lit8 v2, p2, 0x2

    .line 216
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v4, p2, 0x3

    .line 217
    aget-byte v6, v1, v4

    and-int/2addr v6, v5

    add-int/lit8 v8, p2, 0x4

    .line 218
    aget-byte v10, v1, v8

    and-int/2addr v10, v5

    add-int/lit8 v11, p2, 0x5

    .line 219
    aget-byte v11, v1, v11

    and-int/2addr v11, v5

    add-int/lit8 v12, p2, 0x6

    .line 220
    aget-byte v12, v1, v12

    and-int/2addr v12, v5

    add-int/lit8 v13, p2, 0x7

    .line 221
    aget-byte v13, v1, v13

    and-int/2addr v13, v5

    const/16 v14, 0x50

    new-array v15, v9, [I

    and-int/2addr v2, v5

    aput v2, v15, v3

    .line 222
    invoke-static {v14, v15}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 223
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 224
    aget-byte v2, v1, v8

    and-int/lit16 v6, v2, 0xff

    .line 225
    aget-byte v2, v1, v4

    and-int/lit16 v10, v2, 0xff

    :cond_41
    and-int/lit16 v2, v6, 0xff

    const/16 v4, 0x1b

    if-eqz v2, :cond_44

    const/16 v6, 0xfe

    if-eq v2, v6, :cond_43

    if-eq v2, v5, :cond_42

    new-array v5, v9, [I

    aput v2, v5, v3

    .line 226
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_42
    new-array v2, v9, [I

    const/4 v5, -0x3

    aput v5, v2, v3

    .line 227
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_43
    new-array v2, v9, [I

    const/4 v5, -0x1

    aput v5, v2, v3

    .line 228
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_44
    new-array v2, v9, [I

    const/4 v5, -0x2

    aput v5, v2, v3

    .line 229
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_c
    const/16 v2, 0xff

    and-int/lit16 v4, v10, 0xff

    if-eqz v4, :cond_47

    const/16 v5, 0xfe

    if-eq v4, v5, :cond_46

    if-eq v4, v2, :cond_45

    const/16 v2, 0x1c

    new-array v5, v9, [I

    aput v4, v5, v3

    .line 230
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_45
    const/16 v2, 0x1c

    new-array v4, v9, [I

    const/4 v5, -0x3

    aput v5, v4, v3

    .line 231
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_46
    const/16 v2, 0x1c

    new-array v4, v9, [I

    const/4 v5, -0x1

    aput v5, v4, v3

    .line 232
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_d

    :cond_47
    const/16 v2, 0x1c

    new-array v4, v9, [I

    const/4 v5, -0x2

    aput v5, v4, v3

    .line 233
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_d
    const/16 v2, 0x31

    new-array v4, v9, [I

    shr-int/lit8 v5, v11, 0x7

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 234
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v11, 0x6

    and-int/2addr v4, v9

    aput v4, v2, v3

    const/16 v4, 0x14

    .line 235
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v9, [I

    shr-int/lit8 v5, v11, 0x5

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 236
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    shr-int/lit8 v4, v11, 0x4

    and-int/lit8 v5, v4, 0x1

    aput v5, v2, v3

    .line 237
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v5, v9, [I

    const/16 v6, 0xf

    and-int/2addr v4, v6

    aput v4, v5, v3

    .line 238
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v4, v9, [I

    shr-int/lit8 v5, v11, 0x3

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 239
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v4, v9, [I

    shr-int/lit8 v5, v11, 0x2

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 240
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v4, v9, [I

    shr-int/lit8 v5, v11, 0x1

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 241
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v4, v9, [I

    shr-int/lit8 v5, v11, 0x0

    and-int/lit8 v6, v5, 0x1

    aput v6, v4, v3

    .line 242
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x57

    new-array v4, v9, [I

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v4, v3

    .line 243
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 244
    sget v2, Lk0/nt;->c:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_48

    const/16 v2, 0x15

    new-array v4, v9, [I

    const/16 v5, 0xff

    and-int/2addr v5, v12

    aput v5, v4, v3

    .line 245
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_48
    const/16 v2, 0x15

    new-array v4, v9, [I

    shr-int/lit8 v5, v12, 0x4

    const/16 v6, 0xf

    and-int/2addr v5, v6

    aput v5, v4, v3

    .line 246
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x19

    new-array v4, v9, [I

    shr-int/lit8 v5, v12, 0x0

    and-int/2addr v5, v6

    aput v5, v4, v3

    .line 247
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_e
    const/16 v2, 0xc

    new-array v4, v9, [I

    shr-int/lit8 v5, v13, 0x7

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 248
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v4, v9, [I

    shr-int/lit8 v5, v13, 0x6

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 249
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v4, v9, [I

    shr-int/lit8 v5, v13, 0x5

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 250
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v9, [I

    shr-int/lit8 v5, v13, 0x4

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 251
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v4, v9, [I

    shr-int/lit8 v5, v13, 0x3

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 252
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v4, v9, [I

    shr-int/lit8 v5, v13, 0x1

    and-int/2addr v5, v9

    aput v5, v4, v3

    .line 253
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v4, v9, [I

    const/16 v5, 0x8

    add-int/lit8 v5, p2, 0x8

    .line 254
    aget-byte v6, v1, v5

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    const/4 v7, 0x3

    and-int/2addr v6, v7

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v4, v9, [I

    .line 255
    aget-byte v1, v1, v5

    shr-int/2addr v1, v3

    and-int/2addr v1, v7

    aput v1, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_49
    const/16 v2, 0x69

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 256
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v18

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 257
    aget-byte v6, v1, v5

    and-int/2addr v6, v7

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.oil_warning_value"

    const/16 v4, 0xa

    .line 258
    invoke-static {v2, v4}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    .line 259
    iget v4, v0, Lk0/ll;->j:I

    if-ne v4, v9, :cond_4b

    .line 260
    aget-byte v4, v1, v5

    if-ge v4, v2, :cond_4a

    .line 261
    aget-byte v2, v1, v5

    if-lez v2, :cond_4a

    const/16 v2, 0xa3

    new-array v4, v9, [I

    aput v9, v4, v3

    .line 262
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 263
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v14, [I

    fill-array-data v4, :array_1

    const/16 v5, 0x419

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_f

    :cond_4a
    const/16 v5, 0x419

    const/4 v6, 0x0

    const/16 v2, 0xa3

    new-array v4, v9, [I

    aput v3, v4, v3

    .line 264
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 265
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v14, [I

    fill-array-data v4, :array_2

    invoke-static {v2, v5, v4, v6, v6}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_4b
    :goto_f
    const/16 v2, 0x6b

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x5

    .line 266
    aget-byte v5, v1, v5

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    and-int v5, v5, v18

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, v1, v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x8

    .line 267
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x9

    aget-byte v6, v1, v6

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    and-int v6, v6, v18

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v1, v6

    const/16 v7, 0xff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 268
    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0x7f

    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v9

    const/16 v2, 0x32

    invoke-static {v4, v3, v1, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_1c

    :cond_4c
    const/16 v2, 0x62

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x2

    .line 269
    aget-byte v7, v1, v5

    shr-int/2addr v7, v11

    and-int/2addr v7, v9

    aput v7, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v4, v9, [I

    .line 270
    aget-byte v7, v1, v5

    shr-int/2addr v7, v13

    and-int/2addr v7, v9

    aput v7, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lk0/ll;->a3()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 272
    sget v2, Lu0/b;->P:I

    if-nez v2, :cond_4f

    .line 273
    aget-byte v2, v1, v5

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    if-eq v2, v9, :cond_4e

    aget-byte v2, v1, v5

    shr-int/2addr v2, v13

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_4d

    goto :goto_10

    .line 274
    :cond_4d
    invoke-static {v3}, Lu0/d;->d1(I)V

    goto :goto_11

    .line 275
    :cond_4e
    :goto_10
    invoke-static {v9}, Lu0/d;->d1(I)V

    :cond_4f
    :goto_11
    const/16 v2, 0x64

    new-array v4, v9, [I

    .line 276
    aget-byte v7, v1, v5

    shr-int/2addr v7, v14

    and-int/2addr v7, v9

    aput v7, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v4, v9, [I

    .line 277
    aget-byte v7, v1, v5

    shr-int/2addr v7, v9

    and-int/2addr v7, v9

    aput v7, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 278
    aget-byte v2, v1, v5

    shr-int/2addr v2, v9

    and-int/2addr v2, v9

    .line 279
    aget-byte v4, v1, v5

    shr-int/2addr v4, v14

    and-int/2addr v4, v9

    .line 280
    sget-object v5, Lk0/nt;->g:[I

    const/16 v7, 0x7a

    aget v7, v5, v7

    if-ne v7, v9, :cond_50

    aget v5, v5, v6

    if-eq v5, v14, :cond_51

    .line 281
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lk0/ll;->a3()Z

    move-result v5

    if-eqz v5, :cond_58

    :cond_51
    if-nez v2, :cond_52

    if-ne v4, v9, :cond_52

    move v5, v9

    goto :goto_12

    :cond_52
    move v5, v3

    :goto_12
    if-ne v2, v9, :cond_53

    if-nez v4, :cond_53

    move v6, v9

    goto :goto_13

    :cond_53
    move v6, v3

    :goto_13
    if-ne v2, v9, :cond_54

    if-ne v4, v9, :cond_54

    move v2, v9

    goto :goto_14

    :cond_54
    move v2, v3

    .line 282
    :goto_14
    sput v3, Ll0/c0;->t:I

    .line 283
    sput v3, Ll0/c0;->r:I

    .line 284
    sput v3, Ll0/c0;->v:I

    const/16 v4, 0x14

    if-eqz v5, :cond_55

    .line 285
    sput v4, Ll0/c0;->t:I

    :cond_55
    if-eqz v6, :cond_56

    .line 286
    sput v4, Ll0/c0;->r:I

    :cond_56
    if-eqz v2, :cond_57

    .line 287
    sput v4, Ll0/c0;->v:I

    .line 288
    :cond_57
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 289
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    const/16 v7, 0x1000

    invoke-virtual {v4, v7, v5}, Lu0/i;->g4(IZ)V

    .line 290
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5, v6}, Lu0/i;->g4(IZ)V

    const/16 v4, 0x8b

    new-array v5, v9, [I

    aput v2, v5, v3

    .line 291
    invoke-static {v4, v5}, Lu0/d;->I3(I[I)V

    :cond_58
    const/16 v2, 0x83

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x3

    .line 292
    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x4

    .line 293
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lk0/ll;->a3()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 295
    iget v2, v0, Lk0/ll;->N:I

    aget-byte v4, v1, v5

    shr-int/2addr v4, v10

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_5b

    .line 296
    aget-byte v2, v1, v5

    shr-int/2addr v2, v10

    and-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->N:I

    if-nez v2, :cond_59

    .line 297
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "persist.lesc.carui.accstate"

    const-string v4, "true"

    .line 298
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v13, v3}, Ll0/b0;->l0(II)V

    .line 300
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    goto :goto_15

    :cond_59
    if-ne v2, v9, :cond_5b

    const-string v2, "persist.lesc.carui.accstate"

    .line 301
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "sys.lsec.boot_ignore_carui"

    .line 302
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 303
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 304
    invoke-static {}, Lo1/u;->z()I

    :cond_5a
    const-string v2, "persist.lesc.carui.accstate"

    const-string v4, "false"

    .line 305
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_5b
    :goto_15
    iget v2, v0, Lk0/ll;->M:I

    aget-byte v4, v1, v5

    shr-int/2addr v4, v11

    and-int/2addr v4, v9

    if-eq v2, v4, :cond_65

    .line 307
    aget-byte v2, v1, v5

    shr-int/2addr v2, v11

    and-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->M:I

    .line 308
    sget v4, Lu0/b;->r0:I

    if-nez v4, :cond_60

    if-ne v2, v9, :cond_5e

    .line 309
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-nez v2, :cond_5c

    const-string v2, "persist.lesc.video.ignore"

    const-string v4, "true"

    .line 310
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0xc8

    .line 311
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 312
    iput-boolean v9, v0, Lk0/ll;->K:Z

    .line 313
    invoke-static {}, Lo1/u;->z()I

    .line 314
    :cond_5c
    sget v2, Ly0/f;->x:I

    if-nez v2, :cond_5d

    sget v2, Ly0/f;->c:I

    sget v4, Ly0/f;->R:I

    mul-int/2addr v2, v4

    sget v4, Ly0/f;->S:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    goto :goto_16

    :cond_5d
    const/4 v2, 0x0

    :goto_16
    float-to-int v2, v2

    .line 315
    sget v4, Ly0/f;->c:I

    iput v4, v0, Lk0/ll;->O:I

    .line 316
    invoke-static {v2}, Ly0/h;->t0(I)V

    goto/16 :goto_18

    .line 317
    :cond_5e
    iget v2, v0, Lk0/ll;->O:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    .line 318
    iget-boolean v2, v0, Lk0/ll;->K:Z

    if-eqz v2, :cond_5f

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_5f

    const-wide/16 v6, 0x64

    .line 319
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 320
    invoke-static {}, Lo1/u;->k()V

    const-wide/16 v6, 0x15e

    .line 321
    invoke-static {v6, v7}, La/i;->a0(J)V

    const-string v2, "persist.lesc.video.ignore"

    const-string v4, "false"

    .line 322
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_5f
    iput-boolean v3, v0, Lk0/ll;->K:Z

    goto :goto_18

    .line 324
    :cond_60
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 325
    iget v2, v0, Lk0/ll;->M:I

    if-ne v2, v9, :cond_62

    .line 326
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/high16 v4, 0x20000

    invoke-virtual {v2, v4, v9}, Lu0/i;->g4(IZ)V

    .line 327
    sget v2, Ly0/f;->x:I

    if-nez v2, :cond_61

    sget v2, Ly0/f;->c:I

    sget v4, Ly0/f;->R:I

    mul-int/2addr v2, v4

    sget v4, Ly0/f;->S:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    goto :goto_17

    :cond_61
    const/4 v2, 0x0

    :goto_17
    float-to-int v2, v2

    .line 328
    sget v4, Ly0/f;->c:I

    iput v4, v0, Lk0/ll;->O:I

    .line 329
    invoke-static {v2}, Ly0/h;->t0(I)V

    goto :goto_18

    .line 330
    :cond_62
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/high16 v4, 0x20000

    invoke-virtual {v2, v4, v3}, Lu0/i;->g4(IZ)V

    .line 331
    iget v2, v0, Lk0/ll;->O:I

    invoke-static {v2}, Ly0/h;->t0(I)V

    goto :goto_18

    .line 332
    :cond_63
    iget v2, v0, Lk0/ll;->M:I

    if-ne v2, v9, :cond_64

    .line 333
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto :goto_18

    .line 334
    :cond_64
    invoke-static {v3}, Lk0/qt;->a(I)V

    .line 335
    :cond_65
    :goto_18
    aget-byte v2, v1, v5

    const/4 v4, 0x3

    shr-int/2addr v2, v4

    and-int/2addr v2, v9

    iput v2, v0, Lk0/ll;->j:I

    if-ne v2, v9, :cond_67

    .line 336
    aget-byte v2, v1, v5

    shr-int/2addr v2, v14

    and-int/2addr v2, v9

    if-nez v2, :cond_66

    const/16 v2, 0xa4

    new-array v4, v9, [I

    aput v9, v4, v3

    .line 337
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 338
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v14, [I

    fill-array-data v4, :array_3

    const/16 v6, 0x419

    const/4 v7, 0x0

    invoke-static {v2, v6, v4, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_19

    :cond_66
    const/16 v6, 0x419

    const/4 v7, 0x0

    const/16 v2, 0xa4

    new-array v4, v9, [I

    aput v14, v4, v3

    .line 339
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 340
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v14, [I

    fill-array-data v4, :array_4

    invoke-static {v2, v6, v4, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_67
    :goto_19
    const/16 v2, 0x68

    new-array v4, v9, [I

    .line 341
    aget-byte v6, v1, v5

    shr-int/2addr v6, v3

    and-int/2addr v6, v9

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v4, v9, [I

    .line 342
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v9

    aput v5, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.syu.reversefrontdoor"

    .line 343
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_68

    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 344
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v2, v3

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 345
    aget-byte v4, v1, v4

    shr-int/2addr v4, v11

    and-int/2addr v4, v9

    aput v4, v2, v3

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_68
    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 346
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v2, v3

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 347
    aget-byte v4, v1, v4

    shr-int/2addr v4, v10

    and-int/2addr v4, v9

    aput v4, v2, v3

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    :goto_1a
    new-array v2, v9, [I

    add-int/lit8 v4, p2, 0x5

    .line 348
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v9

    aput v5, v2, v3

    const/4 v5, 0x3

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 349
    aget-byte v6, v1, v4

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v2, v3

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v9, [I

    .line 350
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v2, v3

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v4, v9, [I

    add-int/lit8 v5, p2, 0x7

    .line 351
    aget-byte v6, v1, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    aput v6, v4, v3

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 352
    aget-byte v1, v1, v5

    and-int/2addr v1, v7

    if-nez v1, :cond_69

    .line 353
    invoke-static {v3}, Lu0/d;->A3(I)V

    goto :goto_1c

    :cond_69
    const-string v2, "persist.fyt.temperature"

    .line 354
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_6a

    const/16 v2, 0x9

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_6a
    mul-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x258

    .line 355
    :goto_1b
    invoke-static {v1}, Lu0/d;->B3(I)V

    :cond_6b
    :goto_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x98
        0x4
        0xa1
        0x1
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x1
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ll;->n0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/ll;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ll;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Le/e;->e:Lo1/z;

    iget-object v2, p0, Lk0/ll;->l:Lo1/p;

    invoke-virtual {v1, v2}, Lo1/z;->d(Lo1/p;)V

    .line 6
    sget-object v1, Ly0/g;->t:Lo1/y;

    iget-object v2, p0, Lk0/ll;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lk0/ll;->B:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v1, p0, Lk0/ll;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->n:Lo1/y;

    iget-object v1, p0, Lk0/ll;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ll;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, p0, Lk0/ll;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/ll;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/ll;->k0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/ll;->i0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    const-string v0, "persist.sys.syu.dsp"

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lk0/ll;->d0:I

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->b:I

    .line 17
    sget-object v0, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {v0, v1}, Ln0/c4;->g3(Z)V

    const/4 v0, 0x4

    .line 18
    invoke-static {v0}, Ly0/h;->V(I)V

    .line 19
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lui/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xad

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

    move-object/from16 v2, p2

    const/16 v4, 0x98

    const/16 v5, 0xe3

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_13

    const/16 v14, 0xa2

    const/16 v15, 0xa

    if-eq v1, v12, :cond_10

    const/16 v3, 0x8

    if-eq v1, v10, :cond_d

    if-eq v1, v8, :cond_c

    if-eq v1, v11, :cond_16

    if-eq v1, v15, :cond_b

    const/16 v15, 0xb

    if-eq v1, v15, :cond_a

    const/16 v15, 0x2d

    if-eq v1, v15, :cond_9

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v14, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C_CANBUS_BENZ_BUTTON = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v13

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v14, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    aget v1, v2, v13

    shr-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_8

    const/16 v6, 0xa4

    if-eq v1, v12, :cond_7

    if-eq v1, v10, :cond_6

    if-eq v1, v11, :cond_5

    if-eq v1, v3, :cond_4

    const/16 v3, 0x10

    if-eq v1, v3, :cond_2

    const/16 v3, 0x20

    if-eq v1, v3, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    aget v1, v2, v13

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v12, :cond_1

    new-array v1, v7, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    aget v1, v2, v13

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_16

    new-array v1, v7, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :cond_2
    aget v1, v2, v13

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v12, :cond_3

    new-array v1, v7, [I

    .line 8
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    aget v1, v2, v13

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_16

    new-array v1, v7, [I

    .line 10
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    aput v6, v1, v8

    aput v3, v1, v11

    .line 11
    aget v2, v2, v13

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    const/4 v2, 0x6

    aput v13, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    aput v6, v1, v8

    aput v7, v1, v11

    .line 12
    aget v2, v2, v13

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    const/4 v3, 0x6

    aput v13, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x6

    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    aput v6, v1, v8

    aput v3, v1, v11

    .line 13
    aget v2, v2, v13

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    aput v13, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    aput v6, v1, v8

    aput v9, v1, v11

    .line 14
    aget v2, v2, v13

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    const/4 v2, 0x6

    aput v13, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_8
    new-array v1, v7, [I

    .line 15
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :pswitch_1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v6, "C_CANBUS_AUDI_CAR_TYPE = 22222222222"

    invoke-virtual {v1, v3, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    const/16 v3, 0xa3

    aput v3, v1, v8

    .line 17
    aget v2, v2, v13

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v11

    aput v13, v1, v9

    const/4 v2, 0x6

    aput v13, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 18
    :pswitch_2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v3, "C_CANBUSDVR_CMD = 11111111111111111111111"

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    aput v14, v1, v8

    aput v11, v1, v11

    .line 19
    iget v2, v0, Lk0/ll;->Q:I

    aput v2, v1, v9

    const/4 v2, 0x6

    aput v13, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 20
    :cond_9
    aget v1, v2, v13

    invoke-virtual {v0, v1}, Lk0/ll;->u3(I)V

    .line 21
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->t3(I)V

    goto/16 :goto_0

    .line 22
    :cond_a
    aget v1, v2, v13

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0xfb

    if-ne v1, v3, :cond_16

    .line 23
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->r3(I)V

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_16

    .line 24
    array-length v1, v2

    if-lez v1, :cond_16

    .line 25
    aget v1, v2, v13

    iput v1, v0, Lk0/ll;->L:I

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_16

    .line 26
    array-length v1, v2

    if-lez v1, :cond_16

    new-array v1, v9, [I

    .line 27
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 28
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v9, [I

    .line 29
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_d
    if-eqz v2, :cond_16

    .line 30
    array-length v1, v2

    if-lez v1, :cond_16

    .line 31
    sget v1, Lk0/nt;->c:I

    if-ne v1, v9, :cond_f

    .line 32
    invoke-virtual/range {p0 .. p0}, Lk0/ll;->a3()Z

    move-result v1

    if-eqz v1, :cond_e

    new-array v1, v3, [I

    aput v5, v1, v13

    const/16 v3, 0x97

    aput v3, v1, v12

    aput v9, v1, v10

    .line 33
    aget v3, v2, v13

    aput v3, v1, v8

    aget v3, v2, v12

    aput v3, v1, v11

    aget v3, v2, v10

    aput v3, v1, v9

    aget v3, v2, v8

    const/4 v4, 0x6

    aput v3, v1, v4

    aget v2, v2, v11

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 34
    :cond_e
    aget v1, v2, v13

    if-ne v1, v10, :cond_16

    new-array v1, v3, [I

    aput v5, v1, v13

    const/16 v3, 0x97

    aput v3, v1, v12

    aput v9, v1, v10

    .line 35
    aget v3, v2, v13

    aput v3, v1, v8

    aget v3, v2, v12

    aput v3, v1, v11

    aget v3, v2, v10

    aput v3, v1, v9

    aget v3, v2, v8

    const/4 v4, 0x6

    aput v3, v1, v4

    aget v2, v2, v11

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_f
    new-array v1, v3, [I

    aput v5, v1, v13

    const/16 v3, 0x97

    aput v3, v1, v12

    aput v9, v1, v10

    .line 36
    aget v3, v2, v13

    aput v3, v1, v8

    aget v3, v2, v12

    aput v3, v1, v11

    aget v3, v2, v10

    aput v3, v1, v9

    aget v3, v2, v8

    const/4 v4, 0x6

    aput v3, v1, v4

    aget v2, v2, v11

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_10
    if-eqz v2, :cond_16

    .line 37
    array-length v1, v2

    if-lez v1, :cond_16

    .line 38
    invoke-virtual/range {p0 .. p0}, Lk0/ll;->a3()Z

    move-result v1

    if-eqz v1, :cond_11

    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    const/16 v3, 0xa1

    aput v3, v1, v8

    .line 39
    aget v2, v2, v13

    aput v2, v1, v11

    aput v13, v1, v9

    const/4 v2, 0x6

    aput v13, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 40
    :cond_11
    iget-boolean v1, v0, Lk0/ll;->H:Z

    if-nez v1, :cond_16

    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    aput v14, v1, v8

    aput v12, v1, v11

    .line 41
    iget v2, v0, Lk0/ll;->Q:I

    aput v2, v1, v9

    const/4 v2, 0x6

    aput v13, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 42
    sget v1, Lk0/nt;->c:I

    if-eq v1, v12, :cond_12

    if-eq v1, v8, :cond_12

    if-ne v1, v15, :cond_16

    :cond_12
    const/16 v1, 0x82

    new-array v2, v12, [I

    aput v13, v2, v13

    .line 43
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    .line 44
    iput v13, v0, Lk0/ll;->z:I

    .line 45
    iget-object v1, v0, Lk0/ll;->A:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_13
    if-eqz v2, :cond_16

    .line 46
    array-length v1, v2

    if-lez v1, :cond_16

    .line 47
    aget v1, v2, v13

    if-eqz v1, :cond_15

    packed-switch v1, :pswitch_data_1

    .line 48
    aget v1, v2, v13

    const/16 v3, 0x97

    if-ne v1, v3, :cond_14

    iget v1, v0, Lk0/ll;->d0:I

    if-ne v1, v12, :cond_14

    .line 49
    aget v1, v2, v12

    invoke-static {v1}, Ly0/h;->l(I)V

    :cond_14
    new-array v1, v7, [I

    aput v5, v1, v13

    aput v4, v1, v12

    aput v11, v1, v10

    .line 50
    aget v3, v2, v13

    aput v3, v1, v8

    aget v3, v2, v12

    aput v3, v1, v11

    aget v3, v2, v10

    aput v3, v1, v9

    aget v2, v2, v8

    const/4 v3, 0x6

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 51
    :pswitch_3
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->s3(I)V

    goto :goto_0

    .line 52
    :pswitch_4
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->v3(I)V

    goto :goto_0

    .line 53
    :pswitch_5
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->w3(I)V

    goto :goto_0

    .line 54
    :pswitch_6
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->y3(I)V

    goto :goto_0

    .line 55
    :pswitch_7
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->x3(I)V

    goto :goto_0

    .line 56
    :cond_15
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lk0/ll;->p3(I)V

    :cond_16
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x408
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x98
        0x4
        0xa4
        0x1
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x98
        0x4
        0xa4
        0x2
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x98
        0x4
        0xa4
        0x3
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x98
        0x4
        0xa4
        0x4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x98
        0x4
        0xa4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x90
        0x2
        0x2e
        0x4
    .end array-data
.end method

.method public a3()Z
    .locals 3

    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 1
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ls18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lt18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b3(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk0/ll;->v:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lk0/ll;->v:Z

    const-string v0, "ro.fyt.platform"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6521"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 5
    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_2

    :cond_2
    const-string v1, "6316"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "6312"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "6315"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "6318"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "6319"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-eqz p1, :cond_5

    .line 9
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_6
    :goto_0
    const/16 v0, 0xe

    if-eqz p1, :cond_7

    .line 11
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 12
    :cond_7
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    :cond_8
    :goto_1
    const/16 v0, 0xd

    if-eqz p1, :cond_9

    .line 13
    invoke-static {v0, v2}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_2

    .line 14
    :cond_9
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_2
    return-void
.end method

.method public final p3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7c

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->s0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ll;->s0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final q3(Z)V
    .locals 11

    .line 1
    sget v0, Lk0/ll;->v0:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    sget v0, Lk0/ll;->s0:I

    if-ne v0, v1, :cond_0

    move p1, v3

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x82

    new-array v0, v2, [I

    aput v2, v0, v3

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ll;->A:Ljava/lang/Runnable;

    invoke-static {p1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    iput v3, p0, Lk0/ll;->z:I

    .line 5
    sget p1, Lk0/ll;->s0:I

    const/4 v0, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x98

    const/16 v6, 0xe3

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_4

    if-eq p1, v8, :cond_2

    goto/16 :goto_0

    .line 6
    :cond_2
    sget v10, Lk0/ll;->u0:I

    if-ne v10, v2, :cond_3

    new-array v7, v7, [I

    aput v6, v7, v3

    aput v5, v7, v2

    aput v9, v7, v1

    aput v3, v7, v8

    aput p1, v7, v9

    aput v9, v7, v4

    .line 7
    sget p1, Lk0/ll;->t0:I

    aput p1, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    if-nez v10, :cond_8

    new-array v7, v7, [I

    aput v6, v7, v3

    aput v5, v7, v2

    aput v9, v7, v1

    aput v3, v7, v8

    aput p1, v7, v9

    aput v8, v7, v4

    .line 8
    sget p1, Lk0/ll;->t0:I

    aput p1, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    goto :goto_0

    .line 9
    :cond_4
    sget v10, Lk0/ll;->v0:I

    if-ne v10, v2, :cond_5

    new-array v7, v7, [I

    aput v6, v7, v3

    aput v5, v7, v2

    aput v9, v7, v1

    aput v3, v7, v8

    aput p1, v7, v9

    aput v3, v7, v4

    .line 10
    sget p1, Lk0/ll;->t0:I

    aput p1, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_5
    sget v10, Lk0/ll;->u0:I

    if-ne v10, v2, :cond_6

    new-array v7, v7, [I

    aput v6, v7, v3

    aput v5, v7, v2

    aput v9, v7, v1

    aput v3, v7, v8

    aput p1, v7, v9

    aput v1, v7, v4

    .line 12
    sget p1, Lk0/ll;->t0:I

    aput p1, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    if-nez v10, :cond_8

    new-array v7, v7, [I

    aput v6, v7, v3

    aput v5, v7, v2

    aput v9, v7, v1

    aput v3, v7, v8

    aput p1, v7, v9

    aput v2, v7, v4

    .line 13
    sget p1, Lk0/ll;->t0:I

    aput p1, v7, v0

    invoke-static {v7}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    new-array v7, v7, [I

    aput v6, v7, v3

    aput v5, v7, v2

    aput v9, v7, v1

    aput v3, v7, v8

    aput p1, v7, v9

    aput v3, v7, v4

    aput v3, v7, v0

    .line 14
    invoke-static {v7}, Lz/k;->s([I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final r3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0xa6

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->w0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/ll;->w0:I

    if-eq p1, v3, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v1, v3}, Lo1/g0;->g(II)V

    .line 5
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lk0/ll;->w0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.sys.penneltype"

    .line 6
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final s3(I)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xaa

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->z0:I

    .line 3
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lf1/o;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p1, v0, :cond_0

    const/16 v5, 0xb

    const/4 v6, 0x4

    const/16 v7, 0x70

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5
    invoke-virtual/range {v4 .. v9}, Lf1/o;->j(IIIII)Z

    goto :goto_0

    :cond_0
    const/16 v5, 0xb

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6
    invoke-virtual/range {v4 .. v9}, Lf1/o;->j(IIIII)Z

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ll;->z0:I

    if-eq p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final t3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xa9

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->y0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/ll;->y0:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/ll;->y0:I

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
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    sget v0, Lk0/ll;->y0:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final u3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0xffff

    and-int/2addr v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xa8

    .line 1
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->x0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v3}, Lo1/g0;->b(II)I

    move-result p1

    sget v2, Lk0/ll;->x0:I

    if-eq p1, v2, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lk0/ll;->x0:I

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
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    sget v0, Lk0/ll;->x0:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final v3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0xa5

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->A0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ll;->A0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final w3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x81

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->v0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ll;->v0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final x3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7f

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->t0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ll;->t0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final y3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x80

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/ll;->u0:I

    .line 3
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ll;->u0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/ll;->c0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
