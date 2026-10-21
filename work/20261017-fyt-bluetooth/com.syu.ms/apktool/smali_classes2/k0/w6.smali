.class public Lk0/w6;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x1

.field public static final B:[I

.field public static y:I

.field public static z:I


# instance fields
.field public b:[[I

.field public c:[[I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:I

.field public k:[[I

.field public l:Z

.field public m:I

.field public n:Ljava/lang/Runnable;

.field public o:F

.field public p:I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:B

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Lo1/g0;

.field public final x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/w6;->B:[I

    return-void

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
        0x22
        0x23
        0x24
    .end array-data
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x5

    new-array v2, v1, [[I

    .line 2
    iput-object v2, v0, Lk0/w6;->b:[[I

    const/16 v2, 0xf

    new-array v3, v2, [[I

    .line 3
    iput-object v3, v0, Lk0/w6;->c:[[I

    const/4 v3, 0x0

    .line 4
    iput v3, v0, Lk0/w6;->e:I

    const/16 v4, 0x15

    new-array v5, v4, [[I

    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 5
    fill-array-data v7, :array_0

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_1

    const/4 v8, 0x1

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_3

    const/4 v9, 0x3

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_4

    const/4 v10, 0x4

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_5

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_6

    const/4 v11, 0x6

    aput-object v7, v5, v11

    new-array v7, v6, [I

    fill-array-data v7, :array_7

    const/4 v12, 0x7

    aput-object v7, v5, v12

    new-array v7, v6, [I

    fill-array-data v7, :array_8

    const/16 v13, 0x8

    aput-object v7, v5, v13

    new-array v7, v6, [I

    fill-array-data v7, :array_9

    const/16 v14, 0x9

    aput-object v7, v5, v14

    new-array v7, v6, [I

    fill-array-data v7, :array_a

    const/16 v15, 0xa

    aput-object v7, v5, v15

    new-array v7, v6, [I

    fill-array-data v7, :array_b

    const/16 v16, 0xb

    aput-object v7, v5, v16

    new-array v7, v6, [I

    fill-array-data v7, :array_c

    const/16 v17, 0xc

    aput-object v7, v5, v17

    new-array v7, v6, [I

    fill-array-data v7, :array_d

    const/16 v18, 0xd

    aput-object v7, v5, v18

    new-array v7, v6, [I

    fill-array-data v7, :array_e

    const/16 v19, 0xe

    aput-object v7, v5, v19

    new-array v7, v6, [I

    fill-array-data v7, :array_f

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_10

    const/16 v20, 0x10

    aput-object v7, v5, v20

    new-array v7, v6, [I

    fill-array-data v7, :array_11

    const/16 v21, 0x11

    aput-object v7, v5, v21

    new-array v7, v6, [I

    fill-array-data v7, :array_12

    const/16 v22, 0x12

    aput-object v7, v5, v22

    new-array v7, v6, [I

    fill-array-data v7, :array_13

    const/16 v23, 0x13

    aput-object v7, v5, v23

    new-array v7, v6, [I

    fill-array-data v7, :array_14

    const/16 v24, 0x14

    aput-object v7, v5, v24

    iput-object v5, v0, Lk0/w6;->f:[[I

    .line 6
    iput v3, v0, Lk0/w6;->g:I

    new-array v5, v11, [[I

    new-array v7, v6, [I

    .line 7
    fill-array-data v7, :array_15

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_16

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_17

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_18

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_19

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_1a

    aput-object v7, v5, v1

    iput-object v5, v0, Lk0/w6;->h:[[I

    .line 8
    iput v3, v0, Lk0/w6;->j:I

    const/16 v5, 0x1f

    new-array v5, v5, [[I

    new-array v7, v6, [I

    .line 9
    fill-array-data v7, :array_1b

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_1c

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_1d

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_1e

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_1f

    aput-object v7, v5, v10

    new-array v7, v6, [I

    fill-array-data v7, :array_20

    aput-object v7, v5, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_21

    aput-object v1, v5, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_22

    aput-object v1, v5, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_23

    aput-object v1, v5, v13

    new-array v1, v6, [I

    fill-array-data v1, :array_24

    aput-object v1, v5, v14

    new-array v1, v6, [I

    fill-array-data v1, :array_25

    aput-object v1, v5, v15

    new-array v1, v6, [I

    fill-array-data v1, :array_26

    aput-object v1, v5, v16

    new-array v1, v6, [I

    fill-array-data v1, :array_27

    aput-object v1, v5, v17

    new-array v1, v6, [I

    fill-array-data v1, :array_28

    aput-object v1, v5, v18

    new-array v1, v6, [I

    fill-array-data v1, :array_29

    aput-object v1, v5, v19

    new-array v1, v6, [I

    fill-array-data v1, :array_2a

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_2b

    aput-object v1, v5, v20

    new-array v1, v6, [I

    fill-array-data v1, :array_2c

    aput-object v1, v5, v21

    new-array v1, v6, [I

    fill-array-data v1, :array_2d

    aput-object v1, v5, v22

    new-array v1, v6, [I

    fill-array-data v1, :array_2e

    aput-object v1, v5, v23

    new-array v1, v6, [I

    fill-array-data v1, :array_2f

    aput-object v1, v5, v24

    new-array v1, v6, [I

    fill-array-data v1, :array_30

    aput-object v1, v5, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_31

    const/16 v2, 0x16

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_32

    const/16 v2, 0x17

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_33

    const/16 v2, 0x18

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_34

    const/16 v2, 0x19

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_35

    const/16 v2, 0x1a

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_36

    const/16 v2, 0x1b

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_37

    const/16 v2, 0x1c

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_38

    const/16 v2, 0x1d

    aput-object v1, v5, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_39

    const/16 v2, 0x1e

    aput-object v1, v5, v2

    iput-object v5, v0, Lk0/w6;->k:[[I

    .line 10
    iput-boolean v3, v0, Lk0/w6;->l:Z

    .line 11
    iput v3, v0, Lk0/w6;->m:I

    .line 12
    new-instance v1, Lk0/w6$a;

    invoke-direct {v1, v0}, Lk0/w6$a;-><init>(Lk0/w6;)V

    iput-object v1, v0, Lk0/w6;->n:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lk0/w6;->o:F

    const/16 v1, 0xff

    .line 14
    iput v1, v0, Lk0/w6;->p:I

    .line 15
    iput v1, v0, Lk0/w6;->q:I

    .line 16
    new-instance v1, Lk0/w6$b;

    invoke-direct {v1, v0}, Lk0/w6$b;-><init>(Lk0/w6;)V

    iput-object v1, v0, Lk0/w6;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v1, Lk0/w6$c;

    invoke-direct {v1, v0}, Lk0/w6$c;-><init>(Lk0/w6;)V

    iput-object v1, v0, Lk0/w6;->s:Ljava/lang/Runnable;

    .line 18
    iput-byte v13, v0, Lk0/w6;->t:B

    .line 19
    new-instance v1, Lk0/w6$d;

    invoke-direct {v1, v0}, Lk0/w6$d;-><init>(Lk0/w6;)V

    iput-object v1, v0, Lk0/w6;->u:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lk0/w6$e;

    invoke-direct {v1, v0}, Lk0/w6$e;-><init>(Lk0/w6;)V

    iput-object v1, v0, Lk0/w6;->v:Ljava/lang/Runnable;

    .line 21
    new-instance v1, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lk0/w6;->w:Lo1/g0;

    .line 22
    iput v6, v0, Lk0/w6;->x:I

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
        0xc
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
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x10
    .end array-data

    :array_c
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x83
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x84
        0x4
    .end array-data

    :array_10
    .array-data 4
        0x85
        0x22
    .end array-data

    :array_11
    .array-data 4
        0x86
        0x23
    .end array-data

    :array_12
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_13
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_14
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_16
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_17
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_18
    .array-data 4
        0x85
        0x1f
    .end array-data

    :array_19
    .array-data 4
        0x86
        0x1e
    .end array-data

    :array_1a
    .array-data 4
        0x87
        0x19
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1c
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0x4
        0x22
    .end array-data

    :array_1f
    .array-data 4
        0x5
        0x23
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x20
    .end array-data

    :array_21
    .array-data 4
        0x7
        0x21
    .end array-data

    :array_22
    .array-data 4
        0x8
        0x1d
    .end array-data

    :array_23
    .array-data 4
        0x9
        0x6
    .end array-data

    :array_24
    .array-data 4
        0xa
        0x15
    .end array-data

    :array_25
    .array-data 4
        0xb
        0x5
    .end array-data

    :array_26
    .array-data 4
        0xc
        0x16
    .end array-data

    :array_27
    .array-data 4
        0xd
        0x38
    .end array-data

    :array_28
    .array-data 4
        0xe
        0x36
    .end array-data

    :array_29
    .array-data 4
        0xf
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x10
        0x26
    .end array-data

    :array_2b
    .array-data 4
        0x11
        0x3f
    .end array-data

    :array_2c
    .array-data 4
        0x12
        0x48
    .end array-data

    :array_2d
    .array-data 4
        0x13
        0x47
    .end array-data

    :array_2e
    .array-data 4
        0x14
        0x37
    .end array-data

    :array_2f
    .array-data 4
        0x15
        0xd
    .end array-data

    :array_30
    .array-data 4
        0x16
        0x2
    .end array-data

    :array_31
    .array-data 4
        0x17
        0x12
    .end array-data

    :array_32
    .array-data 4
        0x18
        0x1a
    .end array-data

    :array_33
    .array-data 4
        0x19
        0xc
    .end array-data

    :array_34
    .array-data 4
        0x1a
        0x5
    .end array-data

    :array_35
    .array-data 4
        0x1b
        0x5
    .end array-data

    :array_36
    .array-data 4
        0x21
        0x10
    .end array-data

    :array_37
    .array-data 4
        0x22
        -0x1
    .end array-data

    :array_38
    .array-data 4
        0x23
        0x3e
    .end array-data

    :array_39
    .array-data 4
        0x24
        0x12
    .end array-data
.end method

.method public static synthetic b3(Lk0/w6;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/w6;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c3(Lk0/w6;)F
    .locals 0

    .line 1
    iget p0, p0, Lk0/w6;->o:F

    return p0
.end method

.method public static synthetic d3(Lk0/w6;F)F
    .locals 0

    .line 1
    iput p1, p0, Lk0/w6;->o:F

    return p1
.end method

.method public static synthetic e3(Lk0/w6;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/w6;->q:I

    return p0
.end method

.method public static synthetic f3(Lk0/w6;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/w6;->q:I

    return p1
.end method

.method public static synthetic g3(Lk0/w6;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/w6;->p:I

    return p0
.end method

.method public static synthetic h3(Lk0/w6;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/w6;->p:I

    return p1
.end method

.method public static synthetic i3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/w6;->B:[I

    return-object v0
.end method

.method public static synthetic j3(Lk0/w6;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/w6;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic k3(Lk0/w6;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/w6;->w:Lo1/g0;

    return-object p0
.end method

.method public static synthetic l3(Lk0/w6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/w6;->p3(I)V

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
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_0
    return-void
.end method

.method public O2([I)V
    .locals 16

    move-object/from16 v0, p1

    if-eqz v0, :cond_24

    .line 1
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

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

    const/16 v4, 0x29

    const/4 v5, 0x5

    if-eq v3, v4, :cond_21

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1f

    const/16 v4, 0x37

    const/16 v6, 0xc

    const/16 v8, -0x79

    const/16 v9, 0x11

    const/16 v10, 0x20

    const/16 v11, 0xe3

    const/16 v12, 0x12

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v3, v4, :cond_1c

    const/16 v4, 0x38

    if-eq v3, v4, :cond_19

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_18

    const/16 v4, 0x44

    const/4 v10, 0x7

    const/16 v12, 0xb

    const/16 v15, 0xa

    if-eq v3, v4, :cond_c

    const/16 v4, 0x46

    if-eq v3, v4, :cond_b

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    move-object/from16 v3, p0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    aget v3, v0, v7

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    new-array v0, v5, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_2
    aget v3, v0, v7

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    new-array v0, v5, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_3
    aget v3, v0, v7

    if-lt v3, v10, :cond_4

    new-array v0, v5, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v3, v5, [I

    aput v11, v3, v1

    aput v8, v3, v7

    aput v2, v3, v2

    aput v15, v3, v14

    .line 10
    aget v0, v0, v7

    aput v0, v3, v13

    invoke-static {v3}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :pswitch_1
    aget v1, v0, v7

    if-ne v1, v7, :cond_5

    new-array v0, v5, [I

    .line 12
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_5
    aget v0, v0, v7

    if-nez v0, :cond_1

    new-array v0, v5, [I

    .line 14
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :pswitch_2
    aget v0, v0, v7

    if-eqz v0, :cond_6

    new-array v0, v5, [I

    .line 16
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    new-array v0, v5, [I

    .line 17
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 18
    :pswitch_3
    aget v0, v0, v7

    if-eqz v0, :cond_7

    new-array v0, v5, [I

    .line 19
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_7
    new-array v0, v5, [I

    .line 20
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :pswitch_4
    aget v0, v0, v7

    if-eqz v0, :cond_8

    new-array v0, v5, [I

    .line 22
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_8
    new-array v0, v5, [I

    .line 23
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 24
    :pswitch_5
    aget v0, v0, v7

    if-eqz v0, :cond_9

    .line 25
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v12

    if-nez v0, :cond_1

    new-array v0, v5, [I

    .line 26
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 27
    :cond_9
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v12

    if-ne v0, v7, :cond_1

    new-array v0, v5, [I

    .line 28
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 29
    :pswitch_6
    aget v0, v0, v7

    if-eqz v0, :cond_a

    .line 30
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v15

    if-nez v0, :cond_1

    new-array v0, v5, [I

    .line 31
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 32
    :cond_a
    sget-object v0, Lk0/nt;->g:[I

    aget v0, v0, v15

    if-ne v0, v7, :cond_1

    new-array v0, v5, [I

    .line 33
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_b
    new-array v3, v5, [I

    aput v11, v3, v1

    const/16 v1, -0xd

    aput v1, v3, v7

    aput v2, v3, v2

    aput v9, v3, v14

    .line 34
    aget v0, v0, v7

    aput v0, v3, v13

    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 35
    :cond_c
    aget v1, v0, v7

    if-ne v1, v7, :cond_d

    new-array v0, v5, [I

    .line 36
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 37
    :cond_d
    aget v1, v0, v7

    if-ne v1, v2, :cond_e

    new-array v0, v5, [I

    .line 38
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 39
    :cond_e
    aget v1, v0, v7

    if-ne v1, v14, :cond_f

    new-array v0, v5, [I

    .line 40
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 41
    :cond_f
    aget v1, v0, v7

    if-ne v1, v13, :cond_10

    new-array v0, v5, [I

    .line 42
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 43
    :cond_10
    aget v1, v0, v7

    if-ne v1, v5, :cond_11

    new-array v0, v5, [I

    .line 44
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 45
    :cond_11
    aget v1, v0, v7

    const/4 v2, 0x6

    if-ne v1, v2, :cond_12

    new-array v0, v5, [I

    .line 46
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 47
    :cond_12
    aget v1, v0, v7

    if-ne v1, v10, :cond_13

    new-array v0, v5, [I

    .line 48
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 49
    :cond_13
    aget v1, v0, v7

    const/16 v2, 0x8

    if-ne v1, v2, :cond_14

    new-array v0, v5, [I

    .line 50
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 51
    :cond_14
    aget v1, v0, v7

    const/16 v2, 0x9

    if-ne v1, v2, :cond_15

    new-array v0, v5, [I

    .line 52
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 53
    :cond_15
    aget v1, v0, v7

    if-ne v1, v15, :cond_16

    new-array v0, v5, [I

    .line 54
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 55
    :cond_16
    aget v1, v0, v7

    if-ne v1, v12, :cond_17

    new-array v0, v5, [I

    .line 56
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 57
    :cond_17
    aget v0, v0, v7

    if-ne v0, v6, :cond_1

    new-array v0, v5, [I

    .line 58
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 59
    :cond_18
    aget v0, v0, v7

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    move-object/from16 v3, p0

    .line 60
    invoke-virtual {v3, v0, v1}, Lk0/w6;->a3(II)V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v3, p0

    .line 61
    aget v4, v0, v7

    if-ge v4, v12, :cond_1a

    new-array v0, v5, [I

    .line 62
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 63
    :cond_1a
    aget v4, v0, v7

    if-lt v4, v12, :cond_1b

    aget v4, v0, v7

    if-gt v4, v10, :cond_1b

    .line 64
    aget v0, v0, v7

    sub-int/2addr v0, v9

    mul-int/2addr v0, v2

    sub-int/2addr v0, v7

    new-array v4, v5, [I

    aput v11, v4, v1

    aput v8, v4, v7

    aput v2, v4, v2

    const/16 v1, 0xe

    aput v1, v4, v14

    aput v0, v4, v13

    .line 65
    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 66
    :cond_1b
    aget v0, v0, v7

    if-le v0, v10, :cond_23

    new-array v0, v5, [I

    .line 67
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v3, p0

    .line 68
    aget v4, v0, v7

    if-ge v4, v12, :cond_1d

    new-array v0, v5, [I

    .line 69
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 70
    :cond_1d
    aget v4, v0, v7

    if-lt v4, v12, :cond_1e

    aget v4, v0, v7

    if-gt v4, v10, :cond_1e

    .line 71
    aget v0, v0, v7

    sub-int/2addr v0, v9

    mul-int/2addr v0, v2

    sub-int/2addr v0, v7

    new-array v4, v5, [I

    aput v11, v4, v1

    aput v8, v4, v7

    aput v2, v4, v2

    aput v6, v4, v14

    aput v0, v4, v13

    .line 72
    invoke-static {v4}, Lz/k;->s([I)V

    goto :goto_1

    .line 73
    :cond_1e
    aget v0, v0, v7

    if-le v0, v10, :cond_23

    new-array v0, v5, [I

    .line 74
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1f
    move-object/from16 v3, p0

    .line 75
    aget v0, v0, v7

    if-eqz v0, :cond_20

    new-array v0, v5, [I

    .line 76
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_20
    new-array v0, v5, [I

    .line 77
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_21
    move-object/from16 v3, p0

    .line 78
    aget v0, v0, v7

    if-eqz v0, :cond_22

    new-array v0, v5, [I

    .line 79
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_22
    new-array v0, v5, [I

    .line 80
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_23
    :goto_1
    return-void

    :cond_24
    :goto_2
    move-object/from16 v3, p0

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
        0xa
        0x7
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x79
        0x2
        0x10
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x79
        0x2
        0x10
        0x1
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x79
        0x2
        0x12
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x79
        0x2
        0x12
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x79
        0x2
        0x11
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x79
        0x2
        0x11
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x79
        0x2
        0xf
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x79
        0x2
        0xf
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x79
        0x2
        0x8
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x79
        0x2
        0x8
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x79
        0x2
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x79
        0x2
        0x7
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x79
        0x2
        0x2
        0x1
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x0
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x79
        0x2
        0x3
        0x1
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x0
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x79
        0x2
        0x4
        0x1
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x0
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x79
        0x2
        0x5
        0x1
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x79
        0x2
        0x6
        0x0
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x79
        0x2
        0x6
        0x1
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x79
        0x2
        0x1
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x79
        0x2
        0xe
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x79
        0x2
        0xe
        0x1f
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x79
        0x2
        0xc
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        -0x79
        0x2
        0xc
        0x1f
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x1
    .end array-data

    :array_20
    .array-data 4
        0xe3
        -0x79
        0x2
        0xd
        0x0
    .end array-data

    :array_21
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x1
    .end array-data

    :array_22
    .array-data 4
        0xe3
        -0x79
        0x2
        0xb
        0x0
    .end array-data
.end method

.method public S2()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/w6;->u:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/w6;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/w6;->w:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 4
    sget v0, Lk0/nt;->c:I

    const-string v1, "com.syu.canbus"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 6
    iput v2, v0, Lk0/mt;->e:I

    .line 7
    iput v2, v0, Lk0/mt;->f:I

    .line 8
    iput v2, v0, Lk0/mt;->g:I

    .line 9
    iput v2, v0, Lk0/mt;->i:I

    .line 10
    iput v3, v0, Lk0/mt;->b:I

    .line 11
    iput v3, v0, Lk0/mt;->c:I

    .line 12
    iput v3, v0, Lk0/mt;->d:I

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 14
    iput v2, v0, Lk0/mt;->e:I

    .line 15
    iput v2, v0, Lk0/mt;->f:I

    .line 16
    iput v2, v0, Lk0/mt;->g:I

    .line 17
    iput v2, v0, Lk0/mt;->i:I

    .line 18
    iput v2, v0, Lk0/mt;->b:I

    .line 19
    iput v3, v0, Lk0/mt;->c:I

    .line 20
    iput v3, v0, Lk0/mt;->d:I

    .line 21
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/w6;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1a

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_70

    const/16 v3, 0x41

    const/16 v9, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v13, 0xff

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x50

    if-eq v2, v3, :cond_6a

    const/16 v3, 0x52

    const/4 v14, 0x7

    if-eq v2, v3, :cond_69

    const/16 v3, 0x58

    if-eq v2, v3, :cond_68

    const/16 v3, 0x66

    if-eq v2, v3, :cond_67

    const/16 v3, 0x7d

    const/16 v15, 0xa

    if-eq v2, v3, :cond_5e

    const/16 v3, 0xc

    const/16 v17, -0x3

    const/16 v18, -0x2

    const/16 v8, 0x20

    const/16 v10, 0xf

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_29

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    .line 3
    :goto_0
    sput v2, Lk0/w6;->y:I

    and-int/2addr v1, v9

    if-nez v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v7

    .line 4
    :goto_1
    sput v1, Lk0/w6;->z:I

    const/16 v2, 0x3f5

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 5
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 7
    sget v1, Lk0/w6;->y:I

    if-eqz v1, :cond_2

    sget v1, Lk0/w6;->z:I

    if-ne v1, v7, :cond_2

    .line 8
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_29

    .line 9
    :cond_2
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_29

    :pswitch_1
    const/16 v2, 0xb7

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 10
    aget-byte v8, v1, v5

    shr-int/2addr v8, v11

    and-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb8

    new-array v3, v7, [I

    .line 11
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xb9

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 12
    aget-byte v8, v1, v5

    shr-int/2addr v8, v11

    and-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xba

    new-array v3, v7, [I

    .line 13
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbb

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 14
    aget-byte v8, v1, v5

    shr-int/2addr v8, v11

    and-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbc

    new-array v3, v7, [I

    .line 15
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v10

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbd

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 16
    aget-byte v5, v1, v5

    shr-int/2addr v5, v6

    and-int/2addr v5, v13

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xbe

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 17
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    .line 18
    :pswitch_2
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_29

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 20
    aget-byte v1, v1, v4

    and-int/2addr v2, v13

    .line 21
    iput v2, v0, Lk0/w6;->j:I

    move v2, v6

    .line 22
    :goto_2
    iget-object v4, v0, Lk0/w6;->k:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 23
    iget v5, v0, Lk0/w6;->j:I

    aget-object v9, v4, v2

    aget v9, v9, v6

    if-ne v5, v9, :cond_3

    if-eqz v5, :cond_4

    .line 24
    iput v2, v0, Lk0/w6;->i:I

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_4
    :goto_3
    iget v5, v0, Lk0/w6;->j:I

    if-eq v5, v3, :cond_8

    if-eq v5, v8, :cond_7

    const/16 v3, 0x22

    if-eq v5, v3, :cond_8

    and-int/2addr v1, v13

    if-ne v1, v7, :cond_5

    .line 26
    array-length v1, v4

    if-ge v2, v1, :cond_71

    .line 27
    aget-object v1, v4, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_29

    :cond_5
    if-nez v1, :cond_71

    .line 28
    iget v1, v0, Lk0/w6;->i:I

    array-length v2, v4

    if-ge v1, v2, :cond_6

    if-eq v1, v13, :cond_6

    .line 29
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 30
    :cond_6
    iput v13, v0, Lk0/w6;->i:I

    goto/16 :goto_29

    :cond_7
    and-int/2addr v1, v13

    if-ne v1, v7, :cond_71

    .line 31
    invoke-virtual/range {p0 .. p0}, Lk0/w6;->n3()V

    goto/16 :goto_29

    :cond_8
    and-int/2addr v1, v13

    if-ne v1, v7, :cond_71

    .line 32
    invoke-virtual/range {p0 .. p0}, Lk0/w6;->m3()V

    goto/16 :goto_29

    .line 33
    :pswitch_4
    iget-boolean v2, v0, Lk0/w6;->l:Z

    if-nez v2, :cond_71

    add-int/lit8 v2, p2, 0x2

    .line 34
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1f4

    invoke-static {v2, v1, v6, v3}, Lk0/qt;->k(IIZI)V

    goto/16 :goto_29

    :pswitch_5
    add-int/lit8 v2, p2, 0x1

    .line 35
    aget-byte v2, v1, v2

    add-int/lit8 v9, p2, 0x2

    .line 36
    aget-byte v9, v1, v9

    new-array v12, v7, [I

    shr-int/lit8 v16, v9, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v12, v6

    .line 37
    invoke-static {v15, v12}, Lk0/qt;->y0(I[I)V

    const/16 v12, 0xb

    new-array v5, v7, [I

    shr-int/lit8 v16, v9, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v6

    .line 38
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v7, [I

    shr-int/lit8 v12, v9, 0x5

    and-int/2addr v12, v7

    aput v12, v5, v6

    .line 39
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v5, v7, [I

    shr-int/lit8 v12, v9, 0x4

    and-int/2addr v12, v7

    aput v12, v5, v6

    .line 40
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1a

    new-array v5, v7, [I

    shr-int/lit8 v12, v9, 0x3

    and-int/2addr v12, v7

    aput v12, v5, v6

    .line 41
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v5, v7, [I

    shr-int/lit8 v12, v9, 0x2

    and-int/2addr v12, v7

    aput v12, v5, v6

    .line 42
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v9, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 43
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x3

    .line 44
    aget-byte v3, v1, v3

    const/16 v5, 0x12

    new-array v9, v7, [I

    shr-int/lit8 v12, v3, 0x7

    and-int/2addr v12, v7

    aput v12, v9, v6

    .line 45
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x13

    new-array v9, v7, [I

    shr-int/lit8 v12, v3, 0x6

    and-int/2addr v12, v7

    aput v12, v9, v6

    .line 46
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v9, v7, [I

    shr-int/lit8 v12, v3, 0x5

    and-int/2addr v12, v7

    aput v12, v9, v6

    .line 47
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    and-int/2addr v3, v10

    if-le v3, v14, :cond_9

    move v3, v14

    :cond_9
    const/16 v5, 0x15

    new-array v9, v7, [I

    aput v3, v9, v6

    .line 48
    invoke-static {v5, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x25

    new-array v5, v7, [I

    add-int/lit8 v9, p2, 0x6

    .line 49
    aget-byte v12, v1, v9

    shr-int/2addr v12, v6

    and-int/2addr v12, v7

    aput v12, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 50
    aget-byte v5, v1, v3

    and-int/2addr v5, v13

    add-int/lit8 v12, p2, 0x5

    .line 51
    aget-byte v10, v1, v12

    and-int/2addr v10, v13

    const-string v11, "persist.fyt.reversetemp"

    .line 52
    invoke-static {v11, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 53
    aget-byte v5, v1, v12

    and-int/2addr v5, v13

    .line 54
    aget-byte v3, v1, v3

    and-int/lit16 v10, v3, 0xff

    .line 55
    :cond_a
    aget-byte v3, v1, v9

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    if-nez v3, :cond_15

    if-eqz v5, :cond_f

    const/16 v3, 0x1f

    if-eq v5, v3, :cond_e

    if-lt v5, v7, :cond_b

    const/16 v3, 0x1d

    if-gt v5, v3, :cond_b

    new-array v3, v7, [I

    const/4 v11, 0x5

    mul-int/2addr v5, v11

    add-int/lit16 v5, v5, 0xaf

    aput v5, v3, v6

    const/16 v5, 0x1b

    .line 56
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_b
    if-lt v5, v8, :cond_c

    const/16 v3, 0x23

    if-gt v5, v3, :cond_c

    new-array v3, v7, [I

    sub-int/2addr v5, v8

    const/4 v11, 0x5

    mul-int/2addr v5, v11

    add-int/lit16 v5, v5, 0xa0

    aput v5, v3, v6

    const/16 v5, 0x1b

    .line 57
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_c
    const/16 v3, 0x24

    if-lt v5, v3, :cond_d

    const/16 v3, 0x25

    if-gt v5, v3, :cond_d

    new-array v3, v7, [I

    add-int/lit8 v5, v5, -0x24

    const/4 v11, 0x5

    mul-int/2addr v5, v11

    add-int/lit16 v5, v5, 0x96

    aput v5, v3, v6

    const/16 v5, 0x1b

    .line 58
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_d
    const/16 v5, 0x1b

    new-array v3, v7, [I

    const/4 v11, -0x1

    aput v11, v3, v6

    .line 59
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    const/16 v5, 0x1b

    new-array v3, v7, [I

    aput v17, v3, v6

    .line 60
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_f
    const/16 v5, 0x1b

    new-array v3, v7, [I

    aput v18, v3, v6

    .line 61
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_4
    if-eqz v10, :cond_14

    const/16 v3, 0x1f

    if-eq v10, v3, :cond_13

    if-lt v10, v7, :cond_10

    const/16 v3, 0x1d

    if-gt v10, v3, :cond_10

    new-array v3, v7, [I

    const/4 v5, 0x5

    mul-int/2addr v10, v5

    add-int/lit16 v10, v10, 0xaf

    aput v10, v3, v6

    const/16 v5, 0x1c

    .line 62
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_10
    if-lt v10, v8, :cond_11

    const/16 v3, 0x23

    if-gt v10, v3, :cond_11

    new-array v3, v7, [I

    sub-int/2addr v10, v8

    const/4 v5, 0x5

    mul-int/2addr v10, v5

    add-int/lit16 v10, v10, 0xa0

    aput v10, v3, v6

    const/16 v5, 0x1c

    .line 63
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_11
    const/16 v3, 0x24

    if-lt v10, v3, :cond_12

    const/16 v3, 0x25

    if-gt v10, v3, :cond_12

    new-array v3, v7, [I

    add-int/lit8 v10, v10, -0x24

    const/4 v5, 0x5

    mul-int/2addr v10, v5

    add-int/lit16 v10, v10, 0x96

    aput v10, v3, v6

    const/16 v5, 0x1c

    .line 64
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_12
    const/16 v5, 0x1c

    new-array v3, v7, [I

    const/4 v8, -0x1

    aput v8, v3, v6

    .line 65
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_13
    const/16 v5, 0x1c

    new-array v3, v7, [I

    aput v17, v3, v6

    .line 66
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_14
    const/16 v5, 0x1c

    new-array v3, v7, [I

    aput v18, v3, v6

    .line 67
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_15
    if-eqz v5, :cond_17

    if-eq v5, v13, :cond_16

    new-array v3, v7, [I

    mul-int/2addr v5, v15

    aput v5, v3, v6

    const/16 v5, 0x1b

    .line 68
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_16
    const/16 v5, 0x1b

    new-array v3, v7, [I

    aput v17, v3, v6

    .line 69
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_17
    const/16 v5, 0x1b

    new-array v3, v7, [I

    aput v18, v3, v6

    .line 70
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    if-eqz v10, :cond_19

    if-eq v10, v13, :cond_18

    new-array v3, v7, [I

    mul-int/2addr v10, v15

    aput v10, v3, v6

    const/16 v5, 0x1c

    .line 71
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_18
    const/16 v5, 0x1c

    new-array v3, v7, [I

    aput v17, v3, v6

    .line 72
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_19
    const/16 v5, 0x1c

    new-array v3, v7, [I

    aput v18, v3, v6

    .line 73
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_6
    new-array v3, v7, [I

    .line 74
    aget-byte v5, v1, v9

    shr-int/2addr v5, v4

    and-int/2addr v5, v7

    aput v5, v3, v6

    const/16 v5, 0x10

    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v5, v7, [I

    .line 75
    aget-byte v8, v1, v9

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x36

    new-array v5, v7, [I

    .line 76
    aget-byte v8, v1, v9

    const/4 v10, 0x5

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x34

    new-array v5, v7, [I

    .line 77
    aget-byte v8, v1, v9

    const/4 v10, 0x4

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x35

    new-array v5, v7, [I

    .line 78
    aget-byte v8, v1, v9

    const/4 v10, 0x3

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x43

    new-array v5, v7, [I

    .line 79
    aget-byte v8, v1, v9

    const/4 v10, 0x2

    shr-int/2addr v8, v10

    and-int/2addr v8, v7

    aput v8, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    .line 80
    aget-byte v3, v1, v9

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    const/16 v5, 0x29

    const/16 v8, 0x28

    if-nez v3, :cond_22

    add-int/lit8 v3, p2, 0x8

    .line 81
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_1d

    const/16 v10, 0x1f

    if-eq v3, v10, :cond_1c

    if-lt v3, v7, :cond_1a

    const/16 v10, 0x1d

    if-gt v3, v10, :cond_1a

    new-array v10, v7, [I

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    add-int/lit16 v3, v3, 0xaf

    aput v3, v10, v6

    .line 82
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1a
    const/16 v10, 0x21

    if-lt v3, v10, :cond_1b

    const/16 v10, 0x26

    if-gt v3, v10, :cond_1b

    new-array v10, v7, [I

    add-int/lit8 v3, v3, -0x21

    const/4 v11, 0x5

    mul-int/2addr v3, v11

    add-int/lit16 v3, v3, 0x96

    aput v3, v10, v6

    .line 83
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1b
    new-array v3, v7, [I

    const/4 v10, -0x1

    aput v10, v3, v6

    .line 84
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1c
    new-array v3, v7, [I

    aput v17, v3, v6

    .line 85
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_1d
    new-array v3, v7, [I

    aput v18, v3, v6

    .line 86
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    add-int/lit8 v3, p2, 0xa

    .line 87
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_21

    const/16 v8, 0x1f

    if-eq v3, v8, :cond_20

    if-lt v3, v7, :cond_1e

    const/16 v8, 0x1d

    if-gt v3, v8, :cond_1e

    new-array v8, v7, [I

    const/4 v10, 0x5

    mul-int/2addr v3, v10

    add-int/lit16 v3, v3, 0xaf

    aput v3, v8, v6

    .line 88
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1e
    const/16 v8, 0x21

    if-lt v3, v8, :cond_1f

    const/16 v8, 0x26

    if-gt v3, v8, :cond_1f

    new-array v8, v7, [I

    add-int/lit8 v3, v3, -0x21

    const/4 v10, 0x5

    mul-int/2addr v3, v10

    add-int/lit16 v3, v3, 0x96

    aput v3, v8, v6

    .line 89
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_1f
    new-array v3, v7, [I

    const/4 v8, -0x1

    aput v8, v3, v6

    .line 90
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_20
    new-array v3, v7, [I

    aput v17, v3, v6

    .line 91
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_21
    new-array v3, v7, [I

    aput v18, v3, v6

    .line 92
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_22
    add-int/lit8 v3, p2, 0x8

    .line 93
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_24

    if-eq v3, v13, :cond_23

    new-array v10, v7, [I

    mul-int/2addr v3, v15

    aput v3, v10, v6

    .line 94
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_23
    new-array v3, v7, [I

    aput v17, v3, v6

    .line 95
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_24
    new-array v3, v7, [I

    aput v18, v3, v6

    .line 96
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    add-int/lit8 v3, p2, 0xa

    .line 97
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_26

    if-eq v3, v13, :cond_25

    new-array v8, v7, [I

    mul-int/2addr v3, v15

    aput v3, v8, v6

    .line 98
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_25
    new-array v3, v7, [I

    aput v17, v3, v6

    .line 99
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_26
    new-array v3, v7, [I

    aput v18, v3, v6

    .line 100
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v3, 0x2a

    new-array v5, v7, [I

    add-int/lit8 v8, p2, 0x9

    .line 101
    aget-byte v10, v1, v8

    shr-int/2addr v10, v14

    and-int/2addr v10, v7

    aput v10, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2e

    new-array v5, v7, [I

    .line 102
    aget-byte v10, v1, v8

    shr-int/2addr v10, v4

    and-int/2addr v10, v7

    aput v10, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2f

    new-array v5, v7, [I

    .line 103
    aget-byte v10, v1, v8

    const/4 v11, 0x5

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2b

    new-array v5, v7, [I

    .line 104
    aget-byte v10, v1, v8

    const/4 v11, 0x4

    shr-int/2addr v10, v11

    and-int/2addr v10, v7

    aput v10, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x2c

    new-array v5, v7, [I

    .line 105
    aget-byte v8, v1, v8

    shr-int/2addr v8, v6

    const/16 v10, 0xf

    and-int/2addr v8, v10

    aput v8, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    if-lt v2, v3, :cond_27

    const/16 v2, 0xa6

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xc

    .line 106
    aget-byte v8, v1, v5

    shr-int/2addr v8, v6

    const/4 v10, 0x3

    and-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x56

    new-array v3, v7, [I

    .line 107
    aget-byte v8, v1, v5

    const/4 v10, 0x2

    shr-int/2addr v8, v10

    and-int/2addr v8, v14

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v3, v7, [I

    .line 108
    aget-byte v8, v1, v5

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x5c

    new-array v3, v7, [I

    .line 109
    aget-byte v5, v1, v5

    const/4 v8, 0x5

    shr-int/2addr v5, v8

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x21

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xd

    .line 110
    aget-byte v8, v1, v5

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x24

    new-array v3, v7, [I

    .line 111
    aget-byte v5, v1, v5

    shr-int/lit8 v4, v5, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_27
    add-int/lit8 v2, p2, 0x7

    .line 112
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    if-eq v2, v13, :cond_2a

    if-nez v2, :cond_28

    goto :goto_b

    .line 113
    :cond_28
    aget-byte v1, v1, v9

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_29

    mul-int/lit8 v2, v2, 0x9

    add-int/lit16 v2, v2, 0x258

    const/high16 v1, 0x10000000

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_29
    const/4 v1, 0x5

    mul-int/2addr v2, v1

    add-int/lit16 v1, v2, 0x258

    .line 114
    :goto_a
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_29

    .line 115
    :cond_2a
    :goto_b
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_29

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/lit8 v2, v2, 0x18

    move v3, v6

    :goto_c
    const/16 v4, 0xf

    if-ge v3, v4, :cond_71

    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v3, v5, v6

    mul-int/lit8 v4, v3, 0x2

    add-int v4, p2, v4

    add-int/lit8 v8, v4, 0x3

    .line 117
    aget-byte v8, v1, v8

    and-int/2addr v8, v13

    shl-int/2addr v8, v9

    const/4 v10, 0x4

    add-int/2addr v4, v10

    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    or-int/2addr v4, v8

    or-int/2addr v4, v2

    aput v4, v5, v7

    const/16 v4, 0x86

    .line 118
    iget-object v8, v0, Lk0/w6;->c:[[I

    aget-object v8, v8, v3

    invoke-static {v4, v5, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 119
    iget-object v4, v0, Lk0/w6;->c:[[I

    aput-object v5, v4, v3

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 120
    aget-byte v2, v1, v2

    const/16 v3, 0x73

    new-array v4, v7, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_2c

    move v5, v6

    goto :goto_d

    :cond_2c
    move v5, v7

    :goto_d
    aput v5, v4, v6

    .line 121
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x74

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x70

    const/4 v8, 0x4

    shr-int/2addr v5, v8

    aput v5, v4, v6

    .line 122
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x75

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0xc

    const/4 v8, 0x2

    shr-int/2addr v5, v8

    aput v5, v4, v6

    .line 123
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v4, v7, [I

    const/4 v5, 0x3

    and-int/2addr v2, v5

    aput v2, v4, v6

    .line 124
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 125
    aget-byte v2, v1, v2

    const/16 v3, 0x77

    new-array v4, v7, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_2d

    move v5, v6

    goto :goto_e

    :cond_2d
    move v5, v7

    :goto_e
    aput v5, v4, v6

    .line 126
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_2e

    move v5, v6

    goto :goto_f

    :cond_2e
    move v5, v7

    :goto_f
    aput v5, v4, v6

    .line 127
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x79

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_2f

    move v5, v6

    goto :goto_10

    :cond_2f
    move v5, v7

    :goto_10
    aput v5, v4, v6

    .line 128
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7a

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_30

    move v5, v6

    goto :goto_11

    :cond_30
    move v5, v7

    :goto_11
    aput v5, v4, v6

    .line 129
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7b

    new-array v4, v7, [I

    and-int/2addr v2, v14

    aput v2, v4, v6

    .line 130
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 131
    aget-byte v2, v1, v2

    const/16 v3, 0x7c

    new-array v4, v7, [I

    and-int/lit16 v5, v2, 0x80

    if-nez v5, :cond_31

    move v5, v6

    goto :goto_12

    :cond_31
    move v5, v7

    :goto_12
    aput v5, v4, v6

    .line 132
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7d

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_32

    move v5, v6

    goto :goto_13

    :cond_32
    move v5, v7

    :goto_13
    aput v5, v4, v6

    .line 133
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7e

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x20

    if-nez v5, :cond_33

    move v5, v6

    goto :goto_14

    :cond_33
    move v5, v7

    :goto_14
    aput v5, v4, v6

    .line 134
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7f

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_34

    move v5, v6

    goto :goto_15

    :cond_34
    move v5, v7

    :goto_15
    aput v5, v4, v6

    .line 135
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x80

    new-array v4, v7, [I

    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_35

    move v5, v6

    goto :goto_16

    :cond_35
    move v5, v7

    :goto_16
    aput v5, v4, v6

    .line 136
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x81

    new-array v4, v7, [I

    and-int/2addr v2, v14

    aput v2, v4, v6

    .line 137
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 138
    aget-byte v1, v1, v2

    const/16 v2, 0x82

    new-array v3, v7, [I

    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_36

    move v4, v6

    goto :goto_17

    :cond_36
    move v4, v7

    :goto_17
    aput v4, v3, v6

    .line 139
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    and-int/lit8 v4, v1, 0x40

    if-nez v4, :cond_37

    move v4, v6

    goto :goto_18

    :cond_37
    move v4, v7

    :goto_18
    aput v4, v3, v6

    .line 140
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    const/4 v4, 0x2

    shr-int/2addr v1, v4

    const/4 v4, 0x3

    and-int/2addr v1, v4

    aput v1, v3, v6

    .line 141
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    .line 142
    aget-byte v2, v1, v2

    const/16 v4, 0x6a

    new-array v5, v7, [I

    and-int/lit16 v8, v2, 0x80

    if-nez v8, :cond_38

    move v8, v6

    goto :goto_19

    :cond_38
    move v8, v7

    :goto_19
    aput v8, v5, v6

    .line 143
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6b

    new-array v5, v7, [I

    and-int/lit8 v8, v2, 0x40

    if-nez v8, :cond_39

    move v8, v6

    goto :goto_1a

    :cond_39
    move v8, v7

    :goto_1a
    aput v8, v5, v6

    .line 144
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6c

    new-array v5, v7, [I

    and-int/lit8 v8, v2, 0x20

    if-nez v8, :cond_3a

    move v8, v6

    goto :goto_1b

    :cond_3a
    move v8, v7

    :goto_1b
    aput v8, v5, v6

    .line 145
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x6d

    new-array v5, v7, [I

    and-int/lit8 v8, v2, 0x4

    if-nez v8, :cond_3b

    move v8, v6

    goto :goto_1c

    :cond_3b
    move v8, v7

    :goto_1c
    aput v8, v5, v6

    .line 146
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/4 v4, 0x3

    and-int/2addr v2, v4

    shl-int/lit8 v4, v2, 0x18

    add-int/lit8 v5, p2, 0x3

    .line 147
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    if-ne v5, v13, :cond_3c

    const v5, 0xffffff

    :cond_3c
    const/16 v8, 0x6e

    new-array v10, v7, [I

    or-int v11, v5, v4

    aput v11, v10, v6

    .line 148
    invoke-static {v8, v10}, Lk0/qt;->y0(I[I)V

    .line 149
    sget-object v8, Lk0/nt;->f:[Lo1/x;

    const/16 v10, 0x419

    const/4 v11, 0x2

    new-array v12, v11, [I

    aput v9, v12, v6

    shl-int/2addr v2, v3

    const v3, 0xf000

    and-int/2addr v2, v3

    or-int/lit16 v3, v2, 0x100

    and-int/2addr v5, v13

    or-int/2addr v3, v5

    aput v3, v12, v7

    const/4 v3, 0x0

    invoke-static {v8, v10, v12, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x4

    .line 150
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    if-ne v3, v13, :cond_3d

    const v3, 0xffffff

    :cond_3d
    const/16 v5, 0x6f

    new-array v10, v7, [I

    or-int v11, v3, v4

    aput v11, v10, v6

    .line 151
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x419

    const/4 v10, 0x2

    new-array v11, v10, [I

    aput v9, v11, v6

    or-int/lit16 v10, v2, 0x200

    and-int/2addr v3, v13

    or-int/2addr v3, v10

    aput v3, v11, v7

    const/4 v3, 0x0

    .line 152
    invoke-static {v8, v5, v11, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x5

    .line 153
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    if-ne v3, v13, :cond_3e

    const v3, 0xffffff

    :cond_3e
    const/16 v5, 0x70

    new-array v10, v7, [I

    or-int v11, v3, v4

    aput v11, v10, v6

    .line 154
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x419

    const/4 v10, 0x2

    new-array v11, v10, [I

    aput v9, v11, v6

    or-int/lit16 v10, v2, 0x300

    and-int/2addr v3, v13

    or-int/2addr v3, v10

    aput v3, v11, v7

    const/4 v3, 0x0

    .line 155
    invoke-static {v8, v5, v11, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v3, p2, 0x6

    .line 156
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    if-ne v3, v13, :cond_3f

    const v3, 0xffffff

    :cond_3f
    const/16 v5, 0x71

    new-array v10, v7, [I

    or-int v11, v3, v4

    aput v11, v10, v6

    .line 157
    invoke-static {v5, v10}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x419

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v9, v10, v6

    or-int/lit16 v2, v2, 0x400

    and-int/2addr v3, v13

    or-int/2addr v2, v3

    aput v2, v10, v7

    const/4 v2, 0x0

    .line 158
    invoke-static {v8, v5, v10, v2, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x7

    .line 159
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_40

    const v1, 0xffffff

    :cond_40
    const/16 v2, 0x72

    new-array v3, v7, [I

    or-int/2addr v1, v4

    aput v1, v3, v6

    .line 160
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 161
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 162
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_41

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 163
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x2

    .line 164
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1d

    :cond_41
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 165
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x2

    .line 166
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    :goto_1d
    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x3

    .line 167
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v7

    aput v5, v3, v6

    const/4 v5, 0x4

    .line 168
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v7

    aput v2, v3, v6

    const/4 v2, 0x5

    .line 169
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 170
    aget-byte v1, v1, v2

    new-array v2, v7, [I

    shr-int/2addr v1, v14

    and-int/2addr v1, v7

    aput v1, v2, v6

    .line 171
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    .line 172
    :pswitch_a
    sget v2, Lk0/nt;->a:I

    const v5, 0x300d6

    if-ne v2, v5, :cond_4e

    add-int/lit8 v2, p2, 0x2

    .line 173
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 174
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x6

    .line 175
    aget-byte v5, v1, v5

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 176
    invoke-static {v15, v9}, Lk0/qt;->y0(I[I)V

    const/16 v9, 0xb

    new-array v10, v7, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 177
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x4

    and-int/lit8 v11, v10, 0x3

    aput v11, v9, v6

    .line 178
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xd

    new-array v9, v7, [I

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 179
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x1a

    new-array v9, v7, [I

    shr-int/lit8 v10, v2, 0x3

    and-int/2addr v10, v7

    aput v10, v9, v6

    .line 180
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xe

    new-array v9, v7, [I

    const/4 v10, 0x2

    shr-int/2addr v2, v10

    and-int/2addr v2, v7

    aput v2, v9, v6

    .line 181
    invoke-static {v3, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v7, [I

    shr-int/lit8 v9, v4, 0x7

    and-int/2addr v9, v7

    aput v9, v3, v6

    .line 182
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v7, [I

    shr-int/lit8 v9, v4, 0x6

    and-int/2addr v9, v7

    aput v9, v3, v6

    .line 183
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v7, [I

    shr-int/lit8 v9, v4, 0x5

    and-int/lit8 v10, v9, 0x1

    aput v10, v3, v6

    .line 184
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v7, [I

    and-int/2addr v9, v14

    aput v9, v3, v6

    .line 185
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xf

    and-int/2addr v2, v4

    if-le v2, v14, :cond_42

    goto :goto_1e

    :cond_42
    move v14, v2

    :goto_1e
    const/16 v2, 0x15

    new-array v3, v7, [I

    aput v14, v3, v6

    .line 186
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 187
    aget-byte v3, v1, v2

    const/4 v4, 0x5

    add-int/lit8 v4, p2, 0x5

    .line 188
    aget-byte v9, v1, v4

    const-string v10, "persist.fyt.reversetemp"

    .line 189
    invoke-static {v10, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 190
    aget-byte v3, v1, v4

    .line 191
    aget-byte v9, v1, v2

    :cond_43
    if-eqz v3, :cond_48

    const/16 v1, 0x1f

    if-eq v3, v1, :cond_47

    if-lt v3, v7, :cond_44

    const/16 v1, 0x1d

    if-le v3, v1, :cond_45

    :cond_44
    if-lt v3, v8, :cond_46

    const/16 v1, 0x24

    if-gt v3, v1, :cond_46

    :cond_45
    new-array v1, v7, [I

    aput v3, v1, v6

    const/16 v2, 0x1b

    .line 192
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1f

    :cond_46
    const/16 v2, 0x1b

    new-array v1, v7, [I

    const/4 v3, -0x1

    aput v3, v1, v6

    .line 193
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1f

    :cond_47
    const/16 v2, 0x1b

    new-array v1, v7, [I

    aput v17, v1, v6

    .line 194
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1f

    :cond_48
    const/16 v2, 0x1b

    new-array v1, v7, [I

    aput v18, v1, v6

    .line 195
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_1f
    if-eqz v9, :cond_4d

    const/16 v1, 0x1f

    if-eq v9, v1, :cond_4c

    if-lt v9, v7, :cond_49

    const/16 v1, 0x1d

    if-le v9, v1, :cond_4a

    :cond_49
    if-lt v9, v8, :cond_4b

    const/16 v1, 0x24

    if-gt v9, v1, :cond_4b

    :cond_4a
    new-array v1, v7, [I

    aput v9, v1, v6

    const/16 v2, 0x1c

    .line 196
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_20

    :cond_4b
    const/16 v2, 0x1c

    new-array v1, v7, [I

    const/4 v3, -0x1

    aput v3, v1, v6

    .line 197
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_20

    :cond_4c
    const/16 v2, 0x1c

    new-array v1, v7, [I

    aput v17, v1, v6

    .line 198
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_20

    :cond_4d
    const/16 v2, 0x1c

    new-array v1, v7, [I

    aput v18, v1, v6

    .line 199
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_20
    const/16 v1, 0x41

    new-array v2, v7, [I

    shr-int/lit8 v3, v5, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 200
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v2, v5, 0x6

    and-int/2addr v2, v7

    aput v2, v1, v6

    const/16 v2, 0x10

    .line 201
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x25

    new-array v2, v7, [I

    shr-int/lit8 v3, v5, 0x0

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 202
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_4e
    add-int/lit8 v2, p2, 0x2

    .line 203
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 204
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v9

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v3, v5

    const v5, 0xffff

    if-ne v3, v5, :cond_4f

    move v3, v6

    :cond_4f
    const/16 v5, 0x68

    new-array v8, v7, [I

    or-int/2addr v3, v2

    aput v3, v8, v6

    .line 205
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    move v3, v6

    :goto_21
    const/4 v5, 0x5

    if-ge v3, v5, :cond_71

    const/4 v5, 0x2

    new-array v8, v5, [I

    aput v3, v8, v6

    mul-int/lit8 v5, v3, 0x2

    add-int v5, p2, v5

    add-int/lit8 v10, v5, 0x5

    .line 206
    aget-byte v10, v1, v10

    and-int/2addr v10, v13

    shl-int/2addr v10, v9

    add-int/2addr v5, v4

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v5, v10

    or-int/2addr v5, v2

    aput v5, v8, v7

    const/16 v5, 0x69

    .line 207
    iget-object v10, v0, Lk0/w6;->b:[[I

    aget-object v10, v10, v3

    invoke-static {v5, v8, v10}, Lk0/qt;->C0(I[I[I)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 208
    iget-object v5, v0, Lk0/w6;->b:[[I

    aput-object v8, v5, v3

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :pswitch_b
    add-int/lit8 v2, p2, 0x2

    .line 209
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 210
    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v9

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    or-int/2addr v1, v3

    const v3, 0xffff

    if-ne v1, v3, :cond_51

    move v1, v6

    :cond_51
    const/16 v3, 0x67

    new-array v4, v7, [I

    or-int/2addr v1, v2

    aput v1, v4, v6

    .line 211
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :pswitch_c
    add-int/lit8 v2, p2, 0x8

    .line 212
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/lit8 v2, v2, 0x18

    const/16 v3, 0x64

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x2

    .line 213
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    shl-int/2addr v5, v9

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v13

    or-int/2addr v5, v8

    or-int/2addr v5, v2

    aput v5, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x4

    .line 214
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    shl-int/2addr v5, v9

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v13

    or-int/2addr v5, v8

    aput v5, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v4, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 215
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    shl-int/2addr v5, v9

    add-int/lit8 v7, p2, 0x7

    aget-byte v1, v1, v7

    and-int/2addr v1, v13

    or-int/2addr v1, v5

    or-int/2addr v1, v2

    aput v1, v4, v6

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    .line 216
    :pswitch_d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 217
    sget v2, Lk0/nt;->a:I

    const v3, 0x300d6

    if-ne v2, v3, :cond_55

    const/4 v2, 0x4

    add-int/lit8 v2, p2, 0x4

    .line 218
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    iput v1, v0, Lk0/w6;->e:I

    move v1, v6

    :goto_22
    if-ge v1, v15, :cond_53

    .line 219
    iget v2, v0, Lk0/w6;->e:I

    iget-object v3, v0, Lk0/w6;->f:[[I

    aget-object v3, v3, v1

    aget v3, v3, v6

    if-ne v2, v3, :cond_52

    if-eqz v2, :cond_53

    .line 220
    iput v1, v0, Lk0/w6;->d:I

    goto :goto_23

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 221
    :cond_53
    :goto_23
    iget v2, v0, Lk0/w6;->e:I

    if-eqz v2, :cond_54

    .line 222
    iget-object v2, v0, Lk0/w6;->f:[[I

    aget-object v1, v2, v1

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_29

    .line 223
    :cond_54
    iget-object v1, v0, Lk0/w6;->f:[[I

    iget v2, v0, Lk0/w6;->d:I

    aget-object v1, v1, v2

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_29

    :cond_55
    add-int/lit8 v2, p2, 0x2

    .line 224
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 225
    aget-byte v1, v1, v3

    and-int/2addr v2, v13

    .line 226
    iput v2, v0, Lk0/w6;->e:I

    move v2, v6

    .line 227
    :goto_24
    iget-object v3, v0, Lk0/w6;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_57

    .line 228
    iget v4, v0, Lk0/w6;->e:I

    aget-object v5, v3, v2

    aget v5, v5, v6

    if-ne v4, v5, :cond_56

    if-eqz v4, :cond_57

    .line 229
    iput v2, v0, Lk0/w6;->d:I

    goto :goto_25

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_57
    :goto_25
    and-int/2addr v1, v13

    if-eqz v1, :cond_58

    .line 230
    array-length v1, v3

    if-ge v2, v1, :cond_71

    .line 231
    aget-object v1, v3, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_29

    .line 232
    :cond_58
    iget v1, v0, Lk0/w6;->d:I

    array-length v2, v3

    if-ge v1, v2, :cond_59

    if-eq v1, v13, :cond_59

    .line 233
    aget-object v1, v3, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 234
    :cond_59
    iput v13, v0, Lk0/w6;->d:I

    goto/16 :goto_29

    :pswitch_e
    add-int/lit8 v2, p2, 0x2

    .line 235
    aget-byte v2, v1, v2

    const/16 v3, 0x61

    new-array v4, v7, [I

    shr-int/lit8 v5, v2, 0x0

    const/16 v8, 0xf

    and-int/2addr v5, v8

    aput v5, v4, v6

    .line 236
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x62

    new-array v4, v7, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 237
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 238
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    .line 239
    :pswitch_f
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_5a

    add-int/lit8 v2, p2, 0x2

    .line 240
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 241
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 242
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 243
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->U2(I)V

    :cond_5a
    const/16 v2, 0x9f

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x6

    .line 244
    aget-byte v8, v1, v5

    shr-int/lit8 v4, v8, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa0

    new-array v3, v7, [I

    .line 245
    aget-byte v4, v1, v5

    shr-int/2addr v4, v14

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa1

    new-array v3, v7, [I

    .line 246
    aget-byte v1, v1, v5

    shr-int/2addr v1, v6

    and-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    .line 247
    :pswitch_10
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_71

    add-int/lit8 v2, p2, 0x2

    .line 248
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x3

    .line 249
    aget-byte v5, v1, v4

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x4

    .line 250
    aget-byte v8, v1, v6

    and-int/2addr v8, v13

    const/4 v9, 0x5

    add-int/lit8 v9, p2, 0x5

    .line 251
    aget-byte v10, v1, v9

    and-int/2addr v10, v13

    .line 252
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_5b

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_5b

    sget v11, Ll0/c0;->i:I

    if-ne v11, v8, :cond_5b

    sget v11, Ll0/c0;->j:I

    if-eq v11, v10, :cond_5d

    .line 253
    :cond_5b
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_5d

    if-nez v3, :cond_5c

    if-nez v5, :cond_5c

    if-nez v8, :cond_5c

    if-nez v10, :cond_5c

    .line 254
    sget v11, Lu0/b;->p:I

    if-ne v11, v7, :cond_5d

    const/4 v7, 0x2

    .line 255
    sput v7, Ll0/c0;->k:I

    .line 256
    sget-object v7, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v7}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_26

    .line 257
    :cond_5c
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 258
    :cond_5d
    :goto_26
    sput v3, Ll0/c0;->g:I

    .line 259
    sput v5, Ll0/c0;->h:I

    .line 260
    sput v8, Ll0/c0;->i:I

    .line 261
    sput v10, Ll0/c0;->j:I

    .line 262
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 263
    aget-byte v2, v1, v4

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 264
    aget-byte v2, v1, v6

    and-int/2addr v2, v13

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 265
    aget-byte v1, v1, v9

    and-int/2addr v1, v13

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_29

    :cond_5e
    add-int/lit8 v2, p2, 0x2

    .line 266
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    if-eq v2, v7, :cond_65

    if-eq v2, v4, :cond_64

    if-eq v2, v9, :cond_63

    if-eq v2, v15, :cond_62

    const/16 v3, 0xd

    if-eq v2, v3, :cond_61

    const/4 v3, 0x3

    if-eq v2, v3, :cond_60

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5f

    goto/16 :goto_29

    :cond_5f
    const/16 v2, 0x95

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x5

    .line 267
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    shl-int/2addr v5, v9

    const v8, 0xff00

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xa

    .line 268
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x9

    aget-byte v5, v1, v5

    shl-int/2addr v5, v9

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x8

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0xd

    .line 269
    aget-byte v4, v1, v4

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v1, v5

    shl-int/2addr v5, v9

    const v7, 0xff00

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xb

    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_60
    add-int/lit8 v2, p2, 0x4

    .line 270
    aget-byte v3, v1, v2

    shl-int/2addr v3, v9

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v5, v1, v4

    and-int/2addr v5, v13

    or-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x64

    const/16 v5, 0x407

    new-array v8, v7, [I

    aput v3, v8, v6

    .line 271
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    .line 272
    sget-object v5, Lk0/nt;->f:[Lo1/x;

    const/16 v8, 0x419

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v7, v10, v6

    aput v3, v10, v7

    const/4 v3, 0x0

    invoke-static {v5, v8, v10, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const/16 v3, 0x99

    new-array v5, v7, [I

    .line 273
    aget-byte v2, v1, v2

    shl-int/2addr v2, v9

    const v8, 0xff00

    and-int/2addr v2, v8

    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    or-int/2addr v2, v4

    aput v2, v5, v6

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x61

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x6

    .line 274
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const v5, 0xff00

    and-int/2addr v4, v5

    const/4 v5, 0x5

    add-int/lit8 v5, p2, 0x5

    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_61
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 275
    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    const/16 v2, 0x92

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x4

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 276
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x5

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 277
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x2

    const/4 v8, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v6

    .line 278
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v8

    aput v1, v3, v6

    .line 279
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_62
    const/16 v2, 0x9a

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x4

    .line 280
    aget-byte v4, v1, v4

    shl-int/2addr v4, v9

    const v5, 0xff00

    and-int/2addr v4, v5

    const/4 v5, 0x3

    add-int/lit8 v5, p2, 0x3

    aget-byte v1, v1, v5

    and-int/2addr v1, v13

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_63
    add-int/lit8 v2, p2, 0x3

    .line 281
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 282
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 283
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    .line 284
    iput-boolean v7, v0, Lk0/w6;->l:Z

    goto/16 :goto_29

    :cond_64
    const/16 v2, 0x8a

    new-array v3, v7, [I

    const/4 v4, 0x3

    add-int/lit8 v4, p2, 0x3

    .line 285
    aget-byte v5, v1, v4

    shr-int/2addr v5, v7

    and-int/2addr v5, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v7, [I

    .line 286
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_65
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 287
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_66

    add-int/lit8 v2, p2, 0x3

    .line 288
    aget-byte v3, v1, v2

    const/4 v5, 0x3

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v2, v1, v2

    const/4 v8, 0x4

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    invoke-static {v3, v2, v6}, Ll0/c0;->b(III)V

    goto :goto_27

    :cond_66
    const/4 v5, 0x3

    const/4 v8, 0x4

    add-int/lit8 v2, p2, 0x3

    .line 289
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v2, v1, v2

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    invoke-static {v3, v2, v6}, Ll0/c0;->a(III)V

    :goto_27
    const/16 v2, 0x87

    new-array v3, v7, [I

    add-int/lit8 v8, p2, 0x3

    .line 290
    aget-byte v5, v1, v8

    shr-int/lit8 v4, v5, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v7, [I

    .line 291
    aget-byte v4, v1, v8

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v7, [I

    .line 292
    aget-byte v4, v1, v8

    shr-int/2addr v4, v14

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v7, [I

    .line 293
    aget-byte v4, v1, v8

    const/4 v5, 0x3

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v7, [I

    .line 294
    aget-byte v4, v1, v8

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v7, [I

    .line 295
    aget-byte v4, v1, v8

    shr-int/2addr v4, v7

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v7, [I

    .line 296
    aget-byte v1, v1, v8

    const/4 v4, 0x2

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_67
    const/16 v2, 0x105

    new-array v3, v7, [I

    const/4 v5, 0x4

    add-int/lit8 v5, p2, 0x4

    .line 297
    aget-byte v8, v1, v5

    shr-int/2addr v8, v14

    and-int/2addr v8, v7

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x106

    new-array v3, v7, [I

    .line 298
    aget-byte v1, v1, v5

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_68
    const/4 v2, 0x5

    add-int/lit8 v2, p2, 0x5

    .line 299
    aget-byte v1, v1, v2

    const/16 v2, 0x22

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 300
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x23

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 301
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4c

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 302
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x11

    new-array v3, v7, [I

    const/4 v4, 0x4

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 303
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_69
    const/16 v2, 0xa2

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 304
    aget-byte v4, v1, v4

    shr-int/2addr v4, v14

    and-int/2addr v4, v7

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa3

    new-array v3, v7, [I

    const/4 v4, 0x4

    add-int/lit8 v4, p2, 0x4

    .line 305
    aget-byte v1, v1, v4

    shr-int/2addr v1, v6

    and-int/2addr v1, v14

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_6a
    const/16 v2, 0xa7

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 306
    aget-byte v5, v1, v4

    const/4 v8, 0x2

    shr-int/2addr v5, v8

    const/4 v8, 0x3

    and-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa8

    new-array v3, v7, [I

    .line 307
    aget-byte v4, v1, v4

    shr-int/2addr v4, v6

    and-int/2addr v4, v8

    aput v4, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xa5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 308
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_6b
    add-int/lit8 v2, p2, 0x2

    .line 309
    aget-byte v2, v1, v2

    if-eq v2, v7, :cond_6e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6d

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6c

    goto/16 :goto_29

    :cond_6c
    add-int/lit8 v2, p2, 0x3

    .line 310
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x9a

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 311
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x408

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 312
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 313
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    const/16 v2, 0x9b

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 314
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_6d
    add-int/lit8 v2, p2, 0x3

    .line 315
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v9

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x95

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 316
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 317
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x96

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 318
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 319
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v9

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x97

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 320
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 321
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xc

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v9

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x98

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 322
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 323
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v9

    add-int/lit8 v3, p2, 0xf

    aget-byte v3, v1, v3

    and-int/2addr v3, v13

    shl-int/2addr v3, v6

    or-int/2addr v2, v3

    const/16 v3, 0x99

    new-array v4, v7, [I

    aput v2, v4, v6

    .line 324
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x10

    .line 325
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    shl-int/2addr v2, v9

    add-int/lit8 v3, p2, 0x11

    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    shl-int/2addr v1, v6

    or-int/2addr v1, v2

    const/16 v2, 0x61

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 326
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_29

    :cond_6e
    add-int/lit8 v2, p2, 0x3

    .line 327
    aget-byte v2, v1, v2

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 328
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x5

    .line 329
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x4

    .line 330
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    const/4 v4, 0x3

    .line 331
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.syu.reversefrontdoor"

    .line 332
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6f

    new-array v3, v7, [I

    shr-int/lit8 v4, v2, 0x0

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 333
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v3, v6

    const/4 v4, 0x2

    .line 334
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_28

    :cond_6f
    const/4 v4, 0x2

    new-array v3, v7, [I

    shr-int/lit8 v5, v2, 0x0

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 335
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 336
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_28
    add-int/lit8 v2, p2, 0x6

    .line 337
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x7

    .line 338
    aget-byte v3, v1, v3

    const/16 v4, 0x87

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 339
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x88

    new-array v5, v7, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v7

    aput v8, v5, v6

    .line 340
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x89

    new-array v5, v7, [I

    const/4 v8, 0x5

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    aput v2, v5, v6

    .line 341
    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 342
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 343
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 344
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 345
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 346
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v4, v7, [I

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 347
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v4, v7, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v7

    aput v3, v4, v6

    .line 348
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 349
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x9

    .line 350
    aget-byte v1, v1, v3

    const/16 v3, 0x91

    new-array v4, v7, [I

    shr-int/lit8 v5, v2, 0x2

    const/4 v8, 0x3

    and-int/2addr v5, v8

    aput v5, v4, v6

    .line 351
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v4, v7, [I

    shr-int/lit8 v5, v2, 0x1

    and-int/2addr v5, v7

    aput v5, v4, v6

    .line 352
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x93

    new-array v4, v7, [I

    and-int/2addr v2, v7

    aput v2, v4, v6

    .line 353
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v7, [I

    const/4 v4, 0x5

    shr-int/2addr v1, v4

    const/4 v5, 0x3

    and-int/2addr v1, v5

    aput v1, v3, v6

    .line 354
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_29

    :cond_70
    add-int/lit8 v2, p2, 0x3

    .line 355
    aget-byte v1, v1, v2

    const/16 v2, 0x85

    new-array v3, v7, [I

    shr-int/2addr v1, v4

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 356
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_71
    :goto_29
    return-void

    :pswitch_data_0
    .packed-switch 0x1d
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

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/w6;->w:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/w6;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/w6;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/w6;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/w6;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x107

    if-ge p2, p3, :cond_2

    const/16 p3, 0x69

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x86

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/16 p3, 0xf

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lk0/w6;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lk0/w6;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x1e

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_25

    const/16 v3, 0x2c

    const/16 v6, 0xe3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v1, v3, :cond_24

    const/16 v3, 0x30

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/4 v14, 0x7

    const/16 v15, 0x8

    const/4 v11, 0x6

    if-eq v1, v3, :cond_23

    const/16 v3, 0x32

    if-eq v1, v3, :cond_22

    const/16 v3, 0x3ed

    if-eq v1, v3, :cond_1a

    const/16 v3, 0x405

    if-eq v1, v3, :cond_18

    const/16 v3, 0x28

    if-eq v1, v3, :cond_17

    const/16 v3, 0x29

    if-eq v1, v3, :cond_16

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v2, :cond_26

    .line 1
    array-length v1, v2

    if-lez v1, :cond_26

    const/16 v1, 0x22

    .line 2
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_1
    if-eqz v2, :cond_26

    .line 3
    array-length v1, v2

    if-lez v1, :cond_26

    .line 4
    aget v1, v2, v5

    const/16 v3, 0x41

    if-ne v1, v3, :cond_0

    new-array v1, v8, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v8, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v8, [I

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 8
    :cond_0
    aget v1, v2, v5

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_26

    new-array v1, v8, [I

    .line 9
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    :pswitch_2
    if-eqz v2, :cond_26

    .line 10
    array-length v1, v2

    if-lez v1, :cond_26

    const/16 v1, 0x23

    .line 11
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_3
    if-eqz v2, :cond_26

    .line 12
    array-length v1, v2

    if-lez v1, :cond_26

    .line 13
    aget v1, v2, v5

    if-eqz v1, :cond_1

    .line 14
    aput v4, v2, v5

    :cond_1
    const/16 v1, 0x13

    .line 15
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_4
    if-eqz v2, :cond_26

    .line 16
    array-length v1, v2

    if-lez v1, :cond_26

    .line 17
    aget v1, v2, v5

    if-eqz v1, :cond_2

    .line 18
    aput v4, v2, v5

    :cond_2
    const/16 v1, 0x12

    .line 19
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_5
    if-eqz v2, :cond_26

    .line 20
    array-length v1, v2

    if-lez v1, :cond_26

    .line 21
    aget v1, v2, v5

    if-eqz v1, :cond_3

    .line 22
    aput v4, v2, v5

    :cond_3
    const/16 v1, 0x11

    .line 23
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_6
    if-eqz v2, :cond_26

    .line 24
    array-length v1, v2

    if-lez v1, :cond_26

    .line 25
    aget v1, v2, v5

    if-eqz v1, :cond_4

    .line 26
    aput v4, v2, v5

    :cond_4
    const/16 v1, 0x10

    .line 27
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_7
    if-eqz v2, :cond_26

    .line 28
    array-length v1, v2

    if-lez v1, :cond_26

    .line 29
    aget v1, v2, v5

    const/16 v2, 0xf

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    goto/16 :goto_4

    .line 30
    :cond_5
    invoke-virtual {v0, v2, v4}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 31
    :cond_6
    invoke-virtual {v0, v2, v5}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_8
    if-eqz v2, :cond_26

    .line 32
    array-length v1, v2

    if-lez v1, :cond_26

    .line 33
    aget v1, v2, v5

    if-eqz v1, :cond_7

    .line 34
    aput v4, v2, v5

    :cond_7
    const/16 v1, 0xe

    .line 35
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_9
    if-eqz v2, :cond_26

    .line 36
    array-length v1, v2

    if-lez v1, :cond_26

    .line 37
    aget v1, v2, v5

    if-eqz v1, :cond_8

    .line 38
    aput v4, v2, v5

    :cond_8
    const/16 v1, 0xd

    .line 39
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_a
    if-eqz v2, :cond_26

    .line 40
    array-length v1, v2

    if-lez v1, :cond_26

    .line 41
    aget v1, v2, v5

    if-gez v1, :cond_9

    .line 42
    aput v5, v2, v5

    goto :goto_0

    .line 43
    :cond_9
    aget v1, v2, v5

    if-le v1, v9, :cond_a

    .line 44
    aput v9, v2, v5

    :cond_a
    :goto_0
    const/16 v1, 0xc

    .line 45
    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 46
    :pswitch_b
    invoke-virtual {v0, v12, v5}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 47
    :pswitch_c
    invoke-virtual {v0, v13, v5}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 48
    :pswitch_d
    invoke-virtual {v0, v15, v5}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_e
    if-eqz v2, :cond_26

    .line 49
    array-length v1, v2

    if-lez v1, :cond_26

    .line 50
    aget v1, v2, v5

    if-gez v1, :cond_b

    .line 51
    aput v5, v2, v5

    goto :goto_1

    .line 52
    :cond_b
    aget v1, v2, v5

    if-le v1, v9, :cond_c

    .line 53
    aput v9, v2, v5

    .line 54
    :cond_c
    :goto_1
    aget v1, v2, v5

    invoke-virtual {v0, v14, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_f
    if-eqz v2, :cond_26

    .line 55
    array-length v1, v2

    if-lez v1, :cond_26

    .line 56
    aget v1, v2, v5

    if-gez v1, :cond_d

    .line 57
    aput v5, v2, v5

    goto :goto_2

    .line 58
    :cond_d
    aget v1, v2, v5

    if-le v1, v11, :cond_e

    .line 59
    aput v11, v2, v5

    .line 60
    :cond_e
    :goto_2
    aget v1, v2, v5

    invoke-virtual {v0, v8, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_10
    if-eqz v2, :cond_26

    .line 61
    array-length v1, v2

    if-lez v1, :cond_26

    .line 62
    aget v1, v2, v5

    if-eqz v1, :cond_f

    .line 63
    aput v4, v2, v5

    .line 64
    :cond_f
    aget v1, v2, v5

    invoke-virtual {v0, v7, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_11
    if-eqz v2, :cond_26

    .line 65
    array-length v1, v2

    if-lez v1, :cond_26

    .line 66
    aget v1, v2, v5

    if-eqz v1, :cond_10

    .line 67
    aput v4, v2, v5

    .line 68
    :cond_10
    aget v1, v2, v5

    invoke-virtual {v0, v9, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_12
    if-eqz v2, :cond_26

    .line 69
    array-length v1, v2

    if-lez v1, :cond_26

    .line 70
    aget v1, v2, v5

    if-eqz v1, :cond_11

    .line 71
    aput v4, v2, v5

    .line 72
    :cond_11
    aget v1, v2, v5

    invoke-virtual {v0, v10, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_13
    if-eqz v2, :cond_26

    .line 73
    array-length v1, v2

    if-lez v1, :cond_26

    .line 74
    aget v1, v2, v5

    if-eqz v1, :cond_12

    .line 75
    aput v4, v2, v5

    .line 76
    :cond_12
    aget v1, v2, v5

    invoke-virtual {v0, v4, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_14
    if-eqz v2, :cond_26

    .line 77
    array-length v1, v2

    if-lez v1, :cond_26

    .line 78
    aget v1, v2, v5

    if-eqz v1, :cond_13

    .line 79
    aput v4, v2, v5

    .line 80
    :cond_13
    aget v1, v2, v5

    invoke-virtual {v0, v5, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    :pswitch_15
    if-eqz v2, :cond_26

    .line 81
    array-length v1, v2

    if-lez v1, :cond_26

    .line 82
    aget v1, v2, v5

    if-gez v1, :cond_14

    .line 83
    aput v5, v2, v5

    goto :goto_3

    .line 84
    :cond_14
    aget v1, v2, v5

    if-le v1, v7, :cond_15

    .line 85
    aput v7, v2, v5

    .line 86
    :cond_15
    :goto_3
    aget v1, v2, v5

    invoke-virtual {v0, v11, v1}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 87
    :cond_16
    invoke-virtual {v0, v2, v8}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_26

    new-array v1, v13, [I

    aput v6, v1, v5

    const/16 v3, 0xc7

    aput v3, v1, v4

    aput v11, v1, v10

    .line 88
    aget v3, v2, v5

    aput v3, v1, v9

    aget v3, v2, v4

    aput v3, v1, v7

    aget v3, v2, v10

    aput v3, v1, v8

    aget v3, v2, v9

    aput v3, v1, v11

    aget v3, v2, v7

    aput v3, v1, v14

    aget v2, v2, v8

    aput v2, v1, v15

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 89
    :cond_17
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_26

    new-array v1, v8, [I

    aput v6, v1, v5

    const/16 v3, -0x7d

    aput v3, v1, v4

    aput v10, v1, v10

    .line 90
    aget v3, v2, v5

    aput v3, v1, v9

    aget v2, v2, v4

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 91
    :cond_18
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 92
    aget v1, v2, v4

    mul-int/lit16 v1, v1, 0x3ff

    invoke-static {}, La/f;->w()I

    move-result v3

    div-int/2addr v1, v3

    .line 93
    aget v3, v2, v10

    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v12

    div-int/2addr v3, v12

    .line 94
    aget v12, v2, v5

    const/16 v16, 0x98

    if-nez v12, :cond_19

    new-array v2, v13, [I

    aput v6, v2, v5

    aput v16, v2, v4

    aput v11, v2, v10

    aput v4, v2, v9

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v7

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v8

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v11

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v14

    aput v5, v2, v15

    .line 95
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 96
    :cond_19
    aget v2, v2, v5

    if-ne v2, v4, :cond_26

    new-array v2, v13, [I

    aput v6, v2, v5

    aput v16, v2, v4

    aput v11, v2, v10

    aput v5, v2, v9

    shr-int/lit8 v4, v1, 0x8

    aput v4, v2, v7

    and-int/lit16 v1, v1, 0xff

    aput v1, v2, v8

    shr-int/lit8 v1, v3, 0x8

    aput v1, v2, v11

    and-int/lit16 v1, v3, 0xff

    aput v1, v2, v14

    aput v5, v2, v15

    .line 97
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_4

    .line 98
    :cond_1a
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C_CAMERA_MODE = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "=========== "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 99
    aget v1, v2, v4

    if-nez v1, :cond_1b

    goto/16 :goto_4

    .line 100
    :cond_1b
    array-length v1, v2

    if-lez v1, :cond_26

    .line 101
    sget v1, Lk0/w6;->z:I

    const/16 v3, 0x21

    if-eqz v1, :cond_1f

    .line 102
    aget v1, v2, v5

    if-nez v1, :cond_1c

    .line 103
    invoke-virtual {v0, v3, v10}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 104
    :cond_1c
    aget v1, v2, v5

    if-ne v1, v10, :cond_1d

    .line 105
    invoke-virtual {v0, v3, v4}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 106
    :cond_1d
    aget v1, v2, v5

    if-ne v1, v9, :cond_1e

    .line 107
    invoke-virtual {v0, v3, v9}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 108
    :cond_1e
    aget v1, v2, v5

    if-ne v1, v7, :cond_26

    .line 109
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_4

    .line 110
    :cond_1f
    aget v1, v2, v5

    if-nez v1, :cond_20

    .line 111
    invoke-virtual {v0, v3, v7}, Lk0/w6;->o3(II)V

    goto/16 :goto_4

    .line 112
    :cond_20
    aget v1, v2, v5

    if-ne v1, v10, :cond_21

    .line 113
    invoke-virtual {v0, v3, v14}, Lk0/w6;->o3(II)V

    goto :goto_4

    .line 114
    :cond_21
    aget v1, v2, v5

    if-ne v1, v9, :cond_26

    .line 115
    invoke-virtual {v0, v3, v9}, Lk0/w6;->o3(II)V

    goto :goto_4

    .line 116
    :cond_22
    invoke-virtual {v0, v2, v4}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 117
    aget v1, v2, v5

    invoke-virtual {v0, v1}, Lk0/w6;->p3(I)V

    goto :goto_4

    .line 118
    :cond_23
    invoke-virtual {v0, v2, v14}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_26

    new-array v1, v12, [I

    aput v6, v1, v5

    const/16 v3, 0xc7

    aput v3, v1, v4

    aput v14, v1, v10

    .line 119
    aget v3, v2, v5

    aput v3, v1, v9

    aget v3, v2, v4

    aput v3, v1, v7

    aget v3, v2, v10

    aput v3, v1, v8

    aget v3, v2, v9

    aput v3, v1, v11

    aget v3, v2, v7

    aput v3, v1, v14

    aget v3, v2, v8

    aput v3, v1, v15

    aget v2, v2, v11

    aput v2, v1, v13

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    .line 120
    :cond_24
    invoke-virtual {v0, v2, v10}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_26

    new-array v1, v8, [I

    aput v6, v1, v5

    const/16 v3, 0x84

    aput v3, v1, v4

    aput v10, v1, v10

    .line 121
    aget v3, v2, v5

    aput v3, v1, v9

    aget v2, v2, v4

    aput v2, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_4

    :cond_25
    if-eqz v2, :cond_26

    .line 122
    array-length v1, v2

    if-lez v1, :cond_26

    .line 123
    aget v1, v2, v5

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lk0/w6;->o3(II)V

    :cond_26
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public final a3(II)V
    .locals 13

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, -0x39

    const/4 v8, 0x1

    const/16 v9, 0xe3

    const/16 v10, 0xa

    const/4 v11, 0x7

    const/4 v12, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p2, v10, [I

    aput v9, p2, v12

    aput v7, p2, v8

    aput v11, p2, v6

    aput v12, p2, v5

    aput v12, p2, v4

    aput v12, p2, v3

    aput v12, p2, v2

    aput v12, p2, v11

    aput v12, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array p2, v10, [I

    aput v9, p2, v12

    aput v7, p2, v8

    aput v11, p2, v6

    aput v12, p2, v5

    aput v12, p2, v4

    aput v12, p2, v3

    aput v12, p2, v2

    aput v12, p2, v11

    aput p1, p2, v1

    aput v12, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p2, v10, [I

    aput v9, p2, v12

    aput v7, p2, v8

    aput v11, p2, v6

    aput v12, p2, v5

    aput v12, p2, v4

    aput v12, p2, v3

    aput v12, p2, v2

    aput p1, p2, v11

    aput v12, p2, v1

    aput v12, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p2, v10, [I

    aput v9, p2, v12

    aput v7, p2, v8

    aput v11, p2, v6

    aput v12, p2, v5

    aput v12, p2, v4

    aput v12, p2, v3

    aput p1, p2, v2

    aput v12, p2, v11

    aput v12, p2, v1

    aput v12, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p2, v10, [I

    aput v9, p2, v12

    aput v7, p2, v8

    aput v11, p2, v6

    aput v12, p2, v5

    aput v12, p2, v4

    aput p1, p2, v3

    aput v12, p2, v2

    aput v12, p2, v11

    aput v12, p2, v1

    aput v12, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p2, v10, [I

    aput v9, p2, v12

    aput v7, p2, v8

    aput v11, p2, v6

    aput v12, p2, v5

    aput p1, p2, v4

    aput v12, p2, v3

    aput v12, p2, v2

    aput v12, p2, v11

    aput v12, p2, v1

    aput v12, p2, v0

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p2, v10, [I

    aput v9, p2, v12

    aput v7, p2, v8

    aput v11, p2, v6

    aput p1, p2, v5

    aput v12, p2, v4

    aput v12, p2, v3

    aput v12, p2, v2

    aput v12, p2, v11

    aput v12, p2, v1

    aput v12, p2, v0

    .line 7
    invoke-static {p2}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x32

    .line 8
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v10, [I

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

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
        0x7
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final m3()V
    .locals 3

    const-string v0, "com.syu.carinfo.camry2012.xp.ToyotaLexusActivityCarCD"

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

.method public final n3()V
    .locals 3

    const-string v0, "com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi"

    const/4 v1, 0x4

    .line 1
    :try_start_0
    iput v1, p0, Lk0/w6;->m:I

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lk0/w6;->n:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.canbus"

    .line 5
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final o3(II)V
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

.method public final p3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/w6;->A:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0xef

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/w6;->w:Lo1/g0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/w6;->A:I

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lk0/w6;->w:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
