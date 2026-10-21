.class public Lk0/mb;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static K:I = 0x0

.field public static L:I = 0x0

.field public static M:I = 0x0

.field public static N:I = 0x0

.field public static O:I = 0x0

.field public static P:I = 0x0

.field public static Q:I = 0x0

.field public static R:I = 0x0

.field public static S:I = 0x0

.field public static T:I = 0x0

.field public static U:I = 0x0

.field public static V:I = 0x0

.field public static W:I = 0x0

.field public static X:I = 0x0

.field public static Y:I = 0x7

.field public static Z:I = 0x7

.field public static a0:I = 0x7

.field public static b0:I = 0x7

.field public static c0:I = 0x7

.field public static d0:I = 0x0

.field public static e0:I = 0x0

.field public static f0:I = 0x0

.field public static g0:I = 0x3

.field public static h0:I = 0x3

.field public static i0:I = 0x1


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public b:I

.field public c:I

.field public d:I

.field public e:[[I

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Z

.field public j:I

.field public k:Ljava/lang/Runnable;

.field public l:I

.field public m:Ljava/lang/Runnable;

.field public n:B

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:F

.field public r:I

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:Lo1/g0;

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/mb;->c:I

    .line 3
    iput v1, v0, Lk0/mb;->d:I

    const/16 v2, 0x3b

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 4
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

    const/16 v15, 0xd

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_e

    const/16 v15, 0xe

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_f

    const/16 v16, 0xf

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_10

    const/16 v16, 0x10

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_11

    const/16 v16, 0x11

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_12

    const/16 v16, 0x12

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_13

    const/16 v16, 0x13

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_14

    const/16 v16, 0x14

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_15

    const/16 v16, 0x15

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_16

    const/16 v16, 0x16

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_17

    const/16 v16, 0x17

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_18

    const/16 v16, 0x18

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_19

    const/16 v16, 0x19

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1a

    const/16 v16, 0x1a

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1b

    const/16 v16, 0x1b

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1c

    const/16 v16, 0x1c

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1d

    const/16 v16, 0x1d

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1e

    const/16 v16, 0x1e

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_1f

    const/16 v16, 0x1f

    aput-object v4, v2, v16

    new-array v4, v3, [I

    fill-array-data v4, :array_20

    const/16 v15, 0x20

    aput-object v4, v2, v15

    new-array v4, v3, [I

    fill-array-data v4, :array_21

    const/16 v17, 0x21

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_22

    const/16 v17, 0x22

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_23

    const/16 v17, 0x23

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_24

    const/16 v17, 0x24

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_25

    const/16 v17, 0x25

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_26

    const/16 v17, 0x26

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_27

    const/16 v17, 0x27

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_28

    const/16 v17, 0x28

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_29

    const/16 v17, 0x29

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_2a

    const/16 v17, 0x2a

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_2b

    const/16 v17, 0x2b

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_2c

    const/16 v17, 0x2c

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_2d

    const/16 v17, 0x2d

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_2e

    const/16 v17, 0x2e

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_2f

    const/16 v17, 0x2f

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_30

    const/16 v17, 0x30

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_31

    const/16 v17, 0x31

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_32

    const/16 v17, 0x32

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_33

    const/16 v17, 0x33

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_34

    const/16 v17, 0x34

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_35

    const/16 v17, 0x35

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_36

    const/16 v17, 0x36

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_37

    const/16 v17, 0x37

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_38

    const/16 v17, 0x38

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_39

    const/16 v17, 0x39

    aput-object v4, v2, v17

    new-array v4, v3, [I

    fill-array-data v4, :array_3a

    const/16 v17, 0x3a

    aput-object v4, v2, v17

    iput-object v2, v0, Lk0/mb;->e:[[I

    .line 5
    iput v1, v0, Lk0/mb;->f:I

    .line 6
    iput v1, v0, Lk0/mb;->g:I

    .line 7
    new-instance v2, Lk0/mb$a;

    invoke-direct {v2, v0}, Lk0/mb$a;-><init>(Lk0/mb;)V

    iput-object v2, v0, Lk0/mb;->h:Ljava/lang/Runnable;

    .line 8
    iput-boolean v1, v0, Lk0/mb;->i:Z

    .line 9
    iput v1, v0, Lk0/mb;->j:I

    .line 10
    new-instance v2, Lk0/mb$b;

    invoke-direct {v2, v0}, Lk0/mb$b;-><init>(Lk0/mb;)V

    iput-object v2, v0, Lk0/mb;->k:Ljava/lang/Runnable;

    .line 11
    iput v1, v0, Lk0/mb;->l:I

    .line 12
    new-instance v1, Lk0/mb$c;

    invoke-direct {v1, v0}, Lk0/mb$c;-><init>(Lk0/mb;)V

    iput-object v1, v0, Lk0/mb;->m:Ljava/lang/Runnable;

    .line 13
    iput-byte v8, v0, Lk0/mb;->n:B

    .line 14
    new-instance v1, Lk0/mb$d;

    invoke-direct {v1, v0}, Lk0/mb$d;-><init>(Lk0/mb;)V

    iput-object v1, v0, Lk0/mb;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lk0/mb$e;

    invoke-direct {v1, v0}, Lk0/mb$e;-><init>(Lk0/mb;)V

    iput-object v1, v0, Lk0/mb;->p:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lk0/mb;->q:F

    const/16 v1, 0xff

    .line 17
    iput v1, v0, Lk0/mb;->r:I

    .line 18
    iput v1, v0, Lk0/mb;->s:I

    .line 19
    new-instance v1, Lk0/mb$f;

    invoke-direct {v1, v0}, Lk0/mb$f;-><init>(Lk0/mb;)V

    iput-object v1, v0, Lk0/mb;->t:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lk0/mb$g;

    invoke-direct {v1, v0}, Lk0/mb$g;-><init>(Lk0/mb;)V

    iput-object v1, v0, Lk0/mb;->u:Ljava/lang/Runnable;

    .line 21
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/mb;->v:Lo1/g0;

    .line 22
    iput v5, v0, Lk0/mb;->w:I

    .line 23
    iput v3, v0, Lk0/mb;->x:I

    .line 24
    iput v6, v0, Lk0/mb;->y:I

    .line 25
    iput v7, v0, Lk0/mb;->z:I

    .line 26
    iput v8, v0, Lk0/mb;->A:I

    .line 27
    iput v9, v0, Lk0/mb;->B:I

    .line 28
    iput v10, v0, Lk0/mb;->C:I

    .line 29
    iput v11, v0, Lk0/mb;->D:I

    .line 30
    iput v12, v0, Lk0/mb;->E:I

    .line 31
    iput v13, v0, Lk0/mb;->F:I

    .line 32
    iput v14, v0, Lk0/mb;->G:I

    const/16 v1, 0xc

    .line 33
    iput v1, v0, Lk0/mb;->H:I

    const/16 v1, 0xd

    .line 34
    iput v1, v0, Lk0/mb;->I:I

    const/16 v1, 0xe

    .line 35
    iput v1, v0, Lk0/mb;->J:I

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x23
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1d
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x36
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x11
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x12
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x13
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x7
    .end array-data

    :array_b
    .array-data 4
        0x15
        0x8
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x17
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x18
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x21
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x22
        0xb
    .end array-data

    :array_11
    .array-data 4
        0x23
        0xd
    .end array-data

    :array_12
    .array-data 4
        0x29
        0xd
    .end array-data

    :array_13
    .array-data 4
        0x2a
        0x37
    .end array-data

    :array_14
    .array-data 4
        0x2b
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x2c
        0x36
    .end array-data

    :array_16
    .array-data 4
        0x2d
        0x12
    .end array-data

    :array_17
    .array-data 4
        0x2e
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x2f
        0x3e
    .end array-data

    :array_19
    .array-data 4
        0x30
        0x12
    .end array-data

    :array_1a
    .array-data 4
        0x31
        0x1a
    .end array-data

    :array_1b
    .array-data 4
        0x32
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x33
        0x18
    .end array-data

    :array_1d
    .array-data 4
        0x34
        0x37
    .end array-data

    :array_1e
    .array-data 4
        0x35
        0x1
    .end array-data

    :array_1f
    .array-data 4
        0x36
        0x36
    .end array-data

    :array_20
    .array-data 4
        0x37
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x38
        0x22
    .end array-data

    :array_22
    .array-data 4
        0x39
        0x23
    .end array-data

    :array_23
    .array-data 4
        0x40
        0x20
    .end array-data

    :array_24
    .array-data 4
        0x41
        0x21
    .end array-data

    :array_25
    .array-data 4
        0x42
        0x14
    .end array-data

    :array_26
    .array-data 4
        0x43
        0x13
    .end array-data

    :array_27
    .array-data 4
        0x44
        0x28
    .end array-data

    :array_28
    .array-data 4
        0x45
        0x29
    .end array-data

    :array_29
    .array-data 4
        0x46
        0x2a
    .end array-data

    :array_2a
    .array-data 4
        0x47
        0x2b
    .end array-data

    :array_2b
    .array-data 4
        0x48
        0x2c
    .end array-data

    :array_2c
    .array-data 4
        0x49
        0x2d
    .end array-data

    :array_2d
    .array-data 4
        0x4a
        0x2
    .end array-data

    :array_2e
    .array-data 4
        0x50
        0x15
    .end array-data

    :array_2f
    .array-data 4
        0x51
        0x36
    .end array-data

    :array_30
    .array-data 4
        0x52
        0x26
    .end array-data

    :array_31
    .array-data 4
        0x53
        0x3a
    .end array-data

    :array_32
    .array-data 4
        0x54
        0x19
    .end array-data

    :array_33
    .array-data 4
        0x55
        0xb
    .end array-data

    :array_34
    .array-data 4
        0x56
        0x3
    .end array-data

    :array_35
    .array-data 4
        0x57
        0x4
    .end array-data

    :array_36
    .array-data 4
        0x58
        0x22
    .end array-data

    :array_37
    .array-data 4
        0x59
        0x23
    .end array-data

    :array_38
    .array-data 4
        0x61
        0x2
    .end array-data

    :array_39
    .array-data 4
        0x62
        0x12
    .end array-data

    :array_3a
    .array-data 4
        0x80
        0x19
    .end array-data
.end method

.method public static synthetic d3(Lk0/mb;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mb;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e3(Lk0/mb;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mb;->v:Lo1/g0;

    return-object p0
.end method

.method public static synthetic f3(Lk0/mb;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/mb;->q:F

    return p0
.end method

.method public static synthetic g3(Lk0/mb;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/mb;->q:F

    return p1
.end method

.method public static synthetic h3(Lk0/mb;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/mb;->s:I

    return p0
.end method

.method public static synthetic i3(Lk0/mb;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/mb;->s:I

    return p1
.end method

.method public static synthetic j3(Lk0/mb;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/mb;->r:I

    return p0
.end method

.method public static synthetic k3(Lk0/mb;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/mb;->r:I

    return p1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/mb;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/mb;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/mb;->o:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/mb;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 7
    iput v2, v0, Lk0/mt;->e:I

    .line 8
    iput v2, v0, Lk0/mt;->f:I

    .line 9
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 14
    :goto_0
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 15
    :pswitch_1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v3, p0, Lk0/mb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 16
    :pswitch_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 17
    :pswitch_3
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v3, p0, Lk0/mb;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    :goto_1
    sget v0, Lk0/nt;->c:I

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 19
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->h:I

    goto :goto_2

    .line 20
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x2

    iput v1, v0, Lk0/mt;->h:I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    add-int/lit8 v2, p2, 0x1

    .line 1
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3f

    const/4 v8, 0x6

    const/4 v9, 0x2

    if-eq v2, v9, :cond_33

    const/16 v10, 0x21

    const/16 v12, 0xd

    const/16 v14, 0xb

    const/16 v7, 0x9

    const/16 v13, 0xf

    const/4 v15, 0x3

    if-eq v2, v10, :cond_25

    const/16 v10, 0x22

    const v16, 0xff00

    const/16 v11, 0x8

    if-eq v2, v10, :cond_24

    const/16 v10, 0x27

    if-eq v2, v10, :cond_23

    const/16 v10, 0x29

    if-eq v2, v10, :cond_22

    const/16 v10, 0x3d

    if-eq v2, v10, :cond_21

    const/16 v10, 0x43

    if-eq v2, v10, :cond_20

    const/16 v10, 0x7d

    if-eq v2, v10, :cond_19

    const/16 v10, 0x7f

    if-eq v2, v10, :cond_18

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_10

    :pswitch_0
    const/16 v2, 0xe2

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x2

    .line 2
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe3

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x3

    .line 3
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe4

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x4

    .line 4
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe5

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x5

    .line 5
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe6

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x6

    .line 6
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe7

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x7

    .line 7
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    aput v9, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe8

    new-array v8, v6, [I

    add-int/lit8 v9, p2, 0x8

    .line 8
    aget-byte v10, v1, v9

    shr-int/lit8 v3, v10, 0x4

    and-int/2addr v3, v6

    aput v3, v8, v5

    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe9

    new-array v3, v6, [I

    .line 9
    aget-byte v8, v1, v9

    and-int/2addr v8, v13

    aput v8, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xea

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x9

    .line 10
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 11
    :pswitch_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const-string v4, "ascii"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v1, v3, v11, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v1, 0xe1

    .line 12
    invoke-static {v1, v2}, Lk0/qt;->x0(ILjava/lang/String;)V

    goto/16 :goto_10

    :pswitch_2
    const/16 v2, 0xd2

    new-array v7, v6, [I

    add-int/lit8 v10, p2, 0x2

    .line 13
    aget-byte v13, v1, v10

    and-int/2addr v13, v4

    aput v13, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    .line 14
    aget-byte v2, v1, v10

    iget v7, v0, Lk0/mb;->l:I

    if-eq v2, v7, :cond_3

    .line 15
    aget-byte v2, v1, v10

    iput v2, v0, Lk0/mb;->l:I

    if-ne v2, v6, :cond_0

    .line 16
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->t3()V

    goto :goto_1

    :cond_0
    if-eq v2, v9, :cond_2

    if-ne v2, v15, :cond_1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_6

    .line 17
    invoke-static {}, Lo1/u;->i()I

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->s3()V

    goto :goto_1

    .line 19
    :cond_3
    aget-byte v2, v1, v10

    if-eq v2, v9, :cond_4

    if-ne v7, v15, :cond_5

    :cond_4
    sget v2, Lu0/b;->D:I

    if-eq v2, v12, :cond_5

    .line 20
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->s3()V

    goto :goto_1

    .line 21
    :cond_5
    aget-byte v2, v1, v10

    if-ne v2, v6, :cond_6

    sget v2, Lu0/b;->D:I

    if-eq v2, v14, :cond_6

    .line 22
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->t3()V

    .line 23
    :cond_6
    :goto_1
    aget-byte v2, v1, v10

    if-ne v2, v6, :cond_7

    const/16 v2, 0xd3

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 24
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd4

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 25
    aget-byte v7, v1, v7

    shl-int/2addr v7, v11

    and-int v7, v7, v16

    add-int/lit8 v10, p2, 0x5

    aget-byte v10, v1, v10

    and-int/2addr v4, v10

    or-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd5

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x6

    .line 26
    aget-byte v7, v1, v4

    shr-int/2addr v7, v15

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd6

    new-array v3, v6, [I

    .line 27
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd7

    new-array v3, v6, [I

    .line 28
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xd8

    new-array v3, v6, [I

    .line 29
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 30
    :cond_7
    aget-byte v2, v1, v10

    if-eq v2, v9, :cond_8

    aget-byte v2, v1, v10

    if-ne v2, v15, :cond_40

    :cond_8
    const/16 v2, 0xd9

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 31
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xda

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 32
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdb

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x5

    .line 33
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdc

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 34
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdd

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 35
    aget-byte v7, v1, v7

    and-int/2addr v4, v7

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xde

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x8

    .line 36
    aget-byte v7, v1, v4

    shr-int/2addr v7, v9

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xdf

    new-array v3, v6, [I

    .line 37
    aget-byte v7, v1, v4

    shr-int/2addr v7, v6

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v6, [I

    .line 38
    aget-byte v1, v1, v4

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v2, v5

    const/16 v1, 0xe0

    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_3
    const/16 v2, 0x129

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x2

    .line 39
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_4
    const/16 v2, 0x128

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x2

    .line 40
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    and-int v6, v6, v16

    add-int/lit8 v7, p2, 0x3

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    if-eqz v2, :cond_a

    if-eq v2, v6, :cond_9

    goto/16 :goto_10

    :cond_9
    const/16 v2, 0x120

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 42
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x121

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 43
    aget-byte v7, v1, v7

    shl-int/2addr v7, v11

    and-int v7, v7, v16

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x122

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 44
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x123

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 45
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x124

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 46
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x125

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 47
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x126

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 48
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x127

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xb

    .line 49
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_a
    const/16 v2, 0x118

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 50
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x119

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 51
    aget-byte v7, v1, v7

    shl-int/2addr v7, v11

    and-int v7, v7, v16

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x6

    .line 52
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11b

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 53
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11c

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 54
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x9

    .line 55
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11e

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0xa

    .line 56
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11f

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0xb

    .line 57
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_6
    const/16 v2, 0x116

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 58
    aget-byte v8, v1, v8

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v13

    aput v3, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x117

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x3

    .line 59
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_7
    const/16 v2, 0x115

    new-array v4, v6, [I

    add-int/lit8 v6, p2, 0x2

    .line 60
    aget-byte v1, v1, v6

    shr-int/2addr v1, v3

    and-int/2addr v1, v13

    aput v1, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v7, v1, v2

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_b

    add-int/lit8 v7, p2, 0x3

    aget-byte v7, v1, v7

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_d

    .line 62
    :cond_b
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SeatMassageActi"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 63
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->p3()V

    goto :goto_2

    .line 64
    :cond_c
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v7

    const-string v9, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SeatMassageActi"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 65
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    .line 66
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    :cond_d
    :goto_2
    const/16 v7, 0x10b

    new-array v9, v6, [I

    .line 67
    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v15

    aput v2, v9, v5

    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10c

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 68
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10d

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x4

    .line 69
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10e

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x5

    .line 70
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10f

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x6

    .line 71
    aget-byte v8, v1, v8

    and-int/2addr v4, v8

    aput v4, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x110

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x7

    .line 72
    aget-byte v8, v1, v7

    shr-int/2addr v8, v3

    and-int/2addr v8, v15

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x111

    new-array v4, v6, [I

    .line 73
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v13

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x112

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x8

    .line 74
    aget-byte v8, v1, v7

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v15

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x113

    new-array v3, v6, [I

    .line 75
    aget-byte v1, v1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_9
    const/16 v2, 0xc5

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 76
    aget-byte v10, v1, v7

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v6

    aput v10, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc6

    new-array v4, v6, [I

    .line 77
    aget-byte v10, v1, v7

    shr-int/lit8 v8, v10, 0x6

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc7

    new-array v4, v6, [I

    .line 78
    aget-byte v8, v1, v7

    const/4 v10, 0x5

    shr-int/2addr v8, v10

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc8

    new-array v4, v6, [I

    .line 79
    aget-byte v8, v1, v7

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v6

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc9

    new-array v3, v6, [I

    .line 80
    aget-byte v4, v1, v7

    shr-int/2addr v4, v15

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xca

    new-array v3, v6, [I

    .line 81
    aget-byte v4, v1, v7

    shr-int/2addr v4, v9

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcb

    new-array v3, v6, [I

    .line 82
    aget-byte v4, v1, v7

    shr-int/2addr v4, v6

    and-int/2addr v4, v6

    aput v4, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcc

    new-array v3, v6, [I

    .line 83
    aget-byte v1, v1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 84
    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    if-eqz v1, :cond_e

    .line 85
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_10

    :cond_e
    if-nez v1, :cond_40

    .line 86
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_10

    .line 87
    :pswitch_b
    iget v2, v0, Lk0/mb;->f:I

    add-int/lit8 v3, p2, 0x2

    aget-byte v4, v1, v3

    shr-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v6

    if-eq v2, v4, :cond_10

    .line 88
    aget-byte v2, v1, v3

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    iput v2, v0, Lk0/mb;->f:I

    if-ne v2, v6, :cond_f

    .line 89
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->r3()V

    goto :goto_3

    .line 90
    :cond_f
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 91
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    .line 92
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    .line 93
    :cond_10
    :goto_3
    iget v2, v0, Lk0/mb;->g:I

    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v6

    if-eq v2, v4, :cond_40

    .line 94
    aget-byte v1, v1, v3

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    iput v1, v0, Lk0/mb;->g:I

    if-ne v1, v6, :cond_11

    .line 95
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->q3()V

    goto/16 :goto_10

    .line 96
    :cond_11
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 97
    invoke-static {v8, v5}, Ll0/b0;->l0(II)V

    .line 98
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_10

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 99
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 100
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    const/16 v3, 0x91

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 101
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 103
    :pswitch_d
    sget v2, Lu0/b;->K3:I

    if-eq v2, v6, :cond_12

    if-ne v2, v9, :cond_40

    :cond_12
    const/16 v2, 0xcd

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 104
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xce

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x3

    .line 105
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xcf

    new-array v6, v6, [I

    add-int/lit8 v3, p2, 0x4

    .line 106
    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    aput v1, v6, v5

    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_e
    add-int/lit8 v2, p2, 0x2

    .line 107
    aget-byte v2, v1, v2

    const-string v7, "persist.syu.reversefrontdoor"

    .line 108
    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_13

    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 109
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 110
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_13
    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 111
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 112
    invoke-static {v9, v7}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 113
    invoke-static {v15, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v6

    aput v10, v7, v5

    .line 114
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    new-array v7, v6, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v6

    aput v10, v7, v5

    const/4 v10, 0x5

    .line 115
    invoke-static {v10, v7}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xeb

    new-array v10, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v10, v5

    .line 116
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 117
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v7, 0x85

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x7

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 118
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb5

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 119
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x86

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 120
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xbd

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 121
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x84

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v6

    aput v11, v10, v5

    .line 122
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xbe

    new-array v10, v6, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v6

    aput v2, v10, v5

    .line 123
    invoke-static {v7, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 124
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v7, 0x6e

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 125
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xd1

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 126
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x76

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 127
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xc0

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v15

    aput v10, v9, v5

    .line 128
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xc1

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v15

    aput v10, v9, v5

    .line 129
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb6

    new-array v9, v6, [I

    and-int/2addr v2, v6

    aput v2, v9, v5

    .line 130
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 131
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v7, 0x77

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x5

    aput v10, v9, v5

    .line 132
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xb7

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 133
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xab

    new-array v9, v6, [I

    shr-int/2addr v2, v15

    and-int/2addr v2, v6

    aput v2, v9, v5

    .line 134
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 135
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v7, 0x71

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x6

    aput v10, v9, v5

    .line 136
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xa6

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/2addr v10, v15

    aput v10, v9, v5

    .line 137
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x114

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 138
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x87

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v15

    aput v10, v9, v5

    .line 139
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xc2

    new-array v9, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v9, v5

    .line 140
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 141
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v7, 0xa7

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 142
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0xa8

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 143
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x6f

    new-array v9, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    aput v10, v9, v5

    .line 144
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x7e

    new-array v9, v6, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    aput v2, v9, v5

    .line 145
    invoke-static {v7, v9}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 146
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v3, 0xb8

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 147
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb9

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 148
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xbf

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 149
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc3

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 150
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xc4

    new-array v7, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 151
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 152
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v3, 0xfa

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 153
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xfb

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 154
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xfc

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 155
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xfd

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 156
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xfe

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 157
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 158
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x100

    new-array v7, v6, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v6

    aput v9, v7, v5

    .line 159
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xec

    new-array v7, v6, [I

    shr-int/2addr v2, v5

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 160
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa

    add-int/lit8 v2, p2, 0xa

    .line 161
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    const/16 v2, 0x101

    new-array v3, v6, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 162
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x102

    new-array v3, v6, [I

    shr-int/2addr v1, v8

    and-int/2addr v1, v6

    aput v1, v3, v5

    .line 163
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_f
    add-int/lit8 v2, p2, 0x2

    .line 164
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/f0;->a(B)V

    goto/16 :goto_10

    :pswitch_10
    const/16 v2, 0x6a

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 165
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    shl-int/2addr v7, v11

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 166
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    shl-int/2addr v7, v11

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 167
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    shl-int/2addr v6, v11

    add-int/lit8 v7, p2, 0x7

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_11
    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 168
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    shl-int/2addr v7, v11

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 169
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    shl-int/2addr v7, v11

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 170
    aget-byte v6, v1, v6

    and-int/2addr v6, v4

    shl-int/2addr v6, v11

    add-int/lit8 v7, p2, 0x7

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_12
    add-int/lit8 v2, p2, 0x8

    .line 171
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v11

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const/16 v3, 0x66

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 172
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    shl-int/2addr v8, v11

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v7, v5

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x4

    .line 173
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    shl-int/2addr v8, v11

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    aput v8, v7, v5

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x6

    .line 174
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    shl-int/2addr v8, v11

    add-int/lit8 v9, p2, 0x7

    aget-byte v1, v1, v9

    and-int/2addr v1, v4

    or-int/2addr v1, v8

    aput v1, v7, v5

    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x62

    new-array v3, v6, [I

    aput v2, v3, v5

    .line 175
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 176
    :pswitch_13
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x3

    .line 177
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->m(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 178
    aget-byte v3, v1, v2

    invoke-static {v3}, Ll0/e0;->m(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 179
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->m(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 180
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->m(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    add-int/lit8 v2, p2, 0x6

    .line 181
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v5, p2, 0x7

    .line 182
    aget-byte v7, v1, v5

    and-int/2addr v7, v4

    add-int/lit8 v8, p2, 0x8

    .line 183
    aget-byte v10, v1, v8

    and-int/2addr v4, v10

    .line 184
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_17

    .line 185
    sget v10, Ll0/c0;->g:I

    if-ne v10, v3, :cond_14

    sget v10, Ll0/c0;->h:I

    if-ne v10, v7, :cond_14

    sget v10, Ll0/c0;->i:I

    if-eq v10, v4, :cond_16

    :cond_14
    const/4 v10, 0x5

    if-lt v3, v10, :cond_15

    if-lt v7, v10, :cond_15

    if-lt v4, v10, :cond_15

    .line 186
    sget v10, Lu0/b;->p:I

    if-ne v10, v6, :cond_16

    .line 187
    sput v9, Ll0/c0;->k:I

    .line 188
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 189
    :cond_15
    invoke-static {v6}, Lu0/d;->C2(I)V

    .line 190
    :cond_16
    :goto_5
    sput v3, Ll0/c0;->g:I

    .line 191
    sput v7, Ll0/c0;->h:I

    .line 192
    sput v4, Ll0/c0;->i:I

    .line 193
    :cond_17
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->m(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 194
    aget-byte v2, v1, v5

    invoke-static {v2}, Ll0/e0;->m(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 195
    aget-byte v2, v1, v5

    invoke-static {v2}, Ll0/e0;->m(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 196
    aget-byte v1, v1, v8

    invoke-static {v1}, Ll0/e0;->m(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_10

    .line 197
    :cond_18
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 198
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v7, 0x419

    const/4 v10, 0x0

    if-eq v2, v6, :cond_1e

    if-eq v2, v8, :cond_1d

    if-eq v2, v15, :cond_1c

    if-eq v2, v3, :cond_1b

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_10

    :pswitch_14
    const/16 v2, 0x408

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x4

    .line 199
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    and-int v6, v6, v16

    add-int/lit8 v7, p2, 0x3

    aget-byte v1, v1, v7

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_15
    add-int/lit8 v2, p2, 0x4

    .line 200
    aget-byte v3, v1, v2

    and-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x28

    .line 201
    sget-object v8, Lk0/nt;->f:[Lo1/x;

    new-array v11, v9, [I

    aput v9, v11, v5

    aput v3, v11, v6

    invoke-static {v8, v7, v11, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 202
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    if-eqz v1, :cond_1a

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 203
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_10

    .line 204
    :cond_1a
    invoke-static {v5}, Lu0/d;->A3(I)V

    goto/16 :goto_10

    :pswitch_16
    add-int/lit8 v2, p2, 0x3

    .line 205
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 206
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 207
    invoke-static {v2, v1, v6, v3}, Lk0/qt;->i(IIZI)V

    .line 208
    iput-boolean v6, v0, Lk0/mb;->i:Z

    goto/16 :goto_10

    :cond_1b
    add-int/lit8 v2, p2, 0x7

    .line 209
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    and-int v2, v2, v16

    add-int/lit8 v3, p2, 0x6

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    const/16 v2, 0xa

    div-int/2addr v1, v2

    .line 210
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v9, [I

    const/4 v4, 0x5

    aput v4, v3, v5

    aput v1, v3, v6

    invoke-static {v2, v7, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1c
    add-int/lit8 v2, p2, 0x4

    .line 211
    aget-byte v2, v1, v2

    shl-int/2addr v2, v11

    and-int v2, v2, v16

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 212
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 213
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v9, [I

    aput v6, v3, v5

    aput v1, v3, v6

    invoke-static {v2, v7, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_10

    .line 214
    :cond_1d
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v4, v9, [I

    const/16 v11, 0xc

    aput v11, v4, v5

    add-int/lit8 v11, p2, 0x3

    aget-byte v12, v1, v11

    shr-int/lit8 v8, v12, 0x6

    and-int/2addr v8, v6

    aput v8, v4, v6

    invoke-static {v2, v7, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v9, [I

    aput v15, v4, v5

    .line 215
    aget-byte v8, v1, v11

    shr-int/2addr v8, v5

    and-int/2addr v8, v6

    aput v8, v4, v6

    invoke-static {v2, v7, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    new-array v4, v9, [I

    aput v3, v4, v5

    add-int/lit8 v3, p2, 0x4

    .line 216
    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    aput v1, v4, v6

    invoke-static {v2, v7, v4, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1e
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 217
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    add-int/lit8 v2, p2, 0x3

    .line 218
    aget-byte v8, v1, v2

    shr-int/2addr v8, v15

    and-int/2addr v8, v6

    aget-byte v2, v1, v2

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    invoke-static {v8, v2, v5}, Ll0/c0;->b(III)V

    goto :goto_6

    :cond_1f
    add-int/lit8 v2, p2, 0x3

    .line 219
    aget-byte v8, v1, v2

    shr-int/2addr v8, v15

    and-int/2addr v8, v6

    aget-byte v2, v1, v2

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    invoke-static {v8, v2, v5}, Ll0/c0;->a(III)V

    .line 220
    :goto_6
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    new-array v3, v9, [I

    aput v14, v3, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v7, v3, v10, v10}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_20
    const/16 v2, 0x103

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 221
    aget-byte v9, v1, v7

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x104

    new-array v4, v6, [I

    .line 222
    aget-byte v9, v1, v7

    shr-int/2addr v9, v8

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x105

    new-array v4, v6, [I

    .line 223
    aget-byte v9, v1, v7

    shr-int/2addr v9, v3

    and-int/2addr v9, v15

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x106

    new-array v4, v6, [I

    .line 224
    aget-byte v7, v1, v7

    shr-int/2addr v7, v5

    and-int/2addr v7, v13

    aput v7, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x107

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x3

    .line 225
    aget-byte v9, v1, v7

    shr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v6

    aput v9, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x108

    new-array v4, v6, [I

    .line 226
    aget-byte v9, v1, v7

    shr-int/lit8 v8, v9, 0x6

    and-int/2addr v8, v6

    aput v8, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x109

    new-array v4, v6, [I

    .line 227
    aget-byte v8, v1, v7

    shr-int/lit8 v3, v8, 0x4

    and-int/2addr v3, v15

    aput v3, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x10a

    new-array v3, v6, [I

    .line 228
    aget-byte v1, v1, v7

    shr-int/2addr v1, v5

    and-int/2addr v1, v13

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 229
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    .line 230
    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    add-int/lit8 v7, p2, 0x4

    .line 231
    aget-byte v7, v1, v7

    and-int/2addr v7, v4

    add-int/lit8 v8, p2, 0x5

    .line 232
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    add-int/lit8 v9, p2, 0x6

    .line 233
    aget-byte v9, v1, v9

    and-int/2addr v9, v4

    add-int/lit8 v10, p2, 0x7

    .line 234
    aget-byte v10, v1, v10

    and-int/2addr v10, v4

    add-int/lit8 v11, p2, 0x8

    .line 235
    aget-byte v11, v1, v11

    and-int/2addr v11, v4

    add-int/lit8 v13, p2, 0x9

    .line 236
    aget-byte v13, v1, v13

    and-int/2addr v13, v4

    add-int/lit8 v14, p2, 0xa

    .line 237
    aget-byte v14, v1, v14

    and-int/2addr v14, v4

    add-int/lit8 v15, p2, 0xb

    .line 238
    aget-byte v15, v1, v15

    and-int/2addr v15, v4

    add-int/lit8 v16, p2, 0xc

    .line 239
    aget-byte v5, v1, v16

    and-int/2addr v5, v4

    add-int/lit8 v12, p2, 0xd

    .line 240
    aget-byte v1, v1, v12

    and-int/2addr v1, v4

    const/16 v4, 0xa9

    new-array v12, v6, [I

    const/16 v16, 0x0

    aput v2, v12, v16

    .line 241
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaa

    new-array v4, v6, [I

    aput v3, v4, v16

    .line 242
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb2

    new-array v3, v6, [I

    aput v7, v3, v16

    .line 243
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v6, [I

    aput v8, v3, v16

    .line 244
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x96

    new-array v3, v6, [I

    aput v9, v3, v16

    .line 245
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v6, [I

    aput v10, v3, v16

    .line 246
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xac

    new-array v3, v6, [I

    aput v11, v3, v16

    .line 247
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xad

    new-array v3, v6, [I

    aput v13, v3, v16

    .line 248
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xae

    new-array v3, v6, [I

    aput v14, v3, v16

    .line 249
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xaf

    new-array v3, v6, [I

    aput v15, v3, v16

    .line 250
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb0

    new-array v3, v6, [I

    aput v5, v3, v16

    .line 251
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb1

    new-array v3, v6, [I

    aput v1, v3, v16

    .line 252
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 253
    :cond_22
    iget-boolean v2, v0, Lk0/mb;->i:Z

    if-nez v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 254
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    const/16 v3, 0x154a

    const/4 v5, 0x0

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_10

    :cond_23
    const/16 v2, 0x89

    new-array v3, v6, [I

    add-int/lit8 v6, p2, 0x2

    .line 255
    aget-byte v1, v1, v6

    and-int/2addr v1, v4

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_24
    const/16 v2, 0xf8

    new-array v7, v6, [I

    add-int/lit8 v8, p2, 0x2

    .line 256
    aget-byte v8, v1, v8

    and-int/2addr v8, v4

    aput v8, v7, v5

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf9

    new-array v5, v6, [I

    add-int/lit8 v6, p2, 0x3

    .line 257
    aget-byte v6, v1, v6

    shl-int/2addr v6, v11

    and-int v6, v6, v16

    add-int/lit8 v3, p2, 0x4

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    const/4 v3, 0x0

    aput v1, v5, v3

    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_25
    move v3, v5

    add-int/lit8 v2, p2, 0x2

    .line 258
    aget-byte v2, v1, v2

    new-array v5, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v5, v3

    const/16 v10, 0xa

    .line 259
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v5, v3

    .line 260
    invoke-static {v14, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v10, v2, 0x5

    and-int/2addr v10, v6

    if-nez v10, :cond_26

    move/from16 v17, v3

    goto :goto_7

    :cond_26
    move/from16 v17, v6

    :goto_7
    aput v17, v5, v3

    const/16 v10, 0xc

    .line 261
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x36

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v6

    aput v11, v10, v3

    .line 262
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    new-array v5, v6, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v6

    aput v10, v5, v3

    .line 263
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xe

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v6

    aput v11, v10, v3

    .line 264
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x37

    new-array v10, v6, [I

    aput v11, v10, v3

    .line 265
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x1a

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v6

    aput v11, v10, v3

    .line 266
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v10, v6, [I

    shr-int/2addr v2, v3

    and-int/2addr v2, v6

    aput v2, v10, v3

    .line 267
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 268
    aget-byte v2, v1, v2

    new-array v5, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v5, v3

    const/16 v10, 0x12

    .line 269
    invoke-static {v10, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v6

    aput v11, v10, v3

    .line 270
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v10, v6, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v6

    aput v11, v10, v3

    .line 271
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x31

    new-array v10, v6, [I

    and-int/lit16 v11, v2, 0xe0

    if-nez v11, :cond_27

    move/from16 v17, v3

    goto :goto_8

    :cond_27
    move/from16 v17, v6

    :goto_8
    aput v17, v10, v3

    .line 272
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v13

    if-le v2, v7, :cond_28

    move v2, v7

    :cond_28
    const/16 v5, 0x15

    new-array v10, v6, [I

    aput v2, v10, v3

    .line 273
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 274
    aget-byte v5, v1, v2

    add-int/lit8 v10, p2, 0x5

    .line 275
    aget-byte v11, v1, v10

    const-string v12, "persist.fyt.reversetemp"

    .line 276
    invoke-static {v12, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_29

    .line 277
    aget-byte v5, v1, v10

    .line 278
    aget-byte v11, v1, v2

    :cond_29
    add-int/lit8 v2, p2, 0x6

    .line 279
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    if-nez v3, :cond_2c

    const/4 v3, -0x1

    const/16 v10, 0x1b

    if-eq v5, v3, :cond_2b

    if-eqz v5, :cond_2a

    new-array v3, v6, [I

    and-int/2addr v5, v4

    const/4 v12, 0x0

    aput v5, v3, v12

    .line 280
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_2a
    const/4 v12, 0x0

    new-array v3, v6, [I

    const/4 v5, -0x2

    aput v5, v3, v12

    .line 281
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_2b
    const/4 v12, 0x0

    new-array v3, v6, [I

    const/4 v5, -0x3

    aput v5, v3, v12

    .line 282
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    .line 283
    :cond_2c
    :goto_9
    aget-byte v3, v1, v2

    and-int/2addr v3, v9

    if-nez v3, :cond_2f

    const/4 v3, -0x1

    if-eq v11, v3, :cond_2e

    if-eqz v11, :cond_2d

    const/16 v3, 0x1c

    new-array v5, v6, [I

    and-int/lit16 v10, v11, 0xff

    const/4 v11, 0x0

    aput v10, v5, v11

    .line 284
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_2d
    const/4 v11, 0x0

    const/16 v3, 0x1c

    new-array v5, v6, [I

    const/4 v10, -0x2

    aput v10, v5, v11

    .line 285
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_2e
    const/4 v11, 0x0

    const/16 v3, 0x1c

    new-array v5, v6, [I

    const/4 v10, -0x3

    aput v10, v5, v11

    .line 286
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_a

    :cond_2f
    const/4 v11, 0x0

    .line 287
    :goto_a
    aget-byte v2, v1, v2

    new-array v3, v6, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v6

    aput v5, v3, v11

    .line 288
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v5, v6, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v6

    aput v10, v5, v11

    .line 289
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v5, v6, [I

    shr-int/2addr v2, v11

    and-int/2addr v2, v6

    aput v2, v5, v11

    .line 290
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 291
    aget-byte v2, v1, v2

    and-int/2addr v2, v4

    const/16 v3, 0x26

    new-array v4, v6, [I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_30

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto :goto_b

    :cond_30
    move/from16 v17, v6

    const/4 v2, 0x0

    :goto_b
    aput v17, v4, v2

    .line 292
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 293
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v15

    if-le v3, v9, :cond_31

    goto :goto_c

    :cond_31
    move v9, v3

    :goto_c
    const/16 v3, 0x34

    new-array v4, v6, [I

    const/4 v5, 0x0

    aput v9, v4, v5

    .line 294
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 295
    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v15

    const/16 v3, 0x33

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 296
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x9

    .line 297
    aget-byte v7, v1, v4

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v6, [I

    .line 298
    aget-byte v7, v1, v4

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v3, v6, [I

    .line 299
    aget-byte v7, v1, v4

    const/4 v8, 0x5

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    aput v7, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x32

    new-array v3, v6, [I

    .line 300
    aget-byte v1, v1, v4

    const/16 v4, 0xe0

    and-int/2addr v1, v4

    if-nez v1, :cond_32

    move v6, v5

    :cond_32
    aput v6, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    .line 301
    :cond_33
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    add-int/lit8 v2, p2, 0x2

    .line 302
    aget-byte v1, v1, v2

    and-int/2addr v1, v4

    .line 303
    iput v1, v0, Lk0/mb;->c:I

    const/4 v2, 0x0

    .line 304
    :goto_d
    iget-object v5, v0, Lk0/mb;->e:[[I

    array-length v7, v5

    if-ge v2, v7, :cond_35

    .line 305
    iget v7, v0, Lk0/mb;->c:I

    aget-object v10, v5, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ne v7, v10, :cond_34

    if-eqz v7, :cond_35

    .line 306
    iput v2, v0, Lk0/mb;->b:I

    goto :goto_e

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 307
    :cond_35
    :goto_e
    iget v7, v0, Lk0/mb;->d:I

    iget v10, v0, Lk0/mb;->c:I

    if-eq v7, v10, :cond_40

    if-eq v10, v6, :cond_3d

    const/16 v7, 0x11

    if-eq v10, v7, :cond_3b

    const/16 v3, 0x20

    if-eq v10, v3, :cond_39

    const/16 v3, 0x2a

    if-eq v10, v3, :cond_38

    if-eqz v1, :cond_36

    .line 308
    array-length v1, v5

    if-ge v2, v1, :cond_3e

    .line 309
    aget-object v1, v5, v2

    aget v1, v1, v6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    goto :goto_f

    .line 310
    :cond_36
    iget v1, v0, Lk0/mb;->b:I

    array-length v2, v5

    if-ge v1, v2, :cond_37

    if-eq v1, v4, :cond_37

    .line 311
    aget-object v1, v5, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    .line 312
    :cond_37
    iput v4, v0, Lk0/mb;->b:I

    goto :goto_f

    .line 313
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->n3()V

    goto :goto_f

    .line 314
    :cond_39
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 315
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->o3()V

    goto :goto_f

    :cond_3a
    const/4 v1, 0x0

    .line 316
    invoke-static {v8, v1}, Ll0/b0;->l0(II)V

    .line 317
    invoke-static {v8, v6}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_3b
    const/4 v1, 0x0

    .line 318
    sget v2, Lh0/c;->E:I

    if-eq v2, v3, :cond_3c

    .line 319
    invoke-static {v9, v1}, Ll0/b0;->l0(II)V

    .line 320
    invoke-static {v9, v6}, Ll0/b0;->l0(II)V

    goto :goto_f

    :cond_3c
    const/16 v2, 0x12

    .line 321
    invoke-static {v2, v1}, Ll0/b0;->l0(II)V

    .line 322
    invoke-static {v2, v6}, Ll0/b0;->l0(II)V

    goto :goto_f

    .line 323
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->n3()V

    .line 324
    :cond_3e
    :goto_f
    iget v1, v0, Lk0/mb;->c:I

    iput v1, v0, Lk0/mb;->d:I

    goto :goto_10

    :cond_3f
    add-int/lit8 v2, p2, 0x4

    .line 325
    aget-byte v1, v1, v2

    const/16 v2, 0xbc

    new-array v3, v6, [I

    and-int/2addr v1, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    .line 326
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_40
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4e
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

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/mb;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/mb;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/mb;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/mb;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/mb;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lk0/mb;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/mb;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x12a

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

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v3, 0xe

    const/4 v4, 0x0

    if-eq v0, v3, :cond_29

    const/16 v5, 0x64

    const/16 v6, 0xe3

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-eq v0, v5, :cond_28

    const/16 v5, 0x3eb

    if-eq v0, v5, :cond_26

    const/16 v5, 0x3ed

    const/16 v14, 0xd

    const/16 v2, 0xc

    if-eq v0, v5, :cond_1e

    const/4 v5, 0x7

    packed-switch v0, :pswitch_data_0

    const/16 v16, -0x7e

    const/16 v15, 0xa

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    const-wide/16 v15, 0x32

    const/16 v17, -0x71

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_2

    :pswitch_0
    if-eqz v1, :cond_2a

    .line 1
    array-length v0, v1

    if-lez v0, :cond_2a

    new-array v0, v8, [I

    aput v6, v0, v4

    aput v8, v0, v13

    const/16 v2, -0x7b

    aput v2, v0, v11

    .line 2
    aget v2, v1, v4

    aput v2, v0, v10

    aget v1, v1, v13

    aput v1, v0, v12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz v1, :cond_2a

    .line 3
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 4
    aget v2, v1, v4

    aget v3, v1, v13

    aget v4, v1, v11

    aget v6, v1, v10

    aget v10, v1, v12

    aget v8, v1, v8

    aget v7, v1, v7

    aget v11, v1, v5

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v5, v10

    move v6, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Lk0/mb;->a3(IIIIIIII)V

    goto/16 :goto_2

    :pswitch_2
    if-eqz v1, :cond_2a

    .line 5
    array-length v0, v1

    if-lez v0, :cond_2a

    new-array v0, v8, [I

    aput v6, v0, v4

    aput v8, v0, v13

    const/16 v2, -0x3a

    aput v2, v0, v11

    .line 6
    aget v2, v1, v4

    aput v2, v0, v10

    aget v1, v1, v13

    aput v1, v0, v12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v1, :cond_2a

    .line 7
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 8
    aget v0, v1, v4

    invoke-virtual {v9, v0}, Lk0/mb;->c3(I)V

    goto/16 :goto_2

    :pswitch_4
    if-eqz v1, :cond_2a

    .line 9
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 10
    aget v0, v1, v4

    aget v1, v1, v13

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_5
    if-eqz v1, :cond_2a

    .line 11
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 12
    aget v0, v1, v4

    aget v1, v1, v13

    invoke-virtual {v9, v0, v1}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_6
    if-eqz v1, :cond_2a

    .line 13
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 14
    invoke-virtual {v9, v3, v13}, Lk0/mb;->l3(II)V

    .line 15
    invoke-static/range {v15 .. v16}, La/i;->a0(J)V

    .line 16
    invoke-virtual {v9, v3, v4}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_7
    if-eqz v1, :cond_2a

    .line 17
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 18
    aget v0, v1, v4

    if-eqz v0, :cond_0

    .line 19
    aput v13, v1, v4

    :cond_0
    const/16 v0, 0x19

    .line 20
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_8
    if-eqz v1, :cond_2a

    .line 21
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 22
    aget v0, v1, v4

    if-eqz v0, :cond_1

    .line 23
    aput v13, v1, v4

    :cond_1
    const/16 v0, 0x18

    .line 24
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_9
    if-eqz v1, :cond_2a

    .line 25
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 26
    aget v0, v1, v4

    new-array v1, v12, [I

    aput v6, v1, v4

    aput v12, v1, v13

    const/16 v2, -0x73

    aput v2, v1, v11

    int-to-byte v0, v0

    aput v0, v1, v10

    .line 27
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 28
    :pswitch_a
    aget v0, v1, v4

    aget v1, v1, v13

    invoke-virtual {v9, v0, v1}, Lk0/mb;->b3(II)V

    goto/16 :goto_2

    :pswitch_b
    if-eqz v1, :cond_2a

    .line 29
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 30
    invoke-virtual {v9, v2, v13}, Lk0/mb;->l3(II)V

    .line 31
    invoke-static/range {v15 .. v16}, La/i;->a0(J)V

    .line 32
    invoke-virtual {v9, v2, v4}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_c
    if-eqz v1, :cond_2a

    .line 33
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 34
    aget v0, v1, v4

    if-eqz v0, :cond_2

    .line 35
    aput v13, v1, v4

    .line 36
    :cond_2
    aget v0, v1, v4

    invoke-virtual {v9, v14, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_d
    if-eqz v1, :cond_2a

    .line 37
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 38
    aget v0, v1, v4

    if-eqz v0, :cond_3

    .line 39
    aput v13, v1, v4

    :cond_3
    const/16 v0, 0x17

    .line 40
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_e
    if-eqz v1, :cond_2a

    .line 41
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 42
    aget v0, v1, v4

    if-eqz v0, :cond_4

    .line 43
    aput v13, v1, v4

    :cond_4
    const/16 v0, 0x11

    .line 44
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_f
    if-eqz v1, :cond_2a

    .line 45
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 46
    aget v0, v1, v4

    if-eqz v0, :cond_5

    .line 47
    aput v13, v1, v4

    :cond_5
    const/16 v0, 0x16

    .line 48
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_10
    if-eqz v1, :cond_2a

    .line 49
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 50
    aget v0, v1, v4

    if-eqz v0, :cond_6

    .line 51
    aput v13, v1, v4

    :cond_6
    const/16 v0, 0x15

    .line 52
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_11
    if-eqz v1, :cond_2a

    .line 53
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 54
    aget v0, v1, v4

    if-eqz v0, :cond_7

    .line 55
    aput v13, v1, v4

    :cond_7
    const/16 v0, 0x14

    .line 56
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_12
    if-eqz v1, :cond_2a

    .line 57
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 58
    aget v0, v1, v4

    if-eqz v0, :cond_8

    .line 59
    aput v13, v1, v4

    :cond_8
    const/16 v0, 0x13

    .line 60
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_13
    if-eqz v1, :cond_2a

    .line 61
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 62
    aget v0, v1, v4

    if-eqz v0, :cond_9

    .line 63
    aput v13, v1, v4

    :cond_9
    const/16 v0, 0x12

    .line 64
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_14
    if-eqz v1, :cond_2a

    .line 65
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 66
    aget v0, v1, v4

    new-array v1, v12, [I

    aput v6, v1, v4

    aput v12, v1, v13

    aput v17, v1, v11

    int-to-byte v0, v0

    aput v0, v1, v10

    .line 67
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_15
    if-eqz v1, :cond_2a

    .line 68
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 69
    aget v0, v1, v4

    new-array v1, v12, [I

    aput v6, v1, v4

    aput v12, v1, v13

    aput v17, v1, v11

    int-to-byte v0, v0

    aput v0, v1, v10

    .line 70
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_16
    if-eqz v1, :cond_2a

    .line 71
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 72
    aget v0, v1, v4

    new-array v1, v12, [I

    aput v6, v1, v4

    aput v12, v1, v13

    aput v17, v1, v11

    int-to-byte v0, v0

    aput v0, v1, v10

    .line 73
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_17
    if-eqz v1, :cond_2a

    .line 74
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 75
    aget v0, v1, v4

    sput v0, Lk0/mb;->Q:I

    .line 76
    sput v13, Lk0/mb;->R:I

    .line 77
    sput v4, Lk0/mb;->S:I

    .line 78
    sput v4, Lk0/mb;->T:I

    .line 79
    sput v13, Lk0/mb;->U:I

    .line 80
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_18
    if-eqz v1, :cond_2a

    .line 81
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 82
    aget v0, v1, v4

    sput v0, Lk0/mb;->P:I

    .line 83
    sput v13, Lk0/mb;->R:I

    .line 84
    sput v4, Lk0/mb;->S:I

    .line 85
    sput v4, Lk0/mb;->T:I

    .line 86
    sput v13, Lk0/mb;->U:I

    .line 87
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_19
    if-eqz v1, :cond_2a

    .line 88
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 89
    aget v0, v1, v4

    sput v0, Lk0/mb;->O:I

    .line 90
    sput v13, Lk0/mb;->R:I

    .line 91
    sput v4, Lk0/mb;->S:I

    .line 92
    sput v4, Lk0/mb;->T:I

    .line 93
    sput v13, Lk0/mb;->U:I

    .line 94
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_1a
    if-eqz v1, :cond_2a

    .line 95
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 96
    aget v0, v1, v4

    sput v0, Lk0/mb;->N:I

    .line 97
    sput v13, Lk0/mb;->R:I

    .line 98
    sput v4, Lk0/mb;->S:I

    .line 99
    sput v4, Lk0/mb;->T:I

    .line 100
    sput v13, Lk0/mb;->U:I

    .line 101
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_1b
    if-eqz v1, :cond_2a

    .line 102
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 103
    aget v0, v1, v4

    sput v0, Lk0/mb;->M:I

    .line 104
    sput v13, Lk0/mb;->R:I

    .line 105
    sput v4, Lk0/mb;->S:I

    .line 106
    sput v4, Lk0/mb;->T:I

    .line 107
    sput v13, Lk0/mb;->U:I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_1c
    if-eqz v1, :cond_2a

    .line 109
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 110
    aget v0, v1, v4

    sput v0, Lk0/mb;->L:I

    .line 111
    sput v13, Lk0/mb;->R:I

    .line 112
    sput v4, Lk0/mb;->S:I

    .line 113
    sput v4, Lk0/mb;->T:I

    .line 114
    sput v13, Lk0/mb;->U:I

    .line 115
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_1d
    if-eqz v1, :cond_2a

    .line 116
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 117
    aget v0, v1, v4

    sput v0, Lk0/mb;->Q:I

    .line 118
    sput v4, Lk0/mb;->R:I

    .line 119
    sput v13, Lk0/mb;->S:I

    .line 120
    sput v4, Lk0/mb;->T:I

    .line 121
    sput v13, Lk0/mb;->U:I

    .line 122
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_1e
    if-eqz v1, :cond_2a

    .line 123
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 124
    aget v0, v1, v4

    sput v0, Lk0/mb;->P:I

    .line 125
    sput v4, Lk0/mb;->R:I

    .line 126
    sput v13, Lk0/mb;->S:I

    .line 127
    sput v4, Lk0/mb;->T:I

    .line 128
    sput v13, Lk0/mb;->U:I

    .line 129
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_1f
    if-eqz v1, :cond_2a

    .line 130
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 131
    aget v0, v1, v4

    sput v0, Lk0/mb;->O:I

    .line 132
    sput v4, Lk0/mb;->R:I

    .line 133
    sput v13, Lk0/mb;->S:I

    .line 134
    sput v4, Lk0/mb;->T:I

    .line 135
    sput v13, Lk0/mb;->U:I

    .line 136
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_20
    if-eqz v1, :cond_2a

    .line 137
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 138
    aget v0, v1, v4

    sput v0, Lk0/mb;->N:I

    .line 139
    sput v4, Lk0/mb;->R:I

    .line 140
    sput v13, Lk0/mb;->S:I

    .line 141
    sput v4, Lk0/mb;->T:I

    .line 142
    sput v13, Lk0/mb;->U:I

    .line 143
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_21
    if-eqz v1, :cond_2a

    .line 144
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 145
    aget v0, v1, v4

    sput v0, Lk0/mb;->M:I

    .line 146
    sput v4, Lk0/mb;->R:I

    .line 147
    sput v13, Lk0/mb;->S:I

    .line 148
    sput v4, Lk0/mb;->T:I

    .line 149
    sput v13, Lk0/mb;->U:I

    .line 150
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_22
    if-eqz v1, :cond_2a

    .line 151
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 152
    aget v0, v1, v4

    sput v0, Lk0/mb;->L:I

    .line 153
    sput v4, Lk0/mb;->R:I

    .line 154
    sput v13, Lk0/mb;->S:I

    .line 155
    sput v4, Lk0/mb;->T:I

    .line 156
    sput v13, Lk0/mb;->U:I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_23
    if-eqz v1, :cond_2a

    .line 158
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 159
    aget v0, v1, v4

    if-ne v0, v13, :cond_a

    .line 160
    sput v13, Lk0/mb;->T:I

    .line 161
    sput v4, Lk0/mb;->U:I

    .line 162
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lk0/mb;->v3()V

    goto/16 :goto_2

    :pswitch_24
    if-eqz v1, :cond_2a

    .line 163
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 164
    aget v0, v1, v4

    if-eqz v0, :cond_b

    .line 165
    aput v13, v1, v4

    .line 166
    :cond_b
    aget v0, v1, v4

    const/16 v1, 0xb

    invoke-virtual {v9, v1, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_25
    if-eqz v1, :cond_2a

    .line 167
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 168
    aget v0, v1, v4

    if-gez v0, :cond_c

    .line 169
    aput v4, v1, v4

    .line 170
    :cond_c
    aget v0, v1, v4

    if-le v0, v11, :cond_d

    .line 171
    aput v11, v1, v4

    .line 172
    :cond_d
    aget v0, v1, v4

    const/16 v1, 0x9

    invoke-virtual {v9, v1, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_26
    if-eqz v1, :cond_2a

    .line 173
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 174
    aget v0, v1, v4

    if-nez v0, :cond_e

    .line 175
    invoke-virtual {v9, v8, v13}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    .line 176
    :cond_e
    invoke-virtual {v9, v8, v11}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_27
    if-eqz v1, :cond_2a

    .line 177
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 178
    aget v0, v1, v4

    if-nez v0, :cond_f

    .line 179
    invoke-virtual {v9, v12, v13}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    .line 180
    :cond_f
    invoke-virtual {v9, v12, v11}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_28
    if-eqz v1, :cond_2a

    .line 181
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 182
    aget v0, v1, v4

    if-nez v0, :cond_10

    .line 183
    invoke-virtual {v9, v15, v13}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    .line 184
    :cond_10
    invoke-virtual {v9, v15, v11}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_29
    if-eqz v1, :cond_2a

    .line 185
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 186
    aget v0, v1, v4

    if-eqz v0, :cond_11

    .line 187
    aput v13, v1, v4

    .line 188
    :cond_11
    aget v0, v1, v4

    const/16 v1, 0x8

    invoke-virtual {v9, v1, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_2a
    if-eqz v1, :cond_2a

    .line 189
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 190
    aget v0, v1, v4

    if-eqz v0, :cond_12

    .line 191
    aput v13, v1, v4

    .line 192
    :cond_12
    aget v0, v1, v4

    invoke-virtual {v9, v7, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_2b
    if-eqz v1, :cond_2a

    .line 193
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 194
    aget v0, v1, v4

    if-eqz v0, :cond_13

    .line 195
    aput v13, v1, v4

    .line 196
    :cond_13
    aget v0, v1, v4

    invoke-virtual {v9, v5, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_2c
    if-eqz v1, :cond_2a

    .line 197
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 198
    aget v0, v1, v4

    if-eqz v0, :cond_14

    .line 199
    aput v13, v1, v4

    .line 200
    :cond_14
    aget v0, v1, v4

    invoke-virtual {v9, v13, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_2d
    if-eqz v1, :cond_2a

    .line 201
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 202
    aget v0, v1, v4

    if-eqz v0, :cond_15

    .line 203
    aput v13, v1, v4

    .line 204
    :cond_15
    aget v0, v1, v4

    invoke-virtual {v9, v10, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_2e
    if-eqz v1, :cond_2a

    .line 205
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 206
    aget v0, v1, v4

    if-eqz v0, :cond_16

    .line 207
    aput v13, v1, v4

    .line 208
    :cond_16
    aget v0, v1, v4

    invoke-virtual {v9, v11, v0}, Lk0/mb;->l3(II)V

    goto/16 :goto_2

    :pswitch_2f
    if-eqz v1, :cond_2a

    .line 209
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 210
    aget v0, v1, v4

    new-array v1, v7, [I

    aput v6, v1, v4

    aput v7, v1, v13

    aput v16, v1, v11

    int-to-byte v0, v0

    aput v0, v1, v10

    aput v4, v1, v12

    aput v4, v1, v8

    .line 211
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_30
    if-eqz v1, :cond_2a

    .line 212
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 213
    aget v0, v1, v4

    if-ne v0, v11, :cond_17

    const/16 v0, 0x41

    goto :goto_0

    .line 214
    :cond_17
    aget v0, v1, v4

    if-ne v0, v10, :cond_18

    const/16 v0, 0x22

    goto :goto_0

    :cond_18
    move v0, v4

    :goto_0
    new-array v1, v7, [I

    aput v6, v1, v4

    aput v7, v1, v13

    aput v16, v1, v11

    int-to-byte v0, v0

    aput v0, v1, v10

    aput v4, v1, v12

    aput v4, v1, v8

    .line 215
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_31
    if-eqz v1, :cond_2a

    .line 216
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 217
    aget v0, v1, v4

    if-eqz v0, :cond_19

    .line 218
    aput v13, v1, v4

    .line 219
    :cond_19
    aget v0, v1, v4

    invoke-virtual {v9, v7, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_32
    if-eqz v1, :cond_2a

    .line 220
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 221
    aget v0, v1, v4

    const/16 v1, 0xb

    invoke-virtual {v9, v1, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_33
    if-eqz v1, :cond_2a

    .line 222
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 223
    aget v0, v1, v4

    invoke-virtual {v9, v15, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_34
    if-eqz v1, :cond_2a

    .line 224
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 225
    aget v0, v1, v4

    add-int/2addr v0, v13

    const/16 v1, 0x9

    invoke-virtual {v9, v1, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_35
    if-eqz v1, :cond_2a

    .line 226
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 227
    aget v0, v1, v4

    if-eqz v0, :cond_1a

    .line 228
    aput v13, v1, v4

    :cond_1a
    const/16 v0, 0x10

    .line 229
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_36
    if-eqz v1, :cond_2a

    .line 230
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 231
    aget v0, v1, v4

    if-eqz v0, :cond_1b

    .line 232
    aput v13, v1, v4

    .line 233
    :cond_1b
    aget v0, v1, v4

    invoke-virtual {v9, v11, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_37
    if-eqz v1, :cond_2a

    .line 234
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 235
    aget v0, v1, v4

    if-eqz v0, :cond_1c

    .line 236
    aput v13, v1, v4

    .line 237
    :cond_1c
    aget v0, v1, v4

    invoke-virtual {v9, v13, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_38
    if-eqz v1, :cond_2a

    .line 238
    array-length v0, v1

    if-lez v0, :cond_2a

    const/16 v0, 0xf

    .line 239
    aget v1, v1, v4

    invoke-virtual {v9, v0, v1}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_39
    if-eqz v1, :cond_2a

    .line 240
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 241
    aget v0, v1, v4

    invoke-virtual {v9, v3, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_3a
    if-eqz v1, :cond_2a

    .line 242
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 243
    aget v0, v1, v4

    invoke-virtual {v9, v14, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_3b
    if-eqz v1, :cond_2a

    .line 244
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 245
    aget v0, v1, v4

    invoke-virtual {v9, v2, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_3c
    if-eqz v1, :cond_2a

    .line 246
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 247
    aget v0, v1, v4

    invoke-virtual {v9, v5, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_3d
    if-eqz v1, :cond_2a

    .line 248
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 249
    aget v0, v1, v4

    invoke-virtual {v9, v8, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_3e
    if-eqz v1, :cond_2a

    .line 250
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 251
    aget v0, v1, v4

    invoke-virtual {v9, v12, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    :pswitch_3f
    if-eqz v1, :cond_2a

    .line 252
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 253
    aget v0, v1, v4

    if-eqz v0, :cond_1d

    .line 254
    aput v13, v1, v4

    .line 255
    :cond_1d
    aget v0, v1, v4

    invoke-virtual {v9, v10, v0}, Lk0/mb;->m3(II)V

    goto/16 :goto_2

    .line 256
    :cond_1e
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0xb

    if-eq v0, v3, :cond_23

    if-eq v0, v2, :cond_23

    if-ne v0, v14, :cond_1f

    goto :goto_1

    .line 257
    :cond_1f
    aget v0, v1, v4

    if-ne v0, v10, :cond_20

    new-array v0, v12, [I

    .line 258
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 259
    :cond_20
    aget v0, v1, v4

    if-ne v0, v11, :cond_21

    new-array v0, v12, [I

    .line 260
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 261
    :cond_21
    aget v0, v1, v4

    if-ne v0, v13, :cond_22

    new-array v0, v12, [I

    .line 262
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 263
    :cond_22
    aget v0, v1, v4

    if-nez v0, :cond_2a

    new-array v0, v12, [I

    .line 264
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 265
    :cond_23
    :goto_1
    aget v0, v1, v4

    if-ne v0, v11, :cond_24

    new-array v0, v12, [I

    .line 266
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 267
    :cond_24
    aget v0, v1, v4

    if-ne v0, v13, :cond_25

    new-array v0, v12, [I

    .line 268
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 269
    :cond_25
    aget v0, v1, v4

    if-nez v0, :cond_2a

    new-array v0, v12, [I

    .line 270
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 271
    :cond_26
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C_CHANGE_PANORAMA  ==== "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 272
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_27

    new-array v0, v12, [I

    .line 273
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_27
    new-array v0, v12, [I

    .line 274
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_28
    if-eqz v1, :cond_2a

    .line 275
    array-length v0, v1

    if-lez v0, :cond_2a

    new-array v0, v7, [I

    aput v6, v0, v4

    aput v7, v0, v13

    const/16 v2, -0x7d

    aput v2, v0, v11

    .line 276
    aget v2, v1, v4

    int-to-byte v2, v2

    aput v2, v0, v10

    aget v2, v1, v13

    int-to-byte v2, v2

    aput v2, v0, v12

    aget v1, v1, v11

    int-to-byte v1, v1

    aput v1, v0, v8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_29
    if-eqz v1, :cond_2a

    .line 277
    array-length v0, v1

    if-lez v0, :cond_2a

    .line 278
    aget v0, v1, v4

    const/16 v1, 0x8

    invoke-virtual {v9, v1, v0}, Lk0/mb;->m3(II)V

    :cond_2a
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3b
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

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x46
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
        0x4
        -0x58
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        -0x58
        0x4
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        -0x58
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x4
        -0x58
        0x5
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x4
        -0x58
        0x8
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x4
        -0x58
        0x6
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x4
        -0x58
        0x7
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x4
        -0x58
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x4
        -0x58
        0x0
    .end array-data
.end method

.method public a3(IIIIIIII)V
    .locals 7

    .line 1
    sput p1, Lk0/mb;->Y:I

    .line 2
    sput p2, Lk0/mb;->Z:I

    .line 3
    sput p3, Lk0/mb;->a0:I

    .line 4
    sput p5, Lk0/mb;->b0:I

    .line 5
    sput p4, Lk0/mb;->c0:I

    shr-int/lit8 v0, p6, 0x7

    const/4 v1, 0x1

    and-int/2addr v0, v1

    .line 6
    sput v0, Lk0/mb;->d0:I

    shr-int/lit8 v0, p6, 0x6

    and-int/2addr v0, v1

    .line 7
    sput v0, Lk0/mb;->e0:I

    and-int/lit8 v0, p6, 0xf

    .line 8
    sput v0, Lk0/mb;->f0:I

    shr-int/lit8 v0, p7, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 9
    sput v0, Lk0/mb;->g0:I

    and-int/lit8 v0, p7, 0xf

    .line 10
    sput v0, Lk0/mb;->h0:I

    and-int/lit16 v0, p8, 0xff

    .line 11
    sput v0, Lk0/mb;->i0:I

    const/16 v0, 0xb

    new-array v2, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x8

    aput v3, v2, v1

    const/4 v5, 0x2

    const/16 v6, 0xc5

    aput v6, v2, v5

    const/4 v5, 0x3

    aput p1, v2, v5

    const/4 p1, 0x4

    aput p2, v2, p1

    const/4 p2, 0x5

    aput p3, v2, p2

    const/4 p3, 0x6

    aput p4, v2, p3

    const/4 p4, 0x7

    aput p5, v2, p4

    aput p6, v2, v3

    const/16 p5, 0x9

    aput p7, v2, p5

    const/16 p6, 0xa

    aput p8, v2, p6

    .line 12
    invoke-static {v2}, Lz/k;->s([I)V

    new-array p7, v1, [I

    .line 13
    sget p8, Lk0/mb;->Y:I

    aput p8, p7, v4

    const/16 p8, 0xed

    invoke-static {p8, p7}, Lk0/qt;->y0(I[I)V

    .line 14
    iget-object p7, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p7, p1, p4}, Lo1/g0;->b(II)I

    move-result p7

    sget p8, Lk0/mb;->Y:I

    if-eq p7, p8, :cond_0

    .line 15
    iget-object p7, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p7, p1, p8}, Lo1/g0;->g(II)V

    :cond_0
    const/16 p1, 0xee

    new-array p7, v1, [I

    .line 16
    sget p8, Lk0/mb;->Z:I

    aput p8, p7, v4

    invoke-static {p1, p7}, Lk0/qt;->y0(I[I)V

    .line 17
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p2, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p7, Lk0/mb;->Z:I

    if-eq p1, p7, :cond_1

    .line 18
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p2, p7}, Lo1/g0;->g(II)V

    :cond_1
    const/16 p1, 0xef

    new-array p2, v1, [I

    .line 19
    sget p7, Lk0/mb;->a0:I

    aput p7, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 20
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p3, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/mb;->a0:I

    if-eq p1, p2, :cond_2

    .line 21
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p3, p2}, Lo1/g0;->g(II)V

    :cond_2
    const/16 p1, 0xf0

    new-array p2, v1, [I

    .line 22
    sget p3, Lk0/mb;->c0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 23
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, v3, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/mb;->c0:I

    if-eq p1, p2, :cond_3

    .line 24
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, v3, p2}, Lo1/g0;->g(II)V

    :cond_3
    const/16 p1, 0xf1

    new-array p2, v1, [I

    .line 25
    sget p3, Lk0/mb;->b0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 26
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p4, p4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/mb;->b0:I

    if-eq p1, p2, :cond_4

    .line 27
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p4, p2}, Lo1/g0;->g(II)V

    :cond_4
    const/16 p1, 0xf2

    new-array p2, v1, [I

    .line 28
    sget p3, Lk0/mb;->d0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 29
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p5, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/mb;->d0:I

    if-eq p1, p2, :cond_5

    .line 30
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p5, p2}, Lo1/g0;->g(II)V

    :cond_5
    const/16 p1, 0xf3

    new-array p2, v1, [I

    .line 31
    sget p3, Lk0/mb;->e0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 32
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p6, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/mb;->e0:I

    if-eq p1, p2, :cond_6

    .line 33
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p6, p2}, Lo1/g0;->g(II)V

    :cond_6
    const/16 p1, 0xf4

    new-array p2, v1, [I

    .line 34
    sget p3, Lk0/mb;->f0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 35
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, v0, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p2, Lk0/mb;->f0:I

    if-eq p1, p2, :cond_7

    .line 36
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, v0, p2}, Lo1/g0;->g(II)V

    :cond_7
    const/16 p1, 0xf5

    new-array p2, v1, [I

    .line 37
    sget p3, Lk0/mb;->g0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 38
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/mb;->g0:I

    if-eq p1, p3, :cond_8

    .line 39
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_8
    const/16 p1, 0xf6

    new-array p2, v1, [I

    .line 40
    sget p3, Lk0/mb;->h0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 41
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/mb;->h0:I

    if-eq p1, p3, :cond_9

    .line 42
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_9
    const/16 p1, 0xf7

    new-array p2, v1, [I

    .line 43
    sget p3, Lk0/mb;->i0:I

    aput p3, p2, v4

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 44
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v4}, Lo1/g0;->b(II)I

    move-result p1

    sget p3, Lk0/mb;->i0:I

    if-eq p1, p3, :cond_a

    .line 45
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p2, p3}, Lo1/g0;->g(II)V

    :cond_a
    return-void
.end method

.method public b3(II)V
    .locals 4

    .line 1
    sput p1, Lk0/mb;->V:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xba

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/mb;->V:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    .line 5
    :cond_0
    sput p2, Lk0/mb;->W:I

    const/16 p1, 0xbb

    new-array v1, v0, [I

    aput p2, v1, v2

    .line 6
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 7
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/mb;->W:I

    if-eq p1, v1, :cond_1

    .line 8
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, p2, v1}, Lo1/g0;->g(II)V

    :cond_1
    const/4 p1, 0x5

    new-array v1, p1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    aput p1, v1, v0

    const/16 p1, -0x74

    aput p1, v1, p2

    const/4 p1, 0x3

    .line 9
    sget p2, Lk0/mb;->V:I

    int-to-byte p2, p2

    aput p2, v1, p1

    const/4 p1, 0x4

    sget p2, Lk0/mb;->W:I

    int-to-byte p2, p2

    aput p2, v1, p1

    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public c3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/mb;->X:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x38

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/mb;->X:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/mb;->v:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3(II)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    const/16 v2, -0x76

    aput v2, v1, v0

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput p1, v1, v0

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v1, p2

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3(II)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    const/16 v2, -0x80

    aput v2, v1, v0

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput p1, v1, v0

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v1, p2

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final n3()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.canbus"

    const-string v2, "com.syu.canbus.ActivityLauncher"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final o3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408OilMileIndexActi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final p3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SeatMassageActi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final q3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408CruisingSpeedSetActi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final r3()V
    .locals 3

    .line 1
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ408SpeedLimitSetActi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final s3()V
    .locals 3

    const-string v0, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ407CarCD"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final t3()V
    .locals 3

    const-string v0, "com.syu.carinfo.rzc.biaozhi408.RZC_BZ407CarRadio"

    .line 1
    :try_start_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final u3()V
    .locals 11

    .line 1
    sget v0, Lk0/mb;->K:I

    int-to-byte v0, v0

    .line 2
    sget v1, Lk0/mb;->L:I

    int-to-byte v1, v1

    .line 3
    sget v2, Lk0/mb;->M:I

    int-to-byte v2, v2

    .line 4
    sget v3, Lk0/mb;->N:I

    int-to-byte v3, v3

    .line 5
    sget v4, Lk0/mb;->O:I

    int-to-byte v4, v4

    .line 6
    sget v5, Lk0/mb;->P:I

    int-to-byte v5, v5

    .line 7
    sget v6, Lk0/mb;->Q:I

    int-to-byte v6, v6

    const/16 v7, 0xf

    new-array v8, v7, [I

    const/16 v9, 0xe3

    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x1

    aput v7, v8, v9

    const/4 v7, 0x2

    const/16 v9, -0x77

    aput v9, v8, v7

    const/4 v7, 0x3

    aput v0, v8, v7

    const/4 v0, 0x4

    aput v1, v8, v0

    const/4 v0, 0x5

    aput v2, v8, v0

    const/4 v0, 0x6

    aput v3, v8, v0

    const/4 v0, 0x7

    aput v4, v8, v0

    const/16 v0, 0x8

    aput v5, v8, v0

    const/16 v0, 0x9

    aput v6, v8, v0

    const/16 v0, 0xa

    aput v10, v8, v0

    const/16 v0, 0xb

    aput v10, v8, v0

    const/16 v0, 0xc

    aput v10, v8, v0

    const/16 v0, 0xd

    aput v10, v8, v0

    const/16 v0, 0xe

    aput v10, v8, v0

    .line 8
    invoke-static {v8}, Lz/k;->s([I)V

    return-void
.end method

.method public final v3()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sput v0, Lk0/mb;->K:I

    .line 2
    sget v1, Lk0/mb;->R:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    sput v0, Lk0/mb;->K:I

    .line 3
    sget v1, Lk0/mb;->S:I

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    sput v0, Lk0/mb;->K:I

    .line 4
    sget v1, Lk0/mb;->T:I

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    sput v0, Lk0/mb;->K:I

    .line 5
    sget v1, Lk0/mb;->U:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    sput v0, Lk0/mb;->K:I

    .line 6
    invoke-virtual {p0}, Lk0/mb;->u3()V

    return-void
.end method
