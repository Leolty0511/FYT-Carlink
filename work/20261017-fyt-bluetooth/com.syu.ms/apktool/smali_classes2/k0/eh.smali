.class public Lk0/eh;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I

.field public static final B:[I

.field public static y:I

.field public static z:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:I

.field public f:I

.field public g:[[I

.field public h:I

.field public i:I

.field public j:[[I

.field public k:Z

.field public l:I

.field public final m:I

.field public final n:I

.field public o:Lo1/g0;

.field public p:Ljava/lang/Runnable;

.field public q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:I

.field public t:Ljava/lang/Runnable;

.field public u:Ljava/lang/Runnable;

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/eh;->B:[I

    return-void

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
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/eh;->c:I

    const/16 v2, 0x19

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

    const/16 v2, 0xf

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    const/16 v19, 0x10

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    const/16 v20, 0x11

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    const/16 v21, 0x12

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    const/16 v22, 0x13

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    const/16 v23, 0x14

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    const/16 v24, 0x15

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_16

    const/16 v24, 0x16

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    const/16 v24, 0x17

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    const/16 v24, 0x18

    aput-object v5, v3, v24

    iput-object v3, v0, Lk0/eh;->d:[[I

    .line 4
    iput v1, v0, Lk0/eh;->f:I

    new-array v3, v2, [[I

    new-array v5, v4, [I

    .line 5
    fill-array-data v5, :array_19

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v18

    iput-object v3, v0, Lk0/eh;->g:[[I

    .line 6
    iput v1, v0, Lk0/eh;->i:I

    const/16 v3, 0x1c

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 7
    fill-array-data v5, :array_28

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_2d

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_2e

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_2f

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_30

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_31

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_32

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_33

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_34

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_35

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_36

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_37

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_38

    aput-object v2, v3, v19

    new-array v2, v4, [I

    fill-array-data v2, :array_39

    aput-object v2, v3, v20

    new-array v2, v4, [I

    fill-array-data v2, :array_3a

    aput-object v2, v3, v21

    new-array v2, v4, [I

    fill-array-data v2, :array_3b

    aput-object v2, v3, v22

    new-array v2, v4, [I

    fill-array-data v2, :array_3c

    aput-object v2, v3, v23

    new-array v2, v4, [I

    fill-array-data v2, :array_3d

    const/16 v5, 0x15

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_3e

    const/16 v5, 0x16

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_3f

    const/16 v5, 0x17

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_40

    const/16 v5, 0x18

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_41

    const/16 v5, 0x19

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_42

    const/16 v5, 0x1a

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_43

    const/16 v5, 0x1b

    aput-object v2, v3, v5

    iput-object v3, v0, Lk0/eh;->j:[[I

    .line 8
    iput-boolean v1, v0, Lk0/eh;->k:Z

    .line 9
    iput v1, v0, Lk0/eh;->l:I

    const/16 v2, 0x1b

    .line 10
    iput v2, v0, Lk0/eh;->m:I

    .line 11
    iput v4, v0, Lk0/eh;->n:I

    .line 12
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/eh;->o:Lo1/g0;

    .line 13
    new-instance v2, Lk0/eh$a;

    invoke-direct {v2, v0}, Lk0/eh$a;-><init>(Lk0/eh;)V

    iput-object v2, v0, Lk0/eh;->p:Ljava/lang/Runnable;

    .line 14
    new-instance v2, Lk0/eh$b;

    invoke-direct {v2, v0}, Lk0/eh$b;-><init>(Lk0/eh;)V

    iput-object v2, v0, Lk0/eh;->q:Ljava/lang/Runnable;

    .line 15
    new-instance v2, Lk0/eh$c;

    invoke-direct {v2, v0}, Lk0/eh$c;-><init>(Lk0/eh;)V

    iput-object v2, v0, Lk0/eh;->r:Ljava/lang/Runnable;

    .line 16
    iput v1, v0, Lk0/eh;->s:I

    .line 17
    new-instance v2, Lk0/eh$d;

    invoke-direct {v2, v0}, Lk0/eh$d;-><init>(Lk0/eh;)V

    iput-object v2, v0, Lk0/eh;->t:Ljava/lang/Runnable;

    .line 18
    new-instance v2, Lk0/eh$e;

    invoke-direct {v2, v0}, Lk0/eh$e;-><init>(Lk0/eh;)V

    iput-object v2, v0, Lk0/eh;->u:Ljava/lang/Runnable;

    .line 19
    iput v1, v0, Lk0/eh;->v:I

    .line 20
    new-instance v2, Lk0/eh$f;

    invoke-direct {v2, v0}, Lk0/eh$f;-><init>(Lk0/eh;)V

    iput-object v2, v0, Lk0/eh;->w:Ljava/lang/Runnable;

    .line 21
    iput v1, v0, Lk0/eh;->x:I

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
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x15
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x34
    .end array-data

    :array_c
    .array-data 4
        0x17
        0x16
    .end array-data

    :array_d
    .array-data 4
        0x18
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x19
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x1a
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x1b
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x1c
        0x4b
    .end array-data

    :array_12
    .array-data 4
        0x1d
        0x4a
    .end array-data

    :array_13
    .array-data 4
        0x1e
        0x40
    .end array-data

    :array_14
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_15
    .array-data 4
        0x89
        0x4a
    .end array-data

    :array_16
    .array-data 4
        0x8a
        0x3a
    .end array-data

    :array_17
    .array-data 4
        0x8b
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x8c
        0x10
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x22
    .end array-data

    :array_1a
    .array-data 4
        0x2
        0x22
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x21
    .end array-data

    :array_1c
    .array-data 4
        0x4
        0x21
    .end array-data

    :array_1d
    .array-data 4
        0x5
        0x23
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x23
    .end array-data

    :array_1f
    .array-data 4
        0x7
        0x20
    .end array-data

    :array_20
    .array-data 4
        0x8
        0x20
    .end array-data

    :array_21
    .array-data 4
        0x10
        0x1f
    .end array-data

    :array_22
    .array-data 4
        0x11
        0x1e
    .end array-data

    :array_23
    .array-data 4
        0x12
        0x1d
    .end array-data

    :array_24
    .array-data 4
        0x13
        0x6
    .end array-data

    :array_25
    .array-data 4
        0x14
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x15
        0x26
    .end array-data

    :array_27
    .array-data 4
        0x16
        0x1
    .end array-data

    :array_28
    .array-data 4
        0x1
        0x4b
    .end array-data

    :array_29
    .array-data 4
        0x2
        0x4a
    .end array-data

    :array_2a
    .array-data 4
        0x3
        0x4a
    .end array-data

    :array_2b
    .array-data 4
        0x4
        0x35
    .end array-data

    :array_2c
    .array-data 4
        0x5
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x19
    .end array-data

    :array_2e
    .array-data 4
        0x7
        0x5
    .end array-data

    :array_2f
    .array-data 4
        0x8
        0x3a
    .end array-data

    :array_30
    .array-data 4
        0x9
        0x19
    .end array-data

    :array_31
    .array-data 4
        0xa
        0x38
    .end array-data

    :array_32
    .array-data 4
        0xb
        0x48
    .end array-data

    :array_33
    .array-data 4
        0xc
        0x26
    .end array-data

    :array_34
    .array-data 4
        0xd
        0xb
    .end array-data

    :array_35
    .array-data 4
        0xe
        0xf
    .end array-data

    :array_36
    .array-data 4
        0x10
        0x26
    .end array-data

    :array_37
    .array-data 4
        0x11
        0x3e
    .end array-data

    :array_38
    .array-data 4
        0x12
        0x6
    .end array-data

    :array_39
    .array-data 4
        0x13
        0x0
    .end array-data

    :array_3a
    .array-data 4
        0x14
        0x1f
    .end array-data

    :array_3b
    .array-data 4
        0x15
        0x1e
    .end array-data

    :array_3c
    .array-data 4
        0x16
        0x37
    .end array-data

    :array_3d
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_3e
    .array-data 4
        0x18
        0x20
    .end array-data

    :array_3f
    .array-data 4
        0x19
        0x20
    .end array-data

    :array_40
    .array-data 4
        0x1a
        0x23
    .end array-data

    :array_41
    .array-data 4
        0x1b
        0x23
    .end array-data

    :array_42
    .array-data 4
        0x1c
        0x21
    .end array-data

    :array_43
    .array-data 4
        0x1d
        0x21
    .end array-data
.end method

.method public static synthetic b3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/eh;->B:[I

    return-object v0
.end method

.method public static synthetic c3(Lk0/eh;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/eh;->o:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/eh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/eh;->i3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/eh;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/eh;->h3(I)V

    return-void
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
    sget v0, Lk0/nt;->a:I

    const v1, 0x1001c7    # 1.470006E-39f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/eh;->o:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/eh;->t:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/eh;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 5
    iput v2, v0, Lk0/mt;->e:I

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->g:I

    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lk0/mt;->i:I

    .line 9
    iput v1, v0, Lk0/mt;->b:I

    .line 10
    iput v1, v0, Lk0/mt;->c:I

    .line 11
    iput v1, v0, Lk0/mt;->d:I

    .line 12
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 13
    :sswitch_0
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v3, p0, Lk0/eh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v3, p0, Lk0/eh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    :goto_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 16
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 17
    iput v2, v0, Lk0/mt;->q:I

    .line 18
    invoke-static {}, La/f;->w()I

    move-result v0

    const/16 v3, 0x438

    if-ne v0, v3, :cond_1

    .line 19
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    .line 21
    iput v1, v0, Lk0/mt;->q:I

    .line 22
    :cond_1
    :goto_1
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_2

    .line 23
    :sswitch_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 24
    :goto_2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/eh;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xf01c7 -> :sswitch_0
        0x1001c7 -> :sswitch_0
        0x2e01c7 -> :sswitch_0
        0x2f01c7 -> :sswitch_0
        0x3301c7 -> :sswitch_0
        0x3401c7 -> :sswitch_0
        0x4801c8 -> :sswitch_0
        0x4901c8 -> :sswitch_0
        0x8801c5 -> :sswitch_0
        0x8901c5 -> :sswitch_0
        0x9f01c7 -> :sswitch_0
        0xa001c7 -> :sswitch_0
        0xfd01c6 -> :sswitch_0
        0xfe01c6 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xb601c7 -> :sswitch_1
        0xb701c7 -> :sswitch_1
        0xbb01c7 -> :sswitch_1
        0xbc01c7 -> :sswitch_1
        0xbd01c7 -> :sswitch_1
        0xbe01c7 -> :sswitch_1
    .end sparse-switch
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x24

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_4d

    const/16 v3, 0x26

    if-eq v2, v3, :cond_40

    const/16 v3, 0x35

    const/16 v15, 0xb

    const v16, 0xff00

    const/16 v13, 0x8

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x28

    const/16 v11, 0xd

    const/16 v14, 0xa

    const/16 v12, 0xf

    if-eq v2, v3, :cond_29

    const/16 v3, 0x29

    if-eq v2, v3, :cond_28

    const/16 v3, 0x61

    if-eq v2, v3, :cond_27

    const/16 v3, 0x62

    if-eq v2, v3, :cond_20

    const/16 v3, 0x64

    if-eq v2, v3, :cond_17

    const/16 v3, 0x65

    if-eq v2, v3, :cond_12

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_23

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    shr-int/lit8 v2, v1, 0x6

    and-int/2addr v2, v10

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    new-array v2, v7, [I

    .line 3
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 4
    :cond_0
    iput-boolean v10, v0, Lk0/eh;->k:Z

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v9, v0, Lk0/eh;->k:Z

    :goto_0
    and-int/2addr v1, v13

    if-nez v1, :cond_2

    move v1, v9

    goto :goto_1

    :cond_2
    move v1, v10

    .line 6
    :goto_1
    sput v1, Lk0/eh;->y:I

    const/16 v2, 0x3f5

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 7
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 8
    sget v1, Lu0/b;->r0:I

    if-nez v1, :cond_3

    goto/16 :goto_23

    .line 9
    :cond_3
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 10
    sget v1, Lk0/eh;->A:I

    if-ne v1, v10, :cond_4f

    .line 11
    sget v1, Lk0/eh;->y:I

    if-eqz v1, :cond_4

    .line 12
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_23

    .line 13
    :cond_4
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_23

    :pswitch_1
    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 14
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v12

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    .line 15
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 16
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v12

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 17
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 18
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v10, [I

    .line 19
    aget-byte v4, v1, v5

    shr-int/2addr v4, v9

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 20
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    .line 21
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_3
    const/16 v2, 0x64

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 22
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 24
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 25
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 26
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 27
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 28
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 29
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 30
    iput v2, v0, Lk0/eh;->c:I

    move v2, v9

    .line 31
    :goto_2
    iget-object v3, v0, Lk0/eh;->d:[[I

    array-length v6, v3

    if-ge v2, v6, :cond_6

    .line 32
    iget v6, v0, Lk0/eh;->c:I

    aget-object v12, v3, v2

    aget v12, v12, v9

    if-ne v6, v12, :cond_5

    if-eqz v6, :cond_6

    .line 33
    iput v2, v0, Lk0/eh;->b:I

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 34
    :cond_6
    :goto_3
    iget v6, v0, Lk0/eh;->c:I

    const/16 v12, 0x13

    if-eq v6, v12, :cond_c

    const/16 v4, 0x14

    if-eq v6, v4, :cond_9

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_7

    .line 35
    array-length v1, v3

    if-ge v2, v1, :cond_4f

    .line 36
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :cond_7
    if-nez v1, :cond_4f

    .line 37
    iget v1, v0, Lk0/eh;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_8

    if-eq v1, v8, :cond_8

    .line 38
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 39
    :cond_8
    iput v8, v0, Lk0/eh;->b:I

    goto/16 :goto_23

    :cond_9
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_4f

    .line 40
    sget v1, Lu0/b;->D:I

    if-eq v1, v15, :cond_b

    if-eq v1, v11, :cond_a

    .line 41
    invoke-static {v5, v9}, Ll0/b0;->l0(II)V

    .line 42
    invoke-static {v5, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :cond_a
    new-array v1, v7, [I

    .line 43
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    :cond_b
    new-array v1, v7, [I

    .line 44
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    :cond_c
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_4f

    .line 45
    sget v1, Lu0/b;->D:I

    if-eq v1, v15, :cond_e

    if-eq v1, v11, :cond_d

    .line 46
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :cond_d
    new-array v1, v7, [I

    .line 48
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    :cond_e
    new-array v1, v7, [I

    .line 49
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_23

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 50
    aget-byte v3, v1, v2

    const/16 v4, 0x94

    new-array v7, v10, [I

    shr-int/lit8 v11, v3, 0x0

    and-int/2addr v11, v12

    aput v11, v7, v9

    .line 51
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x95

    new-array v7, v10, [I

    const/4 v11, 0x7

    shr-int/2addr v3, v11

    and-int/2addr v3, v10

    aput v3, v7, v9

    .line 52
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x96

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 53
    aget-byte v7, v1, v5

    and-int/2addr v7, v8

    aput v7, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 54
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v6, v6, [I

    aput v12, v6, v9

    aget-byte v2, v1, v2

    shl-int/2addr v2, v13

    and-int v2, v2, v16

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    aput v1, v6, v10

    const/4 v1, 0x0

    invoke-static {v3, v4, v6, v1, v1}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 56
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 57
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 58
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 59
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    .line 60
    aget-byte v5, v1, v4

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v10, [I

    .line 61
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v10, [I

    .line 62
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    const/4 v4, 0x7

    and-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 63
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v5, p2, 0x3

    .line 64
    aget-byte v6, v1, v5

    and-int/2addr v6, v8

    add-int/lit8 v11, p2, 0x4

    .line 65
    aget-byte v12, v1, v11

    and-int/2addr v12, v8

    add-int/lit8 v7, p2, 0x5

    .line 66
    aget-byte v13, v1, v7

    and-int/2addr v13, v8

    if-nez v3, :cond_f

    if-nez v6, :cond_f

    if-nez v12, :cond_f

    if-nez v13, :cond_f

    .line 67
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 68
    :cond_f
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_10

    sget v9, Ll0/c0;->h:I

    if-ne v9, v6, :cond_10

    sget v9, Ll0/c0;->i:I

    if-ne v9, v12, :cond_10

    sget v9, Ll0/c0;->j:I

    if-eq v9, v13, :cond_11

    .line 69
    :cond_10
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_11

    .line 70
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 71
    sput v4, Ll0/c0;->k:I

    .line 72
    sget-object v4, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v4}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 73
    :cond_11
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 74
    sput v6, Ll0/c0;->h:I

    .line 75
    sput v12, Ll0/c0;->i:I

    .line 76
    sput v13, Ll0/c0;->j:I

    .line 77
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 78
    aget-byte v2, v1, v5

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 79
    aget-byte v2, v1, v11

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 80
    aget-byte v1, v1, v7

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_23

    :cond_12
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 82
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 83
    iput v2, v0, Lk0/eh;->f:I

    move v2, v9

    .line 84
    :goto_5
    iget-object v3, v0, Lk0/eh;->g:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 85
    iget v4, v0, Lk0/eh;->f:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_13

    if-eqz v4, :cond_14

    .line 86
    iput v2, v0, Lk0/eh;->e:I

    goto :goto_6

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    :goto_6
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_15

    .line 87
    array-length v1, v3

    if-ge v2, v1, :cond_4f

    .line 88
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :cond_15
    if-nez v1, :cond_4f

    .line 89
    iget v1, v0, Lk0/eh;->e:I

    array-length v2, v3

    if-ge v1, v2, :cond_16

    if-eq v1, v8, :cond_16

    .line 90
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 91
    :cond_16
    iput v8, v0, Lk0/eh;->e:I

    goto/16 :goto_23

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 93
    aget-byte v1, v1, v3

    and-int/2addr v2, v8

    .line 94
    iput v2, v0, Lk0/eh;->i:I

    move v2, v9

    .line 95
    :goto_7
    iget-object v3, v0, Lk0/eh;->j:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 96
    iget v4, v0, Lk0/eh;->i:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_18

    if-eqz v4, :cond_19

    .line 97
    iput v2, v0, Lk0/eh;->h:I

    goto :goto_8

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 98
    :cond_19
    :goto_8
    iget v4, v0, Lk0/eh;->i:I

    const/16 v5, 0x14

    if-eq v4, v5, :cond_1e

    const/16 v5, 0x15

    if-eq v4, v5, :cond_1c

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_1a

    .line 99
    array-length v1, v3

    if-ge v2, v1, :cond_4f

    .line 100
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :cond_1a
    if-nez v1, :cond_4f

    .line 101
    iget v1, v0, Lk0/eh;->h:I

    array-length v2, v3

    if-ge v1, v2, :cond_1b

    if-eq v1, v8, :cond_1b

    .line 102
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 103
    :cond_1b
    iput v8, v0, Lk0/eh;->h:I

    goto/16 :goto_23

    :cond_1c
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1d

    .line 104
    invoke-static {v13, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 105
    :cond_1d
    invoke-static {v13, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    :cond_1e
    move v2, v9

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1f

    const/4 v3, 0x7

    .line 106
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    const/4 v3, 0x7

    .line 107
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_23

    .line 108
    :cond_20
    iget v2, v0, Lk0/eh;->s:I

    if-ne v2, v15, :cond_22

    add-int/lit8 v2, p2, 0x2

    .line 109
    aget-byte v3, v1, v2

    iget v5, v0, Lk0/eh;->x:I

    if-eq v3, v5, :cond_22

    .line 110
    aget-byte v2, v1, v2

    iput v2, v0, Lk0/eh;->x:I

    if-ne v2, v10, :cond_21

    .line 111
    invoke-virtual/range {p0 .. p0}, Lk0/eh;->g3()V

    goto :goto_b

    :cond_21
    if-ne v2, v6, :cond_22

    .line 112
    invoke-virtual/range {p0 .. p0}, Lk0/eh;->f3()V

    :cond_22
    :goto_b
    const/16 v2, 0x72

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 113
    aget-byte v11, v1, v5

    and-int/2addr v11, v8

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 114
    aget-byte v2, v1, v5

    and-int/2addr v2, v8

    if-eq v2, v10, :cond_25

    if-eq v2, v6, :cond_24

    if-eq v2, v4, :cond_23

    goto/16 :goto_23

    :cond_23
    const/16 v2, 0xb7

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 115
    aget-byte v1, v1, v4

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_24
    const/16 v2, 0x71

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 116
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x5

    .line 117
    aget-byte v6, v1, v5

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v10, [I

    .line 118
    aget-byte v4, v1, v5

    shr-int/2addr v4, v9

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    add-int/lit8 v3, p2, 0x7

    .line 119
    aget-byte v3, v1, v3

    shl-int/2addr v3, v13

    and-int v3, v3, v16

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    or-int/2addr v3, v4

    aput v3, v2, v9

    const/16 v3, 0x80

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 120
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 121
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xb

    .line 122
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 123
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xd

    .line 124
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 125
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xf

    .line 126
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_25
    add-int/lit8 v2, p2, 0x3

    .line 127
    aget-byte v3, v1, v2

    if-nez v3, :cond_26

    const/16 v2, 0x73

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 128
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 129
    aget-byte v5, v1, v4

    const/4 v6, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    .line 130
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    .line 131
    aget-byte v4, v1, v4

    shr-int/2addr v4, v9

    and-int/2addr v4, v12

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 132
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x6

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    .line 133
    :cond_26
    aget-byte v2, v1, v2

    if-ne v2, v10, :cond_4f

    const/16 v2, 0x73

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 134
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 135
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x5

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 136
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x7

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 137
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xc

    .line 138
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0xb

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xe

    .line 139
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x10

    .line 140
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0xf

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_27
    const/16 v2, 0x6a

    new-array v3, v10, [I

    add-int/lit8 v8, p2, 0x2

    .line 141
    aget-byte v11, v1, v8

    shr-int/2addr v11, v9

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    .line 142
    aget-byte v11, v1, v8

    shr-int/2addr v11, v10

    and-int/2addr v11, v10

    aput v11, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    .line 143
    aget-byte v11, v1, v8

    shr-int/lit8 v6, v11, 0x2

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    .line 144
    aget-byte v6, v1, v8

    shr-int/lit8 v5, v6, 0x3

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    .line 145
    aget-byte v5, v1, v8

    shr-int/2addr v5, v4

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    .line 146
    aget-byte v5, v1, v8

    shr-int/2addr v5, v7

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 147
    aget-byte v5, v1, v5

    shr-int/2addr v5, v4

    and-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 148
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_28
    add-int/lit8 v2, p2, 0x2

    .line 149
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x17c

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_23

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 150
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v6, p2, 0x3

    .line 151
    aget-byte v6, v1, v6

    and-int/2addr v6, v8

    add-int/lit8 v13, p2, 0x6

    .line 152
    aget-byte v13, v1, v13

    and-int/2addr v13, v8

    add-int/lit8 v16, p2, 0x7

    .line 153
    aget-byte v5, v1, v16

    and-int/2addr v5, v8

    new-array v4, v10, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v9

    .line 154
    invoke-static {v14, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v9

    .line 155
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v4, v9

    const/16 v15, 0xc

    .line 156
    invoke-static {v15, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3b

    new-array v15, v10, [I

    shr-int/lit8 v16, v2, 0x4

    and-int/lit8 v16, v16, 0x1

    aput v16, v15, v9

    .line 157
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v15, v2, 0x3

    and-int/2addr v15, v10

    aput v15, v4, v9

    .line 158
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v11, v10, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v10

    aput v15, v11, v9

    .line 159
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v10

    aput v11, v4, v9

    .line 160
    invoke-static {v12, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x26

    new-array v11, v10, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v10

    aput v2, v11, v9

    .line 161
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    .line 162
    sget v2, Lk0/eh;->z:I

    if-nez v2, :cond_2a

    const/16 v2, 0x12

    new-array v4, v10, [I

    shr-int/lit8 v11, v6, 0x7

    and-int/2addr v11, v10

    aput v11, v4, v9

    .line 163
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v10, [I

    shr-int/lit8 v11, v6, 0x6

    and-int/2addr v11, v10

    aput v11, v4, v9

    .line 164
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v10, [I

    shr-int/lit8 v11, v6, 0x5

    and-int/2addr v11, v10

    aput v11, v4, v9

    .line 165
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x1

    .line 166
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-lt v2, v14, :cond_2b

    const/16 v2, 0x16

    new-array v4, v10, [I

    add-int/lit8 v11, p2, 0xb

    .line 167
    aget-byte v15, v1, v11

    const/16 v16, 0x7

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v10

    aput v15, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v4, v10, [I

    .line 168
    aget-byte v15, v1, v11

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v10

    aput v15, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v4, v10, [I

    .line 169
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v10

    aput v11, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_c

    :cond_2a
    const/16 v2, 0x16

    new-array v4, v10, [I

    shr-int/lit8 v11, v6, 0x7

    and-int/2addr v11, v10

    aput v11, v4, v9

    .line 170
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v4, v10, [I

    shr-int/lit8 v11, v6, 0x6

    and-int/2addr v11, v10

    aput v11, v4, v9

    .line 171
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x18

    new-array v4, v10, [I

    shr-int/lit8 v11, v6, 0x5

    and-int/2addr v11, v10

    aput v11, v4, v9

    .line 172
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x1

    .line 173
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-lt v2, v14, :cond_2b

    const/16 v2, 0x12

    new-array v4, v10, [I

    add-int/lit8 v11, p2, 0xb

    .line 174
    aget-byte v15, v1, v11

    const/16 v16, 0x7

    shr-int/lit8 v15, v15, 0x7

    and-int/2addr v15, v10

    aput v15, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v4, v10, [I

    .line 175
    aget-byte v15, v1, v11

    shr-int/lit8 v15, v15, 0x6

    and-int/2addr v15, v10

    aput v15, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v10, [I

    .line 176
    aget-byte v11, v1, v11

    shr-int/2addr v11, v7

    and-int/2addr v11, v10

    aput v11, v4, v9

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :cond_2b
    :goto_c
    const/16 v2, 0x15

    new-array v4, v10, [I

    and-int/2addr v6, v12

    aput v6, v4, v9

    .line 177
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 178
    aget-byte v4, v1, v2

    and-int/2addr v4, v8

    add-int/lit8 v6, p2, 0x5

    .line 179
    aget-byte v11, v1, v6

    and-int/2addr v11, v8

    const-string v15, "persist.fyt.reversetemp"

    .line 180
    invoke-static {v15, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_2c

    .line 181
    aget-byte v4, v1, v6

    and-int/2addr v4, v8

    .line 182
    aget-byte v2, v1, v2

    and-int/lit16 v11, v2, 0xff

    :cond_2c
    const-string v2, "persist.fyt.temperature"

    .line 183
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v6, 0x9

    if-nez v4, :cond_2d

    const/16 v4, 0x1b

    new-array v15, v10, [I

    const/16 v16, -0x2

    aput v16, v15, v9

    .line 184
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_2d
    const/16 v15, 0x1f

    if-ne v4, v15, :cond_2e

    const/16 v4, 0x1b

    new-array v15, v10, [I

    const/16 v16, -0x3

    aput v16, v15, v9

    .line 185
    invoke-static {v4, v15}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_2e
    if-ne v2, v10, :cond_2f

    mul-int/2addr v4, v6

    add-int/lit16 v4, v4, 0x27b

    goto :goto_d

    :cond_2f
    mul-int/2addr v4, v7

    const/16 v15, 0xaf

    add-int/2addr v4, v15

    :goto_d
    const/16 v15, 0x1b

    new-array v12, v10, [I

    aput v4, v12, v9

    .line 186
    invoke-static {v15, v12}, Lk0/qt;->y0(I[I)V

    :goto_e
    if-nez v11, :cond_30

    const/16 v4, 0x1c

    new-array v11, v10, [I

    const/4 v12, -0x2

    aput v12, v11, v9

    .line 187
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_30
    const/16 v4, 0x1f

    if-ne v11, v4, :cond_31

    const/16 v4, 0x1c

    new-array v11, v10, [I

    const/4 v12, -0x3

    aput v12, v11, v9

    .line 188
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_31
    if-ne v2, v10, :cond_32

    mul-int/2addr v11, v6

    add-int/lit16 v11, v11, 0x27b

    goto :goto_f

    :cond_32
    mul-int/2addr v11, v7

    const/16 v4, 0xaf

    add-int/2addr v11, v4

    :goto_f
    const/16 v4, 0x1c

    new-array v12, v10, [I

    aput v11, v12, v9

    .line 189
    invoke-static {v4, v12}, Lk0/qt;->y0(I[I)V

    :goto_10
    const/16 v4, 0x21

    new-array v11, v10, [I

    shr-int/lit8 v12, v13, 0x7

    and-int/2addr v12, v10

    aput v12, v11, v9

    .line 190
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v11, v13, 0x6

    and-int/2addr v11, v10

    aput v11, v4, v9

    const/16 v11, 0x10

    .line 191
    invoke-static {v11, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x36

    new-array v11, v10, [I

    shr-int/lit8 v12, v13, 0x5

    and-int/2addr v12, v10

    aput v12, v11, v9

    .line 192
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4c

    new-array v11, v10, [I

    shr-int/lit8 v12, v13, 0x2

    and-int/2addr v12, v10

    aput v12, v11, v9

    .line 193
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x11

    new-array v11, v10, [I

    shr-int/lit8 v12, v13, 0x1

    and-int/2addr v12, v10

    aput v12, v11, v9

    .line 194
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v4, p2, 0x8

    .line 195
    aget-byte v11, v1, v4

    and-int/2addr v11, v8

    if-nez v11, :cond_33

    new-array v4, v10, [I

    const/4 v11, -0x2

    aput v11, v4, v9

    .line 196
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    .line 197
    :cond_33
    aget-byte v11, v1, v4

    and-int/2addr v11, v8

    const/16 v12, 0x1f

    if-ne v11, v12, :cond_34

    new-array v4, v10, [I

    const/4 v11, -0x3

    aput v11, v4, v9

    .line 198
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_12

    :cond_34
    if-ne v2, v10, :cond_35

    .line 199
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    mul-int/2addr v4, v6

    add-int/lit16 v4, v4, 0x27b

    goto :goto_11

    .line 200
    :cond_35
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    mul-int/2addr v4, v7

    const/16 v11, 0xaf

    add-int/2addr v4, v11

    :goto_11
    new-array v11, v10, [I

    aput v4, v11, v9

    .line 201
    invoke-static {v3, v11}, Lk0/qt;->y0(I[I)V

    :goto_12
    add-int/lit8 v3, p2, 0x1

    .line 202
    aget-byte v4, v1, v3

    and-int/2addr v4, v8

    if-lt v4, v6, :cond_39

    add-int/lit8 v4, p2, 0xa

    .line 203
    aget-byte v11, v1, v4

    and-int/2addr v11, v8

    if-nez v11, :cond_36

    const/16 v4, 0x29

    new-array v11, v10, [I

    const/4 v12, -0x2

    aput v12, v11, v9

    .line 204
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    .line 205
    :cond_36
    aget-byte v11, v1, v4

    and-int/2addr v11, v8

    const/16 v12, 0x1f

    if-ne v11, v12, :cond_37

    const/16 v4, 0x29

    new-array v11, v10, [I

    const/4 v12, -0x3

    aput v12, v11, v9

    .line 206
    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_37
    if-ne v2, v10, :cond_38

    .line 207
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    mul-int/2addr v4, v6

    add-int/lit16 v4, v4, 0x27b

    goto :goto_13

    .line 208
    :cond_38
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    mul-int/2addr v4, v7

    const/16 v11, 0xaf

    add-int/2addr v4, v11

    :goto_13
    const/16 v11, 0x29

    new-array v12, v10, [I

    aput v4, v12, v9

    .line 209
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    :cond_39
    :goto_14
    const/16 v4, 0x56

    new-array v11, v10, [I

    add-int/lit8 v12, p2, 0x9

    .line 210
    aget-byte v13, v1, v12

    shr-int/2addr v13, v7

    const/4 v15, 0x7

    and-int/2addr v13, v15

    aput v13, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x55

    new-array v11, v10, [I

    .line 211
    aget-byte v13, v1, v12

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x3f

    new-array v11, v10, [I

    .line 212
    aget-byte v13, v1, v12

    shr-int/2addr v13, v7

    and-int/2addr v13, v10

    aput v13, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2b

    new-array v11, v10, [I

    .line 213
    aget-byte v13, v1, v12

    const/4 v15, 0x4

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x23

    new-array v11, v10, [I

    .line 214
    aget-byte v13, v1, v12

    const/4 v15, 0x3

    shr-int/2addr v13, v15

    and-int/2addr v13, v10

    aput v13, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x2c

    new-array v11, v10, [I

    .line 215
    aget-byte v12, v1, v12

    shr-int/2addr v12, v9

    const/4 v13, 0x7

    and-int/2addr v12, v13

    aput v12, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    .line 216
    aget-byte v4, v1, v3

    and-int/2addr v4, v8

    if-lt v4, v14, :cond_3a

    const/16 v4, 0x4b

    new-array v11, v10, [I

    add-int/lit8 v12, p2, 0xb

    .line 217
    aget-byte v12, v1, v12

    shr-int/2addr v12, v10

    and-int/2addr v12, v10

    aput v12, v11, v9

    invoke-static {v4, v11}, Lk0/qt;->y0(I[I)V

    .line 218
    :cond_3a
    aget-byte v3, v1, v3

    and-int/2addr v3, v8

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3b

    const/16 v3, 0x1d

    new-array v4, v10, [I

    const/16 v8, 0xc

    add-int/lit8 v8, p2, 0xc

    .line 219
    aget-byte v11, v1, v8

    const/4 v12, 0x4

    shr-int/2addr v11, v12

    const/16 v12, 0xf

    and-int/2addr v11, v12

    aput v11, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1e

    new-array v4, v10, [I

    .line 220
    aget-byte v1, v1, v8

    shr-int/2addr v1, v9

    and-int/2addr v1, v12

    aput v1, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_3b
    if-nez v5, :cond_3c

    .line 221
    invoke-static {v9}, Lu0/d;->B3(I)V

    goto/16 :goto_23

    :cond_3c
    if-ne v2, v10, :cond_3d

    mul-int/2addr v5, v6

    add-int/lit16 v5, v5, 0x258

    const/high16 v1, 0x10000000

    or-int/2addr v1, v5

    and-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_3d
    mul-int/2addr v5, v7

    add-int/lit16 v1, v5, 0x258

    .line 222
    :goto_15
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_23

    :cond_3e
    const/16 v2, 0x408

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 223
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x2

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_3f
    const/16 v2, 0x8f

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 224
    aget-byte v5, v1, v4

    shl-int/2addr v5, v13

    and-int v5, v5, v16

    add-int/lit8 v11, p2, 0x3

    aget-byte v12, v1, v11

    and-int/2addr v12, v8

    or-int/2addr v5, v12

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 225
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v5, v6, [I

    const/16 v12, 0x10

    aput v12, v5, v9

    const/high16 v12, 0x20000

    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    or-int/2addr v4, v12

    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    or-int/2addr v4, v11

    aput v4, v5, v10

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4, v4}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v3, 0x90

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x4

    .line 226
    aget-byte v5, v1, v5

    shl-int/2addr v5, v13

    and-int v5, v5, v16

    add-int/lit8 v11, p2, 0x5

    aget-byte v11, v1, v11

    and-int/2addr v11, v8

    or-int/2addr v5, v11

    aput v5, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x91

    new-array v4, v10, [I

    add-int/lit8 v5, p2, 0x6

    .line 227
    aget-byte v11, v1, v5

    shl-int/2addr v11, v13

    and-int v11, v11, v16

    add-int/lit8 v12, p2, 0x7

    aget-byte v14, v1, v12

    and-int/2addr v14, v8

    or-int/2addr v11, v14

    aput v11, v4, v9

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    .line 228
    aget-byte v3, v1, v5

    shl-int/2addr v3, v13

    and-int v3, v3, v16

    aget-byte v4, v1, v12

    and-int/2addr v4, v8

    or-int/2addr v3, v4

    const/16 v4, 0x419

    new-array v5, v6, [I

    aput v7, v5, v9

    aput v3, v5, v10

    const/4 v3, 0x0

    .line 229
    invoke-static {v2, v4, v5, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 230
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0xa

    .line 231
    aget-byte v4, v1, v4

    shl-int/2addr v4, v13

    and-int v4, v4, v16

    const/16 v5, 0xb

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    and-int/2addr v1, v8

    or-int/2addr v1, v4

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_23

    :cond_40
    add-int/lit8 v2, p2, 0x2

    .line 232
    aget-byte v2, v1, v2

    const/16 v3, 0x9f

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_41

    move v5, v9

    goto :goto_16

    :cond_41
    move v5, v10

    :goto_16
    aput v5, v4, v9

    .line 233
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa0

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x70

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    aput v5, v4, v9

    .line 234
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa1

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0xc

    shr-int/2addr v5, v6

    aput v5, v4, v9

    .line 235
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa2

    new-array v4, v10, [I

    const/4 v5, 0x3

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 236
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 237
    aget-byte v2, v1, v2

    const/16 v3, 0xa3

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_42

    move v5, v9

    goto :goto_17

    :cond_42
    move v5, v10

    :goto_17
    aput v5, v4, v9

    .line 238
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa4

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_43

    move v5, v9

    goto :goto_18

    :cond_43
    move v5, v10

    :goto_18
    aput v5, v4, v9

    .line 239
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa5

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_44

    move v5, v9

    goto :goto_19

    :cond_44
    move v5, v10

    :goto_19
    aput v5, v4, v9

    .line 240
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa6

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_45

    move v5, v9

    goto :goto_1a

    :cond_45
    move v5, v10

    :goto_1a
    aput v5, v4, v9

    .line 241
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa7

    new-array v4, v10, [I

    const/4 v5, 0x7

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 242
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 243
    aget-byte v2, v1, v2

    const/16 v3, 0xa8

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_46

    move v5, v9

    goto :goto_1b

    :cond_46
    move v5, v10

    :goto_1b
    aput v5, v4, v9

    .line 244
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xa9

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_47

    move v5, v9

    goto :goto_1c

    :cond_47
    move v5, v10

    :goto_1c
    aput v5, v4, v9

    .line 245
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xaa

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_48

    move v5, v9

    goto :goto_1d

    :cond_48
    move v5, v10

    :goto_1d
    aput v5, v4, v9

    .line 246
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xab

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_49

    move v5, v9

    goto :goto_1e

    :cond_49
    move v5, v10

    :goto_1e
    aput v5, v4, v9

    .line 247
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xac

    new-array v4, v10, [I

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_4a

    move v5, v9

    goto :goto_1f

    :cond_4a
    move v5, v10

    :goto_1f
    aput v5, v4, v9

    .line 248
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xad

    new-array v4, v10, [I

    const/4 v5, 0x7

    and-int/2addr v2, v5

    aput v2, v4, v9

    .line 249
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 250
    aget-byte v2, v1, v2

    const/16 v3, 0xae

    new-array v4, v10, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_4b

    move v5, v9

    goto :goto_20

    :cond_4b
    move v5, v10

    :goto_20
    aput v5, v4, v9

    .line 251
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_4c

    move v4, v9

    goto :goto_21

    :cond_4c
    move v4, v10

    :goto_21
    aput v4, v3, v9

    const/16 v4, 0xaf

    .line 252
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb0

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x2

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v4, v9

    .line 253
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb1

    new-array v4, v10, [I

    and-int/2addr v2, v6

    aput v2, v4, v9

    .line 254
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 255
    aget-byte v1, v1, v2

    const/16 v2, 0xb2

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x2

    const/4 v5, 0x7

    and-int/2addr v4, v5

    aput v4, v3, v9

    .line 256
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb3

    new-array v3, v10, [I

    and-int/lit8 v4, v1, 0x3

    aput v4, v3, v9

    .line 257
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb4

    new-array v3, v10, [I

    shr-int/2addr v1, v7

    const/4 v4, 0x3

    and-int/2addr v1, v4

    aput v1, v3, v9

    .line 258
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_23

    :cond_4d
    add-int/lit8 v2, p2, 0x2

    .line 259
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    const-string v3, "persist.syu.reversefrontdoor"

    .line 260
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4e

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 261
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 262
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_22

    :cond_4e
    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 263
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 264
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    :goto_22
    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/4 v4, 0x4

    .line 265
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/4 v4, 0x3

    .line 266
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 267
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 268
    aget-byte v3, v1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->N1(III)V

    :cond_4f
    :goto_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1d
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

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x13
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x25
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x14
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x26
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/eh;->o:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/eh;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/eh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/eh;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/eh;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/eh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/eh;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0xb8

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
    .locals 8

    const/16 p3, 0x1e

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eq p1, p3, :cond_14

    const/16 p3, 0x405

    const/16 v1, 0xe3

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eq p1, p3, :cond_11

    const/16 p3, 0x410

    const/16 v6, 0x24

    if-eq p1, p3, :cond_c

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/eh;->h3(I)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    aget p1, p2, p4

    invoke-virtual {p0, p1}, Lk0/eh;->i3(I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v4, [I

    aput v1, p1, p4

    const/16 p3, 0x83

    aput p3, p1, v0

    aput v5, p1, v5

    .line 3
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v4, [I

    aput v1, p1, p4

    const/16 p3, 0xe5

    aput p3, p1, v0

    aput v5, p1, v5

    .line 4
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v4, [I

    aput v1, p1, p4

    const/16 p3, 0x90

    aput p3, p1, v0

    aput v5, p1, v5

    .line 5
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v4, [I

    aput v1, p1, p4

    const/16 p3, 0x84

    aput p3, p1, v0

    aput v5, p1, v5

    .line 6
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, v4, [I

    aput v1, p1, p4

    const/16 p3, 0xc5

    aput p3, p1, v0

    aput v5, p1, v5

    .line 7
    aget p2, p2, p4

    aput p2, p1, v3

    aput p4, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 8
    :pswitch_7
    aget p1, p2, p4

    const-string p3, "persist.fyt.reversetemp"

    const/16 v7, 0xe0

    if-eq p1, v5, :cond_a

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_6

    if-eq p1, v4, :cond_4

    const/16 p3, 0x25

    if-eq p1, v6, :cond_2

    if-eq p1, p3, :cond_0

    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    .line 9
    aget p3, p2, p4

    aput p3, p1, v3

    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :cond_0
    sget p1, Lk0/eh;->z:I

    if-ne p1, v0, :cond_1

    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v6, p1, v3

    .line 11
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput p3, p1, v3

    .line 12
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :cond_2
    sget p1, Lk0/eh;->z:I

    if-ne p1, v0, :cond_3

    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput p3, p1, v3

    .line 14
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v6, p1, v3

    .line 15
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 16
    :cond_4
    invoke-static {p3, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v3, p1, v3

    .line 17
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v4, p1, v3

    .line 18
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :cond_6
    invoke-static {p3, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v5, p1, v3

    .line 20
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v2, p1, v3

    .line 21
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 22
    :cond_8
    invoke-static {p3, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v4, p1, v3

    .line 23
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_9
    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v3, p1, v3

    .line 24
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 25
    :cond_a
    invoke-static {p3, p4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v2, p1, v3

    .line 26
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_b
    new-array p1, v4, [I

    aput v1, p1, p4

    aput v7, p1, v0

    aput v5, p1, v5

    aput v5, p1, v3

    .line 27
    aget p2, p2, v0

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 28
    :cond_c
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object p3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FinalCanbus.C_CMD_6606 --- "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p2

    invoke-static {p2, p4, v7}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 29
    aget p1, p2, p4

    if-eqz p1, :cond_d

    goto/16 :goto_0

    .line 30
    :cond_d
    aget p1, p2, v0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 31
    :pswitch_8
    invoke-virtual {p0, v6}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    :pswitch_9
    const/16 p1, 0x10

    .line 32
    invoke-virtual {p0, p1}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    :pswitch_a
    const/16 p1, 0x17

    .line 33
    invoke-virtual {p0, p1}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    :pswitch_b
    const/16 p1, 0x14

    .line 34
    invoke-virtual {p0, p1}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    :pswitch_c
    const/16 p1, 0x12

    .line 35
    invoke-virtual {p0, p1}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    .line 36
    :pswitch_d
    aget p1, p2, v5

    if-ne p1, v0, :cond_e

    .line 37
    invoke-virtual {p0, v4}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    .line 38
    :cond_e
    aget p1, p2, v5

    if-ne p1, v5, :cond_15

    .line 39
    invoke-virtual {p0, v2}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    .line 40
    :pswitch_e
    aget p1, p2, v5

    if-ne p1, v0, :cond_f

    .line 41
    invoke-virtual {p0, v3}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    .line 42
    :cond_f
    aget p1, p2, v5

    if-ne p1, v5, :cond_15

    .line 43
    invoke-virtual {p0, v5}, Lk0/eh;->a3(I)V

    goto/16 :goto_0

    .line 44
    :pswitch_f
    aget p1, p2, v5

    if-ne p1, v0, :cond_10

    const/16 p1, 0xa

    .line 45
    invoke-virtual {p0, p1}, Lk0/eh;->a3(I)V

    goto :goto_0

    .line 46
    :cond_10
    aget p1, p2, v5

    if-ne p1, v5, :cond_15

    const/16 p1, 0x9

    .line 47
    invoke-virtual {p0, p1}, Lk0/eh;->a3(I)V

    goto :goto_0

    .line 48
    :cond_11
    invoke-virtual {p0, p2, v5}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 49
    aget p1, p2, v0

    mul-int/lit16 p1, p1, 0xff

    invoke-static {}, La/f;->w()I

    move-result p3

    div-int/2addr p1, p3

    .line 50
    aget p3, p2, v5

    mul-int/lit16 p3, p3, 0xff

    invoke-static {}, La/f;->i()I

    move-result v6

    div-int/2addr p3, v6

    .line 51
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v0, :cond_12

    .line 52
    aget p3, p2, v5

    mul-int/lit16 p3, p3, 0xff

    div-int/lit16 p3, p3, 0x208

    .line 53
    :cond_12
    aget p2, p2, p4

    if-nez p2, :cond_13

    new-array p2, v4, [I

    aput v1, p2, p4

    const/16 p4, 0x86

    aput p4, p2, v0

    aput v5, p2, v5

    aput p1, p2, v3

    aput p3, p2, v2

    .line 54
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_13
    new-array p1, v4, [I

    .line 55
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_14
    if-eqz p2, :cond_15

    .line 56
    array-length p1, p2

    if-lez p1, :cond_15

    const/16 p1, 0x9e

    new-array p3, v0, [I

    .line 57
    aget p2, p2, p4

    aput p2, p3, p4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    :cond_15
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x86
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0xe0

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0xc8

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final f3()V
    .locals 3

    const-string v0, "com.syu.carinfo.lz.lexusis.LuzLexusISCd"

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

.method public final g3()V
    .locals 3

    const-string v0, "com.syu.carinfo.lz.lexusis.LuzLexusISRadio"

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

.method public final h3(I)V
    .locals 2

    .line 1
    sput p1, Lk0/eh;->A:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0xb6

    .line 2
    invoke-static {p1, v0}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/eh;->o:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/eh;->A:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/eh;->o:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final i3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0xb5

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/eh;->z:I

    .line 3
    iget-object p1, p0, Lk0/eh;->o:Lo1/g0;

    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/eh;->z:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/eh;->o:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
