.class public Lk0/i8;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x0

.field public static C:I = 0x0

.field public static D:I = 0x0

.field public static E:I = 0x0

.field public static F:I = 0x0

.field public static x:I = 0x0

.field public static y:I = 0x0

.field public static z:I = 0x1


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:[[I

.field public f:[[I

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;

.field public i:Lo1/g0;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Z

.field public t:I

.field public u:Ljava/lang/Runnable;

.field public v:Ljava/lang/Runnable;

.field public w:Ljava/lang/Runnable;


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
    iput v1, v0, Lk0/i8;->c:I

    const/16 v2, 0x16

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

    iput-object v3, v0, Lk0/i8;->d:[[I

    const/16 v3, 0x17

    new-array v3, v3, [[I

    new-array v5, v4, [I

    .line 4
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

    aput-object v5, v3, v25

    new-array v5, v4, [I

    fill-array-data v5, :array_2c

    aput-object v5, v3, v2

    iput-object v3, v0, Lk0/i8;->e:[[I

    new-array v2, v2, [[I

    new-array v3, v4, [I

    .line 5
    fill-array-data v3, :array_2d

    aput-object v3, v2, v1

    new-array v3, v4, [I

    fill-array-data v3, :array_2e

    aput-object v3, v2, v6

    new-array v3, v4, [I

    fill-array-data v3, :array_2f

    aput-object v3, v2, v4

    new-array v3, v4, [I

    fill-array-data v3, :array_30

    aput-object v3, v2, v7

    new-array v3, v4, [I

    fill-array-data v3, :array_31

    aput-object v3, v2, v8

    new-array v3, v4, [I

    fill-array-data v3, :array_32

    aput-object v3, v2, v9

    new-array v3, v4, [I

    fill-array-data v3, :array_33

    aput-object v3, v2, v10

    new-array v3, v4, [I

    fill-array-data v3, :array_34

    aput-object v3, v2, v11

    new-array v3, v4, [I

    fill-array-data v3, :array_35

    aput-object v3, v2, v12

    new-array v3, v4, [I

    fill-array-data v3, :array_36

    aput-object v3, v2, v13

    new-array v3, v4, [I

    fill-array-data v3, :array_37

    aput-object v3, v2, v14

    new-array v3, v4, [I

    fill-array-data v3, :array_38

    aput-object v3, v2, v15

    new-array v3, v4, [I

    fill-array-data v3, :array_39

    aput-object v3, v2, v16

    new-array v3, v4, [I

    fill-array-data v3, :array_3a

    aput-object v3, v2, v17

    new-array v3, v4, [I

    fill-array-data v3, :array_3b

    aput-object v3, v2, v18

    new-array v3, v4, [I

    fill-array-data v3, :array_3c

    aput-object v3, v2, v19

    new-array v3, v4, [I

    fill-array-data v3, :array_3d

    aput-object v3, v2, v20

    new-array v3, v4, [I

    fill-array-data v3, :array_3e

    aput-object v3, v2, v21

    new-array v3, v4, [I

    fill-array-data v3, :array_3f

    aput-object v3, v2, v22

    new-array v3, v4, [I

    fill-array-data v3, :array_40

    aput-object v3, v2, v23

    new-array v3, v4, [I

    fill-array-data v3, :array_41

    aput-object v3, v2, v24

    new-array v3, v4, [I

    fill-array-data v3, :array_42

    const/16 v5, 0x15

    aput-object v3, v2, v5

    iput-object v2, v0, Lk0/i8;->f:[[I

    .line 6
    new-instance v2, Lk0/i8$a;

    invoke-direct {v2, v0}, Lk0/i8$a;-><init>(Lk0/i8;)V

    iput-object v2, v0, Lk0/i8;->g:Ljava/lang/Runnable;

    .line 7
    new-instance v2, Lk0/i8$b;

    invoke-direct {v2, v0}, Lk0/i8$b;-><init>(Lk0/i8;)V

    iput-object v2, v0, Lk0/i8;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v2, Lo1/g0;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x20

    invoke-direct {v2, v3, v5}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lk0/i8;->i:Lo1/g0;

    .line 9
    iput v6, v0, Lk0/i8;->j:I

    .line 10
    iput v4, v0, Lk0/i8;->k:I

    .line 11
    iput v7, v0, Lk0/i8;->l:I

    .line 12
    iput v8, v0, Lk0/i8;->m:I

    .line 13
    iput v9, v0, Lk0/i8;->n:I

    .line 14
    iput v10, v0, Lk0/i8;->o:I

    .line 15
    iput v11, v0, Lk0/i8;->p:I

    .line 16
    iput v12, v0, Lk0/i8;->q:I

    .line 17
    iput v13, v0, Lk0/i8;->r:I

    .line 18
    iput-boolean v1, v0, Lk0/i8;->s:Z

    .line 19
    iput v1, v0, Lk0/i8;->t:I

    .line 20
    new-instance v1, Lk0/i8$c;

    invoke-direct {v1, v0}, Lk0/i8$c;-><init>(Lk0/i8;)V

    iput-object v1, v0, Lk0/i8;->u:Ljava/lang/Runnable;

    .line 21
    new-instance v1, Lk0/i8$d;

    invoke-direct {v1, v0}, Lk0/i8$d;-><init>(Lk0/i8;)V

    iput-object v1, v0, Lk0/i8;->v:Ljava/lang/Runnable;

    .line 22
    new-instance v1, Lk0/i8$e;

    invoke-direct {v1, v0}, Lk0/i8$e;-><init>(Lk0/i8;)V

    iput-object v1, v0, Lk0/i8;->w:Ljava/lang/Runnable;

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
        0x6
        0xd
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
        0x81
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x82
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x83
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x84
        0x36
    .end array-data

    :array_c
    .array-data 4
        0x85
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x86
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x87
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x88
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x89
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x8a
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x8b
        0x37
    .end array-data

    :array_13
    .array-data 4
        0x8c
        0x12
    .end array-data

    :array_14
    .array-data 4
        0x8d
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x8e
        0x18
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_17
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_19
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_1b
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_1d
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_1e
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_1f
    .array-data 4
        0x81
        0x3
    .end array-data

    :array_20
    .array-data 4
        0x82
        0x4
    .end array-data

    :array_21
    .array-data 4
        0x83
        0x2
    .end array-data

    :array_22
    .array-data 4
        0x84
        0x37
    .end array-data

    :array_23
    .array-data 4
        0x85
        0xc
    .end array-data

    :array_24
    .array-data 4
        0x86
        0x7
    .end array-data

    :array_25
    .array-data 4
        0x87
        0x8
    .end array-data

    :array_26
    .array-data 4
        0x88
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x89
        0x28
    .end array-data

    :array_28
    .array-data 4
        0x8a
        0x29
    .end array-data

    :array_29
    .array-data 4
        0x8b
        0x2a
    .end array-data

    :array_2a
    .array-data 4
        0x8c
        0x2b
    .end array-data

    :array_2b
    .array-data 4
        0x8d
        0x2c
    .end array-data

    :array_2c
    .array-data 4
        0x8e
        0x2d
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2e
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2f
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_30
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_31
    .array-data 4
        0x6
        0xd
    .end array-data

    :array_32
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_33
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_34
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_35
    .array-data 4
        0x81
        0x1e
    .end array-data

    :array_36
    .array-data 4
        0x82
        0x1f
    .end array-data

    :array_37
    .array-data 4
        0x83
        0x1d
    .end array-data

    :array_38
    .array-data 4
        0x84
        0x36
    .end array-data

    :array_39
    .array-data 4
        0x85
        0xc
    .end array-data

    :array_3a
    .array-data 4
        0x86
        0x7
    .end array-data

    :array_3b
    .array-data 4
        0x87
        0x8
    .end array-data

    :array_3c
    .array-data 4
        0x88
        0x0
    .end array-data

    :array_3d
    .array-data 4
        0x89
        0x5
    .end array-data

    :array_3e
    .array-data 4
        0x8a
        0x6
    .end array-data

    :array_3f
    .array-data 4
        0x8b
        0x37
    .end array-data

    :array_40
    .array-data 4
        0x8c
        0x12
    .end array-data

    :array_41
    .array-data 4
        0x8d
        0x1
    .end array-data

    :array_42
    .array-data 4
        0x8e
        0x18
    .end array-data
.end method

.method public static synthetic a3(Lk0/i8;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/i8;->i:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->p3(I)V

    return-void
.end method

.method public static synthetic c3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->q3(I)V

    return-void
.end method

.method public static synthetic d3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->j3(I)V

    return-void
.end method

.method public static synthetic e3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->k3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->l3(I)V

    return-void
.end method

.method public static synthetic g3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->m3(I)V

    return-void
.end method

.method public static synthetic h3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->n3(I)V

    return-void
.end method

.method public static synthetic i3(Lk0/i8;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/i8;->o3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    const/4 v3, 0x0

    .line 5
    iput v3, v0, Lk0/mt;->o:I

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    const v4, 0x1d00ff

    const v5, 0x1c00ff

    if-eqz v0, :cond_0

    sget v0, Lk0/nt;->a:I

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    .line 7
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v6, p0, Lk0/i8;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v6, p0, Lk0/i8;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v6, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v6, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v6, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v6, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v6, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    :cond_0
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v6, p0, Lk0/i8;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v6, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget v0, Lk0/nt;->a:I

    const v6, 0x700ff

    const-string v7, "com.syu.canbus"

    if-eq v0, v6, :cond_4

    const v6, 0x800ff

    if-eq v0, v6, :cond_4

    const v6, 0x300ff

    if-eq v0, v6, :cond_4

    const v6, 0x600ff

    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 17
    iput v3, v0, Lk0/mt;->i:I

    goto :goto_2

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    goto :goto_2

    .line 19
    :cond_4
    :goto_1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 20
    iput v2, v0, Lk0/mt;->i:I

    .line 21
    :goto_2
    iget-object v0, p0, Lk0/i8;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 22
    sget v0, Lk0/nt;->a:I

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    .line 23
    iget-object v0, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    :cond_5
    return-void
.end method

.method public U2([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/4 v6, 0x2

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_50

    const/16 v3, 0x29

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x36

    const/16 v11, 0xa

    const/16 v12, 0x7f

    if-eq v2, v3, :cond_4d

    const/16 v3, 0x41

    const/16 v13, 0x80

    const/16 v14, 0xf

    if-eq v2, v3, :cond_4a

    const/16 v3, 0x60

    const/16 v15, 0x6c

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_37

    if-eq v2, v12, :cond_36

    const/16 v3, 0x38

    if-eq v2, v3, :cond_35

    const/16 v3, 0x39

    if-eq v2, v3, :cond_34

    const/16 v3, 0xd

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v8

    add-int/lit8 v13, p2, 0x4

    .line 4
    aget-byte v13, v1, v13

    and-int/2addr v13, v8

    add-int/lit8 v15, p2, 0x5

    .line 5
    aget-byte v15, v1, v15

    and-int/2addr v15, v8

    add-int/lit8 v16, p2, 0x6

    .line 6
    aget-byte v12, v1, v16

    and-int/2addr v12, v8

    add-int/lit8 v16, p2, 0x7

    .line 7
    aget-byte v5, v1, v16

    and-int/2addr v5, v8

    add-int/lit8 v16, p2, 0x8

    .line 8
    aget-byte v7, v1, v16

    and-int/2addr v7, v8

    add-int/lit8 v16, p2, 0x9

    .line 9
    aget-byte v1, v1, v16

    and-int/2addr v1, v8

    new-array v8, v10, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v8, v9

    .line 10
    invoke-static {v11, v8}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xb

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x6

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 11
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    const/16 v8, 0xc

    new-array v11, v10, [I

    shr-int/lit8 v16, v2, 0x5

    and-int/lit8 v16, v16, 0x1

    aput v16, v11, v9

    .line 12
    invoke-static {v8, v11}, Lk0/qt;->y0(I[I)V

    new-array v8, v10, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v10

    aput v11, v8, v9

    .line 13
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x3e

    new-array v8, v10, [I

    shr-int/lit8 v11, v2, 0x2

    and-int/2addr v11, v10

    aput v11, v8, v9

    .line 14
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x10

    new-array v8, v10, [I

    shr-int/lit8 v11, v2, 0x1

    and-int/2addr v11, v10

    aput v11, v8, v9

    .line 15
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x41

    new-array v8, v10, [I

    and-int/2addr v2, v10

    aput v2, v8, v9

    .line 16
    invoke-static {v3, v8}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v2, v4, 0xf

    if-eq v2, v10, :cond_3

    if-eq v2, v6, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    move v2, v9

    move v3, v2

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    move v3, v9

    move v2, v10

    move v4, v2

    goto :goto_1

    :cond_1
    move v2, v9

    move v3, v2

    move v4, v10

    goto :goto_1

    :cond_2
    move v2, v9

    move v3, v10

    goto :goto_0

    :cond_3
    move v2, v9

    move v4, v2

    move v3, v10

    :goto_1
    const/16 v6, 0x12

    new-array v8, v10, [I

    aput v2, v8, v9

    .line 17
    invoke-static {v6, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v6, v10, [I

    aput v3, v6, v9

    .line 18
    invoke-static {v2, v6}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v4, v3, v9

    .line 19
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    and-int/lit8 v4, v13, 0xf

    aput v4, v3, v9

    .line 20
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x35

    new-array v3, v10, [I

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 21
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v15, 0x7

    and-int/2addr v1, v10

    const/16 v2, 0x1b

    if-eqz v1, :cond_7

    const/16 v1, 0x7f

    and-int/lit8 v3, v15, 0x7f

    const/16 v1, 0x24

    if-ne v3, v1, :cond_4

    new-array v1, v10, [I

    const/4 v3, -0x2

    aput v3, v1, v9

    .line 22
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_4
    const/16 v1, 0x40

    if-ne v3, v1, :cond_5

    new-array v1, v10, [I

    const/4 v3, -0x3

    aput v3, v1, v9

    .line 23
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_5
    const/16 v1, 0x24

    if-le v3, v1, :cond_6

    const/16 v1, 0x40

    if-ge v3, v1, :cond_6

    new-array v1, v10, [I

    aput v3, v1, v9

    .line 24
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    new-array v1, v10, [I

    const/4 v3, -0x1

    aput v3, v1, v9

    .line 25
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :cond_7
    :goto_2
    shr-int/lit8 v1, v12, 0x7

    and-int/2addr v1, v10

    const/16 v3, 0x1c

    if-eqz v1, :cond_b

    const/16 v1, 0x7f

    and-int/lit8 v4, v12, 0x7f

    const/16 v1, 0x24

    if-ne v4, v1, :cond_8

    new-array v1, v10, [I

    const/4 v4, -0x2

    aput v4, v1, v9

    .line 26
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    const/16 v1, 0x40

    if-ne v4, v1, :cond_9

    new-array v1, v10, [I

    const/4 v4, -0x3

    aput v4, v1, v9

    .line 27
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    const/16 v1, 0x24

    if-le v4, v1, :cond_a

    const/16 v1, 0x40

    if-ge v4, v1, :cond_a

    new-array v1, v10, [I

    aput v4, v1, v9

    .line 28
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_a
    new-array v1, v10, [I

    const/4 v4, -0x1

    aput v4, v1, v9

    .line 29
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    :cond_b
    :goto_3
    const/16 v1, 0x1d

    new-array v4, v10, [I

    shr-int/lit8 v6, v5, 0x4

    and-int/2addr v6, v14

    aput v6, v4, v9

    .line 30
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v4, v10, [I

    and-int/2addr v5, v14

    aput v5, v4, v9

    .line 31
    invoke-static {v1, v4}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v7, 0x7

    and-int/2addr v1, v10

    if-eqz v1, :cond_52

    const/16 v1, 0x7f

    and-int/2addr v1, v7

    if-ne v1, v10, :cond_c

    new-array v1, v10, [I

    const/4 v4, -0x2

    aput v4, v1, v9

    .line 32
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    const/4 v2, -0x2

    aput v2, v1, v9

    .line 33
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_c
    if-ne v1, v14, :cond_d

    new-array v1, v10, [I

    const/4 v4, -0x3

    aput v4, v1, v9

    .line 34
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    const/4 v2, -0x3

    aput v2, v1, v9

    .line 35
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_d
    if-le v1, v10, :cond_e

    if-ge v1, v14, :cond_e

    new-array v4, v10, [I

    aput v1, v4, v9

    .line 36
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v1, v2, v9

    .line 37
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_e
    new-array v1, v10, [I

    const/4 v4, -0x1

    aput v4, v1, v9

    .line 38
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    const/4 v2, -0x1

    aput v2, v1, v9

    .line 39
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 40
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_52

    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v3, v1, v2

    and-int/2addr v3, v8

    add-int/lit8 v5, p2, 0x3

    .line 42
    aget-byte v6, v1, v5

    and-int/2addr v6, v8

    add-int/lit8 v7, p2, 0x4

    .line 43
    aget-byte v11, v1, v7

    and-int/2addr v11, v8

    add-int/lit8 v4, p2, 0x5

    .line 44
    aget-byte v12, v1, v4

    and-int/2addr v12, v8

    if-nez v3, :cond_f

    if-nez v6, :cond_f

    if-nez v11, :cond_f

    if-nez v12, :cond_f

    .line 45
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 46
    :cond_f
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_10

    sget v9, Ll0/c0;->h:I

    if-ne v9, v6, :cond_10

    sget v9, Ll0/c0;->i:I

    if-ne v9, v11, :cond_10

    sget v9, Ll0/c0;->j:I

    if-eq v9, v12, :cond_11

    .line 47
    :cond_10
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_11

    .line 48
    invoke-static {v10}, Lu0/d;->C2(I)V

    const/4 v9, 0x4

    .line 49
    sput v9, Ll0/c0;->k:I

    .line 50
    sget-object v9, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v9}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 51
    :cond_11
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 52
    sput v6, Ll0/c0;->h:I

    .line 53
    sput v11, Ll0/c0;->i:I

    .line 54
    sput v12, Ll0/c0;->j:I

    .line 55
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 56
    aget-byte v2, v1, v5

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 57
    aget-byte v2, v1, v7

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 58
    aget-byte v1, v1, v4

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->M0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_19

    .line 59
    :pswitch_2
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_52

    add-int/lit8 v2, p2, 0x2

    .line 60
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 61
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 62
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    invoke-static {v2}, Ll0/c0;->M0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 63
    aget-byte v1, v1, v2

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->M0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_19

    .line 64
    :pswitch_3
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_52

    add-int/lit8 v2, p2, 0x2

    .line 65
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 66
    aget-byte v1, v1, v3

    .line 67
    sget v3, Lk0/nt;->a:I

    const v4, 0x300ff

    if-eq v3, v4, :cond_1c

    const v4, 0x800ff

    if-eq v3, v4, :cond_1c

    const v4, 0x600ff

    if-ne v3, v4, :cond_12

    goto/16 :goto_9

    :cond_12
    const v4, 0x1e00ff

    if-ne v3, v4, :cond_17

    or-int/2addr v2, v13

    and-int/2addr v2, v8

    .line 68
    iput v2, v0, Lk0/i8;->c:I

    move v2, v9

    .line 69
    :goto_5
    iget-object v3, v0, Lk0/i8;->f:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_14

    .line 70
    iget v4, v0, Lk0/i8;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_13

    if-eqz v4, :cond_14

    .line 71
    iput v2, v0, Lk0/i8;->b:I

    goto :goto_6

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    :goto_6
    and-int/2addr v1, v8

    if-eqz v1, :cond_15

    .line 72
    array-length v1, v3

    if-ge v2, v1, :cond_52

    .line 73
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 74
    :cond_15
    iget v1, v0, Lk0/i8;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_16

    if-eq v1, v8, :cond_16

    .line 75
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 76
    :cond_16
    iput v8, v0, Lk0/i8;->b:I

    goto/16 :goto_19

    :cond_17
    or-int/2addr v2, v13

    and-int/2addr v2, v8

    .line 77
    iput v2, v0, Lk0/i8;->c:I

    move v2, v9

    .line 78
    :goto_7
    iget-object v3, v0, Lk0/i8;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_19

    .line 79
    iget v4, v0, Lk0/i8;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_18

    if-eqz v4, :cond_19

    .line 80
    iput v2, v0, Lk0/i8;->b:I

    goto :goto_8

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    :goto_8
    and-int/2addr v1, v8

    if-eqz v1, :cond_1a

    .line 81
    array-length v1, v3

    if-ge v2, v1, :cond_52

    .line 82
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 83
    :cond_1a
    iget v1, v0, Lk0/i8;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1b

    if-eq v1, v8, :cond_1b

    .line 84
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 85
    :cond_1b
    iput v8, v0, Lk0/i8;->b:I

    goto/16 :goto_19

    :cond_1c
    :goto_9
    or-int/2addr v2, v13

    and-int/2addr v2, v8

    .line 86
    iput v2, v0, Lk0/i8;->c:I

    move v2, v9

    .line 87
    :goto_a
    iget-object v3, v0, Lk0/i8;->d:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 88
    iget v4, v0, Lk0/i8;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_1d

    if-eqz v4, :cond_1e

    .line 89
    iput v2, v0, Lk0/i8;->b:I

    goto :goto_b

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    :goto_b
    and-int/2addr v1, v8

    if-eqz v1, :cond_1f

    .line 90
    array-length v1, v3

    if-ge v2, v1, :cond_52

    .line 91
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 92
    :cond_1f
    iget v1, v0, Lk0/i8;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_20

    if-eq v1, v8, :cond_20

    .line 93
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 94
    :cond_20
    iput v8, v0, Lk0/i8;->b:I

    goto/16 :goto_19

    .line 95
    :pswitch_4
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_52

    add-int/lit8 v2, p2, 0x2

    .line 96
    aget-byte v2, v1, v2

    const/4 v5, 0x3

    add-int/lit8 v6, p2, 0x3

    .line 97
    aget-byte v1, v1, v6

    .line 98
    sget v5, Lk0/nt;->a:I

    const v6, 0x300ff

    if-eq v5, v6, :cond_2d

    const v6, 0x600ff

    if-ne v5, v6, :cond_21

    goto/16 :goto_10

    :cond_21
    const v6, 0x1e00ff

    if-ne v5, v6, :cond_28

    and-int/2addr v2, v8

    .line 99
    iput v2, v0, Lk0/i8;->c:I

    move v5, v9

    .line 100
    :goto_c
    iget-object v6, v0, Lk0/i8;->f:[[I

    array-length v7, v6

    if-ge v5, v7, :cond_23

    .line 101
    iget v7, v0, Lk0/i8;->c:I

    aget-object v12, v6, v5

    aget v12, v12, v9

    if-ne v7, v12, :cond_22

    if-eqz v7, :cond_23

    .line 102
    iput v5, v0, Lk0/i8;->b:I

    goto :goto_d

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_23
    :goto_d
    if-eq v2, v11, :cond_26

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_24

    .line 103
    array-length v1, v6

    if-ge v5, v1, :cond_52

    .line 104
    aget-object v1, v6, v5

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_24
    if-nez v1, :cond_52

    .line 105
    iget v1, v0, Lk0/i8;->b:I

    array-length v2, v6

    if-ge v1, v2, :cond_25

    if-eq v1, v8, :cond_25

    .line 106
    aget-object v1, v6, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 107
    :cond_25
    iput v8, v0, Lk0/i8;->b:I

    goto/16 :goto_19

    :cond_26
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_52

    .line 108
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_27

    if-eq v1, v4, :cond_27

    .line 109
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 110
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_27
    const/16 v1, 0x1a

    .line 111
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 112
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_28
    and-int/2addr v2, v8

    .line 113
    iput v2, v0, Lk0/i8;->c:I

    move v2, v9

    .line 114
    :goto_e
    iget-object v3, v0, Lk0/i8;->e:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2a

    .line 115
    iget v4, v0, Lk0/i8;->c:I

    aget-object v5, v3, v2

    aget v5, v5, v9

    if-ne v4, v5, :cond_29

    if-eqz v4, :cond_2a

    .line 116
    iput v2, v0, Lk0/i8;->b:I

    goto :goto_f

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2a
    :goto_f
    and-int/2addr v1, v8

    if-eqz v1, :cond_2b

    .line 117
    array-length v1, v3

    if-ge v2, v1, :cond_52

    .line 118
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    .line 119
    :cond_2b
    iget v1, v0, Lk0/i8;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_2c

    if-eq v1, v8, :cond_2c

    .line 120
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 121
    :cond_2c
    iput v8, v0, Lk0/i8;->b:I

    goto/16 :goto_19

    :cond_2d
    :goto_10
    and-int/2addr v2, v8

    .line 122
    iput v2, v0, Lk0/i8;->c:I

    move v5, v9

    .line 123
    :goto_11
    iget-object v6, v0, Lk0/i8;->d:[[I

    array-length v7, v6

    if-ge v5, v7, :cond_2f

    .line 124
    iget v7, v0, Lk0/i8;->c:I

    aget-object v12, v6, v5

    aget v12, v12, v9

    if-ne v7, v12, :cond_2e

    if-eqz v7, :cond_2f

    .line 125
    iput v5, v0, Lk0/i8;->b:I

    goto :goto_12

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_2f
    :goto_12
    if-eq v2, v11, :cond_32

    and-int/2addr v1, v8

    if-ne v1, v10, :cond_30

    .line 126
    array-length v1, v6

    if-ge v5, v1, :cond_52

    .line 127
    aget-object v1, v6, v5

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_30
    if-nez v1, :cond_52

    .line 128
    iget v1, v0, Lk0/i8;->b:I

    array-length v2, v6

    if-ge v1, v2, :cond_31

    if-eq v1, v8, :cond_31

    .line 129
    aget-object v1, v6, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 130
    :cond_31
    iput v8, v0, Lk0/i8;->b:I

    goto/16 :goto_19

    :cond_32
    and-int/2addr v1, v8

    if-ne v1, v10, :cond_52

    .line 131
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    if-eq v1, v4, :cond_33

    .line 132
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    .line 133
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_33
    const/16 v1, 0x1a

    .line 134
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 135
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_19

    :cond_34
    add-int/lit8 v2, p2, 0x2

    .line 136
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 137
    aget-byte v1, v1, v3

    const/16 v3, 0x6b

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 138
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 139
    invoke-static {v15, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/16 v4, 0x6d

    .line 140
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 141
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v10

    aput v4, v3, v9

    const/16 v4, 0x6f

    .line 142
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v10

    aput v2, v3, v9

    const/16 v2, 0x70

    .line 143
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 144
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 145
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 146
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 147
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 148
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 149
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v10, [I

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_35
    add-int/lit8 v2, p2, 0x2

    .line 151
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 152
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 153
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 154
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 155
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 156
    aget-byte v7, v1, v7

    add-int/lit8 v11, p2, 0x8

    .line 157
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x9

    .line 158
    aget-byte v1, v1, v12

    const/16 v12, 0x67

    new-array v13, v10, [I

    and-int/2addr v2, v8

    aput v2, v13, v9

    .line 159
    invoke-static {v12, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v12, v10, [I

    and-int/2addr v3, v8

    aput v3, v12, v9

    .line 160
    invoke-static {v2, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    and-int/2addr v4, v8

    aput v4, v3, v9

    .line 161
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v9

    .line 162
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    and-int/lit16 v4, v6, 0xff

    aput v4, v3, v9

    .line 163
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v9

    .line 164
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    and-int/lit16 v4, v11, 0xff

    aput v4, v3, v9

    .line 165
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    and-int/2addr v1, v8

    aput v1, v3, v9

    .line 166
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 167
    :cond_36
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_37
    add-int/lit8 v2, p2, 0x2

    .line 168
    aget-byte v2, v1, v2

    and-int/2addr v2, v8

    if-eq v2, v10, :cond_3a

    const/16 v3, 0x8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_39

    if-eq v2, v3, :cond_38

    goto/16 :goto_19

    :cond_38
    add-int/lit8 v2, p2, 0x3

    .line 169
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 170
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 171
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 172
    iput-boolean v10, v0, Lk0/i8;->s:Z

    goto/16 :goto_19

    :cond_39
    add-int/lit8 v2, p2, 0x4

    .line 173
    aget-byte v2, v1, v2

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v8

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 174
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 175
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v6, [I

    aput v10, v4, v9

    aput v1, v4, v10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_19

    .line 176
    :cond_3a
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v6, [I

    const/16 v5, 0xb

    aput v5, v4, v9

    const/4 v5, 0x3

    add-int/lit8 v6, p2, 0x3

    aget-byte v7, v1, v6

    and-int/2addr v7, v8

    aput v7, v4, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v4, v7, v8}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    const-string v2, "persist.fyt.leftrightlighttype"

    .line 177
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3b

    .line 178
    aget-byte v2, v1, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aget-byte v1, v1, v6

    const/4 v3, 0x4

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_19

    :cond_3b
    const/4 v3, 0x4

    .line 179
    aget-byte v2, v1, v6

    shr-int/2addr v2, v5

    and-int/2addr v2, v10

    aget-byte v1, v1, v6

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_19

    :cond_3c
    add-int/lit8 v2, p2, 0x2

    .line 180
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 181
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 182
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 183
    aget-byte v5, v1, v5

    add-int/lit8 v7, p2, 0x6

    .line 184
    aget-byte v7, v1, v7

    add-int/lit8 v11, p2, 0x7

    .line 185
    aget-byte v11, v1, v11

    add-int/lit8 v12, p2, 0x8

    .line 186
    aget-byte v12, v1, v12

    add-int/lit8 v14, p2, 0x9

    .line 187
    aget-byte v14, v1, v14

    add-int/lit8 v17, p2, 0xa

    .line 188
    aget-byte v8, v1, v17

    add-int/lit8 v17, p2, 0xb

    .line 189
    aget-byte v15, v1, v17

    add-int/lit8 v17, p2, 0xc

    .line 190
    aget-byte v1, v1, v17

    and-int/2addr v2, v13

    if-eqz v2, :cond_49

    const/16 v2, 0x77

    new-array v13, v10, [I

    aput v9, v13, v9

    .line 191
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v13, v10, [I

    shr-int/lit8 v17, v3, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v13, v9

    .line 192
    invoke-static {v2, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v13, v2, 0x3

    if-eqz v13, :cond_3f

    if-eq v13, v10, :cond_3e

    if-eq v13, v6, :cond_3d

    goto :goto_13

    :cond_3d
    new-array v13, v10, [I

    aput v10, v13, v9

    const/16 v6, 0x6c

    .line 193
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    new-array v6, v10, [I

    aput v9, v6, v9

    const/16 v13, 0x6d

    .line 194
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_3e
    const/16 v6, 0x6c

    new-array v13, v10, [I

    aput v9, v13, v9

    .line 195
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    new-array v6, v10, [I

    aput v10, v6, v9

    const/16 v13, 0x6d

    .line 196
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_13

    :cond_3f
    const/16 v6, 0x6c

    new-array v13, v10, [I

    aput v9, v13, v9

    .line 197
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    new-array v6, v10, [I

    aput v9, v6, v9

    const/16 v13, 0x6d

    .line 198
    invoke-static {v13, v6}, Lk0/qt;->y0(I[I)V

    :goto_13
    const/16 v6, 0x6e

    new-array v13, v10, [I

    and-int/2addr v2, v10

    aput v2, v13, v9

    .line 199
    invoke-static {v6, v13}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v3, 0x0

    const/4 v3, 0x3

    and-int/2addr v2, v3

    if-eqz v2, :cond_42

    if-eq v2, v10, :cond_41

    const/4 v3, 0x2

    if-eq v2, v3, :cond_40

    goto :goto_14

    :cond_40
    new-array v2, v10, [I

    aput v10, v2, v9

    const/16 v3, 0x6f

    .line 200
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v9, v2, v9

    const/16 v6, 0x70

    .line 201
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_41
    const/16 v3, 0x6f

    const/16 v6, 0x70

    new-array v2, v10, [I

    aput v9, v2, v9

    .line 202
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v10, v2, v9

    .line 203
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_42
    const/16 v3, 0x6f

    const/16 v6, 0x70

    new-array v2, v10, [I

    aput v9, v2, v9

    .line 204
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    aput v9, v2, v9

    .line 205
    invoke-static {v6, v2}, Lk0/qt;->y0(I[I)V

    :goto_14
    const/16 v2, 0x74

    new-array v3, v10, [I

    shr-int/lit8 v6, v4, 0x7

    and-int/2addr v6, v10

    aput v6, v3, v9

    .line 206
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v4, 0x4

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_45

    if-eq v3, v10, :cond_44

    const/4 v6, 0x2

    if-eq v3, v6, :cond_43

    goto :goto_15

    :cond_43
    const/16 v3, 0x75

    new-array v6, v10, [I

    aput v10, v6, v9

    .line 207
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v6, v10, [I

    aput v9, v6, v9

    .line 208
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_44
    const/16 v3, 0x75

    new-array v6, v10, [I

    aput v9, v6, v9

    .line 209
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v6, v10, [I

    aput v10, v6, v9

    .line 210
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    goto :goto_15

    :cond_45
    const/16 v3, 0x75

    new-array v6, v10, [I

    aput v9, v6, v9

    .line 211
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v6, v10, [I

    aput v9, v6, v9

    .line 212
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    :goto_15
    const/16 v3, 0x71

    new-array v6, v10, [I

    and-int/2addr v2, v10

    aput v2, v6, v9

    .line 213
    invoke-static {v3, v6}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v2, v4, 0x0

    const/4 v3, 0x3

    and-int/2addr v2, v3

    if-eqz v2, :cond_48

    if-eq v2, v10, :cond_47

    const/4 v3, 0x2

    if-eq v2, v3, :cond_46

    goto :goto_16

    :cond_46
    const/16 v2, 0x72

    new-array v3, v10, [I

    aput v10, v3, v9

    .line 214
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    aput v9, v3, v9

    .line 215
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_47
    const/16 v2, 0x72

    new-array v3, v10, [I

    aput v9, v3, v9

    .line 216
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    aput v10, v3, v9

    .line 217
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_16

    :cond_48
    const/16 v2, 0x72

    new-array v3, v10, [I

    aput v9, v3, v9

    .line 218
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    aput v9, v3, v9

    .line 219
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_16
    const/16 v2, 0x67

    new-array v3, v10, [I

    const/16 v4, 0xff

    and-int/lit16 v6, v14, 0xff

    aput v6, v3, v9

    .line 220
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    and-int/lit16 v6, v8, 0xff

    aput v6, v3, v9

    .line 221
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    and-int/lit16 v6, v15, 0xff

    aput v6, v3, v9

    .line 222
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    and-int/2addr v1, v4

    aput v1, v3, v9

    .line 223
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v2, v10, [I

    and-int/lit16 v3, v5, 0xff

    aput v3, v2, v9

    .line 224
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x64

    new-array v2, v10, [I

    and-int/lit16 v3, v7, 0xff

    aput v3, v2, v9

    .line 225
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x65

    new-array v2, v10, [I

    and-int/lit16 v3, v11, 0xff

    aput v3, v2, v9

    .line 226
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x66

    new-array v2, v10, [I

    and-int/lit16 v3, v12, 0xff

    aput v3, v2, v9

    .line 227
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_49
    const/16 v1, 0x77

    new-array v2, v10, [I

    aput v10, v2, v9

    .line 228
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_4a
    add-int/lit8 v2, p2, 0x2

    .line 229
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 230
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 231
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 232
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 233
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 234
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x8

    .line 235
    aget-byte v8, v1, v8

    add-int/lit8 v11, p2, 0x9

    .line 236
    aget-byte v1, v1, v11

    .line 237
    sget v11, Lk0/nt;->a:I

    const v12, 0x700ff

    if-ne v11, v12, :cond_4c

    const/16 v1, 0x83

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v10

    aput v7, v6, v9

    .line 238
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x84

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v10

    aput v7, v6, v9

    .line 239
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x85

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v10

    aput v7, v6, v9

    .line 240
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x86

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v10

    aput v7, v6, v9

    .line 241
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x87

    new-array v6, v10, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v10

    aput v7, v6, v9

    .line 242
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x88

    new-array v6, v10, [I

    const/4 v7, 0x2

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v6, v9

    .line 243
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x89

    new-array v2, v10, [I

    const/16 v6, 0xff

    and-int/2addr v3, v6

    aput v3, v2, v9

    .line 244
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8a

    new-array v2, v10, [I

    and-int/lit16 v3, v4, 0xff

    aput v3, v2, v9

    .line 245
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x8b

    new-array v2, v10, [I

    and-int/lit16 v3, v5, 0xff

    aput v3, v2, v9

    .line 246
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    if-nez v4, :cond_4b

    add-int/lit8 v3, v3, 0x5

    :cond_4b
    const/16 v1, 0x3f5

    new-array v2, v10, [I

    aput v3, v2, v9

    .line 247
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    :cond_4c
    const/16 v11, 0x79

    new-array v12, v10, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v14, v15

    aput v14, v12, v9

    .line 248
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x7a

    new-array v12, v10, [I

    shr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v10

    aput v14, v12, v9

    .line 249
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v11, 0x7b

    new-array v12, v10, [I

    const/4 v14, 0x2

    shr-int/2addr v2, v14

    and-int/2addr v2, v10

    aput v2, v12, v9

    .line 250
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v11, v10, [I

    const/16 v12, 0xff

    and-int/2addr v3, v12

    aput v3, v11, v9

    .line 251
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v10, [I

    and-int/2addr v4, v12

    aput v4, v3, v9

    .line 252
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v10, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v9

    .line 253
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit16 v3, v6, 0xff

    aput v3, v2, v9

    const/16 v3, 0x7f

    .line 254
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    and-int/lit16 v3, v7, 0xff

    aput v3, v2, v9

    .line 255
    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    and-int/lit16 v4, v8, 0xff

    aput v4, v3, v9

    .line 256
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    and-int/2addr v1, v12

    aput v1, v3, v9

    .line 257
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_19

    .line 258
    :cond_4d
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v2, 0x2

    add-int/lit8 v2, p2, 0x2

    .line 259
    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_4e

    const/16 v2, 0x7f

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    rsub-int v1, v1, 0x3e8

    goto :goto_17

    :cond_4e
    const/16 v2, 0x7f

    and-int/2addr v1, v2

    mul-int/2addr v1, v11

    add-int/lit16 v1, v1, 0x3e8

    .line 260
    :goto_17
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_19

    .line 261
    :cond_4f
    iget-boolean v2, v0, Lk0/i8;->s:Z

    if-nez v2, :cond_52

    add-int/lit8 v2, p2, 0x3

    .line 262
    aget-byte v2, v1, v2

    const/4 v3, 0x2

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    const/16 v3, 0x15c2

    invoke-static {v2, v1, v9, v3}, Lk0/qt;->i(IIZI)V

    goto :goto_19

    :cond_50
    move v3, v6

    add-int/lit8 v2, p2, 0x2

    .line 263
    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const-string v2, "persist.syu.reversefrontdoor"

    .line 264
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_51

    new-array v2, v10, [I

    shr-int/lit8 v5, v1, 0x7

    and-int/2addr v5, v10

    aput v5, v2, v9

    .line 265
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 266
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_51
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 267
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x2

    .line 268
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    :goto_18
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 269
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x3

    .line 270
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 271
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    :cond_52
    :goto_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/i8;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/i8;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/i8;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/i8;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/i8;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/i8;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x95

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
    .locals 9

    const/16 p3, 0xe3

    const/4 p4, 0x3

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_3

    const/16 v5, 0x3ed

    if-eq p1, v5, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget p1, Lk0/nt;->a:I

    const v5, 0x1d00ff

    if-ne p1, v5, :cond_1

    new-array p1, v0, [I

    aput p3, p1, v2

    const/16 p3, 0xa7

    aput p3, p1, v4

    aput v4, p1, v3

    .line 2
    aget p2, p2, v2

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 3
    :cond_1
    aget p1, p2, v2

    int-to-byte p1, p1

    const/16 p2, 0x9a

    if-lt p1, v1, :cond_2

    add-int/lit8 p1, p1, -0x5

    const/16 p2, 0x9b

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    new-array v6, v1, [I

    aput p3, v6, v2

    const/16 v7, -0x38

    aput v7, v6, v4

    aput v3, v6, v3

    const/16 v8, -0x67

    aput v8, v6, p4

    int-to-byte v5, v5

    aput v5, v6, v0

    .line 4
    invoke-static {v6}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput p3, v1, v2

    aput v7, v1, v4

    aput v3, v1, v3

    int-to-byte p2, p2

    aput p2, v1, p4

    int-to-byte p1, p1

    aput p1, v1, v0

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 6
    :cond_3
    sget p1, Lk0/nt;->a:I

    const v5, 0x800ff

    const/16 v6, -0x39

    const/4 v7, 0x7

    const/4 v8, 0x6

    if-ne p1, v5, :cond_4

    if-eqz p2, :cond_6

    new-array p1, v7, [I

    aput p3, p1, v2

    aput v6, p1, v4

    aput v0, p1, v3

    .line 7
    aget p3, p2, v2

    int-to-byte p3, p3

    aput p3, p1, p4

    aget p3, p2, v4

    int-to-byte p3, p3

    aput p3, p1, v0

    aget p3, p2, v3

    int-to-byte p3, p3

    aput p3, p1, v1

    aget p2, p2, p4

    int-to-byte p2, p2

    aput p2, p1, v8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 8
    array-length p1, p2

    if-le p1, v1, :cond_6

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v2

    aput v6, p1, v4

    aput v8, p1, v3

    .line 9
    aget p3, p2, v2

    int-to-byte p3, p3

    aput p3, p1, p4

    aget p3, p2, v4

    int-to-byte p3, p3

    aput p3, p1, v0

    aget p3, p2, v3

    int-to-byte p3, p3

    aput p3, p1, v1

    aget p3, p2, p4

    int-to-byte p3, p3

    aput p3, p1, v8

    aget p3, p2, v0

    int-to-byte p3, p3

    aput p3, p1, v7

    const/16 p3, 0x8

    aget p2, p2, v1

    int-to-byte p2, p2

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {p0, p2, v3}, Lk0/lt;->T2([II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    aget p1, p2, v2

    packed-switch p1, :pswitch_data_0

    new-array p1, v1, [I

    aput p3, p1, v2

    const/16 p3, 0xc8

    aput p3, p1, v4

    aput v3, p1, v3

    .line 12
    aget p3, p2, v2

    aput p3, p1, p4

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_1

    .line 13
    :pswitch_0
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->o3(I)V

    goto :goto_1

    .line 14
    :pswitch_1
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->n3(I)V

    goto :goto_1

    .line 15
    :pswitch_2
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->m3(I)V

    goto :goto_1

    .line 16
    :pswitch_3
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->l3(I)V

    goto :goto_1

    .line 17
    :pswitch_4
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->k3(I)V

    goto :goto_1

    .line 18
    :pswitch_5
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->j3(I)V

    goto :goto_1

    .line 19
    :pswitch_6
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->p3(I)V

    goto :goto_1

    .line 20
    :pswitch_7
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->q3(I)V

    goto :goto_1

    .line 21
    :pswitch_8
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/i8;->r3(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public final j3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/i8;->A:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x8f

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0xc8

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    aput v0, p1, v0

    .line 3
    sget v0, Lk0/i8;->A:I

    const/4 v1, 0x4

    aput v0, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v1, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/i8;->A:I

    if-eq p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final k3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/i8;->B:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x90

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array v1, p1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc8

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    const/4 v3, 0x4

    aput v3, v1, v0

    .line 3
    sget v0, Lk0/i8;->B:I

    aput v0, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object v0, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {v0, p1, v2}, Lo1/g0;->b(II)I

    move-result v0

    sget v1, Lk0/i8;->B:I

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {v0, p1, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final l3(I)V
    .locals 4

    .line 1
    sput p1, Lk0/i8;->C:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x90

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array v1, p1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, 0xc8

    aput v3, v1, v0

    const/4 v0, 0x2

    aput v0, v1, v0

    const/4 v0, 0x3

    aput p1, v1, v0

    .line 3
    sget p1, Lk0/i8;->C:I

    const/4 v0, 0x4

    aput p1, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/i8;->C:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final m3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/i8;->D:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x90

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0xc8

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x6

    aput v1, p1, v0

    .line 3
    sget v0, Lk0/i8;->D:I

    const/4 v1, 0x4

    aput v0, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/i8;->D:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final n3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/i8;->E:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x90

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0xc8

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x7

    aput v1, p1, v0

    .line 3
    sget v0, Lk0/i8;->E:I

    const/4 v1, 0x4

    aput v0, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/i8;->E:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final o3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/i8;->F:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x90

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v1, 0xe3

    aput v1, p1, v2

    const/16 v1, 0xc8

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    const/16 v1, 0x8

    aput v1, p1, v0

    .line 3
    sget v0, Lk0/i8;->F:I

    const/4 v1, 0x4

    aput v0, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/i8;->F:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method

.method public final p3(I)V
    .locals 4

    const/16 v0, 0xf

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/i8;->x:I

    const/16 v0, 0x8c

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput p1, v3, v1

    .line 2
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v0, 0xe3

    aput v0, p1, v1

    const/16 v0, 0xc8

    aput v0, p1, v2

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v3, 0x3

    aput v0, p1, v3

    const/4 v0, 0x4

    .line 3
    sget v3, Lk0/i8;->x:I

    aput v3, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v2, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/i8;->x:I

    if-eq p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v2, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final q3(I)V
    .locals 4

    const/16 v0, 0xf

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/i8;->y:I

    const/16 v0, 0x8d

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput p1, v3, v1

    .line 2
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v0, 0xe3

    aput v0, p1, v1

    const/16 v0, 0xc8

    aput v0, p1, v2

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v3, 0x3

    aput v2, p1, v3

    const/4 v2, 0x4

    .line 3
    sget v3, Lk0/i8;->y:I

    aput v3, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/i8;->y:I

    if-eq p1, v1, :cond_2

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method

.method public final r3(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/i8;->z:I

    const/16 v2, 0x8c

    new-array v3, v0, [I

    aput p1, v3, v1

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 v2, 0xe3

    aput v2, p1, v1

    const/16 v2, 0xc8

    aput v2, p1, v0

    const/4 v0, 0x2

    aput v0, p1, v0

    const/4 v0, 0x3

    aput v1, p1, v0

    const/4 v2, 0x4

    .line 3
    sget v3, Lk0/i8;->z:I

    aput v3, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 4
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/i8;->z:I

    if-eq p1, v1, :cond_2

    .line 5
    iget-object p1, p0, Lk0/i8;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
