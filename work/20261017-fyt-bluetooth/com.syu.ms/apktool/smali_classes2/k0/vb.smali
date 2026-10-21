.class public Lk0/vb;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:[[I

.field public i:I

.field public j:I

.field public k:I

.field public l:[[I

.field public m:Z

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public final t:I

.field public final u:I

.field public v:Lo1/g0;

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/Runnable;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lk0/lt;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lk0/vb;->b:I

    .line 3
    iput-boolean v1, v0, Lk0/vb;->d:Z

    .line 4
    iput v1, v0, Lk0/vb;->e:I

    .line 5
    iput v1, v0, Lk0/vb;->g:I

    const/16 v2, 0x16

    new-array v3, v2, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 6
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

    new-array v5, v4, [I

    fill-array-data v5, :array_10

    const/16 v20, 0x10

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_11

    const/16 v21, 0x11

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_12

    const/16 v22, 0x12

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_13

    const/16 v23, 0x13

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_14

    const/16 v24, 0x14

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_15

    const/16 v25, 0x15

    aput-object v5, v3, v25

    iput-object v3, v0, Lk0/vb;->h:[[I

    .line 7
    iput v1, v0, Lk0/vb;->j:I

    .line 8
    iput v1, v0, Lk0/vb;->k:I

    const/16 v3, 0x25

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 9
    fill-array-data v5, :array_16

    aput-object v5, v3, v1

    new-array v5, v4, [I

    fill-array-data v5, :array_17

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_19

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_1a

    aput-object v5, v3, v8

    new-array v5, v4, [I

    fill-array-data v5, :array_1b

    aput-object v5, v3, v9

    new-array v5, v4, [I

    fill-array-data v5, :array_1c

    aput-object v5, v3, v10

    new-array v5, v4, [I

    fill-array-data v5, :array_1d

    aput-object v5, v3, v11

    new-array v5, v4, [I

    fill-array-data v5, :array_1e

    aput-object v5, v3, v12

    new-array v5, v4, [I

    fill-array-data v5, :array_1f

    aput-object v5, v3, v13

    new-array v5, v4, [I

    fill-array-data v5, :array_20

    aput-object v5, v3, v14

    new-array v5, v4, [I

    fill-array-data v5, :array_21

    aput-object v5, v3, v15

    new-array v5, v4, [I

    fill-array-data v5, :array_22

    aput-object v5, v3, v16

    new-array v5, v4, [I

    fill-array-data v5, :array_23

    aput-object v5, v3, v17

    new-array v5, v4, [I

    fill-array-data v5, :array_24

    aput-object v5, v3, v18

    new-array v5, v4, [I

    fill-array-data v5, :array_25

    aput-object v5, v3, v19

    new-array v5, v4, [I

    fill-array-data v5, :array_26

    aput-object v5, v3, v20

    new-array v5, v4, [I

    fill-array-data v5, :array_27

    aput-object v5, v3, v21

    new-array v5, v4, [I

    fill-array-data v5, :array_28

    aput-object v5, v3, v22

    new-array v5, v4, [I

    fill-array-data v5, :array_29

    aput-object v5, v3, v23

    new-array v5, v4, [I

    fill-array-data v5, :array_2a

    aput-object v5, v3, v24

    new-array v5, v4, [I

    fill-array-data v5, :array_2b

    const/16 v7, 0x15

    aput-object v5, v3, v7

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    aput-object v5, v3, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v5, 0x17

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2e

    const/16 v5, 0x18

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2f

    const/16 v5, 0x19

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_30

    const/16 v5, 0x1a

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_31

    const/16 v5, 0x1b

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_32

    const/16 v5, 0x1c

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_33

    const/16 v5, 0x1d

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_34

    const/16 v5, 0x1e

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_35

    const/16 v5, 0x1f

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_36

    const/16 v5, 0x20

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_37

    const/16 v5, 0x21

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_38

    const/16 v5, 0x22

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_39

    const/16 v5, 0x23

    aput-object v2, v3, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_3a

    const/16 v5, 0x24

    aput-object v2, v3, v5

    iput-object v3, v0, Lk0/vb;->l:[[I

    .line 10
    iput-boolean v1, v0, Lk0/vb;->m:Z

    .line 11
    iput v9, v0, Lk0/vb;->n:I

    .line 12
    new-instance v2, Lk0/vb$a;

    invoke-direct {v2, v0}, Lk0/vb$a;-><init>(Lk0/vb;)V

    iput-object v2, v0, Lk0/vb;->o:Ljava/lang/Runnable;

    .line 13
    new-instance v2, Lk0/vb$b;

    invoke-direct {v2, v0}, Lk0/vb$b;-><init>(Lk0/vb;)V

    iput-object v2, v0, Lk0/vb;->p:Ljava/lang/Runnable;

    .line 14
    iput v1, v0, Lk0/vb;->q:I

    .line 15
    new-instance v2, Lk0/vb$c;

    invoke-direct {v2, v0}, Lk0/vb$c;-><init>(Lk0/vb;)V

    iput-object v2, v0, Lk0/vb;->r:Ljava/lang/Runnable;

    .line 16
    new-instance v2, Lk0/vb$d;

    invoke-direct {v2, v0}, Lk0/vb$d;-><init>(Lk0/vb;)V

    iput-object v2, v0, Lk0/vb;->s:Ljava/lang/Runnable;

    .line 17
    iput v6, v0, Lk0/vb;->t:I

    .line 18
    iput v4, v0, Lk0/vb;->u:I

    .line 19
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/vb;->v:Lo1/g0;

    .line 20
    new-instance v2, Lk0/vb$e;

    invoke-direct {v2, v0}, Lk0/vb$e;-><init>(Lk0/vb;)V

    iput-object v2, v0, Lk0/vb;->w:Ljava/lang/Runnable;

    .line 21
    iput v1, v0, Lk0/vb;->x:I

    .line 22
    new-instance v2, Lk0/vb$f;

    invoke-direct {v2, v0}, Lk0/vb$f;-><init>(Lk0/vb;)V

    iput-object v2, v0, Lk0/vb;->y:Ljava/lang/Runnable;

    .line 23
    iput v1, v0, Lk0/vb;->z:I

    .line 24
    new-instance v1, Lk0/vb$g;

    invoke-direct {v1, v0}, Lk0/vb$g;-><init>(Lk0/vb;)V

    iput-object v1, v0, Lk0/vb;->A:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Lk0/vb$h;

    invoke-direct {v1, v0}, Lk0/vb$h;-><init>(Lk0/vb;)V

    iput-object v1, v0, Lk0/vb;->B:Ljava/lang/Runnable;

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
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x7
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x61
        0x7
    .end array-data

    :array_7
    .array-data 4
        0x62
        0x8
    .end array-data

    :array_8
    .array-data 4
        0x81
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x86
        0x6
    .end array-data

    :array_a
    .array-data 4
        0x94
        0xd
    .end array-data

    :array_b
    .array-data 4
        0x87
        0x18
    .end array-data

    :array_c
    .array-data 4
        0x9b
        0x12
    .end array-data

    :array_d
    .array-data 4
        0xd0
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x97
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x98
        0x8
    .end array-data

    :array_10
    .array-data 4
        0x99
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x9a
        0x3
    .end array-data

    :array_12
    .array-data 4
        0x88
        0x1d
    .end array-data

    :array_13
    .array-data 4
        0x82
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x83
        0x4
    .end array-data

    :array_15
    .array-data 4
        0xe1
        0x36
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_17
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_19
    .array-data 4
        0x4
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0x5
        0x26
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0x7
        0x15
    .end array-data

    :array_1d
    .array-data 4
        0x8
        0x16
    .end array-data

    :array_1e
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_1f
    .array-data 4
        0xa
        0x28
    .end array-data

    :array_20
    .array-data 4
        0xb
        0x29
    .end array-data

    :array_21
    .array-data 4
        0xc
        0x2a
    .end array-data

    :array_22
    .array-data 4
        0xd
        0x2b
    .end array-data

    :array_23
    .array-data 4
        0xe
        0x2c
    .end array-data

    :array_24
    .array-data 4
        0xf
        0x2d
    .end array-data

    :array_25
    .array-data 4
        0x10
        0x1
    .end array-data

    :array_26
    .array-data 4
        0x11
        0xb
    .end array-data

    :array_27
    .array-data 4
        0x12
        0x3a
    .end array-data

    :array_28
    .array-data 4
        0x13
        0x38
    .end array-data

    :array_29
    .array-data 4
        0x14
        0x36
    .end array-data

    :array_2a
    .array-data 4
        0x15
        0xf
    .end array-data

    :array_2b
    .array-data 4
        0x16
        0x1d
    .end array-data

    :array_2c
    .array-data 4
        0x17
        0x7
    .end array-data

    :array_2d
    .array-data 4
        0x18
        0x8
    .end array-data

    :array_2e
    .array-data 4
        0x19
        0x1e
    .end array-data

    :array_2f
    .array-data 4
        0x1a
        0x1f
    .end array-data

    :array_30
    .array-data 4
        0x1b
        0x10
    .end array-data

    :array_31
    .array-data 4
        0x1c
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x1d
        0x23
    .end array-data

    :array_33
    .array-data 4
        0x34
        0x1f
    .end array-data

    :array_34
    .array-data 4
        0x35
        0x1e
    .end array-data

    :array_35
    .array-data 4
        0x40
        0x35
    .end array-data

    :array_36
    .array-data 4
        0x50
        0x5
    .end array-data

    :array_37
    .array-data 4
        0x51
        0x2
    .end array-data

    :array_38
    .array-data 4
        0x52
        0x10
    .end array-data

    :array_39
    .array-data 4
        0x53
        0x5
    .end array-data

    :array_3a
    .array-data 4
        0x54
        0x36
    .end array-data
.end method

.method public static synthetic e3(Lk0/vb;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lk0/vb;->d:Z

    return p1
.end method

.method public static synthetic f3(Lk0/vb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/vb;->b3()V

    return-void
.end method

.method public static synthetic g3(Lk0/vb;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/vb;->d3()V

    return-void
.end method

.method public static synthetic h3(Lk0/vb;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/vb;->v:Lo1/g0;

    return-object p0
.end method

.method public static synthetic i3(Lk0/vb;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vb;->n3(I)V

    return-void
.end method

.method public static synthetic j3(Lk0/vb;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/vb;->m3(I)V

    return-void
.end method

.method public static synthetic k3(Lk0/vb;IB[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/vb;->q3(IB[I)V

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

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    .line 2
    sput v0, Ly0/f;->C0:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x1b

    .line 3
    sput v0, Ly0/f;->C0:I

    :goto_1
    return-void
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_b

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v1, 0xc

    const/16 v2, 0xd

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    if-eqz p1, :cond_1

    const/16 p1, 0xe

    .line 4
    invoke-virtual {p0, p1}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xf

    .line 5
    invoke-virtual {p0, p1}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v2}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x6

    .line 10
    invoke-virtual {p0, p1}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x7

    .line 11
    invoke-virtual {p0, p1}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget p1, p1, v3

    const/4 v0, 0x3

    if-eqz p1, :cond_5

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 14
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 15
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 16
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    aget p1, p1, v3

    const/4 v0, 0x5

    const/16 v1, 0x10

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 19
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 20
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 21
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_6
    aget p1, p1, v3

    const/4 v0, 0x4

    const/16 v1, 0x41

    if-eqz p1, :cond_7

    .line 23
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 24
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto :goto_0

    .line 25
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 26
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto :goto_0

    .line 27
    :pswitch_7
    aget p1, p1, v3

    if-eqz p1, :cond_8

    .line 28
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_b

    .line 29
    invoke-virtual {p0, v3}, Lk0/vb;->a3(I)V

    goto :goto_0

    .line 30
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_b

    .line 31
    invoke-virtual {p0, v3}, Lk0/vb;->a3(I)V

    goto :goto_0

    .line 32
    :pswitch_8
    aget p1, p1, v3

    const/16 v0, 0x8

    const/16 v1, 0xb

    if-eqz p1, :cond_9

    .line 33
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_b

    .line 34
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto :goto_0

    .line 35
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v3, :cond_b

    .line 36
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    goto :goto_0

    .line 37
    :pswitch_9
    aget p1, p1, v3

    const/16 v0, 0xa

    if-eqz p1, :cond_a

    .line 38
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_b

    .line 39
    invoke-virtual {p0, v3}, Lk0/vb;->a3(I)V

    goto :goto_0

    .line 40
    :cond_a
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_b

    .line 41
    invoke-virtual {p0, v0}, Lk0/vb;->a3(I)V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/vb;->v:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vb;->r:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iget-object v0, p0, Lk0/vb;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/vb;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/vb;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/vb;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v1, p0, Lk0/vb;->w:Ljava/lang/Runnable;

    invoke-static {v1}, Lk0/qt;->x(Ljava/lang/Runnable;)V

    .line 8
    sput-boolean v2, Lu0/b;->Y3:Z

    .line 9
    sget v1, Lk0/nt;->c:I

    const-string v3, "com.syu.canbus"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v2, v0, Lk0/mt;->e:I

    .line 12
    iput v2, v0, Lk0/mt;->g:I

    .line 13
    iput v4, v0, Lk0/mt;->l:I

    .line 14
    iput v4, v0, Lk0/mt;->i:I

    .line 15
    iput v4, v0, Lk0/mt;->o:I

    goto :goto_0

    .line 16
    :pswitch_1
    sget-object v1, Ly0/g;->t:Lo1/y;

    iget-object v5, p0, Lk0/vb;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 18
    iput v2, v1, Lk0/mt;->e:I

    .line 19
    iput v2, v1, Lk0/mt;->g:I

    .line 20
    iput v2, v1, Lk0/mt;->l:I

    .line 21
    iput v4, v1, Lk0/mt;->i:I

    .line 22
    iput v4, v1, Lk0/mt;->o:I

    .line 23
    iget-object v1, p0, Lk0/vb;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v1, Ly0/g;->t:Lo1/y;

    iget-object v5, p0, Lk0/vb;->B:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 25
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 26
    iput v2, v1, Lk0/mt;->e:I

    .line 27
    iput v2, v1, Lk0/mt;->g:I

    .line 28
    iput v2, v1, Lk0/mt;->l:I

    .line 29
    iput v4, v1, Lk0/mt;->i:I

    .line 30
    iput v4, v1, Lk0/mt;->o:I

    .line 31
    iget-object v1, p0, Lk0/vb;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 32
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->q:I

    const/16 v1, 0x9

    new-array v1, v1, [I

    .line 33
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 34
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_0

    .line 35
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 36
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v2, v0, Lk0/mt;->i:I

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v4, v0, Lk0/mt;->i:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
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
    .end array-data
.end method

.method public U2([BII)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x26

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v3, :cond_41

    const/16 v3, 0x7a

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v3, :cond_40

    const/16 v3, 0x30

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x31

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/4 v10, 0x5

    if-eq v2, v3, :cond_3a

    const/16 v3, 0xc

    const/16 v11, 0xf

    const/16 v12, 0x12

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/16 v15, 0xff

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1a

    :pswitch_0
    const-string v2, "persist.syu.reversefrontdoor"

    .line 2
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 3
    aget-byte v11, v1, v3

    shr-int/2addr v11, v9

    and-int/2addr v11, v7

    aput v11, v2, v5

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 4
    aget-byte v3, v1, v3

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 5
    aget-byte v11, v1, v3

    shr-int/lit8 v8, v11, 0x6

    and-int/2addr v8, v7

    aput v8, v2, v5

    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 6
    aget-byte v3, v1, v3

    shr-int/2addr v3, v9

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 7
    aget-byte v6, v1, v3

    shr-int/2addr v6, v10

    and-int/2addr v6, v7

    aput v6, v2, v5

    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 8
    aget-byte v6, v1, v3

    shr-int/2addr v6, v14

    and-int/2addr v6, v7

    aput v6, v2, v5

    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    .line 9
    aget-byte v3, v1, v3

    shr-int/2addr v3, v4

    and-int/2addr v3, v7

    aput v3, v2, v5

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 10
    aget-byte v4, v1, v3

    shr-int/2addr v4, v9

    and-int/2addr v4, v7

    aput v4, v2, v5

    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    .line 11
    aget-byte v1, v1, v3

    and-int/2addr v1, v7

    .line 12
    sget v2, Lu0/b;->r0:I

    if-nez v2, :cond_42

    .line 13
    sget v2, Lk0/vb;->D:I

    if-eq v2, v1, :cond_42

    .line 14
    sput v1, Lk0/vb;->D:I

    if-ne v1, v7, :cond_1

    .line 15
    iput v10, v0, Lk0/vb;->n:I

    .line 16
    iget-object v1, v0, Lk0/vb;->o:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1a

    :cond_1
    if-nez v1, :cond_42

    .line 17
    iput v5, v0, Lk0/vb;->n:I

    .line 18
    iget-object v1, v0, Lk0/vb;->o:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 19
    iget-boolean v1, v0, Lk0/vb;->d:Z

    if-eqz v1, :cond_42

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 20
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_1a

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 21
    aget-byte v2, v1, v2

    and-int/2addr v2, v15

    add-int/lit8 v3, p2, 0x3

    .line 22
    aget-byte v3, v1, v3

    and-int/2addr v3, v15

    add-int/lit8 v4, p2, 0x4

    .line 23
    aget-byte v4, v1, v4

    and-int/2addr v4, v15

    add-int/lit8 v6, p2, 0x5

    .line 24
    aget-byte v1, v1, v6

    and-int/2addr v1, v15

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    sput v5, Lk0/vb;->G:I

    goto :goto_2

    .line 26
    :cond_3
    :goto_1
    sput v7, Lk0/vb;->G:I

    .line 27
    :goto_2
    sget v6, Lk0/vb;->J:I

    if-ne v6, v7, :cond_6

    .line 28
    sget v5, Lk0/vb;->H:I

    if-eq v5, v7, :cond_5

    sget v6, Lk0/vb;->G:I

    if-ne v6, v7, :cond_4

    goto :goto_3

    :cond_4
    if-nez v5, :cond_a

    if-nez v6, :cond_a

    .line 29
    sget v5, Lk0/vb;->D:I

    if-nez v5, :cond_a

    .line 30
    iget-boolean v5, v0, Lk0/vb;->d:Z

    if-eqz v5, :cond_a

    invoke-static {}, Lo1/u;->a0()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 31
    invoke-static {}, Lo1/u;->k()V

    goto :goto_5

    .line 32
    :cond_5
    :goto_3
    invoke-static {}, Lo1/u;->a0()Z

    move-result v5

    if-nez v5, :cond_a

    .line 33
    iput-boolean v7, v0, Lk0/vb;->d:Z

    .line 34
    invoke-static {}, Lo1/u;->z()I

    goto :goto_5

    :cond_6
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    .line 35
    invoke-static {v5}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 36
    :cond_7
    sget v5, Ll0/c0;->g:I

    if-ne v5, v2, :cond_8

    sget v5, Ll0/c0;->h:I

    if-ne v5, v3, :cond_8

    sget v5, Ll0/c0;->i:I

    if-ne v5, v4, :cond_8

    sget v5, Ll0/c0;->j:I

    if-eq v5, v1, :cond_9

    .line 37
    :cond_8
    sget v5, Lu0/b;->o:I

    if-nez v5, :cond_9

    .line 38
    invoke-static {v7}, Lu0/d;->C2(I)V

    .line 39
    sput v14, Ll0/c0;->k:I

    .line 40
    sget-object v5, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v5}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 41
    :cond_9
    :goto_4
    sput v2, Ll0/c0;->g:I

    .line 42
    sput v3, Ll0/c0;->h:I

    .line 43
    sput v4, Ll0/c0;->i:I

    .line 44
    sput v1, Ll0/c0;->j:I

    :cond_a
    :goto_5
    and-int/2addr v2, v15

    .line 45
    invoke-virtual {v0, v2}, Lk0/vb;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    and-int/lit16 v2, v3, 0xff

    .line 46
    invoke-virtual {v0, v2}, Lk0/vb;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    and-int/lit16 v2, v4, 0xff

    .line 47
    invoke-virtual {v0, v2}, Lk0/vb;->c3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    and-int/2addr v1, v15

    .line 48
    invoke-virtual {v0, v1}, Lk0/vb;->c3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_1a

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 49
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 50
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 51
    aget-byte v4, v1, v4

    add-int/lit8 v6, p2, 0x5

    .line 52
    aget-byte v1, v1, v6

    and-int/lit16 v6, v2, 0xff

    .line 53
    invoke-virtual {v0, v6}, Lk0/vb;->c3(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->R2(I)V

    and-int/lit16 v6, v3, 0xff

    .line 54
    invoke-virtual {v0, v6}, Lk0/vb;->c3(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->S2(I)V

    and-int/lit16 v6, v4, 0xff

    .line 55
    invoke-virtual {v0, v6}, Lk0/vb;->c3(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->T2(I)V

    and-int/lit16 v6, v1, 0xff

    .line 56
    invoke-virtual {v0, v6}, Lk0/vb;->c3(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->U2(I)V

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    if-nez v4, :cond_c

    if-eqz v1, :cond_b

    goto :goto_6

    .line 57
    :cond_b
    sput v5, Lk0/vb;->H:I

    goto :goto_7

    .line 58
    :cond_c
    :goto_6
    sput v7, Lk0/vb;->H:I

    .line 59
    :goto_7
    sget v1, Lk0/vb;->J:I

    if-ne v1, v7, :cond_42

    .line 60
    sget v1, Lk0/vb;->H:I

    if-eq v1, v7, :cond_e

    sget v2, Lk0/vb;->G:I

    if-ne v2, v7, :cond_d

    goto :goto_8

    :cond_d
    if-nez v1, :cond_42

    if-nez v2, :cond_42

    .line 61
    sget v1, Lk0/vb;->D:I

    if-nez v1, :cond_42

    .line 62
    iget-boolean v1, v0, Lk0/vb;->d:Z

    if-eqz v1, :cond_42

    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 63
    invoke-static {}, Lo1/u;->k()V

    goto/16 :goto_1a

    .line 64
    :cond_e
    :goto_8
    invoke-static {}, Lo1/u;->a0()Z

    move-result v1

    if-nez v1, :cond_42

    .line 65
    iput-boolean v7, v0, Lk0/vb;->d:Z

    .line 66
    invoke-static {}, Lo1/u;->z()I

    goto/16 :goto_1a

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 67
    aget-byte v1, v1, v2

    const/16 v2, 0x87

    new-array v3, v7, [I

    and-int/2addr v1, v15

    aput v1, v3, v5

    .line 68
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 69
    aget-byte v1, v1, v2

    const/16 v2, 0x86

    new-array v3, v7, [I

    and-int/2addr v1, v15

    aput v1, v3, v5

    .line 70
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 72
    aget-byte v1, v1, v3

    const/16 v3, 0x85

    new-array v4, v7, [I

    and-int/2addr v2, v15

    shl-int/2addr v2, v13

    and-int/2addr v1, v15

    or-int/2addr v1, v2

    .line 73
    div-int/lit8 v1, v1, 0x10

    aput v1, v4, v5

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 74
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 75
    aget-byte v1, v1, v3

    const/16 v3, 0x78

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x7

    and-int/2addr v9, v7

    aput v9, v8, v5

    .line 76
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x79

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x6

    and-int/2addr v9, v7

    aput v9, v8, v5

    .line 77
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7a

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x5

    and-int/2addr v9, v7

    aput v9, v8, v5

    .line 78
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7b

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v7

    aput v9, v8, v5

    .line 79
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7c

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x3

    and-int/2addr v9, v7

    aput v9, v8, v5

    .line 80
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7d

    new-array v8, v7, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v7

    aput v9, v8, v5

    .line 81
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7e

    new-array v8, v7, [I

    and-int/2addr v2, v4

    aput v2, v8, v5

    .line 82
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v7

    aput v4, v3, v5

    .line 83
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v5

    const/16 v3, 0x80

    .line 84
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v7

    aput v4, v3, v5

    .line 85
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v5

    .line 86
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v5

    .line 87
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v5

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    .line 89
    :pswitch_7
    sget v2, Lk0/nt;->c:I

    if-ne v2, v11, :cond_42

    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lk0/vb;->p3(I)V

    goto/16 :goto_1a

    :pswitch_8
    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Lk0/vb;->o3([BII)V

    goto/16 :goto_1a

    :pswitch_9
    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 93
    aget-byte v1, v1, v3

    const/16 v3, 0x6b

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x7

    and-int/2addr v8, v7

    aput v8, v6, v5

    .line 94
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x5

    and-int/2addr v8, v4

    aput v8, v6, v5

    .line 95
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v7

    aput v8, v6, v5

    .line 96
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v7

    aput v8, v6, v5

    .line 97
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v4

    aput v8, v6, v5

    .line 98
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x70

    new-array v6, v7, [I

    and-int/2addr v2, v7

    aput v2, v6, v5

    .line 99
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v7, [I

    shr-int/lit8 v6, v1, 0x7

    and-int/2addr v6, v7

    aput v6, v3, v5

    .line 100
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v7, [I

    shr-int/lit8 v6, v1, 0x5

    and-int/2addr v4, v6

    aput v4, v3, v5

    .line 101
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v7

    aput v4, v3, v5

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v5

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v7, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v3, v5

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 106
    aget-byte v1, v1, v3

    const/16 v3, 0x64

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x6

    and-int/2addr v8, v4

    aput v8, v6, v5

    .line 107
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x4

    and-int/2addr v8, v4

    aput v8, v6, v5

    .line 108
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v4

    aput v8, v6, v5

    .line 109
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x67

    new-array v6, v7, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v7

    aput v8, v6, v5

    .line 110
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x68

    new-array v6, v7, [I

    and-int/2addr v2, v7

    aput v2, v6, v5

    .line 111
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v7, [I

    shr-int/lit8 v6, v1, 0x3

    and-int/2addr v6, v7

    aput v6, v3, v5

    .line 112
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v7, [I

    and-int/2addr v1, v4

    aput v1, v3, v5

    .line 113
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_b
    const/16 v2, 0x62

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x2

    .line 114
    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0x7f

    aput v6, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v7, [I

    .line 115
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v7

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_1a

    :pswitch_c
    add-int/lit8 v2, p2, 0x2

    .line 116
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 117
    aget-byte v4, v1, v4

    add-int/lit8 v14, p2, 0x4

    .line 118
    aget-byte v16, v1, v14

    add-int/lit8 v17, p2, 0x5

    .line 119
    aget-byte v18, v1, v17

    add-int/lit8 v19, p2, 0x6

    .line 120
    aget-byte v19, v1, v19

    add-int/lit8 v20, p2, 0x8

    .line 121
    aget-byte v20, v1, v20

    and-int/lit8 v11, v20, 0x1

    const/16 v6, 0x15

    if-ne v11, v7, :cond_f

    new-array v11, v7, [I

    aput v5, v11, v5

    .line 122
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_f
    shr-int/lit8 v11, v4, 0x4

    and-int/2addr v11, v7

    if-ne v11, v7, :cond_10

    new-array v11, v7, [I

    aput v13, v11, v5

    .line 123
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    :cond_10
    new-array v11, v7, [I

    and-int/lit8 v13, v2, 0x7

    aput v13, v11, v5

    .line 124
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    :goto_9
    const/16 v6, 0x36

    new-array v11, v7, [I

    shr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v7

    aput v13, v11, v5

    .line 125
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    const/16 v6, 0x10

    new-array v11, v7, [I

    shr-int/lit8 v13, v2, 0x4

    and-int/2addr v13, v7

    aput v13, v11, v5

    .line 126
    invoke-static {v6, v11}, Lk0/qt;->y0(I[I)V

    new-array v6, v7, [I

    shr-int/lit8 v11, v2, 0x5

    and-int/2addr v11, v7

    if-nez v11, :cond_11

    move v11, v5

    goto :goto_a

    :cond_11
    move v11, v7

    :goto_a
    aput v11, v6, v5

    .line 127
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0xb

    new-array v6, v7, [I

    shr-int/lit8 v11, v2, 0x6

    and-int/2addr v11, v7

    aput v11, v6, v5

    .line 128
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v7

    aput v2, v3, v5

    const/16 v2, 0xa

    .line 129
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v3, v4, 0xf

    packed-switch v3, :pswitch_data_3

    move v6, v5

    move v11, v6

    move v13, v11

    :goto_b
    move/from16 v21, v13

    :goto_c
    move/from16 v22, v21

    goto/16 :goto_d

    :pswitch_d
    move v6, v5

    move v11, v6

    move v13, v7

    goto :goto_b

    :pswitch_e
    move v6, v5

    move v11, v6

    move/from16 v21, v11

    move v13, v7

    move/from16 v22, v13

    goto :goto_d

    :pswitch_f
    move v6, v5

    move v11, v6

    move/from16 v21, v11

    move/from16 v22, v21

    move v13, v7

    goto :goto_d

    :pswitch_10
    move v6, v5

    move v11, v6

    move/from16 v22, v11

    move v13, v7

    move/from16 v21, v13

    goto :goto_d

    :pswitch_11
    move v6, v5

    move v11, v6

    move v13, v11

    move/from16 v22, v13

    move/from16 v21, v7

    goto :goto_d

    :pswitch_12
    move v6, v5

    move v11, v6

    move v13, v11

    move/from16 v21, v7

    goto :goto_c

    :pswitch_13
    move v6, v5

    move v11, v6

    move v13, v11

    move/from16 v21, v13

    move/from16 v22, v7

    goto :goto_d

    :pswitch_14
    move v6, v5

    move v13, v6

    move/from16 v21, v13

    move/from16 v22, v21

    move v11, v7

    goto :goto_d

    :pswitch_15
    move v11, v5

    move v13, v11

    move/from16 v21, v13

    move/from16 v22, v21

    move v6, v7

    :goto_d
    const/16 v9, 0x31

    new-array v2, v7, [I

    aput v6, v2, v5

    .line 130
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x41

    new-array v6, v7, [I

    aput v11, v6, v5

    .line 131
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    aput v13, v2, v5

    .line 132
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v7, [I

    aput v21, v6, v5

    .line 133
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v6, v7, [I

    aput v22, v6, v5

    .line 134
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xe

    new-array v6, v7, [I

    shr-int/lit8 v9, v4, 0x5

    and-int/2addr v9, v7

    aput v9, v6, v5

    .line 135
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x34

    new-array v6, v7, [I

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    aput v4, v6, v5

    .line 136
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v4, v7, [I

    aput v3, v4, v5

    .line 137
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 138
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 139
    aget-byte v16, v1, v17

    .line 140
    aget-byte v18, v1, v14

    :cond_12
    move/from16 v2, v16

    move/from16 v3, v18

    and-int/2addr v2, v15

    const/4 v4, -0x1

    const/16 v6, 0x1e

    const/16 v8, 0x1b

    if-eqz v2, :cond_14

    if-eq v2, v15, :cond_13

    packed-switch v2, :pswitch_data_4

    if-lt v2, v7, :cond_15

    const/16 v9, 0x1c

    if-gt v2, v9, :cond_15

    new-array v9, v7, [I

    mul-int/2addr v2, v10

    add-int/lit16 v2, v2, 0xa5

    const/4 v11, 0x2

    mul-int/2addr v2, v11

    const/16 v11, 0xa

    .line 141
    div-int/2addr v2, v11

    aput v2, v9, v5

    invoke-static {v8, v9}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :pswitch_16
    new-array v2, v7, [I

    const/16 v9, 0x3e

    aput v9, v2, v5

    .line 142
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :pswitch_17
    new-array v2, v7, [I

    const/16 v9, 0x1f

    aput v9, v2, v5

    .line 143
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :pswitch_18
    new-array v2, v7, [I

    aput v6, v2, v5

    .line 144
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :pswitch_19
    new-array v2, v7, [I

    const/16 v9, 0x21

    aput v9, v2, v5

    .line 145
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :pswitch_1a
    new-array v2, v7, [I

    const/4 v9, -0x3

    aput v9, v2, v5

    .line 146
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :pswitch_1b
    new-array v2, v7, [I

    const/16 v9, 0x20

    aput v9, v2, v5

    .line 147
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_13
    new-array v2, v7, [I

    aput v4, v2, v5

    .line 148
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_14
    new-array v2, v7, [I

    const/4 v9, -0x2

    aput v9, v2, v5

    .line 149
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    :cond_15
    :goto_e
    and-int/lit16 v2, v3, 0xff

    if-eqz v2, :cond_17

    if-eq v2, v15, :cond_16

    packed-switch v2, :pswitch_data_5

    if-lt v2, v7, :cond_18

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_18

    new-array v8, v7, [I

    mul-int/2addr v2, v10

    add-int/lit16 v2, v2, 0xa5

    const/4 v9, 0x2

    mul-int/2addr v2, v9

    const/16 v9, 0xa

    .line 150
    div-int/2addr v2, v9

    aput v2, v8, v5

    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :pswitch_1c
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/16 v8, 0x3e

    aput v8, v2, v5

    .line 151
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :pswitch_1d
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/16 v8, 0x1f

    aput v8, v2, v5

    .line 152
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :pswitch_1e
    const/16 v3, 0x1c

    new-array v2, v7, [I

    aput v6, v2, v5

    .line 153
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :pswitch_1f
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/16 v8, 0x21

    aput v8, v2, v5

    .line 154
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :pswitch_20
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/4 v8, -0x3

    aput v8, v2, v5

    .line 155
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :pswitch_21
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/16 v8, 0x20

    aput v8, v2, v5

    .line 156
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_16
    const/16 v3, 0x1c

    new-array v2, v7, [I

    aput v4, v2, v5

    .line 157
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_f

    :cond_17
    const/16 v3, 0x1c

    new-array v2, v7, [I

    const/4 v8, -0x2

    aput v8, v2, v5

    .line 158
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :cond_18
    :goto_f
    const/16 v2, 0x1d

    new-array v3, v7, [I

    shr-int/lit8 v8, v19, 0x4

    const/16 v9, 0xf

    and-int/2addr v8, v9

    aput v8, v3, v5

    .line 159
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    and-int/lit8 v3, v19, 0xf

    aput v3, v2, v5

    .line 160
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    const/4 v3, 0x2

    shr-int/lit8 v3, v20, 0x2

    and-int/2addr v3, v7

    aput v3, v2, v5

    const/16 v3, 0xd

    .line 161
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    .line 162
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x7

    add-int/lit8 v2, p2, 0x7

    .line 163
    aget-byte v1, v1, v2

    and-int/2addr v1, v15

    const-string v2, "persist.fyt.temperature"

    .line 164
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_1a

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_19

    rsub-int v1, v1, 0x100

    mul-int/2addr v1, v12

    rsub-int v1, v1, 0x528

    goto :goto_10

    :cond_19
    mul-int/2addr v1, v12

    add-int/lit16 v1, v1, 0x528

    :goto_10
    const/16 v2, 0xa

    .line 165
    div-int/2addr v1, v2

    mul-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    and-int/2addr v1, v4

    goto :goto_11

    :cond_1a
    const/16 v2, 0xa

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1b

    rsub-int v1, v1, 0x100

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_11

    :cond_1b
    and-int/2addr v1, v15

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    .line 166
    :goto_11
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_1a

    .line 167
    :pswitch_22
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    add-int/lit8 v2, p2, 0x2

    .line 168
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 169
    aget-byte v1, v1, v4

    and-int/2addr v2, v15

    .line 170
    iput v2, v0, Lk0/vb;->j:I

    move v2, v5

    .line 171
    :goto_12
    iget-object v4, v0, Lk0/vb;->l:[[I

    array-length v6, v4

    if-ge v2, v6, :cond_1d

    .line 172
    iget v6, v0, Lk0/vb;->j:I

    aget-object v8, v4, v2

    aget v8, v8, v5

    if-ne v6, v8, :cond_1c

    if-eqz v6, :cond_1d

    .line 173
    iput v2, v0, Lk0/vb;->i:I

    goto :goto_13

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 174
    :cond_1d
    :goto_13
    iget v6, v0, Lk0/vb;->k:I

    and-int/2addr v1, v15

    if-eq v6, v1, :cond_42

    .line 175
    iput v1, v0, Lk0/vb;->k:I

    if-ne v1, v7, :cond_1e

    .line 176
    iget v1, v0, Lk0/vb;->j:I

    if-eq v1, v7, :cond_42

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_42

    .line 177
    array-length v1, v4

    if-ge v2, v1, :cond_42

    .line 178
    aget-object v1, v4, v2

    aget v1, v1, v7

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_1e
    const/16 v2, 0x19

    const/4 v6, 0x2

    if-ne v1, v6, :cond_21

    .line 179
    iget v1, v0, Lk0/vb;->j:I

    if-eq v1, v7, :cond_20

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_1f

    goto/16 :goto_1a

    .line 180
    :cond_1f
    iget-boolean v1, v0, Lk0/vb;->m:Z

    if-nez v1, :cond_42

    .line 181
    iput-boolean v7, v0, Lk0/vb;->m:Z

    .line 182
    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_42

    new-array v1, v10, [I

    .line 183
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v1, 0x28

    .line 184
    invoke-static {v1, v2}, La/i;->a0(J)V

    new-array v1, v10, [I

    .line 185
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1a

    .line 186
    :cond_20
    iget-boolean v1, v0, Lk0/vb;->m:Z

    if-nez v1, :cond_42

    .line 187
    iput-boolean v7, v0, Lk0/vb;->m:Z

    .line 188
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 189
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_21
    if-nez v1, :cond_42

    .line 190
    iget v1, v0, Lk0/vb;->j:I

    if-eq v1, v7, :cond_25

    const/16 v6, 0x1c

    if-eq v1, v6, :cond_23

    .line 191
    iget v1, v0, Lk0/vb;->i:I

    array-length v2, v4

    if-ge v1, v2, :cond_22

    if-eq v1, v15, :cond_22

    .line 192
    aget-object v1, v4, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 193
    :cond_22
    iput v15, v0, Lk0/vb;->i:I

    goto/16 :goto_1a

    .line 194
    :cond_23
    iget-boolean v1, v0, Lk0/vb;->m:Z

    if-nez v1, :cond_24

    .line 195
    invoke-static {v7, v5}, Ll0/b0;->l0(II)V

    .line 196
    invoke-static {v7, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 197
    :cond_24
    iput-boolean v5, v0, Lk0/vb;->m:Z

    goto/16 :goto_1a

    .line 198
    :cond_25
    iget-boolean v1, v0, Lk0/vb;->m:Z

    if-nez v1, :cond_27

    .line 199
    sget v1, Lu0/b;->j:I

    if-ne v1, v7, :cond_26

    .line 200
    invoke-static {v2, v5}, Ll0/b0;->l0(II)V

    .line 201
    invoke-static {v2, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 202
    :cond_26
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    .line 203
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 204
    :cond_27
    iput-boolean v5, v0, Lk0/vb;->m:Z

    goto/16 :goto_1a

    .line 205
    :pswitch_23
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_42

    add-int/lit8 v2, p2, 0x2

    .line 206
    aget-byte v2, v1, v2

    add-int/lit8 v6, p2, 0x3

    .line 207
    aget-byte v1, v1, v6

    and-int/2addr v2, v15

    .line 208
    iput v2, v0, Lk0/vb;->g:I

    move v2, v5

    .line 209
    :goto_14
    iget-object v6, v0, Lk0/vb;->h:[[I

    array-length v9, v6

    if-ge v2, v9, :cond_29

    .line 210
    iget v9, v0, Lk0/vb;->g:I

    aget-object v11, v6, v2

    aget v11, v11, v5

    if-ne v9, v11, :cond_28

    if-eqz v9, :cond_29

    .line 211
    iput v2, v0, Lk0/vb;->f:I

    goto :goto_15

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 212
    :cond_29
    :goto_15
    sget v9, Lk0/nt;->c:I

    const/16 v11, 0xd

    if-eq v9, v11, :cond_33

    const/16 v13, 0xe

    if-ne v9, v13, :cond_2a

    goto/16 :goto_16

    .line 213
    :cond_2a
    sget v9, Lu0/b;->D:I

    if-eq v9, v11, :cond_42

    .line 214
    iget v9, v0, Lk0/vb;->g:I

    if-eq v9, v7, :cond_32

    const/4 v11, 0x2

    if-eq v9, v11, :cond_31

    if-eq v9, v8, :cond_2f

    const/4 v8, 0x7

    if-eq v9, v8, :cond_2d

    and-int/2addr v1, v15

    if-ne v1, v7, :cond_2b

    .line 215
    array-length v1, v6

    if-ge v2, v1, :cond_42

    .line 216
    aget-object v1, v6, v2

    aget v1, v1, v7

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_2b
    if-nez v1, :cond_42

    .line 217
    iget v1, v0, Lk0/vb;->f:I

    array-length v2, v6

    if-ge v1, v2, :cond_2c

    if-eq v1, v15, :cond_2c

    .line 218
    aget-object v1, v6, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 219
    :cond_2c
    iput v15, v0, Lk0/vb;->f:I

    goto/16 :goto_1a

    :cond_2d
    and-int/2addr v1, v15

    if-ne v1, v7, :cond_42

    .line 220
    sget v1, Lh0/c;->E:I

    if-eq v1, v4, :cond_2e

    if-eq v1, v14, :cond_2e

    if-eq v1, v10, :cond_2e

    .line 221
    invoke-static {v3, v5}, Ll0/b0;->l0(II)V

    .line 222
    invoke-static {v3, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_2e
    const/16 v1, 0x1a

    .line 223
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 224
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_2f
    and-int/2addr v1, v15

    if-ne v1, v7, :cond_42

    .line 225
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_30

    const/16 v1, 0xd

    .line 226
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 227
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 228
    :cond_30
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    .line 229
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_31
    and-int/2addr v1, v15

    if-ne v1, v7, :cond_42

    .line 230
    sget v1, Lk0/nt;->c:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_42

    const/16 v1, 0x8

    .line 231
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 232
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_32
    const/16 v2, 0xf

    and-int/2addr v1, v15

    if-ne v1, v7, :cond_42

    .line 233
    sget v1, Lk0/nt;->c:I

    if-ne v1, v2, :cond_42

    const/4 v1, 0x7

    .line 234
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 235
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 236
    :cond_33
    :goto_16
    iget v3, v0, Lk0/vb;->g:I

    if-eq v3, v7, :cond_39

    const/4 v4, 0x2

    if-eq v3, v4, :cond_38

    if-eq v3, v8, :cond_36

    and-int/2addr v1, v15

    if-ne v1, v7, :cond_34

    .line 237
    array-length v1, v6

    if-ge v2, v1, :cond_42

    .line 238
    aget-object v1, v6, v2

    aget v1, v1, v7

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_34
    if-nez v1, :cond_42

    .line 239
    iget v1, v0, Lk0/vb;->f:I

    array-length v2, v6

    if-ge v1, v2, :cond_35

    if-eq v1, v15, :cond_35

    .line 240
    aget-object v1, v6, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    .line 241
    :cond_35
    iput v15, v0, Lk0/vb;->f:I

    goto/16 :goto_1a

    :cond_36
    and-int/2addr v1, v15

    if-ne v1, v7, :cond_42

    .line 242
    sget v1, Lh0/c;->E:I

    if-eq v1, v14, :cond_37

    const/16 v1, 0xd

    .line 243
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 244
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 245
    :cond_37
    invoke-static {v12, v5}, Ll0/b0;->l0(II)V

    .line 246
    invoke-static {v12, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_38
    and-int/2addr v1, v15

    if-ne v1, v7, :cond_42

    const/16 v1, 0x8

    .line 247
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 248
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    :cond_39
    and-int/2addr v1, v15

    if-ne v1, v7, :cond_42

    const/4 v1, 0x7

    .line 249
    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    .line 250
    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto/16 :goto_1a

    .line 251
    :cond_3a
    sget v2, Lk0/vb;->I:I

    if-ne v2, v7, :cond_3e

    .line 252
    sget v2, Lk0/vb;->E:I

    add-int/lit8 v3, p2, 0x5

    aget-byte v4, v1, v3

    shr-int/2addr v4, v8

    and-int/2addr v4, v7

    if-ne v2, v4, :cond_3b

    sget v2, Lk0/vb;->F:I

    aget-byte v4, v1, v3

    const/4 v6, 0x7

    shr-int/2addr v4, v6

    and-int/2addr v4, v7

    if-eq v2, v4, :cond_3e

    goto :goto_17

    :cond_3b
    const/4 v6, 0x7

    .line 253
    :goto_17
    aget-byte v2, v1, v3

    shr-int/2addr v2, v8

    and-int/2addr v2, v7

    sput v2, Lk0/vb;->E:I

    .line 254
    aget-byte v3, v1, v3

    shr-int/2addr v3, v6

    and-int/2addr v3, v7

    sput v3, Lk0/vb;->F:I

    if-eq v2, v7, :cond_3d

    if-ne v3, v7, :cond_3c

    goto :goto_18

    :cond_3c
    if-nez v2, :cond_3e

    if-nez v3, :cond_3e

    .line 255
    sget v2, Lk0/vb;->D:I

    if-nez v2, :cond_3e

    .line 256
    iget-boolean v2, v0, Lk0/vb;->d:Z

    if-eqz v2, :cond_3e

    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 257
    invoke-static {}, Lo1/u;->k()V

    goto :goto_19

    .line 258
    :cond_3d
    :goto_18
    invoke-static {}, Lo1/u;->a0()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 259
    iput-boolean v7, v0, Lk0/vb;->d:Z

    .line 260
    invoke-static {}, Lo1/u;->z()I

    :cond_3e
    :goto_19
    add-int/lit8 v2, p2, 0x5

    .line 261
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    const/4 v2, 0x7

    shr-int/2addr v1, v2

    and-int/2addr v1, v7

    invoke-static {v3, v1, v5}, Ll0/c0;->a(III)V

    goto :goto_1a

    .line 262
    :cond_3f
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto :goto_1a

    :cond_40
    move v3, v6

    const/16 v2, 0x88

    new-array v4, v7, [I

    add-int/lit8 v3, p2, 0x2

    .line 263
    aget-byte v1, v1, v3

    aput v1, v4, v5

    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_1a

    :cond_41
    add-int/lit8 v2, p2, 0x2

    .line 264
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x1e78

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->i(IIZI)V

    :cond_42
    :goto_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1d
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1d
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x74
        0x2
        0x50
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x74
        0x2
        0x50
        0x0
    .end array-data
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/vb;->v:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/vb;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/vb;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/vb;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/vb;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lk0/vb;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Ly0/g;->t:Lo1/y;

    iget-object v1, p0, Lk0/vb;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lu0/b;->Y3:Z

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/vb;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/vb;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/vb;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8c

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
    .locals 6

    const/4 p3, 0x5

    const/16 p4, 0xe3

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    if-eq p1, v1, :cond_4

    const/16 v5, 0x50

    if-eq p1, v5, :cond_3

    const/16 v5, 0x51

    if-eq p1, v5, :cond_2

    const/16 v5, 0x53

    if-eq p1, v5, :cond_1

    const/16 v5, 0x54

    if-eq p1, v5, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 v5, 0x75

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1
    :pswitch_0
    sget p1, Lk0/nt;->U:I

    if-ne p1, v4, :cond_6

    .line 2
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p3, 0x3e9

    aget p2, p2, v3

    invoke-static {p1, p3, p2}, Lo1/x;->x([Lo1/x;II)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_6

    .line 3
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, p3, [I

    aput p4, p1, v3

    aput v5, p1, v4

    aput v2, p1, v2

    aput v2, p1, v1

    .line 4
    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p2, :cond_6

    .line 5
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v4, [I

    .line 6
    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v3

    invoke-virtual {p0, v5, v4, p1}, Lk0/vb;->q3(IB[I)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz p2, :cond_6

    .line 7
    array-length p1, p2

    if-le p1, v4, :cond_6

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x71

    aput p3, p1, v4

    aput v2, p1, v2

    .line 8
    aget p3, p2, v3

    int-to-byte p3, p3

    aput p3, p1, v1

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p2, :cond_6

    .line 9
    array-length p1, p2

    if-le p1, v1, :cond_6

    const/4 p1, 0x7

    new-array p1, p1, [I

    aput p4, p1, v3

    const/16 p4, 0x72

    aput p4, p1, v4

    aput v0, p1, v2

    .line 10
    aget p4, p2, v3

    int-to-byte p4, p4

    aput p4, p1, v1

    aget p4, p2, v4

    int-to-byte p4, p4

    aput p4, p1, v0

    aget p4, p2, v2

    int-to-byte p4, p4

    aput p4, p1, p3

    const/4 p3, 0x6

    aget p2, p2, v1

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    if-eqz p2, :cond_6

    .line 11
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x75

    aput p3, p1, v4

    aput v4, p1, v2

    .line 12
    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz p2, :cond_6

    .line 13
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x70

    aput p3, p1, v4

    aput v4, p1, v2

    .line 14
    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    if-eqz p2, :cond_6

    .line 15
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x78

    aput p3, p1, v4

    aput v4, p1, v2

    .line 16
    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    if-eqz p2, :cond_6

    .line 17
    array-length p1, p2

    if-lez p1, :cond_6

    const/16 p1, 0x86

    const/16 p3, 0xa

    .line 18
    invoke-virtual {p0, p1, p3, p2}, Lk0/vb;->q3(IB[I)V

    goto/16 :goto_0

    :pswitch_9
    if-eqz p2, :cond_6

    .line 19
    array-length p1, p2

    if-lez p1, :cond_6

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, -0x7b

    aput p3, p1, v4

    aput v2, p1, v2

    .line 20
    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :cond_0
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/vb;->m3(I)V

    goto :goto_0

    .line 22
    :cond_1
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lk0/vb;->n3(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_6

    .line 23
    array-length p1, p2

    if-le p1, v2, :cond_6

    .line 24
    aget p1, p2, v3

    aget p3, p2, v4

    aget p2, p2, v2

    invoke-virtual {p0, p1, p3, p2}, Lk0/vb;->l3(III)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    .line 25
    array-length p1, p2

    if-le p1, v4, :cond_6

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x74

    aput p3, p1, v4

    aput v2, p1, v2

    .line 26
    aget p3, p2, v4

    int-to-byte p3, p3

    aput p3, p1, v1

    aget p2, p2, v3

    int-to-byte p2, p2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    .line 27
    array-length p1, p2

    if-le p1, v4, :cond_6

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, -0x7d

    aput p3, p1, v4

    aput v2, p1, v2

    .line 28
    aget p3, p2, v3

    int-to-byte p3, p3

    aput p3, p1, v1

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 29
    array-length p1, p2

    if-le p1, v4, :cond_6

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, -0x7e

    aput p3, p1, v4

    aput v2, p1, v2

    .line 30
    aget p3, p2, v3

    int-to-byte p3, p3

    aput p3, p1, v1

    aget p2, p2, v4

    int-to-byte p2, p2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x71

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0x32

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

.method public final b3()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x8b

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 1
    sget v4, Lo0/e;->k:I

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    aput v2, v1, v5

    goto :goto_0

    :cond_0
    aput v3, v1, v5

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 2
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(I)I
    .locals 1

    const/16 v0, 0xa

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x0

    :goto_0
    :pswitch_7
    return v0

    nop

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
.end method

.method public final d3()V
    .locals 4

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0xc

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x18

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 v0, 0x96

    .line 8
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x72
        0x9
        0x1
        0x1
        0x16
        0x2
        0x3
        0xfb
        0xfb
        0xa7
        0xf7
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x72
        0x9
        0x1
        0x1
        0x12
        0x2
        0x3
        0xfb
        0xfb
        0xb7
        0xf7
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x72
        0x15
        0x1
        0x1
        0x16
        0x2
        0x3
        0xfb
        0xfb
        0xa7
        0xf7
        0x13
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x72
        0x15
        0x1
        0x1
        0x12
        0x2
        0x3
        0xfb
        0xfb
        0xb7
        0xf7
        0x14
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final l3(III)V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x76

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x5

    aput v3, v1, v2

    int-to-byte p1, p1

    const/4 v2, 0x3

    aput p1, v1, v2

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x4

    aput p1, v1, v2

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput p1, v1, v3

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    aput p1, v1, p2

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput p1, v1, p2

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 v2, 0x8a

    .line 1
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/vb;->J:I

    .line 3
    iget-object p1, p0, Lk0/vb;->v:Lo1/g0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vb;->J:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/vb;->v:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x89

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    .line 2
    sput p1, Lk0/vb;->I:I

    .line 3
    iget-object p1, p0, Lk0/vb;->v:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/vb;->I:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/vb;->v:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3([BII)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_8

    add-int v2, p2, v1

    .line 2
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    goto :goto_3

    :cond_0
    const/16 v5, 0x23

    const/16 v6, 0x2a

    const/16 v7, 0xb

    const/4 v8, -0x1

    const/16 v9, 0xa

    if-le v3, v8, :cond_1

    if-ge v3, v9, :cond_1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-ne v3, v9, :cond_2

    .line 4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-ne v3, v7, :cond_3

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    :cond_3
    :goto_1
    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    if-le v2, v8, :cond_5

    if-ge v2, v9, :cond_5

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    if-ne v2, v9, :cond_6

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    if-ne v2, v7, :cond_7

    .line 9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x74

    .line 11
    iget-object p3, p0, Lk0/vb;->C:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lk0/qt;->B0(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iput-object p1, p0, Lk0/vb;->C:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method public final p3(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x75

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget p1, Lh0/c;->G:I

    if-nez p1, :cond_5

    iget v3, p0, Lk0/vb;->b:I

    if-nez v3, :cond_5

    .line 3
    iput v0, p0, Lk0/vb;->b:I

    .line 4
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lk0/vb;->c:I

    .line 5
    sget p1, Lu0/b;->j:I

    if-eqz p1, :cond_1

    .line 6
    invoke-static {v2}, Lu0/d;->M(I)V

    .line 7
    :cond_1
    sget p1, Lu0/b;->D:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lk0/vb;->b:I

    if-eqz p1, :cond_2

    .line 8
    sget p1, Ly0/f;->i:I

    if-eqz p1, :cond_2

    const/4 p1, -0x4

    .line 9
    invoke-static {p1}, Ly0/h;->u0(I)V

    .line 10
    :cond_2
    sget p1, Lu0/b;->D:I

    if-eq p1, v1, :cond_3

    .line 11
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v1}, Lu0/h;->c(I)V

    .line 12
    :cond_3
    sget-object p1, Lu0/b;->J1:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "com.syu.canbus"

    if-eqz p1, :cond_4

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.syu.onstar.rzc.showpip"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/ContextWrapper;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 16
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.syu.carinfo.xp.yinglang.YLOnStarAct"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "onstar"

    const-string v1, "on"

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x200001

    and-int/2addr v0, v1

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    .line 21
    iget p1, p0, Lk0/vb;->b:I

    if-nez p1, :cond_8

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 22
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 23
    :cond_6
    iget p1, p0, Lk0/vb;->b:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lk0/vb;->c:I

    if-eq p1, v1, :cond_7

    .line 24
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, p1}, Lu0/h;->c(I)V

    .line 25
    :cond_7
    iput v2, p0, Lk0/vb;->b:I

    :catch_0
    :cond_8
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xba
        0x2
        0x3
        0x0
    .end array-data
.end method

.method public final varargs q3(IB[I)V
    .locals 6

    and-int/lit16 v0, p2, 0xff

    .line 1
    array-length v1, p3

    if-lt v0, v1, :cond_3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    .line 2
    new-array v2, v0, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    .line 3
    aput v3, v2, v4

    int-to-byte p1, p1

    const/4 v3, 0x1

    .line 4
    aput p1, v2, v3

    const/4 p1, 0x2

    .line 5
    aput p2, v2, p1

    .line 6
    array-length p1, p3

    move p2, v4

    :goto_0
    if-ge p2, p1, :cond_0

    add-int v3, v1, p2

    .line 7
    aget v5, p3, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput v5, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 8
    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    if-ge v4, v0, :cond_2

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget p3, v2, v4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params data length > size!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
