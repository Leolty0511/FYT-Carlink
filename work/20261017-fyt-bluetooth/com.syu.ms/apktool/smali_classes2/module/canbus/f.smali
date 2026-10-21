.class public Lmodule/canbus/f;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/f$p;,
        Lmodule/canbus/f$o;
    }
.end annotation


# static fields
.field public static n0:I = 0x0

.field public static o0:I = 0x3

.field public static p0:I = 0x3

.field public static q0:I

.field public static r0:[I

.field public static s0:I

.field public static t0:I

.field public static final u0:[I

.field public static final v0:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/f$o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lmodule/canbus/f$p;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:Ljava/lang/Runnable;

.field public O:Ljava/lang/Runnable;

.field public P:I

.field public Q:I

.field public R:I

.field public S:Ljava/lang/Runnable;

.field public T:Ljava/lang/Runnable;

.field public U:Ljava/lang/Runnable;

.field public V:I

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/Runnable;

.field public Z:Ljava/lang/Runnable;

.field public a0:Z

.field public b:I

.field public b0:I

.field public c:I

.field public c0:Z

.field public d:I

.field public d0:Ljava/lang/String;

.field public e:I

.field public e0:[I

.field public f:[[I

.field public f0:I

.field public g:Z

.field public final g0:[B

.field public h:I

.field public h0:I

.field public i:I

.field public i0:I

.field public j:I

.field public j0:I

.field public k:Ljava/lang/Runnable;

.field public k0:I

.field public l:I

.field public l0:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public m0:I

.field public n:Ljava/lang/Runnable;

.field public o:Lo1/g0;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public t:Z

.field public u:I

.field public v:Z

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/Runnable;

.field public z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/f;->r0:[I

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/f;->u0:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/f;->v0:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
        0x9
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x8
        0x9
        0xa
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
        0x25
        0x26
        0x27
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmodule/canbus/f;->c:I

    .line 3
    iput v0, p0, Lmodule/canbus/f;->d:I

    .line 4
    iput v0, p0, Lmodule/canbus/f;->e:I

    const/16 v1, 0x46

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 5
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

    const/4 v7, 0x6

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v7, 0x7

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v7, 0x8

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v7, 0x9

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v7, 0xa

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v7, 0xb

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v7, 0xc

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v7, 0xd

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v7, 0xe

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v7, 0xf

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v7, 0x10

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v7, 0x11

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v7, 0x12

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v7, 0x13

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v7, 0x14

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v7, 0x15

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v7, 0x16

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v7, 0x17

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v7, 0x18

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v7, 0x19

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v7, 0x1a

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v7, 0x1b

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v7, 0x1c

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v7, 0x1d

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v7, 0x1e

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v7, 0x1f

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v7, 0x20

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    const/16 v8, 0x21

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v8, 0x22

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v8, 0x23

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v8, 0x24

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v8, 0x25

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const/16 v8, 0x26

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v8, 0x27

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v8, 0x28

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v8, 0x29

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v8, 0x2a

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_2b

    const/16 v8, 0x2b

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_2c

    const/16 v8, 0x2c

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_2d

    const/16 v8, 0x2d

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v8, 0x2e

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_2f

    const/16 v8, 0x2f

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    const/16 v8, 0x30

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    const/16 v8, 0x31

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_32

    const/16 v8, 0x32

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    const/16 v8, 0x33

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    const/16 v8, 0x34

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_35

    const/16 v8, 0x35

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    const/16 v8, 0x36

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    const/16 v8, 0x37

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_38

    const/16 v8, 0x38

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_39

    const/16 v8, 0x39

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_3a

    const/16 v8, 0x3a

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_3b

    const/16 v8, 0x3b

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_3c

    const/16 v8, 0x3c

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_3d

    const/16 v8, 0x3d

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_3e

    const/16 v8, 0x3e

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_3f

    const/16 v8, 0x3f

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_40

    const/16 v8, 0x40

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_41

    const/16 v8, 0x41

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    const/16 v8, 0x42

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_43

    const/16 v8, 0x43

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_44

    const/16 v8, 0x44

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_45

    const/16 v8, 0x45

    aput-object v3, v1, v8

    iput-object v1, p0, Lmodule/canbus/f;->f:[[I

    .line 6
    iput-boolean v0, p0, Lmodule/canbus/f;->g:Z

    .line 7
    iput v0, p0, Lmodule/canbus/f;->h:I

    .line 8
    iput v0, p0, Lmodule/canbus/f;->i:I

    .line 9
    iput v0, p0, Lmodule/canbus/f;->j:I

    .line 10
    new-instance v1, Lmodule/canbus/f$f;

    invoke-direct {v1, p0}, Lmodule/canbus/f$f;-><init>(Lmodule/canbus/f;)V

    iput-object v1, p0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    .line 11
    iput v0, p0, Lmodule/canbus/f;->l:I

    .line 12
    new-instance v1, Lmodule/canbus/f$g;

    invoke-direct {v1, p0}, Lmodule/canbus/f$g;-><init>(Lmodule/canbus/f;)V

    iput-object v1, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    .line 13
    new-instance v1, Lmodule/canbus/f$h;

    invoke-direct {v1, p0}, Lmodule/canbus/f$h;-><init>(Lmodule/canbus/f;)V

    iput-object v1, p0, Lmodule/canbus/f;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v7}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    .line 15
    iput v4, p0, Lmodule/canbus/f;->p:I

    .line 16
    iput v2, p0, Lmodule/canbus/f;->q:I

    .line 17
    iput v5, p0, Lmodule/canbus/f;->r:I

    .line 18
    iput v6, p0, Lmodule/canbus/f;->s:I

    .line 19
    iput-boolean v0, p0, Lmodule/canbus/f;->t:Z

    .line 20
    iput v0, p0, Lmodule/canbus/f;->u:I

    .line 21
    iput-boolean v0, p0, Lmodule/canbus/f;->v:Z

    .line 22
    new-instance v1, Lmodule/canbus/f$i;

    invoke-direct {v1, p0}, Lmodule/canbus/f$i;-><init>(Lmodule/canbus/f;)V

    iput-object v1, p0, Lmodule/canbus/f;->w:Ljava/lang/Runnable;

    .line 23
    iput v0, p0, Lmodule/canbus/f;->x:I

    .line 24
    new-instance v1, Lmodule/canbus/f$j;

    invoke-direct {v1, p0}, Lmodule/canbus/f$j;-><init>(Lmodule/canbus/f;)V

    iput-object v1, p0, Lmodule/canbus/f;->y:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Lmodule/canbus/f$k;

    invoke-direct {v1, p0}, Lmodule/canbus/f$k;-><init>(Lmodule/canbus/f;)V

    iput-object v1, p0, Lmodule/canbus/f;->z:Ljava/lang/Runnable;

    const-string v1, ""

    .line 26
    iput-object v1, p0, Lmodule/canbus/f;->B:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lmodule/canbus/f;->C:Ljava/lang/String;

    .line 28
    iput v0, p0, Lmodule/canbus/f;->D:I

    .line 29
    iput v0, p0, Lmodule/canbus/f;->E:I

    .line 30
    iput v0, p0, Lmodule/canbus/f;->F:I

    .line 31
    iput v0, p0, Lmodule/canbus/f;->G:I

    .line 32
    iput v0, p0, Lmodule/canbus/f;->H:I

    .line 33
    iput v0, p0, Lmodule/canbus/f;->I:I

    .line 34
    iput v0, p0, Lmodule/canbus/f;->J:I

    .line 35
    iput v0, p0, Lmodule/canbus/f;->K:I

    const/16 v3, 0xff

    .line 36
    iput v3, p0, Lmodule/canbus/f;->L:I

    .line 37
    iput v3, p0, Lmodule/canbus/f;->M:I

    .line 38
    new-instance v3, Lmodule/canbus/f$l;

    invoke-direct {v3, p0}, Lmodule/canbus/f$l;-><init>(Lmodule/canbus/f;)V

    iput-object v3, p0, Lmodule/canbus/f;->N:Ljava/lang/Runnable;

    .line 39
    new-instance v3, Lmodule/canbus/f$m;

    invoke-direct {v3, p0}, Lmodule/canbus/f$m;-><init>(Lmodule/canbus/f;)V

    iput-object v3, p0, Lmodule/canbus/f;->O:Ljava/lang/Runnable;

    const/4 v3, -0x1

    .line 40
    iput v3, p0, Lmodule/canbus/f;->P:I

    .line 41
    iput v3, p0, Lmodule/canbus/f;->Q:I

    .line 42
    iput v3, p0, Lmodule/canbus/f;->R:I

    .line 43
    new-instance v4, Lmodule/canbus/f$n;

    invoke-direct {v4, p0}, Lmodule/canbus/f$n;-><init>(Lmodule/canbus/f;)V

    iput-object v4, p0, Lmodule/canbus/f;->S:Ljava/lang/Runnable;

    .line 44
    new-instance v4, Lmodule/canbus/f$a;

    invoke-direct {v4, p0}, Lmodule/canbus/f$a;-><init>(Lmodule/canbus/f;)V

    iput-object v4, p0, Lmodule/canbus/f;->T:Ljava/lang/Runnable;

    .line 45
    new-instance v4, Lmodule/canbus/f$b;

    invoke-direct {v4, p0}, Lmodule/canbus/f$b;-><init>(Lmodule/canbus/f;)V

    iput-object v4, p0, Lmodule/canbus/f;->U:Ljava/lang/Runnable;

    .line 46
    iput v0, p0, Lmodule/canbus/f;->V:I

    .line 47
    iput-object v1, p0, Lmodule/canbus/f;->W:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lmodule/canbus/f;->X:Ljava/lang/String;

    .line 49
    new-instance v4, Lmodule/canbus/f$c;

    invoke-direct {v4, p0}, Lmodule/canbus/f$c;-><init>(Lmodule/canbus/f;)V

    iput-object v4, p0, Lmodule/canbus/f;->Y:Ljava/lang/Runnable;

    .line 50
    new-instance v4, Lmodule/canbus/f$d;

    invoke-direct {v4, p0}, Lmodule/canbus/f$d;-><init>(Lmodule/canbus/f;)V

    iput-object v4, p0, Lmodule/canbus/f;->Z:Ljava/lang/Runnable;

    .line 51
    iput-boolean v0, p0, Lmodule/canbus/f;->a0:Z

    .line 52
    iput v3, p0, Lmodule/canbus/f;->b0:I

    .line 53
    iput-boolean v0, p0, Lmodule/canbus/f;->c0:Z

    .line 54
    iput-object v1, p0, Lmodule/canbus/f;->d0:Ljava/lang/String;

    new-array v1, v2, [I

    .line 55
    fill-array-data v1, :array_46

    iput-object v1, p0, Lmodule/canbus/f;->e0:[I

    .line 56
    iput v0, p0, Lmodule/canbus/f;->f0:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 57
    iput-object v1, p0, Lmodule/canbus/f;->g0:[B

    .line 58
    iput v0, p0, Lmodule/canbus/f;->h0:I

    .line 59
    iput v0, p0, Lmodule/canbus/f;->i0:I

    .line 60
    iput v0, p0, Lmodule/canbus/f;->j0:I

    const/16 v1, 0x64

    .line 61
    iput v1, p0, Lmodule/canbus/f;->k0:I

    .line 62
    new-instance v1, Lmodule/canbus/f$e;

    invoke-direct {v1, p0}, Lmodule/canbus/f$e;-><init>(Lmodule/canbus/f;)V

    iput-object v1, p0, Lmodule/canbus/f;->l0:Ljava/lang/Runnable;

    .line 63
    iput v0, p0, Lmodule/canbus/f;->m0:I

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
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
        0x15
        0x6
    .end array-data

    :array_9
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x20
        0x38
    .end array-data

    :array_c
    .array-data 4
        0x21
        0x38
    .end array-data

    :array_d
    .array-data 4
        0x22
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x23
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x24
        0x4a
    .end array-data

    :array_10
    .array-data 4
        0x25
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x26
        0x4b
    .end array-data

    :array_12
    .array-data 4
        0x27
        0x28
    .end array-data

    :array_13
    .array-data 4
        0x28
        0x29
    .end array-data

    :array_14
    .array-data 4
        0x29
        0x2a
    .end array-data

    :array_15
    .array-data 4
        0x2a
        0x2b
    .end array-data

    :array_16
    .array-data 4
        0x2b
        0x2c
    .end array-data

    :array_17
    .array-data 4
        0x2c
        0x2d
    .end array-data

    :array_18
    .array-data 4
        0x2d
        0x8
    .end array-data

    :array_19
    .array-data 4
        0x2e
        0x7
    .end array-data

    :array_1a
    .array-data 4
        0x2f
        0x1e
    .end array-data

    :array_1b
    .array-data 4
        0x30
        0x1f
    .end array-data

    :array_1c
    .array-data 4
        0x31
        0x3
    .end array-data

    :array_1d
    .array-data 4
        0x32
        0x4
    .end array-data

    :array_1e
    .array-data 4
        0x33
        0xc
    .end array-data

    :array_1f
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_20
    .array-data 4
        0x41
        0x42
    .end array-data

    :array_21
    .array-data 4
        0x42
        0x40
    .end array-data

    :array_22
    .array-data 4
        0x43
        0x1
    .end array-data

    :array_23
    .array-data 4
        0x44
        0x19
    .end array-data

    :array_24
    .array-data 4
        0x45
        0x9
    .end array-data

    :array_25
    .array-data 4
        0x46
        0x51
    .end array-data

    :array_26
    .array-data 4
        0x47
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x48
        0x50
    .end array-data

    :array_28
    .array-data 4
        0x49
        0xc
    .end array-data

    :array_29
    .array-data 4
        0x4a
        0x48
    .end array-data

    :array_2a
    .array-data 4
        0x4b
        0x3a
    .end array-data

    :array_2b
    .array-data 4
        0x4c
        0xe
    .end array-data

    :array_2c
    .array-data 4
        0x4d
        0x37
    .end array-data

    :array_2d
    .array-data 4
        0x4e
        0x47
    .end array-data

    :array_2e
    .array-data 4
        0x4f
        0xc
    .end array-data

    :array_2f
    .array-data 4
        0x50
        0x26
    .end array-data

    :array_30
    .array-data 4
        0x51
        0xb
    .end array-data

    :array_31
    .array-data 4
        0x52
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x60
        0x22
    .end array-data

    :array_33
    .array-data 4
        0x61
        -0x1
    .end array-data

    :array_34
    .array-data 4
        0x62
        0x21
    .end array-data

    :array_35
    .array-data 4
        0x63
        -0x1
    .end array-data

    :array_36
    .array-data 4
        0x64
        0x23
    .end array-data

    :array_37
    .array-data 4
        0x65
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0x66
        0x20
    .end array-data

    :array_39
    .array-data 4
        0x67
        -0x1
    .end array-data

    :array_3a
    .array-data 4
        0x70
        0x1d
    .end array-data

    :array_3b
    .array-data 4
        0x71
        0x6
    .end array-data

    :array_3c
    .array-data 4
        0x72
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x73
        0x9
    .end array-data

    :array_3e
    .array-data 4
        0x74
        0x1e
    .end array-data

    :array_3f
    .array-data 4
        0x75
        0x1f
    .end array-data

    :array_40
    .array-data 4
        0x91
        0x10
    .end array-data

    :array_41
    .array-data 4
        0x92
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x93
        0x3
    .end array-data

    :array_43
    .array-data 4
        0x94
        0x25
    .end array-data

    :array_44
    .array-data 4
        0x95
        0x1c
    .end array-data

    :array_45
    .array-data 4
        0x96
        0x1b
    .end array-data

    :array_46
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f;->d0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic B3(Lmodule/canbus/f;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/f;->e4(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic C3(Lmodule/canbus/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmodule/canbus/f;->c0:Z

    return p0
.end method

.method public static synthetic D3(Lmodule/canbus/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmodule/canbus/f;->c0:Z

    return p1
.end method

.method public static synthetic E3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->k0:I

    return p0
.end method

.method public static synthetic F3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->m0:I

    return p0
.end method

.method public static synthetic G3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f;->m0:I

    return p1
.end method

.method public static synthetic H3(Lmodule/canbus/f;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/f;->m0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/f;->m0:I

    return v0
.end method

.method public static synthetic I3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f;->t0:I

    return v0
.end method

.method public static synthetic J3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/f;->t0:I

    return p0
.end method

.method public static synthetic K3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/f;->u0:[I

    return-object v0
.end method

.method public static synthetic L3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f;->s0:I

    return v0
.end method

.method public static synthetic M3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/f;->q0:I

    return v0
.end method

.method public static synthetic N3(Lmodule/canbus/f;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/f;->o:Lo1/g0;

    return-object p0
.end method

.method public static synthetic O3(Lmodule/canbus/f;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/f;->b4(I)V

    return-void
.end method

.method public static synthetic P3(Lmodule/canbus/f;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/f;->c4(I)V

    return-void
.end method

.method public static synthetic Q3(Lmodule/canbus/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/f;->i3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic R3(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f;->j3()V

    return-void
.end method

.method public static synthetic S3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->M:I

    return p0
.end method

.method public static synthetic T3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f;->M:I

    return p1
.end method

.method public static U3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/f;->v0:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/f$o;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/f$o;->a(I)V

    :cond_0
    return-void
.end method

.method public static f4([B)V
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
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
.end method

.method public static synthetic k3(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f;->a3()V

    return-void
.end method

.method public static synthetic l3(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f;->c3()V

    return-void
.end method

.method public static synthetic m3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/f;->g3(I)I

    move-result p0

    return p0
.end method

.method public static synthetic n3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->L:I

    return p0
.end method

.method public static synthetic o3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f;->L:I

    return p1
.end method

.method public static synthetic p3(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/f;->d4()V

    return-void
.end method

.method public static synthetic q3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->P:I

    return p0
.end method

.method public static synthetic r3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f;->P:I

    return p1
.end method

.method public static synthetic s3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->Q:I

    return p0
.end method

.method public static synthetic t3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f;->Q:I

    return p1
.end method

.method public static synthetic u3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->R:I

    return p0
.end method

.method public static synthetic v3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f;->R:I

    return p1
.end method

.method public static synthetic w3(Lmodule/canbus/f;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/f;->V3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic x3(Lmodule/canbus/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/f;->b0:I

    return p0
.end method

.method public static synthetic y3(Lmodule/canbus/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/f;->b0:I

    return p1
.end method

.method public static synthetic z3(Lmodule/canbus/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/f;->d0:Ljava/lang/String;

    return-object p0
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

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public O2([I)V
    .locals 14

    if-eqz p1, :cond_2d

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

    const/16 v3, 0x29

    const/16 v4, 0x9

    const/16 v5, 0xa

    if-eq v2, v3, :cond_29

    const/16 v3, 0x2a

    const/16 v7, 0xc

    const/16 v8, 0xb

    if-eq v2, v3, :cond_25

    const/16 v3, 0x40

    const/4 v9, 0x5

    const/4 v10, 0x4

    if-eq v2, v3, :cond_22

    const/16 v3, 0x44

    const/4 v11, 0x3

    const/16 v12, 0xf

    const/16 v13, 0x10

    if-eq v2, v3, :cond_14

    const/16 v3, 0xa9

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v6

    const/4 v1, -0x1

    const/16 v2, 0xa0

    if-ne p1, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, v2, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x14

    .line 7
    invoke-virtual {p0, p1}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0, v2, v0}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x15

    .line 10
    invoke-virtual {p0, p1}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_1
    aget v1, p1, v6

    if-ne v1, v6, :cond_5

    .line 12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_2d

    .line 13
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa5

    .line 14
    invoke-virtual {p0, p1, v0}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x6

    .line 15
    invoke-virtual {p0, p1}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 16
    :cond_5
    aget p1, p1, v6

    if-nez p1, :cond_2d

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v6, :cond_2d

    .line 18
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xa5

    .line 19
    invoke-virtual {p0, p1, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 20
    :cond_6
    invoke-virtual {p0, v9}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 21
    :pswitch_2
    aget p1, p1, v6

    const/16 v1, 0xa7

    const/16 v2, 0x26

    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget v0, p1, v13

    if-nez v0, :cond_7

    .line 24
    invoke-virtual {p0, v1, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 25
    :cond_7
    aget p1, p1, v2

    if-nez p1, :cond_2d

    .line 26
    invoke-virtual {p0, v10}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 27
    :cond_8
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget v3, p1, v13

    if-ne v3, v6, :cond_9

    .line 29
    invoke-virtual {p0, v1, v0}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 30
    :cond_9
    aget p1, p1, v2

    if-ne p1, v6, :cond_2d

    .line 31
    invoke-virtual {p0, v10}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 32
    :pswitch_3
    aget p1, p1, v6

    const/16 v1, 0xa6

    const/16 v2, 0x41

    if-eqz p1, :cond_b

    .line 33
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget v0, p1, v2

    if-nez v0, :cond_a

    .line 35
    invoke-virtual {p0, v1, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 36
    :cond_a
    aget p1, p1, v12

    if-nez p1, :cond_2d

    .line 37
    invoke-virtual {p0, v11}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 38
    :cond_b
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget v2, p1, v2

    if-ne v2, v6, :cond_c

    .line 40
    invoke-virtual {p0, v1, v0}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 41
    :cond_c
    aget p1, p1, v12

    if-ne p1, v6, :cond_2d

    .line 42
    invoke-virtual {p0, v11}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 43
    :pswitch_4
    aget p1, p1, v6

    const/16 v2, 0xd

    if-eqz p1, :cond_e

    .line 44
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_2d

    .line 45
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 46
    invoke-virtual {p0, v3, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 47
    :cond_d
    invoke-virtual {p0, v1}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 48
    :cond_e
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_2d

    .line 49
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 50
    invoke-virtual {p0, v3, v0}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 51
    :cond_f
    invoke-virtual {p0, v1}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 52
    :pswitch_5
    aget p1, p1, v6

    const/16 v1, 0xa4

    if-eqz p1, :cond_11

    .line 53
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-nez p1, :cond_2d

    .line 54
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 55
    invoke-virtual {p0, v1, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 56
    :cond_10
    invoke-virtual {p0, v13}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 57
    :cond_11
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-ne p1, v6, :cond_2d

    .line 58
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 59
    invoke-virtual {p0, v1, v0}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 60
    :cond_12
    invoke-virtual {p0, v13}, Lmodule/canbus/f;->e3(I)V

    goto/16 :goto_0

    .line 61
    :pswitch_6
    aget p1, p1, v6

    if-eqz p1, :cond_13

    .line 62
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_2d

    .line 63
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 64
    invoke-virtual {p0, v3, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 65
    :cond_13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_2d

    .line 66
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2d

    const/16 p1, 0xa8

    .line 67
    invoke-virtual {p0, p1, v6}, Lmodule/canbus/f;->f3(II)V

    goto/16 :goto_0

    .line 68
    :cond_14
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 69
    aget v0, p1, v6

    if-ne v0, v6, :cond_15

    new-array p1, v10, [I

    .line 70
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 71
    :cond_15
    aget v0, p1, v6

    if-ne v0, v1, :cond_16

    new-array p1, v10, [I

    .line 72
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 73
    :cond_16
    aget v0, p1, v6

    if-ne v0, v11, :cond_17

    new-array p1, v10, [I

    .line 74
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 75
    :cond_17
    aget v0, p1, v6

    if-ne v0, v10, :cond_18

    new-array p1, v10, [I

    .line 76
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 77
    :cond_18
    aget v0, p1, v6

    if-ne v0, v9, :cond_19

    new-array p1, v10, [I

    .line 78
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 79
    :cond_19
    aget v0, p1, v6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1a

    new-array p1, v10, [I

    .line 80
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 81
    :cond_1a
    aget v0, p1, v6

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    new-array p1, v10, [I

    .line 82
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 83
    :cond_1b
    aget v0, p1, v6

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    new-array p1, v10, [I

    .line 84
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 85
    :cond_1c
    aget v0, p1, v6

    if-ne v0, v4, :cond_1d

    goto/16 :goto_0

    .line 86
    :cond_1d
    aget v0, p1, v6

    if-ne v0, v5, :cond_1e

    goto/16 :goto_0

    .line 87
    :cond_1e
    aget v0, p1, v6

    if-ne v0, v8, :cond_1f

    new-array p1, v10, [I

    .line 88
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 89
    :cond_1f
    aget v0, p1, v6

    if-ne v0, v7, :cond_20

    new-array p1, v10, [I

    .line 90
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 91
    :cond_20
    aget v0, p1, v6

    if-ne v0, v12, :cond_21

    .line 92
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-ne p1, v6, :cond_2d

    new-array p1, v10, [I

    .line 93
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 94
    :cond_21
    aget p1, p1, v6

    if-ne p1, v13, :cond_2d

    .line 95
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-nez p1, :cond_2d

    new-array p1, v10, [I

    .line 96
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 97
    :cond_22
    aget p1, p1, v6

    if-eqz p1, :cond_24

    if-eq p1, v6, :cond_23

    goto :goto_0

    .line 98
    :cond_23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-nez p1, :cond_2d

    new-array p1, v10, [I

    .line 99
    fill-array-data p1, :array_c

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 100
    :cond_24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-ne p1, v6, :cond_2d

    new-array p1, v10, [I

    .line 101
    fill-array-data p1, :array_d

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 102
    :cond_25
    aget p1, p1, v6

    const/16 v1, 0xa2

    if-eqz p1, :cond_27

    .line 103
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 104
    invoke-virtual {p0, v1, v6}, Lmodule/canbus/f;->f3(II)V

    goto :goto_0

    .line 105
    :cond_26
    invoke-virtual {p0, v8}, Lmodule/canbus/f;->e3(I)V

    goto :goto_0

    .line 106
    :cond_27
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 107
    invoke-virtual {p0, v1, v0}, Lmodule/canbus/f;->f3(II)V

    goto :goto_0

    .line 108
    :cond_28
    invoke-virtual {p0, v7}, Lmodule/canbus/f;->e3(I)V

    goto :goto_0

    .line 109
    :cond_29
    aget p1, p1, v6

    const/16 v1, 0xa1

    if-eqz p1, :cond_2b

    .line 110
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 111
    invoke-virtual {p0, v1, v6}, Lmodule/canbus/f;->f3(II)V

    goto :goto_0

    .line 112
    :cond_2a
    invoke-virtual {p0, v4}, Lmodule/canbus/f;->e3(I)V

    goto :goto_0

    .line 113
    :cond_2b
    invoke-virtual {p0}, Lmodule/canbus/f;->h3()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 114
    invoke-virtual {p0, v1, v0}, Lmodule/canbus/f;->f3(II)V

    goto :goto_0

    .line 115
    :cond_2c
    invoke-virtual {p0, v5}, Lmodule/canbus/f;->e3(I)V

    :cond_2d
    :goto_0
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

    :array_0
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x6
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x5
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x8
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x7
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x1d
        0x1
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x9
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x1d
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/f;->o:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/f;->a4(I)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lmodule/canbus/f;->Y:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lmodule/canbus/f;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lmodule/canbus/f;->S:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->Z:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/f;->Z:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->o:I

    const-string v3, "com.syu.canbus"

    .line 17
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v1, v0, Lk0/mt;->e:I

    .line 19
    iput v1, v0, Lk0/mt;->f:I

    .line 20
    iput v1, v0, Lk0/mt;->g:I

    .line 21
    iput v2, v0, Lk0/mt;->b:I

    .line 22
    iput v2, v0, Lk0/mt;->c:I

    .line 23
    iput v2, v0, Lk0/mt;->d:I

    .line 24
    iput v2, v0, Lk0/mt;->i:I

    .line 25
    iput v2, v0, Lk0/mt;->h:I

    .line 26
    sget v4, Lk0/nt;->c:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v4, v1, :cond_2

    if-eq v4, v5, :cond_2

    const/4 v7, 0x3

    if-eq v4, v7, :cond_1

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    const/16 v7, 0xb

    if-eq v4, v7, :cond_2

    const/16 v7, 0xd

    if-eq v4, v7, :cond_2

    const-string v7, "AUTONAVI_STANDARD_BROADCAST_SEND"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 27
    :pswitch_0
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 28
    new-instance v0, Lmodule/canbus/f$p;

    invoke-direct {v0, p0, v6}, Lmodule/canbus/f$p;-><init>(Lmodule/canbus/f;Lmodule/canbus/f$f;)V

    iput-object v0, p0, Lmodule/canbus/f;->A:Lmodule/canbus/f$p;

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    iget-object v4, p0, Lmodule/canbus/f;->A:Lmodule/canbus/f$p;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0}, Lmodule/canbus/f;->j3()V

    .line 33
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto/16 :goto_0

    .line 34
    :pswitch_1
    iput v2, v0, Lk0/mt;->f:I

    .line 35
    iput v2, v0, Lk0/mt;->g:I

    .line 36
    iput v1, v0, Lk0/mt;->h:I

    .line 37
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 38
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 39
    new-instance v0, Lmodule/canbus/f$p;

    invoke-direct {v0, p0, v6}, Lmodule/canbus/f$p;-><init>(Lmodule/canbus/f;Lmodule/canbus/f$f;)V

    iput-object v0, p0, Lmodule/canbus/f;->A:Lmodule/canbus/f$p;

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    iget-object v4, p0, Lmodule/canbus/f;->A:Lmodule/canbus/f$p;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Lmodule/canbus/f;->j3()V

    goto :goto_0

    .line 44
    :pswitch_2
    iput v2, v0, Lk0/mt;->f:I

    .line 45
    iput v2, v0, Lk0/mt;->g:I

    .line 46
    iput v2, v0, Lk0/mt;->h:I

    .line 47
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 48
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 49
    new-instance v0, Lmodule/canbus/f$p;

    invoke-direct {v0, p0, v6}, Lmodule/canbus/f$p;-><init>(Lmodule/canbus/f;Lmodule/canbus/f$f;)V

    iput-object v0, p0, Lmodule/canbus/f;->A:Lmodule/canbus/f$p;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    iget-object v4, p0, Lmodule/canbus/f;->A:Lmodule/canbus/f$p;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lmodule/canbus/f;->j3()V

    goto :goto_0

    .line 54
    :cond_0
    iput v1, v0, Lk0/mt;->e:I

    .line 55
    iput v1, v0, Lk0/mt;->f:I

    .line 56
    iput v2, v0, Lk0/mt;->g:I

    .line 57
    iput v1, v0, Lk0/mt;->b:I

    .line 58
    iput v2, v0, Lk0/mt;->c:I

    .line 59
    iput v2, v0, Lk0/mt;->d:I

    .line 60
    iput v2, v0, Lk0/mt;->i:I

    .line 61
    iput v1, v0, Lk0/mt;->i:I

    .line 62
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 63
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {p0}, Lmodule/canbus/f;->init()V

    .line 65
    iget-object v0, p0, Lmodule/canbus/f;->l0:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {p0}, Lmodule/canbus/f;->W3()V

    goto :goto_0

    .line 67
    :cond_1
    :pswitch_3
    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 68
    :cond_2
    :pswitch_4
    iput v1, v0, Lk0/mt;->h:I

    .line 69
    :cond_3
    :goto_0
    sget v0, Lk0/nt;->c:I

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_4

    goto :goto_1

    .line 70
    :cond_4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_5

    .line 71
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v6, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 73
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        0x40
    .end array-data
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x6f

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_4d

    const/16 v3, -0x6a

    const/4 v9, 0x3

    if-eq v2, v3, :cond_4a

    const/16 v3, 0x30

    if-eq v2, v3, :cond_49

    const/16 v3, 0x38

    const/16 v13, 0x8

    if-eq v2, v3, :cond_48

    const/16 v3, 0x60

    if-eq v2, v3, :cond_47

    const/16 v3, 0x7d

    const/high16 v15, 0xff0000

    const/16 v12, 0x10

    const v17, 0xff00

    const/4 v10, 0x6

    const/4 v14, 0x7

    const/4 v4, 0x5

    const/4 v11, 0x4

    if-eq v2, v3, :cond_3c

    const/16 v3, -0x6d

    if-eq v2, v3, :cond_3b

    const/16 v3, -0x6c

    if-eq v2, v3, :cond_3a

    const/16 v3, 0x40

    if-eq v2, v3, :cond_39

    const/16 v3, 0x41

    if-eq v2, v3, :cond_36

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_18

    :pswitch_0
    const/16 v2, 0xc7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x7

    aget-byte v10, v1, v5

    and-int/2addr v10, v6

    or-int/2addr v4, v10

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v8, [I

    .line 5
    aget-byte v4, v1, v5

    shl-int/2addr v4, v13

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 6
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0xa

    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 7
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 8
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 9
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x12

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x13

    .line 10
    aget-byte v1, v1, v4

    and-int/2addr v1, v9

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    .line 11
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x9b

    .line 12
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_18

    .line 13
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/f;->h3()Z

    move-result v2

    if-eqz v2, :cond_50

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 14
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    .line 15
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    .line 16
    aget-byte v5, v1, v5

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 17
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    .line 18
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7f

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x4

    .line 19
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    .line 20
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7f

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 21
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    .line 22
    aget-byte v5, v1, v5

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x7f

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x6

    .line 23
    aget-byte v6, v1, v5

    shr-int/2addr v6, v14

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v8, [I

    .line 24
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    .line 25
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    .line 26
    aget-byte v1, v1, v5

    shr-int/2addr v1, v11

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    .line 27
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/f;->h3()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x6a4

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_18

    .line 29
    :cond_0
    iget-boolean v2, v0, Lmodule/canbus/f;->t:Z

    if-nez v2, :cond_50

    add-int/lit8 v2, p2, 0x3

    .line 30
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x1518

    invoke-static {v2, v1, v7, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_18

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 31
    aget-byte v1, v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 32
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 33
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 34
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 35
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 36
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 37
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 38
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v8

    aput v3, v2, v7

    .line 39
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    aput v1, v2, v7

    .line 40
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_5
    const/16 v2, 0x92

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 41
    aget-byte v5, v1, v4

    shr-int/2addr v5, v8

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    .line 42
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 43
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 44
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 45
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    add-int/lit8 v5, p2, 0x3

    .line 46
    aget-byte v9, v1, v5

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x4

    .line 47
    aget-byte v12, v1, v10

    and-int/2addr v12, v6

    add-int/lit8 v4, p2, 0x5

    .line 48
    aget-byte v13, v1, v4

    and-int/2addr v13, v6

    if-nez v3, :cond_2

    if-nez v9, :cond_2

    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 49
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_1

    .line 50
    :cond_2
    sget v7, Ll0/c0;->g:I

    if-ne v7, v3, :cond_3

    sget v3, Ll0/c0;->h:I

    if-ne v3, v9, :cond_3

    sget v3, Ll0/c0;->i:I

    if-ne v3, v12, :cond_3

    sget v3, Ll0/c0;->j:I

    if-eq v3, v13, :cond_4

    .line 51
    :cond_3
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_4

    .line 52
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 53
    sput v11, Ll0/c0;->k:I

    .line 54
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 55
    :cond_4
    :goto_1
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 56
    aget-byte v2, v1, v5

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 57
    aget-byte v2, v1, v10

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 58
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_18

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 59
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    invoke-static {v2}, Ll0/c0;->P0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 62
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    invoke-static {v1}, Ll0/c0;->P0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_18

    .line 63
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/f;->h3()Z

    move-result v2

    const/16 v13, 0x1b

    if-eqz v2, :cond_10

    new-array v2, v8, [I

    add-int/lit8 v15, p2, 0x2

    .line 64
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v2, v7

    const/16 v14, 0xa

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb

    new-array v14, v8, [I

    .line 65
    aget-byte v16, v1, v15

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v14, v7

    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 66
    aget-byte v14, v1, v15

    shr-int/lit8 v4, v14, 0x5

    and-int/2addr v4, v8

    aput v4, v2, v7

    const/16 v4, 0xc

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v4, v8, [I

    .line 67
    aget-byte v14, v1, v15

    shr-int/2addr v14, v11

    and-int/2addr v14, v8

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd

    new-array v4, v8, [I

    .line 68
    aget-byte v14, v1, v15

    shr-int/2addr v14, v9

    and-int/2addr v14, v8

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x3e

    new-array v4, v8, [I

    .line 69
    aget-byte v14, v1, v15

    shr-int/2addr v14, v5

    and-int/2addr v14, v8

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 70
    aget-byte v4, v1, v15

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v2, v7

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v4, v8, [I

    .line 71
    aget-byte v12, v1, v15

    shr-int/2addr v12, v7

    and-int/2addr v12, v8

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v9, :cond_5

    move v2, v7

    move v4, v2

    :goto_2
    move v12, v4

    goto :goto_3

    :cond_5
    move v4, v7

    move v2, v8

    move v12, v2

    goto :goto_3

    :cond_6
    move v2, v7

    move v4, v2

    move v12, v8

    goto :goto_3

    :cond_7
    move v2, v7

    move v4, v8

    goto :goto_2

    :cond_8
    move v2, v7

    move v12, v2

    move v4, v8

    :goto_3
    new-array v14, v8, [I

    aput v2, v14, v7

    const/16 v2, 0x12

    .line 73
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v14, v8, [I

    aput v4, v14, v7

    .line 74
    invoke-static {v2, v14}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v8, [I

    aput v12, v4, v7

    .line 75
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v8, [I

    add-int/lit8 v12, p2, 0x4

    .line 76
    aget-byte v12, v1, v12

    and-int/2addr v12, v6

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 77
    aget-byte v4, v1, v2

    and-int/2addr v4, v6

    add-int/lit8 v12, p2, 0x6

    .line 78
    aget-byte v14, v1, v12

    and-int/2addr v14, v6

    const-string v15, "persist.fyt.reversetemp"

    .line 79
    invoke-static {v15, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 80
    aget-byte v4, v1, v12

    and-int/2addr v4, v6

    .line 81
    aget-byte v2, v1, v2

    and-int/lit16 v14, v2, 0xff

    :cond_9
    if-nez v4, :cond_a

    new-array v2, v8, [I

    const/4 v4, -0x2

    aput v4, v2, v7

    .line 82
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_a
    if-ne v4, v6, :cond_b

    new-array v2, v8, [I

    const/4 v4, -0x3

    aput v4, v2, v7

    .line 83
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    const/16 v2, 0xfe

    if-ne v4, v2, :cond_c

    new-array v2, v8, [I

    aput v3, v2, v7

    .line 84
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    new-array v2, v8, [I

    aput v4, v2, v7

    .line 85
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-nez v14, :cond_d

    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_d
    if-ne v14, v6, :cond_e

    const/16 v2, 0x1c

    new-array v3, v8, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    const/16 v2, 0xfe

    if-ne v14, v2, :cond_f

    const/16 v2, 0x1c

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 88
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_f
    const/16 v2, 0x1c

    new-array v3, v8, [I

    aput v14, v3, v7

    .line 89
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    const/16 v2, 0x1d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 90
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    .line 91
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1f

    new-array v3, v8, [I

    .line 92
    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    .line 93
    aget-byte v4, v1, v4

    shr-int/2addr v4, v5

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x42

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 94
    aget-byte v4, v1, v4

    const/4 v5, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 95
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    .line 96
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 97
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    const/16 v5, 0xf

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    const/16 v4, 0x9

    add-int/lit8 v4, p2, 0x9

    .line 98
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    .line 99
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v8, [I

    .line 100
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    const/16 v4, 0xf

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 101
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    add-int/lit8 v9, p2, 0x3

    .line 102
    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    add-int/lit8 v10, p2, 0x6

    .line 103
    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    shr-int/lit8 v11, v2, 0x5

    const/4 v14, 0x7

    and-int/2addr v11, v14

    packed-switch v11, :pswitch_data_3

    move v11, v7

    :goto_6
    move v14, v11

    :goto_7
    move v15, v14

    goto :goto_8

    :pswitch_9
    move v11, v8

    goto :goto_6

    :pswitch_a
    move v15, v7

    move v11, v8

    move v14, v11

    goto :goto_8

    :pswitch_b
    move v14, v7

    move v15, v14

    move v11, v8

    goto :goto_8

    :pswitch_c
    move v14, v7

    move v11, v8

    move v15, v11

    goto :goto_8

    :pswitch_d
    move v11, v7

    move v14, v11

    move v15, v8

    goto :goto_8

    :pswitch_e
    move v11, v7

    move v14, v8

    goto :goto_7

    :pswitch_f
    move v11, v7

    move v15, v11

    move v14, v8

    :goto_8
    new-array v13, v8, [I

    aput v11, v13, v7

    const/16 v11, 0x12

    .line 104
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x13

    new-array v13, v8, [I

    aput v14, v13, v7

    .line 105
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x14

    new-array v13, v8, [I

    aput v15, v13, v7

    .line 106
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0xd

    new-array v13, v8, [I

    shr-int/lit8 v14, v2, 0x4

    and-int/2addr v14, v8

    aput v14, v13, v7

    .line 107
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v8

    if-eqz v11, :cond_11

    new-array v11, v8, [I

    aput v7, v11, v7

    const/16 v13, 0xc

    .line 108
    invoke-static {v13, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_11
    const/16 v13, 0xc

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v8

    if-eqz v11, :cond_12

    new-array v11, v8, [I

    aput v8, v11, v7

    .line 109
    invoke-static {v13, v11}, Lk0/qt;->y0(I[I)V

    :cond_12
    :goto_9
    const/16 v11, 0xb

    new-array v13, v8, [I

    shr-int/lit8 v14, v2, 0x1

    and-int/2addr v14, v8

    aput v14, v13, v7

    .line 110
    invoke-static {v11, v13}, Lk0/qt;->y0(I[I)V

    new-array v11, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v11, v7

    const/16 v2, 0xa

    .line 111
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v11, v8, [I

    shr-int/lit8 v13, v9, 0x4

    const/16 v14, 0xf

    and-int/2addr v13, v14

    aput v13, v11, v7

    .line 112
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v11, v8, [I

    shr-int/lit8 v13, v9, 0x2

    and-int/2addr v13, v8

    aput v13, v11, v7

    .line 113
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v11, v9, 0x1

    and-int/2addr v11, v8

    aput v11, v2, v7

    .line 114
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v11, v8, [I

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    aput v9, v11, v7

    .line 115
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 116
    aget-byte v9, v1, v2

    and-int/2addr v9, v6

    add-int/lit8 v4, p2, 0x5

    .line 117
    aget-byte v11, v1, v4

    and-int/2addr v11, v6

    const-string v12, "persist.fyt.reversetemp"

    .line 118
    invoke-static {v12, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 119
    aget-byte v9, v1, v4

    and-int/2addr v9, v6

    .line 120
    aget-byte v11, v1, v2

    and-int/2addr v11, v6

    :cond_13
    shr-int/lit8 v6, v9, 0x2

    and-int/lit8 v6, v6, 0x3f

    if-nez v6, :cond_14

    new-array v6, v8, [I

    aput v3, v6, v7

    const/16 v9, 0x1b

    .line 121
    invoke-static {v9, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_14
    const/16 v9, 0x1b

    const/16 v12, 0xf

    if-gt v6, v12, :cond_15

    new-array v6, v8, [I

    const/4 v12, -0x2

    aput v12, v6, v7

    .line 122
    invoke-static {v9, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_15
    const/16 v12, 0x31

    if-lt v6, v12, :cond_16

    new-array v6, v8, [I

    const/4 v12, -0x3

    aput v12, v6, v7

    .line 123
    invoke-static {v9, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_16
    new-array v12, v8, [I

    aput v6, v12, v7

    .line 124
    invoke-static {v9, v12}, Lk0/qt;->y0(I[I)V

    :goto_a
    shr-int/lit8 v5, v11, 0x2

    and-int/lit8 v5, v5, 0x3f

    if-nez v5, :cond_17

    const/16 v5, 0x1c

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 125
    invoke-static {v5, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_17
    const/16 v3, 0xf

    if-gt v5, v3, :cond_18

    const/16 v3, 0x1c

    new-array v5, v8, [I

    const/4 v6, -0x2

    aput v6, v5, v7

    .line 126
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_18
    const/16 v3, 0x31

    if-lt v5, v3, :cond_19

    const/16 v3, 0x1c

    new-array v5, v8, [I

    const/4 v6, -0x3

    aput v6, v5, v7

    .line 127
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_19
    const/16 v3, 0x1c

    new-array v6, v8, [I

    aput v5, v6, v7

    .line 128
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    :goto_b
    const/16 v3, 0x48

    new-array v5, v8, [I

    .line 129
    aget-byte v6, v1, v2

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4c

    new-array v5, v8, [I

    .line 130
    aget-byte v2, v1, v2

    shr-int/2addr v2, v7

    and-int/2addr v2, v8

    aput v2, v5, v7

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x25

    new-array v3, v8, [I

    .line 131
    aget-byte v1, v1, v4

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    if-nez v10, :cond_1a

    .line 132
    invoke-static {v7}, Lu0/d;->A3(I)V

    goto/16 :goto_18

    :cond_1a
    const/16 v1, 0x50

    if-ge v10, v1, :cond_1b

    const/16 v1, 0x190

    move v7, v8

    goto :goto_c

    :cond_1b
    const/16 v1, -0x190

    :goto_c
    if-eqz v7, :cond_1c

    rsub-int v1, v1, 0x3e8

    goto :goto_d

    :cond_1c
    add-int/lit16 v1, v1, 0x3e8

    .line 133
    :goto_d
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_18

    .line 134
    :pswitch_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_50

    add-int/lit8 v2, p2, 0x2

    .line 135
    aget-byte v2, v1, v2

    add-int/lit8 v10, p2, 0x3

    .line 136
    aget-byte v1, v1, v10

    and-int/2addr v2, v6

    .line 137
    iput v2, v0, Lmodule/canbus/f;->c:I

    move v2, v7

    .line 138
    :goto_e
    iget-object v10, v0, Lmodule/canbus/f;->f:[[I

    array-length v12, v10

    if-ge v2, v12, :cond_1e

    .line 139
    iget v12, v0, Lmodule/canbus/f;->c:I

    aget-object v10, v10, v2

    aget v10, v10, v7

    if-ne v12, v10, :cond_1d

    if-eqz v12, :cond_1e

    .line 140
    iput v2, v0, Lmodule/canbus/f;->b:I

    goto :goto_f

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 141
    :cond_1e
    :goto_f
    iget v10, v0, Lmodule/canbus/f;->d:I

    iget v12, v0, Lmodule/canbus/f;->c:I

    if-eq v10, v12, :cond_21

    if-nez v12, :cond_20

    const/16 v12, 0x9

    if-eq v10, v12, :cond_1f

    const/16 v12, 0xa

    if-eq v10, v12, :cond_1f

    const/4 v12, 0x7

    if-ne v10, v12, :cond_20

    .line 142
    :cond_1f
    iget v10, v0, Lmodule/canbus/f;->j:I

    if-lez v10, :cond_20

    .line 143
    iput v3, v0, Lmodule/canbus/f;->j:I

    .line 144
    iget-object v10, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 145
    iput-boolean v7, v0, Lmodule/canbus/f;->g:Z

    .line 146
    :cond_20
    iget v10, v0, Lmodule/canbus/f;->c:I

    iput v10, v0, Lmodule/canbus/f;->d:I

    .line 147
    :cond_21
    iget v10, v0, Lmodule/canbus/f;->c:I

    const/4 v12, 0x7

    if-eq v10, v12, :cond_32

    const/16 v12, 0x16

    if-eq v10, v12, :cond_30

    const/16 v12, 0x9

    if-eq v10, v12, :cond_2a

    const/16 v12, 0xa

    if-eq v10, v12, :cond_24

    and-int/2addr v1, v6

    if-ne v1, v8, :cond_22

    .line 148
    iget-object v1, v0, Lmodule/canbus/f;->f:[[I

    array-length v3, v1

    if-ge v2, v3, :cond_50

    .line 149
    aget-object v1, v1, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :cond_22
    if-nez v1, :cond_50

    .line 150
    iget v1, v0, Lmodule/canbus/f;->b:I

    iget-object v2, v0, Lmodule/canbus/f;->f:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_23

    if-eq v1, v6, :cond_23

    .line 151
    aget-object v1, v2, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    .line 152
    :cond_23
    iput v6, v0, Lmodule/canbus/f;->b:I

    goto/16 :goto_18

    .line 153
    :cond_24
    iget v2, v0, Lmodule/canbus/f;->i:I

    if-eq v2, v1, :cond_50

    .line 154
    iput v1, v0, Lmodule/canbus/f;->i:I

    if-ne v1, v8, :cond_25

    .line 155
    iput-boolean v7, v0, Lmodule/canbus/f;->g:Z

    .line 156
    iput v3, v0, Lmodule/canbus/f;->j:I

    .line 157
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_25
    if-ne v1, v5, :cond_26

    const/16 v1, 0x19

    .line 158
    iput v1, v0, Lmodule/canbus/f;->j:I

    .line 159
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_26
    if-nez v1, :cond_50

    .line 160
    iget-boolean v1, v0, Lmodule/canbus/f;->g:Z

    if-nez v1, :cond_29

    .line 161
    sget v1, Lh0/c;->E:I

    if-eq v1, v9, :cond_28

    if-eq v1, v11, :cond_28

    if-eq v1, v4, :cond_28

    .line 162
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x1a

    .line 163
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 164
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_27
    const/16 v1, 0x12

    .line 165
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 166
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_10

    :cond_28
    const/16 v1, 0x1a

    .line 167
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 168
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_10

    .line 169
    :cond_29
    iput-boolean v7, v0, Lmodule/canbus/f;->g:Z

    .line 170
    :goto_10
    iput v3, v0, Lmodule/canbus/f;->j:I

    .line 171
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    .line 172
    :cond_2a
    iget v2, v0, Lmodule/canbus/f;->i:I

    if-eq v2, v1, :cond_50

    .line 173
    iput v1, v0, Lmodule/canbus/f;->i:I

    if-ne v1, v8, :cond_2b

    .line 174
    iput-boolean v7, v0, Lmodule/canbus/f;->g:Z

    .line 175
    iput v3, v0, Lmodule/canbus/f;->j:I

    .line 176
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_2b
    if-ne v1, v5, :cond_2c

    const/16 v1, 0x19

    .line 177
    iput v1, v0, Lmodule/canbus/f;->j:I

    .line 178
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_2c
    if-nez v1, :cond_50

    .line 179
    iget-boolean v1, v0, Lmodule/canbus/f;->g:Z

    if-nez v1, :cond_2f

    .line 180
    sget v1, Lh0/c;->E:I

    if-eq v1, v11, :cond_2e

    .line 181
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v1, 0x12

    .line 182
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 183
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_11

    :cond_2d
    const/16 v1, 0xd

    .line 184
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 185
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_11

    :cond_2e
    const/16 v1, 0x12

    .line 186
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 187
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_11

    .line 188
    :cond_2f
    iput-boolean v7, v0, Lmodule/canbus/f;->g:Z

    .line 189
    :goto_11
    iput v3, v0, Lmodule/canbus/f;->j:I

    .line 190
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_30
    and-int/2addr v1, v6

    if-ne v1, v8, :cond_50

    .line 191
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 192
    sget v1, Lu0/b;->D:I

    if-eq v1, v8, :cond_31

    const/16 v1, 0x1d

    .line 193
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 194
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    :sswitch_0
    new-array v1, v11, [I

    .line 195
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_18

    :cond_31
    const/16 v1, 0xc

    .line 196
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 197
    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto/16 :goto_18

    .line 198
    :cond_32
    iget v2, v0, Lmodule/canbus/f;->i:I

    if-eq v2, v1, :cond_50

    .line 199
    iput v1, v0, Lmodule/canbus/f;->i:I

    if-ne v1, v8, :cond_33

    .line 200
    iput-boolean v7, v0, Lmodule/canbus/f;->g:Z

    .line 201
    iput v3, v0, Lmodule/canbus/f;->j:I

    .line 202
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_33
    if-ne v1, v5, :cond_34

    const/16 v1, 0x19

    .line 203
    iput v1, v0, Lmodule/canbus/f;->j:I

    .line 204
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_34
    if-nez v1, :cond_50

    .line 205
    iget-boolean v1, v0, Lmodule/canbus/f;->g:Z

    if-nez v1, :cond_35

    .line 206
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 207
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto :goto_12

    .line 208
    :cond_35
    iput-boolean v7, v0, Lmodule/canbus/f;->g:Z

    .line 209
    :goto_12
    iput v3, v0, Lmodule/canbus/f;->j:I

    .line 210
    iget-object v1, v0, Lmodule/canbus/f;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    :cond_36
    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x2

    .line 211
    aget-byte v9, v1, v5

    const/4 v14, 0x7

    shr-int/2addr v9, v14

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 212
    aget-byte v9, v1, v5

    shr-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 213
    aget-byte v5, v1, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x3

    .line 214
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x5

    .line 215
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    add-int/lit8 v9, p2, 0x6

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x7

    .line 216
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x9

    .line 217
    aget-byte v9, v1, v5

    shl-int/2addr v9, v13

    and-int v9, v9, v17

    add-int/lit8 v10, p2, 0xa

    aget-byte v14, v1, v10

    and-int/2addr v14, v6

    or-int/2addr v9, v14

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 218
    aget-byte v2, v1, v5

    shl-int/2addr v2, v13

    and-int v2, v2, v17

    aget-byte v3, v1, v10

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_37

    const/high16 v3, 0x10000

    sub-int/2addr v3, v2

    rsub-int v2, v3, 0x3e8

    goto :goto_13

    :cond_37
    add-int/lit16 v2, v2, 0x3e8

    .line 219
    :goto_13
    invoke-static {v2}, Lu0/d;->B3(I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xb

    .line 220
    aget-byte v5, v1, v5

    shl-int/2addr v5, v12

    and-int/2addr v5, v15

    add-int/lit8 v9, p2, 0xc

    aget-byte v9, v1, v9

    shl-int/2addr v9, v13

    and-int v9, v9, v17

    or-int/2addr v5, v9

    add-int/lit8 v9, p2, 0xd

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0xe

    .line 221
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    add-int/lit8 v9, p2, 0xf

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x10

    .line 222
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x11

    .line 223
    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    add-int/lit8 v5, p2, 0x12

    .line 224
    aget-byte v9, v1, v5

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x13

    .line 225
    aget-byte v9, v1, v9

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 226
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_38

    .line 227
    aget-byte v2, v1, v5

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    invoke-static {v2, v1, v7}, Ll0/c0;->b(III)V

    goto/16 :goto_18

    .line 228
    :cond_38
    aget-byte v2, v1, v5

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    invoke-static {v2, v1, v7}, Ll0/c0;->a(III)V

    goto/16 :goto_18

    :cond_39
    add-int/lit8 v2, p2, 0x2

    .line 229
    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lmodule/canbus/f;->d3(I)V

    goto/16 :goto_18

    :cond_3a
    add-int/lit8 v2, p2, 0x2

    .line 230
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 231
    aget-byte v3, v1, v3

    add-int/lit8 v5, p2, 0x4

    .line 232
    aget-byte v5, v1, v5

    add-int/lit8 v4, p2, 0x5

    .line 233
    aget-byte v1, v1, v4

    const/16 v4, 0x62

    new-array v9, v8, [I

    and-int/2addr v5, v6

    aput v5, v9, v7

    .line 234
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x63

    new-array v5, v8, [I

    and-int/2addr v2, v6

    aput v2, v5, v7

    .line 235
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v4, v8, [I

    and-int/2addr v3, v6

    aput v3, v4, v7

    .line 236
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v8, [I

    and-int/2addr v1, v6

    aput v1, v3, v7

    .line 237
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_3b
    add-int/lit8 v2, p2, 0x2

    .line 238
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 239
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 240
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 241
    aget-byte v5, v1, v5

    add-int/lit8 v9, p2, 0x6

    .line 242
    aget-byte v9, v1, v9

    add-int/lit8 v10, p2, 0x7

    .line 243
    aget-byte v10, v1, v10

    add-int/lit8 v11, p2, 0x8

    .line 244
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x9

    .line 245
    aget-byte v12, v1, v12

    const/16 v13, 0xa

    add-int/lit8 v13, p2, 0xa

    .line 246
    aget-byte v1, v1, v13

    const/16 v13, 0x71

    new-array v14, v8, [I

    aput v2, v14, v7

    .line 247
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v13, 0x6c

    new-array v14, v8, [I

    aput v3, v14, v7

    .line 248
    invoke-static {v13, v14}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v13, v8, [I

    aput v4, v13, v7

    .line 249
    invoke-static {v3, v13}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v8, [I

    aput v5, v4, v7

    .line 250
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v4, v8, [I

    aput v9, v4, v7

    .line 251
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v4, v8, [I

    aput v10, v4, v7

    .line 252
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v4, v8, [I

    aput v11, v4, v7

    .line 253
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x69

    new-array v4, v8, [I

    aput v12, v4, v7

    .line 254
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v4, v8, [I

    aput v1, v4, v7

    .line 255
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 256
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_50

    and-int/lit16 v1, v2, 0xff

    const/16 v2, 0x28

    .line 257
    invoke-static {v1, v7, v2}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/f;->s0:I

    goto/16 :goto_18

    :cond_3c
    add-int/lit8 v2, p2, 0x2

    .line 258
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    if-eq v2, v8, :cond_45

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_44

    if-eq v2, v9, :cond_43

    if-eq v2, v11, :cond_42

    if-eq v2, v4, :cond_40

    if-eq v2, v10, :cond_3f

    if-eq v2, v13, :cond_3e

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3d

    goto/16 :goto_18

    :cond_3d
    add-int/lit8 v2, p2, 0x4

    .line 259
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x28

    .line 260
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    aput v5, v3, v7

    aput v1, v3, v8

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_3e
    add-int/lit8 v2, p2, 0x3

    .line 261
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 262
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 263
    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    .line 264
    iput-boolean v8, v0, Lmodule/canbus/f;->t:Z

    goto/16 :goto_18

    .line 265
    :cond_3f
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    const/16 v4, 0xc

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x3

    aget-byte v6, v1, v4

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v3, v8

    const/16 v6, 0x419

    const/4 v10, 0x0

    invoke-static {v2, v6, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    aput v9, v3, v7

    .line 266
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v8

    invoke-static {v2, v6, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    aput v11, v3, v7

    add-int/lit8 v4, p2, 0x4

    .line 267
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    const/16 v4, 0xf

    and-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v2, v6, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_40
    const-string v2, "persist.syu.reversefrontdoor"

    .line 268
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_41

    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x3

    .line 269
    aget-byte v6, v1, v3

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 270
    aget-byte v3, v1, v3

    const/4 v6, 0x7

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_41
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x3

    .line 271
    aget-byte v6, v1, v3

    shr-int/2addr v6, v10

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 272
    aget-byte v3, v1, v3

    const/4 v6, 0x7

    shr-int/2addr v3, v6

    and-int/2addr v3, v8

    aput v3, v2, v7

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :goto_14
    new-array v2, v8, [I

    add-int/lit8 v3, p2, 0x3

    .line 273
    aget-byte v6, v1, v3

    shr-int/2addr v6, v11

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 274
    aget-byte v6, v1, v3

    shr-int/2addr v6, v4

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 275
    aget-byte v6, v1, v3

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v2, v7

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 276
    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v8

    aput v1, v2, v7

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_42
    add-int/lit8 v2, p2, 0x7

    .line 277
    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    and-int v2, v2, v17

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, v1, v3

    and-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0xa

    div-int/2addr v2, v3

    .line 278
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    new-array v9, v5, [I

    aput v4, v9, v7

    aput v2, v9, v8

    const/16 v2, 0x419

    const/4 v4, 0x0

    invoke-static {v3, v2, v9, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v2, v5, [I

    const/16 v4, 0x14

    aput v4, v2, v7

    add-int/lit8 v4, p2, 0x5

    .line 279
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v15

    add-int/lit8 v9, p2, 0x4

    aget-byte v9, v1, v9

    shl-int/2addr v9, v13

    and-int v9, v9, v17

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0x419

    const/4 v9, 0x0

    invoke-static {v3, v4, v2, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v2, v5, [I

    const/16 v4, 0x15

    aput v4, v2, v7

    add-int/lit8 v4, p2, 0xa

    .line 280
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v15

    add-int/lit8 v9, p2, 0x9

    aget-byte v9, v1, v9

    shl-int/2addr v9, v13

    and-int v9, v9, v17

    or-int/2addr v4, v9

    add-int/lit8 v9, p2, 0x8

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v4, v9

    aput v4, v2, v8

    const/16 v4, 0x419

    const/4 v9, 0x0

    invoke-static {v3, v4, v2, v9, v9}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v2, v5, [I

    const/16 v4, 0x16

    aput v4, v2, v7

    add-int/lit8 v4, p2, 0xd

    .line 281
    aget-byte v4, v1, v4

    shl-int/2addr v4, v12

    and-int/2addr v4, v15

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v17

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v4

    aput v1, v2, v8

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_43
    add-int/lit8 v2, p2, 0x4

    .line 282
    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    and-int v2, v2, v17

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v8, [I

    aput v1, v3, v7

    .line 283
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 284
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    aput v8, v3, v7

    aput v1, v3, v8

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_44
    const/16 v2, 0xc1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 285
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 286
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 287
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 288
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 289
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 290
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_45
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 291
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_46

    add-int/lit8 v2, p2, 0x3

    .line 292
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    invoke-static {v3, v2, v7}, Ll0/c0;->b(III)V

    goto :goto_15

    :cond_46
    add-int/lit8 v2, p2, 0x3

    .line 293
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    aget-byte v2, v1, v2

    shr-int/2addr v2, v11

    and-int/2addr v2, v8

    invoke-static {v3, v2, v7}, Ll0/c0;->a(III)V

    .line 294
    :goto_15
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v5, [I

    const/16 v4, 0xb

    aput v4, v3, v7

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v8

    const/16 v1, 0x419

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_47
    add-int/lit8 v2, p2, 0x2

    .line 295
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    const/16 v3, 0x30

    if-ne v2, v3, :cond_50

    const/16 v2, 0x96

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 296
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :cond_48
    const/16 v2, 0x7b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 297
    aget-byte v9, v1, v4

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x7

    .line 298
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x8

    .line 299
    aget-byte v11, v1, v10

    and-int/2addr v11, v6

    aput v11, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    const/16 v11, 0x9

    add-int/lit8 v11, p2, 0x9

    .line 300
    aget-byte v12, v1, v11

    and-int/2addr v12, v6

    aput v12, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 301
    aget-byte v2, v1, v4

    and-int/2addr v2, v6

    .line 302
    aget-byte v3, v1, v9

    and-int/2addr v3, v6

    .line 303
    aget-byte v4, v1, v10

    and-int/2addr v4, v6

    .line 304
    aget-byte v1, v1, v11

    and-int/2addr v1, v6

    .line 305
    sget-object v6, Lk0/nt;->f:[Lo1/x;

    new-array v9, v5, [I

    aput v13, v9, v7

    const/16 v10, 0x2100

    mul-int/lit8 v2, v2, 0x44

    div-int/lit8 v2, v2, 0x64

    or-int/2addr v2, v10

    aput v2, v9, v8

    const/16 v2, 0x419

    const/4 v10, 0x0

    invoke-static {v6, v2, v9, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v9, v5, [I

    aput v13, v9, v7

    const/16 v11, 0x2200

    mul-int/lit8 v3, v3, 0x44

    .line 306
    div-int/lit8 v3, v3, 0x64

    or-int/2addr v3, v11

    aput v3, v9, v8

    invoke-static {v6, v2, v9, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    aput v13, v3, v7

    const/16 v9, 0x2300

    mul-int/lit8 v4, v4, 0x44

    .line 307
    div-int/lit8 v4, v4, 0x64

    or-int/2addr v4, v9

    aput v4, v3, v8

    invoke-static {v6, v2, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v3, v5, [I

    aput v13, v3, v7

    const/16 v4, 0x2400

    mul-int/lit8 v1, v1, 0x44

    .line 308
    div-int/lit8 v1, v1, 0x64

    or-int/2addr v1, v4

    aput v1, v3, v8

    invoke-static {v6, v2, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_18

    .line 309
    :cond_49
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_4a
    add-int/lit8 v2, p2, 0x2

    .line 310
    aget-byte v2, v1, v2

    and-int/2addr v2, v6

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_18

    :pswitch_11
    const/16 v2, 0xd7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 311
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_12
    const/16 v2, 0xd6

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 312
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_13
    const/16 v2, 0xd5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 313
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_14
    const/16 v2, 0xd4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 314
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    :pswitch_15
    const/16 v2, 0xd3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 315
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_18

    .line 316
    :pswitch_16
    iget v2, v0, Lmodule/canbus/f;->h:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v1, v3

    and-int/2addr v4, v6

    if-eq v2, v4, :cond_4c

    .line 317
    aget-byte v2, v1, v3

    and-int/2addr v2, v6

    iput v2, v0, Lmodule/canbus/f;->h:I

    if-ne v2, v8, :cond_4b

    .line 318
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi"

    .line 319
    invoke-virtual {v0, v2}, Lmodule/canbus/f;->X3(Ljava/lang/String;)V

    goto :goto_16

    .line 320
    :cond_4b
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.carinfo.rzc.sanlin.RZCNissanRearYuleActi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 321
    invoke-static {}, Lo1/u;->k()V

    :cond_4c
    :goto_16
    const/16 v2, 0xd2

    new-array v4, v8, [I

    .line 322
    aget-byte v1, v1, v3

    and-int/2addr v1, v6

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_4d
    add-int/lit8 v2, p2, 0x2

    .line 323
    aget-byte v3, v1, v2

    and-int/2addr v3, v6

    .line 324
    iget v4, v0, Lmodule/canbus/f;->l:I

    if-eq v4, v3, :cond_50

    if-eqz v3, :cond_4e

    .line 325
    sget v4, Ly0/f;->i:I

    if-eq v4, v8, :cond_4f

    const/16 v5, 0xc

    .line 326
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 327
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    goto :goto_17

    :cond_4e
    const/16 v5, 0xc

    if-ne v4, v8, :cond_4f

    if-nez v3, :cond_4f

    .line 328
    sget v4, Ly0/f;->i:I

    if-ne v4, v8, :cond_4f

    .line 329
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 330
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    :cond_4f
    :goto_17
    const/16 v4, 0x70

    new-array v5, v8, [I

    .line 331
    aget-byte v1, v1, v2

    and-int/2addr v1, v6

    aput v1, v5, v7

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    .line 332
    iput v3, v0, Lmodule/canbus/f;->l:I

    :cond_50
    :goto_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_10
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x20050 -> :sswitch_0
        0x60050 -> :sswitch_0
        0x70050 -> :sswitch_0
        0x90050 -> :sswitch_0
        0xb0050 -> :sswitch_0
        0xd0050 -> :sswitch_0
        0xf0050 -> :sswitch_0
        0x110050 -> :sswitch_0
        0x130050 -> :sswitch_0
        0x150050 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x32
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x39
        0x1
        0x1
    .end array-data
.end method

.method public final V3(BLjava/lang/String;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    shl-int/lit8 v1, v0, 0x1

    .line 2
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 3
    invoke-virtual {p2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    shl-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 4
    aput-byte v8, v2, v7

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 5
    aput-byte v5, v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 p2, v1, 0xff

    const/4 v0, 0x4

    add-int/2addr p2, v0

    .line 6
    new-array p2, p2, [I

    const/16 v4, -0x1d

    .line 7
    aput v4, p2, v3

    const/4 v4, 0x1

    .line 8
    aput p1, p2, v4

    const/4 p1, 0x2

    add-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    .line 9
    aput v4, p2, p1

    const/4 p1, 0x3

    const/16 v4, 0x11

    .line 10
    aput v4, p2, p1

    :goto_1
    if-ge v3, v1, :cond_3

    add-int p1, v0, v3

    .line 11
    aget-byte v4, v2, v3

    aput v4, p2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {p2}, Lz/k;->s([I)V

    return-void
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/f;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/f;->z:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Ly0/g;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v1, Lw0/e;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lw0/e;->e:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, p0, Lmodule/canbus/f;->Y:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v1, p0, Lmodule/canbus/f;->l0:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v1, p0, Lmodule/canbus/f;->S:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 13
    sget-object v1, Lu0/c;->o:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v1, Lh0/d;->c:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v1, Lh0/d;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/f;->Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    iget-object v1, p0, Lmodule/canbus/f;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lmodule/canbus/f;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/f;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk0/lt;->R2([I)V

    return-void
.end method

.method public final X3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10620000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xd8

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

.method public Y3([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x55

    if-eq p3, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x2

    .line 2
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 3
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x4

    .line 4
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    .line 5
    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x6

    .line 6
    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x7

    .line 7
    aget-byte v4, p1, v4

    add-int/lit8 p2, p2, 0x8

    .line 8
    aget-byte p1, p1, p2

    and-int/lit16 p1, p3, 0xff

    const/4 p2, -0x3

    const/4 p3, -0x2

    const/16 v5, 0x1b

    const/16 v6, 0x50

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-le p1, v7, :cond_3

    if-ge p1, v6, :cond_3

    new-array v10, v9, [I

    aput p1, v10, v8

    .line 9
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p1, v9, [I

    aput p2, p1, v8

    .line 10
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_2
    new-array p1, v9, [I

    aput p3, p1, v8

    .line 11
    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    :cond_3
    :goto_0
    and-int/lit16 p1, v0, 0xff

    const/16 v0, 0x1c

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_4

    if-le p1, v7, :cond_6

    if-ge p1, v6, :cond_6

    new-array p2, v9, [I

    aput p1, p2, v8

    .line 12
    invoke-static {v0, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array p1, v9, [I

    aput p2, p1, v8

    .line 13
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p1, v9, [I

    aput p3, p1, v8

    .line 14
    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    :cond_6
    :goto_1
    and-int/lit8 p1, v1, 0xf

    const/16 p2, 0x15

    new-array p3, v9, [I

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v8

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 p1, v1, 0x4

    const/16 p2, 0xf

    and-int/2addr p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move p1, v9

    goto :goto_3

    :pswitch_1
    move p1, v8

    move p3, p1

    move v0, v9

    goto :goto_5

    :pswitch_2
    move p3, v8

    move p1, v9

    move v0, p1

    goto :goto_5

    :pswitch_3
    move p1, v8

    move p3, v9

    goto :goto_4

    :pswitch_4
    move p1, v8

    move v0, p1

    move p3, v9

    goto :goto_5

    :pswitch_5
    move v0, v8

    move p1, v9

    move p3, p1

    goto :goto_5

    :pswitch_6
    move p3, v8

    move v0, p3

    move p1, v9

    goto :goto_5

    :goto_2
    move p1, v8

    :goto_3
    move p3, p1

    :goto_4
    move v0, p3

    :goto_5
    const/16 v1, 0x13

    new-array v5, v9, [I

    aput p1, v5, v8

    .line 16
    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array v1, v9, [I

    aput p3, v1, v8

    .line 17
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x12

    new-array p3, v9, [I

    aput v0, p3, v8

    .line 18
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1d

    new-array p3, v9, [I

    and-int/lit8 v0, v2, 0x3

    aput v0, p3, v8

    .line 19
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1f

    new-array p3, v9, [I

    shr-int/lit8 v0, v2, 0x2

    and-int/lit8 v0, v0, 0x3

    aput v0, p3, v8

    .line 20
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1e

    new-array p3, v9, [I

    shr-int/lit8 v0, v2, 0x4

    and-int/lit8 v0, v0, 0x3

    aput v0, p3, v8

    .line 21
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x20

    new-array p3, v9, [I

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3

    aput v0, p3, v8

    .line 22
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p3, v9, [I

    and-int/lit8 v0, v3, 0x1

    aput v0, p3, v8

    .line 23
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xb

    new-array p3, v9, [I

    shr-int/lit8 v0, v3, 0x1

    and-int/2addr v0, v9

    aput v0, p3, v8

    .line 24
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p3, v9, [I

    shr-int/lit8 v0, v3, 0x2

    and-int/2addr v0, v9

    aput v0, p3, v8

    .line 25
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x35

    new-array p3, v9, [I

    shr-int/lit8 v0, v3, 0x4

    and-int/2addr v0, v9

    aput v0, p3, v8

    .line 26
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x41

    new-array p3, v9, [I

    shr-int/lit8 v0, v3, 0x5

    and-int/2addr v0, v9

    aput v0, p3, v8

    .line 27
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x26

    new-array p3, v9, [I

    shr-int/lit8 v0, v3, 0x6

    and-int/2addr v0, v9

    aput v0, p3, v8

    .line 28
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    new-array p1, v9, [I

    shr-int/lit8 p3, v3, 0x7

    and-int/2addr p3, v9

    aput p3, p1, v8

    .line 29
    invoke-static {p2, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p2, v9, [I

    shr-int/lit8 p3, v4, 0x0

    and-int/lit8 p3, p3, 0x3

    aput p3, p2, v8

    .line 30
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x43

    new-array p2, v9, [I

    shr-int/lit8 p3, v4, 0x3

    and-int/2addr p3, v9

    aput p3, p2, v8

    .line 31
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :goto_6
    return-void

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

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x6f

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0xe3

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_3

    const/16 v3, -0x1f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    aget v1, v2, v14

    invoke-virtual {v0, v1}, Lmodule/canbus/f;->Z3(I)V

    .line 2
    iput-boolean v12, v0, Lmodule/canbus/f;->v:Z

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v11, [I

    aput v6, v1, v14

    const/16 v3, -0x20

    aput v3, v1, v12

    aput v13, v1, v13

    .line 3
    aget v3, v2, v14

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    aget v1, v2, v14

    const/16 v3, 0x22

    if-ne v1, v3, :cond_0

    .line 5
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/f;->c4(I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    aget v1, v2, v14

    const/16 v3, 0x23

    if-ne v1, v3, :cond_1

    .line 7
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/f;->b4(I)V

    goto/16 :goto_0

    :cond_1
    new-array v1, v11, [I

    aput v6, v1, v14

    const/16 v3, -0x70

    aput v3, v1, v12

    aput v13, v1, v13

    .line 8
    aget v3, v2, v14

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v1, v11, [I

    aput v6, v1, v14

    aput v3, v1, v12

    aput v13, v1, v13

    .line 9
    aget v3, v2, v14

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v1, v5, [I

    aput v6, v1, v14

    aput v3, v1, v12

    aput v8, v1, v13

    .line 10
    aget v3, v2, v14

    aput v3, v1, v9

    aget v3, v2, v12

    aput v3, v1, v10

    aget v3, v2, v13

    aput v3, v1, v11

    aget v3, v2, v9

    aput v3, v1, v8

    aget v3, v2, v10

    aput v3, v1, v4

    aget v2, v2, v11

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v1, v5, [B

    const/16 v3, 0x2e

    aput-byte v3, v1, v14

    const/16 v6, 0x33

    aput-byte v6, v1, v12

    aput-byte v11, v1, v13

    .line 11
    aget v15, v2, v14

    int-to-byte v15, v15

    aput-byte v15, v1, v9

    iget-object v15, v0, Lmodule/canbus/f;->e0:[I

    iget v9, v0, Lmodule/canbus/f;->f0:I

    rem-int/2addr v9, v13

    aget v9, v15, v9

    int-to-byte v9, v9

    aput-byte v9, v1, v10

    const/16 v9, 0x25

    aput-byte v9, v1, v11

    aput-byte v13, v1, v8

    const/16 v15, -0x56

    aput-byte v15, v1, v4

    aput-byte v14, v1, v7

    invoke-static {v1}, Lmodule/canbus/f;->f4([B)V

    new-array v1, v5, [B

    aput-byte v3, v1, v14

    aput-byte v6, v1, v12

    aput-byte v11, v1, v13

    .line 12
    aget v6, v2, v14

    int-to-byte v6, v6

    const/16 v16, 0x3

    aput-byte v6, v1, v16

    iget-object v6, v0, Lmodule/canbus/f;->e0:[I

    iget v12, v0, Lmodule/canbus/f;->f0:I

    rem-int/2addr v12, v13

    aget v6, v6, v12

    int-to-byte v6, v6

    aput-byte v6, v1, v10

    aput-byte v9, v1, v11

    aput-byte v13, v1, v8

    aput-byte v15, v1, v4

    aput-byte v14, v1, v7

    invoke-static {v1}, Lmodule/canbus/f;->f4([B)V

    new-array v1, v5, [B

    aput-byte v3, v1, v14

    const/16 v3, 0x33

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    aput-byte v11, v1, v13

    .line 13
    aget v2, v2, v14

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    iget-object v2, v0, Lmodule/canbus/f;->e0:[I

    iget v3, v0, Lmodule/canbus/f;->f0:I

    rem-int/2addr v3, v13

    aget v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    aput-byte v9, v1, v11

    aput-byte v13, v1, v8

    aput-byte v15, v1, v4

    aput-byte v14, v1, v7

    invoke-static {v1}, Lmodule/canbus/f;->f4([B)V

    goto/16 :goto_0

    .line 14
    :pswitch_6
    invoke-virtual {v0, v2, v13}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    aget v1, v2, v14

    const/16 v3, 0x31

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    .line 16
    aget v1, v2, v1

    invoke-virtual {v0, v1}, Lmodule/canbus/f;->a4(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-array v3, v11, [I

    aput v6, v3, v14

    const/16 v4, 0x83

    aput v4, v3, v1

    aput v13, v3, v13

    .line 17
    aget v4, v2, v14

    const/4 v5, 0x3

    aput v4, v3, v5

    aget v1, v2, v1

    aput v1, v3, v10

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 18
    array-length v1, v2

    if-lez v1, :cond_5

    new-array v1, v10, [I

    .line 19
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v0, v2, v13}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    new-array v1, v1, [I

    aput v6, v1, v14

    const/16 v3, 0xef

    const/4 v6, 0x1

    aput v3, v1, v6

    aput v7, v1, v13

    const/16 v3, 0x7d

    const/4 v9, 0x3

    aput v3, v1, v9

    const/16 v3, 0xf0

    aput v3, v1, v10

    .line 21
    aget v3, v2, v14

    aput v3, v1, v11

    aget v3, v2, v6

    aput v3, v1, v8

    aget v3, v2, v13

    aput v3, v1, v4

    aget v3, v2, v9

    aput v3, v1, v7

    aget v3, v2, v10

    aput v3, v1, v5

    const/16 v3, 0xa

    aget v2, v2, v11

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        -0x39
        0x1
        0x1
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
    sget-object v0, Lmodule/canbus/f;->u0:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/f;->t0:I

    :cond_0
    return-void
.end method

.method public final Z3(I)V
    .locals 4

    .line 1
    sput p1, Lmodule/canbus/f;->q0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x1e

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lmodule/canbus/f;->q0:I

    aput v0, p1, v2

    const/16 v0, 0xbc

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/f;->q0:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 14

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    invoke-virtual {p0, v1}, Lmodule/canbus/f;->b3([I)V

    .line 2
    sget v5, Lu0/b;->D:I

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v5, v2, :cond_3

    const/4 v11, 0x3

    if-eq v5, v11, :cond_2

    if-eq v5, v10, :cond_0

    if-eq v5, v4, :cond_2

    if-eq v5, v8, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_0
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_1

    aput v3, v1, v10

    .line 4
    sget v2, Lo0/e;->B:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 5
    sget v2, Lo0/e;->C:I

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 6
    sget v2, Lo0/e;->r:I

    div-int/lit16 v5, v2, 0xe10

    aput v5, v1, v7

    .line 7
    rem-int/lit16 v5, v2, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v1, v4

    .line 8
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto/16 :goto_2

    .line 9
    :cond_1
    sget v2, Lo0/e;->C:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 10
    sget v2, Lo0/e;->B:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 11
    sget v2, Lo0/e;->r:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 12
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 13
    :cond_2
    sget v2, Lu0/b;->r3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v10

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v6

    .line 14
    sget v2, Lu0/b;->s3:I

    and-int/lit16 v5, v2, 0xff

    aput v5, v1, v9

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 15
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v5, v2, 0x3c

    aput v5, v1, v4

    .line 16
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v8

    goto :goto_2

    .line 17
    :cond_3
    sget v5, Lw0/d;->i:I

    .line 18
    sget v11, Lw0/d;->j:I

    and-int/lit16 v11, v11, 0xff

    .line 19
    sget v12, Lw0/d;->h:I

    const/high16 v13, 0x10000

    if-ne v12, v13, :cond_4

    aput v2, v1, v10

    goto :goto_0

    :cond_4
    const v13, 0x10001

    if-ne v12, v13, :cond_5

    const/4 v2, 0x2

    aput v2, v1, v10

    goto :goto_0

    :cond_5
    const v13, 0x10002

    if-ne v12, v13, :cond_6

    aput v3, v1, v10

    goto :goto_0

    :cond_6
    if-nez v12, :cond_7

    const/16 v2, 0x11

    aput v2, v1, v10

    goto :goto_0

    :cond_7
    if-ne v12, v2, :cond_8

    const/16 v2, 0x12

    aput v2, v1, v10

    :cond_8
    :goto_0
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v6

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v9

    .line 20
    rem-int/lit8 v2, v11, 0x6

    if-nez v2, :cond_9

    if-eqz v11, :cond_9

    aput v9, v1, v7

    goto :goto_1

    :cond_9
    aput v2, v1, v7

    :goto_1
    aput v3, v1, v4

    aput v3, v1, v8

    :goto_2
    const/16 v2, 0xb

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_3
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 21
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_3

    .line 22
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final a4(I)V
    .locals 3

    .line 1
    sput p1, Lmodule/canbus/f;->n0:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x6b

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/f;->n0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0x83

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    const/16 v1, 0x31

    aput v1, p1, v0

    const/4 v0, 0x4

    .line 5
    sget v1, Lmodule/canbus/f;->n0:I

    aput v1, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

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

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, p0, Lmodule/canbus/f;->h0:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lmodule/canbus/f;->h0:I

    .line 5
    iput v0, p0, Lmodule/canbus/f;->i0:I

    .line 6
    iput v0, p0, Lmodule/canbus/f;->j0:I

    .line 7
    :cond_2
    iget-object v1, p0, Lmodule/canbus/f;->g0:[B

    iget v2, p0, Lmodule/canbus/f;->h0:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lmodule/canbus/f;->h0:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lmodule/canbus/f;->h0:I

    .line 9
    iget p1, p0, Lmodule/canbus/f;->j0:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lmodule/canbus/f;->g0:[B

    aget-byte p1, p1, v2

    move v1, v3

    .line 11
    :goto_0
    iget v4, p0, Lmodule/canbus/f;->j0:I

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lmodule/canbus/f;->g0:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lmodule/canbus/f;->g0:[B

    aget-byte v4, v1, v4

    if-ne p1, v4, :cond_5

    .line 14
    aget-byte p1, v1, v3

    add-int/2addr p1, v3

    invoke-virtual {p0, v1, v2, p1}, Lmodule/canbus/f;->Y3([BII)V

    .line 15
    iget p1, p0, Lmodule/canbus/f;->j0:I

    add-int/2addr p1, v2

    iput p1, p0, Lmodule/canbus/f;->i0:I

    goto :goto_1

    .line 16
    :cond_5
    iput v3, p0, Lmodule/canbus/f;->i0:I

    .line 17
    :goto_1
    iput v0, p0, Lmodule/canbus/f;->j0:I

    .line 18
    :cond_6
    iget p1, p0, Lmodule/canbus/f;->h0:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lmodule/canbus/f;->i0:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v4, p0, Lmodule/canbus/f;->g0:[B

    aget-byte v5, v4, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_b

    .line 20
    iget v5, p0, Lmodule/canbus/f;->j0:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_7

    .line 21
    iput v0, p0, Lmodule/canbus/f;->j0:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x2

    .line 22
    aget-byte v5, v4, v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lmodule/canbus/f;->j0:I

    .line 23
    iget v6, p0, Lmodule/canbus/f;->h0:I

    if-lt v5, v6, :cond_8

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lmodule/canbus/f;->j0:I

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v4, v4, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lmodule/canbus/f;->j0:I

    if-ge v1, v5, :cond_9

    .line 27
    iget-object v5, p0, Lmodule/canbus/f;->g0:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    xor-int/lit16 v1, v4, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v4, p0, Lmodule/canbus/f;->g0:[B

    aget-byte v5, v4, v5

    if-ne v1, v5, :cond_a

    .line 29
    iget v1, p0, Lmodule/canbus/f;->i0:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, v3

    aget-byte v1, v4, v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v4, v5, v1}, Lmodule/canbus/f;->Y3([BII)V

    .line 30
    iget v1, p0, Lmodule/canbus/f;->j0:I

    iput v1, p0, Lmodule/canbus/f;->i0:I

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p0, Lmodule/canbus/f;->i0:I

    add-int/2addr v1, v2

    iput v1, p0, Lmodule/canbus/f;->i0:I

    .line 32
    :goto_4
    iput v0, p0, Lmodule/canbus/f;->j0:I

    .line 33
    :cond_b
    :goto_5
    iget v1, p0, Lmodule/canbus/f;->i0:I

    add-int/2addr v1, v2

    iput v1, p0, Lmodule/canbus/f;->i0:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    iget p1, p0, Lmodule/canbus/f;->h0:I

    sub-int/2addr p1, v1

    iput p1, p0, Lmodule/canbus/f;->h0:I

    if-eqz p1, :cond_d

    .line 35
    iget-object v2, p0, Lmodule/canbus/f;->g0:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v0, p0, Lmodule/canbus/f;->i0:I

    :cond_e
    :goto_7
    return-void
.end method

.method public final b3([I)V
    .locals 10

    if-eqz p1, :cond_5

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v2, 0x12

    const/4 v3, 0x7

    const/16 v4, 0xb

    const/16 v5, 0x30

    const/16 v6, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_3

    .line 4
    aput v8, p1, v9

    .line 5
    aput v8, p1, v1

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    .line 6
    aput v0, p1, v9

    const/16 v0, 0xff

    .line 7
    aput v0, p1, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    .line 8
    aput v0, p1, v9

    .line 9
    aput v2, p1, v1

    goto :goto_0

    .line 10
    :pswitch_2
    aput v1, p1, v9

    .line 11
    aput v5, p1, v1

    goto :goto_0

    .line 12
    :pswitch_3
    aput v3, p1, v9

    .line 13
    aput v5, p1, v1

    goto :goto_0

    .line 14
    :pswitch_4
    sget v0, Lo0/e;->H:I

    if-ne v0, v7, :cond_1

    .line 15
    aput v9, p1, v9

    .line 16
    aput v6, p1, v1

    goto :goto_0

    :cond_1
    const/16 v3, 0x9

    if-ne v0, v9, :cond_2

    .line 17
    aput v3, p1, v9

    .line 18
    aput v6, p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_4

    .line 19
    aput v3, p1, v9

    .line 20
    aput v6, p1, v1

    goto :goto_0

    .line 21
    :pswitch_5
    aput v4, p1, v9

    .line 22
    aput v6, p1, v1

    goto :goto_0

    .line 23
    :pswitch_6
    aput v4, p1, v9

    .line 24
    aput v8, p1, v1

    goto :goto_0

    .line 25
    :pswitch_7
    aput v7, p1, v9

    .line 26
    aput v7, p1, v1

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_4

    .line 27
    aput v3, p1, v9

    .line 28
    aput v5, p1, v1

    :cond_4
    :goto_0
    const-string v0, "sys.carlink.type"

    .line 29
    invoke-static {v0, v8}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "com.syu.carlink"

    .line 30
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    aput v2, p1, v9

    .line 32
    aput v8, p1, v1

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b4(I)V
    .locals 6

    .line 1
    sput p1, Lmodule/canbus/f;->o0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x70

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v4, 0x3

    const/16 v5, 0x23

    aput v5, v0, v4

    const/4 v4, 0x4

    aput p1, v0, v4

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lmodule/canbus/f;->o0:I

    aput v0, p1, v2

    const/16 v0, 0xb5

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/f;->o0:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final c3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    .line 2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_0

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x80

    aput v2, v1, v5

    .line 3
    :cond_1
    sget v2, Ly0/f;->C0:I

    const/16 v4, 0x24

    if-le v2, v4, :cond_2

    aput v4, v1, v5

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final c4(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/f;->p0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, -0x70

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/16 v1, 0x22

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v3, [I

    .line 3
    sget v0, Lmodule/canbus/f;->p0:I

    aput v0, p1, v2

    const/16 v0, 0xb6

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v4, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/f;->p0:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/f;->o:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "com.syu.carlink"

    .line 1
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-static {p1}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    .line 3
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 4
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x35

    .line 5
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 6
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x4c

    .line 7
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 8
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x36

    .line 9
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 10
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x16

    .line 11
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 12
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 13
    :pswitch_6
    sget v2, Lu0/b;->D:I

    if-eq v2, v1, :cond_0

    const/16 p1, 0x18

    .line 14
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 15
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/16 p1, 0x4b

    .line 16
    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    .line 17
    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const/16 v3, 0x4a

    if-ne p1, v2, :cond_2

    .line 18
    invoke-static {v3, v0}, Ll0/b0;->l0(II)V

    .line 19
    invoke-static {v3, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 20
    invoke-static {v3, v0}, Ll0/b0;->l0(II)V

    .line 21
    invoke-static {v3, v1}, Ll0/b0;->l0(II)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x9

    if-ne p1, v2, :cond_4

    .line 22
    invoke-static {v3, v0}, Ll0/b0;->l0(II)V

    .line 23
    invoke-static {v3, v1}, Ll0/b0;->l0(II)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized d4()V
    .locals 3

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
    sget v0, Lmodule/canbus/f;->s0:I

    .line 3
    sget v1, Lmodule/canbus/f;->t0:I

    const/16 v2, 0x21

    if-ge v0, v1, :cond_1

    .line 4
    invoke-static {v2, v2}, Lmodule/canbus/f;->U3(II)V

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/16 v0, 0x31

    .line 5
    invoke-static {v2, v0}, Lmodule/canbus/f;->U3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1, p1}, Lmodule/canbus/f;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public final e4(ILjava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x5

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v1, v4

    const/16 v3, -0x3b

    const/4 v5, 0x1

    .line 4
    aput v3, v1, v5

    .line 5
    array-length v3, v0

    const/4 v6, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput v3, v1, v6

    const/4 v3, 0x3

    int-to-byte v6, p1

    .line 6
    aput v6, v1, v3

    const/4 v3, 0x4

    .line 7
    aput v5, v1, v3

    if-ne p1, v5, :cond_1

    .line 8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_1

    add-int p1, v2, v4

    .line 9
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final f3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xe0

    aput v1, v0, v2

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

.method public final g3(I)I
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
    const/4 p1, 0x1

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

    const/4 p1, 0x3

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x4

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/4 p1, 0x5

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/4 p1, 0x6

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/4 p1, 0x7

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/16 p1, 0x8

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final h3()Z
    .locals 1

    .line 1
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
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
.end method

.method public final i3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, " "

    :cond_0
    const-string v0, "GB2312"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    add-int/lit8 v1, v0, 0x4

    .line 3
    new-array v1, v1, [I

    const/16 v2, -0x1d

    const/4 v3, 0x0

    .line 4
    aput v2, v1, v3

    const/16 v2, -0x36

    const/4 v4, 0x1

    .line 5
    aput v2, v1, v4

    .line 6
    array-length v2, p1

    add-int/2addr v2, v4

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v2, 0x3

    .line 7
    aput v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v2, v3, 0x4

    .line 8
    aget-byte v4, p1, v3

    aput v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/f;->v0:Lo1/f;

    new-instance v1, Lmodule/canbus/f$o;

    const/16 v2, 0x21

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/f$o;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final j3()V
    .locals 7

    .line 1
    iget v0, p0, Lmodule/canbus/f;->I:I

    if-lez v0, :cond_1

    sget-object v1, Lmodule/canbus/f;->r0:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lmodule/canbus/f;->E:I

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc9

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x6

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 3
    iget v6, p0, Lmodule/canbus/f;->K:I

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Lmodule/canbus/f;->M:I

    aput v6, v3, v4

    const/4 v4, 0x5

    and-int/lit16 v6, v2, 0xff

    aput v6, v3, v4

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    const/4 v4, 0x7

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aput v2, v3, v4

    aget v0, v1, v0

    const/16 v1, 0x8

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
