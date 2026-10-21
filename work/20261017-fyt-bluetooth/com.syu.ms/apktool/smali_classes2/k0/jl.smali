.class public Lk0/jl;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static n0:I = 0xff

.field public static o0:Le/e$a;

.field public static p0:I

.field public static q0:I

.field public static r0:I

.field public static s0:I

.field public static t0:I

.field public static u0:I

.field public static v0:I

.field public static w0:I

.field public static x0:I

.field public static y0:I


# instance fields
.field public A:Z

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Ljava/lang/Runnable;

.field public E:Lo1/p;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:Ljava/lang/Runnable;

.field public L:Ljava/lang/Runnable;

.field public M:Ljava/lang/Runnable;

.field public N:Ljava/lang/Runnable;

.field public O:Ljava/lang/Runnable;

.field public P:I

.field public Q:Ljava/lang/Runnable;

.field public R:I

.field public S:Ljava/lang/Runnable;

.field public final T:Lc/d;

.field public U:I

.field public V:B

.field public W:Ljava/lang/Runnable;

.field public X:Ljava/lang/Runnable;

.field public Y:Ljava/lang/Runnable;

.field public Z:Ljava/lang/Runnable;

.field public final a0:I

.field public final b:[B

.field public final b0:I

.field public c:I

.field public final c0:I

.field public d:I

.field public final d0:I

.field public e:I

.field public final e0:I

.field public f:I

.field public final f0:I

.field public g:Z

.field public g0:Lo1/g0;

.field public h:Z

.field public final h0:I

.field public i:I

.field public final i0:I

.field public j:I

.field public final j0:I

.field public k:I

.field public final k0:I

.field public l:I

.field public l0:[I

.field public m:[[I

.field public m0:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Le/e$a;-><init>(III)V

    sput-object v0, Lk0/jl;->o0:Le/e$a;

    .line 2
    sput v1, Lk0/jl;->p0:I

    .line 3
    sput v1, Lk0/jl;->q0:I

    const/16 v0, 0x8

    .line 4
    sput v0, Lk0/jl;->r0:I

    const/4 v0, 0x1

    .line 5
    sput v0, Lk0/jl;->s0:I

    .line 6
    sput v0, Lk0/jl;->t0:I

    .line 7
    sput v1, Lk0/jl;->u0:I

    .line 8
    sput v1, Lk0/jl;->v0:I

    .line 9
    sput v1, Lk0/jl;->w0:I

    .line 10
    sput v1, Lk0/jl;->x0:I

    .line 11
    sput v1, Lk0/jl;->y0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lk0/jl;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk0/jl;->c:I

    .line 4
    iput v0, p0, Lk0/jl;->d:I

    .line 5
    iput v0, p0, Lk0/jl;->e:I

    .line 6
    iput v0, p0, Lk0/jl;->f:I

    .line 7
    iput-boolean v0, p0, Lk0/jl;->g:Z

    .line 8
    iput-boolean v0, p0, Lk0/jl;->h:Z

    .line 9
    iput v0, p0, Lk0/jl;->i:I

    .line 10
    iput v0, p0, Lk0/jl;->k:I

    .line 11
    iput v0, p0, Lk0/jl;->l:I

    const/16 v1, 0x2e

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 12
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

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v7, 0x5

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v9, 0x7

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v11, 0x9

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v12, 0xb

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v12, 0xc

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v12, 0xd

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v12, 0xe

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v12, 0xf

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v12, 0x10

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v12, 0x11

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v12, 0x12

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v12, 0x13

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v12, 0x14

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v12, 0x15

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v12, 0x16

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v12, 0x17

    aput-object v3, v1, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v13, 0x18

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v13, 0x19

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v13, 0x1a

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v13, 0x1b

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v13, 0x1c

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v13, 0x1d

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v13, 0x1e

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v13, 0x1f

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v13, 0x20

    aput-object v3, v1, v13

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v14, 0x21

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v14, 0x22

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v14, 0x23

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v14, 0x24

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v14, 0x25

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v14, 0x26

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v14, 0x27

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v14, 0x28

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v14, 0x29

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v14, 0x2a

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v14, 0x2b

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v14, 0x2c

    aput-object v3, v1, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v14, 0x2d

    aput-object v3, v1, v14

    iput-object v1, p0, Lk0/jl;->m:[[I

    .line 13
    iput v4, p0, Lk0/jl;->n:I

    .line 14
    iput v4, p0, Lk0/jl;->o:I

    .line 15
    iput v0, p0, Lk0/jl;->p:I

    .line 16
    iput v0, p0, Lk0/jl;->q:I

    .line 17
    iput-boolean v0, p0, Lk0/jl;->r:Z

    .line 18
    iput v0, p0, Lk0/jl;->s:I

    .line 19
    iput-boolean v0, p0, Lk0/jl;->t:Z

    .line 20
    iput-boolean v0, p0, Lk0/jl;->u:Z

    .line 21
    iput v0, p0, Lk0/jl;->v:I

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lk0/jl;->w:I

    .line 23
    iput v0, p0, Lk0/jl;->x:I

    .line 24
    new-instance v1, Lk0/jl$k;

    invoke-direct {v1, p0}, Lk0/jl$k;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->y:Ljava/lang/Runnable;

    .line 25
    iput v0, p0, Lk0/jl;->z:I

    .line 26
    iput-boolean v0, p0, Lk0/jl;->A:Z

    .line 27
    new-instance v1, Lk0/jl$s;

    invoke-direct {v1, p0}, Lk0/jl$s;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->B:Ljava/lang/Runnable;

    .line 28
    new-instance v1, Lk0/jl$t;

    invoke-direct {v1, p0}, Lk0/jl$t;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->C:Ljava/lang/Runnable;

    .line 29
    new-instance v1, Lk0/jl$u;

    invoke-direct {v1, p0}, Lk0/jl$u;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->D:Ljava/lang/Runnable;

    .line 30
    new-instance v1, Lk0/jl$v;

    invoke-direct {v1, p0}, Lk0/jl$v;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->E:Lo1/p;

    .line 31
    iput-boolean v0, p0, Lk0/jl;->F:Z

    .line 32
    iput-boolean v0, p0, Lk0/jl;->G:Z

    .line 33
    iput-boolean v0, p0, Lk0/jl;->H:Z

    .line 34
    new-instance v1, Lk0/jl$w;

    invoke-direct {v1, p0}, Lk0/jl$w;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->I:Ljava/lang/Runnable;

    .line 35
    new-instance v1, Lk0/jl$x;

    invoke-direct {v1, p0}, Lk0/jl$x;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->J:Ljava/lang/Runnable;

    .line 36
    new-instance v1, Lk0/jl$f;

    invoke-direct {v1, p0}, Lk0/jl$f;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->K:Ljava/lang/Runnable;

    .line 37
    new-instance v1, Lk0/jl$g;

    invoke-direct {v1, p0}, Lk0/jl$g;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->L:Ljava/lang/Runnable;

    .line 38
    new-instance v1, Lk0/jl$h;

    invoke-direct {v1, p0}, Lk0/jl$h;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->M:Ljava/lang/Runnable;

    .line 39
    new-instance v1, Lk0/jl$i;

    invoke-direct {v1, p0}, Lk0/jl$i;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->N:Ljava/lang/Runnable;

    .line 40
    new-instance v1, Lk0/jl$j;

    invoke-direct {v1, p0}, Lk0/jl$j;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->O:Ljava/lang/Runnable;

    .line 41
    iput v0, p0, Lk0/jl;->P:I

    .line 42
    new-instance v1, Lk0/jl$l;

    invoke-direct {v1, p0}, Lk0/jl$l;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->Q:Ljava/lang/Runnable;

    .line 43
    iput v0, p0, Lk0/jl;->R:I

    .line 44
    new-instance v1, Lk0/jl$m;

    invoke-direct {v1, p0}, Lk0/jl$m;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->S:Ljava/lang/Runnable;

    .line 45
    new-instance v1, Lk0/jl$n;

    invoke-direct {v1, p0}, Lk0/jl$n;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->T:Lc/d;

    .line 46
    iput v0, p0, Lk0/jl;->U:I

    .line 47
    iput-byte v7, p0, Lk0/jl;->V:B

    .line 48
    new-instance v1, Lk0/jl$o;

    invoke-direct {v1, p0}, Lk0/jl$o;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->W:Ljava/lang/Runnable;

    .line 49
    new-instance v1, Lk0/jl$p;

    invoke-direct {v1, p0}, Lk0/jl$p;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->X:Ljava/lang/Runnable;

    .line 50
    new-instance v1, Lk0/jl$q;

    invoke-direct {v1, p0}, Lk0/jl$q;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->Y:Ljava/lang/Runnable;

    .line 51
    new-instance v1, Lk0/jl$r;

    invoke-direct {v1, p0}, Lk0/jl$r;-><init>(Lk0/jl;)V

    iput-object v1, p0, Lk0/jl;->Z:Ljava/lang/Runnable;

    .line 52
    iput v4, p0, Lk0/jl;->a0:I

    .line 53
    iput v2, p0, Lk0/jl;->b0:I

    .line 54
    iput v5, p0, Lk0/jl;->c0:I

    .line 55
    iput v6, p0, Lk0/jl;->d0:I

    .line 56
    iput v7, p0, Lk0/jl;->e0:I

    .line 57
    iput v8, p0, Lk0/jl;->f0:I

    .line 58
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v13}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/jl;->g0:Lo1/g0;

    .line 59
    iput v9, p0, Lk0/jl;->h0:I

    .line 60
    iput v10, p0, Lk0/jl;->i0:I

    .line 61
    iput v11, p0, Lk0/jl;->j0:I

    .line 62
    iput v12, p0, Lk0/jl;->k0:I

    new-array v1, v2, [I

    .line 63
    fill-array-data v1, :array_2e

    iput-object v1, p0, Lk0/jl;->l0:[I

    .line 64
    iput v0, p0, Lk0/jl;->m0:I

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
        0x20
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x21
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x52
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x51
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x50
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x37
    .end array-data

    :array_d
    .array-data 4
        0xe
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x26
    .end array-data

    :array_f
    .array-data 4
        0x10
        0x36
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x1a
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x32
    .end array-data

    :array_13
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x7
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x8
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_18
    .array-data 4
        0x19
        0x10
    .end array-data

    :array_19
    .array-data 4
        0x1a
        0xc
    .end array-data

    :array_1a
    .array-data 4
        0x1b
        0xb
    .end array-data

    :array_1b
    .array-data 4
        0x1c
        0x1c
    .end array-data

    :array_1c
    .array-data 4
        0x1d
        0x1b
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x22
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x23
    .end array-data

    :array_1f
    .array-data 4
        0x20
        0x20
    .end array-data

    :array_20
    .array-data 4
        0x21
        0x21
    .end array-data

    :array_21
    .array-data 4
        0x22
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x23
        0x3a
    .end array-data

    :array_23
    .array-data 4
        0x24
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x25
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x26
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x31
        0x28
    .end array-data

    :array_27
    .array-data 4
        0x32
        0x29
    .end array-data

    :array_28
    .array-data 4
        0x33
        0x2a
    .end array-data

    :array_29
    .array-data 4
        0x34
        0x2b
    .end array-data

    :array_2a
    .array-data 4
        0x35
        0x2c
    .end array-data

    :array_2b
    .array-data 4
        0x36
        0x2d
    .end array-data

    :array_2c
    .array-data 4
        0x37
        0x2e
    .end array-data

    :array_2d
    .array-data 4
        0x38
        0x2f
    .end array-data

    :array_2e
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static G3([B)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_0
    return-void
.end method

.method public static synthetic f3(Lk0/jl;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->e3(Z)V

    return-void
.end method

.method public static synthetic g3()Le/e$a;
    .locals 1

    .line 1
    sget-object v0, Lk0/jl;->o0:Le/e$a;

    return-object v0
.end method

.method public static synthetic h3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->y3(I)V

    return-void
.end method

.method public static synthetic i3(Le/e$a;)Le/e$a;
    .locals 0

    .line 1
    sput-object p0, Lk0/jl;->o0:Le/e$a;

    return-object p0
.end method

.method public static synthetic j3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->z3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->A3(I)V

    return-void
.end method

.method public static synthetic l3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->C3(I)V

    return-void
.end method

.method public static synthetic m3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->B3(I)V

    return-void
.end method

.method public static synthetic n3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->F3(I)V

    return-void
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lk0/jl;->u0:I

    return v0
.end method

.method public static synthetic p3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->d3(I)V

    return-void
.end method

.method public static synthetic q3(Lk0/jl;BBLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/jl;->b3(BBLjava/lang/String;)V

    return-void
.end method

.method public static synthetic r3(Lk0/jl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/jl;->c3()V

    return-void
.end method

.method public static synthetic s3(Lk0/jl;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/jl;->Z:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic t3(Lk0/jl;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/jl;->Y:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic u3(Lk0/jl;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/jl;->g0:Lo1/g0;

    return-object p0
.end method

.method public static synthetic v3(Lk0/jl;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/jl;->D3(I)V

    return-void
.end method


# virtual methods
.method public final A3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7c

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jl;->s0:I

    .line 3
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jl;->s0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final B3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x90

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jl;->y0:I

    .line 3
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v3, Lk0/jl;->y0:I

    if-eq p1, v3, :cond_0

    .line 4
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    sget v3, Lk0/jl;->y0:I

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
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    sget v0, Lk0/jl;->y0:I

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final C3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7e

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jl;->u0:I

    const/4 v1, 0x6

    new-array v3, v1, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    aput v2, v3, v0

    const/16 v0, 0x70

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v0, 0x3

    aput v4, v3, v0

    const/4 v0, 0x4

    const/4 v4, 0x5

    aput v4, v3, v0

    aput p1, v3, v4

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/jl;->u0:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final D3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x85

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jl;->v0:I

    .line 3
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jl;->v0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final E3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x84

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jl;->w0:I

    .line 3
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lf1/o;->e(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 4
    instance-of v1, p1, Lf1/l;

    if-eqz v1, :cond_4

    .line 5
    sget v1, Lk0/jl;->w0:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lf1/l;

    const/16 v0, 0xdb

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 7
    :cond_1
    check-cast p1, Lf1/l;

    const/16 v0, 0xda

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 8
    :cond_2
    check-cast p1, Lf1/l;

    const/16 v0, 0xde

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    goto :goto_0

    .line 9
    :cond_3
    check-cast p1, Lf1/l;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lf1/l;->d0(I)V

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jl;->w0:I

    if-eq p1, v1, :cond_5

    .line 11
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_5
    return-void
.end method

.method public final F3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x8a

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const-string v1, "persist.fyt.androictrldvoice"

    if-ne p1, v0, :cond_0

    const-string v3, "1"

    .line 2
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "0"

    .line 3
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    sput p1, Lk0/jl;->x0:I

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, p1, Lk0/mt;->b:I

    .line 6
    invoke-static {v2}, Lk0/qt;->X(I)V

    .line 7
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object p1

    invoke-interface {p1, v2}, Lui/b;->a(Z)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x16

    .line 9
    invoke-static {p1}, Ly0/h;->t0(I)V

    .line 10
    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iput v0, p1, Lk0/mt;->b:I

    .line 11
    invoke-static {v0}, Lk0/qt;->X(I)V

    .line 12
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lui/b;->a(Z)V

    .line 14
    :cond_3
    :goto_1
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jl;->x0:I

    if-eq p1, v1, :cond_4

    .line 15
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_4
    return-void
.end method

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

.method public O2([I)V
    .locals 13

    if-eqz p1, :cond_23

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "      value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x21

    const/16 v4, 0xa

    const/4 v5, 0x6

    if-eq v2, v3, :cond_21

    const/16 v3, 0x22

    const/16 v7, 0xb

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x29

    const/4 v8, 0x7

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x38

    const/16 v9, 0x10

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eq v2, v3, :cond_18

    const/16 v0, 0x43

    if-eq v2, v0, :cond_11

    const/16 v0, 0x44

    const/16 v3, 0xc

    if-eq v2, v0, :cond_5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    new-array p1, v5, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v5, [I

    .line 6
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    aget v0, p1, v6

    if-ne v0, v6, :cond_2

    .line 8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_23

    new-array p1, v5, [I

    .line 9
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :cond_2
    aget p1, p1, v6

    if-nez p1, :cond_23

    .line 11
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_23

    new-array p1, v5, [I

    .line 12
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-nez p1, :cond_23

    new-array p1, v5, [I

    .line 15
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-ne p1, v6, :cond_23

    new-array p1, v5, [I

    .line 17
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 18
    :pswitch_3
    aget p1, p1, v6

    const/16 v0, 0x41

    if-eqz p1, :cond_4

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_23

    new-array p1, v5, [I

    .line 20
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_23

    new-array p1, v5, [I

    .line 22
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 23
    :cond_5
    aget v0, p1, v6

    if-ne v0, v6, :cond_6

    new-array p1, v8, [I

    .line 24
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 25
    :cond_6
    aget v0, p1, v6

    if-ne v0, v1, :cond_7

    new-array p1, v8, [I

    .line 26
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :cond_7
    aget v0, p1, v6

    if-ne v0, v10, :cond_8

    new-array p1, v8, [I

    .line 28
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :cond_8
    aget v0, p1, v6

    if-ne v0, v12, :cond_9

    new-array p1, v8, [I

    .line 30
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 31
    :cond_9
    aget v0, p1, v6

    if-ne v0, v11, :cond_a

    new-array p1, v8, [I

    .line 32
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 33
    :cond_a
    aget v0, p1, v6

    if-ne v0, v5, :cond_b

    new-array p1, v8, [I

    .line 34
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 35
    :cond_b
    aget v0, p1, v6

    if-ne v0, v8, :cond_c

    new-array p1, v8, [I

    .line 36
    fill-array-data p1, :array_e

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 37
    :cond_c
    aget v0, p1, v6

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    new-array p1, v8, [I

    .line 38
    fill-array-data p1, :array_f

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 39
    :cond_d
    aget v0, p1, v6

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    new-array p1, v5, [I

    .line 40
    fill-array-data p1, :array_10

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_e
    aget v0, p1, v6

    if-ne v0, v4, :cond_f

    new-array p1, v5, [I

    .line 42
    fill-array-data p1, :array_11

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 43
    :cond_f
    aget v0, p1, v6

    if-ne v0, v7, :cond_10

    new-array p1, v8, [I

    .line 44
    fill-array-data p1, :array_12

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_10
    aget p1, p1, v6

    if-ne p1, v3, :cond_23

    new-array p1, v8, [I

    .line 46
    fill-array-data p1, :array_13

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 47
    :cond_11
    aget p1, p1, v6

    if-eqz p1, :cond_17

    if-eq p1, v6, :cond_16

    if-eq p1, v1, :cond_15

    if-eq p1, v10, :cond_14

    if-eq p1, v12, :cond_13

    if-eq p1, v11, :cond_12

    goto/16 :goto_0

    :cond_12
    new-array p1, v12, [I

    .line 48
    fill-array-data p1, :array_14

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_13
    new-array p1, v12, [I

    .line 49
    fill-array-data p1, :array_15

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_14
    new-array p1, v12, [I

    .line 50
    fill-array-data p1, :array_16

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_15
    new-array p1, v12, [I

    .line 51
    fill-array-data p1, :array_17

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_16
    new-array p1, v12, [I

    .line 52
    fill-array-data p1, :array_18

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_17
    new-array p1, v12, [I

    .line 53
    fill-array-data p1, :array_19

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 54
    :cond_18
    aget v2, p1, v6

    const/16 v3, 0x11

    if-ge v2, v3, :cond_19

    new-array p1, v11, [I

    .line 55
    fill-array-data p1, :array_1a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 56
    :cond_19
    aget v2, p1, v6

    const/16 v4, 0x1f

    if-lt v2, v3, :cond_1a

    aget v2, p1, v6

    if-gt v2, v4, :cond_1a

    .line 57
    aget p1, p1, v6

    sub-int/2addr p1, v9

    mul-int/2addr p1, v1

    new-array v2, v11, [I

    const/16 v3, 0xe3

    aput v3, v2, v0

    const/16 v0, -0x79

    aput v0, v2, v6

    aput v1, v2, v1

    const/16 v0, 0xd

    aput v0, v2, v10

    aput p1, v2, v12

    .line 58
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 59
    :cond_1a
    aget p1, p1, v6

    if-le p1, v4, :cond_23

    new-array p1, v11, [I

    .line 60
    fill-array-data p1, :array_1b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 61
    :cond_1b
    aget p1, p1, v6

    if-eqz p1, :cond_1c

    new-array p1, v8, [I

    .line 62
    fill-array-data p1, :array_1c

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1c
    new-array p1, v8, [I

    .line 63
    fill-array-data p1, :array_1d

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 64
    :cond_1d
    aget p1, p1, v6

    if-eqz p1, :cond_1e

    new-array p1, v8, [I

    .line 65
    fill-array-data p1, :array_1e

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1e
    new-array p1, v8, [I

    .line 66
    fill-array-data p1, :array_1f

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 67
    :cond_1f
    aget p1, p1, v6

    if-eqz p1, :cond_20

    .line 68
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_23

    new-array p1, v5, [I

    .line 69
    fill-array-data p1, :array_20

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 70
    :cond_20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v6, :cond_23

    new-array p1, v5, [I

    .line 71
    fill-array-data p1, :array_21

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 72
    :cond_21
    aget p1, p1, v6

    if-eqz p1, :cond_22

    .line 73
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_23

    new-array p1, v5, [I

    .line 74
    fill-array-data p1, :array_22

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 75
    :cond_22
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_23

    new-array p1, v5, [I

    .line 76
    fill-array-data p1, :array_23

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_23
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x80
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x81
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x1
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0xb
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0xb
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0xb
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0xb
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0xb
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x87
        0x1
        0x8
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x87
        0x1
        0x7
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x87
        0x1
        0x6
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x87
        0x1
        0x5
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0x87
        0x1
        0x0
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0x87
        0x1
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0xff
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x80
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x81
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x80
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x81
    .end array-data

    :array_20
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x1
    .end array-data

    :array_21
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x0
    .end array-data

    :array_22
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x1
    .end array-data

    :array_23
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x0
    .end array-data
.end method

.method public S2()V
    .locals 10

    .line 1
    iget-object v0, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->g:I

    .line 6
    iput v2, v0, Lk0/mt;->j:I

    .line 7
    iput v2, v0, Lk0/mt;->o:I

    .line 8
    iput v1, v0, Lk0/mt;->l:I

    .line 9
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    iput v2, v0, Lk0/mt;->b:I

    .line 11
    sget-object v0, Lu0/c;->d:Lo1/y;

    iget-object v3, p0, Lk0/jl;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget v0, Lk0/nt;->c:I

    const/16 v2, 0x38

    const/16 v3, 0x37

    const/16 v4, 0x2f

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-eq v0, v7, :cond_3

    const/4 v8, 0x6

    if-eq v0, v8, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    const/16 v8, 0xb

    if-eq v0, v8, :cond_3

    const/16 v8, 0x10

    if-eq v0, v8, :cond_2

    const/16 v8, 0x19

    if-eq v0, v8, :cond_1

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 13
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v8, p0, Lk0/jl;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    iget-object v8, p0, Lk0/jl;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v8, Lu0/c;->o:Lo1/y;

    iget-object v9, p0, Lk0/jl;->K:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v8, Lu0/c;->p:Lo1/y;

    iget-object v9, p0, Lk0/jl;->L:Ljava/lang/Runnable;

    invoke-virtual {v8, v9, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    iget-object v8, p0, Lk0/jl;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v8, p0, Lk0/jl;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v8, p0, Lk0/jl;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v8, p0, Lk0/jl;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 23
    iget-object v0, p0, Lk0/jl;->S:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 24
    :cond_3
    :pswitch_1
    iget-object v0, p0, Lk0/jl;->S:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 25
    :goto_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v8, p0, Lk0/jl;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    iget-object v8, p0, Lk0/jl;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v8, p0, Lk0/jl;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    sget-object v0, Ly0/g;->k:Lo1/z;

    new-instance v8, Lk0/jl$y;

    invoke-direct {v8, p0}, Lk0/jl$y;-><init>(Lk0/jl;)V

    invoke-virtual {v0, v8}, Lo1/z;->a(Lo1/p;)V

    .line 29
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v8, p0, Lk0/jl;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v8, p0, Lk0/jl;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    sget-object v0, Lu0/c;->n:Lo1/y;

    iget-object v8, p0, Lk0/jl;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v8, p0, Lk0/jl;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 33
    sget-object v0, Le/e;->e:Lo1/z;

    iget-object v8, p0, Lk0/jl;->E:Lo1/p;

    invoke-virtual {v0, v8}, Lo1/z;->a(Lo1/p;)V

    .line 34
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v8, p0, Lk0/jl;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v8, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 36
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x58

    const/16 v8, 0x57

    if-eq v0, v7, :cond_6

    const/16 v7, 0x29

    if-eq v0, v7, :cond_6

    const/16 v7, 0x2c

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_6

    const/16 v5, 0x26

    if-eq v0, v5, :cond_6

    const/16 v5, 0x27

    if-ne v0, v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0xf

    if-eq v0, v5, :cond_5

    const/16 v5, 0x12

    if-eq v0, v5, :cond_5

    const/16 v5, 0x13

    if-eq v0, v5, :cond_5

    const/16 v5, 0x14

    if-eq v0, v5, :cond_5

    const/16 v5, 0x15

    if-eq v0, v5, :cond_5

    const/16 v5, 0x16

    if-eq v0, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v0, v5, :cond_5

    const/16 v5, 0x30

    if-eq v0, v5, :cond_5

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_5

    const/16 v5, 0x1b

    if-eq v0, v5, :cond_5

    const/16 v5, 0x31

    if-eq v0, v5, :cond_5

    const/16 v5, 0x2e

    if-eq v0, v5, :cond_5

    const/16 v5, 0x1c

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_5

    if-eq v0, v4, :cond_5

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_5

    const/16 v2, 0x32

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_5

    const/16 v2, 0x34

    if-eq v0, v2, :cond_5

    const/16 v2, 0x35

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_5

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0x21

    if-eq v0, v2, :cond_5

    const/16 v2, 0x36

    if-eq v0, v2, :cond_5

    const/16 v2, 0x23

    if-eq v0, v2, :cond_5

    const/16 v2, 0x24

    if-eq v0, v2, :cond_5

    const/16 v2, 0x25

    if-eq v0, v2, :cond_5

    const/16 v2, 0x33

    if-ne v0, v2, :cond_7

    .line 37
    :cond_5
    new-instance v0, Lk0/jl$c;

    invoke-direct {v0, p0}, Lk0/jl$c;-><init>(Lk0/jl;)V

    sput-object v0, Le/c;->c:Lo1/o;

    .line 38
    new-instance v0, Lk0/jl$d;

    invoke-direct {v0, p0}, Lk0/jl$d;-><init>(Lk0/jl;)V

    sput-object v0, Le/c;->p:Lo1/o;

    .line 39
    new-instance v0, Lk0/jl$e;

    invoke-direct {v0, p0}, Lk0/jl$e;-><init>(Lk0/jl;)V

    sput-object v0, Le/c;->B:Lo1/o;

    .line 40
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x55

    iget-object v3, p0, Lk0/jl;->T:Lc/d;

    invoke-virtual {v0, v2, v3}, Lc/e;->i(ILc/d;)V

    .line 41
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v2, p0, Lk0/jl;->T:Lc/d;

    invoke-virtual {v0, v8, v2}, Lc/e;->i(ILc/d;)V

    .line 42
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v2, p0, Lk0/jl;->T:Lc/d;

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    .line 43
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x71

    iget-object v2, p0, Lk0/jl;->T:Lc/d;

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    .line 44
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x72

    iget-object v2, p0, Lk0/jl;->T:Lc/d;

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    goto :goto_2

    .line 45
    :cond_6
    :goto_1
    new-instance v0, Lk0/jl$z;

    invoke-direct {v0, p0}, Lk0/jl$z;-><init>(Lk0/jl;)V

    sput-object v0, Le/c;->c:Lo1/o;

    .line 46
    new-instance v0, Lk0/jl$a;

    invoke-direct {v0, p0}, Lk0/jl$a;-><init>(Lk0/jl;)V

    sput-object v0, Le/c;->h:Lo1/o;

    .line 47
    new-instance v0, Lk0/jl$b;

    invoke-direct {v0, p0}, Lk0/jl$b;-><init>(Lk0/jl;)V

    sput-object v0, Le/c;->i:Lo1/o;

    .line 48
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v2, p0, Lk0/jl;->T:Lc/d;

    invoke-virtual {v0, v8, v2}, Lc/e;->i(ILc/d;)V

    .line 49
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v2, p0, Lk0/jl;->T:Lc/d;

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    if-eqz v2, :cond_0

    goto/16 :goto_13

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-byte v2, v0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v4, 0x12

    const/4 v5, 0x3

    if-eq v2, v4, :cond_53

    const/16 v6, 0x13

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v6, :cond_52

    const/16 v6, 0x15

    if-eq v2, v6, :cond_50

    const/16 v6, 0xa1

    const/16 v12, 0xc

    const/16 v13, 0x9

    const/16 v14, 0x419

    const/4 v15, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x4

    if-eq v2, v6, :cond_9

    const/16 v6, 0xf2

    if-eq v2, v6, :cond_1

    goto/16 :goto_13

    :cond_1
    add-int/lit8 v2, p2, 0x3

    .line 3
    aget-byte v6, v0, v2

    if-ne v6, v5, :cond_2

    .line 4
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v15, [I

    aput v13, v5, v10

    aget-byte v0, v0, v2

    and-int/2addr v0, v3

    aput v0, v5, v11

    invoke-static {v4, v14, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 5
    :cond_2
    aget-byte v3, v0, v2

    const/16 v6, 0x11

    if-ne v3, v6, :cond_7

    add-int/lit8 v2, p2, 0x4

    .line 6
    aget-byte v0, v0, v2

    if-eq v0, v11, :cond_6

    if-eq v0, v15, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v7, :cond_3

    goto/16 :goto_13

    .line 7
    :cond_3
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v15, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v14, v2, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 8
    :cond_4
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v15, [I

    fill-array-data v2, :array_1

    invoke-static {v0, v14, v2, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 9
    :cond_5
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v15, [I

    fill-array-data v2, :array_2

    invoke-static {v0, v14, v2, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 10
    :cond_6
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    new-array v2, v15, [I

    fill-array-data v2, :array_3

    invoke-static {v0, v14, v2, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 11
    :cond_7
    aget-byte v3, v0, v2

    if-ne v3, v4, :cond_8

    .line 12
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v15, [I

    aput v5, v3, v10

    add-int/lit8 v4, p2, 0x4

    aget-byte v0, v0, v4

    aput v0, v3, v11

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 13
    :cond_8
    aget-byte v2, v0, v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_54

    .line 14
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v15, [I

    aput v12, v3, v10

    add-int/lit8 v4, p2, 0x4

    aget-byte v0, v0, v4

    aput v0, v3, v11

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_9
    add-int/lit8 v2, p2, 0x3

    .line 15
    aget-byte v2, v0, v2

    and-int/2addr v2, v3

    const-string v6, "persist.lesc.video.ignore"

    const v16, 0xff00

    const/16 v12, 0x8

    const/4 v4, 0x5

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_13

    :pswitch_1
    add-int/lit8 v2, p2, 0x4

    .line 16
    aget-byte v2, v0, v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, v0, v4

    and-int/2addr v4, v3

    shl-int/2addr v4, v12

    or-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v0, v0, v4

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    .line 17
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v15, [I

    const/16 v4, 0x14

    aput v4, v3, v10

    aput v0, v3, v11

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 18
    :pswitch_2
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v15, [I

    const/16 v5, 0x26

    aput v5, v4, v10

    add-int/lit8 v5, p2, 0x4

    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v11

    invoke-static {v2, v14, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 19
    :pswitch_3
    iget v2, v1, Lk0/jl;->i:I

    add-int/lit8 v4, p2, 0x4

    aget-byte v5, v0, v4

    and-int/2addr v5, v3

    if-eq v2, v5, :cond_54

    .line 20
    aget-byte v0, v0, v4

    and-int/2addr v0, v3

    iput v0, v1, Lk0/jl;->i:I

    if-ne v0, v11, :cond_b

    .line 21
    sget v0, Ly0/f;->x:I

    if-nez v0, :cond_a

    sget v0, Ly0/f;->c:I

    sget v2, Ly0/f;->R:I

    mul-int/2addr v0, v2

    sget v2, Ly0/f;->S:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    float-to-int v0, v0

    .line 22
    sget v2, Ly0/f;->c:I

    iput v2, v1, Lk0/jl;->f:I

    .line 23
    invoke-static {v0}, Ly0/h;->t0(I)V

    .line 24
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandlerSound.volSrc11111 ---- vol == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--- SrcVolPre = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lk0/jl;->f:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 25
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const/16 v0, 0x89

    new-array v2, v11, [I

    aput v11, v2, v10

    .line 26
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const-string v0, "true"

    .line 27
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xf0

    .line 28
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 29
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    .line 30
    iput-boolean v11, v1, Lk0/jl;->g:Z

    goto/16 :goto_13

    .line 31
    :cond_b
    iget v0, v1, Lk0/jl;->f:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    .line 32
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandlerSound.volSrc2222 ---- SrcVolPre = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lk0/jl;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 33
    iget-boolean v0, v1, Lk0/jl;->g:Z

    if-eqz v0, :cond_c

    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x89

    new-array v2, v11, [I

    aput v10, v2, v10

    .line 34
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const-wide/16 v2, 0x15e

    .line 35
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 36
    :cond_c
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "false"

    .line 37
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_d
    iput-boolean v10, v1, Lk0/jl;->g:Z

    goto/16 :goto_13

    .line 39
    :pswitch_4
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v5, v5, [I

    const/16 v6, 0x24

    aput v6, v5, v10

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, v0, v6

    and-int/2addr v6, v3

    aput v6, v5, v11

    add-int/lit8 v4, p2, 0x5

    aget-byte v0, v0, v4

    and-int/2addr v0, v3

    aput v0, v5, v15

    invoke-static {v2, v14, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_5
    const/16 v2, 0x8f

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 40
    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_6
    const/16 v2, 0x8e

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 41
    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_7
    const/16 v2, 0x8d

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 42
    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_8
    const/16 v2, 0x8c

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 43
    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 44
    :pswitch_9
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v15, [I

    aput v13, v4, v10

    add-int/lit8 v5, p2, 0x4

    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v11

    invoke-static {v2, v14, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_a
    const/16 v2, 0x8b

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 45
    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_b
    add-int/lit8 v2, p2, 0x4

    .line 46
    aget-byte v0, v0, v2

    and-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x28

    .line 47
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v15, [I

    aput v15, v3, v10

    aput v0, v3, v11

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 48
    :pswitch_c
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v15, [I

    const/16 v4, 0x19

    aput v4, v3, v10

    add-int/lit8 v4, p2, 0x4

    aget-byte v0, v0, v4

    aput v0, v3, v11

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_d
    const/16 v2, 0x87

    new-array v5, v11, [I

    add-int/lit8 v6, p2, 0x4

    .line 49
    aget-byte v6, v0, v6

    and-int/2addr v3, v6

    aput v3, v5, v10

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    .line 50
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x5

    const/16 v4, 0x1b

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, ""

    :goto_1
    const/16 v0, 0x88

    .line 52
    invoke-static {v0, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 53
    :pswitch_e
    iget v2, v1, Lk0/jl;->w:I

    add-int/lit8 v4, p2, 0x4

    aget-byte v5, v0, v4

    and-int/2addr v5, v3

    if-eq v2, v5, :cond_54

    .line 54
    aget-byte v0, v0, v4

    and-int/2addr v0, v3

    iput v0, v1, Lk0/jl;->w:I

    if-ne v0, v11, :cond_e

    .line 55
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 56
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_e
    if-nez v0, :cond_54

    .line 57
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 58
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 59
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :pswitch_f
    const/16 v2, 0x407

    new-array v6, v11, [I

    add-int/lit8 v9, p2, 0x4

    .line 60
    aget-byte v7, v0, v9

    and-int/2addr v7, v3

    aput v7, v6, v10

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    .line 61
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v6, v15, [I

    aput v11, v6, v10

    aget-byte v7, v0, v9

    and-int/2addr v7, v3

    aput v7, v6, v11

    invoke-static {v2, v14, v6, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v6, p2, 0xc

    .line 62
    aget-byte v6, v0, v6

    shl-int/2addr v6, v12

    and-int v6, v6, v16

    add-int/lit8 v7, p2, 0x5

    aget-byte v9, v0, v7

    and-int/2addr v9, v3

    or-int/2addr v6, v9

    add-int/lit8 v9, p2, 0x2

    .line 63
    aget-byte v9, v0, v9

    if-ne v9, v13, :cond_f

    .line 64
    aget-byte v6, v0, v7

    and-int/2addr v6, v3

    :cond_f
    new-array v7, v15, [I

    aput v4, v7, v10

    aput v6, v7, v11

    .line 65
    invoke-static {v2, v14, v7, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v15, [I

    const/16 v6, 0x18

    aput v6, v4, v10

    add-int/lit8 v6, p2, 0x6

    .line 66
    aget-byte v6, v0, v6

    and-int/2addr v6, v3

    aput v6, v4, v11

    invoke-static {v2, v14, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v15, [I

    aput v5, v4, v10

    add-int/lit8 v5, p2, 0x7

    .line 67
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v11

    invoke-static {v2, v14, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v15, [I

    const/4 v5, 0x4

    aput v5, v4, v10

    add-int/lit8 v5, p2, 0x8

    .line 68
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v11

    invoke-static {v2, v14, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v15, [I

    const/16 v5, 0x1c

    aput v5, v4, v10

    add-int/lit8 v5, p2, 0x9

    .line 69
    aget-byte v5, v0, v5

    and-int/2addr v3, v5

    aput v3, v4, v11

    invoke-static {v2, v14, v4, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0xa

    .line 70
    aget-byte v4, v0, v3

    if-nez v4, :cond_11

    new-array v3, v15, [I

    .line 71
    fill-array-data v3, :array_4

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_10
    :goto_2
    const/16 v3, 0xb

    goto :goto_3

    .line 72
    :cond_11
    aget-byte v4, v0, v3

    if-ne v4, v11, :cond_12

    new-array v3, v15, [I

    .line 73
    fill-array-data v3, :array_5

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :cond_12
    aget-byte v3, v0, v3

    if-ne v3, v15, :cond_10

    new-array v3, v15, [I

    .line 75
    fill-array-data v3, :array_6

    invoke-static {v2, v14, v3, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    add-int/lit8 v3, p2, 0xb

    .line 76
    aget-byte v4, v0, v3

    if-nez v4, :cond_13

    new-array v0, v15, [I

    .line 77
    fill-array-data v0, :array_7

    invoke-static {v2, v14, v0, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    .line 78
    :cond_13
    aget-byte v0, v0, v3

    if-ne v0, v11, :cond_54

    new-array v0, v15, [I

    .line 79
    fill-array-data v0, :array_8

    invoke-static {v2, v14, v0, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_10
    move v2, v7

    add-int/lit8 v2, p2, 0x4

    .line 80
    aget-byte v3, v0, v2

    if-nez v3, :cond_14

    .line 81
    sget v0, Lu0/b;->j:I

    if-nez v0, :cond_54

    const/16 v3, 0x19

    .line 82
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 83
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    :cond_14
    const/16 v3, 0x19

    .line 84
    aget-byte v0, v0, v2

    if-ne v0, v11, :cond_54

    .line 85
    sget v0, Lu0/b;->j:I

    if-ne v0, v11, :cond_54

    .line 86
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 87
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_13

    .line 88
    :pswitch_11
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 89
    aget-byte v0, v0, v3

    if-eqz v0, :cond_1a

    if-eq v0, v11, :cond_19

    if-eq v0, v15, :cond_18

    if-eq v0, v5, :cond_17

    if-eq v0, v2, :cond_16

    if-eq v0, v4, :cond_15

    goto/16 :goto_13

    .line 90
    :cond_15
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x24e

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_13

    .line 91
    :cond_16
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_13

    .line 92
    :cond_17
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x257

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_13

    .line 93
    :cond_18
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x256

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_13

    .line 94
    :cond_19
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x255

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_13

    .line 95
    :cond_1a
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x266

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_13

    .line 96
    :pswitch_12
    sget v2, Lk0/nt;->a:I

    const v6, 0x1201c0

    if-eq v2, v6, :cond_54

    const v6, 0x1a01c0

    if-eq v2, v6, :cond_54

    const v6, 0x3001c0

    if-eq v2, v6, :cond_54

    const v6, 0x2d01c0

    if-eq v2, v6, :cond_54

    const v6, 0x1301c0

    if-eq v2, v6, :cond_54

    const v6, 0x1b01c0

    if-eq v2, v6, :cond_54

    const v6, 0x3101c0

    if-eq v2, v6, :cond_54

    const v6, 0x2e01c0

    if-eq v2, v6, :cond_54

    const v6, 0x1401c0

    if-eq v2, v6, :cond_54

    const v6, 0x1501c0

    if-eq v2, v6, :cond_54

    const v6, 0x2401c0

    if-eq v2, v6, :cond_54

    const v6, 0x2501c0

    if-eq v2, v6, :cond_54

    const v6, 0x3301c0

    if-ne v2, v6, :cond_1b

    goto/16 :goto_13

    :cond_1b
    new-array v2, v11, [I

    add-int/lit8 v6, p2, 0x4

    .line 97
    aget-byte v7, v0, v6

    const/4 v8, 0x7

    shr-int/2addr v7, v8

    and-int/2addr v7, v11

    aput v7, v2, v10

    const/16 v7, 0xa

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 98
    aget-byte v7, v0, v6

    shr-int/2addr v7, v9

    and-int/2addr v7, v11

    aput v7, v2, v10

    const/16 v7, 0xb

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 99
    aget-byte v7, v0, v6

    shr-int/2addr v7, v4

    and-int/2addr v7, v11

    aput v7, v2, v10

    const/16 v7, 0xc

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v7, v11, [I

    .line 100
    aget-byte v8, v0, v6

    const/4 v12, 0x4

    shr-int/2addr v8, v12

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v7, v11, [I

    .line 101
    aget-byte v8, v0, v6

    shr-int/2addr v8, v5

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3a

    new-array v7, v11, [I

    .line 102
    aget-byte v8, v0, v6

    shr-int/2addr v8, v15

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10

    new-array v7, v11, [I

    .line 103
    aget-byte v8, v0, v6

    shr-int/2addr v8, v11

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v7, v11, [I

    .line 104
    aget-byte v6, v0, v6

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    aput v6, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    add-int/lit8 v6, p2, 0x5

    .line 105
    aget-byte v7, v0, v6

    const/4 v8, 0x7

    shr-int/2addr v7, v8

    and-int/2addr v7, v11

    aput v7, v2, v10

    const/16 v7, 0x12

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v11, [I

    .line 106
    aget-byte v8, v0, v6

    shr-int/2addr v8, v9

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v7, v11, [I

    .line 107
    aget-byte v8, v0, v6

    shr-int/2addr v8, v4

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v7, v11, [I

    .line 108
    aget-byte v8, v0, v6

    const/4 v12, 0x4

    shr-int/2addr v8, v12

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v7, v11, [I

    .line 109
    aget-byte v8, v0, v6

    shr-int/2addr v8, v5

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v7, v11, [I

    .line 110
    aget-byte v8, v0, v6

    shr-int/2addr v8, v15

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v7, v11, [I

    .line 111
    aget-byte v8, v0, v6

    shr-int/2addr v8, v11

    and-int/2addr v8, v11

    aput v8, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v7, v11, [I

    .line 112
    aget-byte v6, v0, v6

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    aput v6, v7, v10

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 113
    aget-byte v6, v0, v2

    and-int/2addr v6, v3

    add-int/lit8 v7, p2, 0x7

    .line 114
    aget-byte v8, v0, v7

    and-int/2addr v8, v3

    const-string v12, "persist.fyt.reversetemp"

    .line 115
    invoke-static {v12, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 116
    aget-byte v2, v0, v2

    and-int/lit16 v8, v2, 0xff

    .line 117
    aget-byte v2, v0, v7

    and-int/lit16 v6, v2, 0xff

    :cond_1c
    if-eqz v6, :cond_1f

    if-eq v6, v3, :cond_1e

    const-string v2, "persist.fyt.temperature"

    .line 118
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_1d

    const/16 v2, 0x1b

    new-array v7, v11, [I

    mul-int/2addr v6, v13

    add-int/lit16 v6, v6, 0x24e

    aput v6, v7, v10

    .line 119
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_1d
    const/16 v2, 0x1b

    new-array v7, v11, [I

    mul-int/2addr v6, v4

    add-int/lit16 v6, v6, 0x96

    aput v6, v7, v10

    .line 120
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_1e
    const/16 v2, 0x1b

    new-array v6, v11, [I

    const/4 v7, -0x3

    aput v7, v6, v10

    .line 121
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_1f
    const/16 v2, 0x1b

    new-array v6, v11, [I

    const/4 v7, -0x2

    aput v7, v6, v10

    .line 122
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-eqz v8, :cond_22

    if-eq v8, v3, :cond_21

    const-string v2, "persist.fyt.temperature"

    .line 123
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_20

    const/16 v2, 0x1c

    new-array v6, v11, [I

    mul-int/2addr v8, v13

    add-int/lit16 v8, v8, 0x24e

    aput v8, v6, v10

    .line 124
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_20
    const/16 v2, 0x1c

    new-array v6, v11, [I

    mul-int/2addr v8, v4

    add-int/lit16 v8, v8, 0x96

    aput v8, v6, v10

    .line 125
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_21
    const/16 v2, 0x1c

    new-array v6, v11, [I

    const/4 v7, -0x3

    aput v7, v6, v10

    .line 126
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_22
    const/16 v2, 0x1c

    new-array v6, v11, [I

    const/4 v7, -0x2

    aput v7, v6, v10

    .line 127
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v2, 0x15

    new-array v6, v11, [I

    add-int/lit8 v7, p2, 0x8

    .line 128
    aget-byte v8, v0, v7

    shr-int/2addr v8, v10

    and-int/lit8 v8, v8, 0xf

    aput v8, v6, v10

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    .line 129
    aget-byte v6, v0, v7

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0xf

    aput v6, v2, v10

    const/16 v6, 0x19

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v6, v11, [I

    add-int/lit8 v7, p2, 0x9

    .line 130
    aget-byte v8, v0, v7

    shr-int/2addr v8, v10

    and-int/2addr v8, v5

    aput v8, v6, v10

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v6, v11, [I

    .line 131
    aget-byte v8, v0, v7

    shr-int/2addr v8, v15

    and-int/2addr v8, v5

    aput v8, v6, v10

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v6, v11, [I

    .line 132
    aget-byte v8, v0, v7

    const/4 v12, 0x4

    shr-int/2addr v8, v12

    and-int/2addr v8, v5

    aput v8, v6, v10

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v6, v11, [I

    .line 133
    aget-byte v7, v0, v7

    shr-int/2addr v7, v9

    and-int/2addr v5, v7

    aput v5, v6, v10

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xa

    .line 134
    aget-byte v5, v0, v2

    and-int/2addr v5, v3

    if-eqz v5, :cond_24

    if-eq v5, v3, :cond_23

    const/16 v5, 0x28

    new-array v6, v11, [I

    .line 135
    aget-byte v2, v0, v2

    and-int/2addr v2, v3

    aput v2, v6, v10

    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_23
    const/16 v2, 0x28

    new-array v3, v11, [I

    const/4 v5, -0x3

    aput v5, v3, v10

    .line 136
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_24
    const/16 v2, 0x28

    new-array v3, v11, [I

    const/4 v5, -0x2

    aput v5, v3, v10

    .line 137
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    const/16 v2, 0x30

    new-array v3, v11, [I

    add-int/lit8 v5, p2, 0xb

    .line 138
    aget-byte v6, v0, v5

    const/4 v7, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v3, v11, [I

    .line 139
    aget-byte v6, v0, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v11

    aput v6, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2f

    new-array v3, v11, [I

    .line 140
    aget-byte v6, v0, v5

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v11, [I

    .line 141
    aget-byte v4, v0, v5

    shr-int/2addr v4, v10

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v11, [I

    const/16 v4, 0xc

    add-int/lit8 v4, p2, 0xc

    .line 142
    aget-byte v0, v0, v4

    shr-int/2addr v0, v10

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_13
    const/16 v2, 0x70

    new-array v3, v11, [I

    const/4 v5, 0x4

    add-int/lit8 v6, p2, 0x4

    .line 143
    aget-byte v5, v0, v6

    const/4 v7, 0x7

    shr-int/2addr v5, v7

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v11, [I

    .line 144
    aget-byte v5, v0, v6

    shr-int/2addr v5, v9

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v11, [I

    .line 145
    aget-byte v5, v0, v6

    shr-int/lit8 v4, v5, 0x5

    and-int/2addr v4, v11

    aput v4, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v11, [I

    .line 146
    aget-byte v0, v0, v6

    const/4 v4, 0x4

    shr-int/2addr v0, v4

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 147
    :pswitch_14
    sget-object v2, Lk0/nt;->g:[I

    const/16 v6, 0x76

    aget v2, v2, v6

    if-ne v2, v11, :cond_28

    .line 148
    sget v2, Lk0/nt;->W:I

    if-nez v2, :cond_26

    .line 149
    iget v2, v1, Lk0/jl;->U:I

    add-int/lit8 v6, p2, 0x4

    aget-byte v7, v0, v6

    shr-int/2addr v7, v4

    and-int/2addr v7, v11

    if-eq v2, v7, :cond_28

    .line 150
    aget-byte v2, v0, v6

    shr-int/2addr v2, v4

    and-int/2addr v2, v11

    iput v2, v1, Lk0/jl;->U:I

    if-ne v2, v11, :cond_25

    .line 151
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 152
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_7

    .line 153
    :cond_25
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 154
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_7

    .line 155
    :cond_26
    iget v2, v1, Lk0/jl;->U:I

    add-int/lit8 v6, p2, 0x4

    aget-byte v7, v0, v6

    const/4 v13, 0x4

    shr-int/2addr v7, v13

    and-int/2addr v7, v11

    if-eq v2, v7, :cond_28

    .line 156
    aget-byte v2, v0, v6

    shr-int/2addr v2, v13

    and-int/2addr v2, v11

    iput v2, v1, Lk0/jl;->U:I

    if-ne v2, v11, :cond_27

    .line 157
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 158
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_7

    .line 159
    :cond_27
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 160
    invoke-static {}, Lk0/qt;->f()V

    :cond_28
    :goto_7
    add-int/lit8 v2, p2, 0x4

    .line 161
    aget-byte v6, v0, v2

    shr-int/2addr v6, v9

    and-int/2addr v6, v11

    .line 162
    aget-byte v7, v0, v2

    shr-int/2addr v7, v4

    and-int/2addr v7, v11

    .line 163
    aget-byte v13, v0, v2

    const/16 v17, 0x4

    shr-int/lit8 v13, v13, 0x4

    and-int/2addr v13, v11

    .line 164
    aget-byte v17, v0, v2

    shr-int/lit8 v5, v17, 0x3

    and-int/2addr v5, v11

    .line 165
    aget-byte v17, v0, v2

    shr-int/lit8 v17, v17, 0x2

    and-int/lit8 v17, v17, 0x1

    .line 166
    aget-byte v18, v0, v2

    shr-int/lit8 v18, v18, 0x1

    and-int/lit8 v18, v18, 0x1

    .line 167
    aget-byte v2, v0, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v11

    shl-int/lit8 v18, v18, 0x1

    and-int/lit8 v18, v18, 0x2

    shl-int/2addr v2, v15

    const/16 v19, 0x4

    and-int/lit8 v2, v2, 0x4

    or-int v2, v18, v2

    shl-int/lit8 v18, v7, 0x3

    and-int/lit8 v18, v18, 0x8

    or-int v2, v2, v18

    shl-int/lit8 v18, v13, 0x4

    and-int/lit8 v18, v18, 0x10

    or-int v2, v2, v18

    shl-int/lit8 v4, v5, 0x5

    and-int/lit8 v4, v4, 0x20

    or-int/2addr v2, v4

    shl-int/lit8 v4, v17, 0x6

    and-int/lit8 v4, v4, 0x40

    or-int/2addr v2, v4

    const/4 v4, 0x7

    shl-int/lit8 v4, v6, 0x7

    and-int/lit16 v4, v4, 0x80

    or-int/2addr v2, v4

    .line 168
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v15, [I

    const/16 v6, 0xb

    aput v6, v5, v10

    aput v2, v5, v11

    invoke-static {v4, v14, v5, v8, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 169
    invoke-static {v7, v13, v10}, Ll0/c0;->a(III)V

    const/16 v2, 0x69

    new-array v5, v11, [I

    add-int/lit8 v6, p2, 0x5

    .line 170
    aget-byte v6, v0, v6

    shl-int/2addr v6, v12

    and-int v6, v6, v16

    add-int/lit8 v7, p2, 0x6

    aget-byte v7, v0, v7

    and-int/2addr v7, v3

    or-int/2addr v6, v7

    const v7, 0xffff

    and-int/2addr v6, v7

    aput v6, v5, v10

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v5, v11, [I

    add-int/lit8 v6, p2, 0x7

    .line 171
    aget-byte v9, v0, v6

    shl-int/2addr v9, v12

    and-int v9, v9, v16

    add-int/lit8 v13, p2, 0x8

    aget-byte v8, v0, v13

    and-int/2addr v8, v3

    or-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v5, v10

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x407

    new-array v5, v11, [I

    .line 172
    aget-byte v8, v0, v6

    shl-int/2addr v8, v12

    and-int v8, v8, v16

    aget-byte v9, v0, v13

    and-int/2addr v9, v3

    or-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v5, v10

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    aput v11, v2, v10

    .line 173
    aget-byte v5, v0, v6

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    aget-byte v6, v0, v13

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    aput v5, v2, v11

    const/4 v5, 0x0

    invoke-static {v4, v14, v2, v5, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x6b

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x9

    .line 174
    aget-byte v5, v0, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0xa

    aget-byte v6, v0, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xb

    .line 175
    aget-byte v5, v0, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0xc

    aget-byte v6, v0, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xd

    .line 176
    aget-byte v5, v0, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v6, p2, 0xe

    aget-byte v6, v0, v6

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xf

    .line 177
    aget-byte v6, v0, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v11

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v4, v11, [I

    .line 178
    aget-byte v5, v0, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v11

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x10

    .line 179
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x11

    aget-byte v6, v0, v6

    shl-int/2addr v6, v12

    and-int v6, v6, v16

    or-int/2addr v5, v6

    const/16 v6, 0x12

    add-int/lit8 v6, p2, 0x12

    aget-byte v0, v0, v6

    and-int/2addr v0, v3

    or-int/2addr v0, v5

    const v3, 0xffffff

    and-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :pswitch_15
    add-int/lit8 v2, p2, 0x4

    .line 180
    aget-byte v2, v0, v2

    add-int/lit8 v7, p2, 0x5

    .line 181
    aget-byte v0, v0, v7

    and-int/2addr v2, v3

    .line 182
    iput v2, v1, Lk0/jl;->k:I

    move v2, v10

    .line 183
    :goto_8
    iget-object v7, v1, Lk0/jl;->m:[[I

    array-length v8, v7

    if-ge v2, v8, :cond_2a

    .line 184
    iget v8, v1, Lk0/jl;->k:I

    aget-object v7, v7, v2

    aget v7, v7, v10

    if-ne v8, v7, :cond_29

    if-eqz v8, :cond_2a

    .line 185
    iput v2, v1, Lk0/jl;->j:I

    goto :goto_9

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 186
    :cond_2a
    :goto_9
    iget v7, v1, Lk0/jl;->l:I

    iget v8, v1, Lk0/jl;->k:I

    if-eq v7, v8, :cond_2f

    .line 187
    iput v8, v1, Lk0/jl;->l:I

    and-int/lit16 v7, v0, 0xff

    if-ne v7, v11, :cond_2f

    const/16 v7, 0x25

    if-eq v8, v7, :cond_2e

    const/16 v7, 0x26

    if-eq v8, v7, :cond_2b

    goto :goto_a

    .line 188
    :cond_2b
    iget-boolean v7, v1, Lk0/jl;->g:Z

    if-eqz v7, :cond_2c

    sget-object v7, La/b;->Q:Ljava/lang/String;

    invoke-static {v7}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const/16 v7, 0x89

    new-array v8, v11, [I

    aput v10, v8, v10

    .line 189
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const-wide/16 v7, 0x15e

    .line 190
    invoke-static {v7, v8}, La/i;->a0(J)V

    .line 191
    :cond_2c
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2d

    const-string v7, "false"

    .line 192
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2d
    iput-boolean v10, v1, Lk0/jl;->g:Z

    goto :goto_a

    .line 194
    :cond_2e
    sget-object v7, La/b;->Q:Ljava/lang/String;

    invoke-static {v7}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    const/16 v7, 0x89

    new-array v8, v11, [I

    aput v11, v8, v10

    .line 195
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const-string v7, "true"

    .line 196
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0xf0

    .line 197
    invoke-static {v6, v7}, La/i;->a0(J)V

    .line 198
    sget-object v6, La/b;->R:Ljava/lang/String;

    invoke-static {v6}, Lo1/u;->f(Ljava/lang/String;)I

    .line 199
    iput-boolean v11, v1, Lk0/jl;->g:Z

    :cond_2f
    :goto_a
    and-int/2addr v0, v3

    if-ne v0, v11, :cond_3f

    .line 200
    iget-object v0, v1, Lk0/jl;->m:[[I

    array-length v0, v0

    if-ge v2, v0, :cond_3e

    .line 201
    iget v0, v1, Lk0/jl;->k:I

    const/16 v3, 0xe

    if-eq v0, v3, :cond_3d

    const/16 v3, 0x11

    if-eq v0, v3, :cond_3b

    const/16 v3, 0x1a

    const/16 v6, 0x12

    if-eq v0, v6, :cond_37

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 202
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, v1, Lk0/jl;->n:I

    if-ne v0, v11, :cond_3e

    .line 203
    :cond_30
    iget-object v0, v1, Lk0/jl;->m:[[I

    aget-object v0, v0, v2

    aget v0, v0, v11

    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 204
    :pswitch_16
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 205
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_c

    .line 206
    :pswitch_17
    sget v0, Lk0/nt;->c:I

    if-ne v0, v15, :cond_3e

    .line 207
    iget v0, v1, Lk0/jl;->v:I

    add-int/2addr v0, v11

    iput v0, v1, Lk0/jl;->v:I

    if-le v0, v11, :cond_31

    .line 208
    iput v10, v1, Lk0/jl;->v:I

    :cond_31
    const/16 v0, 0x81

    new-array v2, v11, [I

    .line 209
    iget v3, v1, Lk0/jl;->v:I

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 210
    :pswitch_18
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    const/4 v2, 0x4

    .line 211
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 212
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 213
    :sswitch_0
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_33

    const/4 v2, 0x4

    if-eq v0, v2, :cond_33

    if-eq v0, v4, :cond_33

    .line 214
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->r3()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 215
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 216
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 217
    :cond_32
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    .line 218
    invoke-static {v2, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 219
    :cond_33
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 220
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :pswitch_19
    const/4 v2, 0x4

    .line 221
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_1

    .line 222
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    .line 223
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 224
    :sswitch_1
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_35

    if-eq v0, v2, :cond_35

    if-eq v0, v4, :cond_35

    .line 225
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->r3()Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x12

    .line 226
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 227
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 228
    :cond_34
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    .line 229
    invoke-static {v5, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    :cond_35
    const/16 v0, 0x12

    .line 230
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 231
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 232
    :pswitch_1a
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_2

    .line 233
    invoke-static {}, Ly0/h;->i0()V

    const/4 v0, -0x2

    .line 234
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto/16 :goto_c

    .line 235
    :sswitch_2
    sget v0, Lk0/jl;->x0:I

    if-ne v0, v11, :cond_3e

    .line 236
    invoke-static {}, Ly0/h;->i0()V

    const/4 v0, -0x2

    .line 237
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto/16 :goto_c

    .line 238
    :pswitch_1b
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_3

    .line 239
    invoke-static {}, Ly0/h;->i0()V

    const/4 v0, -0x1

    .line 240
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto/16 :goto_c

    .line 241
    :sswitch_3
    sget v0, Lk0/jl;->x0:I

    if-ne v0, v11, :cond_3e

    .line 242
    invoke-static {}, Ly0/h;->i0()V

    const/4 v0, -0x1

    .line 243
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto/16 :goto_c

    .line 244
    :pswitch_1c
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0xd

    .line 245
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 246
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 247
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    .line 248
    iput-boolean v11, v1, Lk0/jl;->A:Z

    goto/16 :goto_c

    :cond_36
    const/16 v0, 0xd

    .line 249
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 250
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto/16 :goto_c

    .line 251
    :pswitch_1d
    invoke-static {}, Lu0/d;->u1()V

    goto/16 :goto_c

    .line 252
    :pswitch_1e
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 253
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_c

    .line 254
    :cond_37
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 255
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "sys.carlink.type"

    invoke-static {v0, v10}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_38

    goto :goto_b

    .line 256
    :cond_38
    sget v0, Lh0/c;->E:I

    if-eq v0, v5, :cond_39

    const/4 v2, 0x4

    if-eq v0, v2, :cond_39

    if-eq v0, v4, :cond_39

    .line 257
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 258
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 259
    :cond_39
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    .line 260
    invoke-static {v3, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 261
    :cond_3a
    :goto_b
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lc/e;->c(I)Z

    goto :goto_c

    .line 262
    :cond_3b
    sget v0, Lk0/jl;->u0:I

    if-nez v0, :cond_3c

    const/16 v0, 0x12

    .line 263
    invoke-static {v0, v10}, Ll0/b0;->l0(II)V

    .line 264
    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_c

    .line 265
    :cond_3c
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 266
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_c

    .line 267
    :cond_3d
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 268
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    .line 269
    invoke-static {v11, v11}, Ll0/b0;->l0(II)V

    .line 270
    :cond_3e
    :goto_c
    :pswitch_1f
    iput-boolean v10, v1, Lk0/jl;->r:Z

    goto/16 :goto_13

    :cond_3f
    if-ne v0, v15, :cond_44

    .line 271
    iget-object v0, v1, Lk0/jl;->m:[[I

    array-length v0, v0

    if-ge v2, v0, :cond_54

    iget-boolean v0, v1, Lk0/jl;->r:Z

    if-nez v0, :cond_54

    .line 272
    iget v0, v1, Lk0/jl;->k:I

    if-eq v0, v12, :cond_41

    const/16 v2, 0xe

    if-eq v0, v2, :cond_40

    goto :goto_d

    .line 273
    :cond_40
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 274
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 275
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    .line 276
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    .line 277
    invoke-static {v11, v11}, Ll0/b0;->l0(II)V

    .line 278
    iput-boolean v11, v1, Lk0/jl;->A:Z

    goto :goto_d

    .line 279
    :cond_41
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 280
    sget-object v0, La/b;->R:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_d

    .line 281
    :cond_42
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 282
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    .line 283
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 284
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    .line 285
    :cond_43
    :goto_d
    iput-boolean v11, v1, Lk0/jl;->r:Z

    goto/16 :goto_13

    :cond_44
    if-nez v0, :cond_54

    .line 286
    iget-object v0, v1, Lk0/jl;->m:[[I

    array-length v0, v0

    if-ge v2, v0, :cond_46

    .line 287
    iget v0, v1, Lk0/jl;->k:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_46

    const/16 v2, 0x14

    if-eq v0, v2, :cond_46

    const/16 v2, 0x11

    if-eq v0, v2, :cond_46

    const/16 v2, 0x12

    if-eq v0, v2, :cond_46

    const/16 v2, 0x17

    if-eq v0, v2, :cond_46

    const/16 v2, 0x18

    if-eq v0, v2, :cond_46

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    .line 288
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, v1, Lk0/jl;->n:I

    if-ne v0, v11, :cond_46

    .line 289
    :cond_45
    iget-object v0, v1, Lk0/jl;->m:[[I

    iget v2, v1, Lk0/jl;->j:I

    aget-object v0, v0, v2

    aget v0, v0, v11

    invoke-static {v0, v11}, Ll0/b0;->l0(II)V

    goto :goto_e

    .line 290
    :pswitch_20
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 291
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    .line 292
    invoke-static {v4, v11}, Ll0/b0;->l0(II)V

    .line 293
    :cond_46
    :goto_e
    :pswitch_21
    iput-boolean v10, v1, Lk0/jl;->r:Z

    goto/16 :goto_13

    :pswitch_22
    add-int/lit8 v2, p2, 0x4

    .line 294
    aget-byte v2, v0, v2

    add-int/lit8 v4, p2, 0x5

    .line 295
    aget-byte v4, v0, v4

    add-int/lit8 v5, p2, 0x6

    .line 296
    aget-byte v5, v0, v5

    const/4 v6, 0x7

    add-int/lit8 v6, p2, 0x7

    .line 297
    aget-byte v0, v0, v6

    and-int/2addr v2, v3

    .line 298
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 299
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    and-int/lit16 v2, v5, 0xff

    .line 300
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    and-int/2addr v0, v3

    .line 301
    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_13

    :pswitch_23
    add-int/lit8 v2, p2, 0x4

    .line 302
    aget-byte v2, v0, v2

    add-int/lit8 v4, p2, 0x5

    .line 303
    aget-byte v4, v0, v4

    add-int/lit8 v5, p2, 0x6

    .line 304
    aget-byte v5, v0, v5

    const/4 v6, 0x7

    add-int/lit8 v6, p2, 0x7

    .line 305
    aget-byte v0, v0, v6

    if-nez v2, :cond_47

    if-nez v4, :cond_47

    if-nez v5, :cond_47

    if-nez v0, :cond_47

    .line 306
    invoke-static {v10}, Lu0/d;->C2(I)V

    goto :goto_f

    .line 307
    :cond_47
    sget v6, Ll0/c0;->g:I

    if-ne v6, v2, :cond_48

    sget v6, Ll0/c0;->h:I

    if-ne v6, v4, :cond_48

    sget v6, Ll0/c0;->i:I

    if-ne v6, v5, :cond_48

    sget v6, Ll0/c0;->j:I

    if-eq v6, v0, :cond_49

    .line 308
    :cond_48
    sget v6, Lu0/b;->o:I

    if-nez v6, :cond_49

    .line 309
    invoke-static {v11}, Lu0/d;->C2(I)V

    const/4 v6, 0x4

    .line 310
    sput v6, Ll0/c0;->k:I

    .line 311
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 312
    :cond_49
    :goto_f
    sput v2, Ll0/c0;->g:I

    .line 313
    sput v4, Ll0/c0;->h:I

    .line 314
    sput v5, Ll0/c0;->i:I

    .line 315
    sput v0, Ll0/c0;->j:I

    and-int/2addr v2, v3

    .line 316
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 317
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v5, 0xff

    .line 318
    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v0, v3

    .line 319
    invoke-static {v0}, Ll0/c0;->E0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_13

    :pswitch_24
    add-int/lit8 v2, p2, 0x5

    .line 320
    aget-byte v2, v0, v2

    const/4 v6, 0x4

    add-int/lit8 v3, p2, 0x4

    aget-byte v0, v0, v3

    const/16 v3, 0x21c

    invoke-static {v2, v0, v10, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_13

    :pswitch_25
    move v6, v7

    add-int/lit8 v2, p2, 0x4

    .line 321
    aget-byte v0, v0, v2

    and-int/2addr v0, v3

    const-string v2, "persist.syu.reversefrontdoor"

    .line 322
    invoke-static {v2, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4a

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 323
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 324
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_4a
    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 325
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x5

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 326
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_10
    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x7

    and-int/2addr v3, v11

    aput v3, v2, v10

    const/4 v3, 0x4

    .line 327
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 328
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/lit8 v3, v0, 0x2

    and-int/2addr v3, v11

    aput v3, v2, v10

    .line 329
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v11, [I

    shr-int/2addr v0, v5

    and-int/2addr v0, v11

    aput v0, v2, v10

    .line 330
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    .line 331
    :pswitch_26
    iget v2, v1, Lk0/jl;->q:I

    if-ne v2, v11, :cond_4c

    add-int/lit8 v2, p2, 0x4

    .line 332
    aget-byte v2, v0, v2

    shr-int/2addr v2, v15

    and-int/2addr v2, v11

    .line 333
    iget v3, v1, Lk0/jl;->p:I

    if-eq v3, v2, :cond_4c

    .line 334
    iput v2, v1, Lk0/jl;->p:I

    if-ne v2, v11, :cond_4b

    .line 335
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x68

    new-array v6, v11, [I

    aput v11, v6, v10

    const/4 v7, 0x0

    invoke-static {v2, v3, v6, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_11

    :cond_4b
    const/4 v7, 0x0

    .line 336
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x68

    new-array v6, v11, [I

    aput v10, v6, v10

    invoke-static {v2, v3, v6, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 337
    :cond_4c
    :goto_11
    sget v2, Lk0/jl;->u0:I

    if-ne v2, v11, :cond_4f

    add-int/lit8 v2, p2, 0x4

    .line 338
    aget-byte v2, v0, v2

    shr-int/2addr v2, v9

    and-int/2addr v2, v11

    if-ne v2, v11, :cond_4d

    .line 339
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 340
    iput-boolean v11, v1, Lk0/jl;->u:Z

    .line 341
    sget-object v2, La/b;->R:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_12

    :cond_4d
    if-nez v2, :cond_4f

    .line 342
    iget-boolean v2, v1, Lk0/jl;->u:Z

    if-ne v2, v11, :cond_4f

    .line 343
    sget-object v2, La/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x7

    new-array v2, v2, [I

    .line 344
    fill-array-data v2, :array_b

    invoke-static {v2}, Lz/k;->s([I)V

    .line 345
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 346
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    .line 347
    :cond_4e
    iput-boolean v10, v1, Lk0/jl;->u:Z

    :cond_4f
    :goto_12
    const/16 v2, 0x67

    new-array v3, v11, [I

    add-int/lit8 v6, p2, 0x4

    .line 348
    aget-byte v6, v0, v6

    shr-int/lit8 v5, v6, 0x3

    and-int/2addr v5, v11

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v11, [I

    add-int/lit8 v4, p2, 0x5

    .line 349
    aget-byte v0, v0, v4

    shr-int/2addr v0, v10

    and-int/2addr v0, v11

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_13

    :cond_50
    add-int/lit8 v2, p2, 0x3

    .line 350
    aget-byte v0, v0, v2

    and-int/2addr v0, v3

    iput v0, v1, Lk0/jl;->n:I

    if-ne v0, v11, :cond_51

    .line 351
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 352
    invoke-static {v9, v10}, Ll0/b0;->l0(II)V

    .line 353
    invoke-static {v9, v11}, Ll0/b0;->l0(II)V

    .line 354
    :cond_51
    iget v0, v1, Lk0/jl;->n:I

    iput v0, v1, Lk0/jl;->o:I

    goto/16 :goto_13

    :cond_52
    const/16 v2, 0x63

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x3

    .line 355
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x7

    .line 356
    aget-byte v6, v0, v5

    and-int/2addr v6, v3

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 357
    aget-byte v2, v0, v5

    and-int/2addr v2, v3

    iput v2, v1, Lk0/jl;->q:I

    const/16 v2, 0x7a

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x4

    .line 358
    aget-byte v6, v0, v5

    and-int/2addr v6, v3

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 359
    aget-byte v2, v0, v5

    and-int/2addr v2, v3

    iput v2, v1, Lk0/jl;->s:I

    .line 360
    iput-boolean v11, v1, Lk0/jl;->t:Z

    const/16 v2, 0x76

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x5

    .line 361
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x6

    .line 362
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x8

    .line 363
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0x9

    .line 364
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v4, v11, [I

    add-int/lit8 v5, p2, 0xa

    .line 365
    aget-byte v6, v0, v5

    shr-int/2addr v6, v9

    and-int/2addr v6, v11

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v4, v11, [I

    .line 366
    aget-byte v6, v0, v5

    const/4 v7, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v11

    aput v6, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v4, v11, [I

    .line 367
    aget-byte v5, v0, v5

    and-int/2addr v5, v3

    aput v5, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v4, v11, [I

    const/16 v5, 0xb

    add-int/lit8 v5, p2, 0xb

    .line 368
    aget-byte v0, v0, v5

    and-int/2addr v0, v3

    aput v0, v4, v10

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    .line 369
    :cond_53
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v4, p3, -0x3

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_54
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_26
        :pswitch_0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x23
        :pswitch_17
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf01c0 -> :sswitch_0
        0x1201c0 -> :sswitch_0
        0x1301c0 -> :sswitch_0
        0x1401c0 -> :sswitch_0
        0x1501c0 -> :sswitch_0
        0x1601c0 -> :sswitch_0
        0x1a01c0 -> :sswitch_0
        0x1b01c0 -> :sswitch_0
        0x1c01c0 -> :sswitch_0
        0x1d01c0 -> :sswitch_0
        0x1e01c0 -> :sswitch_0
        0x1f01c0 -> :sswitch_0
        0x2001c0 -> :sswitch_0
        0x2101c0 -> :sswitch_0
        0x2301c0 -> :sswitch_0
        0x2401c0 -> :sswitch_0
        0x2501c0 -> :sswitch_0
        0x2d01c0 -> :sswitch_0
        0x2e01c0 -> :sswitch_0
        0x2f01c0 -> :sswitch_0
        0x3001c0 -> :sswitch_0
        0x3101c0 -> :sswitch_0
        0x3201c0 -> :sswitch_0
        0x3301c0 -> :sswitch_0
        0x3401c0 -> :sswitch_0
        0x3501c0 -> :sswitch_0
        0x3601c0 -> :sswitch_0
        0x3701c0 -> :sswitch_0
        0x3801c0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf01c0 -> :sswitch_1
        0x1201c0 -> :sswitch_1
        0x1301c0 -> :sswitch_1
        0x1401c0 -> :sswitch_1
        0x1501c0 -> :sswitch_1
        0x1601c0 -> :sswitch_1
        0x1a01c0 -> :sswitch_1
        0x1b01c0 -> :sswitch_1
        0x1c01c0 -> :sswitch_1
        0x1d01c0 -> :sswitch_1
        0x1e01c0 -> :sswitch_1
        0x1f01c0 -> :sswitch_1
        0x2001c0 -> :sswitch_1
        0x2101c0 -> :sswitch_1
        0x2301c0 -> :sswitch_1
        0x2401c0 -> :sswitch_1
        0x2501c0 -> :sswitch_1
        0x2d01c0 -> :sswitch_1
        0x2e01c0 -> :sswitch_1
        0x2f01c0 -> :sswitch_1
        0x3001c0 -> :sswitch_1
        0x3101c0 -> :sswitch_1
        0x3201c0 -> :sswitch_1
        0x3301c0 -> :sswitch_1
        0x3401c0 -> :sswitch_1
        0x3501c0 -> :sswitch_1
        0x3601c0 -> :sswitch_1
        0x3701c0 -> :sswitch_1
        0x3801c0 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xf01c0 -> :sswitch_2
        0x1201c0 -> :sswitch_2
        0x1301c0 -> :sswitch_2
        0x1401c0 -> :sswitch_2
        0x1501c0 -> :sswitch_2
        0x1601c0 -> :sswitch_2
        0x1a01c0 -> :sswitch_2
        0x1b01c0 -> :sswitch_2
        0x1c01c0 -> :sswitch_2
        0x1d01c0 -> :sswitch_2
        0x1e01c0 -> :sswitch_2
        0x1f01c0 -> :sswitch_2
        0x2001c0 -> :sswitch_2
        0x2101c0 -> :sswitch_2
        0x2301c0 -> :sswitch_2
        0x2401c0 -> :sswitch_2
        0x2501c0 -> :sswitch_2
        0x2d01c0 -> :sswitch_2
        0x2e01c0 -> :sswitch_2
        0x2f01c0 -> :sswitch_2
        0x3001c0 -> :sswitch_2
        0x3101c0 -> :sswitch_2
        0x3201c0 -> :sswitch_2
        0x3301c0 -> :sswitch_2
        0x3401c0 -> :sswitch_2
        0x3501c0 -> :sswitch_2
        0x3601c0 -> :sswitch_2
        0x3701c0 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0xf01c0 -> :sswitch_3
        0x1201c0 -> :sswitch_3
        0x1301c0 -> :sswitch_3
        0x1401c0 -> :sswitch_3
        0x1501c0 -> :sswitch_3
        0x1601c0 -> :sswitch_3
        0x1a01c0 -> :sswitch_3
        0x1b01c0 -> :sswitch_3
        0x1d01c0 -> :sswitch_3
        0x1e01c0 -> :sswitch_3
        0x1f01c0 -> :sswitch_3
        0x2001c0 -> :sswitch_3
        0x2101c0 -> :sswitch_3
        0x2301c0 -> :sswitch_3
        0x2401c0 -> :sswitch_3
        0x2501c0 -> :sswitch_3
        0x2d01c0 -> :sswitch_3
        0x2e01c0 -> :sswitch_3
        0x2f01c0 -> :sswitch_3
        0x3001c0 -> :sswitch_3
        0x3101c0 -> :sswitch_3
        0x3201c0 -> :sswitch_3
        0x3301c0 -> :sswitch_3
        0x3401c0 -> :sswitch_3
        0x3501c0 -> :sswitch_3
        0x3601c0 -> :sswitch_3
        0x3701c0 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_20
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x23
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :array_0
    .array-data 4
        0x4
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x1a
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1a
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1a
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/jl;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v1, p0, Lk0/jl;->Z:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lk0/jl;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/jl;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->G:Lo1/y;

    iget-object v1, p0, Lk0/jl;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/jl;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->n:Lo1/y;

    iget-object v1, p0, Lk0/jl;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Le/e;->e:Lo1/z;

    iget-object v1, p0, Lk0/jl;->E:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->d(Lo1/p;)V

    .line 9
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/jl;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/jl;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/jl;->S:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->d:Lo1/y;

    iget-object v1, p0, Lk0/jl;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    const/4 v0, 0x0

    .line 14
    sput-object v0, Le/c;->c:Lo1/o;

    .line 15
    sput-object v0, Le/c;->h:Lo1/o;

    .line 16
    sput-object v0, Le/c;->i:Lo1/o;

    .line 17
    sput-object v0, Le/c;->j:Lo1/o;

    .line 18
    sput-object v0, Le/c;->k:Lo1/o;

    .line 19
    sput-object v0, Le/c;->p:Lo1/o;

    .line 20
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v1, p0, Lk0/jl;->T:Lc/d;

    const/16 v2, 0x57

    invoke-virtual {v0, v2, v1}, Lc/e;->f(ILc/d;)V

    .line 21
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v1, p0, Lk0/jl;->T:Lc/d;

    const/16 v2, 0x58

    invoke-virtual {v0, v2, v1}, Lc/e;->f(ILc/d;)V

    .line 22
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v1, p0, Lk0/jl;->T:Lc/d;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lc/e;->f(ILc/d;)V

    .line 23
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    iget-object v1, p0, Lk0/jl;->T:Lc/d;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lc/e;->f(ILc/d;)V

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Lk0/qt;->X(I)V

    .line 25
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lui/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x91

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

    const/16 v3, 0x18

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eq v1, v3, :cond_11

    const/16 v3, 0x405

    const/16 v12, 0x6b

    const/16 v13, 0xa

    const/16 v15, 0x8

    const/16 v16, 0xe3

    if-eq v1, v3, :cond_f

    const/16 v3, 0x410

    const/16 v14, 0x86

    if-eq v1, v3, :cond_5

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    .line 1
    :pswitch_0
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lk0/jl;->F3(I)V

    goto/16 :goto_1

    .line 2
    :pswitch_1
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lk0/jl;->E3(I)V

    goto/16 :goto_1

    .line 3
    :pswitch_2
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lk0/jl;->D3(I)V

    goto/16 :goto_1

    .line 4
    :pswitch_3
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lk0/jl;->B3(I)V

    goto/16 :goto_1

    :pswitch_4
    new-array v1, v8, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0xa0

    aput v3, v1, v10

    aput v9, v1, v6

    .line 5
    aget v2, v2, v11

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_5
    new-array v1, v8, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x9e

    aput v3, v1, v10

    aput v9, v1, v6

    .line 6
    aget v2, v2, v11

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_6
    new-array v1, v8, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x9d

    aput v3, v1, v10

    aput v9, v1, v6

    .line 7
    aget v2, v2, v11

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_7
    new-array v1, v8, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x9f

    aput v3, v1, v10

    aput v9, v1, v6

    .line 8
    aget v2, v2, v11

    aput v2, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 9
    :pswitch_8
    aget v1, v2, v11

    if-ne v1, v9, :cond_12

    .line 10
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.xp.ziyouguang.ZXVinfastLuxAirControlAct"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lk0/jl;->w3()V

    goto/16 :goto_1

    .line 12
    :cond_0
    invoke-static {v7, v11}, Ll0/b0;->l0(II)V

    .line 13
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_1

    :pswitch_9
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x9b

    aput v3, v1, v10

    aput v10, v1, v6

    .line 14
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_a
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x98

    aput v3, v1, v10

    aput v10, v1, v6

    .line 15
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 16
    :pswitch_b
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FinalCanbus.360 39 --- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-static {v2, v11, v5}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "FinalCanbus.360 top --- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "persist.lsec.fourcamera2.show"

    .line 17
    invoke-static {v5, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v1, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 19
    aget v1, v2, v11

    if-ne v1, v9, :cond_1

    .line 20
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24e

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_1

    .line 21
    :cond_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x266

    invoke-virtual {v1, v2}, Lc/e;->c(I)Z

    goto/16 :goto_1

    :pswitch_c
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x93

    aput v3, v1, v10

    aput v10, v1, v6

    .line 22
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_d
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x94

    aput v3, v1, v10

    aput v10, v1, v6

    .line 23
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_e
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x95

    aput v3, v1, v10

    aput v10, v1, v6

    .line 24
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_f
    new-array v1, v9, [I

    .line 25
    aget v3, v2, v11

    aput v3, v1, v11

    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    .line 26
    aget v1, v2, v11

    if-ne v1, v9, :cond_2

    new-array v1, v8, [I

    .line 27
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 28
    :cond_2
    aget v1, v2, v11

    if-nez v1, :cond_12

    new-array v1, v8, [I

    .line 29
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 30
    :pswitch_10
    aget v1, v2, v11

    if-ne v1, v9, :cond_3

    .line 31
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 32
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_1

    .line 33
    :cond_3
    aget v1, v2, v11

    if-nez v1, :cond_12

    .line 34
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 35
    invoke-static {v7, v11}, Ll0/b0;->l0(II)V

    .line 36
    invoke-static {v7, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_1

    :pswitch_11
    if-eqz v2, :cond_12

    .line 37
    array-length v1, v2

    if-lez v1, :cond_12

    new-array v1, v13, [I

    aput v16, v1, v11

    aput v11, v1, v9

    aput v12, v1, v10

    aput v7, v1, v6

    .line 38
    aget v3, v2, v11

    aput v3, v1, v5

    aget v3, v2, v9

    aput v3, v1, v8

    aget v3, v2, v10

    aput v3, v1, v7

    aget v3, v2, v6

    aput v3, v1, v4

    aget v3, v2, v5

    aput v3, v1, v15

    aget v2, v2, v8

    const/16 v3, 0x9

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_12
    if-eqz v2, :cond_12

    .line 39
    array-length v1, v2

    if-lez v1, :cond_12

    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x6c

    aput v3, v1, v10

    aput v10, v1, v6

    .line 40
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_13
    if-eqz v2, :cond_12

    .line 41
    array-length v1, v2

    if-lez v1, :cond_12

    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0xa8

    aput v3, v1, v10

    aput v10, v1, v6

    .line 42
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_14
    if-eqz v2, :cond_12

    .line 43
    array-length v1, v2

    if-lez v1, :cond_12

    const/16 v1, 0x9

    new-array v1, v1, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0xa7

    aput v3, v1, v10

    aput v8, v1, v6

    .line 44
    aget v3, v2, v11

    aput v3, v1, v5

    aget v3, v2, v9

    aput v3, v1, v8

    aget v3, v2, v10

    aput v3, v1, v7

    aget v3, v2, v6

    aput v3, v1, v4

    aget v2, v2, v5

    aput v2, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_15
    if-eqz v2, :cond_12

    .line 45
    array-length v1, v2

    if-lez v1, :cond_12

    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x70

    aput v3, v1, v10

    aput v10, v1, v6

    .line 46
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_16
    if-eqz v2, :cond_12

    .line 47
    array-length v1, v2

    if-lez v1, :cond_12

    .line 48
    aget v1, v2, v5

    if-ne v1, v5, :cond_4

    .line 49
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    const-string v3, "JumpPage.caryui ---- 5555555555555 "

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    new-array v1, v4, [I

    .line 50
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_4
    new-array v1, v13, [I

    aput v16, v1, v11

    aput v11, v1, v9

    aput v12, v1, v10

    aput v7, v1, v6

    aput v10, v1, v5

    .line 51
    aget v3, v2, v11

    aput v3, v1, v8

    aget v3, v2, v9

    aput v3, v1, v7

    aget v3, v2, v10

    aput v3, v1, v4

    aget v3, v2, v6

    aput v3, v1, v15

    aget v2, v2, v5

    const/16 v3, 0x9

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_17
    if-eqz v2, :cond_12

    .line 52
    array-length v1, v2

    if-lez v1, :cond_12

    new-array v1, v4, [I

    .line 53
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_18
    if-eqz v2, :cond_12

    .line 54
    array-length v1, v2

    if-lez v1, :cond_12

    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x6a

    aput v3, v1, v10

    aput v10, v1, v6

    .line 55
    aget v3, v2, v11

    aput v3, v1, v5

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 56
    :cond_5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FinalCanbus.C_CMD_6606 --- "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v2

    invoke-static {v2, v11, v12}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 57
    aget v1, v2, v11

    if-eqz v1, :cond_8

    if-eq v1, v9, :cond_6

    if-eq v1, v10, :cond_6

    if-eq v1, v6, :cond_6

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_19
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x93

    aput v3, v1, v10

    aput v10, v1, v6

    .line 58
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_1a
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x95

    aput v3, v1, v10

    aput v10, v1, v6

    .line 59
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_1b
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x9c

    aput v3, v1, v10

    aput v10, v1, v6

    .line 60
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_1c
    new-array v1, v7, [I

    aput v16, v1, v11

    aput v11, v1, v9

    const/16 v3, 0x9a

    aput v3, v1, v10

    aput v10, v1, v6

    .line 61
    aget v3, v2, v9

    aput v3, v1, v5

    aget v2, v2, v10

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 62
    :cond_6
    aget v1, v2, v9

    if-ne v1, v9, :cond_7

    new-array v1, v7, [I

    .line 63
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 64
    :cond_7
    invoke-static {}, Lo1/u;->z()I

    new-array v1, v9, [I

    aput v11, v1, v11

    .line 65
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    .line 66
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 67
    :cond_8
    aget v1, v2, v9

    if-eq v1, v9, :cond_d

    if-eq v1, v10, :cond_b

    if-eq v1, v6, :cond_9

    goto/16 :goto_1

    .line 68
    :cond_9
    aget v1, v2, v10

    if-ne v1, v9, :cond_a

    .line 69
    invoke-virtual {v0, v15}, Lk0/jl;->a3(I)V

    goto/16 :goto_1

    .line 70
    :cond_a
    aget v1, v2, v10

    if-ne v1, v10, :cond_12

    const/16 v1, 0x9

    .line 71
    invoke-virtual {v0, v1}, Lk0/jl;->a3(I)V

    goto/16 :goto_1

    .line 72
    :cond_b
    aget v1, v2, v10

    if-ne v1, v9, :cond_c

    .line 73
    invoke-virtual {v0, v9}, Lk0/jl;->a3(I)V

    goto/16 :goto_1

    .line 74
    :cond_c
    aget v1, v2, v10

    if-ne v1, v10, :cond_12

    .line 75
    invoke-virtual {v0, v10}, Lk0/jl;->a3(I)V

    goto/16 :goto_1

    .line 76
    :cond_d
    aget v1, v2, v10

    if-ne v1, v9, :cond_e

    .line 77
    invoke-virtual {v0, v5}, Lk0/jl;->a3(I)V

    goto/16 :goto_1

    .line 78
    :cond_e
    aget v1, v2, v10

    if-ne v1, v10, :cond_12

    .line 79
    invoke-virtual {v0, v6}, Lk0/jl;->a3(I)V

    goto/16 :goto_1

    .line 80
    :cond_f
    aget v1, v2, v9

    mul-int/lit16 v1, v1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 81
    aget v3, v2, v10

    mul-int/lit16 v3, v3, 0x258

    invoke-static {}, La/f;->i()I

    move-result v14

    div-int/2addr v3, v14

    .line 82
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 83
    aget v14, v2, v11

    if-nez v14, :cond_10

    new-array v2, v13, [I

    aput v16, v2, v11

    aput v11, v2, v9

    aput v12, v2, v10

    aput v7, v2, v6

    aput v10, v2, v5

    shr-int/lit8 v5, v1, 0x8

    aput v5, v2, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v7

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v4

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v15

    const/16 v1, 0x9

    aput v9, v2, v1

    .line 84
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 85
    :cond_10
    aget v2, v2, v11

    if-ne v2, v9, :cond_12

    new-array v2, v13, [I

    aput v16, v2, v11

    aput v11, v2, v9

    aput v12, v2, v10

    aput v7, v2, v6

    aput v10, v2, v5

    shr-int/lit8 v5, v1, 0x8

    aput v5, v2, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v7

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v4

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v15

    const/16 v1, 0x9

    aput v11, v2, v1

    .line 86
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 87
    :cond_11
    sget v1, Lk0/nt;->a:I

    const/16 v3, -0x56

    const/16 v12, 0x25

    const/16 v13, 0x33

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v1, v4, [B

    aput-byte v13, v1, v11

    aput-byte v8, v1, v9

    .line 88
    aget v14, v2, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    iget-object v14, v0, Lk0/jl;->l0:[I

    iget v15, v0, Lk0/jl;->m0:I

    rem-int/2addr v15, v10

    aget v14, v14, v15

    int-to-byte v14, v14

    aput-byte v14, v1, v6

    aput-byte v12, v1, v5

    const/16 v14, 0x14

    aput-byte v14, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    aput-byte v8, v1, v9

    .line 89
    aget v15, v2, v11

    int-to-byte v15, v15

    aput-byte v15, v1, v10

    iget-object v15, v0, Lk0/jl;->l0:[I

    iget v9, v0, Lk0/jl;->m0:I

    rem-int/2addr v9, v10

    aget v9, v15, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    aput-byte v12, v1, v5

    aput-byte v14, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v4, 0x1

    aput-byte v8, v1, v4

    .line 90
    aget v2, v2, v11

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    iget-object v2, v0, Lk0/jl;->l0:[I

    iget v4, v0, Lk0/jl;->m0:I

    rem-int/2addr v4, v10

    aget v2, v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v12, v1, v5

    aput-byte v14, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    goto/16 :goto_0

    :sswitch_1
    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v9, 0x1

    aput-byte v8, v1, v9

    .line 91
    aget v9, v2, v11

    int-to-byte v9, v9

    aput-byte v9, v1, v10

    iget-object v9, v0, Lk0/jl;->l0:[I

    iget v14, v0, Lk0/jl;->m0:I

    rem-int/2addr v14, v10

    aget v9, v9, v14

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    aput-byte v12, v1, v5

    const/16 v9, 0x13

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v14, 0x1

    aput-byte v8, v1, v14

    .line 92
    aget v14, v2, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    iget-object v14, v0, Lk0/jl;->l0:[I

    iget v15, v0, Lk0/jl;->m0:I

    rem-int/2addr v15, v10

    aget v14, v14, v15

    int-to-byte v14, v14

    aput-byte v14, v1, v6

    aput-byte v12, v1, v5

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v4, 0x1

    aput-byte v8, v1, v4

    .line 93
    aget v2, v2, v11

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    iget-object v2, v0, Lk0/jl;->l0:[I

    iget v4, v0, Lk0/jl;->m0:I

    rem-int/2addr v4, v10

    aget v2, v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v12, v1, v5

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    goto/16 :goto_0

    :sswitch_2
    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v9, 0x1

    aput-byte v8, v1, v9

    .line 94
    aget v9, v2, v11

    int-to-byte v9, v9

    aput-byte v9, v1, v10

    iget-object v9, v0, Lk0/jl;->l0:[I

    iget v14, v0, Lk0/jl;->m0:I

    rem-int/2addr v14, v10

    aget v9, v9, v14

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    aput-byte v12, v1, v5

    const/16 v9, 0x12

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v14, 0x1

    aput-byte v8, v1, v14

    .line 95
    aget v14, v2, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    iget-object v14, v0, Lk0/jl;->l0:[I

    iget v15, v0, Lk0/jl;->m0:I

    rem-int/2addr v15, v10

    aget v14, v14, v15

    int-to-byte v14, v14

    aput-byte v14, v1, v6

    aput-byte v12, v1, v5

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v4, 0x1

    aput-byte v8, v1, v4

    .line 96
    aget v2, v2, v11

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    iget-object v2, v0, Lk0/jl;->l0:[I

    iget v4, v0, Lk0/jl;->m0:I

    rem-int/2addr v4, v10

    aget v2, v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v12, v1, v5

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    goto :goto_0

    :sswitch_3
    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v9, 0x1

    aput-byte v8, v1, v9

    .line 97
    aget v9, v2, v11

    int-to-byte v9, v9

    aput-byte v9, v1, v10

    iget-object v9, v0, Lk0/jl;->l0:[I

    iget v14, v0, Lk0/jl;->m0:I

    rem-int/2addr v14, v10

    aget v9, v9, v14

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    aput-byte v12, v1, v5

    const/16 v9, 0x11

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v14, 0x1

    aput-byte v8, v1, v14

    .line 98
    aget v14, v2, v11

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    iget-object v14, v0, Lk0/jl;->l0:[I

    iget v15, v0, Lk0/jl;->m0:I

    rem-int/2addr v15, v10

    aget v14, v14, v15

    int-to-byte v14, v14

    aput-byte v14, v1, v6

    aput-byte v12, v1, v5

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    new-array v1, v4, [B

    aput-byte v13, v1, v11

    const/4 v4, 0x1

    aput-byte v8, v1, v4

    .line 99
    aget v2, v2, v11

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    iget-object v2, v0, Lk0/jl;->l0:[I

    iget v4, v0, Lk0/jl;->m0:I

    rem-int/2addr v4, v10

    aget v2, v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    aput-byte v12, v1, v5

    aput-byte v9, v1, v8

    aput-byte v3, v1, v7

    invoke-static {v1}, Lk0/jl;->G3([B)V

    .line 100
    :goto_0
    iget v1, v0, Lk0/jl;->m0:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/jl;->m0:I

    .line 101
    rem-int/2addr v1, v10

    iput v1, v0, Lk0/jl;->m0:I

    :cond_12
    :goto_1
    :pswitch_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_1d
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
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
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1201c0 -> :sswitch_3
        0x1301c0 -> :sswitch_2
        0x1401c0 -> :sswitch_1
        0x1501c0 -> :sswitch_0
        0x1a01c0 -> :sswitch_3
        0x1b01c0 -> :sswitch_2
        0x2401c0 -> :sswitch_3
        0x2501c0 -> :sswitch_2
        0x2d01c0 -> :sswitch_3
        0x2e01c0 -> :sswitch_2
        0x3001c0 -> :sswitch_3
        0x3101c0 -> :sswitch_2
        0x3301c0 -> :sswitch_2
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x0
        0x99
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x99
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x0
        0x0
        0x80
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x0
        0x96
        0x2
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x0
        0x96
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public final a3(I)V
    .locals 12

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v5, 0x2

    const/16 v6, 0x93

    aput v6, v1, v5

    const/4 v7, 0x3

    aput v5, v1, v7

    const/4 v8, 0x4

    aput p1, v1, v8

    const/4 v9, 0x5

    aput v4, v1, v9

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v10, 0xc8

    .line 2
    invoke-static {v10, v11}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v2, v0, v4

    aput v6, v0, v5

    aput v5, v0, v7

    aput p1, v0, v8

    aput v2, v0, v9

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public b([B)V
    .locals 9

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

    goto/16 :goto_5

    .line 3
    :cond_1
    iget v1, p0, Lk0/jl;->c:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/jl;->c:I

    .line 5
    iput v0, p0, Lk0/jl;->d:I

    .line 6
    iput v0, p0, Lk0/jl;->e:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/jl;->b:[B

    iget v2, p0, Lk0/jl;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/jl;->c:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/jl;->c:I

    .line 9
    iget p1, p0, Lk0/jl;->e:I

    const/16 v2, 0xb

    const/16 v3, -0x56

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object v1, p0, Lk0/jl;->b:[B

    aget-byte p1, v1, p1

    if-ne p1, v3, :cond_4

    .line 11
    invoke-virtual {p0, v1, v0, v2}, Lk0/jl;->x3([BII)V

    .line 12
    iget p1, p0, Lk0/jl;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lk0/jl;->d:I

    goto :goto_0

    .line 13
    :cond_4
    iput v4, p0, Lk0/jl;->d:I

    .line 14
    :goto_0
    iput v0, p0, Lk0/jl;->e:I

    .line 15
    :cond_5
    iget p1, p0, Lk0/jl;->c:I

    add-int/lit8 p1, p1, -0x2

    :goto_1
    iget v1, p0, Lk0/jl;->d:I

    if-ge v1, p1, :cond_c

    .line 16
    iget-object v5, p0, Lk0/jl;->b:[B

    aget-byte v6, v5, v1

    const/16 v7, 0x55

    const/16 v8, 0x9

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v5, v6

    if-eq v6, v8, :cond_7

    :cond_6
    aget-byte v6, v5, v1

    const/16 v7, 0x56

    if-ne v6, v7, :cond_b

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v5, v6

    if-ne v6, v8, :cond_b

    .line 17
    :cond_7
    iget v6, p0, Lk0/jl;->e:I

    const/16 v7, 0x200

    if-le v6, v7, :cond_8

    .line 18
    iput v0, p0, Lk0/jl;->e:I

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v1, 0xa

    .line 19
    iput v6, p0, Lk0/jl;->e:I

    .line 20
    iget v7, p0, Lk0/jl;->c:I

    if-lt v6, v7, :cond_9

    sub-int/2addr v6, v1

    .line 21
    iput v6, p0, Lk0/jl;->e:I

    goto :goto_4

    .line 22
    :cond_9
    aget-byte v6, v5, v6

    if-ne v6, v3, :cond_a

    .line 23
    invoke-virtual {p0, v5, v1, v2}, Lk0/jl;->x3([BII)V

    .line 24
    iget v1, p0, Lk0/jl;->e:I

    iput v1, p0, Lk0/jl;->d:I

    goto :goto_2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 25
    iput v1, p0, Lk0/jl;->d:I

    .line 26
    :goto_2
    iput v0, p0, Lk0/jl;->e:I

    .line 27
    :cond_b
    :goto_3
    iget v1, p0, Lk0/jl;->d:I

    add-int/2addr v1, v4

    iput v1, p0, Lk0/jl;->d:I

    goto :goto_1

    :cond_c
    :goto_4
    if-eqz v1, :cond_e

    .line 28
    iget p1, p0, Lk0/jl;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/jl;->c:I

    if-lez p1, :cond_d

    .line 29
    iget-object v2, p0, Lk0/jl;->b:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :cond_d
    iput v0, p0, Lk0/jl;->d:I

    :cond_e
    :goto_5
    return-void
.end method

.method public final b3(BBLjava/lang/String;)V
    .locals 11

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    const/16 v0, 0x26

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xe3

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v2, v1, v0

    const/16 v3, 0xa1

    const/4 v4, 0x2

    aput v3, v1, v4

    const/16 v3, 0x22

    const/4 v5, 0x3

    aput v3, v1, v5

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xf

    if-le v6, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    :goto_1
    const/4 v6, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v10, 0x8

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    if-eq p2, v0, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v5, :cond_3

    if-eq p2, v3, :cond_3

    goto :goto_4

    :cond_3
    aput p2, v1, v9

    :goto_2
    if-ge v2, v7, :cond_6

    .line 3
    invoke-virtual {p3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 p2, v2, 0x1

    add-int/lit8 v0, p2, 0x7

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 4
    aput v3, v1, v0

    add-int/2addr p2, v8

    and-int/lit16 p1, p1, 0xff

    .line 5
    aput p1, v1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    aput p2, v1, v9

    .line 6
    sget p1, Lu0/b;->r3:I

    and-int/lit16 p2, p1, 0x12f

    aput p2, v1, v8

    shr-int/2addr p1, v10

    and-int/lit16 p1, p1, 0x12f

    aput p1, v1, v6

    .line 7
    sget p1, Lu0/b;->s3:I

    and-int/lit16 p2, p1, 0x12f

    aput p2, v1, v10

    shr-int/2addr p1, v10

    and-int/lit16 p1, p1, 0x12f

    const/16 p2, 0x9

    aput p1, v1, p2

    goto :goto_4

    :pswitch_2
    aput p2, v1, v9

    .line 8
    sget p1, Lw0/d;->j:I

    and-int/lit16 p2, p1, 0x12f

    aput p2, v1, v8

    shr-int/2addr p1, v10

    and-int/lit16 p1, p1, 0x12f

    aput p1, v1, v6

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xe

    if-le p1, p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_6

    .line 10
    invoke-virtual {p3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v3, v0, 0x9

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 11
    aput v4, v1, v3

    add-int/2addr v0, v10

    and-int/lit16 p1, p1, 0xff

    .line 12
    aput p1, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 13
    :cond_6
    :goto_4
    invoke-static {v1}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch -0x7f
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c3()V
    .locals 9

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 1
    sget v1, Lw0/d;->h:I

    const/high16 v2, 0x10000

    sub-int v3, v1, v2

    const-string v4, " "

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, ""

    if-eqz v3, :cond_3

    sub-int v3, v1, v2

    if-eq v7, v3, :cond_3

    sub-int/2addr v1, v2

    if-ne v6, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget v1, Lw0/d;->i:I

    div-int/lit16 v1, v1, 0x2710

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lw0/d;->i:I

    div-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    sget v2, Lw0/d;->i:I

    rem-int/lit16 v2, v2, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lw0/d;->i:I

    rem-int/lit16 v1, v1, 0x2710

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_1
    sget v2, Lw0/d;->i:I

    rem-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x64

    int-to-byte v2, v2

    aput v2, v0, v6

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    sget v2, Lw0/d;->i:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    sget v2, Lw0/d;->i:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput v2, v0, v5

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Khz"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x7e

    .line 15
    invoke-virtual {p0, v1, v7, v0}, Lk0/jl;->b3(BBLjava/lang/String;)V

    goto/16 :goto_4

    .line 16
    :cond_3
    :goto_2
    sget v1, Lw0/d;->i:I

    div-int/lit16 v1, v1, 0x2710

    if-nez v1, :cond_4

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 18
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lw0/d;->i:I

    div-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_3
    sget v2, Lw0/d;->i:I

    rem-int/lit16 v2, v2, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    int-to-byte v2, v2

    aput v2, v0, v7

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    sget v2, Lw0/d;->i:I

    rem-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x64

    int-to-byte v2, v2

    aput v2, v0, v6

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    sget v2, Lw0/d;->i:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput v2, v0, v5

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    sget v2, Lw0/d;->i:I

    rem-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Mhz"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x7f

    .line 29
    invoke-virtual {p0, v1, v7, v0}, Lk0/jl;->b3(BBLjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final d3(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-array p1, v1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x0
        0x6a
        0x2
        0x8
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x6a
        0x2
        0x8
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x0
        0x6a
        0x2
        0x8
        0x1
    .end array-data
.end method

.method public final e3(Z)V
    .locals 5

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeFlag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lk0/jl;->F:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoundChangeTo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lk0/jl;->F:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lk0/jl;->F:Z

    .line 5
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v2, 0x29

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/16 v2, 0x28

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x26

    if-eq v0, v2, :cond_3

    const/16 v2, 0x27

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    const/16 v2, 0x22

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0x19

    if-eq v0, v2, :cond_3

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-array p1, v1, [I

    .line 6
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_2
    new-array p1, v1, [I

    .line 7
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const-string v0, "ro.fyt.platform"

    const-string v2, ""

    .line 8
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "6521"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    .line 10
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_3

    .line 11
    :cond_4
    invoke-static {v4}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    goto :goto_3

    :cond_5
    const-string v2, "6316"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "6312"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const-string v2, "6315"

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "6318"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "6319"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 14
    invoke-static {v1, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_3

    .line 15
    :cond_8
    invoke-static {v1, v4}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_3

    :cond_9
    :goto_1
    const/16 v0, 0xe

    if-eqz p1, :cond_a

    .line 16
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_3

    .line 17
    :cond_a
    invoke-static {v0, v4}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_3

    :cond_b
    :goto_2
    const/16 v0, 0xd

    if-eqz p1, :cond_c

    .line 18
    invoke-static {v0, v3}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    goto :goto_3

    .line 19
    :cond_c
    invoke-static {v0, v4}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x0
        0x92
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x92
        0x1
        0x2
    .end array-data
.end method

.method public final w3()V
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

    const-string v1, "com.syu.carinfo.xp.ziyouguang.ZXVinfastLuxAirControlAct"

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

.method public x3([BII)V
    .locals 16

    .line 1
    aget-byte v0, p1, p2

    const/16 v1, 0x55

    const-string v2, "persist.fyt.temperature"

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/16 v5, 0x50

    const/16 v6, 0x10

    const/16 v7, 0xf

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x56

    if-eq v0, v1, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, p2, 0x2

    .line 3
    aget-byte v2, p1, v1

    and-int/2addr v2, v10

    const/16 v13, 0x28

    if-ne v2, v6, :cond_1

    new-array v0, v12, [I

    aput v4, v0, v11

    .line 4
    invoke-static {v13, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 5
    :cond_1
    aget-byte v2, p1, v1

    and-int/2addr v2, v10

    if-ne v2, v5, :cond_2

    new-array v0, v12, [I

    aput v3, v0, v11

    .line 6
    invoke-static {v13, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    if-ne v0, v12, :cond_3

    new-array v0, v12, [I

    .line 7
    aget-byte v1, p1, v1

    and-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x122

    aput v1, v0, v11

    invoke-static {v13, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_3
    new-array v0, v12, [I

    .line 8
    aget-byte v1, p1, v1

    and-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x5

    aput v1, v0, v11

    invoke-static {v13, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    const/16 v0, 0x2c

    new-array v1, v12, [I

    add-int/lit8 v2, p2, 0x4

    .line 9
    aget-byte v3, p1, v2

    shr-int/2addr v3, v11

    and-int/2addr v3, v7

    aput v3, v1, v11

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    .line 10
    aget-byte v0, p1, v2

    shr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v7

    if-eq v0, v12, :cond_6

    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_4

    move v0, v11

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v11

    move v1, v12

    goto :goto_2

    :cond_5
    move v0, v12

    goto :goto_1

    :cond_6
    move v1, v11

    move v0, v12

    :goto_2
    const/16 v2, 0x2e

    new-array v3, v12, [I

    aput v0, v3, v11

    .line 11
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2f

    new-array v2, v12, [I

    aput v1, v2, v11

    .line 12
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2b

    new-array v1, v12, [I

    add-int/lit8 v2, p2, 0x6

    .line 13
    aget-byte v2, p1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v12

    aput v2, v1, v11

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 14
    :cond_7
    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, p2, 0x2

    .line 15
    aget-byte v2, p1, v1

    and-int/2addr v2, v10

    add-int/lit8 v13, p2, 0x3

    .line 16
    aget-byte v14, p1, v13

    and-int/2addr v14, v10

    const-string v15, "persist.fyt.reversetemp"

    .line 17
    invoke-static {v15, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 18
    aget-byte v2, p1, v13

    and-int/2addr v2, v10

    .line 19
    aget-byte v1, p1, v1

    and-int/lit16 v14, v1, 0xff

    :cond_8
    const/16 v1, 0x1b

    if-ne v2, v6, :cond_9

    new-array v2, v12, [I

    aput v4, v2, v11

    .line 20
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    if-ne v2, v5, :cond_a

    new-array v2, v12, [I

    aput v3, v2, v11

    .line 21
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    if-ne v0, v12, :cond_b

    new-array v13, v12, [I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit16 v2, v2, 0x122

    aput v2, v13, v11

    .line 22
    invoke-static {v1, v13}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v13, v12, [I

    mul-int/lit8 v2, v2, 0x5

    aput v2, v13, v11

    .line 23
    invoke-static {v1, v13}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v1, 0x1c

    if-ne v14, v6, :cond_c

    new-array v2, v12, [I

    aput v4, v2, v11

    .line 24
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    if-ne v14, v5, :cond_d

    new-array v2, v12, [I

    aput v3, v2, v11

    .line 25
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    if-ne v0, v12, :cond_e

    new-array v2, v12, [I

    mul-int/lit8 v14, v14, 0xa

    add-int/lit16 v14, v14, 0x122

    aput v14, v2, v11

    .line 26
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    new-array v2, v12, [I

    mul-int/lit8 v14, v14, 0x5

    aput v14, v2, v11

    .line 27
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v1, p2, 0x4

    .line 28
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/2addr v2, v7

    packed-switch v2, :pswitch_data_0

    move v2, v11

    :goto_5
    move v3, v2

    :goto_6
    move v4, v3

    goto :goto_7

    :pswitch_0
    move v2, v12

    goto :goto_5

    :pswitch_1
    move v3, v11

    move v4, v3

    move v2, v12

    goto :goto_7

    :pswitch_2
    move v4, v11

    move v2, v12

    move v3, v2

    goto :goto_7

    :pswitch_3
    move v3, v11

    move v2, v12

    move v4, v2

    goto :goto_7

    :pswitch_4
    move v2, v11

    move v3, v2

    move v4, v12

    goto :goto_7

    :pswitch_5
    move v2, v11

    move v3, v12

    goto :goto_6

    :pswitch_6
    move v2, v11

    move v4, v2

    move v3, v12

    :goto_7
    new-array v5, v12, [I

    aput v2, v5, v11

    const/16 v2, 0x12

    .line 29
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v13, v12, [I

    aput v3, v13, v11

    .line 30
    invoke-static {v5, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v5, v12, [I

    aput v4, v5, v11

    .line 31
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v4, v12, [I

    .line 32
    aget-byte v1, p1, v1

    shr-int/2addr v1, v11

    and-int/2addr v1, v7

    aput v1, v4, v11

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x5

    .line 33
    aget-byte v5, p1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1f

    new-array v3, v12, [I

    .line 34
    aget-byte v5, p1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v3, v12, [I

    .line 35
    aget-byte v5, p1, v4

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x20

    new-array v3, v12, [I

    .line 36
    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x6

    .line 37
    aget-byte v5, p1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v3, v12, [I

    .line 38
    aget-byte v5, p1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x3e

    new-array v3, v12, [I

    .line 39
    aget-byte v5, p1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v3, v12, [I

    .line 40
    aget-byte v5, p1, v4

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v3, v12, [I

    .line 41
    aget-byte v5, p1, v4

    shr-int/lit8 v5, v5, 0x5

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    .line 42
    aget-byte v3, p1, v4

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v12

    aput v3, v1, v11

    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v12, [I

    .line 43
    aget-byte v3, p1, v4

    shr-int/lit8 v3, v3, 0x7

    and-int/2addr v3, v12

    aput v3, v1, v11

    invoke-static {v7, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v3, v12, [I

    add-int/lit8 v4, p2, 0x7

    .line 44
    aget-byte v5, p1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v3, v12, [I

    .line 45
    aget-byte v5, p1, v4

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x42

    new-array v3, v12, [I

    .line 46
    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v12

    aput v4, v3, v11

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v1, p2, 0x9

    .line 47
    aget-byte v1, p1, v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_11

    if-ne v1, v10, :cond_f

    goto :goto_9

    :cond_f
    if-nez v0, :cond_10

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x258

    goto :goto_8

    :cond_10
    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    const/high16 v0, 0x10000000

    or-int/2addr v0, v1

    and-int/lit8 v1, v0, -0x1

    .line 48
    :goto_8
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto :goto_a

    .line 49
    :cond_11
    :goto_9
    invoke-static {v11}, Lu0/d;->A3(I)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7d

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jl;->t0:I

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    aput v2, v1, v0

    const/16 v0, 0x70

    const/4 v3, 0x2

    aput v0, v1, v3

    const/4 v0, 0x3

    aput v3, v1, v0

    const/4 v0, 0x4

    const/16 v3, 0x9

    aput v3, v1, v0

    const/4 v0, 0x5

    aput p1, v1, v0

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jl;->t0:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final z3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x7b

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/jl;->r0:I

    .line 3
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/jl;->r0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/jl;->g0:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
