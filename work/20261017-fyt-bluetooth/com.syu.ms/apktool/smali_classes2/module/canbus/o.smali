.class public Lmodule/canbus/o;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/o$t;
    }
.end annotation


# static fields
.field public static d0:I

.field public static e0:I

.field public static f0:I

.field public static final g0:[I

.field public static final h0:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/o$t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Ljava/lang/Runnable;

.field public C:F

.field public D:I

.field public E:I

.field public F:Ljava/lang/Runnable;

.field public G:Z

.field public H:Ljava/lang/Runnable;

.field public I:Ljava/lang/Runnable;

.field public J:I

.field public K:Ljava/lang/Runnable;

.field public L:Ljava/lang/Runnable;

.field public M:I

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/Runnable;

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Ljava/lang/Runnable;

.field public T:Ljava/lang/Runnable;

.field public U:Ljava/lang/Runnable;

.field public V:B

.field public W:Ljava/lang/Runnable;

.field public X:Ljava/lang/Runnable;

.field public Y:I

.field public Z:Ljava/lang/Runnable;

.field public a0:I

.field public b:Lo1/g0;

.field public b0:Ljava/lang/Runnable;

.field public final c:I

.field public c0:Ljava/lang/Runnable;

.field public final d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[[I

.field public final k:[B

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:I

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:I

.field public x:Ljava/lang/Runnable;

.field public y:[I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/o;->g0:[I

    .line 2
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/o;->h0:Lo1/f;

    return-void

    nop

    :array_0
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
        0x1f
        0x20
        0x21
        0x23
        0x25
        0x28
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmodule/canbus/o;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lmodule/canbus/o;->c:I

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lmodule/canbus/o;->d:I

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, p0, Lmodule/canbus/o;->e:Z

    .line 6
    iput v3, p0, Lmodule/canbus/o;->f:I

    .line 7
    iput v3, p0, Lmodule/canbus/o;->h:I

    const/16 v4, 0xff

    .line 8
    iput v4, p0, Lmodule/canbus/o;->i:I

    const/16 v5, 0x26

    new-array v5, v5, [[I

    new-array v6, v1, [I

    .line 9
    fill-array-data v6, :array_0

    aput-object v6, v5, v3

    new-array v6, v1, [I

    fill-array-data v6, :array_1

    aput-object v6, v5, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    aput-object v0, v5, v1

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    const/4 v6, 0x3

    aput-object v0, v5, v6

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    const/4 v6, 0x4

    aput-object v0, v5, v6

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    const/4 v6, 0x5

    aput-object v0, v5, v6

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    const/4 v7, 0x6

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    const/4 v7, 0x7

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    const/16 v7, 0x8

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    const/16 v7, 0x9

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    const/16 v7, 0xa

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    const/16 v7, 0xb

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/16 v7, 0xc

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/16 v7, 0xd

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v7, 0xe

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_f

    const/16 v7, 0xf

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_10

    const/16 v7, 0x10

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    const/16 v7, 0x11

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_12

    const/16 v7, 0x12

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_13

    const/16 v7, 0x13

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_14

    const/16 v7, 0x14

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_15

    const/16 v7, 0x15

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_16

    const/16 v7, 0x16

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_17

    const/16 v7, 0x17

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    const/16 v7, 0x18

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_19

    const/16 v7, 0x19

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    const/16 v7, 0x1a

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_1b

    const/16 v7, 0x1b

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_1c

    const/16 v7, 0x1c

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_1d

    const/16 v7, 0x1d

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    const/16 v7, 0x1e

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    const/16 v7, 0x1f

    aput-object v0, v5, v7

    new-array v0, v1, [I

    fill-array-data v0, :array_20

    aput-object v0, v5, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_21

    const/16 v2, 0x21

    aput-object v0, v5, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_22

    const/16 v2, 0x22

    aput-object v0, v5, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_23

    const/16 v2, 0x23

    aput-object v0, v5, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_24

    const/16 v2, 0x24

    aput-object v0, v5, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_25

    const/16 v2, 0x25

    aput-object v0, v5, v2

    iput-object v5, p0, Lmodule/canbus/o;->j:[[I

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 10
    iput-object v0, p0, Lmodule/canbus/o;->k:[B

    .line 11
    iput v3, p0, Lmodule/canbus/o;->l:I

    .line 12
    iput v3, p0, Lmodule/canbus/o;->m:I

    .line 13
    iput v3, p0, Lmodule/canbus/o;->n:I

    .line 14
    iput v3, p0, Lmodule/canbus/o;->o:I

    .line 15
    iput v3, p0, Lmodule/canbus/o;->p:I

    .line 16
    new-instance v0, Lmodule/canbus/o$k;

    invoke-direct {v0, p0}, Lmodule/canbus/o$k;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->q:Ljava/lang/Runnable;

    .line 17
    iput v3, p0, Lmodule/canbus/o;->r:I

    .line 18
    iput v3, p0, Lmodule/canbus/o;->s:I

    .line 19
    new-instance v0, Lmodule/canbus/o$l;

    invoke-direct {v0, p0}, Lmodule/canbus/o$l;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->t:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lmodule/canbus/o$m;

    invoke-direct {v0, p0}, Lmodule/canbus/o$m;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->u:Ljava/lang/Runnable;

    .line 21
    iput v3, p0, Lmodule/canbus/o;->v:I

    .line 22
    iput v3, p0, Lmodule/canbus/o;->w:I

    .line 23
    new-instance v0, Lmodule/canbus/o$n;

    invoke-direct {v0, p0}, Lmodule/canbus/o$n;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->x:Ljava/lang/Runnable;

    new-array v0, v1, [I

    .line 24
    fill-array-data v0, :array_26

    iput-object v0, p0, Lmodule/canbus/o;->y:[I

    .line 25
    iput v3, p0, Lmodule/canbus/o;->z:I

    .line 26
    iput-boolean v3, p0, Lmodule/canbus/o;->A:Z

    .line 27
    new-instance v0, Lmodule/canbus/o$o;

    invoke-direct {v0, p0}, Lmodule/canbus/o$o;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->B:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lmodule/canbus/o;->C:F

    .line 29
    iput v4, p0, Lmodule/canbus/o;->D:I

    .line 30
    iput v4, p0, Lmodule/canbus/o;->E:I

    .line 31
    new-instance v0, Lmodule/canbus/o$p;

    invoke-direct {v0, p0}, Lmodule/canbus/o$p;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->F:Ljava/lang/Runnable;

    .line 32
    iput-boolean v3, p0, Lmodule/canbus/o;->G:Z

    .line 33
    new-instance v0, Lmodule/canbus/o$q;

    invoke-direct {v0, p0}, Lmodule/canbus/o$q;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->H:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lmodule/canbus/o$r;

    invoke-direct {v0, p0}, Lmodule/canbus/o$r;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->I:Ljava/lang/Runnable;

    .line 35
    iput v4, p0, Lmodule/canbus/o;->J:I

    .line 36
    new-instance v0, Lmodule/canbus/o$s;

    invoke-direct {v0, p0}, Lmodule/canbus/o$s;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->K:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lmodule/canbus/o$a;

    invoke-direct {v0, p0}, Lmodule/canbus/o$a;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->L:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lmodule/canbus/o;->M:I

    const-string v1, ""

    .line 39
    iput-object v1, p0, Lmodule/canbus/o;->N:Ljava/lang/String;

    .line 40
    new-instance v1, Lmodule/canbus/o$b;

    invoke-direct {v1, p0}, Lmodule/canbus/o$b;-><init>(Lmodule/canbus/o;)V

    iput-object v1, p0, Lmodule/canbus/o;->O:Ljava/lang/Runnable;

    .line 41
    iput v3, p0, Lmodule/canbus/o;->P:I

    .line 42
    iput v3, p0, Lmodule/canbus/o;->Q:I

    .line 43
    iput-boolean v3, p0, Lmodule/canbus/o;->R:Z

    .line 44
    new-instance v1, Lmodule/canbus/o$c;

    invoke-direct {v1, p0}, Lmodule/canbus/o$c;-><init>(Lmodule/canbus/o;)V

    iput-object v1, p0, Lmodule/canbus/o;->S:Ljava/lang/Runnable;

    .line 45
    new-instance v1, Lmodule/canbus/o$d;

    invoke-direct {v1, p0}, Lmodule/canbus/o$d;-><init>(Lmodule/canbus/o;)V

    iput-object v1, p0, Lmodule/canbus/o;->T:Ljava/lang/Runnable;

    .line 46
    new-instance v1, Lmodule/canbus/o$e;

    invoke-direct {v1, p0}, Lmodule/canbus/o$e;-><init>(Lmodule/canbus/o;)V

    iput-object v1, p0, Lmodule/canbus/o;->U:Ljava/lang/Runnable;

    .line 47
    iput-byte v6, p0, Lmodule/canbus/o;->V:B

    .line 48
    new-instance v1, Lmodule/canbus/o$f;

    invoke-direct {v1, p0}, Lmodule/canbus/o$f;-><init>(Lmodule/canbus/o;)V

    iput-object v1, p0, Lmodule/canbus/o;->W:Ljava/lang/Runnable;

    .line 49
    new-instance v1, Lmodule/canbus/o$g;

    invoke-direct {v1, p0}, Lmodule/canbus/o$g;-><init>(Lmodule/canbus/o;)V

    iput-object v1, p0, Lmodule/canbus/o;->X:Ljava/lang/Runnable;

    .line 50
    iput v3, p0, Lmodule/canbus/o;->Y:I

    .line 51
    new-instance v1, Lmodule/canbus/o$h;

    invoke-direct {v1, p0}, Lmodule/canbus/o$h;-><init>(Lmodule/canbus/o;)V

    iput-object v1, p0, Lmodule/canbus/o;->Z:Ljava/lang/Runnable;

    .line 52
    iput v0, p0, Lmodule/canbus/o;->a0:I

    .line 53
    new-instance v0, Lmodule/canbus/o$i;

    invoke-direct {v0, p0}, Lmodule/canbus/o$i;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->b0:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lmodule/canbus/o$j;

    invoke-direct {v0, p0}, Lmodule/canbus/o$j;-><init>(Lmodule/canbus/o;)V

    iput-object v0, p0, Lmodule/canbus/o;->c0:Ljava/lang/Runnable;

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
        0x7
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_6
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_7
    .array-data 4
        0xd
        0xd
    .end array-data

    :array_8
    .array-data 4
        0xe
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x81
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x87
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x89
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xa1
        0x7
    .end array-data

    :array_d
    .array-data 4
        0xa2
        0x8
    .end array-data

    :array_e
    .array-data 4
        0xa9
        0x3
    .end array-data

    :array_f
    .array-data 4
        0xb0
        0x4
    .end array-data

    :array_10
    .array-data 4
        0xb1
        0x2
    .end array-data

    :array_11
    .array-data 4
        0xb2
        0x5
    .end array-data

    :array_12
    .array-data 4
        0xb3
        0x12
    .end array-data

    :array_13
    .array-data 4
        0xb4
        0x1a
    .end array-data

    :array_14
    .array-data 4
        0xb5
        0x37
    .end array-data

    :array_15
    .array-data 4
        0xb6
        0x1
    .end array-data

    :array_16
    .array-data 4
        0xb7
        0x3e
    .end array-data

    :array_17
    .array-data 4
        0xb8
        0x3e
    .end array-data

    :array_18
    .array-data 4
        0xb9
        0x3e
    .end array-data

    :array_19
    .array-data 4
        0xba
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0xbb
        0x41
    .end array-data

    :array_1b
    .array-data 4
        0xbc
        0x26
    .end array-data

    :array_1c
    .array-data 4
        0xc0
        0x22
    .end array-data

    :array_1d
    .array-data 4
        0xc1
        0x23
    .end array-data

    :array_1e
    .array-data 4
        0xc2
        0x20
    .end array-data

    :array_1f
    .array-data 4
        0xc3
        0x21
    .end array-data

    :array_20
    .array-data 4
        0xc4
        0x1d
    .end array-data

    :array_21
    .array-data 4
        0xc5
        0x22
    .end array-data

    :array_22
    .array-data 4
        0xc6
        0x23
    .end array-data

    :array_23
    .array-data 4
        0xc7
        0x20
    .end array-data

    :array_24
    .array-data 4
        0xc8
        0x21
    .end array-data

    :array_25
    .array-data 4
        0xc9
        0x3f
    .end array-data

    :array_26
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static J3([B)V
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

.method public static b3()V
    .locals 13

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0xa

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/16 v9, 0x10

    const/4 v10, 0x3

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    const/4 v6, 0x7

    const/16 v11, 0x40

    const/16 v12, 0x30

    packed-switch v5, :pswitch_data_0

    aput v0, v1, v4

    aput v12, v1, v10

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x6

    aput v2, v1, v4

    const/16 v2, 0x12

    aput v2, v1, v10

    goto :goto_0

    :pswitch_1
    aput v6, v1, v4

    aput v12, v1, v10

    goto :goto_0

    :pswitch_2
    aput v6, v1, v4

    aput v12, v1, v10

    goto :goto_0

    .line 2
    :pswitch_3
    sget v5, Lo0/e;->H:I

    if-ne v5, v2, :cond_0

    aput v4, v1, v4

    aput v9, v1, v10

    goto :goto_0

    :cond_0
    if-ne v5, v4, :cond_1

    aput v8, v1, v4

    aput v9, v1, v10

    goto :goto_0

    :cond_1
    if-ne v5, v10, :cond_4

    aput v8, v1, v4

    aput v9, v1, v10

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xb

    aput v2, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :pswitch_5
    aput v7, v1, v4

    aput v11, v1, v10

    goto :goto_0

    :pswitch_6
    aput v2, v1, v4

    aput v2, v1, v10

    goto :goto_0

    :cond_2
    const/16 v2, 0xc

    aput v2, v1, v4

    const/16 v2, 0x22

    aput v2, v1, v10

    goto :goto_0

    :cond_3
    :pswitch_7
    aput v8, v1, v4

    aput v9, v1, v10

    :cond_4
    :goto_0
    new-array v2, v7, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 3
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 4
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

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
        :pswitch_7
    .end packed-switch
.end method

.method public static synthetic e3(Lmodule/canbus/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/o;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic f3(Lmodule/canbus/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/o;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic g3(Lmodule/canbus/o;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/o;->c3(I)V

    return-void
.end method

.method public static synthetic h3(Lmodule/canbus/o;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/o;->G3()V

    return-void
.end method

.method public static synthetic i3(Lmodule/canbus/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/o;->W:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic j3(Lmodule/canbus/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/o;->X:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic k3(Lmodule/canbus/o;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/o;->C:F

    return p0
.end method

.method public static synthetic l3(Lmodule/canbus/o;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/o;->C:F

    return p1
.end method

.method public static synthetic m3(Lmodule/canbus/o;F)F
    .locals 1

    .line 1
    iget v0, p0, Lmodule/canbus/o;->C:F

    rem-float/2addr v0, p1

    iput v0, p0, Lmodule/canbus/o;->C:F

    return v0
.end method

.method public static synthetic n3(Lmodule/canbus/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/o;->E:I

    return p0
.end method

.method public static synthetic o3(Lmodule/canbus/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/o;->E:I

    return p1
.end method

.method public static synthetic p3(Lmodule/canbus/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/o;->D:I

    return p0
.end method

.method public static synthetic q3(Lmodule/canbus/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/o;->D:I

    return p1
.end method

.method public static synthetic r3(Lmodule/canbus/o;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/o;->B3(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic s3(Lmodule/canbus/o;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/o;->a3()V

    return-void
.end method

.method public static synthetic t3(Lmodule/canbus/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/o;->M:I

    return p0
.end method

.method public static synthetic u3(Lmodule/canbus/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/o;->M:I

    return p1
.end method

.method public static synthetic v3(Lmodule/canbus/o;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/o;->N:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic w3(Lmodule/canbus/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/o;->N:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic x3(Lmodule/canbus/o;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lmodule/canbus/o;->I3(ILjava/lang/String;)V

    return-void
.end method

.method public static y3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/o;->h0:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/o$t;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/o$t;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A3()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final B3(BLjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    const/16 v1, 0x22

    aput v1, v0, p1

    const/4 p1, 0x3

    const/16 v1, 0x9

    aput v1, v0, p1

    .line 2
    array-length p1, p2

    const/16 v1, 0x21

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 p1, v2, 0x4

    .line 3
    aget-byte v3, p2, v2

    aput v3, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final C3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/o;->Z2(I)V

    return-void
.end method

.method public final D3()V
    .locals 3

    const-string v0, "persist.fyt.showduduair"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmodule/canbus/o;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

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

.method public final E3(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/o;->d0:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x83

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/4 v4, 0x3

    aput v4, v0, v1

    aput v1, v0, v4

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 p1, 0x5

    aput v2, v0, p1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/o;->b:Lo1/g0;

    invoke-virtual {p1, v3, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/o;->d0:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/o;->b:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final F3(I)V
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
    sput p1, Lmodule/canbus/o;->e0:I

    const/16 v2, 0xa4

    new-array v1, v1, [I

    aput p1, v1, v0

    .line 2
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/o;->b:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/o;->e0:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lmodule/canbus/o;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final declared-synchronized G3()V
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
    sget v0, Lmodule/canbus/o;->f0:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/o;->y3(II)V
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

.method public H3()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.cancle_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.syu.voice"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final I3(ILjava/lang/String;)V
    .locals 8

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

    const/4 v3, 0x4

    const/4 v7, 0x3

    if-eqz p1, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    .line 6
    aput v4, v1, v7

    goto :goto_0

    .line 7
    :cond_1
    aput v3, v1, v7

    goto :goto_0

    .line 8
    :cond_2
    aput v5, v1, v7

    goto :goto_0

    .line 9
    :cond_3
    aput v6, v1, v7

    goto :goto_0

    :cond_4
    const/16 p1, 0x10

    .line 10
    aput p1, v1, v7

    goto :goto_0

    :cond_5
    const/16 p1, 0x11

    .line 11
    aput p1, v1, v7

    .line 12
    :goto_0
    aput v5, v1, v3

    .line 13
    array-length p1, v0

    if-lez p1, :cond_6

    .line 14
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_6

    add-int p1, v2, v4

    .line 15
    aget-char v3, v0, v4

    int-to-byte v3, v3

    aput v3, v1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_6
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_37

    .line 1
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    aget v4, v1, v2

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    sget-object v6, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Air codeCmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "      value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget v9, v1, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v5, 0x29

    const/16 v7, 0xa

    const/4 v10, 0x3

    if-eq v4, v5, :cond_33

    const/16 v5, 0x2a

    const/16 v11, 0xb

    const/16 v12, 0xc

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x37

    const/4 v15, 0x4

    const/16 v13, 0x11

    const/16 v14, 0x10

    if-eq v4, v5, :cond_2c

    const/16 v5, 0x38

    const/16 v16, 0xd

    if-eq v4, v5, :cond_29

    const/16 v5, 0x43

    if-eq v4, v5, :cond_24

    const/16 v5, 0x44

    const/4 v9, 0x7

    const/16 v6, 0x8

    if-eq v4, v5, :cond_18

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget v1, v1, v8

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 5
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_1

    if-eq v1, v10, :cond_1

    .line 6
    invoke-virtual {v0, v6, v8}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x14

    .line 7
    invoke-virtual {v0, v1}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_3

    if-eq v1, v10, :cond_3

    .line 9
    invoke-virtual {v0, v6, v2}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    .line 10
    invoke-virtual {v0, v1}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_1
    sget v4, Lk0/nt;->c:I

    const/16 v5, 0x23

    if-eq v4, v3, :cond_7

    if-eq v4, v10, :cond_7

    .line 12
    aget v4, v1, v8

    if-ne v4, v8, :cond_5

    .line 13
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-nez v1, :cond_37

    .line 14
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_4

    if-eq v1, v10, :cond_4

    const/16 v1, 0xf

    .line 15
    invoke-virtual {v0, v1, v2}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 16
    :cond_4
    invoke-virtual {v0, v5}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 17
    :cond_5
    aget v1, v1, v8

    if-nez v1, :cond_37

    .line 18
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-ne v1, v8, :cond_37

    .line 19
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_6

    if-eq v1, v10, :cond_6

    const/16 v1, 0xf

    .line 20
    invoke-virtual {v0, v1, v8}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 21
    :cond_6
    invoke-virtual {v0, v5}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 22
    :cond_7
    aget v2, v1, v8

    if-ne v2, v8, :cond_8

    .line 23
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-ne v1, v8, :cond_37

    .line 24
    invoke-virtual {v0, v5}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 25
    :cond_8
    aget v1, v1, v8

    if-nez v1, :cond_37

    .line 26
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v12

    if-ne v1, v3, :cond_37

    .line 27
    invoke-virtual {v0, v5}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 28
    :pswitch_2
    aget v1, v1, v8

    if-eqz v1, :cond_a

    .line 29
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-nez v1, :cond_37

    .line 30
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_9

    if-eq v1, v10, :cond_9

    .line 31
    invoke-virtual {v0, v13, v8}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-virtual {v0, v15}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 33
    :cond_a
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v14

    if-ne v1, v8, :cond_37

    .line 34
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_b

    if-eq v1, v10, :cond_b

    .line 35
    invoke-virtual {v0, v13, v2}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 36
    :cond_b
    invoke-virtual {v0, v15}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 37
    :pswitch_3
    aget v1, v1, v8

    const/16 v4, 0x26

    const/16 v5, 0x41

    if-eqz v1, :cond_d

    .line 38
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-nez v1, :cond_37

    .line 39
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_c

    if-eq v1, v10, :cond_c

    .line 40
    invoke-virtual {v0, v14, v8}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 41
    :cond_c
    invoke-virtual {v0, v4}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 42
    :cond_d
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v5

    if-ne v1, v8, :cond_37

    .line 43
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_e

    if-eq v1, v10, :cond_e

    .line 44
    invoke-virtual {v0, v14, v2}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 45
    :cond_e
    invoke-virtual {v0, v4}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 46
    :pswitch_4
    aget v1, v1, v8

    if-eqz v1, :cond_10

    .line 47
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-nez v1, :cond_37

    .line 48
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_f

    if-eq v1, v10, :cond_f

    const/16 v1, 0xe

    .line 49
    invoke-virtual {v0, v1, v8}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 50
    :cond_f
    invoke-virtual {v0, v3}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 51
    :cond_10
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v16

    if-ne v1, v8, :cond_37

    .line 52
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_11

    if-eq v1, v10, :cond_11

    const/16 v1, 0xe

    .line 53
    invoke-virtual {v0, v1, v2}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 54
    :cond_11
    invoke-virtual {v0, v3}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 55
    :pswitch_5
    aget v1, v1, v8

    if-eqz v1, :cond_13

    .line 56
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v11

    if-nez v1, :cond_37

    .line 57
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_12

    if-eq v1, v10, :cond_12

    .line 58
    invoke-virtual {v0, v9, v8}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 59
    :cond_12
    invoke-virtual {v0, v14}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 60
    :cond_13
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v11

    if-ne v1, v8, :cond_37

    .line 61
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_14

    if-eq v1, v10, :cond_14

    .line 62
    invoke-virtual {v0, v9, v2}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 63
    :cond_14
    invoke-virtual {v0, v14}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 64
    :pswitch_6
    aget v1, v1, v8

    if-eqz v1, :cond_16

    .line 65
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v7

    if-nez v1, :cond_37

    .line 66
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_15

    if-eq v1, v10, :cond_15

    const/4 v1, 0x6

    .line 67
    invoke-virtual {v0, v1, v8}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 68
    :cond_15
    invoke-virtual {v0, v3}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 69
    :cond_16
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, v7

    if-ne v1, v8, :cond_37

    .line 70
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_17

    if-eq v1, v10, :cond_17

    const/4 v1, 0x6

    .line 71
    invoke-virtual {v0, v1, v2}, Lmodule/canbus/o;->d3(II)V

    goto/16 :goto_0

    .line 72
    :cond_17
    invoke-virtual {v0, v8}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_0

    .line 73
    :cond_18
    aget v2, v1, v8

    if-ne v2, v8, :cond_19

    const/4 v2, 0x5

    new-array v1, v2, [I

    .line 74
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x5

    .line 75
    aget v4, v1, v8

    if-ne v4, v3, :cond_1a

    new-array v1, v2, [I

    .line 76
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 77
    :cond_1a
    aget v3, v1, v8

    if-ne v3, v10, :cond_1b

    new-array v1, v2, [I

    .line 78
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 79
    :cond_1b
    aget v3, v1, v8

    if-ne v3, v15, :cond_1c

    new-array v1, v2, [I

    .line 80
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 81
    :cond_1c
    aget v3, v1, v8

    if-ne v3, v2, :cond_1d

    new-array v1, v2, [I

    .line 82
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 83
    :cond_1d
    aget v3, v1, v8

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1e

    new-array v1, v2, [I

    .line 84
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 85
    :cond_1e
    aget v3, v1, v8

    if-ne v3, v9, :cond_1f

    new-array v1, v2, [I

    .line 86
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 87
    :cond_1f
    aget v3, v1, v8

    if-ne v3, v6, :cond_20

    new-array v1, v2, [I

    .line 88
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 89
    :cond_20
    aget v3, v1, v8

    const/16 v4, 0x9

    if-ne v3, v4, :cond_21

    new-array v1, v2, [I

    .line 90
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 91
    :cond_21
    aget v3, v1, v8

    if-ne v3, v7, :cond_22

    new-array v1, v2, [I

    .line 92
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 93
    :cond_22
    aget v3, v1, v8

    if-ne v3, v11, :cond_23

    new-array v1, v2, [I

    .line 94
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 95
    :cond_23
    aget v1, v1, v8

    if-ne v1, v12, :cond_37

    new-array v1, v2, [I

    .line 96
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_24
    const/4 v2, 0x5

    .line 97
    aget v1, v1, v8

    if-eq v1, v3, :cond_28

    if-eq v1, v10, :cond_27

    if-eq v1, v15, :cond_26

    if-eq v1, v2, :cond_25

    goto/16 :goto_0

    :cond_25
    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 98
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_26
    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 99
    fill-array-data v1, :array_d

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_27
    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 100
    fill-array-data v1, :array_e

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_28
    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 101
    fill-array-data v1, :array_f

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 102
    :cond_29
    aget v4, v1, v8

    if-ge v4, v13, :cond_2a

    const/4 v4, 0x5

    new-array v1, v4, [I

    .line 103
    fill-array-data v1, :array_10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2a
    const/4 v4, 0x5

    .line 104
    aget v5, v1, v8

    if-lt v5, v13, :cond_2b

    aget v5, v1, v8

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_2b

    .line 105
    aget v1, v1, v8

    sub-int/2addr v1, v14

    mul-int/2addr v1, v3

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    const/16 v2, -0x79

    aput v2, v4, v8

    aput v3, v4, v3

    aput v16, v4, v10

    aput v1, v4, v15

    .line 106
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 107
    :cond_2b
    aget v1, v1, v8

    const/16 v2, 0x1f

    if-le v1, v2, :cond_37

    const/4 v4, 0x5

    new-array v1, v4, [I

    .line 108
    fill-array-data v1, :array_11

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2c
    const/4 v4, 0x5

    .line 109
    aget v5, v1, v8

    if-ge v5, v13, :cond_2d

    new-array v1, v4, [I

    .line 110
    fill-array-data v1, :array_12

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 111
    :cond_2d
    aget v5, v1, v8

    if-lt v5, v13, :cond_2e

    aget v5, v1, v8

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_2e

    .line 112
    aget v1, v1, v8

    sub-int/2addr v1, v14

    mul-int/2addr v1, v3

    new-array v4, v4, [I

    const/16 v5, 0xe3

    aput v5, v4, v2

    const/16 v2, -0x79

    aput v2, v4, v8

    aput v3, v4, v3

    aput v11, v4, v10

    aput v1, v4, v15

    .line 113
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_0

    .line 114
    :cond_2e
    aget v1, v1, v8

    const/16 v2, 0x1f

    if-le v1, v2, :cond_37

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 115
    fill-array-data v1, :array_13

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 116
    :cond_2f
    aget v1, v1, v8

    if-eqz v1, :cond_31

    .line 117
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_30

    if-eq v1, v10, :cond_30

    const/16 v1, 0x20

    .line 118
    invoke-virtual {v0, v1}, Lmodule/canbus/o;->c3(I)V

    goto :goto_0

    .line 119
    :cond_30
    invoke-virtual {v0, v11}, Lmodule/canbus/o;->c3(I)V

    goto :goto_0

    .line 120
    :cond_31
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_32

    if-eq v1, v10, :cond_32

    const/16 v1, 0x21

    .line 121
    invoke-virtual {v0, v1}, Lmodule/canbus/o;->c3(I)V

    goto :goto_0

    .line 122
    :cond_32
    invoke-virtual {v0, v12}, Lmodule/canbus/o;->c3(I)V

    goto :goto_0

    .line 123
    :cond_33
    aget v1, v1, v8

    if-eqz v1, :cond_35

    .line 124
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_34

    if-eq v1, v10, :cond_34

    const/16 v1, 0x1e

    .line 125
    invoke-virtual {v0, v1}, Lmodule/canbus/o;->c3(I)V

    goto :goto_0

    :cond_34
    const/16 v1, 0x9

    .line 126
    invoke-virtual {v0, v1}, Lmodule/canbus/o;->c3(I)V

    goto :goto_0

    .line 127
    :cond_35
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_36

    if-eq v1, v10, :cond_36

    const/16 v1, 0x1f

    .line 128
    invoke-virtual {v0, v1}, Lmodule/canbus/o;->c3(I)V

    goto :goto_0

    .line 129
    :cond_36
    invoke-virtual {v0, v7}, Lmodule/canbus/o;->c3(I)V

    :cond_37
    :goto_0
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

    :array_0
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x79
        0x2
        0x30
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x79
        0x2
        0x30
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x4
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x3
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x2
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x1
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0xff
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x0
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0xff
    .end array-data
.end method

.method public S2()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmodule/canbus/o;->b:Lo1/g0;

    invoke-virtual {v1}, Lo1/g0;->a()V

    .line 2
    iget-object v1, v0, Lmodule/canbus/o;->b:Lo1/g0;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmodule/canbus/o;->F3(I)V

    .line 3
    sget-object v1, Lu0/c;->m:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->Z:Ljava/lang/Runnable;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    iget-object v4, v0, Lmodule/canbus/o;->U:Ljava/lang/Runnable;

    invoke-static {v4}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 5
    iget-object v4, v0, Lmodule/canbus/o;->T:Ljava/lang/Runnable;

    invoke-static {v4}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 6
    iget-object v4, v0, Lmodule/canbus/o;->B:Ljava/lang/Runnable;

    invoke-static {v4}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 7
    iget-object v4, v0, Lk0/lt;->a:Lk0/mt;

    const-string v6, "com.syu.canbus"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lk0/mt;->a:[Ljava/lang/String;

    .line 8
    iput v5, v4, Lk0/mt;->e:I

    .line 9
    iput v5, v4, Lk0/mt;->f:I

    .line 10
    iput v5, v4, Lk0/mt;->g:I

    .line 11
    iput v3, v4, Lk0/mt;->h:I

    .line 12
    iput v3, v4, Lk0/mt;->i:I

    .line 13
    iput v3, v4, Lk0/mt;->h:I

    .line 14
    iput v3, v4, Lk0/mt;->b:I

    .line 15
    sget v7, Lk0/nt;->c:I

    const/4 v9, 0x6

    const/16 v10, 0x25

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/16 v13, 0x33

    const/16 v14, 0xe3

    const/16 v15, 0x8

    const/4 v8, 0x5

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 16
    :pswitch_1
    sget-object v2, Lo1/h;->a:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->F:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v2, v0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v5, v2, Lk0/mt;->e:I

    .line 19
    iput v5, v2, Lk0/mt;->f:I

    .line 20
    iput v5, v2, Lk0/mt;->g:I

    .line 21
    iput v5, v2, Lk0/mt;->i:I

    .line 22
    iget-object v2, v0, Lmodule/canbus/o;->L:Ljava/lang/Runnable;

    invoke-static {v2}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 23
    sget-object v2, Lh0/d;->c:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->O:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 24
    sget-object v2, Lh0/d;->a:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->O:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    sget-object v2, Lu0/c;->a:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->K:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 26
    sget-object v2, Lu0/c;->o:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->H:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 27
    sget-object v2, Lu0/c;->p:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->I:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 28
    :pswitch_2
    sget-object v2, Lo1/h;->a:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->F:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 29
    iget-object v2, v0, Lk0/lt;->a:Lk0/mt;

    iput v5, v2, Lk0/mt;->i:I

    goto/16 :goto_0

    .line 30
    :pswitch_3
    sget-object v2, Lo1/h;->a:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->F:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 31
    iget-object v2, v0, Lk0/lt;->a:Lk0/mt;

    iput v5, v2, Lk0/mt;->i:I

    .line 32
    iput v5, v2, Lk0/mt;->b:I

    .line 33
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->init()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->C3()V

    .line 35
    sget-object v2, Ly0/g;->d:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->c0:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 36
    iget-object v2, v0, Lmodule/canbus/o;->L:Ljava/lang/Runnable;

    invoke-static {v2}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 37
    sget-object v2, Lh0/d;->c:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->O:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 38
    sget-object v2, Lh0/d;->a:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->O:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 39
    sget-object v2, Lu0/c;->a:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->K:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 40
    sget-object v2, Lu0/c;->o:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->H:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 41
    sget-object v2, Lu0/c;->p:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->I:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 42
    sget-object v2, Lu0/c;->f:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->b0:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 43
    :pswitch_4
    iput v5, v4, Lk0/mt;->i:I

    goto/16 :goto_0

    .line 44
    :pswitch_5
    iput v5, v4, Lk0/mt;->i:I

    .line 45
    sget-object v2, Lz/c;->d:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/o;->S:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v4, v15, [I

    aput v14, v4, v3

    aput v13, v4, v5

    aput v8, v4, v2

    aput v3, v4, v12

    .line 46
    iget-object v6, v0, Lmodule/canbus/o;->y:[I

    iget v7, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v7, v2

    aget v6, v6, v7

    aput v6, v4, v11

    aput v10, v4, v8

    const/16 v6, 0x21

    aput v6, v4, v9

    const/16 v7, 0xaa

    const/16 v16, 0x7

    aput v7, v4, v16

    invoke-static {v4}, Lz/k;->s([I)V

    new-array v4, v15, [I

    aput v14, v4, v3

    aput v13, v4, v5

    aput v8, v4, v2

    aput v3, v4, v12

    .line 47
    iget-object v7, v0, Lmodule/canbus/o;->y:[I

    iget v12, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v12, v2

    aget v7, v7, v12

    aput v7, v4, v11

    aput v10, v4, v8

    aput v6, v4, v9

    const/16 v7, 0xaa

    const/4 v12, 0x7

    aput v7, v4, v12

    invoke-static {v4}, Lz/k;->s([I)V

    new-array v4, v15, [I

    aput v14, v4, v3

    aput v13, v4, v5

    aput v8, v4, v2

    const/4 v7, 0x3

    aput v3, v4, v7

    .line 48
    iget-object v7, v0, Lmodule/canbus/o;->y:[I

    iget v12, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v12, v2

    aget v7, v7, v12

    aput v7, v4, v11

    aput v10, v4, v8

    aput v6, v4, v9

    const/16 v6, 0xaa

    const/4 v7, 0x7

    aput v6, v4, v7

    invoke-static {v4}, Lz/k;->s([I)V

    .line 49
    iget v4, v0, Lmodule/canbus/o;->z:I

    add-int/2addr v4, v5

    iput v4, v0, Lmodule/canbus/o;->z:I

    .line 50
    rem-int/2addr v4, v2

    iput v4, v0, Lmodule/canbus/o;->z:I

    goto :goto_0

    :pswitch_7
    new-array v4, v15, [I

    aput v14, v4, v3

    aput v13, v4, v5

    aput v8, v4, v2

    const/4 v6, 0x3

    aput v3, v4, v6

    .line 51
    iget-object v6, v0, Lmodule/canbus/o;->y:[I

    iget v7, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v7, v2

    aget v6, v6, v7

    aput v6, v4, v11

    aput v10, v4, v8

    const/16 v6, 0x20

    aput v6, v4, v9

    const/16 v7, 0xaa

    const/4 v12, 0x7

    aput v7, v4, v12

    invoke-static {v4}, Lz/k;->s([I)V

    new-array v4, v15, [I

    aput v14, v4, v3

    aput v13, v4, v5

    aput v8, v4, v2

    const/4 v7, 0x3

    aput v3, v4, v7

    .line 52
    iget-object v7, v0, Lmodule/canbus/o;->y:[I

    iget v12, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v12, v2

    aget v7, v7, v12

    aput v7, v4, v11

    aput v10, v4, v8

    aput v6, v4, v9

    const/16 v7, 0xaa

    const/4 v12, 0x7

    aput v7, v4, v12

    invoke-static {v4}, Lz/k;->s([I)V

    new-array v4, v15, [I

    aput v14, v4, v3

    aput v13, v4, v5

    aput v8, v4, v2

    const/4 v7, 0x3

    aput v3, v4, v7

    .line 53
    iget-object v7, v0, Lmodule/canbus/o;->y:[I

    iget v12, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v12, v2

    aget v7, v7, v12

    aput v7, v4, v11

    aput v10, v4, v8

    aput v6, v4, v9

    const/16 v6, 0xaa

    const/4 v7, 0x7

    aput v6, v4, v7

    invoke-static {v4}, Lz/k;->s([I)V

    .line 54
    iget v4, v0, Lmodule/canbus/o;->z:I

    add-int/2addr v4, v5

    iput v4, v0, Lmodule/canbus/o;->z:I

    .line 55
    rem-int/2addr v4, v2

    iput v4, v0, Lmodule/canbus/o;->z:I

    goto :goto_0

    .line 56
    :pswitch_8
    iput v5, v4, Lk0/mt;->h:I

    .line 57
    :goto_0
    iget-object v2, v0, Lk0/lt;->a:Lk0/mt;

    const/16 v4, 0xd

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, v2, Lk0/mt;->m:[I

    .line 58
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_0

    .line 59
    iget-object v2, v0, Lk0/lt;->a:Lk0/mt;

    iput v3, v2, Lk0/mt;->i:I

    .line 60
    :cond_0
    sget v2, Lk0/nt;->c:I

    if-eq v2, v8, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_2

    new-array v2, v8, [B

    .line 62
    fill-array-data v2, :array_1

    invoke-static {v2}, Lmodule/canbus/o;->J3([B)V

    .line 63
    iget-object v2, v0, Lmodule/canbus/o;->Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v5}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    aget-byte v0, v2, p2

    const/16 v3, 0xff

    and-int/2addr v0, v3

    const/16 v4, 0x35

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v4, :cond_59

    const/16 v4, 0x43

    const/4 v8, 0x2

    if-eq v0, v4, :cond_58

    const/16 v4, 0x55

    const/16 v11, 0x15

    const/16 v14, 0x14

    const/16 v15, 0xa

    const/4 v10, 0x6

    const/4 v13, 0x3

    if-eq v0, v4, :cond_4f

    const/16 v4, 0x7d

    const v16, 0xff00

    const/16 v12, 0x8

    if-eq v0, v4, :cond_3b

    const/16 v4, 0x7f

    if-eq v0, v4, :cond_3a

    const/16 v4, 0x1a

    const/4 v9, 0x5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_21

    .line 2
    :pswitch_0
    sget v0, Lk0/nt;->c:I

    if-eq v0, v14, :cond_5a

    if-eq v0, v11, :cond_5a

    if-eq v0, v4, :cond_5a

    const/16 v3, 0x24

    if-ne v0, v3, :cond_0

    goto/16 :goto_21

    :cond_0
    add-int/lit8 v0, p2, 0x2

    .line 3
    aget-byte v0, v2, v0

    if-ne v0, v7, :cond_1

    .line 4
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_21

    .line 5
    :cond_1
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_21

    :pswitch_1
    add-int/lit8 v0, p2, 0x2

    .line 6
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    .line 7
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_5a

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 9
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_21

    .line 10
    :cond_2
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 11
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_21

    :pswitch_2
    const/16 v0, 0x9c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 12
    aget-byte v5, v2, v4

    shr-int/2addr v5, v6

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9d

    new-array v3, v7, [I

    .line 13
    aget-byte v2, v2, v4

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_3
    add-int/lit8 v0, p2, 0x1

    .line 14
    aget-byte v3, v2, v0

    if-le v3, v13, :cond_5a

    .line 15
    :try_start_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x5

    aget-byte v0, v2, v0

    sub-int/2addr v0, v13

    const-string v5, "UTF-8"

    invoke-direct {v3, v2, v4, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v3, ""

    :goto_0
    add-int/lit8 v0, p2, 0x2

    .line 17
    aget-byte v0, v2, v0

    if-eq v0, v7, :cond_5

    if-eq v0, v8, :cond_4

    if-eq v0, v13, :cond_3

    goto/16 :goto_21

    :cond_3
    const/16 v0, 0x9b

    .line 18
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_21

    :cond_4
    const/16 v0, 0x9a

    .line 19
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_21

    :cond_5
    const/16 v0, 0x99

    .line 20
    invoke-static {v0, v3}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_21

    :pswitch_4
    const/16 v0, 0x92

    new-array v4, v7, [I

    add-int/lit8 v8, p2, 0x2

    .line 21
    aget-byte v9, v2, v8

    shr-int/2addr v9, v10

    and-int/2addr v9, v13

    aput v9, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x93

    new-array v4, v7, [I

    .line 22
    aget-byte v9, v2, v8

    shr-int/lit8 v5, v9, 0x4

    and-int/2addr v5, v13

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x94

    new-array v4, v7, [I

    .line 23
    aget-byte v5, v2, v8

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0xf

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x95

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 24
    aget-byte v5, v2, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x4

    aget-byte v8, v2, v8

    and-int/2addr v8, v3

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x96

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 25
    aget-byte v5, v2, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x6

    aget-byte v8, v2, v8

    and-int/2addr v8, v3

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x97

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 26
    aget-byte v5, v2, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v8, p2, 0x8

    aget-byte v8, v2, v8

    and-int/2addr v8, v3

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x98

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x9

    .line 27
    aget-byte v5, v2, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v7, p2, 0xa

    aget-byte v2, v2, v7

    and-int/2addr v2, v3

    or-int/2addr v2, v5

    aput v2, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_5
    const/16 v0, 0x88

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 28
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x89

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 29
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8a

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 30
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8b

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 31
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8c

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 32
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8d

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x7

    .line 33
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8e

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 34
    aget-byte v5, v2, v5

    and-int/2addr v5, v13

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x8f

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x9

    .line 35
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x90

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0xa

    .line 36
    aget-byte v5, v2, v5

    and-int/2addr v5, v3

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x91

    new-array v4, v7, [I

    const/16 v5, 0xb

    add-int/lit8 v5, p2, 0xb

    .line 37
    aget-byte v2, v2, v5

    and-int/2addr v2, v3

    aput v2, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_6
    add-int/lit8 v0, p2, 0x2

    .line 38
    aget-byte v0, v2, v0

    .line 39
    iget v2, v1, Lmodule/canbus/o;->Q:I

    if-eq v0, v2, :cond_5a

    .line 40
    iget-boolean v3, v1, Lmodule/canbus/o;->R:Z

    if-nez v3, :cond_9

    sget v4, Lu0/b;->a0:I

    if-ne v4, v7, :cond_9

    if-le v0, v2, :cond_7

    move v2, v6

    .line 41
    :goto_1
    iget v3, v1, Lmodule/canbus/o;->Q:I

    sub-int v3, v0, v3

    if-ge v2, v3, :cond_6

    const/4 v3, 0x7

    .line 42
    invoke-static {v3, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    .line 43
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_7
    if-ge v0, v2, :cond_a

    move v2, v6

    .line 44
    :goto_2
    iget v3, v1, Lmodule/canbus/o;->Q:I

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_8

    .line 45
    invoke-static {v12, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 46
    :cond_8
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    goto :goto_3

    :cond_9
    if-ne v3, v7, :cond_a

    .line 47
    iput-boolean v6, v1, Lmodule/canbus/o;->R:Z

    .line 48
    :cond_a
    :goto_3
    iput v0, v1, Lmodule/canbus/o;->Q:I

    goto/16 :goto_21

    :pswitch_7
    add-int/lit8 v0, p2, 0x2

    .line 49
    aget-byte v4, v2, v0

    const/16 v4, 0x6b

    new-array v5, v7, [I

    .line 50
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    aput v0, v5, v6

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_8
    const/16 v0, 0x66

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 51
    aget-byte v11, v2, v4

    shr-int/2addr v11, v5

    and-int/lit8 v11, v11, 0xf

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x67

    new-array v3, v7, [I

    .line 52
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 53
    aget-byte v11, v2, v4

    shr-int/2addr v11, v5

    and-int/lit8 v11, v11, 0xf

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v3, v7, [I

    .line 54
    aget-byte v11, v2, v4

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v3, v7, [I

    .line 55
    aget-byte v11, v2, v4

    shr-int/2addr v11, v8

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v3, v7, [I

    .line 56
    aget-byte v11, v2, v4

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6d

    new-array v3, v7, [I

    .line 57
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6e

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 58
    aget-byte v11, v2, v4

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6f

    new-array v3, v7, [I

    .line 59
    aget-byte v11, v2, v4

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x70

    new-array v3, v7, [I

    .line 60
    aget-byte v11, v2, v4

    shr-int/2addr v11, v5

    and-int/2addr v11, v13

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x71

    new-array v3, v7, [I

    .line 61
    aget-byte v11, v2, v4

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x72

    new-array v3, v7, [I

    .line 62
    aget-byte v11, v2, v4

    shr-int/2addr v11, v8

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x73

    new-array v3, v7, [I

    .line 63
    aget-byte v11, v2, v4

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x74

    new-array v3, v7, [I

    .line 64
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x75

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 65
    aget-byte v11, v2, v4

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x76

    new-array v3, v7, [I

    .line 66
    aget-byte v11, v2, v4

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v3, v7, [I

    .line 67
    aget-byte v11, v2, v4

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x78

    new-array v3, v7, [I

    .line 68
    aget-byte v11, v2, v4

    shr-int/2addr v11, v5

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7b

    new-array v3, v7, [I

    .line 69
    aget-byte v4, v2, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7c

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 70
    aget-byte v11, v2, v4

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7d

    new-array v3, v7, [I

    .line 71
    aget-byte v11, v2, v4

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7e

    new-array v3, v7, [I

    .line 72
    aget-byte v11, v2, v4

    shr-int/2addr v11, v5

    and-int/2addr v11, v13

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7f

    new-array v3, v7, [I

    .line 73
    aget-byte v11, v2, v4

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x80

    new-array v3, v7, [I

    .line 74
    aget-byte v11, v2, v4

    shr-int/2addr v11, v8

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x81

    new-array v3, v7, [I

    .line 75
    aget-byte v11, v2, v4

    shr-int/2addr v11, v7

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x82

    new-array v3, v7, [I

    .line 76
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x83

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x7

    .line 77
    aget-byte v11, v2, v4

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x84

    new-array v3, v7, [I

    .line 78
    aget-byte v11, v2, v4

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x85

    new-array v3, v7, [I

    .line 79
    aget-byte v11, v2, v4

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x86

    new-array v3, v7, [I

    .line 80
    aget-byte v11, v2, v4

    shr-int/2addr v11, v5

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x87

    new-array v3, v7, [I

    .line 81
    aget-byte v11, v2, v4

    shr-int/2addr v11, v13

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa5

    new-array v3, v7, [I

    .line 82
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    const/4 v11, 0x7

    and-int/2addr v4, v11

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xae

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x8

    .line 83
    aget-byte v11, v2, v4

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xaf

    new-array v3, v7, [I

    .line 84
    aget-byte v11, v2, v4

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb0

    new-array v3, v7, [I

    .line 85
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x1f

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa6

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x9

    .line 86
    aget-byte v11, v2, v4

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb1

    new-array v3, v7, [I

    .line 87
    aget-byte v11, v2, v4

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa7

    new-array v3, v7, [I

    .line 88
    aget-byte v11, v2, v4

    shr-int/2addr v11, v8

    and-int/2addr v11, v13

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb2

    new-array v3, v7, [I

    .line 89
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa8

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 90
    aget-byte v11, v2, v4

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa9

    new-array v3, v7, [I

    .line 91
    aget-byte v11, v2, v4

    shr-int/2addr v11, v8

    and-int/2addr v11, v13

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xaa

    new-array v3, v7, [I

    .line 92
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa0

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xb

    .line 93
    aget-byte v11, v2, v4

    const/4 v12, 0x7

    shr-int/2addr v11, v12

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa1

    new-array v3, v7, [I

    .line 94
    aget-byte v11, v2, v4

    shr-int/2addr v11, v10

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa2

    new-array v3, v7, [I

    .line 95
    aget-byte v11, v2, v4

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xa3

    new-array v3, v7, [I

    .line 96
    aget-byte v11, v2, v4

    shr-int/2addr v11, v5

    and-int/2addr v11, v7

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9e

    new-array v3, v7, [I

    .line 97
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xab

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xc

    .line 98
    aget-byte v11, v2, v4

    shr-int/2addr v11, v10

    and-int/2addr v11, v13

    aput v11, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xac

    new-array v3, v7, [I

    .line 99
    aget-byte v11, v2, v4

    shr-int/lit8 v9, v11, 0x5

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xad

    new-array v3, v7, [I

    .line 100
    aget-byte v9, v2, v4

    shr-int/2addr v9, v5

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb3

    new-array v3, v7, [I

    .line 101
    aget-byte v9, v2, v4

    shr-int/2addr v9, v13

    and-int/2addr v9, v7

    aput v9, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb4

    new-array v3, v7, [I

    .line 102
    aget-byte v9, v2, v4

    shr-int/lit8 v8, v9, 0x2

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb5

    new-array v3, v7, [I

    .line 103
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v13

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb6

    new-array v3, v7, [I

    const/16 v4, 0xd

    add-int/lit8 v4, p2, 0xd

    .line 104
    aget-byte v8, v2, v4

    const/4 v9, 0x7

    shr-int/2addr v8, v9

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb7

    new-array v3, v7, [I

    .line 105
    aget-byte v8, v2, v4

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb8

    new-array v3, v7, [I

    .line 106
    aget-byte v8, v2, v4

    shr-int/lit8 v5, v8, 0x4

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xb9

    new-array v3, v7, [I

    .line 107
    aget-byte v2, v2, v4

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0xf

    aput v2, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    .line 108
    :pswitch_9
    iget-boolean v0, v1, Lmodule/canbus/o;->A:Z

    if-eqz v0, :cond_b

    goto/16 :goto_21

    .line 109
    :cond_b
    sget v0, Lk0/nt;->a:I

    const v3, 0x600f4

    if-eq v0, v3, :cond_d

    const v3, 0xa00f4

    if-eq v0, v3, :cond_d

    const v3, 0x1200f4

    if-eq v0, v3, :cond_d

    const v3, 0xd00f4

    if-ne v0, v3, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v0, p2, 0x3

    .line 110
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x157c

    invoke-static {v0, v2, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_21

    :cond_d
    :goto_4
    add-int/lit8 v0, p2, 0x3

    .line 111
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x27d8

    invoke-static {v0, v2, v6, v3}, Lk0/qt;->n(IIZI)V

    goto/16 :goto_21

    :pswitch_a
    add-int/lit8 v0, p2, 0x2

    .line 112
    aget-byte v0, v2, v0

    add-int/lit8 v4, p2, 0x3

    .line 113
    aget-byte v4, v2, v4

    add-int/lit8 v5, p2, 0x4

    .line 114
    aget-byte v5, v2, v5

    const/16 v8, 0x64

    new-array v10, v7, [I

    and-int/2addr v0, v3

    aput v0, v10, v6

    .line 115
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v8, v7, [I

    and-int/2addr v4, v3

    aput v4, v8, v6

    .line 116
    invoke-static {v0, v8}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v4, v7, [I

    and-int/2addr v5, v3

    aput v5, v4, v6

    .line 117
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x9f

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 118
    aget-byte v2, v2, v5

    and-int/2addr v2, v3

    aput v2, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :pswitch_b
    add-int/lit8 v0, p2, 0x2

    .line 119
    aget-byte v0, v2, v0

    const-string v4, "persist.syu.reversefrontdoor"

    .line 120
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_e

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x7

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 121
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x6

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 122
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_e
    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x6

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 123
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x7

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 124
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x5

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 125
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x4

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 126
    invoke-static {v13, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x2

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 127
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x3

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 128
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    .line 129
    sget v4, Lk0/nt;->c:I

    if-eq v4, v8, :cond_f

    if-ne v4, v13, :cond_5a

    :cond_f
    const/16 v4, 0x3f5

    new-array v8, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 130
    aget-byte v2, v2, v5

    and-int/2addr v2, v3

    sub-int/2addr v2, v7

    aput v2, v8, v6

    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    shr-int/2addr v0, v7

    and-int/2addr v0, v7

    .line 131
    sget v2, Lu0/b;->o:I

    if-eqz v2, :cond_10

    goto/16 :goto_21

    :cond_10
    if-eqz v0, :cond_11

    .line 132
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 133
    invoke-static {}, Lk0/qt;->t()V

    goto/16 :goto_21

    .line 134
    :cond_11
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 135
    invoke-static {}, Lk0/qt;->f()V

    goto/16 :goto_21

    .line 136
    :pswitch_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 137
    sget v0, Lk0/nt;->a:I

    const v4, 0x400f4

    if-eq v0, v4, :cond_13

    const v4, 0x500f4

    if-eq v0, v4, :cond_13

    const v4, 0x1c00f4

    if-eq v0, v4, :cond_13

    const v4, 0x1000f4

    if-ne v0, v4, :cond_12

    goto :goto_6

    :cond_12
    add-int/lit8 v0, p2, 0x2

    .line 138
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 139
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 140
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    add-int/lit8 v0, p2, 0x5

    .line 141
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_21

    :cond_13
    :goto_6
    add-int/lit8 v0, p2, 0x2

    .line 142
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->D2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 143
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->E2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 144
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->F2(I)V

    add-int/lit8 v0, p2, 0x5

    .line 145
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->G2(I)V

    goto/16 :goto_21

    .line 146
    :pswitch_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 147
    sget v0, Lk0/nt;->a:I

    const v4, 0x400f4

    if-eq v0, v4, :cond_15

    const v4, 0x500f4

    if-eq v0, v4, :cond_15

    const v4, 0x1c00f4

    if-eq v0, v4, :cond_15

    const v4, 0x1000f4

    if-ne v0, v4, :cond_14

    goto :goto_7

    :cond_14
    add-int/lit8 v0, p2, 0x2

    .line 148
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 149
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 150
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/lit8 v0, p2, 0x5

    .line 151
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->L0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_21

    :cond_15
    :goto_7
    add-int/lit8 v0, p2, 0x2

    .line 152
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->R2(I)V

    add-int/lit8 v0, p2, 0x3

    .line 153
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->S2(I)V

    add-int/lit8 v0, p2, 0x4

    .line 154
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->T2(I)V

    add-int/lit8 v0, p2, 0x5

    .line 155
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    invoke-static {v0}, Ll0/c0;->K0(I)I

    move-result v0

    invoke-static {v0}, Lu0/d;->U2(I)V

    goto/16 :goto_21

    .line 156
    :pswitch_e
    sget v0, Lk0/nt;->c:I

    if-eq v0, v8, :cond_5a

    if-ne v0, v13, :cond_16

    goto/16 :goto_21

    :cond_16
    if-ne v0, v9, :cond_17

    .line 157
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_17

    goto/16 :goto_21

    .line 158
    :cond_17
    iput v10, v1, Lmodule/canbus/o;->o:I

    add-int/lit8 v0, p2, 0x2

    .line 159
    aget-byte v0, v2, v0

    add-int/lit8 v4, p2, 0x3

    .line 160
    aget-byte v4, v2, v4

    add-int/lit8 v5, p2, 0x4

    .line 161
    aget-byte v5, v2, v5

    add-int/lit8 v8, p2, 0x5

    .line 162
    aget-byte v8, v2, v8

    add-int/lit8 v10, p2, 0x6

    .line 163
    aget-byte v10, v2, v10

    new-array v12, v7, [I

    shr-int/lit8 v13, v0, 0x7

    and-int/2addr v13, v7

    aput v13, v12, v6

    .line 164
    invoke-static {v15, v12}, Lk0/qt;->y0(I[I)V

    new-array v12, v7, [I

    shr-int/lit8 v13, v0, 0x6

    and-int/2addr v13, v7

    aput v13, v12, v6

    const/16 v13, 0xb

    .line 165
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xc

    new-array v13, v7, [I

    shr-int/lit8 v15, v0, 0x5

    and-int/2addr v15, v7

    aput v15, v13, v6

    .line 166
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x3a

    new-array v13, v7, [I

    shr-int/lit8 v15, v0, 0x4

    and-int/2addr v15, v7

    aput v15, v13, v6

    .line 167
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    new-array v12, v7, [I

    shr-int/lit8 v13, v0, 0x3

    and-int/2addr v13, v7

    aput v13, v12, v6

    const/16 v13, 0xd

    .line 168
    invoke-static {v13, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xe

    new-array v13, v7, [I

    shr-int/lit8 v15, v0, 0x2

    and-int/2addr v15, v7

    aput v15, v13, v6

    .line 169
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x10

    new-array v13, v7, [I

    shr-int/lit8 v15, v0, 0x1

    and-int/2addr v15, v7

    aput v15, v13, v6

    .line 170
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0x41

    new-array v13, v7, [I

    shr-int/2addr v0, v6

    and-int/2addr v0, v7

    aput v0, v13, v6

    .line 171
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v0, v4, 0xff

    packed-switch v0, :pswitch_data_5

    move v0, v6

    :goto_8
    move v4, v0

    :goto_9
    move v12, v4

    goto :goto_a

    :pswitch_f
    move v0, v7

    goto :goto_8

    :pswitch_10
    move v12, v6

    move v0, v7

    move v4, v0

    goto :goto_a

    :pswitch_11
    move v0, v6

    move v12, v0

    move v4, v7

    goto :goto_a

    :pswitch_12
    move v0, v6

    move v4, v7

    goto :goto_9

    :pswitch_13
    move v0, v6

    move v4, v0

    move v12, v7

    goto :goto_a

    :pswitch_14
    move v4, v6

    move v0, v7

    move v12, v0

    goto :goto_a

    :pswitch_15
    move v4, v6

    move v12, v4

    move v0, v7

    :goto_a
    const/16 v13, 0x13

    new-array v15, v7, [I

    aput v0, v15, v6

    .line 172
    invoke-static {v13, v15}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    aput v4, v0, v6

    const/16 v4, 0x12

    .line 173
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    aput v12, v0, v6

    .line 174
    invoke-static {v14, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    and-int/lit8 v4, v5, 0xf

    aput v4, v0, v6

    .line 175
    invoke-static {v11, v0}, Lk0/qt;->y0(I[I)V

    if-eqz v4, :cond_19

    const-string v0, "persist.fyt.reversetemp"

    .line 176
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    new-array v0, v7, [I

    and-int/lit16 v4, v10, 0xff

    aput v4, v0, v6

    const/16 v4, 0x1b

    .line 177
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    and-int/lit16 v4, v8, 0xff

    aput v4, v0, v6

    const/16 v5, 0x1c

    .line 178
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_b

    :cond_18
    const/16 v4, 0x1b

    const/16 v5, 0x1c

    new-array v0, v7, [I

    and-int/2addr v8, v3

    aput v8, v0, v6

    .line 179
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    and-int/lit16 v4, v10, 0xff

    aput v4, v0, v6

    .line 180
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    :cond_19
    :goto_b
    const/16 v0, 0x11

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x8

    .line 181
    aget-byte v5, v2, v5

    const/4 v8, 0x7

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    .line 182
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    add-int/lit8 v0, p2, 0x7

    .line 183
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_1b

    if-nez v0, :cond_1a

    goto :goto_c

    :cond_1a
    mul-int/2addr v0, v9

    add-int/lit16 v0, v0, 0x258

    .line 184
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_21

    .line 185
    :cond_1b
    :goto_c
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_21

    :pswitch_16
    add-int/lit8 v0, p2, 0x2

    .line 186
    aget-byte v0, v2, v0

    add-int/lit8 v4, p2, 0x3

    .line 187
    aget-byte v2, v2, v4

    .line 188
    iget v4, v1, Lmodule/canbus/o;->p:I

    if-eq v4, v2, :cond_5a

    .line 189
    iput v2, v1, Lmodule/canbus/o;->p:I

    or-int/lit16 v4, v0, 0x80

    and-int/2addr v4, v3

    .line 190
    iput v4, v1, Lmodule/canbus/o;->h:I

    move v4, v6

    .line 191
    :goto_d
    iget-object v5, v1, Lmodule/canbus/o;->j:[[I

    array-length v8, v5

    if-ge v4, v8, :cond_1d

    .line 192
    iget v8, v1, Lmodule/canbus/o;->h:I

    aget-object v9, v5, v4

    aget v9, v9, v6

    if-ne v8, v9, :cond_1c

    if-eqz v8, :cond_1d

    .line 193
    iput v4, v1, Lmodule/canbus/o;->g:I

    goto :goto_e

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1d
    :goto_e
    and-int/2addr v0, v3

    packed-switch v0, :pswitch_data_6

    and-int/lit16 v0, v2, 0xff

    if-ne v0, v7, :cond_21

    .line 194
    array-length v0, v5

    if-ge v4, v0, :cond_5a

    .line 195
    aget-object v0, v5, v4

    aget v0, v0, v7

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :pswitch_17
    and-int/lit16 v0, v2, 0xff

    if-ne v0, v7, :cond_5a

    const-string v0, "persist.fyt.showduduair"

    .line 196
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 197
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 198
    iput v10, v1, Lmodule/canbus/o;->o:I

    .line 199
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->D3()V

    goto/16 :goto_21

    .line 200
    :cond_1e
    invoke-static {v10, v6}, Ll0/b0;->l0(II)V

    .line 201
    invoke-static {v10, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :pswitch_18
    and-int/lit16 v0, v2, 0xff

    if-ne v0, v7, :cond_5a

    const-string v0, "persist.fyt.showduduair"

    .line 202
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 203
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 204
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->D3()V

    goto/16 :goto_21

    :cond_1f
    const/16 v0, 0x1d

    .line 205
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_21

    :pswitch_19
    and-int/lit16 v0, v2, 0xff

    if-ne v0, v7, :cond_5a

    const-string v0, "persist.fyt.showduduair"

    .line 206
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 207
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->A3()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 208
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->D3()V

    goto/16 :goto_21

    :cond_20
    const/16 v0, 0x1c

    .line 209
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->c3(I)V

    goto/16 :goto_21

    :cond_21
    if-nez v0, :cond_5a

    .line 210
    iget v0, v1, Lmodule/canbus/o;->g:I

    array-length v2, v5

    if-ge v0, v2, :cond_22

    if-eq v0, v3, :cond_22

    .line 211
    aget-object v0, v5, v0

    aget v0, v0, v7

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 212
    :cond_22
    iput v3, v1, Lmodule/canbus/o;->g:I

    goto/16 :goto_21

    :pswitch_1a
    add-int/lit8 v0, p2, 0x1

    .line 213
    aget-byte v0, v2, v0

    if-ne v0, v8, :cond_30

    .line 214
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    add-int/lit8 v0, p2, 0x2

    .line 215
    aget-byte v0, v2, v0

    add-int/lit8 v8, p2, 0x3

    .line 216
    aget-byte v2, v2, v8

    and-int/2addr v0, v3

    .line 217
    iput v0, v1, Lmodule/canbus/o;->h:I

    move v0, v6

    .line 218
    :goto_f
    iget-object v8, v1, Lmodule/canbus/o;->j:[[I

    array-length v10, v8

    if-ge v0, v10, :cond_24

    .line 219
    iget v10, v1, Lmodule/canbus/o;->h:I

    aget-object v12, v8, v0

    aget v12, v12, v6

    if-ne v10, v12, :cond_23

    if-eqz v10, :cond_24

    .line 220
    iput v0, v1, Lmodule/canbus/o;->g:I

    .line 221
    iput v10, v1, Lmodule/canbus/o;->i:I

    goto :goto_10

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 222
    :cond_24
    :goto_10
    iget v10, v1, Lmodule/canbus/o;->h:I

    const/16 v12, 0x9

    if-eq v10, v12, :cond_2c

    if-eq v10, v15, :cond_27

    and-int/2addr v2, v3

    if-ne v2, v7, :cond_25

    .line 223
    array-length v2, v8

    if-ge v0, v2, :cond_5a

    .line 224
    aget-object v0, v8, v0

    aget v0, v0, v7

    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_25
    if-nez v2, :cond_5a

    .line 225
    iget v0, v1, Lmodule/canbus/o;->g:I

    array-length v2, v8

    if-ge v0, v2, :cond_26

    if-eq v0, v3, :cond_26

    .line 226
    aget-object v0, v8, v0

    aget v0, v0, v7

    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    .line 227
    :cond_26
    iput v3, v1, Lmodule/canbus/o;->g:I

    goto/16 :goto_21

    :cond_27
    and-int/lit16 v0, v2, 0xff

    if-ne v0, v7, :cond_5a

    .line 228
    sget v0, Lk0/nt;->c:I

    if-eq v0, v11, :cond_2b

    const/16 v2, 0x17

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x22

    if-ne v0, v2, :cond_28

    goto :goto_11

    .line 229
    :cond_28
    sget v0, Lh0/c;->E:I

    if-eq v0, v13, :cond_2a

    if-eq v0, v5, :cond_2a

    if-eq v0, v9, :cond_2a

    const-string v0, "com.syu.carlink"

    .line 230
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 231
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 232
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_29
    const/16 v0, 0xd

    .line 233
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 234
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    .line 235
    :cond_2a
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 236
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    .line 237
    :cond_2b
    :goto_11
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 238
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_2c
    and-int/lit16 v0, v2, 0xff

    if-ne v0, v7, :cond_5a

    .line 239
    sget v0, Lk0/nt;->c:I

    if-eq v0, v11, :cond_2f

    const/16 v2, 0x17

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x22

    if-ne v0, v2, :cond_2d

    goto :goto_12

    .line 240
    :cond_2d
    sget v0, Lh0/c;->E:I

    if-eq v0, v13, :cond_2e

    if-eq v0, v9, :cond_2e

    const/16 v0, 0x12

    .line 241
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 242
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    .line 243
    :cond_2e
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    .line 244
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    :cond_2f
    :goto_12
    const/16 v0, 0x12

    .line 245
    invoke-static {v0, v6}, Ll0/b0;->l0(II)V

    .line 246
    invoke-static {v0, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_21

    .line 247
    :cond_30
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "air data = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x2

    .line 248
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    shr-int/lit8 v4, v0, 0x5

    const/4 v10, 0x7

    and-int/2addr v4, v10

    if-eq v4, v7, :cond_35

    if-eq v4, v8, :cond_34

    if-eq v4, v13, :cond_33

    if-eq v4, v5, :cond_32

    if-eq v4, v9, :cond_31

    move v4, v6

    move v10, v4

    :goto_13
    move v12, v10

    goto :goto_14

    :cond_31
    move v10, v6

    move v12, v10

    move v4, v7

    goto :goto_14

    :cond_32
    move v10, v6

    move v4, v7

    move v12, v4

    goto :goto_14

    :cond_33
    move v4, v6

    move v10, v4

    move v12, v7

    goto :goto_14

    :cond_34
    move v4, v6

    move v10, v7

    goto :goto_13

    :cond_35
    move v4, v6

    move v12, v4

    move v10, v7

    :goto_14
    new-array v13, v7, [I

    aput v4, v13, v6

    const/16 v4, 0x12

    .line 249
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x13

    new-array v13, v7, [I

    aput v10, v13, v6

    .line 250
    invoke-static {v4, v13}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    aput v12, v4, v6

    .line 251
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x4

    and-int/2addr v10, v7

    aput v10, v4, v6

    const/16 v10, 0xd

    .line 252
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v4, v0, 0x3

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_36

    const/16 v4, 0xc

    new-array v10, v7, [I

    aput v6, v10, v6

    .line 253
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_36
    shr-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_37

    const/16 v4, 0xc

    new-array v10, v7, [I

    aput v7, v10, v6

    .line 254
    invoke-static {v4, v10}, Lk0/qt;->y0(I[I)V

    :cond_37
    :goto_15
    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x1

    and-int/2addr v10, v7

    aput v10, v4, v6

    const/16 v10, 0xb

    .line 255
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    shr-int/2addr v0, v6

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_38

    new-array v0, v7, [I

    aput v6, v0, v6

    .line 256
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_38
    new-array v0, v7, [I

    aput v7, v0, v6

    .line 257
    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    :goto_16
    add-int/lit8 v0, p2, 0x3

    .line 258
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    new-array v3, v7, [I

    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    .line 259
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x3

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 260
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x2

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 261
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v4, v7, [I

    shr-int/lit8 v10, v0, 0x1

    and-int/2addr v10, v7

    aput v10, v4, v6

    .line 262
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v4, v7, [I

    shr-int/2addr v0, v6

    and-int/2addr v0, v7

    aput v0, v4, v6

    .line 263
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const-string v0, "persist.fyt.reversetemp"

    .line 264
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_39

    new-array v0, v7, [I

    add-int/lit8 v3, p2, 0x5

    .line 265
    aget-byte v3, v2, v3

    shr-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x3f

    aput v3, v0, v6

    const/16 v3, 0x1b

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    add-int/lit8 v3, p2, 0x4

    .line 266
    aget-byte v2, v2, v3

    shr-int/2addr v2, v8

    and-int/lit8 v2, v2, 0x3f

    aput v2, v0, v6

    const/16 v2, 0x1c

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_39
    new-array v0, v7, [I

    add-int/lit8 v3, p2, 0x4

    .line 267
    aget-byte v3, v2, v3

    shr-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x3f

    aput v3, v0, v6

    const/16 v3, 0x1b

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    add-int/lit8 v3, p2, 0x5

    .line 268
    aget-byte v2, v2, v3

    shr-int/2addr v2, v8

    and-int/lit8 v2, v2, 0x3f

    aput v2, v0, v6

    const/16 v2, 0x1c

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    .line 269
    :cond_3a
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v0, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_3b
    add-int/lit8 v0, p2, 0x2

    .line 270
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    if-eq v0, v7, :cond_3f

    if-eq v0, v13, :cond_3e

    if-eq v0, v12, :cond_3d

    if-eq v0, v15, :cond_3c

    goto/16 :goto_21

    :cond_3c
    const/16 v0, 0x408

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 271
    aget-byte v5, v2, v5

    shl-int/2addr v5, v12

    and-int v5, v5, v16

    add-int/lit8 v7, p2, 0x3

    aget-byte v2, v2, v7

    and-int/2addr v2, v3

    or-int/2addr v2, v5

    aput v2, v4, v6

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_21

    :cond_3d
    add-int/lit8 v0, p2, 0x3

    .line 272
    aget-byte v0, v2, v0

    add-int/lit8 v3, p2, 0x4

    .line 273
    aget-byte v2, v2, v3

    const/16 v3, 0x21c

    .line 274
    invoke-static {v0, v2, v7, v3}, Lk0/qt;->i(IIZI)V

    .line 275
    iput-boolean v7, v1, Lmodule/canbus/o;->A:Z

    goto/16 :goto_21

    :cond_3e
    add-int/lit8 v0, p2, 0x4

    .line 276
    aget-byte v0, v2, v0

    shl-int/2addr v0, v12

    and-int v0, v0, v16

    add-int/lit8 v4, p2, 0x3

    aget-byte v2, v2, v4

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v0, v3, v6

    .line 277
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 278
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v8, [I

    aput v7, v4, v6

    aput v0, v4, v7

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_21

    .line 279
    :cond_3f
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x18

    if-ne v0, v3, :cond_44

    .line 280
    sget v0, Lmodule/canbus/o;->e0:I

    if-ne v0, v7, :cond_4d

    .line 281
    iget v0, v1, Lmodule/canbus/o;->s:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v2, v3

    shr-int/2addr v4, v13

    and-int/2addr v4, v7

    if-eq v0, v4, :cond_4d

    .line 282
    aget-byte v0, v2, v3

    shr-int/2addr v0, v13

    and-int/2addr v0, v7

    iput v0, v1, Lmodule/canbus/o;->s:I

    if-ne v0, v7, :cond_41

    .line 283
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    new-array v0, v10, [I

    .line 284
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const-wide/16 v3, 0x64

    .line 285
    invoke-static {v3, v4}, La/i;->a0(J)V

    new-array v0, v10, [I

    .line 286
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 287
    :cond_40
    iput v14, v1, Lmodule/canbus/o;->r:I

    .line 288
    iget-object v0, v1, Lmodule/canbus/o;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1a

    .line 289
    :cond_41
    iget v0, v1, Lmodule/canbus/o;->r:I

    if-lez v0, :cond_42

    .line 290
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v3, v1, Lmodule/canbus/o;->q:Ljava/lang/Runnable;

    invoke-static {v0, v3}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 291
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v3, v1, Lmodule/canbus/o;->q:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa0

    invoke-static {v0, v3, v8, v9}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto/16 :goto_1a

    .line 292
    :cond_42
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    new-array v0, v10, [I

    .line 293
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    const-wide/16 v3, 0x64

    .line 294
    invoke-static {v3, v4}, La/i;->a0(J)V

    new-array v0, v10, [I

    .line 295
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 296
    :cond_43
    iget-object v0, v1, Lmodule/canbus/o;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    goto/16 :goto_1a

    :cond_44
    const/16 v3, 0x19

    if-eq v0, v3, :cond_45

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_45

    const/16 v3, 0x16

    if-ne v0, v3, :cond_4d

    .line 297
    :cond_45
    sget v0, Lu0/b;->o:I

    if-ne v0, v7, :cond_4d

    .line 298
    iget v0, v1, Lmodule/canbus/o;->s:I

    add-int/lit8 v3, p2, 0x3

    aget-byte v4, v2, v3

    shr-int/2addr v4, v13

    and-int/2addr v4, v7

    if-eq v0, v4, :cond_49

    .line 299
    aget-byte v0, v2, v3

    shr-int/2addr v0, v13

    and-int/2addr v0, v7

    iput v0, v1, Lmodule/canbus/o;->s:I

    if-ne v0, v7, :cond_46

    new-array v0, v10, [I

    .line 300
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 301
    iput v14, v1, Lmodule/canbus/o;->r:I

    .line 302
    iget-object v0, v1, Lmodule/canbus/o;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_18

    .line 303
    :cond_46
    iget v0, v1, Lmodule/canbus/o;->r:I

    if-lez v0, :cond_47

    .line 304
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v4, v1, Lmodule/canbus/o;->q:Ljava/lang/Runnable;

    invoke-static {v0, v4}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 305
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v4, v1, Lmodule/canbus/o;->q:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa0

    invoke-static {v0, v4, v8, v9}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_18

    .line 306
    :cond_47
    iget v0, v1, Lmodule/canbus/o;->P:I

    if-ne v0, v7, :cond_48

    new-array v0, v10, [I

    .line 307
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_17

    :cond_48
    new-array v0, v10, [I

    .line 308
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    .line 309
    :goto_17
    iget-object v0, v1, Lmodule/canbus/o;->t:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 310
    :cond_49
    :goto_18
    iget v0, v1, Lmodule/canbus/o;->w:I

    aget-byte v4, v2, v3

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    if-eq v0, v4, :cond_4d

    .line 311
    aget-byte v0, v2, v3

    shr-int/2addr v0, v5

    and-int/2addr v0, v7

    iput v0, v1, Lmodule/canbus/o;->w:I

    if-ne v0, v7, :cond_4a

    new-array v0, v10, [I

    .line 312
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    .line 313
    iput v14, v1, Lmodule/canbus/o;->v:I

    .line 314
    iget-object v0, v1, Lmodule/canbus/o;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 315
    :cond_4a
    iget v0, v1, Lmodule/canbus/o;->v:I

    if-lez v0, :cond_4b

    .line 316
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v3, v1, Lmodule/canbus/o;->u:Ljava/lang/Runnable;

    invoke-static {v0, v3}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 317
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v3, v1, Lmodule/canbus/o;->u:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa0

    invoke-static {v0, v3, v8, v9}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    goto :goto_1a

    .line 318
    :cond_4b
    iget v0, v1, Lmodule/canbus/o;->P:I

    if-ne v0, v7, :cond_4c

    new-array v0, v10, [I

    .line 319
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_19

    :cond_4c
    new-array v0, v10, [I

    .line 320
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    .line 321
    :goto_19
    iget-object v0, v1, Lmodule/canbus/o;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    :cond_4d
    :goto_1a
    const-string v0, "persist.fyt.leftrightlighttype"

    .line 322
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4e

    add-int/lit8 v0, p2, 0x3

    .line 323
    aget-byte v3, v2, v0

    shr-int/2addr v3, v13

    and-int/2addr v3, v7

    aget-byte v0, v2, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v7

    invoke-static {v3, v0, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_21

    :cond_4e
    add-int/lit8 v0, p2, 0x3

    .line 324
    aget-byte v3, v2, v0

    shr-int/2addr v3, v13

    and-int/2addr v3, v7

    aget-byte v0, v2, v0

    shr-int/2addr v0, v5

    and-int/2addr v0, v7

    invoke-static {v3, v0, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_21

    .line 325
    :cond_4f
    sget v0, Lk0/nt;->c:I

    if-eq v0, v8, :cond_50

    if-eq v0, v13, :cond_50

    goto/16 :goto_21

    :cond_50
    add-int/lit8 v0, p2, 0x2

    .line 326
    aget-byte v4, v2, v0

    add-int/lit8 v8, p2, 0x3

    .line 327
    aget-byte v9, v2, v8

    add-int/lit8 v12, p2, 0x4

    .line 328
    aget-byte v12, v2, v12

    add-int/lit8 v16, p2, 0x6

    .line 329
    aget-byte v16, v2, v16

    add-int/lit8 v17, p2, 0x7

    .line 330
    aget-byte v17, v2, v17

    const-string v15, "persist.fyt.reversetemp"

    .line 331
    invoke-static {v15, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_51

    .line 332
    aget-byte v4, v2, v8

    .line 333
    aget-byte v9, v2, v0

    :cond_51
    and-int/lit16 v0, v4, 0xff

    const/16 v4, 0x10

    if-eq v0, v4, :cond_53

    const/16 v4, 0x50

    if-eq v0, v4, :cond_52

    new-array v4, v7, [I

    aput v0, v4, v6

    const/16 v0, 0x1b

    .line 334
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    :cond_52
    const/16 v0, 0x1b

    new-array v4, v7, [I

    const/4 v8, -0x3

    aput v8, v4, v6

    .line 335
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1b

    :cond_53
    const/16 v0, 0x1b

    new-array v4, v7, [I

    const/4 v8, -0x2

    aput v8, v4, v6

    .line 336
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    :goto_1b
    and-int/lit16 v0, v9, 0xff

    const/16 v4, 0x10

    if-eq v0, v4, :cond_55

    const/16 v4, 0x50

    if-eq v0, v4, :cond_54

    new-array v4, v7, [I

    aput v0, v4, v6

    const/16 v0, 0x1c

    .line 337
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1c

    :cond_54
    const/16 v0, 0x1c

    new-array v4, v7, [I

    const/4 v8, -0x3

    aput v8, v4, v6

    .line 338
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1c

    :cond_55
    const/16 v0, 0x1c

    new-array v4, v7, [I

    const/4 v8, -0x2

    aput v8, v4, v6

    .line 339
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    :goto_1c
    and-int/lit8 v0, v12, 0xf

    new-array v4, v7, [I

    and-int/2addr v0, v3

    aput v0, v4, v6

    .line 340
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v0, v12, 0x4

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_7

    goto :goto_1d

    :pswitch_1b
    move v0, v6

    move v4, v0

    move v5, v7

    goto :goto_1f

    :pswitch_1c
    move v4, v6

    move v0, v7

    move v5, v0

    goto :goto_1f

    :pswitch_1d
    move v0, v6

    move v4, v7

    goto :goto_1e

    :pswitch_1e
    move v0, v6

    move v5, v0

    move v4, v7

    goto :goto_1f

    :pswitch_1f
    move v5, v6

    move v0, v7

    move v4, v0

    goto :goto_1f

    :pswitch_20
    move v4, v6

    move v5, v4

    move v0, v7

    goto :goto_1f

    :goto_1d
    move v0, v6

    move v4, v0

    :goto_1e
    move v5, v4

    :goto_1f
    const/16 v8, 0x13

    new-array v9, v7, [I

    aput v0, v9, v6

    .line 341
    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    aput v4, v0, v6

    .line 342
    invoke-static {v14, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    aput v5, v0, v6

    const/16 v4, 0x12

    .line 343
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    shr-int/lit8 v4, v16, 0x0

    and-int/2addr v4, v7

    aput v4, v0, v6

    const/16 v4, 0xd

    .line 344
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v7, [I

    shr-int/lit8 v4, v16, 0x1

    and-int/2addr v4, v7

    aput v4, v0, v6

    const/16 v4, 0xb

    .line 345
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v4, v7, [I

    shr-int/lit8 v5, v16, 0x2

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 346
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x41

    new-array v4, v7, [I

    shr-int/lit8 v5, v16, 0x5

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 347
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v4, v7, [I

    shr-int/lit8 v5, v16, 0x6

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 348
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v4, v7, [I

    shr-int/lit8 v5, v17, 0x0

    and-int/2addr v5, v13

    aput v5, v4, v6

    .line 349
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    .line 350
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v0, 0x9

    add-int/lit8 v0, p2, 0x9

    .line 351
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_57

    if-nez v0, :cond_56

    goto :goto_20

    :cond_56
    const/16 v2, 0xa

    mul-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x258

    .line 352
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_21

    .line 353
    :cond_57
    :goto_20
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_21

    :cond_58
    add-int/lit8 v0, p2, 0x2

    .line 354
    aget-byte v0, v2, v0

    and-int/2addr v0, v3

    packed-switch v0, :pswitch_data_8

    :pswitch_21
    goto/16 :goto_21

    :pswitch_22
    const-string v0, "\u8bf7\u5e26\u597d\u968f\u8eab\u7269\u54c1\u9501\u95ed\u8f66\u95e8"

    .line 355
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_23
    const-string v0, "\u8bf7\u786e\u8ba4\u94a5\u5319\u662f\u5426\u5728\u8f66\u5185"

    .line 356
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_24
    const-string v0, "\u8bf7\u5173\u95ed\u8f66\u706f"

    .line 357
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_25
    const-string v0, "\u8bf7\u7cfb\u597d\u5b89\u5168\u5e26"

    .line 358
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_26
    const-string v0, "\u8bf7\u5173\u95ed\u8f66\u95e8"

    .line 359
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_27
    const-string v0, "\u80ce\u538b\u80ce\u6e29\u5f02\u5e38"

    .line 360
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_28
    const-string v0, "\u80ce\u6e29\u5f02\u5e38"

    .line 361
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_29
    const-string v0, "\u80ce\u538b\u5f02\u5e38"

    .line 362
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_2a
    const-string v0, "\u6cb9\u91cf\u4f4e"

    .line 363
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_2b
    const-string v0, "\u8bf7\u5e26\u597d\u94a5\u5319"

    .line 364
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_2c
    const-string v0, "\u4e3b\u4eba,\u5f00\u8f66\u7d2f\u4e86\u5427,\u54b1\u4eec\u4f11\u606f\u4e0b\u5427"

    .line 365
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_2d
    const-string v0, "\u5f15\u64ce\u5df2\u9000\u51fa,\u8bf7\u624b\u52a8\u7740\u8f66"

    .line 366
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_2e
    const-string v0, "\u8bf7\u5173\u95ed\u7535\u6e90,\u4e3b\u673a\u81ea\u5df1\u53d1\u58f0\u97f3"

    .line 367
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_2f
    const-string v0, "\u60a8\u7684\u7231\u8f66\u9700\u8981\u4fdd\u517b,\u662f\u5426\u5bfc\u822a\u5230\u9644\u8fd1\u76844S\u5e97"

    .line 368
    invoke-virtual {v1, v0}, Lmodule/canbus/o;->z3(Ljava/lang/String;)V

    goto :goto_21

    .line 369
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/o;->H3()V

    goto :goto_21

    :cond_59
    const/16 v0, 0x1d

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 370
    aget-byte v8, v2, v4

    shr-int/2addr v8, v5

    and-int/lit8 v8, v8, 0xf

    aput v8, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1e

    new-array v3, v7, [I

    .line 371
    aget-byte v4, v2, v4

    shr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1f

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 372
    aget-byte v8, v2, v4

    shr-int/lit8 v5, v8, 0x4

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x20

    new-array v3, v7, [I

    .line 373
    aget-byte v2, v2, v4

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0xf

    aput v2, v3, v6

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    :cond_5a
    :goto_21
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1a
        :pswitch_16
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x37
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x37
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
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
        :pswitch_21
        :pswitch_22
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x4
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x2
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x3
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x2
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x1
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/o;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/o;->b:Lo1/g0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/canbus/o;->E3(I)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/o;->U:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/o;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lz/c;->d:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->Z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/o;->L:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lmodule/canbus/o;->X:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lmodule/canbus/o;->W:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lu0/c;->p:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 15
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->b0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 16
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/o;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lmodule/canbus/o;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xba

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

    const/4 v4, 0x7

    const/16 v5, 0xe3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v1, :cond_13

    if-eq v1, v10, :cond_12

    const/16 v13, 0x83

    if-eq v1, v11, :cond_10

    const-wide/16 v14, 0x64

    const/16 v3, 0xa

    if-eq v1, v6, :cond_e

    const/16 v4, 0x3eb

    if-eq v1, v4, :cond_b

    const/16 v4, 0x3ed

    if-eq v1, v4, :cond_5

    const/16 v3, 0x405

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v2, :cond_15

    .line 1
    array-length v1, v2

    if-lt v1, v11, :cond_15

    new-array v1, v9, [I

    aput v5, v1, v12

    const/16 v3, 0x90

    aput v3, v1, v10

    aput v11, v1, v11

    .line 2
    aget v3, v2, v12

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_1
    if-eqz v2, :cond_15

    .line 3
    array-length v1, v2

    if-lt v1, v11, :cond_15

    new-array v1, v9, [I

    aput v5, v1, v12

    const/16 v3, 0x86

    aput v3, v1, v10

    aput v11, v1, v11

    .line 4
    aget v3, v2, v12

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_2
    if-eqz v2, :cond_15

    .line 5
    array-length v1, v2

    if-lt v1, v11, :cond_15

    new-array v1, v8, [I

    aput v5, v1, v12

    const/16 v3, 0x88

    aput v3, v1, v10

    aput v7, v1, v11

    .line 6
    aget v3, v2, v12

    aput v3, v1, v7

    aget v3, v2, v10

    aput v3, v1, v6

    aget v2, v2, v11

    aput v2, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_3
    if-eqz v2, :cond_15

    .line 7
    array-length v1, v2

    if-lt v1, v11, :cond_15

    new-array v1, v9, [I

    aput v5, v1, v12

    const/16 v3, 0xe0

    aput v3, v1, v10

    aput v11, v1, v11

    .line 8
    aget v3, v2, v12

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 9
    :cond_0
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 10
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch_x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\\\\\\touch_y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "touch_state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v12

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v10, :cond_15

    .line 12
    aget v1, v2, v10

    .line 13
    aget v3, v2, v11

    .line 14
    aget v2, v2, v12

    if-nez v2, :cond_15

    .line 15
    invoke-static {}, La/f;->w()I

    move-result v2

    invoke-static {}, La/f;->w()I

    move-result v4

    mul-int/lit8 v4, v4, 0x46

    div-int/lit16 v4, v4, 0x400

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_1

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit8 v2, v2, 0x46

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_1

    new-array v1, v8, [I

    .line 16
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 17
    :cond_1
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0x168

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_2

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x96

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_2

    new-array v1, v8, [I

    .line 18
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 19
    :cond_2
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_3

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x1c2

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_3

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0xc8

    div-int/lit16 v2, v2, 0x258

    if-le v3, v2, :cond_3

    new-array v1, v8, [I

    .line 20
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 21
    :cond_3
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0x1a4

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_4

    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0xdc

    div-int/lit16 v2, v2, 0x400

    if-le v1, v2, :cond_4

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x1c2

    div-int/lit16 v2, v2, 0x258

    if-ge v3, v2, :cond_4

    invoke-static {}, La/f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0xc8

    div-int/lit16 v2, v2, 0x258

    if-le v3, v2, :cond_4

    new-array v1, v8, [I

    .line 22
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 23
    :cond_4
    invoke-static {}, La/f;->w()I

    move-result v2

    mul-int/lit16 v2, v2, 0x104

    div-int/lit16 v2, v2, 0x400

    if-ge v1, v2, :cond_15

    invoke-static {}, La/f;->i()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1e0

    div-int/lit16 v1, v1, 0x258

    if-le v3, v1, :cond_15

    new-array v1, v8, [I

    .line 24
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 25
    :cond_5
    sget v1, Lk0/nt;->c:I

    if-eqz v1, :cond_8

    if-eq v1, v10, :cond_8

    if-eq v1, v6, :cond_8

    if-eq v1, v9, :cond_8

    const/16 v4, 0x1c

    if-ne v1, v4, :cond_6

    goto :goto_0

    .line 26
    :cond_6
    aget v1, v2, v12

    if-ne v1, v3, :cond_7

    new-array v1, v8, [I

    .line 27
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_7
    new-array v1, v8, [I

    aput v5, v1, v12

    aput v13, v1, v10

    aput v7, v1, v11

    aput v3, v1, v7

    .line 28
    aget v2, v2, v12

    add-int/2addr v2, v10

    aput v2, v1, v6

    aput v12, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_8
    :goto_0
    if-eqz v2, :cond_15

    .line 29
    array-length v1, v2

    if-lez v1, :cond_15

    .line 30
    aget v1, v2, v12

    if-gez v1, :cond_9

    .line 31
    aput v12, v2, v12

    goto :goto_1

    .line 32
    :cond_9
    aget v1, v2, v12

    if-le v1, v11, :cond_a

    .line 33
    aput v11, v2, v12

    .line 34
    :cond_a
    :goto_1
    aget v1, v2, v12

    add-int/2addr v1, v10

    aput v1, v2, v12

    .line 35
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/o;->E3(I)V

    goto/16 :goto_3

    .line 36
    :cond_b
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_c

    new-array v1, v8, [I

    .line 37
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 38
    invoke-static {v14, v15}, La/i;->a0(J)V

    new-array v1, v8, [I

    .line 39
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 40
    :cond_c
    sget v1, Lu0/b;->o:I

    if-ne v1, v10, :cond_d

    new-array v1, v8, [I

    .line 41
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_d
    new-array v1, v8, [I

    .line 42
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_e
    new-array v1, v3, [B

    const/16 v3, 0x2e

    aput-byte v3, v1, v12

    const/16 v3, -0x39

    aput-byte v3, v1, v10

    aput-byte v8, v1, v11

    .line 43
    aget v3, v2, v12

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    aget v3, v2, v10

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    aget v3, v2, v11

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    aget v3, v2, v7

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    aget v3, v2, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    aget v3, v2, v9

    int-to-byte v3, v3

    const/16 v4, 0x8

    aput-byte v3, v1, v4

    const/16 v3, 0x9

    aput-byte v12, v1, v3

    invoke-static {v1}, Lmodule/canbus/o;->J3([B)V

    .line 44
    aget v1, v2, v12

    if-nez v1, :cond_f

    aget v1, v2, v10

    if-nez v1, :cond_f

    aget v1, v2, v11

    if-nez v1, :cond_f

    aget v1, v2, v7

    if-nez v1, :cond_f

    aget v1, v2, v6

    if-nez v1, :cond_f

    aget v1, v2, v9

    if-nez v1, :cond_f

    .line 45
    invoke-static {v14, v15}, La/i;->a0(J)V

    new-array v1, v9, [B

    .line 46
    fill-array-data v1, :array_a

    invoke-static {v1}, Lmodule/canbus/o;->J3([B)V

    .line 47
    :cond_f
    iput v10, v0, Lmodule/canbus/o;->Y:I

    goto/16 :goto_3

    :cond_10
    if-eqz v2, :cond_15

    .line 48
    array-length v1, v2

    if-lt v1, v11, :cond_15

    .line 49
    aget v1, v2, v12

    const/16 v3, 0xff

    if-ne v1, v3, :cond_11

    .line 50
    aget v1, v2, v10

    invoke-virtual {v0, v1}, Lmodule/canbus/o;->F3(I)V

    goto/16 :goto_3

    :cond_11
    new-array v1, v8, [I

    aput v5, v1, v12

    aput v13, v1, v10

    aput v7, v1, v11

    .line 51
    aget v3, v2, v12

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    aput v12, v1, v9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :cond_12
    if-eqz v2, :cond_15

    .line 52
    array-length v1, v2

    if-lt v1, v11, :cond_15

    .line 53
    iput v8, v0, Lmodule/canbus/o;->o:I

    new-array v1, v9, [I

    aput v5, v1, v12

    const/16 v3, -0x7c

    aput v3, v1, v10

    aput v11, v1, v11

    .line 54
    aget v3, v2, v12

    aput v3, v1, v7

    aget v2, v2, v10

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 55
    :cond_13
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0xaa

    const/16 v13, 0x25

    const/16 v14, 0x33

    if-ne v1, v7, :cond_14

    const/16 v1, 0x8

    new-array v15, v1, [I

    aput v5, v15, v12

    aput v14, v15, v10

    aput v9, v15, v11

    .line 56
    aget v1, v2, v12

    aput v1, v15, v7

    iget-object v1, v0, Lmodule/canbus/o;->y:[I

    iget v7, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v7, v11

    aget v1, v1, v7

    aput v1, v15, v6

    aput v13, v15, v9

    const/16 v1, 0x21

    aput v1, v15, v8

    aput v3, v15, v4

    invoke-static {v15}, Lz/k;->s([I)V

    const/16 v7, 0x8

    new-array v15, v7, [I

    aput v5, v15, v12

    aput v14, v15, v10

    aput v9, v15, v11

    .line 57
    aget v7, v2, v12

    const/16 v16, 0x3

    aput v7, v15, v16

    iget-object v7, v0, Lmodule/canbus/o;->y:[I

    iget v10, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v10, v11

    aget v7, v7, v10

    aput v7, v15, v6

    aput v13, v15, v9

    aput v1, v15, v8

    aput v3, v15, v4

    invoke-static {v15}, Lz/k;->s([I)V

    const/16 v7, 0x8

    new-array v7, v7, [I

    aput v5, v7, v12

    const/4 v5, 0x1

    aput v14, v7, v5

    aput v9, v7, v11

    .line 58
    aget v2, v2, v12

    const/4 v5, 0x3

    aput v2, v7, v5

    iget-object v2, v0, Lmodule/canbus/o;->y:[I

    iget v5, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v5, v11

    aget v2, v2, v5

    aput v2, v7, v6

    aput v13, v7, v9

    aput v1, v7, v8

    aput v3, v7, v4

    invoke-static {v7}, Lz/k;->s([I)V

    goto :goto_2

    :cond_14
    const/16 v1, 0x8

    new-array v7, v1, [I

    aput v5, v7, v12

    const/4 v1, 0x1

    aput v14, v7, v1

    aput v9, v7, v11

    .line 59
    aget v1, v2, v12

    const/4 v10, 0x3

    aput v1, v7, v10

    iget-object v1, v0, Lmodule/canbus/o;->y:[I

    iget v10, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v10, v11

    aget v1, v1, v10

    aput v1, v7, v6

    aput v13, v7, v9

    const/16 v1, 0x20

    aput v1, v7, v8

    aput v3, v7, v4

    invoke-static {v7}, Lz/k;->s([I)V

    const/16 v7, 0x8

    new-array v10, v7, [I

    aput v5, v10, v12

    const/4 v7, 0x1

    aput v14, v10, v7

    aput v9, v10, v11

    .line 60
    aget v7, v2, v12

    const/4 v15, 0x3

    aput v7, v10, v15

    iget-object v7, v0, Lmodule/canbus/o;->y:[I

    iget v15, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v15, v11

    aget v7, v7, v15

    aput v7, v10, v6

    aput v13, v10, v9

    aput v1, v10, v8

    aput v3, v10, v4

    invoke-static {v10}, Lz/k;->s([I)V

    const/16 v7, 0x8

    new-array v7, v7, [I

    aput v5, v7, v12

    const/4 v5, 0x1

    aput v14, v7, v5

    aput v9, v7, v11

    .line 61
    aget v2, v2, v12

    const/4 v5, 0x3

    aput v2, v7, v5

    iget-object v2, v0, Lmodule/canbus/o;->y:[I

    iget v5, v0, Lmodule/canbus/o;->z:I

    rem-int/2addr v5, v11

    aget v2, v2, v5

    aput v2, v7, v6

    aput v13, v7, v9

    aput v1, v7, v8

    aput v3, v7, v4

    invoke-static {v7}, Lz/k;->s([I)V

    .line 62
    :goto_2
    iget v1, v0, Lmodule/canbus/o;->z:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/o;->z:I

    .line 63
    rem-int/2addr v1, v11

    iput v1, v0, Lmodule/canbus/o;->z:I

    :cond_15
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x4
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x2
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x5
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x83
        0x3
        0x1
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x83
        0x3
        0x1
        0x1
        0x0
    .end array-data

    :array_a
    .array-data 1
        0x2et
        -0x70t
        0x1t
        0x21t
        0x0t
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
    sget-object v0, Lmodule/canbus/o;->g0:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/o;->f0:I

    :cond_0
    return-void
.end method

.method public final a3()V
    .locals 14

    .line 1
    invoke-static {}, Lmodule/canbus/o;->b3()V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xc3

    const/16 v2, 0xe3

    const/16 v3, 0x9

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array v0, v7, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_1
    new-array v0, v8, [I

    aput v1, v0, v12

    aput v9, v0, v11

    .line 5
    sget v1, Lu0/b;->s3:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v10

    .line 6
    sget v1, Lu0/b;->r3:I

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 7
    sget v1, Lu0/b;->u3:I

    rem-int/lit16 v5, v1, 0xe10

    div-int/lit8 v5, v5, 0x3c

    aput v5, v0, v6

    .line 8
    rem-int/lit16 v1, v1, 0xe10

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v4

    .line 9
    sget v1, Lu0/b;->t3:I

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v0, v9

    .line 10
    rem-int/lit16 v1, v1, 0xe10

    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v7

    new-array v1, v3, [I

    aput v2, v1, v12

    :goto_0
    if-ge v12, v8, :cond_0

    add-int/lit8 v2, v12, 0x1

    .line 11
    aget v3, v0, v12

    aput v3, v1, v2

    move v12, v2

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_2
    new-array v0, v8, [I

    aput v1, v0, v12

    aput v9, v0, v11

    .line 13
    sget v1, Lo0/e;->H:I

    if-ne v1, v11, :cond_1

    .line 14
    sget v1, Lo0/e;->C:I

    aput v1, v0, v10

    .line 15
    sget v1, Lo0/e;->B:I

    aput v1, v0, v5

    .line 16
    sget v1, Lo0/e;->r:I

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v0, v9

    .line 17
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v7

    goto :goto_1

    .line 18
    :cond_1
    sget v1, Lo0/e;->C:I

    and-int/lit16 v11, v1, 0xff

    aput v11, v0, v10

    shr-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v5

    .line 19
    sget v1, Lo0/e;->B:I

    and-int/lit16 v5, v1, 0xff

    aput v5, v0, v6

    shr-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v4

    .line 20
    sget v1, Lo0/e;->r:I

    rem-int/lit16 v4, v1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    aput v4, v0, v9

    .line 21
    rem-int/lit8 v1, v1, 0x3c

    aput v1, v0, v7

    :goto_1
    new-array v1, v3, [I

    aput v2, v1, v12

    :goto_2
    if-ge v12, v8, :cond_2

    add-int/lit8 v2, v12, 0x1

    .line 22
    aget v3, v0, v12

    aput v3, v1, v2

    move v12, v2

    goto :goto_2

    .line 23
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_7

    :pswitch_3
    new-array v0, v9, [I

    .line 24
    sget v1, Lw0/d;->j:I

    const/16 v3, 0xc2

    aput v3, v0, v12

    aput v6, v0, v11

    .line 25
    sget v3, Lw0/d;->h:I

    const/16 v13, 0x10

    if-eqz v3, :cond_4

    if-eq v3, v11, :cond_3

    const/high16 v13, 0x10000

    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :pswitch_4
    aput v12, v0, v10

    if-lt v1, v13, :cond_5

    goto :goto_3

    :pswitch_5
    aput v10, v0, v10

    if-lt v1, v13, :cond_5

    goto :goto_3

    :pswitch_6
    aput v11, v0, v10

    if-lt v1, v13, :cond_5

    :goto_3
    sub-int/2addr v1, v13

    goto :goto_4

    :cond_3
    aput v13, v0, v10

    goto :goto_4

    :cond_4
    aput v13, v0, v10

    .line 26
    :cond_5
    :goto_4
    sget v3, Lw0/d;->i:I

    and-int/lit16 v10, v3, 0xff

    aput v10, v0, v5

    shr-int/2addr v3, v8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v6

    .line 27
    rem-int/lit8 v3, v1, 0x6

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    aput v9, v0, v4

    goto :goto_5

    :cond_6
    aput v3, v0, v4

    :goto_5
    new-array v1, v7, [I

    aput v2, v1, v12

    :goto_6
    if-ge v12, v9, :cond_7

    add-int/lit8 v2, v12, 0x1

    .line 28
    aget v3, v0, v12

    aput v3, v1, v2

    move v12, v2

    goto :goto_6

    .line 29
    :cond_7
    invoke-static {v1}, Lz/k;->s([I)V

    :goto_7
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc2
        0x4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc3
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
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
    iget v1, p0, Lmodule/canbus/o;->l:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lmodule/canbus/o;->l:I

    .line 5
    iput v0, p0, Lmodule/canbus/o;->m:I

    .line 6
    iput v0, p0, Lmodule/canbus/o;->n:I

    .line 7
    :cond_2
    iget-object v1, p0, Lmodule/canbus/o;->k:[B

    iget v2, p0, Lmodule/canbus/o;->l:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lmodule/canbus/o;->l:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lmodule/canbus/o;->l:I

    .line 9
    iget p1, p0, Lmodule/canbus/o;->n:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lmodule/canbus/o;->k:[B

    aget-byte p1, p1, v4

    move v1, v3

    .line 11
    :goto_0
    iget v5, p0, Lmodule/canbus/o;->n:I

    if-ge v1, v5, :cond_4

    .line 12
    iget-object v5, p0, Lmodule/canbus/o;->k:[B

    aget-byte v5, v5, v1

    add-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lmodule/canbus/o;->k:[B

    aget-byte v6, v1, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v4

    .line 14
    invoke-virtual {p0, v1, v4, v5}, Lmodule/canbus/o;->U2([BII)V

    .line 15
    sget-object p1, Lz/a;->i:Lo1/e0;

    new-array v1, v4, [B

    aput-byte v2, v1, v0

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    .line 16
    iget p1, p0, Lmodule/canbus/o;->n:I

    add-int/2addr p1, v4

    iput p1, p0, Lmodule/canbus/o;->m:I

    goto :goto_1

    .line 17
    :cond_5
    iput v4, p0, Lmodule/canbus/o;->m:I

    .line 18
    :goto_1
    iput v0, p0, Lmodule/canbus/o;->n:I

    .line 19
    :cond_6
    iget p1, p0, Lmodule/canbus/o;->l:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lmodule/canbus/o;->m:I

    if-ge v1, p1, :cond_b

    .line 20
    iget-object v3, p0, Lmodule/canbus/o;->k:[B

    aget-byte v5, v3, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x2

    .line 21
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, p0, Lmodule/canbus/o;->n:I

    add-int/lit8 v6, v1, 0x3

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lmodule/canbus/o;->n:I

    .line 23
    iget v6, p0, Lmodule/canbus/o;->l:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lmodule/canbus/o;->n:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v3, v3, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lmodule/canbus/o;->n:I

    if-ge v1, v5, :cond_8

    .line 27
    iget-object v5, p0, Lmodule/canbus/o;->k:[B

    aget-byte v5, v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    xor-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v3, p0, Lmodule/canbus/o;->k:[B

    aget-byte v6, v3, v5

    if-ne v1, v6, :cond_9

    .line 29
    iget v1, p0, Lmodule/canbus/o;->m:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v6, v5}, Lmodule/canbus/o;->U2([BII)V

    .line 30
    sget-object v1, Lz/a;->i:Lo1/e0;

    new-array v3, v4, [B

    aput-byte v2, v3, v0

    invoke-virtual {v1, v3}, Lo1/e0;->i([B)V

    .line 31
    iget v1, p0, Lmodule/canbus/o;->n:I

    iput v1, p0, Lmodule/canbus/o;->m:I

    goto :goto_4

    .line 32
    :cond_9
    iget v1, p0, Lmodule/canbus/o;->m:I

    add-int/2addr v1, v4

    iput v1, p0, Lmodule/canbus/o;->m:I

    .line 33
    :goto_4
    iput v0, p0, Lmodule/canbus/o;->n:I

    .line 34
    :cond_a
    iget v1, p0, Lmodule/canbus/o;->m:I

    add-int/2addr v1, v4

    iput v1, p0, Lmodule/canbus/o;->m:I

    goto :goto_2

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    .line 35
    iget p1, p0, Lmodule/canbus/o;->l:I

    sub-int/2addr p1, v1

    iput p1, p0, Lmodule/canbus/o;->l:I

    if-eqz p1, :cond_c

    .line 36
    iget-object v2, p0, Lmodule/canbus/o;->k:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_c
    iput v0, p0, Lmodule/canbus/o;->m:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final c3(I)V
    .locals 11

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v0, 0x5

    new-array v5, v0, [I

    const/16 v6, 0xe3

    aput v6, v5, v2

    const/16 v7, -0x7c

    aput v7, v5, v1

    aput v3, v5, v3

    aput p1, v5, v4

    const/4 v8, 0x4

    aput v1, v5, v8

    .line 2
    invoke-static {v5}, Lz/k;->s([I)V

    const-wide/16 v9, 0xc8

    .line 3
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v6, v0, v2

    aput v7, v0, v1

    aput v3, v0, v3

    aput p1, v0, v4

    aput v2, v0, v8

    .line 4
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    aput p1, v0, v2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v2, v0, p1, p1}, Lmodule/canbus/o;->Z0(I[I[F[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final d3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x79

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/o;->h0:Lo1/f;

    new-instance v1, Lmodule/canbus/o$t;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/o$t;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final z3(Ljava/lang/String;)V
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
