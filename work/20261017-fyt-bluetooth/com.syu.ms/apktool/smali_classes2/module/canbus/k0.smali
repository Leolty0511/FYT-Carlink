.class public Lmodule/canbus/k0;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/k0$y;,
        Lmodule/canbus/k0$x;
    }
.end annotation


# static fields
.field public static final g0:[I

.field public static final h0:[I

.field public static i0:I

.field public static j0:I

.field public static k0:[I

.field public static l0:I

.field public static m0:I

.field public static n0:I

.field public static o0:I

.field public static p0:I

.field public static q0:I

.field public static r0:I

.field public static final s0:[I

.field public static final t0:[I

.field public static final u0:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/k0$x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public final L:Ljava/lang/Runnable;

.field public M:B

.field public N:Ljava/lang/Runnable;

.field public O:Ljava/lang/Runnable;

.field public P:Ljava/lang/Runnable;

.field public Q:Ljava/lang/Runnable;

.field public R:Ljava/lang/Runnable;

.field public S:Ljava/lang/Runnable;

.field public T:Ljava/lang/Runnable;

.field public U:Ljava/lang/Runnable;

.field public V:Ljava/lang/Runnable;

.field public W:Ljava/lang/Runnable;

.field public X:Ljava/lang/Runnable;

.field public Y:I

.field public Z:I

.field public a0:I

.field public final b:[I

.field public b0:I

.field public c:Lo1/g0;

.field public c0:Z

.field public final d:I

.field public d0:I

.field public final e:I

.field public e0:Ljava/lang/Runnable;

.field public f:I

.field public f0:I

.field public g:I

.field public h:I

.field public i:[[I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Z

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:F

.field public u:I

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;

.field public z:Lmodule/canbus/k0$y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lmodule/canbus/k0;->g0:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lmodule/canbus/k0;->h0:[I

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/k0;->k0:[I

    const/4 v0, 0x0

    .line 4
    sput v0, Lmodule/canbus/k0;->l0:I

    .line 5
    sput v0, Lmodule/canbus/k0;->m0:I

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/k0;->s0:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_2

    sput-object v0, Lmodule/canbus/k0;->t0:[I

    .line 8
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/k0;->u0:Lo1/f;

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

    :array_2
    .array-data 4
        0x0
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
        0x12
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lmodule/canbus/k0;->b:[I

    .line 3
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lmodule/canbus/k0;->d:I

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lmodule/canbus/k0;->e:I

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lmodule/canbus/k0;->f:I

    .line 7
    iput v3, p0, Lmodule/canbus/k0;->h:I

    const/16 v4, 0x18

    new-array v4, v4, [[I

    new-array v5, v2, [I

    .line 8
    fill-array-data v5, :array_1

    aput-object v5, v4, v3

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v4, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    const/4 v5, 0x3

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    const/4 v5, 0x5

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    const/4 v5, 0x6

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    const/4 v5, 0x7

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    const/16 v5, 0x8

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    const/16 v5, 0x9

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    const/16 v5, 0xa

    aput-object v1, v4, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    const/16 v6, 0xb

    aput-object v1, v4, v6

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v4, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_e

    const/16 v1, 0xd

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_f

    const/16 v1, 0xe

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_10

    const/16 v1, 0xf

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x10

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x11

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x12

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x13

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_15

    const/16 v1, 0x14

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_16

    const/16 v1, 0x15

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_17

    const/16 v1, 0x16

    aput-object v0, v4, v1

    new-array v0, v2, [I

    fill-array-data v0, :array_18

    const/16 v1, 0x17

    aput-object v0, v4, v1

    iput-object v4, p0, Lmodule/canbus/k0;->i:[[I

    .line 9
    iput v3, p0, Lmodule/canbus/k0;->j:I

    .line 10
    new-instance v0, Lmodule/canbus/k0$k;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$k;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->k:Ljava/lang/Runnable;

    .line 11
    iput v3, p0, Lmodule/canbus/k0;->l:I

    .line 12
    new-instance v0, Lmodule/canbus/k0$p;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$p;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v0, Lmodule/canbus/k0$q;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$q;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lmodule/canbus/k0$r;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$r;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->o:Ljava/lang/Runnable;

    .line 15
    iput-boolean v3, p0, Lmodule/canbus/k0;->p:Z

    .line 16
    new-instance v0, Lmodule/canbus/k0$s;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$s;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->q:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lmodule/canbus/k0$t;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$t;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->r:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lmodule/canbus/k0$u;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$u;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->s:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lmodule/canbus/k0;->t:F

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Lmodule/canbus/k0;->u:I

    .line 21
    iput v0, p0, Lmodule/canbus/k0;->v:I

    .line 22
    new-instance v1, Lmodule/canbus/k0$v;

    invoke-direct {v1, p0}, Lmodule/canbus/k0$v;-><init>(Lmodule/canbus/k0;)V

    iput-object v1, p0, Lmodule/canbus/k0;->w:Ljava/lang/Runnable;

    .line 23
    new-instance v1, Lmodule/canbus/k0$w;

    invoke-direct {v1, p0}, Lmodule/canbus/k0$w;-><init>(Lmodule/canbus/k0;)V

    iput-object v1, p0, Lmodule/canbus/k0;->x:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lmodule/canbus/k0$a;

    invoke-direct {v1, p0}, Lmodule/canbus/k0$a;-><init>(Lmodule/canbus/k0;)V

    iput-object v1, p0, Lmodule/canbus/k0;->y:Ljava/lang/Runnable;

    const-string v1, ""

    .line 25
    iput-object v1, p0, Lmodule/canbus/k0;->A:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lmodule/canbus/k0;->B:Ljava/lang/String;

    .line 27
    iput v3, p0, Lmodule/canbus/k0;->C:I

    .line 28
    iput v3, p0, Lmodule/canbus/k0;->D:I

    .line 29
    iput v3, p0, Lmodule/canbus/k0;->E:I

    .line 30
    iput v3, p0, Lmodule/canbus/k0;->F:I

    .line 31
    iput v3, p0, Lmodule/canbus/k0;->G:I

    .line 32
    iput v3, p0, Lmodule/canbus/k0;->H:I

    .line 33
    iput v3, p0, Lmodule/canbus/k0;->I:I

    .line 34
    iput v3, p0, Lmodule/canbus/k0;->J:I

    .line 35
    iput v0, p0, Lmodule/canbus/k0;->K:I

    .line 36
    new-instance v0, Lmodule/canbus/k0$b;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$b;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->L:Ljava/lang/Runnable;

    .line 37
    iput-byte v5, p0, Lmodule/canbus/k0;->M:B

    .line 38
    new-instance v0, Lmodule/canbus/k0$c;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$c;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->N:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lmodule/canbus/k0$d;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$d;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->O:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lmodule/canbus/k0$e;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$e;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->P:Ljava/lang/Runnable;

    .line 41
    new-instance v0, Lmodule/canbus/k0$f;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$f;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->Q:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lmodule/canbus/k0$g;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$g;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->R:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lmodule/canbus/k0$h;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$h;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->S:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lmodule/canbus/k0$i;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$i;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->T:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lmodule/canbus/k0$j;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$j;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->U:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lmodule/canbus/k0$l;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$l;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->V:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lmodule/canbus/k0$m;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$m;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->W:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lmodule/canbus/k0$n;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$n;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->X:Ljava/lang/Runnable;

    .line 49
    iput v3, p0, Lmodule/canbus/k0;->Y:I

    .line 50
    iput v3, p0, Lmodule/canbus/k0;->Z:I

    .line 51
    iput v3, p0, Lmodule/canbus/k0;->a0:I

    .line 52
    iput v3, p0, Lmodule/canbus/k0;->b0:I

    .line 53
    iput-boolean v3, p0, Lmodule/canbus/k0;->c0:Z

    const/16 v0, 0x64

    .line 54
    iput v0, p0, Lmodule/canbus/k0;->d0:I

    .line 55
    new-instance v0, Lmodule/canbus/k0$o;

    invoke-direct {v0, p0}, Lmodule/canbus/k0$o;-><init>(Lmodule/canbus/k0;)V

    iput-object v0, p0, Lmodule/canbus/k0;->e0:Ljava/lang/Runnable;

    .line 56
    iput v3, p0, Lmodule/canbus/k0;->f0:I

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
        0xb
        0xf
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x9
    .end array-data

    :array_b
    .array-data 4
        0x13
        0x22
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x23
    .end array-data

    :array_d
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_e
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x18
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x19
        0xf
    .end array-data

    :array_11
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_12
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_13
    .array-data 4
        0x86
        0xc
    .end array-data

    :array_14
    .array-data 4
        0x91
        0x19
    .end array-data

    :array_15
    .array-data 4
        0x92
        0x3
    .end array-data

    :array_16
    .array-data 4
        0x93
        0x4
    .end array-data

    :array_17
    .array-data 4
        0x94
        0x44
    .end array-data

    :array_18
    .array-data 4
        0x95
        0x43
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/k0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/k0;->v:I

    return p0
.end method

.method public static synthetic B3(Lmodule/canbus/k0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/k0;->v:I

    return p1
.end method

.method public static synthetic C3(Lmodule/canbus/k0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/k0;->u:I

    return p0
.end method

.method public static synthetic D3(Lmodule/canbus/k0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/k0;->u:I

    return p1
.end method

.method public static synthetic E3(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/k0;->S3()V

    return-void
.end method

.method public static synthetic F3(Lmodule/canbus/k0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/k0;->d3(I)V

    return-void
.end method

.method public static synthetic G3(Lmodule/canbus/k0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/k0;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic H3(Lmodule/canbus/k0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/k0;->O:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static I3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/k0;->u0:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/k0$x;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/k0$x;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic e3(Lmodule/canbus/k0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/k0;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lmodule/canbus/k0;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lmodule/canbus/k0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/k0;->O3(I)V

    return-void
.end method

.method public static synthetic h3(Lmodule/canbus/k0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/k0;->c3(I)V

    return-void
.end method

.method public static synthetic i3(Lmodule/canbus/k0;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/k0;->L3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic j3(Lmodule/canbus/k0;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/k0;->J3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic k3(Lmodule/canbus/k0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/k0;->T3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l3(Lmodule/canbus/k0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/k0;->d0:I

    return p0
.end method

.method public static synthetic m3(Lmodule/canbus/k0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/k0;->f0:I

    return p0
.end method

.method public static synthetic n3(Lmodule/canbus/k0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/k0;->f0:I

    return p1
.end method

.method public static synthetic o3(Lmodule/canbus/k0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/k0;->f0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/k0;->f0:I

    return v0
.end method

.method public static synthetic p3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/k0;->n0:I

    return p0
.end method

.method public static synthetic q3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/k0;->s0:[I

    return-object v0
.end method

.method public static synthetic r3(Lmodule/canbus/k0;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/k0;->K3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic s3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k0;->o0:I

    return v0
.end method

.method public static synthetic t3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k0;->q0:I

    return v0
.end method

.method public static synthetic u3(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/k0;->Q3()V

    return-void
.end method

.method public static synthetic v3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k0;->p0:I

    return v0
.end method

.method public static synthetic w3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/k0;->r0:I

    return v0
.end method

.method public static synthetic x3(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/k0;->N3()V

    return-void
.end method

.method public static synthetic y3(Lmodule/canbus/k0;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/k0;->t:F

    return p0
.end method

.method public static synthetic z3(Lmodule/canbus/k0;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/k0;->t:F

    return p1
.end method


# virtual methods
.method public final J3(BLjava/lang/String;)V
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
    if-ge v2, v1, :cond_2

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    shl-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x5

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

.method public final K3(BLjava/lang/String;)V
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

.method public final L3(BLjava/lang/String;)V
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

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final M3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/k0;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk0/lt;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/k0;->R2([I)V

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

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/k0;->r0:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/k0;->I3(II)V
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

    if-eqz v0, :cond_3d

    .line 1
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

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

    const/4 v6, -0x1

    const/16 v8, 0x44

    const/16 v9, 0x38

    const/16 v10, 0x37

    const/16 v11, 0x2a

    const/16 v12, 0x29

    const/16 v14, 0xb

    const/16 v1, 0xa

    const/4 v15, 0x3

    const/4 v13, 0x5

    if-eq v4, v5, :cond_22

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_22

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_22

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_22

    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eq v3, v12, :cond_20

    if-eq v3, v11, :cond_1e

    const/16 v4, 0x20

    const/16 v5, 0x12

    if-eq v3, v10, :cond_1b

    if-eq v3, v9, :cond_18

    const/16 v4, 0x43

    if-eq v3, v4, :cond_15

    if-eq v3, v8, :cond_9

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    aget v0, v0, v7

    if-ne v0, v6, :cond_2

    new-array v0, v13, [I

    .line 6
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_2
    new-array v0, v13, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    aget v1, v0, v7

    if-ne v1, v7, :cond_3

    new-array v0, v13, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 10
    :cond_3
    aget v0, v0, v7

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 11
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 12
    :pswitch_2
    aget v0, v0, v7

    if-eqz v0, :cond_4

    new-array v0, v13, [I

    .line 13
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_4
    new-array v0, v13, [I

    .line 14
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 15
    :pswitch_3
    aget v0, v0, v7

    if-eqz v0, :cond_5

    new-array v0, v13, [I

    .line 16
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_5
    new-array v0, v13, [I

    .line 17
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 18
    :pswitch_4
    aget v0, v0, v7

    if-eqz v0, :cond_6

    new-array v0, v13, [I

    .line 19
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_6
    new-array v0, v13, [I

    .line 20
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 21
    :pswitch_5
    aget v0, v0, v7

    if-eqz v0, :cond_7

    .line 22
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 23
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 24
    :cond_7
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v14

    if-ne v0, v7, :cond_3d

    new-array v0, v13, [I

    .line 25
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 26
    :pswitch_6
    aget v0, v0, v7

    if-eqz v0, :cond_8

    .line 27
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-nez v0, :cond_3d

    new-array v0, v13, [I

    .line 28
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 29
    :cond_8
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v1

    if-ne v0, v7, :cond_3d

    new-array v0, v13, [I

    .line 30
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 31
    :cond_9
    aget v3, v0, v7

    if-ne v3, v7, :cond_a

    new-array v0, v13, [I

    .line 32
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 33
    :cond_a
    aget v3, v0, v7

    if-ne v3, v2, :cond_b

    new-array v0, v13, [I

    .line 34
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 35
    :cond_b
    aget v2, v0, v7

    if-ne v2, v15, :cond_c

    new-array v0, v13, [I

    .line 36
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 37
    :cond_c
    aget v2, v0, v7

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    new-array v0, v13, [I

    .line 38
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 39
    :cond_d
    aget v2, v0, v7

    if-ne v2, v13, :cond_e

    new-array v0, v13, [I

    .line 40
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 41
    :cond_e
    aget v2, v0, v7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    new-array v0, v13, [I

    .line 42
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 43
    :cond_f
    aget v2, v0, v7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_10

    new-array v0, v13, [I

    .line 44
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 45
    :cond_10
    aget v2, v0, v7

    const/16 v3, 0x8

    if-ne v2, v3, :cond_11

    new-array v0, v13, [I

    .line 46
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 47
    :cond_11
    aget v2, v0, v7

    const/16 v3, 0x9

    if-ne v2, v3, :cond_12

    new-array v0, v13, [I

    .line 48
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 49
    :cond_12
    aget v2, v0, v7

    if-ne v2, v1, :cond_13

    new-array v0, v13, [I

    .line 50
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 51
    :cond_13
    aget v1, v0, v7

    if-ne v1, v14, :cond_14

    new-array v0, v13, [I

    .line 52
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 53
    :cond_14
    aget v0, v0, v7

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3d

    new-array v0, v13, [I

    .line 54
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 55
    :cond_15
    aget v0, v0, v7

    if-eq v0, v15, :cond_17

    if-eq v0, v1, :cond_16

    goto/16 :goto_1

    :cond_16
    new-array v0, v13, [I

    .line 56
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_17
    new-array v0, v13, [I

    .line 57
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 58
    :cond_18
    aget v1, v0, v7

    if-ge v1, v5, :cond_19

    new-array v0, v13, [I

    .line 59
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 60
    :cond_19
    aget v1, v0, v7

    if-lt v1, v5, :cond_1a

    aget v1, v0, v7

    if-gt v1, v4, :cond_1a

    .line 61
    aget v0, v0, v7

    add-int/lit8 v0, v0, -0x11

    mul-int/2addr v0, v2

    sub-int/2addr v0, v7

    new-array v1, v13, [I

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

    .line 62
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 63
    :cond_1a
    aget v0, v0, v7

    if-le v0, v4, :cond_3d

    new-array v0, v13, [I

    .line 64
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 65
    :cond_1b
    aget v1, v0, v7

    if-ge v1, v5, :cond_1c

    new-array v0, v13, [I

    .line 66
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 67
    :cond_1c
    aget v1, v0, v7

    if-lt v1, v5, :cond_1d

    aget v1, v0, v7

    if-gt v1, v4, :cond_1d

    .line 68
    aget v0, v0, v7

    add-int/lit8 v0, v0, -0x11

    mul-int/2addr v0, v2

    sub-int/2addr v0, v7

    new-array v1, v13, [I

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

    .line 69
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 70
    :cond_1d
    aget v0, v0, v7

    if-le v0, v4, :cond_3d

    new-array v0, v13, [I

    .line 71
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 72
    :cond_1e
    aget v0, v0, v7

    if-eqz v0, :cond_1f

    new-array v0, v13, [I

    .line 73
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1f
    new-array v0, v13, [I

    .line 74
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 75
    :cond_20
    aget v0, v0, v7

    if-eqz v0, :cond_21

    new-array v0, v13, [I

    .line 76
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_21
    new-array v0, v13, [I

    .line 77
    fill-array-data v0, :array_23

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_22
    :goto_0
    const/16 v4, 0x21

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x22

    if-eq v3, v4, :cond_39

    if-eq v3, v12, :cond_37

    if-eq v3, v11, :cond_35

    const/16 v4, 0x7d

    const/16 v5, -0x11

    if-eq v3, v10, :cond_34

    if-eq v3, v9, :cond_33

    if-eq v3, v8, :cond_27

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 78
    :pswitch_7
    aget v0, v0, v7

    if-ne v0, v6, :cond_23

    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 79
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_23
    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 80
    fill-array-data v0, :array_25

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_8
    const/4 v1, 0x6

    .line 81
    aget v2, v0, v7

    if-ne v2, v7, :cond_24

    new-array v0, v1, [I

    .line 82
    fill-array-data v0, :array_26

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 83
    :cond_24
    aget v0, v0, v7

    if-nez v0, :cond_3d

    new-array v0, v1, [I

    .line 84
    fill-array-data v0, :array_27

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_9
    const/4 v1, 0x6

    .line 85
    aget v0, v0, v7

    if-eqz v0, :cond_25

    new-array v0, v1, [I

    .line 86
    fill-array-data v0, :array_28

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_25
    new-array v0, v1, [I

    .line 87
    fill-array-data v0, :array_29

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_a
    const/4 v1, 0x6

    .line 88
    aget v0, v0, v7

    if-eqz v0, :cond_26

    new-array v0, v1, [I

    .line 89
    fill-array-data v0, :array_2a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_26
    new-array v0, v1, [I

    .line 90
    fill-array-data v0, :array_2b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 91
    :cond_27
    aget v3, v0, v7

    if-ne v3, v7, :cond_28

    const/4 v3, 0x7

    new-array v0, v3, [I

    .line 92
    fill-array-data v0, :array_2c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_28
    const/4 v3, 0x7

    .line 93
    aget v4, v0, v7

    if-ne v4, v2, :cond_29

    new-array v0, v3, [I

    .line 94
    fill-array-data v0, :array_2d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 95
    :cond_29
    aget v2, v0, v7

    if-ne v2, v15, :cond_2a

    new-array v0, v3, [I

    .line 96
    fill-array-data v0, :array_2e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 97
    :cond_2a
    aget v2, v0, v7

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2b

    new-array v0, v3, [I

    .line 98
    fill-array-data v0, :array_2f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 99
    :cond_2b
    aget v2, v0, v7

    if-ne v2, v13, :cond_2c

    new-array v0, v3, [I

    .line 100
    fill-array-data v0, :array_30

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 101
    :cond_2c
    aget v2, v0, v7

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2d

    new-array v0, v3, [I

    .line 102
    fill-array-data v0, :array_31

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 103
    :cond_2d
    aget v2, v0, v7

    if-ne v2, v3, :cond_2e

    new-array v0, v3, [I

    .line 104
    fill-array-data v0, :array_32

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 105
    :cond_2e
    aget v2, v0, v7

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2f

    new-array v0, v3, [I

    .line 106
    fill-array-data v0, :array_33

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 107
    :cond_2f
    aget v2, v0, v7

    const/16 v3, 0x9

    if-ne v2, v3, :cond_30

    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 108
    fill-array-data v0, :array_34

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_30
    const/4 v2, 0x6

    .line 109
    aget v3, v0, v7

    if-ne v3, v1, :cond_31

    new-array v0, v2, [I

    .line 110
    fill-array-data v0, :array_35

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 111
    :cond_31
    aget v1, v0, v7

    if-ne v1, v14, :cond_32

    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 112
    fill-array-data v0, :array_36

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_32
    const/4 v1, 0x7

    .line 113
    aget v0, v0, v7

    const/16 v2, 0xc

    if-ne v0, v2, :cond_3d

    new-array v0, v1, [I

    .line 114
    fill-array-data v0, :array_37

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_33
    const/4 v1, 0x7

    new-array v1, v1, [I

    const/16 v3, 0xe3

    const/4 v6, 0x0

    aput v3, v1, v6

    aput v5, v1, v7

    const/4 v3, 0x4

    aput v3, v1, v2

    aput v4, v1, v15

    const/16 v2, 0x45

    aput v2, v1, v3

    aput v7, v1, v13

    .line 115
    aget v0, v0, v7

    const/4 v2, 0x6

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_34
    const/4 v1, 0x7

    const/4 v3, 0x4

    new-array v1, v1, [I

    const/16 v6, 0xe3

    const/4 v8, 0x0

    aput v6, v1, v8

    aput v5, v1, v7

    aput v3, v1, v2

    aput v4, v1, v15

    const/16 v2, 0x45

    aput v2, v1, v3

    aput v8, v1, v13

    .line 116
    aget v0, v0, v7

    const/4 v2, 0x6

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 117
    :cond_35
    aget v0, v0, v7

    if-eqz v0, :cond_36

    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 118
    fill-array-data v0, :array_38

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_36
    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 119
    fill-array-data v0, :array_39

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_37
    const/4 v1, 0x7

    .line 120
    aget v0, v0, v7

    if-eqz v0, :cond_38

    new-array v0, v1, [I

    .line 121
    fill-array-data v0, :array_3a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_38
    new-array v0, v1, [I

    .line 122
    fill-array-data v0, :array_3b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 123
    :cond_39
    aget v0, v0, v7

    if-eqz v0, :cond_3a

    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 124
    fill-array-data v0, :array_3c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3a
    const/4 v1, 0x6

    new-array v0, v1, [I

    .line 125
    fill-array-data v0, :array_3d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3b
    const/4 v1, 0x6

    .line 126
    aget v0, v0, v7

    if-eqz v0, :cond_3c

    new-array v0, v1, [I

    .line 127
    fill-array-data v0, :array_3e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3c
    new-array v0, v1, [I

    .line 128
    fill-array-data v0, :array_3f

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_3d
    :goto_1
    return-void

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
    .packed-switch 0x24
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
        0x87
        0x2
        0x50
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        0x87
        0x2
        0x50
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x79
        0x2
        0xe
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x79
        0x2
        0xe
        0x1f
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        -0x79
        0x2
        0xc
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        -0x79
        0x2
        0xc
        0x1f
    .end array-data

    :array_20
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x1
    .end array-data

    :array_21
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x0
    .end array-data

    :array_22
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x1
    .end array-data

    :array_23
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x0
    .end array-data

    :array_24
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x80
    .end array-data

    :array_25
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x44
        0x81
    .end array-data

    :array_26
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x0
    .end array-data

    :array_27
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x42
        0x1
    .end array-data

    :array_28
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x1
    .end array-data

    :array_29
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x48
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x1
    .end array-data

    :array_2b
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x47
        0x0
    .end array-data

    :array_2c
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x2
        0xb
    .end array-data

    :array_2e
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x0
        0xb
    .end array-data

    :array_30
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0x1
    .end array-data

    :array_31
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x3
        0xb
    .end array-data

    :array_32
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0x1
    .end array-data

    :array_33
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x1
        0xb
    .end array-data

    :array_34
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x0
    .end array-data

    :array_35
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x1
        0x1
    .end array-data

    :array_36
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0x1
    .end array-data

    :array_37
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x2
        0x10
        0xb
    .end array-data

    :array_38
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x80
    .end array-data

    :array_39
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x1
        0x81
    .end array-data

    :array_3a
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x80
    .end array-data

    :array_3b
    .array-data 4
        0xe3
        -0x11
        0x4
        0x7d
        0x45
        0x0
        0x81
    .end array-data

    :array_3c
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x41
        0x0
    .end array-data

    :array_3e
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0xe3
        -0x11
        0x3
        0x7d
        0x40
        0x0
    .end array-data
.end method

.method public final O3(I)V
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
    sput p1, Lmodule/canbus/k0;->l0:I

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
    if-ne p1, v1, :cond_5

    new-array p1, v2, [I

    .line 5
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    .line 6
    :cond_5
    :goto_1
    sget p1, Lk0/nt;->c:I

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_6

    const/16 v1, 0x40

    if-eq p1, v1, :cond_6

    const/16 p1, 0x3f5

    new-array v1, v3, [I

    .line 7
    sget v2, Lmodule/canbus/k0;->l0:I

    aput v2, v1, v0

    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 8
    iget-object p1, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/k0;->l0:I

    if-eq p1, v0, :cond_6

    .line 9
    iget-object p1, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_6
    return-void

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

.method public final P3(II)V
    .locals 4

    .line 1
    sput p1, Lmodule/canbus/k0;->l0:I

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
    iget-object p1, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lmodule/canbus/k0;->l0:I

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized Q3()V
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
    sget v0, Lmodule/canbus/k0;->q0:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/k0;->I3(II)V
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
    sget-object p1, Lmodule/canbus/k0;->t0:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/k0;->q0:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/k0;->r0:I

    :cond_0
    return-void
.end method

.method public final R3(I)V
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
    sput p1, Lmodule/canbus/k0;->m0:I

    const/16 v2, 0xb0

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 2
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/k0;->m0:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lk0/mt;->g:I

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const/16 v4, 0x28

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v5, p0, Lmodule/canbus/k0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v5, p0, Lmodule/canbus/k0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v5, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v5, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v5, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v5, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget v0, Lk0/nt;->c:I

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 15
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lmodule/canbus/k0;->b3()V

    .line 16
    :cond_1
    :goto_0
    sget v0, Lk0/nt;->c:I

    const/16 v5, 0x10

    if-eq v0, v5, :cond_2

    const/16 v5, 0x11

    if-eq v0, v5, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    iget-object v5, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v5, Lk0/mt;->q:I

    :goto_1
    const/16 v5, 0x17

    const/16 v6, 0x18

    if-eq v0, v5, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 19
    iput v2, v0, Lk0/mt;->e:I

    .line 20
    iput v2, v0, Lk0/mt;->f:I

    .line 21
    iput v3, v0, Lk0/mt;->g:I

    goto/16 :goto_2

    .line 22
    :pswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 23
    iput v2, v0, Lk0/mt;->e:I

    .line 24
    iput v2, v0, Lk0/mt;->f:I

    .line 25
    iput v3, v0, Lk0/mt;->g:I

    .line 26
    iput v3, v0, Lk0/mt;->b:I

    .line 27
    iput v3, v0, Lk0/mt;->c:I

    .line 28
    iput v2, v0, Lk0/mt;->d:I

    .line 29
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p0}, Lmodule/canbus/k0;->init()V

    .line 31
    iget-object v0, p0, Lmodule/canbus/k0;->e0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {p0}, Lmodule/canbus/k0;->M3()V

    .line 33
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 35
    iput v2, v0, Lk0/mt;->e:I

    .line 36
    iput v2, v0, Lk0/mt;->f:I

    .line 37
    iput v2, v0, Lk0/mt;->g:I

    goto/16 :goto_2

    .line 38
    :pswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 39
    iput v2, v0, Lk0/mt;->e:I

    .line 40
    iput v2, v0, Lk0/mt;->f:I

    .line 41
    iput v2, v0, Lk0/mt;->k:I

    goto/16 :goto_2

    .line 42
    :pswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 43
    iput v2, v0, Lk0/mt;->e:I

    .line 44
    iput v2, v0, Lk0/mt;->f:I

    .line 45
    iput v2, v0, Lk0/mt;->k:I

    .line 46
    iput v2, v0, Lk0/mt;->i:I

    goto/16 :goto_2

    .line 47
    :pswitch_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 48
    iput v2, v0, Lk0/mt;->e:I

    .line 49
    iput v2, v0, Lk0/mt;->f:I

    .line 50
    iput v3, v0, Lk0/mt;->g:I

    .line 51
    iput v3, v0, Lk0/mt;->b:I

    .line 52
    iput v3, v0, Lk0/mt;->c:I

    .line 53
    iput v3, v0, Lk0/mt;->d:I

    goto/16 :goto_2

    .line 54
    :pswitch_6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 55
    iput v2, v0, Lk0/mt;->e:I

    .line 56
    iput v2, v0, Lk0/mt;->f:I

    .line 57
    iput v3, v0, Lk0/mt;->g:I

    .line 58
    iput v2, v0, Lk0/mt;->b:I

    .line 59
    iput v2, v0, Lk0/mt;->c:I

    .line 60
    iput v2, v0, Lk0/mt;->d:I

    .line 61
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-virtual {p0}, Lmodule/canbus/k0;->init()V

    .line 63
    iget-object v0, p0, Lmodule/canbus/k0;->e0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {p0}, Lmodule/canbus/k0;->M3()V

    .line 65
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 66
    :pswitch_7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 67
    iput v2, v0, Lk0/mt;->e:I

    goto :goto_2

    .line 68
    :pswitch_8
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 69
    iput v2, v0, Lk0/mt;->e:I

    .line 70
    iput v3, v0, Lk0/mt;->f:I

    .line 71
    iput v3, v0, Lk0/mt;->g:I

    .line 72
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 73
    :cond_3
    :pswitch_9
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 74
    iput v2, v0, Lk0/mt;->e:I

    .line 75
    iput v2, v0, Lk0/mt;->f:I

    .line 76
    iput v2, v0, Lk0/mt;->g:I

    .line 77
    new-instance v0, Lmodule/canbus/k0$y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmodule/canbus/k0$y;-><init>(Lmodule/canbus/k0;Lmodule/canbus/k0$k;)V

    iput-object v0, p0, Lmodule/canbus/k0;->z:Lmodule/canbus/k0$y;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v4, p0, Lmodule/canbus/k0;->z:Lmodule/canbus/k0$y;

    invoke-virtual {v1, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    .line 81
    :cond_4
    :pswitch_a
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 82
    iput v2, v0, Lk0/mt;->e:I

    .line 83
    iput v2, v0, Lk0/mt;->f:I

    .line 84
    iput v3, v0, Lk0/mt;->g:I

    goto :goto_2

    .line 85
    :cond_5
    :pswitch_b
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 86
    iput v2, v0, Lk0/mt;->e:I

    .line 87
    iput v2, v0, Lk0/mt;->f:I

    .line 88
    iput v2, v0, Lk0/mt;->g:I

    .line 89
    :cond_6
    :goto_2
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x14

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_7

    const/16 v1, 0x25

    if-eq v0, v1, :cond_7

    const/16 v1, 0x26

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_5

    .line 90
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v1, Lk0/mt;->i:I

    goto :goto_3

    .line 91
    :cond_7
    :pswitch_c
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->i:I

    :goto_3
    if-eq v0, v6, :cond_8

    const/16 v1, 0x21

    if-eq v0, v1, :cond_8

    .line 92
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v3, v1, Lk0/mt;->j:I

    goto :goto_4

    .line 93
    :cond_8
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v1, Lk0/mt;->j:I

    :goto_4
    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    .line 94
    iget-object v0, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 95
    iget-object v0, p0, Lmodule/canbus/k0;->X:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/k0;->R3(I)V

    .line 97
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 98
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 99
    sget-object v0, Lu0/c;->q:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 100
    sget-object v0, Lu0/c;->w:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 101
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 102
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 103
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 104
    :cond_9
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    packed-switch v0, :pswitch_data_8

    goto :goto_5

    .line 105
    :pswitch_d
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 106
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 107
    sget-object v0, Lh0/d;->l:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 108
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_5

    .line 109
    :cond_a
    :pswitch_e
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_5

    .line 110
    :cond_b
    :pswitch_f
    iget-object v0, p0, Lmodule/canbus/k0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->y(Ljava/lang/Runnable;)V

    .line 111
    :goto_5
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 112
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_2
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x6
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_f
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x31
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
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

.method public final declared-synchronized S3()V
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
    sget v0, Lmodule/canbus/k0;->n0:I

    const/16 v1, 0x9

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/k0;->I3(II)V
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

.method public final T3(Ljava/lang/String;)V
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

.method public U2([BII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x16

    const v4, 0xff00

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x29

    const/4 v9, 0x3

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x40

    if-eq v2, v3, :cond_29

    const/16 v3, 0x70

    const/4 v10, 0x6

    if-eq v2, v3, :cond_22

    const/16 v3, 0x71

    if-eq v2, v3, :cond_21

    const/16 v3, 0x12

    const/16 v11, 0xa

    const/16 v12, 0x10

    const/16 v13, 0xb

    const/4 v14, 0x5

    const/4 v15, 0x4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    const/high16 v3, 0xff0000

    if-eq v2, v8, :cond_3

    if-eq v2, v5, :cond_0

    goto/16 :goto_d

    :cond_0
    const/16 v2, 0x9f

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0x3

    .line 3
    aget-byte v10, v1, v10

    shl-int/2addr v10, v12

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x4

    aget-byte v11, v1, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0x6

    .line 4
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0x8

    .line 5
    aget-byte v10, v1, v10

    shl-int/2addr v10, v12

    and-int/2addr v10, v3

    add-int/lit8 v11, p2, 0x9

    aget-byte v11, v1, v11

    shl-int/lit8 v11, v11, 0x8

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    add-int/lit8 v11, p2, 0xa

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0xb

    .line 6
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0xc

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0xd

    .line 7
    aget-byte v10, v1, v10

    shl-int/2addr v10, v12

    and-int/2addr v3, v10

    add-int/lit8 v10, p2, 0xe

    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    or-int/2addr v3, v10

    add-int/lit8 v10, p2, 0xf

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v3, v10

    aput v3, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x10

    .line 8
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x12

    .line 9
    aget-byte v2, v1, v2

    const/16 v3, 0x99

    new-array v4, v8, [I

    and-int/lit8 v5, v2, 0x3

    aput v5, v4, v7

    .line 10
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9a

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v9

    aput v5, v4, v7

    .line 11
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9b

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v9

    aput v5, v4, v7

    .line 12
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9c

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 13
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9d

    new-array v4, v8, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 14
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x13

    .line 15
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-gez v1, :cond_1

    move v13, v7

    goto :goto_0

    :cond_1
    if-le v1, v13, :cond_2

    goto :goto_0

    :cond_2
    move v13, v1

    :goto_0
    const/16 v1, 0x9e

    new-array v2, v8, [I

    .line 16
    iget-object v3, v0, Lmodule/canbus/k0;->b:[I

    aget v3, v3, v13

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :cond_3
    const/16 v2, 0x93

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0x3

    .line 17
    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0x4

    .line 18
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0x6

    .line 19
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x7

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0x8

    .line 20
    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x9

    aget-byte v11, v1, v11

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v5, v8, [I

    add-int/lit8 v10, p2, 0xa

    .line 21
    aget-byte v10, v1, v10

    shl-int/2addr v10, v12

    and-int/2addr v3, v10

    add-int/lit8 v10, p2, 0xb

    aget-byte v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v4

    or-int/2addr v3, v10

    add-int/lit8 v10, p2, 0xc

    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    or-int/2addr v3, v10

    aput v3, v5, v7

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xd

    .line 22
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xf

    .line 23
    aget-byte v2, v1, v2

    const/16 v3, 0x99

    new-array v4, v8, [I

    and-int/lit8 v5, v2, 0x3

    aput v5, v4, v7

    .line 24
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9a

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v9

    aput v5, v4, v7

    .line 25
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9b

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v9

    aput v5, v4, v7

    .line 26
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9c

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 27
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x9d

    new-array v4, v8, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 28
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x10

    .line 29
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    if-gez v1, :cond_4

    move v13, v7

    goto :goto_1

    :cond_4
    if-le v1, v13, :cond_5

    goto :goto_1

    :cond_5
    move v13, v1

    :goto_1
    const/16 v1, 0x9e

    new-array v2, v8, [I

    .line 30
    iget-object v3, v0, Lmodule/canbus/k0;->b:[I

    aget v3, v3, v13

    aput v3, v2, v7

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_1
    const/16 v2, 0x62

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 31
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    .line 32
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    .line 33
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 34
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v8, [I

    .line 35
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/lit8 v6, v6, 0x7

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v8, [I

    .line 36
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    .line 37
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 38
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v8, [I

    .line 39
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    .line 40
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    .line 41
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    .line 42
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 43
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    .line 44
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    .line 45
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v8, [I

    .line 46
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    .line 47
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 48
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x7

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 49
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 50
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    .line 51
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    .line 52
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 53
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    .line 54
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    .line 55
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 56
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    .line 57
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    .line 58
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    .line 59
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    .line 60
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    .line 61
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 62
    aget-byte v6, v1, v4

    shr-int/lit8 v6, v6, 0x7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 63
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    .line 64
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 65
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    .line 66
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    .line 67
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    .line 68
    aget-byte v6, v1, v4

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    .line 69
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 70
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    .line 71
    aget-byte v6, v1, v4

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    .line 72
    aget-byte v6, v1, v4

    shr-int/2addr v6, v15

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    .line 73
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 74
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x2

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    .line 75
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    .line 76
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 77
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    .line 78
    aget-byte v5, v1, v4

    shr-int/2addr v5, v14

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    .line 79
    aget-byte v1, v1, v4

    shr-int/2addr v1, v15

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_2
    const/16 v2, 0xa7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 80
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 81
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 82
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 83
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 84
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 85
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 86
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 87
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 88
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 89
    :pswitch_3
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 91
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 92
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 93
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 94
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 95
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 96
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 97
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 98
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 99
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 100
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, p2, 0x3

    .line 101
    aget-byte v5, v1, v4

    and-int/2addr v5, v6

    add-int/lit8 v9, p2, 0x4

    .line 102
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    add-int/lit8 v11, p2, 0x5

    .line 103
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    if-nez v3, :cond_7

    if-nez v5, :cond_7

    if-nez v10, :cond_7

    if-nez v12, :cond_7

    .line 104
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_3

    .line 105
    :cond_7
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_8

    sget v7, Ll0/c0;->h:I

    if-ne v7, v5, :cond_8

    sget v7, Ll0/c0;->i:I

    if-ne v7, v10, :cond_8

    sget v7, Ll0/c0;->j:I

    if-eq v7, v12, :cond_9

    .line 106
    :cond_8
    sget v7, Lu0/b;->o:I

    if-nez v7, :cond_9

    .line 107
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 108
    sput v15, Ll0/c0;->k:I

    .line 109
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 110
    :cond_9
    :goto_3
    sput v3, Ll0/c0;->g:I

    .line 111
    sput v5, Ll0/c0;->h:I

    .line 112
    sput v10, Ll0/c0;->i:I

    .line 113
    sput v12, Ll0/c0;->j:I

    .line 114
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 115
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 116
    aget-byte v2, v1, v9

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 117
    aget-byte v1, v1, v11

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_d

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 119
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 120
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 121
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_d

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 122
    aget-byte v2, v1, v2

    new-array v4, v8, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v8

    aput v10, v4, v7

    .line 123
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v8

    aput v10, v4, v7

    .line 124
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xc

    new-array v10, v8, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 125
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3e

    new-array v10, v8, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 126
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xd

    new-array v10, v8, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 127
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v10, v8, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v8

    aput v11, v10, v7

    .line 128
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    new-array v4, v8, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 129
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2a

    new-array v10, v8, [I

    aput v2, v10, v7

    .line 130
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 131
    aget-byte v2, v1, v2

    new-array v4, v8, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v8

    aput v10, v4, v7

    .line 132
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v8, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v8

    aput v10, v4, v7

    .line 133
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v8, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v8

    aput v10, v4, v7

    .line 134
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x15

    new-array v4, v8, [I

    and-int/lit8 v2, v2, 0xf

    aput v2, v4, v7

    .line 135
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 136
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, -0x3

    const/4 v4, -0x1

    const/16 v10, 0x1c

    const/16 v11, 0x1b

    if-nez v2, :cond_e

    add-int/lit8 v2, p2, 0x4

    .line 137
    aget-byte v2, v1, v2

    if-eq v2, v4, :cond_b

    if-eqz v2, :cond_a

    new-array v12, v8, [I

    and-int/2addr v2, v6

    aput v2, v12, v7

    .line 138
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    new-array v2, v8, [I

    const/4 v12, -0x2

    aput v12, v2, v7

    .line 139
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 140
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0x5

    .line 141
    aget-byte v2, v1, v2

    if-eq v2, v4, :cond_d

    if-eqz v2, :cond_c

    new-array v3, v8, [I

    and-int/2addr v2, v6

    aput v2, v3, v7

    .line 142
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_c
    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 143
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_d
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 144
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_e
    add-int/lit8 v2, p2, 0x5

    .line 145
    aget-byte v2, v1, v2

    if-eq v2, v4, :cond_10

    if-eqz v2, :cond_f

    new-array v12, v8, [I

    and-int/2addr v2, v6

    aput v2, v12, v7

    .line 146
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    new-array v2, v8, [I

    const/4 v12, -0x2

    aput v12, v2, v7

    .line 147
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_10
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 148
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_5
    add-int/lit8 v2, p2, 0x4

    .line 149
    aget-byte v2, v1, v2

    if-eq v2, v4, :cond_12

    if-eqz v2, :cond_11

    new-array v3, v8, [I

    and-int/2addr v2, v6

    aput v2, v3, v7

    .line 150
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_11
    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 151
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    new-array v2, v8, [I

    aput v3, v2, v7

    .line 152
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_6
    add-int/lit8 v2, p2, 0x6

    .line 153
    aget-byte v2, v1, v2

    const/16 v3, 0x41

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x7

    and-int/2addr v6, v8

    aput v6, v4, v7

    .line 154
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x0

    and-int/2addr v6, v8

    aput v6, v4, v7

    .line 155
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v4, v8, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 156
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 157
    aget-byte v2, v1, v2

    const/16 v3, 0x16

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x2

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 158
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x17

    new-array v4, v8, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v8

    aput v5, v4, v7

    .line 159
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x18

    new-array v4, v8, [I

    and-int/2addr v2, v8

    aput v2, v4, v7

    .line 160
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 161
    aget-byte v1, v1, v2

    const/16 v2, 0x1f

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v9

    aput v4, v3, v7

    .line 162
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v9

    aput v4, v3, v7

    .line 163
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v9

    aput v4, v3, v7

    .line 164
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    and-int/2addr v1, v9

    aput v1, v3, v7

    .line 165
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 166
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 167
    aget-byte v1, v1, v4

    and-int/2addr v2, v6

    .line 168
    iput v2, v0, Lmodule/canbus/k0;->h:I

    move v2, v7

    .line 169
    :goto_7
    iget-object v4, v0, Lmodule/canbus/k0;->i:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_14

    .line 170
    iget v5, v0, Lmodule/canbus/k0;->h:I

    aget-object v12, v4, v2

    aget v12, v12, v7

    if-ne v5, v12, :cond_13

    if-eqz v5, :cond_14

    .line 171
    iput v2, v0, Lmodule/canbus/k0;->g:I

    goto :goto_8

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 172
    :cond_14
    :goto_8
    iget v5, v0, Lmodule/canbus/k0;->h:I

    if-eq v5, v11, :cond_1d

    const/16 v9, 0x96

    if-eq v5, v9, :cond_17

    and-int/2addr v1, v6

    if-ne v1, v8, :cond_15

    .line 173
    array-length v1, v4

    if-ge v2, v1, :cond_2f

    .line 174
    aget-object v1, v4, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_15
    if-nez v1, :cond_2f

    .line 175
    iget v1, v0, Lmodule/canbus/k0;->g:I

    array-length v2, v4

    if-ge v1, v2, :cond_16

    if-eq v1, v6, :cond_16

    .line 176
    aget-object v1, v4, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 177
    :cond_16
    iput v6, v0, Lmodule/canbus/k0;->g:I

    goto/16 :goto_d

    :cond_17
    and-int/2addr v1, v6

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x41

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x45

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x22

    if-eq v1, v2, :cond_19

    const/16 v2, 0x23

    if-eq v1, v2, :cond_18

    goto/16 :goto_d

    .line 178
    :cond_18
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    .line 179
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 180
    :cond_19
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_d

    .line 181
    :cond_1a
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_d

    .line 182
    :cond_1b
    invoke-static {}, Lo1/u;->x0()V

    const/16 v1, 0x4a

    .line 183
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 184
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 185
    :cond_1c
    invoke-static {}, Lo1/u;->x0()V

    const/16 v1, 0x4b

    .line 186
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 187
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_1d
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_2f

    .line 188
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v1

    invoke-virtual {v1}, Lplugins/ZLink;->d0()Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "sys.carlink.type"

    invoke-static {v1, v7}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1e

    goto :goto_9

    .line 189
    :cond_1e
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_1f

    if-eq v1, v15, :cond_1f

    if-eq v1, v14, :cond_1f

    .line 190
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    .line 191
    invoke-static {v10, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    :cond_1f
    const/16 v1, 0x1a

    .line 192
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 193
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_d

    .line 194
    :cond_20
    :goto_9
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v10}, Lc/e;->c(I)Z

    goto/16 :goto_d

    :cond_21
    const/16 v2, 0x408

    new-array v3, v8, [I

    add-int/lit8 v8, p2, 0x3

    .line 195
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x2

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_d

    .line 196
    :cond_22
    sget v2, Lmodule/canbus/k0;->m0:I

    if-ne v2, v8, :cond_27

    .line 197
    iget v2, v0, Lmodule/canbus/k0;->Y:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v8

    if-eq v2, v4, :cond_27

    .line 198
    aget-byte v2, v1, v3

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v8

    iput v2, v0, Lmodule/canbus/k0;->Y:I

    if-ne v2, v8, :cond_24

    .line 199
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 200
    invoke-static {}, Lk0/qt;->t()V

    :cond_23
    const/16 v2, 0x14

    .line 201
    iput v2, v0, Lmodule/canbus/k0;->l:I

    .line 202
    iget-object v2, v0, Lmodule/canbus/k0;->m:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 203
    :cond_24
    iget v2, v0, Lmodule/canbus/k0;->l:I

    if-lez v2, :cond_25

    .line 204
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    iget-object v3, v0, Lmodule/canbus/k0;->k:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 205
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    iget-object v3, v0, Lmodule/canbus/k0;->k:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-static {v2, v3, v4, v5}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_a

    .line 206
    :cond_25
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 207
    invoke-static {}, Lk0/qt;->f()V

    .line 208
    :cond_26
    iget-object v2, v0, Lmodule/canbus/k0;->m:Ljava/lang/Runnable;

    invoke-static {v2}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_27
    :goto_a
    add-int/lit8 v2, p2, 0x3

    .line 209
    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v8

    .line 210
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_2f

    if-ne v1, v8, :cond_2f

    .line 211
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 212
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_d

    .line 213
    :cond_28
    sget-object v1, La/b;->O:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 214
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_d

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 215
    aget-byte v3, v1, v2

    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_2a

    move v4, v7

    goto :goto_b

    :cond_2a
    move v4, v8

    .line 216
    :goto_b
    sput v4, Lmodule/canbus/k0;->i0:I

    .line 217
    sget v5, Lmodule/canbus/k0;->j0:I

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    if-eq v5, v3, :cond_2c

    .line 218
    sput v3, Lmodule/canbus/k0;->j0:I

    if-eqz v4, :cond_2b

    if-ne v3, v8, :cond_2b

    .line 219
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto :goto_c

    .line 220
    :cond_2b
    invoke-static {v7}, Lk0/qt;->a(I)V

    .line 221
    :cond_2c
    :goto_c
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_2f

    .line 222
    aget-byte v1, v1, v2

    goto :goto_d

    :cond_2d
    add-int/lit8 v2, p2, 0x2

    .line 223
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 224
    aget-byte v1, v1, v3

    const/16 v3, 0x1200

    .line 225
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_d

    :cond_2e
    const/16 v2, 0x407

    new-array v3, v8, [I

    add-int/lit8 v8, p2, 0x3

    .line 226
    aget-byte v8, v1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v4, v8

    add-int/lit8 v5, p2, 0x2

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_2f
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/k0;->c:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lu0/c;->s:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lu0/c;->t:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->N:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, p0, Lmodule/canbus/k0;->O:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, p0, Lmodule/canbus/k0;->X:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 12
    sget-object v1, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->R:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v1, Lu0/c;->p:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v1, Lu0/c;->q:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->S:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v1, Lu0/c;->w:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->U:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->W:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->V:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    sget-object v1, Lu0/c;->x:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/k0;->Q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 19
    iget-object v1, p0, Lmodule/canbus/k0;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lmodule/canbus/k0;->e0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lmodule/canbus/k0;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->p0(Ljava/lang/Runnable;)V

    .line 22
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 23
    sget-object v0, Lh0/d;->e:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 24
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 25
    sget-object v0, Lh0/d;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/k0;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xd2

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

    const/16 v3, 0x64

    const/16 v4, -0x70

    const/16 v5, 0xe3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eq v1, v3, :cond_6

    const/16 v3, 0x3ed

    if-eq v1, v3, :cond_4

    const/16 v3, 0x405

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/16 v15, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, -0x3a

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v3, -0xd

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    .line 1
    :pswitch_0
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v12, [I

    aput v5, v1, v11

    aput v3, v1, v9

    aput v14, v1, v10

    aput v13, v1, v8

    .line 2
    aget v3, v2, v11

    aput v3, v1, v7

    aget v3, v2, v9

    aput v3, v1, v6

    aget v3, v2, v10

    aput v3, v1, v14

    aget v3, v2, v8

    aput v3, v1, v13

    aget v2, v2, v7

    aput v2, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v6, [I

    aput v5, v1, v11

    aput v3, v1, v9

    aput v10, v1, v10

    .line 4
    aget v3, v2, v11

    aput v3, v1, v8

    aget v2, v2, v9

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 5
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/k0;->a3()V

    goto/16 :goto_1

    :pswitch_3
    if-eqz v2, :cond_7

    .line 6
    array-length v1, v2

    if-lez v1, :cond_7

    new-array v1, v7, [I

    aput v5, v1, v11

    const/16 v3, -0x7e

    aput v3, v1, v9

    aput v9, v1, v10

    .line 7
    aget v2, v2, v11

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_4
    if-eqz v2, :cond_7

    .line 8
    array-length v1, v2

    if-lez v1, :cond_7

    new-array v1, v6, [I

    aput v5, v1, v11

    const/16 v3, -0x7d

    aput v3, v1, v9

    aput v10, v1, v10

    .line 9
    aget v3, v2, v11

    aput v3, v1, v8

    aget v2, v2, v9

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_5
    if-eqz v2, :cond_7

    .line 10
    array-length v1, v2

    if-lez v1, :cond_7

    new-array v1, v6, [I

    aput v5, v1, v11

    aput v4, v1, v9

    aput v10, v1, v10

    .line 11
    aget v2, v2, v11

    aput v2, v1, v8

    aput v11, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 12
    :pswitch_6
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v6, [I

    aput v5, v1, v11

    const/16 v3, -0x7c

    aput v3, v1, v9

    aput v10, v1, v10

    .line 13
    aget v3, v2, v11

    aput v3, v1, v8

    aget v2, v2, v9

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 14
    :pswitch_7
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_7

    new-array v1, v6, [I

    aput v5, v1, v11

    const/16 v3, -0x20

    aput v3, v1, v9

    aput v10, v1, v10

    .line 15
    aget v3, v2, v11

    aput v3, v1, v8

    aget v2, v2, v9

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_8
    if-eqz v2, :cond_7

    .line 16
    array-length v1, v2

    if-lez v1, :cond_7

    new-array v1, v7, [I

    aput v5, v1, v11

    const/16 v3, -0x11

    aput v3, v1, v9

    .line 17
    aget v3, v2, v11

    aput v3, v1, v10

    aget v2, v2, v9

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_9
    if-eqz v2, :cond_7

    .line 18
    array-length v1, v2

    if-lt v1, v10, :cond_7

    new-array v1, v6, [I

    aput v5, v1, v11

    aput v3, v1, v9

    aput v10, v1, v10

    .line 19
    aget v3, v2, v11

    int-to-byte v3, v3

    aput v3, v1, v8

    aget v2, v2, v9

    int-to-byte v2, v2

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_a
    if-eqz v2, :cond_7

    .line 20
    array-length v1, v2

    if-lez v1, :cond_7

    .line 21
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lmodule/canbus/k0;->R3(I)V

    goto/16 :goto_1

    :pswitch_b
    new-array v1, v6, [I

    .line 22
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_c
    if-eqz v2, :cond_7

    .line 23
    array-length v1, v2

    if-lez v1, :cond_7

    .line 24
    aget v1, v2, v11

    if-ge v1, v9, :cond_0

    .line 25
    aput v9, v2, v11

    goto :goto_0

    .line 26
    :cond_0
    aget v1, v2, v11

    const/16 v4, 0xf

    if-le v1, v4, :cond_1

    .line 27
    aput v4, v2, v11

    :cond_1
    :goto_0
    new-array v1, v6, [I

    aput v5, v1, v11

    aput v3, v1, v9

    aput v10, v1, v10

    const/16 v3, -0x3f

    aput v3, v1, v8

    .line 28
    aget v2, v2, v11

    int-to-byte v2, v2

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 29
    :cond_2
    aget v1, v2, v9

    mul-int/lit16 v1, v1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 30
    aget v3, v2, v10

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v4

    div-int/2addr v3, v4

    .line 31
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 32
    aget v4, v2, v11

    const/16 v16, -0x68

    if-nez v4, :cond_3

    new-array v2, v12, [I

    aput v5, v2, v11

    aput v16, v2, v9

    aput v14, v2, v10

    aput v9, v2, v8

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v7

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v14

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v13

    aput v11, v2, v15

    .line 33
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    .line 34
    :cond_3
    aget v2, v2, v11

    if-ne v2, v9, :cond_7

    new-array v2, v12, [I

    aput v5, v2, v11

    aput v16, v2, v9

    aput v14, v2, v10

    aput v11, v2, v8

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v7

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v6

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v14

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v13

    aput v11, v2, v15

    .line 35
    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    .line 36
    array-length v1, v2

    if-lez v1, :cond_7

    .line 37
    sget v1, Lk0/nt;->a:I

    const v3, 0xe012a

    if-ne v1, v3, :cond_5

    .line 38
    aget v1, v2, v11

    aget v2, v2, v9

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/k0;->P3(II)V

    goto :goto_1

    .line 39
    :cond_5
    aget v1, v2, v11

    invoke-virtual {v0, v1}, Lmodule/canbus/k0;->O3(I)V

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 40
    array-length v1, v2

    if-lez v1, :cond_7

    new-array v1, v6, [I

    aput v5, v1, v11

    aput v4, v1, v9

    aput v10, v1, v10

    const/16 v3, 0x33

    aput v3, v1, v8

    .line 41
    aget v2, v2, v11

    int-to-byte v2, v2

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v6, [I

    .line 42
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x96
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
    sget-object v0, Lmodule/canbus/k0;->s0:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/k0;->n0:I

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
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x3a

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0x55

    aput v4, v0, v1

    if-nez p1, :cond_0

    move v2, v3

    :cond_0
    int-to-byte p1, v2

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final d3(I)V
    .locals 7

    .line 1
    iget v0, p0, Lmodule/canbus/k0;->H:I

    if-lez v0, :cond_2

    sget-object v1, Lmodule/canbus/k0;->k0:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lmodule/canbus/k0;->C:I

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

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    new-array p1, v1, [I

    const/16 v1, 0xe3

    const/4 v3, 0x0

    aput v1, p1, v3

    const/16 v1, 0x9c

    aput v1, p1, v2

    const/4 v1, 0x2

    const/16 v4, 0x8

    aput v4, p1, v1

    const/4 v1, 0x3

    .line 4
    sget-object v5, Lmodule/canbus/k0;->k0:[I

    iget v6, p0, Lmodule/canbus/k0;->H:I

    aget v5, v5, v6

    aput v5, p1, v1

    const/4 v1, 0x4

    iget v5, p0, Lmodule/canbus/k0;->G:I

    and-int/lit16 v5, v5, 0xff

    aput v5, p1, v1

    const/4 v1, 0x5

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, p1, v1

    const/4 v1, 0x6

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v1

    const/4 v0, 0x7

    aput v2, p1, v0

    aput v3, p1, v4

    const/16 v0, 0x9

    aput v3, p1, v0

    const/16 v0, 0xa

    aput v3, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x9c
        0x8
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
    sget-object v0, Lmodule/canbus/k0;->u0:Lo1/f;

    new-instance v1, Lmodule/canbus/k0$x;

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/k0$x;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/k0$x;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lmodule/canbus/k0$x;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/k0$x;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v3}, Lmodule/canbus/k0$x;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method
