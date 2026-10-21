.class public Lmodule/canbus/i0;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/i0$i;,
        Lmodule/canbus/i0$h;
    }
.end annotation


# static fields
.field public static W:[I

.field public static X:I

.field public static Y:I

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

.field public static final l0:[I

.field public static final m0:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/i0$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public final B:Ljava/lang/Runnable;

.field public C:Lo1/g0;

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public N:J

.field public O:I

.field public P:Ljava/lang/Runnable;

.field public Q:I

.field public R:Ljava/lang/Runnable;

.field public S:Ljava/lang/Runnable;

.field public T:I

.field public U:Ljava/lang/Runnable;

.field public V:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:F

.field public m:I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Lmodule/canbus/i0$i;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/i0;->W:[I

    const/4 v0, 0x0

    .line 2
    sput v0, Lmodule/canbus/i0;->X:I

    const/16 v1, 0x10

    .line 3
    sput v1, Lmodule/canbus/i0;->Y:I

    .line 4
    sput v1, Lmodule/canbus/i0;->Z:I

    .line 5
    sput v1, Lmodule/canbus/i0;->a0:I

    .line 6
    sput v1, Lmodule/canbus/i0;->b0:I

    .line 7
    sput v1, Lmodule/canbus/i0;->c0:I

    const/16 v1, 0xa

    .line 8
    sput v1, Lmodule/canbus/i0;->d0:I

    .line 9
    sput v0, Lmodule/canbus/i0;->e0:I

    .line 10
    sput v0, Lmodule/canbus/i0;->f0:I

    .line 11
    sput v0, Lmodule/canbus/i0;->g0:I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/i0;->l0:[I

    .line 13
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/i0;->m0:Lo1/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x7
        0x3
        0x8
        0x2
        0x6
        0x4
        0x6
        0x1
        0x9
        0xa
        0xc
        0x9
        0x9
        0xe
        0x9
        0xb
        0xd
        0x5
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xc
        0xe
        0xf
        0x10
        0x11
        0x12
        0x14
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lmodule/canbus/i0;->e:I

    const/16 v2, 0x10

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

    const/16 v16, 0xc

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_d

    const/16 v17, 0xd

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_e

    const/16 v18, 0xe

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_f

    const/16 v19, 0xf

    aput-object v5, v3, v19

    iput-object v3, v0, Lmodule/canbus/i0;->f:[[I

    const/16 v3, 0x20

    new-array v5, v3, [[I

    new-array v3, v4, [I

    .line 4
    fill-array-data v3, :array_10

    aput-object v3, v5, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v5, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v5, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v5, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v5, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v5, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v5, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v5, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v5, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v5, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v5, v14

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v5, v15

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v5, v16

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v5, v17

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v5, v18

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v5, v19

    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v5, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    const/16 v3, 0x11

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    const/16 v3, 0x12

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x13

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    const/16 v3, 0x14

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    const/16 v3, 0x15

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    const/16 v3, 0x16

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_27

    const/16 v3, 0x17

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x18

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    const/16 v3, 0x19

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    const/16 v3, 0x1a

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v3, 0x1b

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v3, 0x1c

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v3, 0x1d

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x1e

    aput-object v2, v5, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2f

    const/16 v3, 0x1f

    aput-object v2, v5, v3

    iput-object v5, v0, Lmodule/canbus/i0;->g:[[I

    .line 5
    iput v1, v0, Lmodule/canbus/i0;->h:I

    .line 6
    iput v1, v0, Lmodule/canbus/i0;->i:I

    .line 7
    iput v1, v0, Lmodule/canbus/i0;->j:I

    .line 8
    new-instance v2, Lmodule/canbus/i0$a;

    invoke-direct {v2, v0}, Lmodule/canbus/i0$a;-><init>(Lmodule/canbus/i0;)V

    iput-object v2, v0, Lmodule/canbus/i0;->k:Ljava/lang/Runnable;

    const/4 v2, 0x0

    .line 9
    iput v2, v0, Lmodule/canbus/i0;->l:F

    const/16 v2, 0xff

    .line 10
    iput v2, v0, Lmodule/canbus/i0;->m:I

    .line 11
    iput v2, v0, Lmodule/canbus/i0;->n:I

    .line 12
    new-instance v3, Lmodule/canbus/i0$b;

    invoke-direct {v3, v0}, Lmodule/canbus/i0$b;-><init>(Lmodule/canbus/i0;)V

    iput-object v3, v0, Lmodule/canbus/i0;->o:Ljava/lang/Runnable;

    const-string v3, ""

    .line 13
    iput-object v3, v0, Lmodule/canbus/i0;->q:Ljava/lang/String;

    .line 14
    iput-object v3, v0, Lmodule/canbus/i0;->r:Ljava/lang/String;

    .line 15
    iput v1, v0, Lmodule/canbus/i0;->s:I

    .line 16
    iput v1, v0, Lmodule/canbus/i0;->t:I

    .line 17
    iput v1, v0, Lmodule/canbus/i0;->u:I

    .line 18
    iput v1, v0, Lmodule/canbus/i0;->v:I

    .line 19
    iput v1, v0, Lmodule/canbus/i0;->w:I

    .line 20
    iput v1, v0, Lmodule/canbus/i0;->x:I

    .line 21
    iput v1, v0, Lmodule/canbus/i0;->y:I

    .line 22
    iput v6, v0, Lmodule/canbus/i0;->z:I

    .line 23
    iput v2, v0, Lmodule/canbus/i0;->A:I

    .line 24
    new-instance v2, Lmodule/canbus/i0$c;

    invoke-direct {v2, v0}, Lmodule/canbus/i0$c;-><init>(Lmodule/canbus/i0;)V

    iput-object v2, v0, Lmodule/canbus/i0;->B:Ljava/lang/Runnable;

    .line 25
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    invoke-direct {v2, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lmodule/canbus/i0;->C:Lo1/g0;

    .line 26
    iput v6, v0, Lmodule/canbus/i0;->D:I

    .line 27
    iput v4, v0, Lmodule/canbus/i0;->E:I

    .line 28
    iput v7, v0, Lmodule/canbus/i0;->F:I

    .line 29
    iput v8, v0, Lmodule/canbus/i0;->G:I

    .line 30
    iput v9, v0, Lmodule/canbus/i0;->H:I

    .line 31
    iput v10, v0, Lmodule/canbus/i0;->I:I

    .line 32
    iput v11, v0, Lmodule/canbus/i0;->J:I

    .line 33
    iput v12, v0, Lmodule/canbus/i0;->K:I

    .line 34
    iput v14, v0, Lmodule/canbus/i0;->L:I

    .line 35
    iput v13, v0, Lmodule/canbus/i0;->M:I

    const-wide/16 v2, -0x1

    .line 36
    iput-wide v2, v0, Lmodule/canbus/i0;->N:J

    const/4 v2, -0x1

    .line 37
    iput v2, v0, Lmodule/canbus/i0;->O:I

    .line 38
    new-instance v2, Lmodule/canbus/i0$d;

    invoke-direct {v2, v0}, Lmodule/canbus/i0$d;-><init>(Lmodule/canbus/i0;)V

    iput-object v2, v0, Lmodule/canbus/i0;->P:Ljava/lang/Runnable;

    .line 39
    iput v1, v0, Lmodule/canbus/i0;->Q:I

    .line 40
    new-instance v2, Lmodule/canbus/i0$e;

    invoke-direct {v2, v0}, Lmodule/canbus/i0$e;-><init>(Lmodule/canbus/i0;)V

    iput-object v2, v0, Lmodule/canbus/i0;->R:Ljava/lang/Runnable;

    .line 41
    new-instance v2, Lmodule/canbus/i0$f;

    invoke-direct {v2, v0}, Lmodule/canbus/i0$f;-><init>(Lmodule/canbus/i0;)V

    iput-object v2, v0, Lmodule/canbus/i0;->S:Ljava/lang/Runnable;

    const/16 v2, 0xc8

    .line 42
    iput v2, v0, Lmodule/canbus/i0;->T:I

    .line 43
    new-instance v2, Lmodule/canbus/i0$g;

    invoke-direct {v2, v0}, Lmodule/canbus/i0$g;-><init>(Lmodule/canbus/i0;)V

    iput-object v2, v0, Lmodule/canbus/i0;->U:Ljava/lang/Runnable;

    .line 44
    iput v1, v0, Lmodule/canbus/i0;->V:I

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
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x8
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x17
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x20
        0x1b
    .end array-data

    :array_c
    .array-data 4
        0x21
        0x1c
    .end array-data

    :array_d
    .array-data 4
        0x45
        0x4c
    .end array-data

    :array_e
    .array-data 4
        0x46
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x47
        0x12
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_14
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x10
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x3a
    .end array-data

    :array_17
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_18
    .array-data 4
        0x1f
        0x35
    .end array-data

    :array_19
    .array-data 4
        0x20
        0x1
    .end array-data

    :array_1a
    .array-data 4
        0x21
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x24
        0x36
    .end array-data

    :array_1c
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0x2b
        0x5
    .end array-data

    :array_1e
    .array-data 4
        0x2c
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x36
    .end array-data

    :array_20
    .array-data 4
        0x2f
        0x5
    .end array-data

    :array_21
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_22
    .array-data 4
        0x35
        0x19
    .end array-data

    :array_23
    .array-data 4
        0x36
        0x37
    .end array-data

    :array_24
    .array-data 4
        0x37
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x38
        0x4
    .end array-data

    :array_26
    .array-data 4
        0x39
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x47
        0x4a
    .end array-data

    :array_28
    .array-data 4
        0x48
        0x4b
    .end array-data

    :array_29
    .array-data 4
        0x49
        0xf
    .end array-data

    :array_2a
    .array-data 4
        0x4a
        0x26
    .end array-data

    :array_2b
    .array-data 4
        0x4b
        0x15
    .end array-data

    :array_2c
    .array-data 4
        0x5b
        0x3
    .end array-data

    :array_2d
    .array-data 4
        0x5c
        0x4
    .end array-data

    :array_2e
    .array-data 4
        0x64
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x65
        -0x1
    .end array-data
.end method

.method public static synthetic A3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->Y3(I)V

    return-void
.end method

.method public static synthetic B3(Lmodule/canbus/i0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i0;->T:I

    return p0
.end method

.method public static synthetic C3(Lmodule/canbus/i0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i0;->V:I

    return p0
.end method

.method public static synthetic D3(Lmodule/canbus/i0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/i0;->V:I

    return p1
.end method

.method public static synthetic E3(Lmodule/canbus/i0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/i0;->V:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/i0;->V:I

    return v0
.end method

.method public static synthetic F3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i0;->h0:I

    return v0
.end method

.method public static synthetic G3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i0;->j0:I

    return v0
.end method

.method public static synthetic H3(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i0;->Z3()V

    return-void
.end method

.method public static synthetic I3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i0;->i0:I

    return v0
.end method

.method public static synthetic J3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/i0;->k0:I

    return v0
.end method

.method public static synthetic K3(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i0;->X3()V

    return-void
.end method

.method public static synthetic L3(Lmodule/canbus/i0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i0;->m:I

    return p0
.end method

.method public static synthetic M3(Lmodule/canbus/i0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/i0;->m:I

    return p1
.end method

.method public static synthetic N3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/i0;->W:[I

    return-object v0
.end method

.method public static synthetic O3(Lmodule/canbus/i0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/i0;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic P3(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i0;->k3()V

    return-void
.end method

.method public static synthetic Q3(Lmodule/canbus/i0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/i0;->B:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic R3(Lmodule/canbus/i0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmodule/canbus/i0;->N:J

    return-wide v0
.end method

.method public static synthetic S3(Lmodule/canbus/i0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lmodule/canbus/i0;->N:J

    return-wide p1
.end method

.method public static synthetic T3(Lmodule/canbus/i0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i0;->O:I

    return p0
.end method

.method public static synthetic U3(Lmodule/canbus/i0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/i0;->O:I

    return p1
.end method

.method public static V3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/i0;->m0:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/i0$h;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/i0$h;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic l3(Lmodule/canbus/i0;)F
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i0;->l:F

    return p0
.end method

.method public static synthetic m3(Lmodule/canbus/i0;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    return-object p0
.end method

.method public static synthetic n3(Lmodule/canbus/i0;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/i0;->l:F

    return p1
.end method

.method public static synthetic o3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->a4(I)V

    return-void
.end method

.method public static synthetic p3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->j3(I)V

    return-void
.end method

.method public static synthetic q3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->c3(I)V

    return-void
.end method

.method public static synthetic r3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->e3(I)V

    return-void
.end method

.method public static synthetic s3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->d3(I)V

    return-void
.end method

.method public static synthetic t3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->f3(I)V

    return-void
.end method

.method public static synthetic u3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->i3(I)V

    return-void
.end method

.method public static synthetic v3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->g3(I)V

    return-void
.end method

.method public static synthetic w3(Lmodule/canbus/i0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/i0;->h3(I)V

    return-void
.end method

.method public static synthetic x3(Lmodule/canbus/i0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/i0;->n:I

    return p0
.end method

.method public static synthetic y3(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/i0;->a3()V

    return-void
.end method

.method public static synthetic z3(Lmodule/canbus/i0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/i0;->n:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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
    sget-object p1, Lmodule/canbus/i0;->l0:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/i0;->j0:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/i0;->k0:I

    :cond_0
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

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lk0/mt;->o:I

    .line 6
    iput v2, v0, Lk0/mt;->d:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v2, v0, Lk0/mt;->b:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/i0;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lmodule/canbus/i0;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 12
    sget v0, Lk0/nt;->a:I

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 13
    :sswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    .line 14
    iput v2, v0, Lk0/mt;->h:I

    goto :goto_0

    .line 15
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 16
    :sswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->c:I

    .line 17
    iput v2, v0, Lk0/mt;->i:I

    .line 18
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lmodule/canbus/i0;->init()V

    .line 20
    iget-object v0, p0, Lmodule/canbus/i0;->U:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p0}, Lmodule/canbus/i0;->W3()V

    goto :goto_0

    .line 22
    :sswitch_3
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->c:I

    .line 23
    iput v1, v0, Lk0/mt;->i:I

    .line 24
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lmodule/canbus/i0;->init()V

    .line 26
    iget-object v0, p0, Lmodule/canbus/i0;->U:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 27
    invoke-virtual {p0}, Lmodule/canbus/i0;->W3()V

    goto :goto_0

    .line 28
    :sswitch_4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 29
    :cond_0
    :goto_0
    sget v0, Lk0/nt;->a:I

    const v2, 0xdd01bb

    if-eq v0, v2, :cond_1

    const v2, 0xde01bb

    if-eq v0, v2, :cond_1

    .line 30
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 31
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v2, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v2, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 33
    iget-object v0, p0, Lmodule/canbus/i0;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 34
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v2, p0, Lmodule/canbus/i0;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 35
    new-instance v0, Lmodule/canbus/i0$i;

    invoke-direct {v0, p0, v3}, Lmodule/canbus/i0$i;-><init>(Lmodule/canbus/i0;Lmodule/canbus/i0$a;)V

    iput-object v0, p0, Lmodule/canbus/i0;->p:Lmodule/canbus/i0$i;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lmodule/canbus/i0;->p:Lmodule/canbus/i0$i;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0}, Lmodule/canbus/i0;->k3()V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x501bc -> :sswitch_4
        0x601bc -> :sswitch_3
        0x1401be -> :sswitch_2
        0x1e01bc -> :sswitch_4
        0x1f01bc -> :sswitch_4
        0x2001bc -> :sswitch_4
        0x2101bc -> :sswitch_4
        0x2901be -> :sswitch_4
        0x2d01bc -> :sswitch_4
        0x2e01bc -> :sswitch_4
        0x3101bc -> :sswitch_4
        0x3301bc -> :sswitch_4
        0x3401bb -> :sswitch_4
        0x3401bc -> :sswitch_4
        0x3501bc -> :sswitch_4
        0x3601bc -> :sswitch_4
        0x3b01bb -> :sswitch_3
        0x3d01bc -> :sswitch_4
        0xb701bc -> :sswitch_4
        0xb801bc -> :sswitch_4
        0xb901bc -> :sswitch_4
        0xba01bc -> :sswitch_4
        0xdd01bb -> :sswitch_1
        0xde01bb -> :sswitch_0
        0xe401bc -> :sswitch_4
        0xe501bc -> :sswitch_4
        0xe601bb -> :sswitch_4
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/16 v3, -0x5a

    const/16 v4, 0x1a

    const/4 v5, 0x6

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v3, :cond_4c

    const/16 v3, -0x17

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eq v2, v3, :cond_47

    const/16 v3, -0x10

    if-eq v2, v3, :cond_46

    const/16 v3, 0x10

    const/16 v15, 0x8

    if-eq v2, v4, :cond_41

    const/16 v4, 0x3f

    const v17, 0xff00

    if-eq v2, v4, :cond_40

    const/16 v4, 0x41

    if-eq v2, v4, :cond_3c

    const/16 v4, 0x11

    if-eq v2, v4, :cond_32

    const/16 v4, 0x12

    if-eq v2, v4, :cond_30

    const/16 v4, 0x16

    if-eq v2, v4, :cond_2f

    const/16 v4, 0x17

    if-eq v2, v4, :cond_2e

    const/16 v4, 0x21

    if-eq v2, v4, :cond_27

    const/16 v4, 0x22

    const/16 v14, 0x1f

    const/4 v9, 0x7

    if-eq v2, v4, :cond_1c

    const/16 v4, 0x31

    if-eq v2, v4, :cond_3

    const/16 v4, 0x32

    if-eq v2, v4, :cond_2

    const/16 v4, 0x61

    if-eq v2, v4, :cond_1

    const/16 v4, 0x62

    if-eq v2, v4, :cond_0

    goto/16 :goto_1c

    :cond_0
    const/16 v2, 0xcd

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0x2

    .line 2
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v4, v8, [I

    .line 3
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x3

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v4, v8, [I

    .line 4
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x7

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd0

    new-array v4, v8, [I

    .line 5
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd1

    new-array v4, v8, [I

    .line 6
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/2addr v14, v8

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd2

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0x3

    .line 7
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x3

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd3

    new-array v4, v8, [I

    .line 8
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v4, v8, [I

    .line 9
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v4, v8, [I

    .line 10
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v4, v8, [I

    .line 11
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v4, v8, [I

    .line 12
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/2addr v14, v13

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0x4

    .line 13
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x3

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd9

    new-array v4, v8, [I

    .line 14
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v4, v8, [I

    .line 15
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v4, v8, [I

    .line 16
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v4, v8, [I

    .line 17
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v4, v8, [I

    .line 18
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v4, v8, [I

    .line 19
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/2addr v14, v8

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0x5

    .line 20
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x3

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe0

    new-array v4, v8, [I

    .line 21
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/2addr v14, v13

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe1

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0x6

    .line 22
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe2

    new-array v4, v8, [I

    .line 23
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v4, v8, [I

    .line 24
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x3

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v4, v8, [I

    .line 25
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x3

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v4, v8, [I

    .line 26
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/2addr v14, v13

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0x8

    .line 27
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v4, v8, [I

    .line 28
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/lit8 v14, v14, 0x7f

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0x9

    .line 29
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe9

    new-array v4, v8, [I

    .line 30
    aget-byte v14, v1, v14

    shr-int/2addr v14, v11

    and-int/2addr v14, v9

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xea

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0xa

    .line 31
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xeb

    new-array v4, v8, [I

    .line 32
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xec

    new-array v4, v8, [I

    .line 33
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xed

    new-array v4, v8, [I

    .line 34
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xee

    new-array v4, v8, [I

    .line 35
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x3

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xef

    new-array v4, v8, [I

    .line 36
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x2

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf0

    new-array v4, v8, [I

    .line 37
    aget-byte v16, v1, v14

    shr-int/lit8 v16, v16, 0x1

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf1

    new-array v4, v8, [I

    .line 38
    aget-byte v14, v1, v14

    shr-int/2addr v14, v7

    and-int/2addr v14, v8

    aput v14, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf2

    new-array v4, v8, [I

    add-int/lit8 v14, p2, 0xb

    .line 39
    aget-byte v16, v1, v14

    shr-int/lit8 v12, v16, 0x2

    and-int/2addr v12, v13

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf3

    new-array v4, v8, [I

    .line 40
    aget-byte v12, v1, v14

    shr-int/2addr v12, v7

    and-int/2addr v12, v13

    aput v12, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf4

    new-array v4, v8, [I

    add-int/lit8 v12, p2, 0xc

    .line 41
    aget-byte v14, v1, v12

    shr-int/lit8 v9, v14, 0x7

    and-int/2addr v9, v8

    aput v9, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf5

    new-array v4, v8, [I

    .line 42
    aget-byte v9, v1, v12

    shr-int/lit8 v5, v9, 0x6

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf6

    new-array v4, v8, [I

    .line 43
    aget-byte v5, v1, v12

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf7

    new-array v4, v8, [I

    .line 44
    aget-byte v5, v1, v12

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf8

    new-array v4, v8, [I

    .line 45
    aget-byte v5, v1, v12

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf9

    new-array v4, v8, [I

    .line 46
    aget-byte v5, v1, v12

    shr-int/2addr v5, v8

    and-int/2addr v5, v13

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfa

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xd

    .line 47
    aget-byte v5, v1, v5

    shl-int/2addr v5, v15

    and-int v5, v5, v17

    add-int/lit8 v9, p2, 0xe

    aget-byte v9, v1, v9

    and-int/2addr v9, v6

    or-int/2addr v5, v9

    aput v5, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xfb

    new-array v4, v8, [I

    add-int/lit8 v5, p2, 0xf

    .line 48
    aget-byte v5, v1, v5

    shl-int/lit8 v3, v5, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x10

    aget-byte v5, v1, v5

    shl-int/2addr v5, v15

    and-int v5, v5, v17

    or-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x11

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    or-int/2addr v1, v3

    aput v1, v4, v7

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_1
    const/16 v2, 0x71

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 49
    aget-byte v15, v1, v4

    shr-int/2addr v15, v9

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v8, [I

    .line 50
    aget-byte v15, v1, v4

    shr-int/2addr v15, v5

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v8, [I

    .line 51
    aget-byte v15, v1, v4

    shr-int/2addr v15, v10

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v8, [I

    .line 52
    aget-byte v15, v1, v4

    shr-int/2addr v15, v11

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb6

    new-array v3, v8, [I

    .line 53
    aget-byte v4, v1, v4

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 54
    aget-byte v15, v1, v4

    shr-int/2addr v15, v9

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v8, [I

    .line 55
    aget-byte v15, v1, v4

    shr-int/2addr v15, v5

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v8, [I

    .line 56
    aget-byte v15, v1, v4

    shr-int/2addr v15, v10

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v8, [I

    .line 57
    aget-byte v15, v1, v4

    shr-int/2addr v15, v11

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v8, [I

    .line 58
    aget-byte v15, v1, v4

    shr-int/2addr v15, v12

    and-int/2addr v15, v13

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v8, [I

    .line 59
    aget-byte v15, v1, v4

    shr-int/2addr v15, v8

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v8, [I

    .line 60
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 61
    aget-byte v15, v1, v4

    shr-int/2addr v15, v11

    and-int/lit8 v15, v15, 0xf

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v8, [I

    .line 62
    aget-byte v15, v1, v4

    shr-int/2addr v15, v13

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb7

    new-array v3, v8, [I

    .line 63
    aget-byte v15, v1, v4

    shr-int/2addr v15, v12

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v8, [I

    .line 64
    aget-byte v15, v1, v4

    shr-int/2addr v15, v8

    and-int/2addr v15, v8

    aput v15, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v8, [I

    .line 65
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 67
    aget-byte v6, v1, v4

    shr-int/2addr v6, v5

    and-int/2addr v6, v13

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v8, [I

    .line 68
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v13

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v8, [I

    .line 69
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v8, [I

    .line 70
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v8, [I

    .line 71
    aget-byte v4, v1, v4

    shr-int/2addr v4, v8

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 72
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v8, [I

    .line 73
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v9

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbf

    new-array v3, v8, [I

    .line 74
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc0

    new-array v3, v8, [I

    .line 75
    aget-byte v4, v1, v4

    shr-int/2addr v4, v12

    and-int/2addr v4, v8

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 76
    aget-byte v6, v1, v4

    shr-int/2addr v6, v13

    and-int/2addr v6, v14

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc2

    new-array v3, v8, [I

    .line 77
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc3

    new-array v3, v8, [I

    .line 78
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v13

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 79
    aget-byte v6, v1, v4

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc5

    new-array v3, v8, [I

    .line 80
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v3, v8, [I

    .line 81
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v3, v8, [I

    .line 82
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v3, v8, [I

    .line 83
    aget-byte v5, v1, v4

    shr-int/2addr v5, v13

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v8, [I

    .line 84
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v8

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v8, [I

    .line 85
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/2addr v1, v13

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_2
    const/16 v2, 0x67

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xf

    .line 86
    aget-byte v5, v1, v4

    shr-int/2addr v5, v10

    and-int/2addr v5, v9

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v8, [I

    .line 87
    aget-byte v1, v1, v4

    shr-int/2addr v1, v13

    and-int/2addr v1, v13

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 88
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 89
    aget-byte v4, v1, v4

    add-int/lit8 v11, p2, 0x4

    .line 90
    aget-byte v11, v1, v11

    add-int/lit8 v15, p2, 0x6

    .line 91
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x7

    .line 92
    aget-byte v16, v1, v16

    .line 93
    iget v6, v0, Lmodule/canbus/i0;->j:I

    shr-int/lit8 v17, v2, 0x7

    and-int/lit8 v10, v17, 0x1

    if-eq v6, v10, :cond_6

    .line 94
    iget-object v6, v0, Lk0/lt;->a:Lk0/mt;

    iget v6, v6, Lk0/mt;->i:I

    if-ne v6, v8, :cond_5

    .line 95
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v6

    const-string v14, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x3e

    .line 96
    invoke-static {v6, v7}, Ll0/b0;->l0(II)V

    .line 97
    invoke-static {v6, v8}, Ll0/b0;->l0(II)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v6

    const-string v14, "com.syu.carinfo.air.Air_Activity_All_NewAdd_HP"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 99
    invoke-static {v5, v7}, Ll0/b0;->l0(II)V

    .line 100
    invoke-static {v5, v8}, Ll0/b0;->l0(II)V

    .line 101
    :cond_5
    :goto_0
    iput v10, v0, Lmodule/canbus/i0;->j:I

    :cond_6
    new-array v6, v8, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v8

    aput v10, v6, v7

    const/16 v14, 0xa

    .line 102
    invoke-static {v14, v6}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x2a

    new-array v14, v8, [I

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v14, v7

    .line 103
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0xd

    new-array v14, v8, [I

    shr-int/lit8 v18, v2, 0x3

    and-int/lit8 v18, v18, 0x1

    aput v18, v14, v7

    .line 104
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x3e

    new-array v14, v8, [I

    shr-int/lit8 v18, v2, 0x2

    and-int/lit8 v18, v18, 0x1

    aput v18, v14, v7

    .line 105
    invoke-static {v6, v14}, Lk0/qt;->y0(I[I)V

    new-array v6, v8, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v13

    aput v2, v6, v7

    const/16 v2, 0xb

    .line 106
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x43

    new-array v6, v8, [I

    shr-int/lit8 v14, v4, 0x7

    and-int/2addr v14, v8

    aput v14, v6, v7

    .line 107
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v6, v4, 0x4

    and-int/2addr v6, v8

    aput v6, v2, v7

    const/16 v6, 0xc

    .line 108
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v6, v8, [I

    shr-int/lit8 v14, v4, 0x5

    and-int/2addr v14, v8

    aput v14, v6, v7

    .line 109
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v6, v8, [I

    shr-int/2addr v4, v13

    and-int/2addr v4, v8

    aput v4, v6, v7

    .line 110
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    shr-int/lit8 v4, v11, 0x5

    and-int/2addr v4, v8

    aput v4, v2, v7

    .line 111
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1e

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x2

    and-int/2addr v4, v13

    aput v4, v3, v7

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x1d

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x0

    and-int/2addr v4, v13

    aput v4, v3, v7

    .line 114
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2b

    new-array v3, v8, [I

    shr-int/lit8 v4, v11, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x20

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 116
    aget-byte v6, v1, v4

    shr-int/2addr v6, v12

    and-int/2addr v6, v13

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v8, [I

    .line 117
    aget-byte v3, v1, v4

    shr-int/2addr v3, v7

    and-int/2addr v3, v13

    aput v3, v2, v7

    const/16 v3, 0x1f

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    if-eq v15, v8, :cond_a

    if-eq v15, v13, :cond_9

    const/4 v2, 0x5

    if-eq v15, v2, :cond_8

    if-eq v15, v5, :cond_7

    packed-switch v15, :pswitch_data_0

    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v4

    goto :goto_2

    :pswitch_0
    move v5, v7

    move v2, v8

    move v3, v2

    goto :goto_1

    :pswitch_1
    move v3, v7

    move v5, v3

    move v2, v8

    move v4, v2

    goto :goto_2

    :pswitch_2
    move v4, v7

    move v5, v4

    move v2, v8

    move v3, v2

    goto :goto_2

    :pswitch_3
    move v3, v7

    move v4, v3

    move v5, v4

    move v2, v8

    goto :goto_2

    :cond_7
    move v2, v7

    move v3, v2

    move v5, v3

    move v4, v8

    goto :goto_2

    :cond_8
    move v2, v7

    move v5, v2

    move v3, v8

    :goto_1
    move v4, v3

    goto :goto_2

    :cond_9
    move v2, v7

    move v4, v2

    move v5, v4

    move v3, v8

    goto :goto_2

    :cond_a
    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v8

    :goto_2
    const/16 v6, 0x12

    new-array v9, v8, [I

    aput v2, v9, v7

    .line 118
    invoke-static {v6, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v8, [I

    aput v3, v6, v7

    .line 119
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v8, [I

    aput v4, v3, v7

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x31

    new-array v3, v8, [I

    aput v5, v3, v7

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v8, [I

    aput v16, v3, v7

    .line 122
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 123
    aget-byte v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const-string v5, "persist.fyt.reversetemp"

    .line 124
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v3, p2, 0x9

    .line 125
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    :cond_b
    const/16 v5, 0xfe

    const/16 v6, 0x1b

    if-eq v3, v5, :cond_e

    if-eq v3, v4, :cond_d

    if-nez v10, :cond_c

    new-array v3, v8, [I

    const/4 v4, -0x1

    aput v4, v3, v7

    .line 126
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v4, v8, [I

    const/4 v5, 0x5

    mul-int/2addr v3, v5

    aput v3, v4, v7

    .line 127
    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_d
    new-array v3, v8, [I

    const/4 v4, -0x3

    aput v4, v3, v7

    .line 128
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_e
    new-array v3, v8, [I

    const/4 v4, -0x2

    aput v4, v3, v7

    .line 129
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    add-int/lit8 v3, p2, 0x9

    .line 130
    aget-byte v3, v1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const-string v5, "persist.fyt.reversetemp"

    .line 131
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 132
    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :cond_f
    const/16 v2, 0xfe

    const/16 v5, 0x1c

    if-eq v3, v2, :cond_12

    if-eq v3, v4, :cond_11

    if-nez v10, :cond_10

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    .line 133
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_10
    new-array v2, v8, [I

    const/4 v4, 0x5

    mul-int/2addr v3, v4

    aput v3, v2, v7

    .line 134
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_11
    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 135
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_12
    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 136
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    add-int/lit8 v2, p2, 0xa

    .line 137
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eq v2, v8, :cond_15

    if-eq v2, v12, :cond_14

    if-eq v2, v13, :cond_13

    move v2, v7

    :goto_5
    move v3, v2

    goto :goto_6

    :cond_13
    move v2, v8

    goto :goto_5

    :cond_14
    move v2, v7

    move v3, v8

    goto :goto_6

    :cond_15
    move v3, v7

    move v2, v8

    :goto_6
    const/16 v4, 0x2f

    new-array v5, v8, [I

    aput v2, v5, v7

    .line 138
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2e

    new-array v4, v8, [I

    aput v3, v4, v7

    .line 139
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x2c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xb

    .line 140
    aget-byte v4, v1, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xc

    .line 141
    aget-byte v2, v1, v2

    and-int/2addr v2, v5

    const/16 v3, 0xfe

    const/16 v4, 0x28

    if-eq v2, v3, :cond_18

    if-eq v2, v5, :cond_17

    if-nez v17, :cond_16

    new-array v2, v8, [I

    const/4 v3, -0x1

    aput v3, v2, v7

    .line 142
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_16
    new-array v3, v8, [I

    const/4 v5, 0x5

    mul-int/2addr v2, v5

    aput v2, v3, v7

    .line 143
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_17
    new-array v2, v8, [I

    const/4 v3, -0x3

    aput v3, v2, v7

    .line 144
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_18
    new-array v2, v8, [I

    const/4 v3, -0x2

    aput v3, v2, v7

    .line 145
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v2, p2, 0xd

    .line 146
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_19

    goto :goto_9

    :cond_19
    const-string v2, "persist.fyt.temperature"

    .line 147
    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_1a

    mul-int/lit8 v1, v1, 0x9

    add-int/lit16 v1, v1, 0x258

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1a
    const/4 v2, 0x5

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 148
    :goto_8
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_1c

    .line 149
    :cond_1b
    :goto_9
    invoke-static {v7}, Lu0/d;->B3(I)V

    goto/16 :goto_1c

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 150
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 151
    aget-byte v1, v1, v3

    if-eq v2, v8, :cond_22

    if-eq v2, v12, :cond_1d

    if-eq v2, v13, :cond_1d

    goto/16 :goto_1c

    .line 152
    :cond_1d
    iget v2, v0, Lmodule/canbus/i0;->i:I

    if-eq v1, v2, :cond_4d

    if-le v1, v2, :cond_1f

    move v2, v7

    .line 153
    :goto_a
    iget v3, v0, Lmodule/canbus/i0;->i:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_1e

    const/16 v3, 0x1f

    .line 154
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    const/16 v3, 0x1f

    .line 155
    invoke-static {v3, v8}, Ll0/b0;->l0(II)V

    goto :goto_c

    :cond_1f
    if-ge v1, v2, :cond_21

    move v2, v7

    .line 156
    :goto_b
    iget v3, v0, Lmodule/canbus/i0;->i:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_20

    const/16 v3, 0x1e

    .line 157
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    const/16 v2, 0x1e

    .line 158
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    .line 159
    :cond_21
    :goto_c
    iput v1, v0, Lmodule/canbus/i0;->i:I

    goto/16 :goto_1c

    .line 160
    :cond_22
    iget v2, v0, Lmodule/canbus/i0;->h:I

    if-eq v1, v2, :cond_4d

    if-le v1, v2, :cond_24

    move v2, v7

    .line 161
    :goto_d
    iget v3, v0, Lmodule/canbus/i0;->h:I

    sub-int v3, v1, v3

    if-ge v2, v3, :cond_23

    .line 162
    invoke-static {v9, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 163
    :cond_23
    invoke-static {v9, v8}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_24
    if-ge v1, v2, :cond_26

    move v2, v7

    .line 164
    :goto_e
    iget v3, v0, Lmodule/canbus/i0;->h:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_25

    .line 165
    invoke-static {v15, v7}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 166
    :cond_25
    invoke-static {v15, v8}, Ll0/b0;->l0(II)V

    .line 167
    :cond_26
    :goto_f
    iput v1, v0, Lmodule/canbus/i0;->h:I

    goto/16 :goto_1c

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 168
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    iput v2, v0, Lmodule/canbus/i0;->e:I

    add-int/lit8 v2, p2, 0x3

    .line 169
    aget-byte v1, v1, v2

    move v2, v7

    .line 170
    :goto_10
    iget-object v3, v0, Lmodule/canbus/i0;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_29

    .line 171
    iget v4, v0, Lmodule/canbus/i0;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v7

    if-ne v4, v5, :cond_28

    if-eqz v4, :cond_29

    .line 172
    iput v2, v0, Lmodule/canbus/i0;->c:I

    goto :goto_11

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 173
    :cond_29
    :goto_11
    iget v4, v0, Lmodule/canbus/i0;->e:I

    const/16 v5, 0x65

    if-eq v4, v5, :cond_2d

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-eqz v1, :cond_2a

    .line 174
    array-length v1, v3

    if-ge v2, v1, :cond_4d

    .line 175
    aget-object v1, v3, v2

    aget v1, v1, v8

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1c

    .line 176
    :cond_2a
    iget v1, v0, Lmodule/canbus/i0;->c:I

    array-length v2, v3

    if-ge v1, v2, :cond_2b

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2c

    .line 177
    aget-object v1, v3, v1

    aget v1, v1, v8

    invoke-static {v1, v8}, Ll0/b0;->l0(II)V

    goto :goto_12

    :cond_2b
    const/16 v2, 0xff

    .line 178
    :cond_2c
    :goto_12
    iput v2, v0, Lmodule/canbus/i0;->c:I

    goto/16 :goto_1c

    :cond_2d
    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v8, :cond_4d

    const-string v1, "com.syu.carlink"

    .line 179
    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_2e
    const/16 v2, 0x8f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 180
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 181
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 182
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 183
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 184
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 185
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 186
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 187
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x12

    .line 188
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x13

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x14

    .line 189
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x15

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x16

    .line 190
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x17

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa4

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x18

    .line 191
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x19

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x1a

    .line 192
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x1b

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa6

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x1c

    .line 193
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x1d

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa7

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x1e

    .line 194
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x1f

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x20

    .line 195
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x21

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa9

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x22

    .line 196
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x23

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x24

    .line 197
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x25

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xab

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x26

    .line 198
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x27

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x28

    .line 199
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x29

    aget-byte v1, v1, v5

    const/16 v5, 0xff

    and-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_2f
    const/16 v2, 0x84

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 200
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 201
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 202
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 203
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xa

    .line 204
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xc

    .line 205
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0xe

    .line 206
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0xf

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x10

    .line 207
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x11

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x12

    .line 208
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x13

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x14

    .line 209
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x15

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x16

    .line 210
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x17

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x18

    .line 211
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x19

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x1a

    .line 212
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x1b

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x1c

    .line 213
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x1d

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x1e

    .line 214
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x1f

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x20

    .line 215
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x21

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x22

    .line 216
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x23

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x24

    .line 217
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x25

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x26

    .line 218
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x27

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa2

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x28

    .line 219
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v5, p2, 0x29

    aget-byte v5, v1, v5

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2a

    .line 220
    aget-byte v1, v1, v4

    and-int/2addr v1, v6

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_30
    add-int/lit8 v2, p2, 0x4

    .line 221
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 222
    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_31

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 223
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 224
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_31
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 225
    invoke-static {v12, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 226
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_13
    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 227
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v8

    aput v4, v3, v7

    .line 228
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v8

    aput v4, v3, v7

    const/4 v4, 0x5

    .line 229
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v8, [I

    shr-int/2addr v2, v12

    and-int/2addr v2, v8

    aput v2, v3, v7

    .line 230
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x5

    .line 231
    aget-byte v1, v1, v4

    const/16 v4, 0xff

    and-int/2addr v1, v4

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_32
    move v4, v6

    add-int/lit8 v2, p2, 0x5

    .line 232
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 233
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    iput v3, v0, Lmodule/canbus/i0;->d:I

    move v3, v7

    .line 234
    :goto_14
    iget-object v4, v0, Lmodule/canbus/i0;->f:[[I

    array-length v6, v4

    if-ge v3, v6, :cond_34

    .line 235
    iget v6, v0, Lmodule/canbus/i0;->d:I

    aget-object v9, v4, v3

    aget v9, v9, v7

    if-ne v6, v9, :cond_33

    if-eqz v6, :cond_34

    .line 236
    iput v3, v0, Lmodule/canbus/i0;->b:I

    goto :goto_15

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 237
    :cond_34
    :goto_15
    iget v6, v0, Lmodule/canbus/i0;->d:I

    if-eq v6, v5, :cond_39

    const/16 v5, 0x65

    if-eq v6, v5, :cond_38

    const/16 v5, 0xff

    and-int/2addr v2, v5

    if-eqz v2, :cond_35

    .line 238
    array-length v2, v4

    if-ge v3, v2, :cond_3b

    .line 239
    aget-object v2, v4, v3

    aget v2, v2, v8

    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto :goto_17

    .line 240
    :cond_35
    iget v2, v0, Lmodule/canbus/i0;->b:I

    array-length v3, v4

    if-ge v2, v3, :cond_36

    const/16 v3, 0xff

    if-eq v2, v3, :cond_37

    .line 241
    aget-object v2, v4, v2

    aget v2, v2, v8

    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    goto :goto_16

    :cond_36
    const/16 v3, 0xff

    .line 242
    :cond_37
    :goto_16
    iput v3, v0, Lmodule/canbus/i0;->b:I

    goto :goto_17

    :cond_38
    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v8, :cond_3b

    const-string v2, "com.syu.carlink"

    .line 243
    invoke-static {v2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "com.syu.carlink"

    .line 244
    invoke-static {v2}, Lo1/u;->g(Ljava/lang/String;)I

    goto :goto_17

    :cond_39
    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v8, :cond_3b

    .line 245
    sget v2, Lk0/nt;->a:I

    const v3, 0x3d01bc

    if-ne v2, v3, :cond_3a

    .line 246
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v2

    const/16 v3, 0x279

    invoke-virtual {v2, v3}, Lc/e;->c(I)Z

    goto :goto_17

    :cond_3a
    const/16 v2, 0x1a

    .line 247
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    .line 248
    invoke-static {v2, v8}, Ll0/b0;->l0(II)V

    :cond_3b
    :goto_17
    add-int/lit8 v2, p2, 0x9

    .line 249
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/2addr v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v8, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_1c

    :cond_3c
    move v3, v6

    add-int/lit8 v2, p2, 0x2

    .line 250
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 251
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 252
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 253
    aget-byte v2, v1, v2

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 254
    aget-byte v4, v1, v2

    and-int/2addr v4, v3

    add-int/lit8 v5, p2, 0x7

    .line 255
    aget-byte v6, v1, v5

    and-int/2addr v6, v3

    add-int/lit8 v9, p2, 0x8

    .line 256
    aget-byte v10, v1, v9

    and-int/2addr v10, v3

    add-int/lit8 v12, p2, 0x9

    .line 257
    aget-byte v13, v1, v12

    and-int/2addr v13, v3

    if-nez v4, :cond_3d

    if-nez v6, :cond_3d

    if-nez v10, :cond_3d

    if-nez v13, :cond_3d

    .line 258
    invoke-static {v7}, Lu0/d;->C2(I)V

    goto :goto_18

    .line 259
    :cond_3d
    sget v3, Ll0/c0;->g:I

    if-ne v3, v4, :cond_3e

    sget v3, Ll0/c0;->h:I

    if-ne v3, v6, :cond_3e

    sget v3, Ll0/c0;->i:I

    if-ne v3, v10, :cond_3e

    sget v3, Ll0/c0;->j:I

    if-eq v3, v13, :cond_3f

    .line 260
    :cond_3e
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_3f

    .line 261
    invoke-static {v8}, Lu0/d;->C2(I)V

    .line 262
    sput v11, Ll0/c0;->k:I

    .line 263
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 264
    :cond_3f
    :goto_18
    sput v4, Ll0/c0;->g:I

    .line 265
    sput v6, Ll0/c0;->h:I

    .line 266
    sput v10, Ll0/c0;->i:I

    .line 267
    sput v13, Ll0/c0;->j:I

    .line 268
    aget-byte v2, v1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 269
    aget-byte v2, v1, v5

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 270
    aget-byte v2, v1, v9

    and-int/2addr v2, v3

    invoke-static {v2}, Ll0/c0;->b1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 271
    aget-byte v1, v1, v12

    and-int/2addr v1, v3

    invoke-static {v1}, Ll0/c0;->b1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1c

    :cond_40
    const/16 v2, 0x7b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 272
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x4

    .line 273
    aget-byte v4, v1, v4

    shl-int/2addr v4, v15

    and-int v4, v4, v17

    add-int/lit8 v6, p2, 0x5

    aget-byte v6, v1, v6

    const/16 v9, 0xff

    and-int/2addr v6, v9

    or-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x6

    .line 274
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x7

    .line 275
    aget-byte v4, v1, v4

    and-int/2addr v4, v9

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x8

    .line 276
    aget-byte v6, v1, v4

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v13

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v8, [I

    .line 277
    aget-byte v5, v1, v4

    shr-int/2addr v5, v11

    and-int/2addr v5, v13

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v8, [I

    .line 278
    aget-byte v5, v1, v4

    shr-int/2addr v5, v12

    and-int/2addr v5, v13

    aput v5, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v8, [I

    .line 279
    aget-byte v4, v1, v4

    shr-int/2addr v4, v7

    and-int/2addr v4, v13

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x9

    .line 280
    aget-byte v1, v1, v4

    shr-int/2addr v1, v7

    and-int/lit8 v1, v1, 0xf

    aput v1, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    .line 281
    :cond_41
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_44

    .line 282
    sget v2, Lmodule/canbus/i0;->g0:I

    if-ne v2, v8, :cond_45

    add-int/lit8 v2, p2, 0x4

    .line 283
    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    if-eq v4, v8, :cond_43

    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_42

    goto :goto_19

    .line 284
    :cond_42
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 285
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_1a

    .line 286
    :cond_43
    :goto_19
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 287
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_1a

    :cond_44
    add-int/lit8 v2, p2, 0x4

    .line 288
    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    aget-byte v6, v1, v2

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aget-byte v2, v1, v2

    shr-int/2addr v2, v12

    and-int/2addr v2, v8

    invoke-static {v4, v6, v2}, Ll0/c0;->N1(III)V

    :cond_45
    :goto_1a
    add-int/lit8 v2, p2, 0x4

    .line 289
    aget-byte v4, v1, v2

    shr-int/2addr v4, v7

    and-int/2addr v4, v8

    .line 290
    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v8

    shl-int/lit8 v2, v4, 0x3

    and-int/2addr v2, v15

    shl-int/2addr v1, v11

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 291
    sget v2, Lu0/b;->w:I

    shl-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x40

    or-int/2addr v1, v2

    .line 292
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v12, [I

    const/16 v5, 0xb

    aput v5, v4, v7

    aput v1, v4, v8

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 293
    :cond_46
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_47
    add-int/lit8 v2, p2, 0x2

    .line 294
    aget-byte v2, v1, v2

    const/16 v3, 0x66

    new-array v4, v8, [I

    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v6, v13

    aput v6, v4, v7

    .line 295
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v8, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v13

    aput v2, v4, v7

    .line 296
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 297
    aget-byte v6, v1, v4

    const/4 v9, 0x5

    shr-int/2addr v6, v9

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v8, [I

    .line 298
    aget-byte v6, v1, v4

    shr-int/2addr v6, v11

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb5

    new-array v3, v8, [I

    .line 299
    aget-byte v6, v1, v4

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 300
    aget-byte v2, v1, v4

    shr-int/2addr v2, v5

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_48

    .line 301
    invoke-static {v8}, Lk0/qt;->a(I)V

    goto :goto_1b

    .line 302
    :cond_48
    invoke-static {v7}, Lk0/qt;->a(I)V

    .line 303
    :goto_1b
    aget-byte v1, v1, v4

    and-int/lit8 v1, v1, 0xf

    if-nez v1, :cond_49

    const/16 v1, 0x3f5

    new-array v2, v8, [I

    aput v7, v2, v7

    .line 304
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_49
    const/4 v2, 0x5

    if-gt v1, v2, :cond_4a

    const/16 v1, 0x3f5

    new-array v2, v8, [I

    aput v12, v2, v7

    .line 305
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_4a
    const/16 v2, 0xa

    if-gt v1, v2, :cond_4b

    const/16 v1, 0x3f5

    new-array v2, v8, [I

    aput v8, v2, v7

    .line 306
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    :cond_4b
    const/16 v1, 0x3f5

    new-array v2, v8, [I

    aput v7, v2, v7

    .line 307
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1c

    .line 308
    :cond_4c
    sget v2, Lk0/nt;->a:I

    const v3, 0x6d01bc

    if-eq v2, v3, :cond_4d

    const v3, 0xe601bb

    if-eq v2, v3, :cond_4d

    const/16 v2, 0x6a

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x2

    .line 309
    aget-byte v4, v1, v4

    const/16 v6, 0xff

    and-int/2addr v4, v6

    aput v4, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v8, [I

    add-int/lit8 v4, p2, 0x3

    .line 310
    aget-byte v9, v1, v4

    and-int/2addr v9, v6

    aput v9, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v8, [I

    add-int/lit8 v9, p2, 0x4

    .line 311
    aget-byte v10, v1, v9

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x5

    .line 312
    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x6

    .line 313
    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x7

    .line 314
    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v8, [I

    add-int/lit8 v10, p2, 0x8

    .line 315
    aget-byte v10, v1, v10

    and-int/2addr v10, v6

    aput v10, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v3, v8, [I

    add-int/lit8 v6, p2, 0x9

    .line 316
    aget-byte v6, v1, v6

    shr-int/2addr v6, v7

    and-int/2addr v6, v8

    aput v6, v3, v7

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 317
    aget-byte v2, v1, v4

    .line 318
    aget-byte v1, v1, v9

    const/16 v3, 0xff

    and-int/2addr v1, v3

    const/16 v4, 0x1a

    .line 319
    invoke-static {v1, v5, v4}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/i0;->h0:I

    and-int/lit16 v1, v2, 0xff

    .line 320
    invoke-static {v1, v5, v4}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/i0;->i0:I

    :cond_4d
    :goto_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lmodule/canbus/i0;->P:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    sget-object v1, Ll0/g0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/i0;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lmodule/canbus/i0;->S:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/i0;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lmodule/canbus/i0;->U:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W3()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmodule/canbus/i0;->R2([I)V

    return-void
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
    sget v0, Lmodule/canbus/i0;->k0:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/i0;->V3(II)V
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

    if-ltz p2, :cond_0

    const/16 p3, 0xfc

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

.method public final Y3(I)V
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
    sput p1, Lmodule/canbus/i0;->X:I

    const/16 v2, 0x69

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/i0;->X:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x3eb

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eq v1, v3, :cond_8

    const/16 v3, 0x3ed

    const/16 v6, 0x9

    const/4 v7, -0x7

    const/16 v8, 0xe3

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v1, v3, :cond_4

    const/16 v3, 0x405

    const/4 v13, 0x7

    const/4 v14, 0x6

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    aget v1, v2, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->a4(I)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    aget v1, v2, v5

    if-eq v1, v12, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {v4, v5}, Ll0/b0;->l0(II)V

    .line 4
    invoke-static {v4, v12}, Ll0/b0;->l0(II)V

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v4, [I

    aput v8, v1, v5

    aput v11, v1, v12

    const/16 v3, -0x66

    aput v3, v1, v11

    .line 5
    aget v3, v2, v5

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v1, v13, [I

    aput v8, v1, v5

    aput v10, v1, v12

    const/16 v3, 0x6f

    aput v3, v1, v11

    .line 6
    aget v3, v2, v5

    aput v3, v1, v9

    aget v3, v2, v12

    aput v3, v1, v10

    aget v3, v2, v11

    aput v3, v1, v4

    aget v2, v2, v9

    aput v2, v1, v14

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    sget v1, Lk0/nt;->a:I

    const v3, 0x6d01bc

    if-eq v1, v3, :cond_1

    const v3, 0xe601bb

    if-eq v1, v3, :cond_1

    new-array v1, v4, [I

    aput v8, v1, v5

    aput v11, v1, v12

    const/16 v3, -0x53

    aput v3, v1, v11

    .line 8
    aget v3, v2, v5

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 9
    :cond_1
    aget v1, v2, v5

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 10
    :pswitch_5
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->h3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_6
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->g3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_7
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->i3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_8
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->f3(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_9
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->d3(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_a
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->e3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_b
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->c3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_c
    aget v1, v2, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->j3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_d
    aget v1, v2, v5

    invoke-virtual {v0, v1}, Lmodule/canbus/i0;->Y3(I)V

    goto/16 :goto_0

    :pswitch_e
    if-eqz v2, :cond_9

    .line 19
    array-length v1, v2

    if-lt v1, v11, :cond_9

    new-array v1, v4, [I

    aput v8, v1, v5

    aput v11, v1, v12

    aput v7, v1, v11

    .line 20
    aget v3, v2, v5

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array v1, v4, [I

    aput v8, v1, v5

    aput v11, v1, v12

    const/16 v3, 0x3d

    aput v3, v1, v11

    .line 21
    aget v3, v2, v5

    aput v3, v1, v9

    aget v2, v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 22
    :cond_2
    aget v1, v2, v12

    mul-int/lit16 v1, v1, 0x400

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 23
    aget v3, v2, v11

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v7

    div-int/2addr v3, v7

    .line 24
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v7

    sget-object v15, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch_x = "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "touch_y =="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ObjApp.getHeight()"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, La/f;->i()I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v15, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v2, v11}, Lk0/lt;->T2([II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 26
    aget v2, v2, v5

    const/16 v4, 0x2c

    const/16 v7, 0x8

    if-nez v2, :cond_3

    new-array v2, v6, [I

    aput v8, v2, v5

    aput v14, v2, v12

    aput v4, v2, v11

    aput v12, v2, v9

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v10

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x5

    aput v1, v2, v4

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v14

    and-int/lit16 v1, v3, 0xff

    const/4 v3, 0x7

    aput v1, v2, v3

    aput v5, v2, v7

    .line 27
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array v2, v6, [I

    aput v8, v2, v5

    aput v14, v2, v12

    aput v4, v2, v11

    aput v5, v2, v9

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v10

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x5

    aput v1, v2, v4

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v14

    and-int/lit16 v1, v3, 0xff

    const/4 v3, 0x7

    aput v1, v2, v3

    aput v5, v2, v7

    .line 28
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :cond_4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FinalCanbus.C_CAMERA_MODE == ints[0] = "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v2, v5

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 30
    array-length v1, v2

    if-lez v1, :cond_9

    .line 31
    aget v1, v2, v5

    if-gt v1, v10, :cond_5

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v8, v1, v5

    aput v11, v1, v12

    aput v7, v1, v11

    aput v12, v1, v9

    .line 32
    aget v2, v2, v5

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    .line 33
    aget v3, v2, v5

    if-ne v3, v6, :cond_6

    new-array v1, v1, [I

    .line 34
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 35
    :cond_6
    aget v3, v2, v5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_7

    new-array v1, v1, [I

    .line 36
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    new-array v1, v1, [I

    aput v8, v1, v5

    aput v11, v1, v12

    aput v7, v1, v11

    aput v12, v1, v9

    .line 37
    aget v2, v2, v5

    add-int/2addr v2, v12

    aput v2, v1, v10

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 38
    :cond_8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FinalCanbus.C_CHANGE_PANORAMA == ints[0] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 39
    fill-array-data v2, :array_2

    invoke-static {v2}, Lz/k;->s([I)V

    const-wide/16 v2, 0x64

    .line 40
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v1, v1, [I

    .line 41
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        -0x7
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        -0x7
        0x1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0xf9
        0x6
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0xf9
        0x6
        0x0
    .end array-data
.end method

.method public final declared-synchronized Z3()V
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
    sget v0, Lmodule/canbus/i0;->j0:I

    const/4 v1, 0x3

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/i0;->V3(II)V
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
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0xad
        0x7
        0x0
    .end array-data
.end method

.method public final a4(I)V
    .locals 2

    .line 1
    sput p1, Lmodule/canbus/i0;->g0:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xcb

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/i0;->g0:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final b3(I)I
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
    const/4 p1, 0x7

    goto/16 :goto_0

    :cond_4
    cmpl-double p1, v1, v3

    const-wide v3, 0x4050e00000000000L    # 67.5

    if-lez p1, :cond_5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_5

    const/16 p1, 0x8

    goto :goto_0

    :cond_5
    cmpl-double p1, v1, v3

    const-wide v3, 0x405c200000000000L    # 112.5

    if-ltz p1, :cond_6

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x2

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/4 p1, 0x3

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/4 p1, 0x4

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/4 p1, 0x5

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/4 p1, 0x6

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final c3(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/i0;->c0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, 0xad

    aput v4, v0, v3

    const/4 v4, 0x3

    aput v3, v0, v4

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lmodule/canbus/i0;->c0:I

    aput v0, p1, v2

    const/16 v0, 0x6b

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/4 v0, 0x6

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/i0;->c0:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final d3(I)V
    .locals 6

    .line 1
    sput p1, Lmodule/canbus/i0;->Y:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, 0xad

    aput v4, v0, v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    aput v5, v0, v4

    aput p1, v0, v5

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lmodule/canbus/i0;->Y:I

    aput v0, p1, v2

    const/16 v0, 0x6d

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/16 v0, 0x10

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/i0;->Y:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final e3(I)V
    .locals 6

    .line 1
    sput p1, Lmodule/canbus/i0;->b0:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    const/16 v5, 0xad

    aput v5, v1, v4

    const/4 v4, 0x3

    aput v4, v1, v4

    const/4 v4, 0x4

    aput p1, v1, v4

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v2, [I

    .line 3
    sget v1, Lmodule/canbus/i0;->b0:I

    aput v1, p1, v3

    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/i0;->b0:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final f3(I)V
    .locals 6

    .line 1
    sput p1, Lmodule/canbus/i0;->Z:I

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xe3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x2

    aput v4, v1, v2

    const/16 v5, 0xad

    aput v5, v1, v4

    const/4 v4, 0x3

    aput v0, v1, v4

    const/4 v0, 0x4

    aput p1, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    new-array p1, v2, [I

    .line 3
    sget v0, Lmodule/canbus/i0;->Z:I

    aput v0, p1, v3

    const/16 v0, 0x6e

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/16 v0, 0x10

    invoke-virtual {p1, v4, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/i0;->Z:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v4, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final g3(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/i0;->e0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, 0xad

    aput v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x7

    aput v4, v0, v3

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lmodule/canbus/i0;->e0:I

    aput v0, p1, v2

    const/16 v0, 0x70

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/i0;->e0:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final h3(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/i0;->f0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, 0xad

    aput v4, v0, v3

    const/4 v3, 0x3

    const/16 v4, 0x8

    aput v4, v0, v3

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lmodule/canbus/i0;->f0:I

    aput v0, p1, v2

    const/16 v0, 0xcc

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/i0;->f0:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final i3(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/i0;->a0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, 0xad

    aput v4, v0, v3

    const/4 v3, 0x3

    const/4 v4, 0x6

    aput v4, v0, v3

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lmodule/canbus/i0;->a0:I

    aput v0, p1, v2

    const/16 v0, 0x6f

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/16 v0, 0x10

    invoke-virtual {p1, v3, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lmodule/canbus/i0;->a0:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v3, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/i0;->m0:Lo1/f;

    new-instance v1, Lmodule/canbus/i0$h;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i0$h;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/i0$h;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/i0$h;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final j3(I)V
    .locals 5

    .line 1
    sput p1, Lmodule/canbus/i0;->d0:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x2

    aput v3, v0, v1

    const/16 v4, 0xad

    aput v4, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 3
    sget v0, Lmodule/canbus/i0;->d0:I

    aput v0, p1, v2

    const/16 v0, 0x6a

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    const/4 v0, 0x7

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lmodule/canbus/i0;->d0:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lmodule/canbus/i0;->C:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k3()V
    .locals 10

    .line 1
    iget v0, p0, Lmodule/canbus/i0;->x:I

    if-ltz v0, :cond_2

    sget-object v1, Lmodule/canbus/i0;->W:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lmodule/canbus/i0;->y:I

    if-nez v0, :cond_1

    iget v1, p0, Lmodule/canbus/i0;->u:I

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v1, p0, Lmodule/canbus/i0;->t:I

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    .line 4
    iget v3, p0, Lmodule/canbus/i0;->s:I

    mul-int/2addr v3, v2

    const/16 v4, 0x16

    new-array v4, v4, [I

    const/16 v5, 0xe3

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    const/16 v7, 0x13

    aput v7, v4, v5

    const/4 v5, 0x2

    const/16 v8, 0xe4

    aput v8, v4, v5

    const/4 v5, 0x3

    .line 5
    iget v8, p0, Lmodule/canbus/i0;->z:I

    const/4 v9, 0x7

    shl-int/2addr v8, v9

    int-to-byte v8, v8

    aput v8, v4, v5

    const/4 v5, 0x4

    shl-int/2addr v0, v9

    int-to-byte v0, v0

    aput v0, v4, v5

    const/4 v0, 0x5

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    const/4 v0, 0x6

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v9

    and-int/lit16 v0, v1, 0xff

    const/16 v1, 0x8

    aput v0, v4, v1

    const/16 v0, 0x9

    iget v1, p0, Lmodule/canbus/i0;->w:I

    aput v1, v4, v0

    shr-int/lit8 v0, v3, 0x18

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v2

    const/16 v0, 0xb

    shr-int/lit8 v1, v3, 0x10

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/16 v0, 0xc

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v0

    const/16 v0, 0xd

    and-int/lit16 v1, v3, 0xff

    aput v1, v4, v0

    const/16 v0, 0xe

    iget v1, p0, Lmodule/canbus/i0;->u:I

    .line 6
    invoke-virtual {p0, v1}, Lmodule/canbus/i0;->b3(I)I

    move-result v1

    aput v1, v4, v0

    const/16 v0, 0xf

    iget v1, p0, Lmodule/canbus/i0;->v:I

    div-int/lit16 v2, v1, 0xe10

    aput v2, v4, v0

    rem-int/lit16 v0, v1, 0xe10

    div-int/lit8 v0, v0, 0x3c

    const/16 v2, 0x10

    aput v0, v4, v2

    const/16 v0, 0x11

    div-int/lit16 v2, v1, 0xe10

    aput v2, v4, v0

    const/16 v0, 0x12

    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    aput v1, v4, v0

    sget-object v0, Lmodule/canbus/i0;->W:[I

    iget v1, p0, Lmodule/canbus/i0;->x:I

    aget v0, v0, v1

    aput v0, v4, v7

    const/16 v0, 0x14

    aput v6, v4, v0

    const/16 v0, 0x15

    aput v6, v4, v0

    .line 7
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
